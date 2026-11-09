# Análisis estático

## 1. Hash, arquitectura, fecha de compilación

- Archivo: `mercadolibre/3fd084733b5dc2726fbb915197538f2deb632085bb80f21fc06d430345cb4003` (el nombre es el SHA-256).
- MD5: `6a848618d252f2698b8857f5e829cf31`
- SHA1: `a3871017b9542bfa9b2451187fcb98839757460f`
- SHA256: `3fd084733b5dc2726fbb915197538f2deb632085bb80f21fc06d430345cb4003`
- Tamaño: 1.460.100 bytes. Tipo: PE32+ x86-64, subsistema GUI, 11 secciones.
- Fecha de compilación (TimeDateStamp): 2026-10-07 06:32:16 UTC.
- Toolchain: Rust (imports `api-ms-win-core-synch-l1-2-0`, `bcryptprimitives`, secciones `.pdata/.xdata/.CRT/.tls`, paths `/rustc/90b35a6239c3d8bdabc530a6a0816f7ff89a0aaf/library/...`). Ese commit de rustc es de noviembre 2024, o sea Rust 1.84/1.85.
- Sin firma digital (security directory en 0). Sin Rich header (no es MSVC clásico, es Rust con LLD).
- Metadatos de versión falsos, típicos de camuflaje: CompanyName `Contoso Ltd`, FileDescription `Contoso Update Service`, OriginalFilename `svc.exe`, versión `1.0.0`.
- No verificado en VirusTotal por hash. Muestra custom, sin detecciones públicas al momento del análisis.
- Aclaración: el nombre de carpeta `mercadolibre` es de etiqueta del caso. La muestra no contiene ninguna cadena asociada a Mercado Libre.

## 2. Secciones

| Nombre | VA | VirtualSize | RawSize | Entropía | Comentario |
|---|---|---|---|---|---|
| .text | 0x1000 | 1091448 | 1091584 | 6.2992 | código, normal |
| .data | 0x10c000 | 608 | 1024 | 1.0507 | normal |
| .rdata | 0x10d000 | 216480 | 216576 | 5.3499 | strings, tablas Rust |
| .pdata | 0x142000 | 49248 | 49664 | 5.9579 | unwind x64 |
| .xdata | 0x14f000 | 62660 | 62976 | 4.9807 | unwind x64 |
| .bss | 0x15f000 | 28704 | 0 | 0.0000 | variables sin inicializar |
| .idata | 0x167000 | 10252 | 10752 | 4.5697 | imports |
| .CRT | 0x16a000 | 112 | 512 | 0.3359 | runtime C |
| .tls | 0x16b000 | 16 | 512 | 0.0000 | TLS callbacks (hay uno: VA 0x56a040) |
| .rsrc | 0x16c000 | 720 | 1024 | 2.3783 | solo RT_VERSION |
| .reloc | 0x16d000 | 8460 | 8704 | 5.4219 | relocs (4062 entradas) |

Overlay: 15.748 bytes desde offset 0x160a00 (no mapeado, sin sección). Contiene cadenas en claro armadas como cebo: dominios y IPs de Azure/Google/Cloudflare/Facebook/Amazon, "telemetry.contoso.com", JSON de telemetría, rutas `D:\BuildAgent\...\collector.cpp`, etc. No hay referencias desde código a esas direcciones porque no están en ninguna sección.

## 3. Strings relevantes

Tres capas:

a) En claro con referencia desde código (las reales del binario, 26 en total). Las importantes:

| Dirección | String | Xref (función) |
|---|---|---|
| 0x518a48 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.6924.43 Safari/537.36 | 0x46f37c (cliente HTTP) |
| 0x518e38 | C2 en uso: | 0x43b5a2 |
| 0x518e68 | (r0)r1cacher0HKLMHKCUtmpnone | 0x4489f5 |
| 0x519242 | 6527c5b312 | 0x444ee0, 0x4459cc |
| 0x5192e0 | " puertos abiertos en " | struct &str en 0x519308 |
| 0x519608 | md5= / sha1= / sha256= / len= | tabla en 0x519620, xref 0x443550 |
| 0x5196a8 | l2_out.exe | struct &str en 0x5196c8 |
| 0x519778 | PARCIAL (del programado) / PASS (binario marcado para borrado) | 0x447575 |
| 0x519848 | posicion / anadir | 0x4553d9 |
| 0x519908 | \\.\pipe\99ba5137a5e0c152 | 0x43bddc (named pipe) |
| 0x519940 | 4df4ebf6553dcaee@ | tabla en 0x519950, xref 0x43bf87 |
| 0x519960 | Maint-Scheduler-4d47 | 0x4450e4 (persistencia programada) |
| 0x5199a8 | os= / FAIL / PASS (recon CIM) + lista de builtins de cmd.exe | 0x4495a9 |
| 0x519f80 | 02C9779E09FBxxxxxxx | 0x43a6f6 |
| 0x51a520 | vigente / PASADO / PASS | 0x44bbaa |
| 0x5247c8 | #$*+-./:?@\_cmd.exe /e:ON /v:OFF /d /c " | ejecución de comandos |
| 0x525690 | Regular / Raw / kernel32 | 0x47201c |

b) Cifradas con XOR. 745 cadenas, 21 claves de 16 bytes, cada una con su clave. El binario las descifra en runtime en buffers de pila antes de usarlas (patrón `lea rcx,[enc]; lea rdx,[key]; xor bucle con índice & 0xF`). Se descifraron todas; listado completo en `artefactos/strings_descifradas.txt`. Las que definen el comportamiento:

- C2 / tasking: `ntfy.sh`, `ntfy`, `dd_provider`, `dd_ref`, `/raw?poll=1`, `?poll=1`, `/api/`, `GET`, `POST`, `Authorization: Bearer `, `Content-Type: application/json`, `user-agent`, `urls`, `poll_interval`, `jitter`, `kill_date`, `dead-drop poll`, `anti-replay del dead-drop`, `poda periodica`, `cache_origen`, `tasking: SIN enc y plain_ok=0 -> RECHAZADO (downgrade)`, `transport fallo en `, `URL(s) nuevas, se cambia de C2`, `drop http!=200`.
- Checks de conectividad: `https://www.google.com/generate_204`, `https://www.bing.com/`, `http://www.msftconnecttest.com/connecttest.txt`, `http://www.msftncsi.com/ncsi.txt`, `Microsoft NCSI`.
- Ejecución: `cmd.exe /e:ON /v:OFF /d /c "`, `cmd`, `powershell -NoProfile -ExecutionPolicy Bypass -File `, `$ErrorActionPreference = 'SilentlyContinue'`, `pipe-echo`, `CreateProcessW`, `PASS (ejecutado sin cmd.exe)`, `shell: exe directo fallo, fallback a cmd.exe`, `[error] QueueUserAPC fallo`, `expiro 15s`.
- Persistencia: `Software\Microsoft\Windows\CurrentVersion\Run`, `persistido en HKCU Run`, `Software\Maintefa03391`, `Software\Classes\CLSID\`, `{42aedc87-2188-41fd-b9a3-0c966feabec1}`, `\InProcServer32`, `schtasks /create /tn `, `" /sc minute /mo `, ` /f /rl highest`, `schtasks /query /tn `, `Maint-Scheduler-4d47`, `persist_recurring`, `PASS (tarea recurrente creada y consultada)`.
- Evasión: `AmsiScanBuffer`, `AmsiInitialize`, `amsi.dll`, `EtwEventWrite`, `ntdll.dll`, `C:\Windows\System32\ntdll.dll`, `modo=indirecto (gadget syscall;ret dentro de ntdll)`, `PASS (el trampolin de syscall vive en ntdll...)`, `PASS (AMSI neutralizado)`, `PASS (ETW neutralizado)`, `HWBP de escritura + VEH`, `dr0=0x`, `dr7=0x`, `veh_registrado=`, `ekko`, `tier2-gcm-ok`, `PASS (memoria cifrada en reposo y restaurada)`, `wevtutil cl `, `wevtutil el`, `6/23/99` (timestomp).
- Inyección / ejecución encubierta: `NtAllocateVirtualMemory`, `NtProtectVirtualMemory`, `NtCreateSection`, `NtMapViewOfSection`, `NtUnmapViewOfSection`, `QueueUserAPC`, `PASS (APC ejecutada en estado alertable)`, `ConvertThreadToFiber`, `CreateFiber`, `PASS (trabajo ejecutado en fibra)`, `TpAllocWork`, `TpPostWork`, `TpWaitForWork`, `PASS (callback ejecutado por un worker del pool, sin CreateThread)`, `ppid_spoof`, `PASS (el hijo reporta el padre falso)`, `InitializeProcThreadAttributeList`, `layout de proceso suspendido/staging/trigger/resume`, `PASS (codigo ejecutado desde una seccion mapeada)`.
- BOF / COFF (compatibilidad Beacon): `-bof-run`, `--bof-run`, `_bof.o`, `_bof.out`, `coff machine=0x8664 secciones=`, `coff: relocs=`, `BeaconOutput`, `BeaconPrintf`, `BeaconError`, `BeaconFormatAlloc/Append/Free/ToString/Printf`, `BeaconDataParse/Int/Short/Length/Extract`, `BeaconIsAdmin`, `BeaconUseToken`, `BeaconDataLength`, `PASS (BOF cargado y ejecutado)`.
- Recon: `whoami`, `whoami /groups`, `net user`, `netstat -ano`, `arp -a`, `ipconfig /all`, `tasklist /fo csv /nh`, `tasklist /v /fo csv /nh`, `tasklist /m`, `sc query state= all`, `sc query type= service state= all`, `wmic logicaldisk get caption,size,freespace /format:list`, `fsutil fsinfo drives`, `dir /s /b `, `reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall /s /v DisplayName`, `$o = Get-CimInstance Win32_OperatingSystem`, `$b = Get-CimInstance Win32_BIOS`, `$c = Get-CimInstance Win32_ComputerSystem`, contadores CIM de procesos/servicios, `'bios=' + $b.SerialNumber`, `'cs=' + $c.Manufacturer`, `'domain='`, `'build='`, `'arch='`.
- Robo de datos: `GetDC(GetDesktopWindow)`, `GetDC(NULL)`, `_screen.bmp`, `miniatura`, `captura=`, `PASS (pantalla capturada)`, `PASS (portapapeles leido/verificado)`, `texto_disponible=`, `download: ruta=`, `upload: ruta=`, `hash: ruta=`, `shred ok`, `self_delete`, `borrado_diferido=cmd del /f /q`.
- Anti-análisis: `wipe_capture_tools: analizando tasklist`, `herramientas_detectadas=`, `(0=CLEAN, 32768=DETECTED)` (resultado de AmsiScanBuffer), `pocos_procesos`, `disco_minimo`, `min_ram_gb`, `min_cores`, `uptime_corto`, `cpu_1_nucleo`, `idle_usuario`, `mouse_inmovil`, `host_generico`, `host_corto`, `desktop-`, `win-`, `require_vm`, `sb_exigir_vm`, `sb_umbral_vm`, `sb_umbral_sandbox`, `deny_virtual_mac`, `cpuid_hypervisor`, `XenVMMXenVMM`, `KVMKVMKVM`, `VMwareVMware`, `VBoxVBoxVBox`, `prl hyperv`, `Microsoft Hv`, `SEABIOS`.
- Detección de VM por proceso/fichero: `vmtoolsd.exe`, `vmwareuser.exe`, `vmwaretray.exe`, `vmusrvc.exe`, `vmacthlp.exe`, `vboxservice.exe`, `vboxtray.exe`, `qemu-ga.exe`, `prl_tools.exe`, `prl_cc.exe`, `xenservice.exe`, `spice-vdagent.exe`, `vgauthservice.exe`, `vmsrvc.exe`.
- Registro de sistema para fingerprint: `SYSTEM\CurrentControlSet\Control\SystemInformation\SystemManufacturer`, `...SystemProductName`, `HARDWARE\DESCRIPTION\System\SystemBiosVersion`, `SystemBiosDate`, `VideoBiosVersion`, `SOFTWARE\Microsoft\Cryptography` (MachineGuid), `SOFTWARE\Microsoft\Windows NT\CurrentVersion`, `COMPUTERNAME`, `USERNAME`, `USER`, `Admin`.
- Misc: `Invoke-Mimikatz -DumpCreds` (cadena de capacidades, no implica ejecución), `Startup`, `dead-drop`, `l2_pack ok`, `l2_run ok`, `profile applied`, `start: config cargada`, `bootstrap: GET `, `ruta no configurada en el perfil`.

