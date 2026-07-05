
> [!tip] Cómo usar este archivo
> Leé cada consigna, respondela mentalmente o en voz alta, y recién después desplegá la caja **▸ Respuesta** para verificar. Las cajas están colapsadas por defecto.
>
> Cada caja muestra la **respuesta entregada** en el examen y, en los puntos que el profe marcó mal, la **resolución corregida** (⚠️). Se excluyen los ejercicios de cálculo puro (Gantt, banquero) salvo donde hubo corrección numérica. La teoría de finales (2022–2024) va al final agrupada por tema, sin duplicar preguntas repetidas.

> [!important] 🎯 Foco — Módulos 11 (Seguridad) y 12 (Protección y seguridad de hardware)
> Las únicas preguntas del archivo que caen en estos módulos están en **Teoría de finales** y van marcadas con 🎯 en su enunciado:
> - **T11** — Seguridad de los Sistemas Informáticos → *Módulo 11* (tríada CIA, 4 niveles físico/red/SO/aplicaciones, ataques externos e internos).
> - **T12** — Dominios de protección → *Módulo 12* (pares objeto–derechos, matriz de acceso).
> - **T13** — Protección en los Sistemas Informáticos → *Módulo 12* (mecanismos del SO, privilegio mínimo + compartimentación; el contraste protección/seguridad también está en el Módulo 11).
> - **T15** — Ataques a los Sistemas Informáticos → *Módulo 11* (virus/gusanos, DoS, robo de identidad, robo de servicios).
>
> Los Parciales 1° y 2° **no** incluyen temas de estos módulos. Tangenciales (no centrales): T14 plataforma/middleware y T33 RAID/backup.

---

## Primer Parcial Virtual — 15/04/2026

**1.** Explique qué es la sección crítica.

> [!success]- Respuesta
> La **sección crítica** es la porción de código que se ejecuta para acceder al dato compartido. Una vez que un proceso ejecuta su sección crítica, ningún otro puede ejecutarla hasta que este termine.

**2.** ¿Qué son los sistemas de tiempo real y qué objetivos tienen?

> [!success]- Respuesta
> Los **sistemas de tiempo real** son sistemas utilizados donde el tiempo de respuesta es crítico. Ejemplo: plantas nucleares, sistemas médicos, etc. Su objetivo principal es **atender una serie de interrupciones lo antes posible**, ya que de no ser así la consecuencia puede llegar a ser fatal.

**3.** Mencione los estados que puede tener un proceso y cuál es su ciclo de vida.

> [!success]- Respuesta
> - **Nuevo:** el proceso se crea y espera a pasar a la cola de listo.
> - **Listo:** el proceso está listo para ejecutarse por el sistema operativo.
> - **En ejecución:** el proceso está cargado en memoria principal y está siendo ejecutado por la CPU.
> - **Bloqueado:** el proceso se encuentra en un estado de E/S liberando el uso de la CPU.
> - **Terminado:** el proceso termina su ejecución y libera los recursos que fueron utilizados.

**4.** Explique qué formas de políticas conoce que se pueden usar para evitar un abrazo mortal.

> [!success]- Respuesta
> - **Evitar exclusión mutua:** permitir el uso de recursos compartidos siempre que sea posible.
> - **Permitir desalojo:** permitir que el SO pueda quitar los recursos asignados a un proceso.
> - **Sin espera y retención:** obligar a los procesos a solicitar los recursos necesarios al comienzo de su ejecución.
> - **Evitar espera circular:** generar un orden en la asignación de recursos (la más usada).
>
> **Aclaración:** con que una sola de estas se cumpla, ya se evita por completo el abrazo mortal.

**5.** Aplicando el algoritmo **SJF**, ¿a qué proceso corresponde asignarle el uso del procesador? **Datos:** T0 PA E:30 / E/S:40 / E:30 mseg — T20 PB E:20 / E/S:10 / E:20 mseg.

> [!success]- Respuesta
> **B — Proceso B.** SJF (Shortest Job First) elige la ráfaga de CPU más corta; PB (20 mseg) es menor que PA (30 mseg).

**6.** Aplicando el algoritmo **RR**, ¿el ejemplo está bien desarrollado? (Verdadero / Falso). A llega en T0, B en T30 y C en T50 mseg. A: E30/disco10/E20; B: E30/disco20/E30; C: E10/disco20/E20.

> [!success]- Respuesta
> **Falso.** El diagrama de Gantt presentado no respeta correctamente el reparto por quantum del Round Robin.

**7.** Aplicando el algoritmo **SRTF**, ¿a qué proceso corresponde asignarle el procesador? t0 A: E40/E/S10/E20; t20 B: E40/E/S10/E30; t60 C: E20/E/S20/E30.

> [!success]- Respuesta
> **C — Proceso C.** SRTF (Shortest Remaining Time First) elige el de menor tiempo restante de CPU; al llegar C con la ráfaga más corta, desaloja.

**8.** Aplicando el algoritmo **Óptimo** de reemplazo de páginas, ¿qué página debe salir de memoria principal ante el fallo? Cadena: 7 0 1 2 0 3 0 4 2 3 0 3 2 1 2 0 1 7 0 1 (3 frames).

> [!success]- Respuesta
> Tu respuesta quedó **sin completar**.
> ⚠️ **Resolución:** el algoritmo Óptimo reemplaza la página que **tardará más en volver a usarse** (o que no se usará). En el paso del fallo con frames {7, 0, 1} y entrando el 2: el 7 no vuelve a aparecer hasta el final, el 0 reaparece pronto y el 1 también → sale el **7**. En el siguiente fallo (entra 3, frames {2, 0, 1}): tras la posición actual, 0 reaparece antes, 1 reaparece más tarde → sale el **1**. En el fallo del 4 (frames {2, 0, 3}): el 0 reaparece, el 3 reaparece, el 2 reaparece → se reemplaza la de uso más lejano según la cadena. *(Regla general: mirar hacia adelante en la cadena y sacar la de reaparición más lejana.)*

**9.** Semáforos para cumplir A (B AND (C OR D)). ¿Qué semáforos hay que agregar? Estructura — A: wait a / signal cd; B: wait b / signal a; C: wait cd / signal x; D: wait cd / signal x. Opciones: A) C signal(a); B) A wait(x); C) A signal(b); D) D signal(a); E) B signal(cd).

> [!success]- Respuesta
> **B y C.** En el proceso A hay que agregar **wait(x)** (A espera a que C o D terminen) y **signal(b)** (A habilita a B). Así se cumple la dependencia: A debe esperar a (B AND (C OR D)).

