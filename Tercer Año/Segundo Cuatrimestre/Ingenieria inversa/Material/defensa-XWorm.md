# XWorm 7.4 en dropper .NET: chuleta de defensa

Un archivo para leer antes de entrar. Cadena, cómo se descubrió, glosario de los términos que puede preguntar y qué contestar.

## 1. Qué es la muestra

`FogStation.exe`, 590 KB, PE32 GUI, .NET Framework 4.5, sin firma, `asInvoker`. Se presenta como simulador francés de corneta de niebla y funciona de verdad. Clasificación: dropper + loader reflectivo + RAT. Etapa 1 no es el RAT, es el vehículo.

| Etapa | Artefacto | SHA256 | Algoritmo de extracción |
|---|---|---|---|
| 0 | `26349138510.zip` | `57d28764dd354dbb726dcc940c4e5790131b54c644c59a69abe8550df2b8505b` | password `infected` |
| 1 | `FogStation.exe` / interno `DgwB.exe` | `17161ca9b95f7b2550a69cc0f2fce78ae93ae27869f6652fd54cbc2bbec68b38` | punto de partida |
| 2 | `AdvancedSokoban.dll`, 101376 B | `783064541c490386ad9fe5b9660b68b09ddf4a203789612ccacc5924e327c0ef` | esteganografía RGB en `Btlj` |
| 3 | `Noogen.Validation.dll`, 315393 B | `31d6d1bc32991e639cab11b19f9531f3453b6b54f56c1e354e78cb77009ab633` | recorte `NBWB` 282x282 + XOR cíclico `nfn`/`0x94` |
| 4 | `XWormClient UK.exe`, 61952 B | `b83ec3f8d27de262c14b66bf3ef0d5906f1a166546130d3d6cafcc2dc266ce85` | recurso `WoEPfRqA` + XOR aditivo `LTZjwdicDTlSdh` |

## 2. Cadena de ejecución

```
[1] Usuario ejecuta el EXE, sin admin
[2] CLR: mscoree!_CorExeMain -> Program.Main -> FormAccueil
[3] InitializeComponent: toma Btlj (BMP 184x184 32bpp)
[4] Recorre x de 0 a ancho, y de 0 a alto, concatena R, G, B hasta 101376 B
[5] Assembly.Load(byte[]) por reflexión, sin archivo en disco
[6] Activator.CreateInstance(tipo, {"4E425742","6E666E","FogStation"})
[7] Etapa 2: recorta NBWB (459-177=282, 507-225=282), serializa B,G,R,A
[8] Primeros 4 bytes = longitud 315393, resto cifrado con XOR cíclico nfn + sal 0x94
[9] Etapa 3: .NET Reactor, recurso WoEPfRqA 61953 B, XOR aditivo clave LTZjwdicDTlSdh
[10] Descarta último byte: 61952 B de XWorm 7.4
[11] Process hollowing en RegSvcs.exe, vbc.exe o MSBuild.exe (fallback Assembly.Load)
[12] Config AES-128-ECB, clave MD5 del mutex aBvZYHyn1t4M9ZX2
[13] TCP 172.94.15.100:6070, enmarcado longitud\x00criptograma
```

## 3. Cómo se descubrió, en orden

Todo estático, en el orden de la clase: básico antes que avanzado, porque abrir el desensamblador sin contexto es adivinar.