c) Cadenas cebo: overlay completo (Contoso/Cloudflare/telemetry) más cientos de fragmentos aleatorios en `.rdata` (`cMm?I`, `pn'`, etc.). Están para inflar el conteo de IOCs falsos.

## 4. Esta empaquetado?

No. Ninguna sección se llama UPX ni variantes; VirtualSize contra RawSize alineados; entropía de `.text` 6.3 (código normal, muy lejos de 7.9 de un packer); imports e IAT completos y visibles; entrypoint 0x14c0 con stub normal de Rust; `.pdata/.xdata` presentes.

Sí está ofuscado: 745 strings con XOR y clave de 16 bytes por string, más un overlay de 15 KB con strings señuelo. Respondiendo la trampa de la cátedra: alta entropía no siempre implica empaquetado, y acá no hay high entropy ni empaquetado, pero sí ofuscación de cadenas.

## 5. Imports relevantes

253 funciones en 14 DLLs. Agrupadas por capacidad:

- C2 HTTP: `WINHTTP.dll` completa (`WinHttpOpen/Connect/OpenRequest/SendRequest/ReceiveResponse/ReadData/QueryHeaders/SetOption/CrackUrl/CloseHandle`). Sockets crudos: `WS2_32.dll` (`WSAStartup`, `WSASocketW`, `connect`, `send`, `recv`, `getaddrinfo`, `select`, `listen`, `accept`).
- Persistencia: `ADVAPI32.dll` → `RegCreateKeyExW`, `RegSetValueExW`, `RegOpenKeyExW`, `RegQueryValueExW`, `RegCloseKey`.
- Recolecta: `GetUserNameW`, `GetComputerNameW`, `GetUserProfileDirectoryW`, `GetAdaptersInfo` (IP/MAC), `GlobalMemoryStatusEx`, `GetSystemInfo`, `GetDiskFreeSpaceExW`, `GetTickCount64`, `CreateToolhelp32Snapshot`, `Process32FirstW/NextW`, `Module32FirstW/NextW`, `GetLastInputInfo`, `GetSystemMetrics`.
- Captura: `OpenClipboard`, `GetClipboardData`, `SetClipboardData`, `EmptyClipboard`, `IsClipboardFormatAvailable`; `BitBlt`, `StretchBlt`, `GetDIBits`, `CreateCompatibleDC/Bitmap`, `GetDC`, `ReleaseDC`, `GetDesktopWindow`.
- Ejecución e inyección: `CreateProcessW`, `CreatePipe`, `CreateNamedPipeW`, `CreateJobObjectW`, `AssignProcessToJobObject`, `OpenProcess`, `VirtualAlloc`, `VirtualProtect`, `VirtualFree`, `QueueUserAPC`, `SuspendThread`, `ResumeThread`, `SetThreadContext`, `DuplicateHandle`, `DeviceIoControl`.
- Ficheros: `CreateFileW`, `ReadFile/WriteFile`, `CopyFileExW`, `MoveFileExW`, `DeleteFileW`, `FindFirstFileW/NextFileW`, `CreateSymbolicLinkW`, `CreateHardLinkW`, `MapViewOfFile`, `CreateFileMappingA`, `GetModuleFileNameW`, `GetTempPathW`.
- Cripto: `SystemFunction036` (RtlGenRandom), `bcryptprimitives.dll!ProcessPrng`.
- NTDLL: `NtOpenFile`, `NtReadFile`, `NtWriteFile`, `RtlNtStatusToDosError` (syscalls resueltos dinámicamente, no declarados).