**10.** ¿Cómo pueden ser los algoritmos de planificación de procesos con colas multinivel? Explique.

> [!success]- Respuesta
> Pueden ser de 2 tipos:
> - **Colas multinivel (sin retroalimentación):** dividir los procesos en varias colas. Estos procesos **no se alternan** entre ellas, ya que cada cola se ejecuta con su algoritmo correspondiente. Puede ser simple, pero también rígido.
> - **Colas multinivel con retroalimentación:** dividir los procesos en varias colas también, pero los procesos **van alternando** entre ellas. Si un proceso alterna mucho, se le reduce la prioridad dándosela al que no está alternando tanto, evitando así la inanición.

---

## Segundo Parcial Virtual

> [!success]- Respuesta
> Un **sistema distribuido** es un conjunto de equipos conectados por una red que trabajan en conjunto para alcanzar un objetivo en común. Un **sistema operativo distribuido** es el software que se ocupa de representar mediante una interfaz sencilla a estos equipos para facilitar su uso. *(La última palabra quedaba cortada en la captura.)*

**2.** Si un vector o mapa de bits ocupa 512 bloques de 2 KB cada uno, determine: a) cuántos bloques tiene el disco y b) qué tamaño tiene el disco en GB. (Mostrar cálculos).

> [!success]- Respuesta
> **Respuesta entregada:**
> a) 512 × 2 = 1024 KB × 1024 = 1.048.576 × 8 = 8.388.608 bloques.
> b) 8.388.608 / 1024 = 8192 / 1024 = ... = 0,0078125 GB. → **b MAL.**
>
> ⚠️ **CORRECCIÓN:**
> **a) BIEN.** El mapa ocupa 512 bloques de 2 KB. Cada bloque son 2 × 1024 = 2048 bytes = 2048 × 8 = **16384 bits**, y como hay un bit por cada bloque del disco: 512 × 16384 = **8.388.608 bloques**.
> **b)** El error fue **dividir en vez de multiplicar**. El tamaño del disco se obtiene multiplicando la cantidad de bloques por lo que mide cada bloque (2 KB), y recién ahí se pasa a GB:
> 8.388.608 bloques × 2 KB = 16.777.216 KB
> 16.777.216 / 1024 = 16.384 MB
> 16.384 / 1024 = **16 GB.**
> **Resultado correcto: el disco tiene 16 GB.**

**3.** Paginación por demanda. Procesos: A requiere 5 MB, B requiere 3 MB. Memoria principal disponible: 4 MB. Página = 4 KB, direcciona palabras de 2 bytes. a) páginas de A y B; b) asignación proporcional; c) palabras por página; d) bits de dirección física.

> [!success]- Respuesta
> **Respuesta entregada:** a) A = 1024 páginas, B = 1280; b) sin cálculo completo; c) 2048 palabras; d) 33 bits. → **a, b y d MAL.**
>
> ⚠️ **CORRECCIÓN:**
> **a)** Páginas = tamaño del proceso / tamaño de página (4 KB). El error fue calcular A con la memoria (4 MB) en vez de con su propio tamaño (5 MB) y **cruzar los resultados**.
> A: 5 MB = 5 × 1024 = 5120 KB / 4 = **1280 páginas.**
> B: 3 MB = 3 × 1024 = 3072 KB / 4 = **768 páginas.**
> **b)** Asignación proporcional. La memoria de 4 MB tiene 4 × 1024 / 4 = **1024 frames**, repartidos proporcional al tamaño de cada proceso sobre el total (1280 + 768 = 2048 páginas):
> A: 1024 × (1280 / 2048) = **640 frames.**
> B: 1024 × (768 / 2048) = **384 frames.** (640 + 384 = 1024, completa la memoria.)
> **c) BIEN.** Palabras por página = 4096 / 2 = **2048 palabras.**
> **d)** Dirección física = bits para el frame + bits para el desplazamiento. El error fue mezclar bytes con direccionamiento y usar 2²².
> Frames en memoria: 1024 = 2¹⁰ → **10 bits** (frame).
> Palabras por página (desvío): 2048 = 2¹¹ → **11 bits** (desplazamiento).
> Dirección física = 10 + 11 = **21 bits.**

**4.** Explique cuál es el objetivo y las finalidades del módulo de entrada y salida del SO.

> [!success]- Respuesta
> El objetivo del módulo de E/S es **gestionar correctamente todos los dispositivos físicos/periféricos** conectados al SO. Posee 2 finalidades:
> - **Generalización:** separar en grupos heterogéneos a los dispositivos de E/S según sus diferencias (un grupo para discos, otro para impresoras, etc.).
> - **Eficiencia:** no distraer a la CPU en operaciones de E/S para mejorar el rendimiento del sistema.

**5.** Dentro de los planificadores de búsqueda de pistas, explique el SSTF (Shortest Seek Time First), ventajas e inconvenientes.

> [!success]- Respuesta
> El **SSTF** consiste en atender las pistas que están más cercanas a la pista actual. Ej.: en la pista 20 con cola (25 8 30 35 7 37 2), iría primero por 25, 30, 35 y 37; al terminar las más cercanas hacia arriba, baja para atender 8, 7 y 2. **Ventaja:** es eficiente y rápido. **Desventaja:** al ser un algoritmo por prioridades, produce **inanición** de las pistas alejadas.

**6.** Aplicando el algoritmo **LRU**, ¿la página 7 a qué página va a reemplazar? Secuencia: 4 3 4 9 4 7 (3 frames + pila).

> [!success]- Respuesta
> **3.** LRU (Least Recently Used) reemplaza la página menos recientemente usada, que en el fondo de la pila es la **3**.

**7.** Explique las características y el funcionamiento de la técnica de paginación sin memoria virtual.

> [!success]- Respuesta
> La **paginación** divide todo el proceso en **páginas de igual tamaño**. El proceso se carga en memoria principal dentro de los **frames** (del mismo tamaño que las páginas). No genera **fragmentación externa**, pero sí puede producir **fragmentación interna** si no se usa todo el frame asignado. Cada **dirección lógica** = número de página + desvío; cada **dirección física** = número de frame + desvío. La **tabla de páginas** se ocupa de traducir estas direcciones.

**8.** En archivos de Acceso Calculado (Hashing) pueden aparecer sinónimos. Marque las opciones para su tratamiento. A) Cambiar el campo clave; B) Establecer zona de OVERFLOW; C) Mover el archivo; D) Ubicar el sinónimo en el primer espacio libre; E) Aplicar nuevamente Hashing; F) Todas.