1. Hash y reputación. `sha256sum` y VirusTotal/Triage. Ahí aparece familia xworm y el C2.
2. Estructura PE con PEStudio y DIE: `Machine` 0x14c, `Subsystem` 2 GUI, entry point `0x9460e`, ImageBase `0x400000`, `DllCharacteristics` 0x8560, sin firma.
3. Secciones y entropía: `.text` 7.51, `.rsrc` 3.10, `.reloc` 0.06. Nombres estándar, sin rastro de UPX. La entropía alta es el blob de recursos de .NET, no un packer.
4. IAT con una sola entrada, `mscoree.dll!_CorExeMain`. Binario .NET puro: la capacidad está en IL, no en imports. Imphash genérico, no sirve para pivotar.
5. Strings con FLOSS y lectura de metadata: APIs partidas (`"Virtual "+"Alloc"`), `Debugger Detected`, versión `7.4.8.492`.
6. Recursos: `Btlj` BMP 184x184 y `NBWB` PNG 459x507, más recursos de etapa 2 con entropía 7.86.
7. Descompilado con dnSpy/ILSpy, o `dnfile` + `dncil` desde Python. El desvío está al final de `InitializeComponent`, escondido en la inicialización de `btnQuitter`.
8. Extracción de etapa 2 con script propio: `MZ`, `file` dice PE32 .NET, hash `7830645...c0ef`.
9. Etapa 2: clase real que recorta `NBWB`, serializa ARGB y descifra con XOR.
10. Etapa 3: clase real `WhBLoiMQnWBXEqhSjA4`, saca `WoEPfRqA`, XOR aditivo, descarta byte de cola.
11. Etapa 4: descifrado de los bloques Base64 de config con AES-128-ECB.
12. Dinámico: no ejecutado. Comportamiento de red y `WriteProcessMemory` tomados del sandbox público del mismo hash (Triage `261006-h8391staqf`, Joe Sandbox, JaffaCakes118).

## 4. Glosario

**PE**: formato de ejecutable de Windows. `.exe`, `.dll`, `.sys`. Arranca con `MZ` y tiene header, secciones (`.text` código, `.rsrc` recursos, `.reloc` relocalizaciones) y entry point.

**Packer**: empaqueta el ejecutable (lo comprime o cifra) y le agrega un stub que lo descomprime en memoria al arrancar. UPX, Themida, .NET Reactor. Síntomas: secciones raras, pocos strings, entropía alta. Acá la etapa 1 no está empaquetada y la 3 sí usa .NET Reactor.

**Entropía**: desorden de los bytes, 0 a 8 bits por byte. Código normal ~6, comprimido o cifrado 7.5 a 8, ceros ~0.06. Se mide por sección y delata packer o cifrado sin ejecutar nada.

**IAT**: Import Address Table. Lista de funciones de DLLs externas que usa el binario, con el puntero que Windows completa al cargar. Es lo más barato de leer y lo más revelador: `VirtualAlloc` o `WriteProcessMemory` ahí significan inyección. Acá solo hay `_CorExeMain`, y las APIs nativas se resuelven en runtime con `GetProcAddress` para no figurar.

**IL**: Intermediate Language, el bytecode de .NET. No es código máquina: el CLR lo compila con JIT al ejecutar. Por eso se descompila a C# casi exacto, con nombres de clases y métodos.

**FLOSS**: saca strings y además resuelve las ofuscadas. `strings` solo lee bytes ASCII/UTF-16 contiguos; FLOSS detecta la rutina que decodifica, la emula y devuelve el valor final. Sirve para APIs partidas y `Debugger Detected`.

**Btlj**: solo un nombre random de recurso. No es formato ni algoritmo. Es el Bitmap 184x184 32bpp que la etapa 1 usa como contenedor del PE de la etapa 2.

**dnSpy / ILSpy**: descompiladores .NET. Leen metadata e IL y los traducen a C# legible. ILSpy es solo lectura, dnSpy además debugger. No descomprimen packers: si el assembly está protegido, salen nombres basura y hay que buscar la clase real por el recurso que toca.

**XOR**: operación bit a bit. `c = a ^ k` y `c ^ k = a`: la misma operación cifra y descifra, sin tablas ni librerías. Cíclico significa que la clave se repite byte a byte. Debilidad: si el claro empieza con `4D 5A` (`MZ`), `0x4D ^ c[0]` te da el primer byte de la clave. Es ofuscación, no criptografía. AES es cripto real, y por eso la config del RAT va con AES-128-ECB.

**Process hollowing**: crear un proceso legítimo suspendido, vaciarle la imagen y escribir otra en su lugar. Acá apunta a `RegSvcs.exe`, `vbc.exe` y `MSBuild.exe`.

## 5. Configuración del RAT (etapa 4)