## 6. Análisis estático avanzado (funciones clave)

- `FUN_0042a31e` (0x42a31e, 4293 bytes): cliente HTTP sobre WinHTTP. Parsea la URL con `WinHttpCrackUrl`, arma request, setea headers, manda y lee respuesta. Es el transporte.
- `FUN_0046d518` (0x46d518, 14326 bytes): flujo HTTP de alto nivel. Arma User-Agent Chrome 123 (`0x518a48`) y otra variante Chrome 120 (XOR), usa header `Content-Type: application/json`, GET/POST, `/api/`, `/raw?poll=1`. Lo llama el hilo principal de C2; selecciona URL de una lista con módulo (`div`) y rota de C2.
- `FUN_0042b97a` (0x42b97a): escritura de registro con `RegCreateKeyExW` + `RegSetValueExW` tipo REG_SZ. Llamado con hive `0x80000002` (HKLM) y `0x80000001` (HKCU) seguido en el mismo bloque (0x4359xx) antes de entrar al dispatcher grande. Persistencia doble.
- `FUN_0045d5f9` + `FUN_0045d7fa`: captura de pantalla. `GetDesktopWindow`/`GetDC`, `BitBlt` o `StretchBlt` (SRCCOPY 0xcc0020), DIB 24bpp con `GetDIBits`. Devuelve el bitmap crudo, probablemente para exfiltración o thumbnail.
- `FUN_0045d022`, `FUN_00494970`: info de memoria y CPU (`GlobalMemoryStatusEx`, `GetSystemInfo`).
- `FUN_00468365` (0x468365, 20540 bytes): recolector de host. `GetComputerNameW`, `GetUserNameW`, `GetSystemMetrics`, `GetDiskFreeSpaceExW`, `GetAdaptersInfo`, `GetLastInputInfo` (idle de usuario), `Process32FirstW/NextW` (lista de procesos), lectura de registro (MachineGuid/versión de Windows).
- `FUN_00459900` (0x459900): ejecución de comandos con `CreatePipe` (stdout/stderr), `CreateProcessW`, job object y lectura de salida. Es el `exec` con captura.
- `FUN_0045f8dd`: `VirtualAlloc` + `VirtualProtect` sobre buffer, ejecución de código en memoria.
- `FUN_004380a3` (0x4380a3, 135984 bytes): el dispatcher. Contiene el match de comandos, escritura/lectura de registro, clipboard (leer/reemplazar), named pipe `\\.\pipe\99ba5137a5e0c152`, `CreateProcessW`, inyección (`OpenProcess`, `QueueUserAPC`, `SetThreadContext`, `ResumeThread/SuspendThread`, `VirtualAlloc/Protect`), y las cadenas de estado `C2 en uso:`, `Maint-Scheduler-4d47`, `PASS/FAIL`.
- Módulos por cadena XOR: dead-drop en `ntfy.sh` con poll `/raw?poll=1`, tasking cifrado AES-GCM con firma (`sig`/`enc`/`iv`/`aad`, `clave_derivada_sha256=`), anti-replay, kill_date, jitter; BOF loader COFF con API estilo Beacon; evasión AMSI/ETW, syscalls indirectas con gadget en ntdll, HWBP+VEH, Ekko sleep; inyección por sección, APC, fibra y thread pool; PPID spoofing; persistencia por Run + COM hijack `{42aedc87-2188-41fd-b9a3-0c966feabec1}` + `schtasks /create /tn Maint-Scheduler-4d47 /sc minute /mo X /f /rl highest`; self-delete `cmd del /f /q` y `MoveFileEx`.

Observación importante: la muestra trae un modo de autoevaluación ("runner"): cada técnica imprime `VEREDICTO: PASS/FAIL` con textos en español (`PASS (APC ejecutada en estado alertable)`, `PASS (tarea recurrente creada y consultada)`, `PASS (BOF cargado y ejecutado)`, etc.). Eso más la fecha de compilación de un día antes del análisis y el overlay de cebos indica que es una muestra armada para el curso, no malware salvaje. Comportamiento igual: es un implante tipo Beacon en Rust, con C2 dead-drop y capacidad de tasking.