> [!success]- Respuesta
> **B, D y E.** Zona de overflow, ubicar el sinónimo en el primer espacio libre, y volver a aplicar hashing son los tratamientos válidos de colisiones.

**9.** El modelo OSI establecido por la ISO contempla las siguientes capas: A) física, enlace, red, transporte, sesión, presentación y aplicación; B) física, comunicación, enlace, red, transporte, presentación y aplicación; C) física, enlace, transporte, sesión, presentación y aplicación; D) Ninguna.

> [!success]- Respuesta
> **A.** Las 7 capas OSI: física, de enlace, de red, de transporte, de sesión, de presentación y de aplicación.

---

## Teoría de finales (2022–2024)

> [!info] Preguntas de teoría de los finales recopilados, respondidas según lo que explica Arzubi en clase. Preguntas repetidas listadas una sola vez. Se excluyen ejercicios prácticos y multiple choice del simulacro.

### Abrazo mortal (deadlock)

**T1.** ¿Cuáles son las condiciones que deben cumplirse para que exista un abrazo mortal? Mencione y explique cada una.

> [!success]- Respuesta
> Son **4 condiciones que deben darse simultáneamente**:
> - **Exclusión mutua:** un recurso no puede ser compartido; si un proceso lo tiene, ningún otro puede usarlo al mismo tiempo.
> - **Espera y retención:** un proceso retiene los recursos que ya tiene asignados mientras espera por otros que le faltan.
> - **Sin desalojo (no apropiación):** el SO no le puede quitar por la fuerza un recurso a un proceso; se libera solo cuando el proceso lo suelta voluntariamente.
> - **Espera circular:** existe una cadena de procesos donde cada uno espera un recurso que tiene el siguiente, y el último espera por uno que tiene el primero, cerrando el círculo.
>
> Con que se rompa **una sola** de estas condiciones, ya no puede producirse el abrazo mortal.

**T2.** Analice las condiciones del deadlock. Describa una estrategia de Prevención y una de Detección y Recuperación.

> [!success]- Respuesta
> - **Prevención:** actuar sobre alguna de las 4 condiciones para que nunca se cumpla. La más usada es **evitar la espera circular** ordenando los recursos y obligando a pedirlos en ese orden. Otras: permitir desalojo, o exigir que el proceso pida todos los recursos al inicio.
> - **Detección y recuperación:** se deja que el deadlock pueda ocurrir, el sistema lo **detecta** (por ejemplo con el grafo de asignación de recursos) y luego **recupera**, abortando procesos o quitándoles recursos hasta romper el ciclo.

**T3.** Explique y ejemplifique el significado de Exclusión Mutua y Espera y Retención.

> [!success]- Respuesta
> - **Exclusión mutua:** un recurso solo lo puede usar un proceso a la vez. Ej.: una impresora imprimiendo un trabajo, otro proceso debe esperar.
> - **Espera y retención:** un proceso ya tiene asignados ciertos recursos y los retiene mientras espera por los que le faltan. Ej.: un programa necesita 8 GB de RAM, el sistema le dio 6 GB y los mantiene ocupados esperando que se liberen los 2 GB restantes.

### Procesos

**T4.** Defina el concepto de proceso y mencione la información del bloque de control de proceso (BCP/PCB).

> [!success]- Respuesta
> Un **proceso** es un programa en ejecución. El SO lo administra mediante el **BCP**, que guarda toda la información para gestionarlo: identificador (PID), estado actual, contador de programa, registros de la CPU, información de planificación (prioridad), información de gestión de memoria, recursos asignados y datos de cuenta.

**T5.** Describa las condiciones de las transiciones: En ejecución → Listo, y Bloqueado → Swap.

> [!success]- Respuesta
> - **Ejecución → Listo:** el proceso es desalojado de la CPU sin haber terminado y sin estar bloqueado. Pasa cuando se agota el quantum (Round Robin) o aparece un proceso de mayor prioridad; vuelve a la cola de listos.
> - **Bloqueado → Swap (suspendido):** cuando hace falta liberar memoria principal, un proceso bloqueado se traslada al almacenamiento secundario para dejar espacio. Común en gestión de memoria virtual.

**T6.** ¿Cómo pueden clasificarse los procesos en función de sus relaciones con otros procesos?

> [!success]- Respuesta
> - **Independientes:** se ejecutan sin necesitar comunicación ni recursos de otro proceso.
> - **Cooperativos:** interactúan con otros. Pueden ser **concurrentes** (compiten por los mismos recursos) o **complementarios** (deben ejecutarse en un determinado orden).

**T7.** ¿Un proceso puede ser concurrente y complementario a la vez? Justifique.

> [!success]- Respuesta
> **No.** Concurrente implica que compite/comparte recursos con otro **sin un orden impuesto**, mientras que complementario implica una **dependencia de orden**. Son relaciones distintas y excluyentes para un mismo par de procesos.

**T8.** ¿Los procesos concurrentes sobre los mismos datos se pueden ejecutar simultáneamente? Justifique.

> [!success]- Respuesta
> Los procesos se ejecutan concurrentemente, pero no acceden simultáneamente a los mismos datos. El SO los sincroniza mediante semáforos cuando un proceso ejecuta su sección crítica, el otro espera hasta que termine (exclusión mutua). Avanzan en paralelo salvo en la sección crítica, que es de a uno.

**T9.** Explique la diferencia entre proceso y hilo. ¿Qué recursos se comparten en multihilo?

> [!success]- Respuesta
> Un **proceso** es un programa en ejecución, con su propio espacio de direcciones y su BCP. Una **hilo** es una unidad de ejecución dentro de un proceso; un proceso puede tener varios hilos, pero un hilo no contiene procesos. En **multihilo**, los hilos de un mismo proceso **comparten el código, los datos y los recursos** (memoria, archivos abiertos), y cada hilo tiene su propio **contador de programa, registros y pila**.

### Arquitecturas y conceptos del SO

**T10.** Mencione las arquitecturas de SO que conoce.

> [!success]- Respuesta
> - **Monolítica:** todo el SO es un gran programa sin estructura clara; todas las funciones corren en modo núcleo. Muy rápidos pero mas caoticos en terminos de organizacion.
> - **Por capas:** el SO se divide en capas con una función cada una. Permite modificar una capa sin tocar las demás, pero el orden de llamado es rígido y sacrifican un poco la velocidad.
> - **Microkernel:** el núcleo mantiene solo lo básico y el resto corre en modo usuario como servidores. Ocupa muy poco; si un servicio falla, no cae todo el sistema.
> - **Modulares:** usan módulos cargables al núcleo; más flexibles que las capas, porque un módulo puede llamar a cualquier otro sin orden fijo.
> - **Híbridas:** combinan dos o más de las anteriores (las más usadas hoy).

