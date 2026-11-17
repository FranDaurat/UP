# Repaso Integrador — Seguridad en Sistemas Operativos

> [!tip] Cómo usar este archivo
> Leé la consigna, respondela mentalmente, y desplegá la caja **▸ Respuesta** para verificar. Las cajas están colapsadas por defecto. Las respuestas son la versión resumida.
> Unifica las preguntas de repaso de los 6 módulos. Al final de cada módulo hay una sección **★ Extra sugeridas**: preguntas que no estaban en los módulos pero que cubren huecos frecuentes de parcial (marcadas con `E`).

## Índice
- [[#Módulo 1 — Historia y evolución de los SO]]
- [[#Módulo 2 — Virtualización y VDI]]
- [[#Módulo 3 — Sistema de archivos]]
- [[#Módulo 4 — Mecanismos de seguridad]]
- [[#Módulo 5 — Encriptación y auditoría]]
- [[#Módulo 6 — Hardening de sistemas operativos]]
- [[#Primer Parcial — Casos resueltos]]

---

# Módulo 1 — Historia y evolución de los SO

**1.** ¿Qué es un sistema operativo y cuál es su función principal?

> [!success]- Respuesta
> Es el software base que actúa como columna vertebral de cualquier dispositivo informático: hace de intermediario entre el usuario/las aplicaciones y el hardware. Sus funciones principales son **gestionar los recursos de hardware** (CPU, memoria, almacenamiento, E/S), **proveer servicios** a las aplicaciones (gestión de archivos, procesos y dispositivos) y **ofrecer una interfaz** de interacción al usuario (CLI o GUI).

**2.** Describí las grandes etapas de la evolución histórica de los sistemas operativos.

> [!success]- Respuesta
> - **Años 50:** máquinas enormes y caras, programación manual en lenguaje de máquina; surgen los primeros SO primitivos.
> - **Años 60-70:** sistemas **monolíticos** centralizados (OS/360, UNIX); permitían múltiples aplicaciones pero con poco aislamiento/protección entre procesos.
> - **Años 80:** sistemas **distribuidos y de red** (Windows NT, Linux); aparecen desafíos de sincronización, comunicación y seguridad.
> - **Años 90:** **interfaces gráficas (GUI)** y foco en usabilidad (Windows 95, macOS).
> - **Actualidad:** **virtualización, contenedores y nube**; múltiples entornos aislados sobre un mismo hardware físico.

**3.** ¿Según qué criterios se clasifican los sistemas operativos?

> [!success]- Respuesta
> Por **arquitectura** (PC, servidor, móvil, etc.), por **interfaz** (texto, GUI, táctil) y por **uso** (general, industrial, científico).

**4.** Mencioná los principales tipos de sistemas operativos con un ejemplo de cada uno.

> [!success]- Respuesta
> - **De usuario:** Windows, macOS, Ubuntu.
> - **De servidor:** Windows Server, Red Hat, CentOS.
> - **De tiempo real:** QNX, VxWorks (control industrial, autos autónomos, equipos médicos).
> - **Embebidos:** FreeRTOS, Embedded Linux (electrodomésticos, dispositivos médicos).
> - **De red:** Cisco IOS, Juniper Junos, MikroTik RouterOS.
> - **Móviles:** Android, iOS, HarmonyOS.
> - **De mainframe:** z/OS (IBM), Unisys MCP.
> - **De vehículos autónomos:** gestionan sensores y decisiones críticas en tiempo real.

**5.** ¿Cuáles son los componentes clave de la arquitectura de un sistema operativo?

> [!success]- Respuesta
> Núcleo (kernel), gestor de procesos, gestor de memoria, gestor de dispositivos, sistema de archivos, interfaz de usuario, controlador de red, controlador de sistema de archivos, bibliotecas del sistema y utilidades del sistema. La coordinación entre ellos forma la arquitectura general.

**6.** ¿Qué es el kernel y qué tipos existen?

> [!success]- Respuesta
> Es el corazón del SO: gestiona el hardware y las operaciones fundamentales (memoria, planificación de procesos, interrupciones, comunicación entre procesos). Tipos: **monolítico** (toda la funcionalidad en el núcleo), **microkernel** (mínimo en el núcleo, el resto en espacio de usuario) y **exokernel**.

**7.** Explicá los conceptos clave de la gestión de memoria.

> [!success]- Respuesta
> - **Espacio de direcciones:** rango de memoria propio de cada proceso.
> - **Memoria física vs virtual:** la física es la RAM; la virtual la extiende usando el disco como respaldo.
> - **Paginación y segmentación:** técnicas para gestionar la memoria virtual (páginas de tamaño fijo vs segmentos lógicos).
> - **Fragmentación:** espacio desperdiciado; **interna** (dentro de un bloque asignado) o **externa** (entre bloques).
> - **Swapping y paginación por demanda:** mover procesos/páginas entre RAM y disco según necesidad.

**8.** ¿Qué características comunes comparten todos los sistemas operativos?

> [!success]- Respuesta
> **Gestión de recursos** de hardware, **provisión de servicios** a las aplicaciones e **interacción con el usuario** mediante una interfaz.

## ★ Extra sugeridas

**E1.** Diferenciá el **modo kernel** del **modo usuario**.

> [!success]- Respuesta
> Son dos niveles de privilegio de la CPU. En **modo kernel** el código (el SO) accede sin restricciones al hardware y a todas las instrucciones. En **modo usuario** las aplicaciones corren restringidas y no pueden tocar el hardware directamente. Esta separación **protege el sistema**: un fallo o abuso de una app no compromete al SO. El paso de uno a otro se hace mediante llamadas al sistema o interrupciones.

**E2.** ¿Qué es una **llamada al sistema (system call)** y para qué sirve?

> [!success]- Respuesta
> Es el mecanismo por el cual una aplicación (en modo usuario) le **pide un servicio al kernel** (leer un archivo, crear un proceso, enviar datos por red). Provoca un cambio controlado a modo kernel. Es la **frontera de seguridad**: el SO valida cada pedido antes de ejecutarlo.

**E3.** Diferenciá **proceso** de **hilo (thread)**.

> [!success]- Respuesta
> Un **proceso** es un programa en ejecución con su propio espacio de direcciones aislado. Un **hilo** es una unidad de ejecución **dentro** de un proceso; varios hilos comparten memoria y recursos del mismo proceso. Los hilos son más livianos, pero al compartir memoria hay que sincronizarlos para evitar condiciones de carrera.

**E4.** ¿Qué es el **planificador (scheduler)** de procesos y qué busca?

> [!success]- Respuesta
> Es el componente que decide **qué proceso usa la CPU y cuándo**, repartiendo el tiempo entre procesos listos. Busca equidad, buen aprovechamiento de la CPU y baja latencia. Estrategias típicas: **FIFO**, **Round Robin** (turnos por quantum de tiempo) y **por prioridades**.

**E5.** ¿Qué es una **interrupción** y por qué es importante para el SO?

> [!success]- Respuesta
> Es una señal (de hardware o software) que **avisa a la CPU de un evento** que necesita atención inmediata (tecla presionada, llegada de datos de red, timer). La CPU suspende lo que hace, atiende la interrupción con una rutina del SO y luego retoma. Permiten que el SO reaccione a eventos sin tener que consultar (polling) todo el tiempo.

---

# Módulo 2 — Virtualización y VDI

**1.** ¿Qué es la virtualización de hardware?

> [!success]- Respuesta
> Es la tecnología que permite crear **múltiples instancias aisladas y autónomas** de sistemas operativos y aplicaciones sobre un **único hardware físico**. Se basa en máquinas virtuales (VM) que actúan como sistemas completos y separados, cada una con su propio SO, recursos y aplicaciones. La gestiona un software llamado **hipervisor**.

**2.** ¿Qué es un hipervisor y qué tipos existen?

> [!success]- Respuesta
> Es el software (monitor de máquina virtual) que administra y asigna los recursos de hardware a cada VM. Hay dos tipos:
> - **Tipo 1 (Bare-Metal):** se instala directamente sobre el hardware, sin SO anfitrión. Mejor rendimiento y aislamiento. Ejemplos: VMware vSphere/ESXi, Microsoft Hyper-V, Xen.
> - **Tipo 2 (Hosted):** corre sobre un SO anfitrión y crea las VM como procesos. Más fácil de configurar, rendimiento algo menor. Ejemplos: Oracle VirtualBox, VMware Workstation.

**3.** Diferenciá paravirtualización de virtualización completa.

> [!success]- Respuesta
> En la **paravirtualización** el SO invitado está **modificado** para ser consciente de que corre virtualizado. En la **virtualización completa** el SO invitado **no requiere modificaciones** y no sabe que está virtualizado.

**4.** Enumerá las ventajas principales de la virtualización de hardware.

> [!success]- Respuesta
> - **Consolidación de recursos:** varios SO/apps en un solo servidor físico, reduce costos.
> - **Aislamiento:** un fallo en una VM no afecta a las demás (mejora seguridad y estabilidad).
> - **Desarrollo y pruebas:** entornos aislados y replicables.
> - **Migración y copias de seguridad:** las VM se migran (incluso **en caliente**) y respaldan fácilmente.
> - **Flexibilidad y escalabilidad:** se crean o eliminan VM según demanda.

**5.** ¿Cuáles son los principales desafíos y riesgos de seguridad de la virtualización?

> [!success]- Respuesta
> Existe una pequeña **sobrecarga de rendimiento** por la administración del hipervisor. El riesgo clave de seguridad es que una **vulnerabilidad en el hipervisor afecta a TODAS las VM** que aloja; además, un aislamiento mal configurado puede permitir interferencia entre máquinas virtuales. Por eso importa dimensionar recursos y aplicar buenas prácticas de seguridad.

**6.** ¿En qué consiste la virtualización de CPU?

> [!success]- Respuesta
> Permite que múltiples VM compartan el mismo procesador físico. Mecanismos: **traducción de direcciones** (evita conflictos y aísla), **planificación de CPU** (reparte ciclos de reloj equitativamente) e **interrupciones virtuales** (se redirigen al hipervisor porque las VM no acceden directo al hardware).

**7.** ¿Cómo funciona la virtualización de memoria y de almacenamiento?

> [!success]- Respuesta
> - **Memoria:** Se traduce a la memoria fisica usando tablas de paginas y paginacion manteniendo espacios aislados
> - **Almacenamiento:** Se abstraen los recursos fisicos para asignar espacio dinamicamente.

**8.** ¿Qué es VDI (Virtual Desktop Infrastructure)?

> [!success]- Respuesta
> Es la **virtualización de escritorio** donde los sistemas se ejecutan centralmente en servidores remotos y el usuario accede desde cualquier dispositivo.

**9.** ¿Qué modelos de distribución de VDI existen?

> [!success]- Respuesta
> - **Con licencia:** VMware (sobre ESXi) y Citrix (sobre Xen).
> - **Open Source:** LTSP (Linux Terminal Server), servidor VNC en contenedor, QVD (Quality Virtual Desktop).
> - **En la nube:** VDI completamente administrado, DaaS (Escritorio como Servicio), Azure Virtual Desktop, Windows 365.

**10.** ¿Cuáles son los componentes de una infraestructura VDI?

> [!success]- Respuesta
> - **Servidor de VDI:** aloja las máquinas virtuales de escritorio y aporta la capacidad de cómputo.
> - **Hipervisor de escritorio:** corre en ese servidor y administra las VM de escritorio.
> - **Software de administración de VDI:** permite crear, gestionar y supervisar los escritorios virtuales.
> - **Dispositivos cliente:** **thin clients** (hardware liviano y barato), PC o dispositivos móviles desde donde el usuario accede.
>
> **Beneficios:** administración centralizada, acceso desde cualquier lugar/dispositivo y los datos permanecen en el centro de datos (menor riesgo de fuga). **Desafíos:** requiere infraestructura de hardware robusta y el **licenciamiento** puede ser complejo.

**11.** ¿En qué consiste la virtualización de red?

> [!success]- Respuesta
> Es la abstracción de la **red física** (routers, switches, cableado) para que **múltiples redes lógicas independientes** convivan sobre la misma infraestructura.
> - **VLAN:** red virtual creada en la **capa 2** (enlace de datos) para segmentar el tráfico.
> - **Mecanismos:** **segmentación y aislamiento** del tráfico, **routers y switches virtuales** que lo gestionan, y **túneles virtuales** que encapsulan el tráfico de una red virtual dentro de otra.
> - **Beneficios:** aislamiento completo entre redes virtuales (más seguridad), flexibilidad para crear/modificar redes y gestión centralizada.
> - **Desafíos:** impacto en el rendimiento y complejidad de configuración y mantenimiento.

**12.** Diferenciá **snapshot** de **clonación**.

> [!success]- Respuesta
> - **Snapshot (instantánea):** copia del **estado y los datos** de una VM en un momento dado. Sirve para **revertir** rápido y gestionar cambios temporales (antes de una actualización o prueba). Depende de la VM original.
> - **Clonación:** copia **completa e independiente** de una VM existente; el resultado es otra VM que funciona por sí misma. Usos: **despliegue rápido**, **escalamiento horizontal** (varias VM idénticas para repartir carga) y entornos de prueba. Ojo con las **licencias** adicionales y con ajustar la configuración (ej. direcciones IP) de las copias.
>
> Son **complementarios**: snapshot = recuperación rápida; clonación = copias separadas y duraderas.

**13.** ¿Qué es la **alta disponibilidad (HA)** en virtualización y cómo se implementa?

> [!success]- Respuesta
> Es la capacidad de que un sistema o servicio funcione de forma **continua, con mínimas interrupciones**, incluso ante fallos.
> - **Mecanismos:** **clústeres de servidores** con **conmutación por error (failover)** (Windows Server Failover Clustering, Linux-HA), **migración en caliente** entre hosts y **almacenamiento compartido** (**SAN** o **NAS**) al que acceden todos los nodos.
> - **Tecnologías:** **VMware vSphere HA** (reinicia automáticamente las VM en otro host), **Hyper-V Replica** (replica VM a servidores secundarios en tiempo real) y **Proxmox VE**.
> - **Beneficios:** continuidad de servicios críticos, redundancia frente a fallos de hardware y mantenimiento/actualizaciones sin cortar el servicio.
> - **Desafíos:** **costo** (hardware y licencias redundantes) y una configuración/planificación cuidadosa.

**14.** ¿Cuáles son las mejores prácticas de seguridad en entornos virtualizados?

> [!success]- Respuesta
> Riesgos de partida: **fuga de datos** por compartir recursos, el **hipervisor como blanco** de ataque y la **migración en caliente (VMotion)** que expone datos si no se cifra.
> - **Seguridad del hipervisor:** mantenerlo actualizado, limitar el acceso físico al servidor y usar soluciones de confianza.
> - **Aislamiento de recursos:** políticas de aislamiento entre VM y **redes virtuales separadas** para el tráfico sensible.
> - **Gestión de acceso:** autenticación sólida y control de quién administra las VM y los servidores.
> - **Monitorización y auditoría:** supervisar tráfico de red, rendimiento del hipervisor y actividad de las VM.
> - **Cifrado:** de datos en tránsito y en reposo, incluidas las conexiones de administración.
> - **Parcheo:** VM, hipervisor y software de gestión al día.
> - **Retención de datos:** definir cuánto se conservan los registros y cómo se eliminan.
>
> Además: **cumplimiento normativo** (PCI DSS, ISO 27001, HIPAA), **capacitación** del personal, **copias de seguridad y recuperación ante desastres**, y **auditorías de seguridad periódicas**.

## ★ Extra sugeridas

**E1.** Diferenciá **máquinas virtuales** de **contenedores** (Docker).

> [!success]- Respuesta
> Una **VM** incluye su propio sistema operativo completo totalmente aislado del anfitrion. En cambio, los contenedores comparten el kernel del anfitrion junto con sus recursos. A su vez estos mismos son mucho mas livianos.
> Los contenedores son muy **portátiles** (encapsulan la app y sus dependencias) y se gestionan a escala con herramientas de **orquestación** como **Kubernetes** y **Docker Swarm**.

**E2.** ¿Qué es un **snapshot** de una máquina virtual y para qué se usa?

> [!success]- Respuesta
> Es una **foto del estado completo** de la VM (disco, memoria, configuración) en un momento dado. Permite **volver atrás** rápidamente si una actualización o prueba sale mal. Muy usado antes de cambios riesgosos y en entornos de testing. No reemplaza a un backup: si se corrompe el datastore, el snapshot también se pierde.

**E3.** ¿Qué es la **migración en caliente (live migration)**?

> [!success]- Respuesta
> Es mover una VM **en ejecución** de un servidor físico a otro **sin apagarla** y con interrupción casi nula. Sirve para hacer mantenimiento del hardware, balancear carga y mejorar la disponibilidad.

**E4.** ¿Qué es un **VM escape** (escape de máquina virtual) y por qué es crítico?

> [!success]- Respuesta
> Es cuando un atacante dentro de una VM logra **romper el aislamiento** y ejecutar código en el hipervisor o en otras VM. Es crítico porque **compromete toda la infraestructura** alojada, no solo una máquina. Es la materialización del riesgo estrella de la virtualización.

**E5.** Diferenciá **VDI** de **DaaS**.

> [!success]- Respuesta
> En **VDI** la organización **monta y administra** su propia infraestructura de escritorios virtuales (servidores, hipervisor, licencias). En **DaaS (Desktop as a Service)** un **proveedor en la nube** entrega los escritorios como servicio administrado (ej. Azure Virtual Desktop, Windows 365); se paga por suscripción y baja la carga operativa.

---

# Módulo 3 — Sistema de archivos

**1.** ¿Qué es un sistema de archivos?

> [!success]- Respuesta
> Es la **estructura lógica** que define cómo se organizan, almacenan y recuperan los archivos y datos en un dispositivo de almacenamiento (disco duro, SSD, USB). Provee métodos de indexación, acceso y recuperación, y gestiona los metadatos.

**2.** ¿Cuáles son los componentes clave de un sistema de archivos?

> [!success]- Respuesta
> - **Bloques y sectores:** unidad básica de almacenamiento (tamaño fijo).
> - **Inodos:** estructura con los metadatos de cada archivo.
> - **Directorios:** contenedores con nombres de archivo y sus inodos; organizan la jerarquía.
> - **Tabla de asignación (FAT):** registra qué sectores están ocupados o libres.
> - **Superbloque:** guarda info crítica del FS (tipo, tamaño total, espacio libre).

**3.** ¿Qué es un inodo y qué información contiene?

> [!success]- Respuesta
> Es una estructura de datos que mantiene la información de un archivo: **metadatos** como el nombre, la ubicación de los bloques de datos y los permisos de acceso. No contiene el dato en sí, sino cómo encontrarlo y quién puede usarlo.

**4.** Describí la estructura de directorios.

> [!success]- Respuesta
> Es el árbol jerárquico de carpetas. El **directorio raíz** es el nivel superior: en Unix/Linux es `/`, en Windows es una letra de unidad como `C:\`. Contiene **subdirectorios** (carpetas dentro de otras) y **archivos**. Permite organización, separación de responsabilidades, permisos por directorio y evitar conflictos de nombres (mismo nombre en carpetas distintas).

**5.** Mencioná los tipos de sistemas de archivos más comunes y una característica de cada uno.

> [!success]- Respuesta
> - **FAT (FAT32):** simple y muy compatible; limitado en tamaño y seguridad.
> - **NTFS:** predeterminado en Windows; permisos, compresión, cifrado y journaling.
> - **EXT (ext2/3/4):** común en Linux; confiable y personalizable.
> - **HFS+ / APFS:** de macOS; APFS es moderno, con snapshots y cifrado.
> - **ReFS:** de Windows Server; foco en resiliencia e integridad de datos.
> - **ZFS:** avanzado (Solaris/BSD/Linux); integridad, snapshots, compresión y deduplicación.

**6.** ¿Qué son los metadatos y qué tipos hay?

> [!success]- Respuesta
> Son **datos que describen otros datos** (propiedades del archivo). Tipos: **descriptivos** (título, autor), **técnicos** (formato, tamaño, compresión), **de derechos** (copyright, licencia), **de administración** (fechas de creación/modificación, propietario) y **de ubicación** (geolocalización). Sirven para organizar, buscar, controlar versiones y aplicar seguridad/cumplimiento.

**7.** Explicá la fragmentación y la defragmentación.

> [!success]- Respuesta
> La **fragmentación** ocurre cuando los archivos quedan divididos en fragmentos dispersos por el disco (por creación/borrado frecuente o asignación no contigua). Hay fragmentación **de espacio libre** y **de archivos**. La **defragmentación** reorganiza esos fragmentos en bloques contiguos para mejorar el rendimiento de lectura/escritura. Los FS modernos (NTFS, ext4) se fragmentan menos, y las **SSD no requieren defragmentación** por su estructura distinta.

**8.** ¿Qué son los sistemas de archivos en red y qué tipos existen?

> [!success]- Respuesta
> Permiten el **acceso compartido y centralizado** a archivos a través de una red, con control de acceso, seguridad y escalabilidad. Tipos: **NFS** (Unix/Linux) y **SMB/CIFS** (Windows) como protocolos; **NAS** (dispositivo dedicado de almacenamiento en red); **SAN** (almacenamiento de alto rendimiento vía Fibre Channel o iSCSI); y **almacenamiento en la nube** (Dropbox, Google Drive, OneDrive).

**9.** ¿Cómo funcionan la seguridad y los permisos en los sistemas de archivos?

> [!success]- Respuesta
> Controlan **quién accede y qué acciones puede hacer**. En Unix/Linux los permisos básicos son **lectura (r), escritura (w) y ejecución (x)**, aplicados sobre tres categorías: **propietario, grupo y otros**. Para control más fino se usan **ACL (Listas de Control de Acceso)**. Esto protege datos sensibles, aplica el control de acceso y previene modificaciones accidentales.

## ★ Extra sugeridas

**E1.** ¿Qué es el **journaling** y qué problema resuelve?

> [!success]- Respuesta
> Es un **registro (diario)** donde el FS anota los cambios **antes** de aplicarlos al disco. Si hay un corte de energía o fallo a mitad de una operación, al reiniciar el sistema usa ese diario para **recuperar la consistencia** sin recorrer todo el disco. Lo usan NTFS, ext3/ext4, entre otros.

**E2.** Al borrar un archivo, ¿se elimina realmente el dato? (borrado lógico vs físico)

> [!success]- Respuesta
> Normalmente **no**. El borrado común es **lógico**: se marca el espacio como libre y se quita la referencia en el directorio/inodo, pero los **datos siguen en el disco** hasta que otro archivo los sobrescribe. Por eso se pueden **recuperar** con herramientas forenses. El borrado **físico/seguro** sobrescribe los bloques (o se logra con cifrado del disco) para que el dato sea irrecuperable.

**E3.** Diferenciá **enlace duro (hard link)** de **enlace simbólico (symlink)**.

> [!success]- Respuesta
> Un **hard link** es otro nombre que apunta al **mismo inodo**: el archivo existe mientras quede al menos un enlace, y solo funciona dentro del mismo FS. Un **symlink** es un archivo aparte que **apunta a una ruta**; si se borra el original, queda "roto", pero puede cruzar sistemas de archivos.

**E4.** ¿Qué es **montar (mount)** un sistema de archivos?

> [!success]- Respuesta
> Es **conectar** un sistema de archivos (una partición, un disco, un recurso de red) a un **punto de montaje** dentro del árbol de directorios para poder acceder a su contenido. En Linux todo cuelga de `/` (ej. montar un USB en `/mnt/usb`); recién ahí sus archivos son visibles.

**E5.** ¿Qué son las **cuotas de disco (quotas)** y para qué sirven en seguridad?

> [!success]- Respuesta
> Son **límites de espacio** (o de cantidad de archivos) que el SO asigna por usuario o grupo. Evitan que un solo usuario **agote el disco** (una forma de denegación de servicio) y ayudan a repartir el almacenamiento de forma justa en sistemas compartidos.

---

# Módulo 4 — Mecanismos de seguridad

**1.** ¿Cuáles son los principales mecanismos de seguridad en un sistema operativo?

> [!success]- Respuesta
> Control de acceso, **ACL** (listas de control de acceso), control de capacidad (limita recursos por proceso), **criptografía**, firewalls, auditoría y registro de eventos, control de integridad (hash/firmas), políticas de contraseñas, actualizaciones y parches, virtualización/contenedores (aislamiento), detección de intrusiones y políticas de seguridad. Todos apuntan a proteger la **integridad, confidencialidad y disponibilidad** (tríada CIA).

**2.** Diferenciá autenticación de autorización.

> [!success]- Respuesta
> La **autenticación** verifica la **identidad** del usuario (¿sos quien decís ser?). La **autorización** determina, una vez autenticado, **qué acciones y recursos** tiene permitidos (¿qué podés hacer?). Primero se autentica, después se autoriza.

**3.** ¿Qué es IAM y cuáles son sus componentes clave?

> [!success]- Respuesta
> **IAM (Identity and Access Management)** es el conjunto de políticas, procesos y tecnologías que gestionan la identidad de los usuarios y qué pueden hacer. Componentes: **identidad** (única por usuario), **autenticación**, **autorización**, **gestión de cuentas** (alta/baja/modificación de privilegios) y **auditoría/registro**. Objetivo: que el usuario adecuado tenga el acceso apropiado, en el momento y por la razón correcta.

**4.** Nombrá productos comerciales de IAM.

> [!success]- Respuesta
> Okta, Microsoft Azure Active Directory (Azure AD), Ping Identity, IBM Security Identity Manager, ForgeRock, SailPoint IdentityIQ, OneLogin, Centrify, Auth0 y CyberArk. Suelen ofrecer **SSO** (inicio de sesión único) y **MFA**.

**5.** ¿Qué medidas hacen a la seguridad en redes?

> [!success]- Respuesta
> **Segmentación** (dividir la red para limitar la propagación de ataques y reducir la superficie), **firewalls**, **IDS/IPS** (detección/prevención de intrusiones), **cifrado** de datos en tránsito, actualizaciones/parches, políticas de acceso y autenticación, y gestión de tráfico (ej. **VLAN** para aislar tráfico sensible).

**6.** ¿Qué tipos de firewalls existen?

> [!success]- Respuesta
> - **De estado (stateful)** vs **sin estado (stateless):** el stateful inspecciona el estado de las conexiones; el stateless aplica reglas estáticas.
> - **Proxy / de aplicaciones:** inspecciona el tráfico de aplicaciones específicas.
> - **DPI (inspección profunda de paquetes):** examina el contenido completo del paquete.
> - **NGFW (próxima generación):** combina firewall tradicional con prevención de intrusiones y filtrado de aplicaciones.

**7.** Distinguí criptografía simétrica de asimétrica y explicá hash y firma digital.

> [!success]- Respuesta
> - **Simétrica:** una **única clave** cifra y descifra (rápida). Ejemplos: **AES, DES**.
> - **Asimétrica:** par de claves **pública y privada**; se cifra con la pública y se descifra con la privada. Ejemplos: **RSA, ECC**.
> - **Hash:** función que genera una cadena de longitud fija; verifica **integridad** y almacena contraseñas de forma segura.
> - **Firma digital:** usa criptografía asimétrica para verificar autenticidad e integridad; se crea con la clave **privada** del emisor y se verifica con su clave **pública**.
> - **SSL/TLS:** protocolos que cifran la comunicación web.

**8.** ¿Qué mecanismos refuerzan la seguridad en la autenticación?

> [!success]- Respuesta
> **MFA** (autenticación multifactor: varias formas, ej. contraseña + SMS), **2FA** (dos factores: algo que sabés + algo que tenés), **biometría** (huella, rostro, iris), **contraseñas seguras** (longitud, caracteres especiales, rotación) e **IAM** para gestión centralizada.

**9.** ¿En qué consiste la gestión de claves y certificados?

> [!success]- Respuesta
> - **Claves:** generación segura y aleatoria, almacenamiento en bóveda (hardware/software), distribución segura y **rotación** periódica; a veces con claves maestras.
> - **Certificados:** documentos que verifican identidad en línea. Los emiten las **CA (Autoridades de Certificación)**; pueden **revocarse** (lista **CRL** o protocolo **OCSP** en tiempo real) y deben renovarse antes de vencer.

**10.** ¿Qué prácticas hacen a la seguridad en aplicaciones y al desarrollo seguro?

> [!success]- Respuesta
> Evaluación de vulnerabilidades, pruebas de penetración, autenticación/autorización sólidas, **validación y saneo de entradas** (previene **SQL injection** y **XSS**), cifrado de datos, manejo seguro de sesiones, configuración segura, manejo de errores sin filtrar info, y parches. El **desarrollo seguro** integra la seguridad desde el inicio del ciclo de vida (**SDLC**), no al final.

## ★ Extra sugeridas

**E1.** Explicá la **tríada CIA**.

> [!success]- Respuesta
> Son los tres pilares de la seguridad de la información:
> - **Confidencialidad:** que solo accedan los autorizados (cifrado, control de acceso).
> - **Integridad:** que los datos no se alteren indebidamente (hash, firmas).
> - **Disponibilidad:** que el sistema y los datos estén accesibles cuando se necesitan (redundancia, backups, anti-DoS).

**E2.** ¿Qué modelos de **control de acceso** existen (DAC, MAC, RBAC, ABAC)?

> [!success]- Respuesta
> - **DAC (discrecional):** el **dueño** del recurso decide quién accede (ej. permisos de archivos Unix).
> - **MAC (obligatorio):** el **sistema** impone las reglas según etiquetas de clasificación; el usuario no puede cambiarlas (entornos militares, SELinux).
> - **RBAC (por roles):** los permisos se asignan a **roles**, y a los usuarios se les da un rol (ej. "admin", "operador").
> - **ABAC (por atributos):** decide según **atributos** del usuario, recurso y contexto (hora, ubicación, dispositivo).

**E3.** Explicá el **principio de mínimo privilegio** y la **defensa en profundidad**.

> [!success]- Respuesta
> **Mínimo privilegio:** cada usuario/proceso debe tener **solo los permisos que necesita** para su tarea, ni más; limita el daño si es comprometido. **Defensa en profundidad:** poner **varias capas** de seguridad (red, host, aplicación, datos) para que, si una falla, otra siga protegiendo.

**E4.** Diferenciá **IDS** de **IPS**, y ambos de un **firewall**.

> [!success]- Respuesta
> El **firewall** filtra tráfico según reglas (permite/bloquea puertos, IPs, etc.). El **IDS** (detección de intrusiones) **detecta y alerta** sobre actividad sospechosa, pero no la bloquea. El **IPS** (prevención) además **bloquea o corta** el tráfico malicioso en tiempo real. En resumen: firewall = política de acceso; IDS = alarma; IPS = alarma + acción.

**E5.** ¿Qué es un **SIEM** y para qué sirve la auditoría/registro de eventos?

> [!success]- Respuesta
> Un **SIEM (Security Information and Event Management)** **centraliza y correlaciona** logs de muchos sistemas para detectar patrones de ataque, generar alertas y facilitar la investigación. La **auditoría/registro** deja **rastro** de quién hizo qué y cuándo: sirve para detección, análisis forense post-incidente y cumplimiento normativo.

**E6.** ¿Qué es el modelo **Zero Trust**?

> [!success]- Respuesta
> Es un enfoque de seguridad basado en **"nunca confiar, siempre verificar"**: no se asume confianza por estar dentro de la red. **Cada acceso** se autentica, autoriza y valida (identidad, dispositivo, contexto), aplicando mínimo privilegio y microsegmentación. Reemplaza al viejo modelo de "perímetro confiable".

---

# Módulo 5 — Encriptación y auditoría

**1.** ¿Qué es la encriptación y por qué es importante en los sistemas operativos?

> [!success]- Respuesta
> Es el proceso de convertir información legible en **texto cifrado** mediante un algoritmo y una clave, de modo que solo quien tenga la clave adecuada pueda descifrarla. En los SO es esencial para garantizar la **confidencialidad e integridad** de los datos almacenados y de las comunicaciones (archivos, contraseñas, datos de usuario).

**2.** Diferenciá encriptación de datos en reposo y en tránsito.

> [!success]- Respuesta
> - **En reposo:** protege datos **almacenados** en discos y USB. Enfoque común: **cifrado completo del disco (FDE)**, que hace ilegibles los datos sin la clave aunque roben el dispositivo.
> - **En tránsito:** protege datos **mientras se transmiten** por la red. Usa protocolos como **SSL/TLS** (web) y **SSH** (conexiones remotas), con cifrado de extremo a extremo.

**3.** ¿Qué algoritmos de encriptación se usan y de qué tipo son?

> [!success]- Respuesta
> - **AES (Advanced Encryption Standard):** **simétrico**, muy usado, alta seguridad; ideal para cifrar grandes volúmenes.
> - **RSA:** **asimétrico**, usado en datos en tránsito (SSL/TLS), con clave pública y privada.
> - **ECC (Elliptic Curve Cryptography):** **asimétrico**, eficiente en recursos; común en dispositivos limitados como smartphones.

**4.** Compará encriptación simétrica y asimétrica.

> [!success]- Respuesta
> | Aspecto | Simétrica | Asimétrica |
> |---|---|---|
> | Clave | Una única clave compartida | Par pública + privada |
> | Eficiencia | Más rápida, menos recursos | Más lenta, más cómputo |
> | Uso | Cifrado a granel (discos, archivos) | Comunicación entre partes que no confían, firma digital |
> | Autenticación | No la provee | Sí (verifica identidad) |
> | Gestión de claves | Compleja (distribuir la clave de forma segura) | Más simple (solo se comparte la pública) |
>
> A menudo se **combinan** ambas para aprovechar sus fortalezas.

**5.** ¿Cómo se cifran datos en reposo en Linux y en Windows?

> [!success]- Respuesta
> - **Linux — LUKS** (Linux Unified Key Setup) con `cryptsetup`: se instala `cryptsetup`, se cifra la partición con `luksFormat`, se abre con `cryptsetup open` (crea un dispositivo en `/dev/mapper/`), se formatea y monta. **Ojo:** hacer backup antes, es irreversible.
> - **Windows — BitLocker** (ediciones Pro/Enterprise): se activa, se elige la unidad y la opción de desbloqueo (contraseña/PIN/USB) y se **guarda la clave de recuperación** en un lugar seguro fuera del equipo.

**6.** Explicá paso a paso cómo protege HTTPS los datos en tránsito.

> [!success]- Respuesta
> 1. El navegador solicita una **conexión segura** al servidor.
> 2. El servidor envía su **certificado digital** (con su clave pública).
> 3. El navegador **valida el certificado** (que lo emita una CA de confianza y que el dominio coincida).
> 4. El navegador genera una **clave de sesión** aleatoria.
> 5. Los datos se **cifran con esa clave de sesión** durante toda la comunicación.
> 6. Aunque intercepten el tráfico, no pueden leerlo sin la clave de sesión.

**7.** ¿Qué opciones existen para encriptar la transferencia de archivos?

> [!success]- Respuesta
> **SFTP** (sobre SSH), **FTPS** (FTP sobre TLS/SSL), **SCP** y **Rsync** (sobre SSH), cifrado previo con **GnuPG/PGP**, **VPN** (cifra toda la comunicación), **HTTPS** para descarga/carga web, y **S/MIME o PGP** para adjuntos de correo. La elección depende del entorno y los recursos.

**8.** ¿Qué comando de `openssl` cifra y descifra un archivo con AES en Linux?

> [!success]- Respuesta
> - **Cifrar:** `openssl enc -aes-256-cbc -in archivo.txt -out archivo_cifrado.enc`
> - **Descifrar:** `openssl enc -d -aes-256-cbc -in archivo_cifrado.enc -out archivo_descifrado.txt`
>
> `-aes-256-cbc` = AES de 256 bits en modo CBC. Pide una contraseña que actúa como clave; se necesita la misma para descifrar.

## ★ Extra sugeridas

**E1.** Diferenciá **cifrado** de **hashing**.

> [!success]- Respuesta
> El **cifrado** es **reversible**: con la clave se recupera el texto original (sirve para confidencialidad). El **hashing** es **de una sola vía**: no se puede "des-hashear", produce una huella de longitud fija y sirve para verificar **integridad** y guardar contraseñas. Un cambio mínimo en la entrada cambia por completo el hash.

**E2.** ¿Qué es un **salt** y por qué se usa al almacenar contraseñas?

> [!success]- Respuesta
> Es un valor **aleatorio único** que se agrega a cada contraseña **antes** de hashearla. Hace que dos usuarios con la misma contraseña tengan hashes distintos y **anula los ataques con tablas precalculadas (rainbow tables)**. Se guarda junto al hash. Se suele combinar con funciones lentas (bcrypt, scrypt, Argon2) para frenar la fuerza bruta.

**E3.** ¿Qué es la **encriptación de extremo a extremo (E2EE)**?

> [!success]- Respuesta
> Es cuando los datos se cifran en el **dispositivo del emisor** y solo se descifran en el **del receptor**: ningún intermediario (ni el servidor/proveedor) puede leerlos. Ejemplos: WhatsApp, Signal. Protege incluso si el servidor es comprometido.

**E4.** ¿Por qué el modo **ECB** es inseguro y qué modos conviene usar?

> [!success]- Respuesta
> **ECB** cifra cada bloque por separado con la misma clave, así que **bloques iguales dan cifrados iguales**: se filtran patrones del dato original (el clásico "pingüino ECB"). Conviene usar modos con vector de inicialización y/o autenticación, como **CBC** o, mejor, **GCM** (que además garantiza integridad/autenticidad).

**E5.** ¿Qué es una **PKI (infraestructura de clave pública)**?

> [!success]- Respuesta
> Es el conjunto de **CA, certificados, claves y políticas** que permite gestionar la confianza en la criptografía asimétrica a gran escala. La **CA** emite y firma certificados que ligan una **identidad** a una **clave pública**; el sistema valida esa cadena de confianza, y usa **CRL/OCSP** para revocar. Es la base de HTTPS/TLS.

**E6.** ¿Qué es **Perfect Forward Secrecy (PFS)**?

> [!success]- Respuesta
> Es la propiedad por la cual cada sesión usa una **clave de sesión efímera** independiente. Si en el futuro se compromete la clave privada del servidor, **no se pueden descifrar** las sesiones pasadas ya capturadas. Se logra con intercambios de clave tipo **Diffie-Hellman efímero (DHE/ECDHE)**.

---

# Módulo 6 — Hardening de sistemas operativos

**1.** ¿Qué es el *hardening* de sistemas operativos?

> [!success]- Respuesta
> Es el proceso de **asegurar y fortalecer** un sistema operativo para **reducir su superficie de ataque** y minimizar las vulnerabilidades explotables. Implica aplicar medidas de seguridad, una configuración adecuada y un **seguimiento constante**, para proteger contra amenazas **internas y externas**. No es una tarea de una sola vez: es un proceso continuo que debe revisarse y actualizarse.

**2.** Enumerá los objetivos del *hardening* de sistemas operativos.

> [!success]- Respuesta
> 1. **Reducción de la superficie de ataque** — deshabilitar/eliminar servicios, aplicaciones y características innecesarias.
> 2. **Mejora de la seguridad por defecto** — cambiar las configuraciones predeterminadas (que suelen no ser las más seguras).
> 3. **Actualizaciones y parches** — aplicar a tiempo los parches del proveedor para cerrar brechas conocidas.
> 4. **Control de acceso** — políticas de permisos y autenticación para que solo usuarios/procesos autorizados accedan.
> 5. **Auditoría y monitorización** — registros de auditoría y seguimiento constante para detectar y responder a intrusiones.
> 6. **Seguridad de la red** — segmentación, cortafuegos y detección de intrusiones.
> 7. **Educación y concienciación del usuario** — el usuario es a menudo el **eslabón más débil**.

**3.** ¿Qué es la superficie de ataque y cómo se reduce? Dá un ejemplo.

> [!success]- Respuesta
> Es el conjunto de puntos por los que un atacante puede intentar entrar o extraer datos. **Cuanto menos software y servicios corriendo, menos oportunidades de explotar vulnerabilidades**. Se reduce deshabilitando o eliminando servicios, aplicaciones y características innecesarias.
> **Ejemplo:** un SO puede traer servicios de red como **FTP o Telnet** que no se usan; deshabilitarlos o eliminarlos reduce la superficie de ataque.

**4.** ¿Por qué hay que cambiar la configuración por defecto de un SO?

> [!success]- Respuesta
> Porque los SO se instalan con **configuraciones predeterminadas que priorizan la compatibilidad y la comodidad, no la seguridad**. El *hardening* implica cambiarlas: **contraseñas predeterminadas**, habilitar el **cortafuegos** y aplicar **políticas de seguridad más estrictas**.
> **Ejemplo:** cambiar la contraseña predeterminada del administrador por una segura y compleja.

**5.** Listá las prácticas de *hardening* para sistemas **Windows**.

> [!success]- Respuesta
> 1. **Actualizaciones y parches** — instalar regularmente los de Microsoft.
> 2. **Cuentas de usuario** — usar cuentas **no administrativas** para tareas cotidianas; cambiar contraseñas predeterminadas y exigir contraseñas fuertes.
> 3. **Control de acceso** — **privilegio mínimo**, **ACL** en archivos/carpetas y **grupos de seguridad**.
> 4. **Cortafuegos** — **Windows Firewall** filtrando tráfico entrante y saliente; solo las conexiones necesarias.
> 5. **Auditoría y registro** — registrar inicios de sesión fallidos, cambios en archivos críticos y de configuración; **proteger los registros** contra modificación.
> 6. **Actualización y seguridad de software** — también aplicaciones de terceros; solución antimalware con detección y prevención.
> 7. **Restricciones de ejecución** — **Group Policy** con **AppLocker** o **Software Restriction Policies**.
> 8. **Desactivar servicios innecesarios.**
> 9. **Copias de seguridad** regulares de datos y sistemas críticos.
> 10. **Concientización del usuario** (*phishing*, adjuntos/enlaces sospechosos).
> 11. **Cifrado de datos**, sobre todo en móviles y nube.
> 12. **Monitoreo continuo** con herramientas de detección de intrusiones.

**6.** Listá las prácticas de *hardening* para sistemas **Linux**.

> [!success]- Respuesta
> 1. **Actualizaciones y parches** del proveedor de la distribución.
> 2. **Cuentas de usuario** — evitar el uso de **root**, usar cuentas no privilegiadas; contraseñas fuertes.
> 3. **Control de acceso** — privilegio mínimo y permisos por usuario/grupo (`chown`, `chmod`).
> 4. **Cortafuegos** — **iptables** o **nftables**, entrante y saliente.
> 5. **Auditoría y registro** — **auditd**; proteger los registros contra modificaciones no autorizadas.
> 6. **Actualización y seguridad de software** — usar el **administrador de paquetes** (no solo el SO) y **firmas digitales** para verificar autenticidad de los paquetes.
> 7. **Restricciones de ejecución** — **SELinux** o **AppArmor**.
> 8. **Desactivar servicios innecesarios.**
> 9. **Copias de seguridad** regulares.
> 10. **Concientización del usuario.**
> 11. **Cifrado de datos** — **LUKS** para cifrar discos.
> 12. **Monitoreo continuo** — **fail2ban** o administración de registros centralizados.

**7.** Compará el *hardening* de Windows y Linux herramienta por herramienta.

> [!success]- Respuesta
> | Práctica | Windows | Linux |
> |---|---|---|
> | Cortafuegos | Windows Firewall | iptables / nftables |
> | Restricción de ejecución | AppLocker / Software Restriction Policies (GPO) | SELinux / AppArmor |
> | Auditoría | Directivas de auditoría (`secpol.msc`), Registro de eventos | `auditd` |
> | Permisos | ACL (pestaña Seguridad), grupos de seguridad | `chmod`, `chown`, `setfacl`, `getfacl` |
> | Cuenta privilegiada a evitar | Administrador | root |
> | Cifrado de disco | BitLocker (discos), EFS (archivos/carpetas) | LUKS |
> | Contraseñas | `secpol.msc` → Directivas de cuenta | `/etc/security/pwquality.conf`, `pam_pwquality`, `passwd` |
> | Bloqueo de cuentas | Directivas de bloqueo de cuentas | fail2ban |
> | Detección de anomalías | Registro de eventos, SIEM/logs centralizados | rkhunter, tripwire |
> | Gestión centralizada | Políticas de grupo (`gpedit.msc`) | Config. por distro (Ubuntu, CentOS, Debian) |

**8.** ¿Cuáles son los pasos generales para endurecer cualquier sistema operativo?

> [!success]- Respuesta
> Son 12 pasos aplicables a Windows, Linux o cualquier otro sistema:
> 1. Actualizaciones y parches · 2. Configuración de cuentas de usuario (**+ MFA**) · 3. Control de acceso (privilegio mínimo, grupos/roles, ACL) · 4. Cortafuegos y reglas de *firewall* · 5. Auditoría y registro · 6. Actualización y seguridad de *software* (**firmas digitales**) · 7. Restricciones de ejecución · 8. Desactivar servicios innecesarios · 9. Copias de seguridad · 10. Concientización del usuario · 11. Cifrado de datos · 12. Monitoreo continuo.
>
> La seguridad es un **proceso continuo**: estas medidas deben revisarse y actualizarse para adaptarse a nuevas amenazas.

**9.** ¿Cuáles son las mejores prácticas para proteger contraseñas en un SO?

> [!success]- Respuesta
> 1. **Contraseñas fuertes** — mayúsculas, minúsculas, números y caracteres especiales; evitar obvias ("123456", "password", el nombre del usuario) y datos personales.
> 2. **Políticas de contraseñas** — cambios periódicos, longitud mínima, una distinta por servicio, prohibir reutilizar antiguas.
> 3. **MFA** — capa adicional que exige más de un tipo de prueba de identidad.
> 4. **Almacenamiento seguro** — *hash* con algoritmos seguros (**bcrypt**, **Argon2**), nunca en texto claro ni en registros accesibles.
> 5. **Salting** — agregar datos aleatorios antes del *hash*: dificulta fuerza bruta y diccionario.
> 6. **Bloqueo de cuentas** — tras varios intentos fallidos, con tiempo de bloqueo y notificación al usuario.
> 7. **Auditoría de contraseñas** — revisiones periódicas buscando débiles o vulnerables.
> 8. **Educación del usuario** — buenas prácticas y **administradores de contraseñas**.
> 9. **Protección física** de servidores y dispositivos donde se almacenan.
> 10. **Cambios de contraseña seguros** — proceso seguro de restablecimiento ante olvido/pérdida.
> 11. **Claves de recuperación** (cifrado de disco) guardadas **lejos del dispositivo protegido**.
> 12. **Supervisión y detección de anomalías** en las cuentas de usuario.

**10.** ¿Cómo se implementan las políticas de contraseñas en **Windows**?

> [!success]- Respuesta
> - **Contraseñas fuertes:** `Win + R` → **`secpol.msc`** → *Directivas de cuenta* > *Directivas de contraseña*.
> - **Bloqueo de cuentas:** *Directivas de cuenta* > *Directivas de bloqueo de cuentas*.
> - **Auditoría:** *Directiva de seguridad local* > *Directivas de auditoría* → auditar cuentas de usuario y acceso a objetos.
> - **MFA:** soluciones de terceros o **Windows Hello**.
> - **Almacenamiento y salting:** Windows usa algoritmos de *hash* seguros y **salting de forma predeterminada**; mantener el SO actualizado.
> - **Políticas de grupo:** aplicar todo de forma **centralizada** en una red Windows.
> - La implementación varía según la versión (Windows 10, Server, 11).

**11.** ¿Cómo se implementan las políticas de contraseñas en **Linux**?

> [!success]- Respuesta
> - **Contraseñas fuertes:** editar **`/etc/security/pwquality.conf`** o usar **`pam_pwquality`**.
> - **MFA:** **Google Authenticator** o **FreeOTP**.
> - **Almacenamiento:** las contraseñas van en el archivo de sombras **`/etc/shadow`** con funciones de *hash* seguras; **salteadas por defecto**.
> - **Bloqueo de cuentas:** **fail2ban** contra intentos repetidos.
> - **Auditoría:** **`auditd`**.
> - **Detección de anomalías:** **rkhunter** o **tripwire**.
> - Comandos y rutas varían según la distribución (Ubuntu, CentOS, Debian).

**12.** Diferenciá **autenticación** de **autorización**.

> [!success]- Respuesta
> - **Autenticación:** proceso de **verificar la identidad** de un usuario o sistema. El usuario aporta credenciales (usuario + contraseña) para acceder. → *"¿Quién sos?"*
> - **Autorización:** una vez autenticado, determina **qué recursos y acciones puede realizar**. Se basa en **roles y permisos**. → *"¿Qué podés hacer?"*

**13.** ¿Qué es el **principio de privilegio mínimo**?

> [!success]- Respuesta
> Que los usuarios y procesos deben tener **solo los permisos mínimos necesarios** para realizar sus tareas, y nada más. Reduce la exposición a riesgos: si una cuenta o proceso se compromete, el daño posible queda acotado.

**14.** Compará los modelos de control de acceso **DAC**, **MAC** y **RBAC**.

> [!success]- Respuesta
> | Modelo | Quién decide el acceso | Característica | Dónde se usa |
> |---|---|---|---|
> | **DAC** (discrecional) | El **propietario** del recurso | Flexible: el dueño decide quién accede y qué puede hacer | Común en **Unix/Linux** (permisos de archivo) |
> | **MAC** (obligatorio / por etiquetas) | El **sistema**, por política impuesta | **Etiquetas de seguridad** en objetos y sujetos; la política determina el acceso | Sistemas de **alta seguridad** (SELinux, AppArmor; Windows lo admite por etiquetas) |
> | **RBAC** (basado en roles) | El **rol** asignado al usuario | Asigna roles a usuarios y permisos a los roles | **Entornos corporativos** |

**15.** ¿Qué son las **ACL** y los **grupos/roles de seguridad**?

> [!success]- Respuesta
> - **ACL (listas de control de acceso):** especifican **quién tiene permiso para leer, escribir o ejecutar** un recurso (archivos, carpetas, objetos del sistema).
> - **Roles y grupos de seguridad:** organizan a los usuarios y asignan permisos **al grupo/rol** en lugar de uno por uno. **Facilitan la administración y reducen la complejidad**.

**16.** ¿Cómo se implementa el control de acceso y privilegios en **Windows**?

> [!success]- Respuesta
> - **Usuarios y grupos:** Panel de control o *Consola de administración de usuarios y grupos locales*.
> - **Políticas de grupo:** `Win + R` → **`gpedit.msc`** para restricciones, permisos y configuraciones centralizadas en la red.
> - **UAC (Control de cuentas de usuario):** exige confirmación antes de cambios importantes; reduce la exposición a riesgos.
> - **ACL:** clic derecho en archivo/carpeta → *Propiedades* → pestaña **Seguridad**.
> - **RBAC:** roles y permisos en las aplicaciones/sistemas que lo admitan.
> - **Contraseñas y bloqueo de cuentas:** `secpol.msc` o políticas de grupo.
> - **MAC:** mediante el sistema de **etiquetas de seguridad**.
> - **Auditoría:** directivas de auditoría en `secpol.msc` o por GPO.
> - **Cifrado:** **BitLocker** (discos) y **EFS** (archivos y carpetas sensibles).
> - **Supervisión:** herramientas de monitoreo y detección de intrusiones.

**17.** ¿Cómo se implementa el control de acceso y privilegios en **Linux**?

> [!success]- Respuesta
> - **Usuarios y grupos:** `useradd`, `usermod`, `groupadd`, `userdel`.
> - **RBAC:** **SELinux** (*Security-Enhanced Linux*) o **AppArmor** para restringir acciones de programas y usuarios según su rol.
> - **ACL y permisos:** `chmod`, `chown`, `setfacl`, `getfacl`.
> - **Contraseñas:** `passwd` y `pam_pwquality` (longitud, complejidad, cambios periódicos).
> - **Protección física** de servidores y dispositivos.
> - **Auditoría:** `auditd` (cambios en objetos del sistema, eventos de inicio de sesión).
> - **DAC:** el propietario del archivo controla quién accede.
> - **MAC:** SELinux o AppArmor en sistemas de alta seguridad.
> - **Detección de anomalías:** `tripwire`, `rkhunter`.
> - **Cifrado:** **LUKS** para discos o particiones.
> - **Grupos de seguridad** y **protección de cuentas de administrador** (acceso limitado + contraseñas seguras).

**18.** ¿Cuáles son las buenas prácticas de **actualización y parcheo** de sistemas operativos?

> [!success]- Respuesta
> 1. **Actualizaciones automáticas** — en Windows: *Configuración* > *Actualización y seguridad*; en Linux varía según distro.
> 2. **Programación de actualizaciones** — si no querés automáticas, planificarlas en momentos que no afecten la productividad (clave en servidores y sistemas críticos).
> 3. **Software de terceros** — navegadores, reproductores, ofimática: **muchos ataques apuntan ahí**. Usar soluciones de gestión de parches si administrás varios sistemas.
> 4. **Monitorización de vulnerabilidades** — seguir bases de datos como **CVE** (*Common Vulnerabilities and Exposures*).
> 5. **Evaluación de impacto** — probar los parches en un **entorno de prueba** antes de producción (pueden causar incompatibilidades).
> 6. **Copias de seguridad** completas **antes** de aplicar parches importantes.
> 7. **Políticas de retención** — cuánto tiempo conservar parches anteriores.
> 8. **Plan de respuesta a incidentes** — qué hacer si una actualización falla o causa problemas.
> 9. **Seguimiento de licencias** — algunos parches cambian los términos de licencia.
> 10. **Registros y auditoría** — llevar registro de qué se aplicó y por qué.
> 11. **Concientización del usuario** sobre la importancia de actualizar.

## ★ Extra sugeridas

**E1.** ¿Qué es un **baseline de seguridad** y qué son los **CIS Benchmarks**?

> [!success]- Respuesta
> Un **baseline** es la **configuración segura mínima estandarizada** que todo sistema de la organización debe cumplir. Los **CIS Benchmarks** (y las *Security Baselines* de Microsoft, o **STIG** del DoD) son guías públicas con controles concretos y verificables por SO. Sirven para **auditar** el *hardening* de forma objetiva y repetible, en vez de depender del criterio de cada administrador.

**E2.** ¿Qué es la **defensa en profundidad** y cómo se relaciona con el *hardening*?

> [!success]- Respuesta
> Es aplicar **múltiples capas de seguridad** independientes (red, host, aplicación, datos, usuario), de modo que si una falla, las otras siguen protegiendo. El *hardening* del SO es la **capa de host** dentro de ese esquema: no reemplaza al cortafuegos perimetral ni a la concientización del usuario, los complementa.

**E3.** Compará **UAC** de Windows con **sudo** de Linux.

> [!success]- Respuesta
> Ambos implementan **privilegio mínimo**: el usuario trabaja sin privilegios elevados y los solicita **solo cuando hace falta**.
> - **UAC:** intercepta acciones que requieren privilegios de administrador y pide **confirmación explícita** (o credenciales) antes de ejecutarlas.
> - **sudo:** ejecuta un comando puntual como root, previa contraseña, según lo definido en `/etc/sudoers`; además **deja registro** de quién ejecutó qué.

**E4.** ¿Qué información guarda `/etc/shadow` y por qué existe separado de `/etc/passwd`?

> [!success]- Respuesta
> `/etc/passwd` es **legible por todos** (lo necesitan muchos programas para resolver nombres de usuario), así que los **hashes de contraseña** se movieron a **`/etc/shadow`**, que solo puede leer **root**. `/etc/shadow` guarda el hash (con su **salt** y el identificador de algoritmo), la fecha del último cambio y las políticas de **caducidad y aviso** de la contraseña.

**E5.** Diferenciá **BitLocker** de **EFS**.

> [!success]- Respuesta
> - **BitLocker:** cifra **el volumen/disco completo** (FDE). Protege sobre todo contra **robo del dispositivo** o arranque desde otro sistema. Con el equipo encendido y sesión iniciada, los datos ya están descifrados.
> - **EFS** (*Encrypting File System*): cifra **archivos y carpetas individuales** por usuario. Protege un archivo **frente a otros usuarios del mismo equipo**.
>
> Son complementarios; ninguno reemplaza al otro.

**E6.** ¿Por qué **fail2ban** no reemplaza a un cortafuegos?

> [!success]- Respuesta
> El **cortafuegos** decide qué puertos/servicios son alcanzables (control **preventivo** y estático). **fail2ban** es **reactivo**: lee los registros, detecta patrones de abuso (intentos de login fallidos repetidos) y **agrega reglas temporales de bloqueo** por IP. Es decir, fail2ban **usa** el cortafuegos para mitigar fuerza bruta en servicios que **sí deben estar expuestos**.

**E7.** ¿Qué es un **CVE** y para qué sirve en la gestión de parches?

> [!success]- Respuesta
> **CVE** (*Common Vulnerabilities and Exposures*) es un **identificador único y público** para cada vulnerabilidad conocida (formato `CVE-AÑO-NÚMERO`). Permite que proveedores, escáneres y administradores hablen de la **misma** falla sin ambigüedad, y **priorizar el parcheo** según qué CVE afectan realmente al sistema y qué gravedad tienen.

**E8.** ¿Por qué el *hardening* nunca "termina"?

> [!success]- Respuesta
> Porque el entorno cambia: aparecen **vulnerabilidades nuevas** (0-day y CVE recién publicados), se instalan aplicaciones y servicios que **vuelven a ampliar la superficie de ataque**, y las configuraciones se degradan con el tiempo (*configuration drift*). Por eso las medidas deben **revisarse, auditarse y actualizarse periódicamente**.

---

# Primer Parcial — Casos resueltos

> [!tip] Sobre esta sección
> Transcripción del **Primer Parcial** rendido, con las respuestas entregadas. Nota por caso entre paréntesis. La **3c** está corregida según el material del Módulo 2.

**Caso 1 (2/2).** Un administrador de sistemas debe seleccionar un sistema operativo para un servidor corporativo que prioriza seguridad y estabilidad.

**1a.** Analice las ventajas de utilizar UNIX como sistema operativo en un entorno de alta seguridad.

> [!success]- Respuesta
> UNIX ofrece mayor **estabilidad y robustez**. Su diseño **modular y minimalista** brinda una mayor transparencia. Su naturaleza orientada al **multiusuario** facilita la separación de permisos y accesos, brindando un mejor **aislamiento** entre ellos y evitando que uno afecte el entorno del otro.

**1b.** Compare las diferencias clave entre sistemas operativos centralizados y distribuidos.

> [!success]- Respuesta
> - **Centralizado:** un único equipo físico o servidor contiene todos los elementos de hardware necesarios. Facilita la administración, pero tiene **menor tolerancia a fallos**: si el equipo falla no se puede continuar operando hasta resolver el inconveniente.
> - **Distribuido:** compuesto por **varios nodos** ubicados en diferentes lugares. Dificulta la administración (hay que gestionar más equipos), pero brinda **mayor tolerancia a fallos**, permitiendo continuar la operativa del negocio ante la falla de alguno.

**1c.** Explique qué características debería considerar el administrador respecto a multitarea y multiusuario.

> [!success]- Respuesta
> - **Multitarea:** debe ser **preventiva y eficiente**, es decir, poder procesar varias peticiones para mejorar la productividad, pero a su vez dar **prioridad a los procesos críticos** para evitar fallos y problemas de seguridad.
> - **Multiusuario:** se requieren **controles de acceso robustos**, **aislamiento de sesiones** y **auditoría de actividades**, evitando que un usuario afecte el entorno del otro.

**Caso 2 (2/2).** Se requiere implementar un sistema de almacenamiento de archivos eficiente y confiable en un entorno Linux.

**2a.** Explique la función principal de un sistema de archivos.

> [!success]- Respuesta
> Un sistema de archivos **organiza y gestiona el almacenamiento en disco**, facilitando el acceso, recuperación y seguridad de datos mediante estructuras como los **directorios, bloques e inodos**.

**2b.** Analice el papel de un inodo en la organización del almacenamiento.

> [!success]- Respuesta
> El inodo funciona como un **índice**: almacena **metadatos** como el propietario, tamaño, fecha de creación y modificación, etc. Permite acceder al contenido **sin recorrer toda la estructura de directorios**, ya que todos los inodos de un mismo sistema de archivos tienen un **número de inodo único** para identificar archivos y directorios.

**2c.** Proponga un sistema de archivos adecuado (ext4, ZFS, etc.) y justifique su elección.

> [!success]- Respuesta
> Para un servidor Linux la mejor opción es **ext4** por su confiabilidad, estabilidad y **journaling**, que minimiza la corrupción ante fallos, brindando un equilibrio entre rendimiento y confiabilidad.

**Caso 3 (1/2).** Un equipo de TI está considerando introducir virtualización en su infraestructura para optimizar recursos.

**3a.** Defina qué es la virtualización de hardware y su ventaja principal.

> [!success]- Respuesta
> La virtualización de hardware consiste en **emular mediante software** memoria RAM, CPU, almacenamiento en disco, etc., permitiendo contar con **varios sistemas operativos en una misma máquina host** o anfitrión. Su principal ventaja radica en la **optimización de recursos**, el abaratamiento de costos y el **aislamiento** de equipos de la red principal, ya que también se pueden emular redes.

**3b.** Describa el papel de un hipervisor en la virtualización.

> [!success]- Respuesta
> El hipervisor actúa como **intermediario entre el hardware y las máquinas virtuales**: asigna y quita recursos, gestiona el **aislamiento** y se encarga de la administración de las distintas máquinas *guest* o invitadas.

**3c.** Analice un desafío específico relacionado con la virtualización de CPU.

> [!success]- Respuesta
> El desafío principal es la **sobrecarga de virtualización (overhead)**. Para que varias VM compartan el mismo procesador físico, el hipervisor debe hacer:
> - **Traducción de direcciones:** traduce las direcciones de memoria y de E/S de cada VM al espacio de direcciones físicas del procesador. Evita conflictos y garantiza el aislamiento, pero cuesta ciclos.
> - **Planificación de CPU:** reparte el tiempo de procesador entre las VM asignando ciclos de reloj de forma equitativa.
> - **Interrupciones virtuales:** las interrupciones que generan las VM no pueden ir directo al hardware; se **redirigen al hipervisor** para que las procese.
>
> Esa sobrecarga es **mínima**, pero debe considerarse en **entornos de alto rendimiento**. Un desafío complementario es la **gestión de recursos**: asignar la CPU de forma equitativa y administrar bien la asignación para evitar que una VM monopolice el procesador o aparezcan problemas de rendimiento.

**Caso 4 (2/2).** Una empresa necesita garantizar la confidencialidad de datos sensibles almacenados y transmitidos.

**4a.** Defina la diferencia entre encriptación de datos en reposo y en tránsito.

> [!success]- Respuesta
> - **En reposo:** protege los datos almacenados de manera "estática", como los que se encuentran en discos, archivos o dispositivos extraíbles. Evita acceder al contenido sin contar con la clave de descifrado. Ejemplos: **LUKS** en Linux, **BitLocker** en Windows.
> - **En tránsito:** protege los datos "en movimiento" cifrando los **canales de comunicación**. Ejemplos: **HTTPS, SSH, TLS**.

**4b.** Explique el propósito principal del journaling en sistemas de archivos.

> [!success]- Respuesta
> El journaling consiste en **registrar las operaciones antes de aplicarlas al disco**, permitiendo recuperar el sistema rápidamente tras un fallo o apagado repentino y reduciendo el riesgo de **corrupción de datos**.

**4c.** Analice el impacto de la compresión con pérdida en la integridad de archivos multimedia.

> [!success]- Respuesta
> La compresión con pérdida **elimina datos** del archivo original para reducir su tamaño. Es común en multimedia (**MP3, JPG**), que sigue siendo utilizable pero con **menor calidad** que el original. Es un problema cuando se requiere **confiabilidad de la información**, como en **peritajes digitales** o la reconstrucción de archivos o estructuras críticas.

**Caso 5 (2/2).** Durante la planificación de la seguridad en sistemas operativos, se considera implementar prácticas de auditoría y monitoreo.

**5a.** Explique qué es una auditoría de seguridad en sistemas operativos.

> [!success]- Respuesta
> Es el proceso de **registrar, analizar y evaluar** las actividades del sistema para **detectar incidentes**, garantizar el **cumplimiento de políticas** y mejorar la protección ante amenazas.

**5b.** Analice el rol de un SIEM (Security Information and Event Management) en la detección de amenazas.

> [!success]- Respuesta
> Un SIEM **centraliza logs** de múltiples fuentes, **correlaciona eventos** y aplica **reglas** para detectar amenazas **en tiempo real**.

**5c.** Describa el concepto de hardening de sistemas operativos y su importancia en entornos críticos.

> [!success]- Respuesta
> El hardening es el proceso de **reforzar un sistema operativo reduciendo la superficie de ataque**: se deshabilitan puertos o servicios innecesarios, se aplican parches, se configuran permisos y firewalls y se aplican políticas estrictas. En entornos críticos es vital porque **minimiza vulnerabilidades, previene intrusiones y asegura la continuidad operativa**.