| Campo | Valor |
|---|---|
| C2 | `172.94.15.100:6070` TCP |
| Clave AES de comunicaciones | `<123456789>` |
| Delimitador de tramas | `<Xwormmm>` |
| Versión | `XWorm V7.4` |
| Ejecutable desplegado | `USB.exe` |
| Mutex | `aBvZYHyn1t4M9ZX2` |
| Persistencia | `HKCU\Software\<HWID>` |
| Delay de conexión | 1 segundo |

Clave AES: MD5 del mutex (16 bytes) copiado en los offsets 0 y 15 de un array de 32, modo ECB, padding PKCS7.

Comandos: `ping`, `PCShutdown`, `PCRestart`, `PCLogoff`, `RunShell`, `LN`, `Urlopen`, `Urlhide`, `StartDDos` (20 hilos), `$Cap` (captura GDI a JPEG Base64), `Hosts`/`Shosts`, `FM`, `rec`, `CLOSE`, `uninstall`, `update`, `plugin`/`savePlugin` (DLLs en Base64 al registro, luego `AppDomain.Load`).

Plugins: `Plugin.Run`, `Plugin.RunRecovery` (navegadores, DPAPI, cookies), `Plugin.injRun`, `Plugin.UACFunc`, `Plugin.ENC`/`DEC` (ransomware).

Autolimpieza: `%TEMP%\<aleatorio>.bat` con `timeout 3 > NUL` y `DEL /f /q`.

## 6. Herramienta a hallazgo

| Herramienta | Qué se sacó |
|---|---|
| `sha256sum`, HashMyFiles | hashes, ssdeep, imphash |
| VirusTotal, Triage | familia xworm, sandbox `261006-h8391staqf`, C2 |
| PEStudio, DIE, `pefile` | secciones, entropías, entry point, IAT, recursos |
| `strings`, FLOSS, metadata .NET | APIs partidas, `Debugger Detected`, versión |
| dnSpy, ILSpy, `dnfile`, `dncil` | `InitializeComponent`, `Assembly.Load`, extractor |
| Python + PIL | extracción y descifrado de las 4 etapas |

## 7. Preguntas probables

**¿Lo ejecutaste?** No. Estático completo sobre las cuatro etapas y sandbox público del mismo hash para comportamiento. Los hallazgos se reproducen con el ZIP, sin ejecutar.

**¿Por qué no IDA?** Para nativo sí. Acá es .NET: dnSpy e ILSpy devuelven C# y son más rápidos y fieles. IDA te da pseudo-C de código que no existe hasta el JIT.

**¿Por qué el imphash no sirve?** Todo binario .NET importa `mscoree.dll`, así que el imphash es genérico.

**¿Cuál es el hallazgo más profundo?** El bitmap que contiene un PE y la resolución dinámica de APIs de inyección. El hash es el más fuerte pero el más trivial.

**¿Qué no confirmaste?** Config completa por ejecución propia, persistencia efectiva, inyección consumada. Todo eso sale de sandbox de terceros y va marcado como tal.

**¿MITRE?** T1027.003 esteganografía, T1620 carga reflectiva, T1055 inyección, T1547.001 persistencia en registro, T1059 ejecución por shell.

## 8. Detalles que suman

- `InitializeComponent` es el lugar donde se esconde la lógica maliciosa, camuflada como inicialización de `btnQuitter`.
- Los nombres de métodos de la etapa 1 vienen de acústica (`ComputeRoomAcousticsMetrics`, `PorteeBase`) para parecer inofensivos.
- `"CreateInstance"` está partido en `Cr`+`eat`+`eIns`+`ta`+`nce`, y los argumentos salen del hex de `"This is normal"`.
- La etapa 2 tiene 212 tipos y 869 métodos para un Sokoban, con delegados proxy y control flow flattening de 42 ramas. Eso es el indicador de ofuscación.
- La sal de la etapa 2 es el último byte del buffer XOR `0x70`, y da `0x94`. Keystream efectivo `94 FA 94`.
- El AES-256 con clave en `.PrivateImplementationDetails` fue hipótesis previa. La versión válida es la del docx unificado: XOR en las etapas 2 y 3, AES-128-ECB solo en la config del RAT.