**T11.** 🎯 **[Módulo 11 — Seguridad]** ¿Qué entiende por Seguridad de los Sistemas Informáticos? Explique.

> [!success]- Respuesta
> Es una **medida de confianza** que consiste en preservar la integridad del sistema y de sus datos. Es decir, que los datos no se alteren ni modifiquen, y que el hardware no se dañe ni se impida acceder a él.

**T12.** 🎯 **[Módulo 12 — Protección]** ¿Qué son los Dominios de protección? Explique.

> [!success]- Respuesta
> Un **dominio de protección** está formado por un conjunto de pares **(objeto, derechos)**. Un objeto es cualquier cosa del sistema, hardware o software (archivo, impresora). A cada objeto se le asocia un derecho (lectura, escritura, ejecución). Un dominio puede ser un usuario o un proceso, e indica a qué objetos puede acceder y con qué derechos. Un mismo objeto puede pertenecer a varios dominios. El SO lo registra en la **matriz de acceso**.

**T13.** 🎯 **[Módulo 12 — Protección]** Explique el significado de Protección en los Sistemas Informáticos.

> [!success]- Respuesta
> La **protección** es el conjunto de mecanismos que usa el SO para asegurar la integridad e incrementar la seguridad del sistema. Esos mecanismos permiten aplicar por ejemplo la **política de uso de los recursos**: qué usuario entra, a qué accede y qué puede ver.  
> Esta compuesta de dos principios: **privilegio mínimo** (darle a cada usuario solo lo que necesita) y **compartimentación** (cada recurso protegido de forma individual).

**T14.** ¿Qué se entiende por plataforma? ¿Qué es el Middleware y qué finalidad tiene?

> [!success]- Respuesta
> - **Plataforma:** el hardware del equipo junto con el sistema operativo; sobre ella corren las aplicaciones.
> - **Middleware:** capa de software entre la plataforma y las aplicaciones, cuya finalidad es **compatibilizar distintas plataformas**. Si una aplicación se desarrolla sobre el middleware y ese middleware funciona sobre varias plataformas, la aplicación se diseña una sola vez y se usa en todas, porque el middleware se encarga de la compatibilidad.

**T15.** 🎯 **[Módulo 11 — Seguridad]** ¿Cómo pueden ser los ataques a los Sistemas Informáticos?

> [!success]- Respuesta
> Se resumen en 4:
> - **Virus y gusanos:** software malintencionado; el virus se acopla a un archivo y viaja como huésped, el gusano se mueve solo.
> - **Denegación de servicio:** que el usuario no pueda acceder a un servicio del sistema.
> - **Robo de identidad:** alguien entra con la identificación de otro usuario y puede ver o modificar información.
> - **Robo de servicios:** alguien usa mis recursos (canal, memoria, procesador) sin que lo sepa, y yo pago los gastos.

### Sincronización y comunicación

**T16.** Toda solución al problema de la sección crítica debe cumplir una serie de condiciones. ¿Cuáles son y qué caracteriza a cada una?

> [!success]- Respuesta
> Tres condiciones necesarias y suficientes:
> - **Exclusión mutua:** si un proceso está ejecutando su sección crítica, ningún otro puede ejecutar la suya.
> - **Progreso:** cuando el SO debe elegir qué proceso entra, elige solamente entre los que están justo por empezarla (no entre los que están cerca o lejos).
> - **Espera limitada (acotada):** un proceso que pide entrar debe poder hacerlo después de un tiempo determinado; no puede quedar esperando indefinidamente.

**T17.** Explique qué es una operación atómica. ¿Las interrupciones que atiende el SO son atómicas?

> [!success]- Respuesta
> Una **operación atómica** es una secuencia de instrucciones que se ejecuta de manera completa, sin poder interrumpirse a la mitad. Las interrupciones que atiende el SO **sí son atómicas**: una vez que el SO comienza a atender la interrupción, esa rutina se ejecuta de forma íntegra sin ser interrumpida. Sin embargo, en los sistemas de tiempo real donde el timepo de respuesta es critico, se pueden interrumpir las interrupciones si llega una tarea/interrupcion de mayor prioridad.

**T18.** Explique qué es una comunicación directa y una indirecta.

> [!success]- Respuesta
> - **Directa:** los dos procesos se comunican nombrándose entre sí; un proceso le manda el mensaje directamente al otro (proceso a proceso).
> - **Indirecta:** la comunicación se hace a través de un **buzón (mailbox)** intermedio. Un proceso deposita el mensaje y el otro lo retira. Hay que sincronizar varias cuestiones del buzón (tamaño, quién lo llena, quién lo vacía, permisos), porque no se puede guardar en un buzón lleno ni sacar de uno vacío.

**T19.** Explique qué es una comunicación sincrónica y una asincrónica.

> [!success]- Respuesta
> - **Sincrónica:** el emisor manda el mensaje y la respuesta se da en el mismo momento; emisor y receptor quedan **acoplados en el tiempo** (uno espera al otro).
> - **Asincrónica:** el mensaje es enviado por el emisor y la respuesta puede llegar en otro momento; **no requiere** que ambos estén sincronizados al mismo tiempo.

### Planificación de procesos

**T20.** ¿Qué inconveniente pueden tener los algoritmos de planificación por prioridades y cómo se resuelve?

> [!success]- Respuesta
> El inconveniente es la **inanición (starvation):** un proceso de baja prioridad puede quedar postergado indefinidamente si siempre llegan procesos de mayor prioridad. Se resuelve con el **envejecimiento (aging):** a medida que el proceso espera, se le va subiendo la prioridad, de modo que tarde o temprano llegue a ejecutarse.

**T21.** Si se desea maximizar la productividad del procesador, ¿qué criterios de elección de procesos se deben aplicar?

> [!success]- Respuesta
> Maximizar la productividad = ejecutar la mayor cantidad de procesos por unidad de tiempo → aplicar **SPN/SJF** (Shortest Process Next / Shortest Job First): seleccionar los procesos más cortos primero. Como es por prioridades, hay que considerar el riesgo de **inanición** de los procesos largos y aplicar **envejecimiento**.

**T22.** Mencione y explique los algoritmos de planificación por prioridades que conoce.

