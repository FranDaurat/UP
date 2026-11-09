import pefile, re, struct
pe = pefile.PE("/tmp/sample.bin", fast_load=False)
base = pe.OPTIONAL_HEADER.ImageBase
img = pe.get_memory_mapped_image()
text = [s for s in pe.sections if s.Name.rstrip(b"\0")==b".text"][0]
tva = base + text.VirtualAddress
tdata = text.get_data()

results = []
# patron: 48 8D 0D <disp32> 48 8D 15 <disp32> 48 83 F8 <N> (lea rcx; lea rdx; cmp rax, N)
pat = re.compile(rb"\x48\x8d\x0d(?P<d1>.{4})\x48\x8d\x15(?P<d2>.{4})\x48\x83\xf8(?P<n>.)", re.S)
for m in pat.finditer(tdata):
    addr = tva + m.start()
    d1 = struct.unpack("<i", m.group("d1"))[0]
    d2 = struct.unpack("<i", m.group("d2"))[0]
    n = m.group("n")[0]
    enc_a = addr + 7 + d1       # despues del lea rcx (7 bytes)
    key_a = addr + 14 + d2      # despues del lea rdx
    if not (0 < n < 220): continue
    try:
        enc = img[enc_a-base:enc_a-base+n]
        key = img[key_a-base:key_a-base+16]
    except Exception:
        continue
    if len(key) < 16 or len(enc) < n: continue
    out = bytes(enc[i] ^ key[i & 0xf] for i in range(n))
    try:
        s = out.decode("utf-8")
    except Exception:
        s = out.decode("latin1")
    results.append((addr, hex(enc_a), n, s))

seen = set()
print("candidatos:", len(results))
for addr, enc, n, s in results:
    if s in seen: continue
    seen.add(s)
    printable = sum(1 for c in s if 32 <= ord(c) < 127) / max(1,len(s))
    if printable > 0.9 and len(s) >= 2:
        print("%-10s enc=%-11s n=%-3d %r" % (hex(addr), enc, n, s))
print("unicos:", len(seen))