## 7. Plan de análisis dinámico (no ejecutar fuera del laboratorio)

Reglas de la cátedra para detonar: solo FLARE VM con snapshot previo, red host-only sin salida a Internet, copiar la muestra al disco de la VM (no correr desde carpeta compartida), desactivar la carpeta compartida antes de detonar. Si se necesita que "haya Internet", usar INetSim (HTTP/DNS falsos). Nunca en la máquina host ni desde la carpeta compartida.

- Snapshot pre-detonación: obligatorio, la muestra escribe registro, crea tareas y se autoborra; se va a necesitar volver atrás varias veces.
- Procmon: filtrar por el PID del proceso. Esperado: `RegCreateKeyExW/RegSetValueExW` sobre `HKCU\...\Run` y `HKLM\...\Run`, `Software\Classes\CLSID\{42aedc87-...}\InProcServer32`, `Software\Maintefa03391`; `CreateProcessW` de `schtasks.exe /create /tn Maint-Scheduler-4d47 ...`, de `cmd.exe /e:ON /v:OFF /d /c ...`, de `powershell.exe -NoProfile -ExecutionPolicy Bypass -File`; escritura de `C:\Users\...\_bof.o`, `_bof.out`, `_exec_spill.bin`, `_screen.bmp`, `self.exe`, `l2_out.exe`; `CreateNamedPipeW` de `\\.\pipe\99ba5137a5e0c152`; claves `AmsiScanBuffer` y `EtwEventWrite` tocadas vía `VirtualProtect`.
- Wireshark: DNS y HTTP/HTTPS. Esperado: intentos a los checks de conectividad (google generate_204, bing, msftconnecttest, msftncsi) y sobre todo a `ntfy.sh` (dead-drop). Con red simulada se van a ver los DNS fallidos y los reintentos. El tasking va cifrado (AES-GCM), no se va a leer en claro.
- TCPView: conexión saliente 443 a `ntfy.sh` (u otro host si el perfil lo cambia) y ninguna escucha entrante. Registrar IP remota y estado. Sirve para confirmar el beaconing y el intervalo (poll_interval + jitter).
- Process Explorer: árbol de procesos (`cmd.exe`, `powershell.exe`, `schtasks.exe`), handles a named pipe, threads suspendidos del proceso inyectado, y confirmar el PPID spoofeado (el hijo aparece con otro padre).
- Regshot: comparar antes/después para cerrar el delta de registro exacto (clave, valor, datos).
- Si la muestra trae el modo runner, ejecutarla con args (`-bof-run`, `--bof-run`, etc.) muestra los `VEREDICTO` por stdout; eso confirma técnica por técnica.

## 8. Indicadores de compromiso (IOC)

Fichero:
- SHA256 `3fd084733b5dc2726fbb915197538f2deb632085bb80f21fc06d430345cb4003`
- MD5 `6a848618d252f2698b8857f5e829cf31`
- SHA1 `a3871017b9542bfa9b2451187fcb98839757460f`
- Metadatos: `Contoso Ltd` / `Contoso Update Service` / `svc.exe` / 1.0.0

Red:
- `ntfy.sh` (dead-drop C2, poll `/raw?poll=1` y `?poll=1`)
- paths `/api/`, `/raw`, header `Authorization: Bearer`, `Content-Type: application/json`
- User-Agent: `Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.6924.43 Safari/537.36` y variante Chrome/120.0.0.0
- checks de conectividad (ruido/liveness): `https://www.google.com/generate_204`, `https://www.bing.com/`, `http://www.msftconnecttest.com/connecttest.txt`, `http://www.msftncsi.com/ncsi.txt`