> [!success]- Respuesta
> - **SJF (Shortest Job First):** sin desalojo. La prioridad es la próxima ráfaga más corta. Obliga a conocer de antemano el tamaño de la próxima ráfaga para poder compararlas.
> - **SRTF (Shortest Remaining Time First):** con desalojo. Toma el tiempo remanente de la próxima ráfaga más corto. Es la versión con prioridad más fuerte que SJF.
> - **SPN (Shortest Process Next):** sin desalojo. La prioridad es el proceso más corto primero, pero considerando el tiempo total de ejecución del proceso completo. Esa prioridad no se modifica mientras los procesos estén cargados.
> - **HRRN (Tasa de respuesta):** la tasa de respuesta = (tiempo de espera + tiempo de ejecución) / tiempo de ejecución. Se elige primero el proceso con mayor tasa de respuesta, es decir, el que lleva más tiempo esperando.
>
> **Riesgo común:** todos los algoritmos por prioridades tienen riesgo de **inanición**. La solución es siempre la misma: **envejecimiento** (aging). 

### Memoria

**T23.** Mencione y explique las oportunidades en que se pueden vincular las direcciones lógicas con las físicas.

> [!success]- Respuesta
> Tres oportunidades:
> - **En tiempo de compilación:** al compilar ya se asigna la dirección física definitiva (física = lógica). El programa siempre se carga en el mismo lugar → solo sirve para monoprogramación.
> - **En tiempo de carga:** la vinculación se hace al cargar el programa en memoria. Permite cargarlo en distintas posiciones, pero una vez cargado queda fijo.
> - **En tiempo de ejecución:** se resuelve mientras el proceso se ejecuta, con apoyo del hardware (MMU). Permite mover el proceso en memoria durante la ejecución; la usan los esquemas modernos (paginación, segmentación).

**T24.** Explique qué es la Fragmentación Interna y la Externa.

> [!success]- Respuesta
> - **Fragmentación interna:** desperdicio que queda **dentro** de un bloque/partición ya asignado, cuando el proceso no ocupa todo el espacio dado. Aparece en partición fija y en paginación (la última página casi nunca se llena).
> - **Fragmentación externa:** espacio libre repartido en **huecos pequeños y dispersos** entre particiones ocupadas; hay memoria total suficiente pero no contigua. Aparece en partición variable/dinámica y en segmentación.

**T25.** Explique las características y el funcionamiento de la técnica de segmentación sin memoria virtual.

> [!success]- Respuesta
> La **segmentación** divide el proceso en **segmentos de tamaño variable** (según la estructura lógica del programa). Se ubican en memoria según una estrategia de asignación: **mejor ajuste** (hueco donde quede menos espacio libre, menos fragmentación), **peor ajuste** (hueco más grande) o **primer ajuste** (el primer hueco disponible). A diferencia de la paginación, **genera fragmentación externa** porque los segmentos son de distinto tamaño.

**T26.** Explique el algoritmo de Segunda Oportunidad de reemplazo de página.

> [!success]- Respuesta
> Le da una **"segunda oportunidad"** a la página antes de sacarla. Asocia a cada frame un **bit de referencia**: 1 si la página fue usada, 0 si no. Un puntero recorre los frames: si encuentra un bit en 1, no la saca pero le pone el bit en 0 (la perdona) y avanza; si encuentra un bit en 0, reemplaza esa página. Es mucho más económico que LRU con contadores/pila (solo un bit por frame). Es la **aproximación práctica de LRU** que usa la cátedra.

**T27.** Explique el algoritmo de Conteo de reemplazo de página. ¿Cómo se implementa?

> [!success]- Respuesta
> A cada página, al cargarse, se le asocia un **contador** que se incrementa cada vez que es referenciada. Al reemplazar, mira los contadores:
> - **LFU (Least Frequently Used):** saca la página con el contador más **bajo** (la que menos se usó).
> - **MFU (Most Frequently Used):** saca la página con el contador más **alto**.
>
> Es sencillo pero costoso (un contador por página).

**T28.** Explique el algoritmo LRU (Least Recently Used) de reemplazo de página.

> [!success]- Respuesta
> **LRU** reemplaza la página que hace más tiempo que no se usa. Se implementa con una **pila**: cada vez que una página es referenciada se la pone en el **tope**, y se la empuja hacia abajo si no se la vuelve a llamar; ante un fallo, se reemplaza la que quedó en el **fondo**. Como mantener la pila es costoso, se aproxima con **Segunda Oportunidad**.

**T29.** Defina qué es un Fallo de Página y la secuencia de acciones del SO para tratarlo.

> [!success]- Respuesta
> Un **fallo de página** ocurre cuando el proceso referencia una página que **no está cargada** en memoria principal (bit de validez lo indica). Secuencia: el SO detecta el fallo (interrupción), verifica que la referencia sea válida, busca la página en disco, elige un frame libre (o uno víctima con un algoritmo de reemplazo, escribiéndolo a disco si está modificado), carga la página, actualiza la tabla de páginas y reanuda la instrucción que provocó el fallo.

**T30.** Escriba la fórmula de TAE (tiempo de acceso efectivo a memoria) y explique sus elementos.

> [!success]- Respuesta
> Según la cátedra: **TAE = TAM + 2 × TAD × P_fallo**
> - **TAM** (Tiempo de Acceso a Memoria): tiempo que tarda el proceso en acceder a la memoria.
> - **TAD** (Tiempo de Acceso a Disco): tiempo de acceso al disco cuando la página no está en memoria.
> - **2 × TAD:** representa el peor caso (al fallar, el SO accede a disco para traer la página).
> - **P_fallo:** probabilidad de que se produzca un fallo de página.
>
> Magnitudes: nanosegundos (memoria) y milisegundos (disco).

### E/S, discos y archivos

**T31.** ¿Qué son las interrupciones, cómo pueden ser y qué contiene el vector de interrupciones?

> [!success]- Respuesta
> Una **interrupción** ocurre cuando, durante la ejecución, un evento obliga a interrumpir al proceso y atenderlo (el proceso deja la CPU). Pueden ser:
> - **Enmascarables:** se pueden atender en otro momento, no urgentes (ej.: entrada de un dato, falta de papel).
> - **No enmascarables:** deben atenderse de manera urgente, sí o sí.
>
> El **vector de interrupciones** contiene las **direcciones de las rutinas de atención**, es decir, dónde está el código que el SO ejecuta para dar servicio a cada interrupción.

**T32.** Explique brevemente la técnica de DMA (Direct Memory Access) y qué beneficio aporta a la CPU.

> [!success]- Respuesta
> El **DMA** es un procesador con acceso directo a memoria. Al transferir datos entre un dispositivo de E/S y la memoria principal, el módulo de E/S se convierte en **maestro del bus** y transmite los datos en ráfagas directamente desde/hacia la memoria. La CPU solo interviene al principio (inicia) y al final; durante la transferencia no participa. **Beneficio:** libera a la CPU, que puede dedicarse a otras tareas, mejorando el rendimiento.

