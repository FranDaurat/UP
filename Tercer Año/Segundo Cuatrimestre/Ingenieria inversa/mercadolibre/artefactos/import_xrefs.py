import pefile, capstone, json, collections
pe = pefile.PE("/tmp/sample.bin", fast_load=False)
base = pe.OPTIONAL_HEADER.ImageBase
slotmap = {}
for e in pe.DIRECTORY_ENTRY_IMPORT:
    dll = e.dll.decode()
    for imp in e.imports:
        if imp.name:
            a = imp.address
            if a < base: a += base
            slotmap[a] = dll + "!" + imp.name.decode()
text = [s for s in pe.sections if s.Name.rstrip(b"\0")==b".text"][0]
data, va = text.get_data(), base + text.VirtualAddress
md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64); md.detail = True

thunk = {}       # thunk addr -> import (jmp [IAT])
direct = {}      # addr -> import (call [IAT])
for ins in md.disasm(data, va):
    for op in ins.operands:
        if op.type == capstone.x86.X86_OP_MEM and op.mem.base == capstone.x86.X86_REG_RIP:
            t = ins.address + ins.size + op.mem.disp
            if t in slotmap:
                if ins.mnemonic == "jmp":
                    thunk[ins.address] = slotmap[t]
                elif ins.mnemonic == "call":
                    direct[ins.address] = slotmap[t]

# resolver cadenas de thunks: jmp rel32 a otro thunk
thunk2 = dict(thunk)
for ins in md.disasm(data, va):
    if ins.mnemonic == "jmp" and len(ins.operands)==1 and ins.operands[0].type == capstone.x86.X86_OP_IMM:
        t = ins.operands[0].imm
        if t in thunk2 or t in direct:
            src = thunk2.get(t) or direct.get(t)
            thunk2.setdefault(ins.address, src)
print("thunks:", len(thunk2), "direct:", len(direct))

callers = collections.defaultdict(list)  # import -> [callsite]
for ins in md.disasm(data, va):
    if ins.mnemonic == "call" and len(ins.operands)==1 and ins.operands[0].type == capstone.x86.X86_OP_IMM:
        t = ins.operands[0].imm
        if t in thunk2:
            callers[thunk2[t]].append(hex(ins.address))
for a, imp in direct.items():
    callers[imp].append(hex(a))
print("imports con callers:", len(callers))
for k in sorted(callers):
    print("%-42s %2d  %s" % (k, len(callers[k]), " ".join(callers[k][:16])))
json.dump(callers, open("/tmp/peout/callers.json","w"), indent=1)