Host:
- Named pipe `\\.\pipe\99ba5137a5e0c152`
- Tarea programada `Maint-Scheduler-4d47` (via `schtasks /create /tn Maint-Scheduler-4d47 /sc minute /mo X /f /rl highest`)
- Registro: `HKCU\Software\Microsoft\Windows\CurrentVersion\Run`, `HKLM\Software\Microsoft\Windows\CurrentVersion\Run`, `HKCU\Software\Maintefa03391`, `HKCU\Software\Classes\CLSID\{42aedc87-2188-41fd-b9a3-0c966feabec1}\InProcServer32`
- Ficheros: `l2_out.exe`, `self.exe`, `_screen.bmp`, `_bof.o`, `_bof.out`, `_exec_spill.bin`, `_cim.ps1`
- Comandos: `cmd.exe /e:ON /v:OFF /d /c "`, `powershell -NoProfile -ExecutionPolicy Bypass -File`, `wevtutil cl`, `cmd del /f /q`, `cmd.exe /c ping -n 10 127.0.0.1 >nul`
- Marcas de ofuscación: XOR de 16 bytes repetidos; claves usadas por la muestra: `4b5a83ab7c0b4d56c704ac1b45a8bf37`, `51a37423c1a5d68d24949c08c8affe70`, `72a58274f5117d2decc220b5bcb14b22`, `489fd35b2b7cf6ad02df751b77ecf5ab`, `e8b882379f36de355545ed920eb1ed49` (las 21 están en `artefactos/strings_descifradas.txt`).

## 9. YARA (firma base)

```yara
rule MAL_Rust_Implant_Contoso_Beacon
{
    meta:
        description = "Implant Rust tipo Beacon, cadenas XOR, dead-drop ntfy.sh, metadata Contoso"
        author = "Analisis Ingenieria Inversa"
        date = "2026-10-08"
        hash = "3fd084733b5dc2726fbb915197538f2deb632085bb80f21fc06d430345cb4003"
    strings:
        $mz = { 4D 5A }
        $pipe = "\\\\.\\pipe\\99ba5137a5e0c152" ascii
        $ver1 = "Contoso Update Service" wide
        $ver2 = "Contoso Ltd" wide
        $task = "Maint-Scheduler-4d47" ascii
        // cadenas cifradas (XOR 16 bytes) de strings clave
        $x_bof  = { 66 77 E1 C4 1A 26 3F 23 A9 }                              // "-bof-run"
        $x_ntfy = { 3F D7 12 5A EF D6 BE }                                    // "ntfy.sh"
        $x_poll = { 7E D1 15 54 FE D5 B9 E1 48 A9 AD }                        // "/raw?poll=1"
        $x_ver  = { 1D 1F D1 EE 38 42 0E 02 88 3E 8C }                        // "VEREDICTO: "
        $x_wipe = { 3C 33 F3 CE 23 68 2C 26 B3 71 DE 7E 1A DC D0 58 27 29 B9 8B 1D 65 2C 3A AE 7E CD 75 21 C7 9F 43 2A 29 E8 C7 15 78 39 } // "wipe_capture_tools"
    condition:
        $mz at 0 and 2 of ($pipe, $ver*, $task, $x_*)
}
```

## 10. Tipo de malware y cierre

Implante/RAT en Rust con arquitectura tipo Cobalt Strike Beacon: beaconing por HTTP, dead-drop en `ntfy.sh`, tasking cifrado y firmado, ejecución de BOFs COFF, evasión (AMSI/ETW/syscalls indirectas/sleep cifrado), inyección (sección, APC, fibra, thread pool), persistencia múltiple (Run HKLM/HKCU, COM hijack, tarea programada), recon completo, screenshot, clipboard y self-delete. Según el nivel de acceso, la clasificación de la cátedra es RAT/backdoor con capacidades de espionaje y evasión. Muestra custom, compilada el 2026-10-07, con overlay de cebos y modo de autoevaluación; pendiente confirmación dinámica de URL/topic exactos del dead-drop, que no están en claro en el binario.

Artefactos: `artefactos/strings_descifradas.txt` (745 strings + claves), `artefactos/strings_en_claro_con_xrefs.txt`, `artefactos/imports.txt`, `artefactos/decrypt_strings.py`, `artefactos/import_xrefs.py`.