**T33.** ¿Qué es un sistema RAID y qué objetivo tiene? Explique.

> [!success]- Respuesta
> **RAID** usa varios discos en conjunto. Dos objetivos: **mejorar la performance** (acceso en paralelo a varios discos) y dar **seguridad/redundancia** frente a la rotura de un disco o sector. Ej.: el **RAID espejo (mirror)** duplica todos los datos en otro disco: redundancia a costa del doble de discos. *(Aclaración de la cátedra: RAID resuelve rápido una falla, pero no reemplaza al backup, que debe estar en otra ubicación geográfica.)*

**T34.** Dentro de los planificadores de búsqueda de pistas, explique los algoritmos LOOK y C-LOOK.

> [!success]- Respuesta
> - **LOOK:** similar a SCAN (el cabezal atiende pistas en un sentido y luego en el otro), pero **no llega a los extremos físicos**: invierte el sentido en la última pista solicitada en esa dirección, no en el borde.
> - **C-LOOK:** similar a C-SCAN, pero tampoco llega a los extremos. Atiende en un solo sentido; al llegar a la última pista requerida, vuelve hasta la más baja solicitada y retoma la atención solo en ese mismo sentido.

**T35.** Explique qué métodos de acceso a memoria secundaria conoce y qué tipos de archivos se implementan en cada uno.

> [!success]- Respuesta
> Dos métodos:
> - **Acceso secuencial:** hay que posicionarse al principio y leer secuencialmente hasta el dato. Soporte: cintas. Archivos: secuenciales (lineales) y encadenados.
> - **Acceso directo:** permite posicionarse directamente sobre el dato sin recorrer los anteriores. Soporte: disco rígido. Archivos: indexados, calculados (hashing) y de clave directa.

**T36.** Explique los distintos criterios para asegurar la consistencia de los archivos en modo multiusuario.

> [!success]- Respuesta
> En modo multiusuario, para asegurar la integridad, el usuario que abre el archivo **para escribir es el único que puede modificarlo** mientras lo tiene abierto; el resto solo puede **leerlo**. Así se evita que dos usuarios escriban a la vez y dejen el archivo inconsistente.

### Comunicaciones y arquitectura de hardware

**T37.** En el entorno OSI, ¿qué función tiene la capa de Enlace y cómo puede ser?

> [!success]- Respuesta
> La **capa de enlace** determina cómo se realiza el enlace entre los participantes de la red, es decir, qué tipo de enlace/red se va a implementar para que los equipos se comuniquen. *(Capas OSI: física, enlace, red, transporte, sesión, presentación y aplicación.)*

**T38.** Explique los conceptos de flujos de instrucciones y de datos, y describa las clases SIMD y MIMD de Flynn.

> [!success]- Respuesta
> La **taxonomía de Flynn** clasifica según dos flujos: de **instrucciones** y de **datos**, cada uno simple o múltiple:
> - **SISD:** un procesador, una instrucción sobre un dato.
> - **SIMD:** una misma instrucción sobre muchos datos a la vez (procesadores vectoriales, ej.: sumar 1 a todos los elementos de un vector con una sola instrucción).
> - **MISD:** muchas instrucciones sobre un mismo dato (poco común).
> - **MIMD:** varios procesadores con distintas instrucciones sobre distintos datos; modelo del multiprocesamiento real.

**T39.** Explique qué es procesamiento en paralelo o multiprocesamiento. ¿Cómo se clasifica?

> [!success]- Respuesta
> El **multiprocesamiento** es cuando un solo sistema tiene **más de un procesador**, lo que permite procesar más de un proceso a la vez. Se clasifica en:
> - **Simétrico (SMP):** todos los procesadores trabajan en condiciones equivalentes y acceden a todo el sistema.
> - **Asimétrico:** un procesador controla todo el sistema y los demás trabajan para apoyar el procesamiento (subordinados).

**T40.** ¿Los sistemas multiusuarios o de tiempo compartido hacen multiprogramación? Justifique.

> [!success]- Respuesta
> **Sí.** Los SO modernos de tiempo compartido son un ejemplo claro de **multiprogramación**: cuando varios usuarios usan la computadora, el procesador ejecuta los procesos de todos repartiendo el tiempo en pequeñas unidades, dando a cada usuario la **ilusión de uso exclusivo** del procesador.

### Otros (linkedición)

**T41.** Defina qué es la linkedición y explique las formas en que se puede realizar.

> [!success]- Respuesta
> La **linkedición** es el paso posterior a la compilacion que enlaza el programa con las librerias que necesita. 
> **Estático:** todas las librerías se meten dentro del programa compilado, así que en ejecución no le pide nada al SO; cómodo, pero cada proceso lleva su propia copia y desperdicia memoria.
> **Dinámico:** en vez de copiar las librerías se dejan colillas (llamadas) que apuntan a ellas; el SO las carga una sola vez en memoria y las comparten varios procesos.
> **Carga dinámica:** el propio programador ubica, carga y convoca las librerías en tiempo de ejecución (sin herramienta del SO), trayéndolas solo cuando las necesita.

---

> [!note] Cobertura
> Primer Parcial Virtual (10) + Segundo Parcial Virtual (9, correcciones en P2 y P3) + Teoría de finales 2022–2024 (41 preguntas únicas agrupadas por tema) + Final Asincrónico 17/12/2025 (10 preguntas). Correcciones numéricas del profe marcadas ⚠️ dentro de cada caja.

---

## Final Asincrónico — 17/12/2025 (Ing. Arroyo Arzubi)

> [!info] Final rendido (SISTEMASOPERATIVOS(ONLINE)_N_MI_18.00-17_12_2025). Se transcribe cada consigna con la **respuesta entregada** y la nota obtenida; donde el profe marcó mal o quedó sin responder va la **resolución corregida** (⚠️).

**1.** Explique los distintos criterios para asegurar la consistencia de los archivos en modo multiusuario. *(1/1)*

> [!success]- Respuesta
> **Respuesta entregada (correcta):**
> - **Consistencia de sesión:** el usuario que abre el archivo para escribir es el único que puede modificarlo; los demás solo pueden leerlo y no ven los cambios hasta que el archivo se guarda, garantizando que no existan modificaciones simultáneas que se contradigan.
> - **Consistencia de archivos compartidos inmutables:** permite que varios usuarios abran y modifiquen un mismo archivo de manera concurrente, pero las restricciones se aplican a un nivel más fino (por ejemplo a nivel registro), lo que reduce conflictos y mantiene la coherencia de los datos compartidos entre los distintos procesos/usuarios.

**2.** En la aplicación de semáforos para cumplir la condición **A (B OR C) D**, ¿qué semáforos hay que agregar? Estructura entregada — **A:** wait(a)/wait(x)/SC/signal(bc); **B:** wait(bc)/SC/signal(x); **C:** wait(bc)/SC/signal(x); **D:** wait(d)/wait(x)/SC/signal(bc). Opciones: A) proceso B signal(a); B) proceso C signal(a); C) proceso A signal(d); D) proceso D signal(a); E) proceso B signal(d); F) proceso C signal(d). *(0/1)*

> [!success]- Respuesta
> **Respuesta entregada:** B (en proceso C, signal(a)). → **MAL (0/1).**
>
> ⚠️ **CORRECCIÓN:** conviene mirar qué semáforos quedan **desbalanceados** (waits sin signal que los libere):
> - **bc:** lo esperan B y C (2 wait) y lo señalan A y D (2 signal) → equilibrado.
> - **x:** lo esperan A y D (2 wait) y lo señalan B y C (2 signal) → equilibrado.
> - **a:** lo espera A (wait a) pero **nadie lo señala**.
> - **d:** lo espera D (wait d) pero **nadie lo señala**.
>
> Entonces faltan exactamente **un signal(a)** y **un signal(d)**. Para respetar el orden A → (B o C) → D y cerrar el ciclo:
> - **En el proceso A agregar signal(d)** → A habilita a D (A va antes que D). = **opción C.**
> - **En el proceso D agregar signal(a)** → al terminar D reinicia a A. = **opción D.**
>
> **Respuesta correcta: C y D.** (El signal(bc) de A/D habilita a uno solo de B/C — el "OR" — y el signal(x) de B/C libera a A/D.)

**3.** Explicar en qué consiste el método **Detección y Recuperación** (Bloqueo y Recuperación) usado para evitar el abrazo mortal. *(0,3/1 — comentario del profe: "MEZCLA DOS MÉTODOS")*

> [!success]- Respuesta
> Se **deja que el deadlock pueda ocurrir**. El sistema lo **detecta**  y, una vez detectado, **recupera** rompiendo el ciclo: aborta uno o más procesos, o les quita recursos y los devuelve al estado seguro. 

**4.** Explique qué es la sección crítica. *(1/1)*

> [!success]- Respuesta
> La **sección crítica** es la parte del código de un proceso la cual accede a datos o recursos compartidos con otros procesos. Como varios procesos pueden ejecutarse de forma concurrente, el acceso simultáneo a esos datos puede generar inconsistencias; por eso el SO debe garantizar que **solo un proceso a la vez** ejecute su sección crítica. Mientras un proceso está dentro de ella, ningún otro puede ingresar, asegurando **exclusión mutua** y evitando errores derivados del acceso concurrente.

**5.** Escriba la fórmula de **TAE** (tiempo de acceso efectivo a memoria), explique cada elemento que interviene y qué magnitudes de tiempo intervienen. *(0/1 — sin responder)*

> [!success]- Respuesta
> Quedó **sin responder** (0/1).
> ⚠️ **RESOLUCIÓN (según la cátedra):** **TAE = TAM + 2 × TAD × P_fallo**
> - **TAM** (Tiempo de Acceso a Memoria): tiempo que tarda en acceder a memoria principal.
> - **TAD** (Tiempo de Acceso a Disco): tiempo de acceso a disco cuando la página no está en memoria.
> - **2 × TAD:** representa el peor caso (al fallar, el SO va a disco a traer la página).
> - **P_fallo:** probabilidad de que se produzca un fallo de página.
>
> **Magnitudes:** memoria en **nanosegundos** y disco en **milisegundos**.

**6.** Aplicando el algoritmo **Óptimo** de reemplazo de páginas en memoria virtual, ¿qué página debe salir de la memoria principal ante el fallo que se presenta? Cadena: 7 0 1 2 0 3 0 4 2 3 0 3 2 1 2 0 1 7 0 1 (3 frames). *(1/1)*

> [!success]- Respuesta
> **Respuesta entregada: 4** (marcada correcta, 1/1). Es la misma cadena del Primer Parcial Virtual #8; el algoritmo Óptimo saca la página que **tardará más en volver a usarse**. En el fallo señalado en el diagrama la página que corresponde reemplazar es la **4**.

**7.** Aplicando el algoritmo **SJF**, ¿a qué proceso corresponde asignarle el uso del procesador? T0 PA E:30 / E/S:40 / E:30 mseg — T20 PB E:20 / E/S:10 / E:20 mseg. Opciones: A) Proceso A; B) Proceso B. *(1/1)*

> [!success]- Respuesta
> **B — Proceso B** (correcta). SJF elige la ráfaga de CPU más corta: PB (20 mseg) < PA (30 mseg).

**8.** 🎯 **[Módulo 11 — Seguridad]** ¿Cómo pueden ser los ataques a los Sistemas Informáticos? *(1/1)*

> [!success]- Respuesta
> **Respuesta entregada (correcta):**
> - **Virus (y gusanos):** software que altera o daña el funcionamiento normal del sistema.
> - **Denegación de servicios (DoS):** su objetivo es impedir la disponibilidad de los recursos.
> - **Robo de identidad:** un atacante obtiene información para suplantar a un usuario legítimo.
> - **Robo de servicios:** ocurre cuando un atacante utiliza recursos del sistema sin autorización, afectando la disponibilidad y la integridad del mismo.

**9.** Aplicando el algoritmo **LRU** (menos recientemente usada) de reemplazo de página en memoria virtual, ¿qué página debe salir ante el fallo que se presenta? Cadena: 7 0 1 2 0 3 0 4 2 (3 frames + pila). *(1/1)*

> [!success]- Respuesta
> **Respuesta entregada: 3** (marcada correcta, 1/1). LRU reemplaza la página que hace más tiempo que no se usa (la del **fondo de la pila**); en el fallo señalado esa página es la **3**.

**10.** Mencione y explique cuáles son las principales funciones de un sistema operativo. *(1/1)*

> [!success]- Respuesta
> - **Gestión de recursos:** administra y asigna los recursos del sistema (CPU, memoria, dispositivos) a los procesos que los necesitan.
> - **Ejecución de servicios para los programas:** los programas le piden al SO todo lo que necesitan, y el SO se los otorga.
> - **Ejecución de los mandatos de usuario:** permite al usuario controlar el SO mediante comandos (shell) o la interfaz.
> - **Abstracción:** oculta la complejidad del hardware y le da a cada usuario una visión independiente del sistema de cómputo.
> - **Aislamiento:** permite que cada usuario use el mismo SO de forma independiente, sin que se filtren sus datos (seguridad).


## Final Asincrónico — 01/07/2026 (Ing. Arroyo Arzubi)1

---

**6.** Explique qué es la matriz de acceso y cuáles son sus formas de implementación. 

> [!success]- Respuesta
> - **Matriz de acceso:** estructura que usa el SO para registrar, por cada **dominio** (usuario o proceso), a qué **objetos** puede acceder y con qué **derechos**.
> - **Formas de implementación:**
> - **Tabla global:** una sola tabla con todas las ternas dominio–objeto–permiso. Enorme y costosa.
> - **Lista de control de acceso:** la lista se asocia a cada **objeto** (qué dominios lo usan y cómo).
> - **Lista de capacidades:** la lista se asocia a cada **dominio** (qué objetos usa y cómo). Es el esquema inverso.
> - **Llave de bloqueo:** cerradura en los objetos y llave en los dominios; si la llave coincide, entra.

**7.** Explique los algoritmos de planificación de disco LOOK y C-LOOK. 
> [!success]- Respuesta
> - **LOOK:** es similar al SCAN, pero **no llega hasta los extremos** del disco (ni el superior ni el inferior). Atiende las pistas subiendo hasta la última pedida, y de ahí cambia de sentido hacia la siguiente pista requerida más abajo atendiendo en la bajada.
> - **C-LOOK:** es similar al C-SCAN, pero tampoco llega a los extremos. Atiende las pistas en **un solo sentido** hasta la última requerida, luego baja hasta la pista más baja pedida y vuelve a atender solamente en ese mismo sentido sin atender en la bajada.

**8.** ¿Los sistemas de tiempo compartido o multiusuario hacen multiprogramación? 

> [!success]- Respuesta
> - **Sí**, es una forma de multiprogramación: hay varios procesos de usuarios cargados en memoria principal que alternan el uso del procesador. Lo que cambia es el objetivo: en la multiprogramación "pura" es maximizar el uso de la CPU, mientras que en el tiempo compartido es atender a los usuarios de la forma más equitativa posible. Por eso se le da a cada usuario un quantum de tiempo igual para todos.

**9.** Clasifique los procesos según sus interacciones (independientes y cooperativos). 
> [!success]- Respuesta
> - **Independientes:** se ejecutan sin interactuar, colaborar ni necesitar de otros procesos. Son los más cómodos de administrar: el SO los ejecuta cuando quiere, sin tener en cuenta nada más.
> - **Cooperativos:** fueron diseñados para trabajar conjuntamente en una determinada actividad; requieren cooperación. Se subdividen en:
> 	- **Concurrentes:** se pueden ejecutar en paralelo (por ejemplo, en 2 procesadores).
> 	- **Complementarios:** requieren un determinado orden para ejecutarse (ej.: B solo se ejecuta si antes se ejecutó A) → necesitan sincronización, que el SO debe respetar.

**10.** Explique la asignación contigua del espacio de archivos. 

> [!success]- Respuesta
> Al archivo se le dan bloques uno pegado al otro (adyacentes) en el disco, y el directorio guarda el bloque de inicio y la longitud (cantidad de bloques) de cada archivo. Su inconveniente principal es que los archivos crecen y puede no haber espacio libre contiguo al lado; en ese caso hay que trasladar todo el archivo a otra zona con suficientes bloques contiguos, lo cual es costoso e ineficiente.

11. Seguridad multinivel — ¿cuáles son?

> [!success]- Respuesta
> Existen 2 alternativas. Bell-LaPadula prioriza el secreto: un nivel no puede leer hacia arriba, pero sí puede escribir hacia arriba; sí puede leer hacia abajo; y con los pares lee y escribe libremente. El esquema inverso prioriza que toda la cadena se entere de lo que hace cada nivel: un nivel inferior sí puede leer lo que hace el superior, pero no puede escribirle.

12. Bloqueo y recuperación — mecanismos

> [!success]- Respuesta
> Es uno de los métodos para tratar el abrazo mortal. Cuando el SO se encuentra con un proceso que no se puede ejecutar por falta de recursos, lo saca del sistema, libera sus recursos para que otros procesos avancen, y lo hace volver a ingresar más adelante. No es la solución ideal, pero es una solución válida.

13. ¿Qué es un proceso y qué tiene que ver con el BCP?
> [!success]- Respuesta
> Un proceso es un programa en ejecución. El programa vive en memoria secundaria y el proceso nace cuando se lo pone a ejecutar y muere cuando termina. La relación con el BCP es directa. Un programa se convierte en proceso cuando el SO le agrega el Bloque de Control de Proceso (BCP), que es el espacio donde el SO guarda toda la información que necesita para administrarlo (nombre, tamaño, dueño, prioridad, memoria que ocupa, archivos que necesita, más datos estadísticos de uso durante su ejecución).

14. Técnica de vector o mapa de bits
> [!success]- Respuesta
> - **Vector / mapa de bits:** es una técnica para gestionar los **bloques libres y ocupados** del disco. Se dedican los **primeros bloques** del disco al mapa.
> - Cada **bit** del mapa está asociado a **un bloque** del disco: su valor (0 o 1) indica si ese bloque está **libre u ocupado**.
> - Por lo tanto, la cantidad de bits del mapa es igual a la cantidad de bloques del disco; el tamaño del mapa depende del tamaño del disco.

15. Regiones críticas
> [!success]- Respuesta
> La **Región crítica** es una facilidad que dan los lenguajes para proteger la sección crítica (no es lo mismo: la sección crítica es el código que accede al dato compartido, la región crítica es un mecanismo para protegerla). Consiste en definir una región con una variable booleana que se consulta para decidir si un proceso puede entrar. Es una de las 3 formas de proteger la sección crítica, junto con semáforos y monitores.

16. Qué es el DMA? ¿Puede acceder a la memoria?
> [!success]- Respuesta
> El DMA (Acceso Directo a Memoria) es un procesador dedicado que transfiere datos de entrada/salida entre los dispositivos (disco, teclado, mouse, etc.) y la memoria principal sin la intervención de la CPU. Sí, tiene acceso directo a la memoria. Hace la transferencia por sí solo y, cuando termina, le avisa a la CPU que los datos ya están disponibles, aliviándola de esa tarea y aumentando la eficiencia en el uso de la CPU.