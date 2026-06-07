-- -
```
Quiero que me hagas una archivo que tenga las preguntas que estan aca (Preguntas Segundo Parcial-QA.pdf). Quiero que ademas tenga la respuesta pero oculta por una caja cosa de yo poder responderlo y despues mirar la respuesta. No quiero que omitas ningun concepto y quiero que este dentro de la carpeta Testing y QA en el tercer año. queda claro?
```

> [!tip] Cómo usar este archivo
> Leé cada pregunta, respondela mentalmente o en voz alta, y recién después desplegá la caja **▸ Respuesta** para verificar. Las cajas están colapsadas por defecto.
> Listado consolidado de preguntas únicas (parcial impreso Tema 1 + Tema 2 y parciales online de Blackboard).

---

## Ambiente y planificación de testing

**1.** Enumere y defina el Equipamiento requerido para definir un ambiente de testing.

> [!success]- Respuesta
> Son **cuatro recursos**: cantidad de puestos de trabajo (estaciones para los testers), servidor de almacenamiento de casos de prueba, servidor de administración de versiones de fuentes (versionado del código) y servidor de base de datos de prueba, más el **backup** para respaldar la información.

**2.** Enumere y defina el Ambiente de desarrollo para definir un ambiente de testing.

> [!success]- Respuesta
> Comprende **cinco elementos**: control de fuentes (versionado del código), incorporación de datos de prueba, ejecución y control de casos de prueba, seguimiento de corrección de errores y base de datos de test.
> Es la parte del ambiente que gestiona el código y los datos sobre los que se trabaja durante las pruebas.

**3.** Grafique un proceso de ambiente de testing describiendo los roles y activos.

> [!success]- Respuesta
> El ambiente se organiza en **cuatro columnas**:
> - **Desarrollo** (Base de Desarrollo)
> - **Testing** (Base de Testing)
> - **Ambientes de Test** (Ambiente 1, 2, 3…n, cada uno en su `.MDB`)
> - **Casos de Prueba** (un set de casos por cada ambiente)
>
> La base de desarrollo alimenta la de testing, de ella se derivan los distintos ambientes de test aislados, y cada ambiente se vincula con su conjunto de casos de prueba.
> **Roles:** el equipo de desarrollo (genera el código y la base de desarrollo) y el equipo de testing (administra los ambientes y ejecuta los casos), apoyados en el personal mínimo definido con sus habilidades por rol.

**4.** Enumere y describa las secciones necesarias para definir un plan de testing.

> [!success]- Respuesta
> Las secciones del plan estándar (basado en **IEEE 729**) son:
> - Alcance del testing
> - Limitaciones del testing
> - Estrategias de testing
> - Criterios de aceptación
> - Roles de testing
> - Riesgos asociados al testing
> - Definición del ambiente de testing
> - Equipamiento requerido
> - Backup y control de fuentes
> - Gestión de los datos de prueba
> - Ejecución y control de casos de prueba
> - Seguimiento y corrección de errores
> - Test de requerimientos no funcionales (performance, seguridad, stress, etc.)
> - Políticas a seguir en la definición de los datos de prueba

**5.** Defina dos fórmulas de estimación de tiempos para la etapa de testing.

> [!success]- Respuesta
> Las dos fórmulas de los apuntes son:
> - **Duración de testing = duración de desarrollo / 3**
> - **Cantidad de tester = cantidad de desarrolladores / 2**
>
> (Una tercera asociada: **Costo de testing = duración de testing × cantidad de tester × costo por día del personal**.)

**6.** Enumere las reglas básicas para una buena estimación de testing.

> [!success]- Respuesta
> La estimación se basa siempre en los **requisitos de software**, en la **opinión de expertos**, en **proyectos anteriores** y en los **indicadores**; nunca debe olvidar el pasado; y debe ser **registrada, justificada** mediante una herramienta y **verificada**.

**7.** Complete la fórmula de estimar Testing: Cantidad de Tester =

> [!success]- Respuesta
> **Cantidad de Tester = (cantidad de desarrolladores) / 2.**

**8.** Complete la fórmula de estimar Testing: Duración de testing =

> [!success]- Respuesta
> **Duración de testing = (duración de desarrollo) / 3.**

---

## Pruebas de módulos e integración

**1.** En Pruebas de Módulos qué significa el concepto **Stub**.

> [!success]- Respuesta
> Un **stub** es una pieza de código que simula el comportamiento de un **módulo faltante** (el que sería llamado por el módulo bajo prueba), con los mismos parámetros de entrada y salida pero con una alta simplificación.
> Es **costoso** de realizar, y si siempre devuelve los mismos valores es probable que el módulo que lo llama no quede testeado de forma adecuada.

**2.** En Pruebas de Módulos qué significa el concepto **Driver**.

> [!success]- Respuesta
> Un **driver** es una pieza de código que simula el **uso del módulo bajo prueba** por parte de otro módulo que normalmente lo llamaría.
> Es **menos costoso** que un stub, suele suministrar los casos de prueba al módulo testeado y puede leer los datos necesarios desde un archivo, GUI, etc.

**3.** En Pruebas de Integración describa las estrategias **Big-Bang** y **Top-Down (Descendente)**.

> [!success]- Respuesta
> **Big-Bang (no incremental):** prueba cada módulo de forma aislada y luego integra y prueba todos juntos de una sola vez. Permite trabajo en paralelo pero dificulta hallar el origen de las fallas y no sirve para sistemas grandes.
> **Top-Down (incremental descendente):** comienza por el módulo superior de la jerarquía "usa" y baja según ella. Requiere **stubs** pero no drivers, permite demostraciones tempranas del producto y representa casos reales fácilmente (los módulos superiores suelen ser GUI), aunque los stubs resultan complejos.

**4.** En Pruebas de Integración describa las estrategias **Bottom-Up (Ascendente)** y **Sándwich (Intercalada)**.

> [!success]- Respuesta
> **Bottom-Up (incremental ascendente):** comienza por los módulos que no requieren de otros y sube según la jerarquía "usa". Requiere **drivers** pero no stubs, con condiciones de prueba fáciles de crear, pero el programa como entidad no existe hasta integrar el último módulo.
> **Sándwich (intercalada):** combina Top-Down y Bottom-Up al mismo tiempo, buscando probar primero los módulos más críticos.

**5.** Explicar en prueba de integración la comparación de las Estrategias.

> [!success]- Respuesta
> Comparando **no incremental (Big-Bang)** frente a **incremental**:
> - La **no incremental** requiere más trabajo (más stubs y drivers), detecta más tarde los errores de interfaces y las suposiciones incorrectas entre módulos (se integran al final), hace más difícil encontrar la falta que provocó la falla y prueba menos los módulos.
> - En la **incremental**, el defecto suele asociarse al módulo recién integrado o a sus interfaces, y los módulos ya probados se vuelven a probar indirectamente.

---

## Tipos de prueba

**1.** ¿Qué es la Prueba de Aceptación? ¿Qué significa **Determinar el rol del usuario**?

> [!success]- Respuesta
> La **prueba de aceptación** la realizan los usuarios para verificar que el sistema se ajusta a sus requerimientos (técnica de **caja negra** basada en la especificación); es la última oportunidad real de testeo y la etapa en que el usuario puede rechazar el sistema.
> **Determinar el rol del usuario** significa asegurar que se involucre en todo momento, identificar criterios de aceptación iniciales/intermedios/finales, planear cómo y quién aceptará el sistema, planear recursos y preparar el plan de aceptación.

**2.** ¿Qué es la Prueba de Aceptación? ¿Qué significa **"Proceso"**?

> [!success]- Respuesta
> La prueba de aceptación la realiza el usuario para definir si el producto se ajusta a sus necesidades y puede ser aceptado.
> Su proceso más común tiene **cinco pasos**:
> 1. Determinar el rol del usuario
> 2. Definir los criterios de aceptación
> 3. Desarrollar un plan de aceptación
> 4. Ejecutar el plan de aceptación
> 5. Determinar las decisiones de aceptación

**3.** Explique con un ejemplo cómo sería una Prueba de Aceptación del Usuario (PAU).

> [!success]- Respuesta
> En la **PAU** el usuario ejecuta el sistema con casos basados en la especificación de requerimientos para decidir si lo acepta.
> **Ejemplo:** en el e-commerce de libros, el usuario registrado prueba el flujo completo de seleccionar un libro, agregarlo al carrito, completar datos de envío y pago, y confirmar la compra; si el sistema cumple los criterios de aceptación definidos (funcionalidad, performance, interfaz, calidad, seguridad, conformidad), el usuario lo aprueba.

**4.** ¿Qué es una prueba de regresión?

> [!success]- Respuesta
> Es la prueba que valida de forma **consistente y repetible** cada nueva versión de la aplicación, asegurando que los defectos reportados fueron corregidos y que no se introdujeron nuevos problemas de calidad durante el mantenimiento. Suele **automatizarse** para reducir tiempo y recursos.

**5.** ¿Qué hacer si la prueba de regresión detecta defectos?

> [!success]- Respuesta
> Si la regresión detecta defectos, deben **corregirse y volver a ejecutarse** las pruebas sobre la nueva versión para confirmar que la corrección funciona y que no se generaron nuevos problemas, **repitiendo el ciclo** hasta que la versión quede validada.

**6.** Describa qué es una **"Prueba piloto"** y **"Desarrollo de un sistema que sustituye a otro"**.

> [!success]- Respuesta
> **Prueba piloto:** pone a funcionar el sistema en producción de forma **localizada**, de modo que el impacto de las fallas sea menor.
> **Desarrollo de un sistema que sustituye a otro:** se valida con **pruebas en paralelo**: se deja funcionando el sistema viejo mientras se empieza a usar el nuevo, comparando resultados para verificar que el nuevo funciona adecuadamente.

**7.** Describa qué es una Prueba de instalación y Desarrollo para múltiples clientes.

> [!success]- Respuesta
> **Prueba de instalación:** busca encontrar errores de instalación y cobra mayor importancia si la aceptación no se realizó en el ambiente de instalación.
> **Desarrollo para múltiples clientes:** usa **prueba alfa** (la realiza el equipo de desarrollo sobre el producto final) y **prueba beta** (la realizan clientes elegidos sobre el producto final).

**8.** Explique y ejemplifique una prueba de desempeño: **estrés, recuperación y facilidad de uso**.

> [!success]- Respuesta
> - **Prueba de estrés (esfuerzo):** somete al sistema a cargas o picos de volumen considerables. Ej. simular miles de compras simultáneas en el e-commerce.
> - **Prueba de recuperación:** verifica que el sistema se restablezca correctamente tras una falla. Ej. cortar la conexión durante un pago y comprobar que la transacción no quede inconsistente.
> - **Prueba de facilidad de uso (usabilidad):** evalúa qué tan fácil es operar el sistema para el usuario. Ej. medir si un cliente logra completar una compra sin ayuda.

**9.** Explique y ejemplifique una prueba de desempeño: **volumen, documentación y rendimiento**.

> [!success]- Respuesta
> - **Prueba de volumen:** evalúa el comportamiento con grandes cantidades de datos. Ej. cargar un catálogo con cientos de miles de libros.
> - **Prueba de documentación:** verifica que la documentación (manuales, ayuda) sea correcta y coherente con el sistema.
> - **Prueba de rendimiento (performance):** mide tiempos de respuesta y eficiencia bajo condiciones de carga normal, máxima y excepcional. Ej. medir cuánto tarda en responder la búsqueda de libros con muchos usuarios conectados.

**10.** Explique un ejemplo concreto del testing exploratorio.

> [!success]- Respuesta
> El **testing exploratorio** es una prueba **no guionada ni repetitiva**, con una misión definida y tiempo limitado (**timeboxed**), donde se planifica, diseña y ejecuta en simultáneo en ciclos cortos.
> **Ejemplo:** un tester recibe la misión de explorar el carrito de compras durante 30 minutos buscando reproducir un defecto; va probando combinaciones (agregar, quitar, modificar cantidades) y adapta cada nuevo paso a lo que va encontrando, cerrando con un reporte de hipótesis, pruebas y resultados.

**11.** Explique con un ejemplo cómo hacer el proceso de prueba de una aplicación móvil.

> [!success]- Respuesta
> El proceso se basa en pruebas tradicionales **adaptadas a las características móviles**. Se aplican pruebas unitarias, de integración, de sistema y de regresión, sumando pruebas especiales como **compatibilidad** (distintos dispositivos y versiones de SO), GUI, desempeño, seguridad y sincronismo, combinando dispositivos reales, emuladores y automatización.
> **Ejemplo:** para una app de venta de libros se prueba el login y el catálogo en distintos modelos de teléfono y versiones de Android/iOS, se evalúa el consumo de batería y datos, el comportamiento con conectividad limitada y la consistencia de la interfaz en cada dispositivo.

---

## Automatización

**1.** ¿Qué factores tienen que tener en cuenta para la selección de casos de prueba automatizados?

> [!success]- Respuesta
> Se pondera cada caso según:
> - Cuáles deben correrse más veces durante el proyecto (típicamente el **núcleo** de la aplicación).
> - Cuáles conllevan mucha **dedicación humana** y son repetitivos.
> - Qué funcionalidades son **críticas** para el cliente/usuario.
> - Qué **costo** tiene automatizar cada caso (algunos son muy difíciles o caros de automatizar y conviene dejarlos manuales).
>
> Con esos factores se arma un **ranking de prioridad**.

**2.** Testing automatizado vs testing manual — Ventaja y desventaja.

> [!success]- Respuesta
> **Testing automatizado:**
> - Ventaja: muy eficiente cuando hay que correr un juego de pruebas repetidamente.
> - Desventaja: no puede medir la usabilidad, requiere conocimientos de programación y su mantenimiento de scripts puede ser costoso.
>
> **Testing manual:**
> - Ventaja: conviene cuando el caso se ejecuta pocas veces ante un cambio.
> - Desventaja: es lento y propenso a error humano en pruebas repetitivas.

**3.** ¿Por qué automatizar el testing?

> [!success]- Respuesta
> La razón principal es el **tiempo**: las pruebas automatizadas reducen el tiempo de ejecución y, al automatizar las actividades comunes que no requieren inteligencia humana, los testers pueden dedicarse a pruebas más críticas y caminos más elaborados, dejando los caminos básicos a la automatización.

**4.** ¿Qué casos de prueba debería automatizar?

> [!success]- Respuesta
> - Los que se deban correr en cada nueva versión (**Sanity Testing**).
> - Los que usen distintos datos para las mismas acciones (**Data Driven Testing**).
> - Las funcionalidades críticas (**Smoke Testing**).
> - Las funcionalidades que no cambiarán en un período corto.
> - Los escenarios de pruebas de performance.

**5.** Atributos de Automatización de Pruebas.

> [!success]- Respuesta
> - **Conciso:** sencillo y simple.
> - **Comprobación computacional:** reporta resultados sin interpretación humana.
> - **Repetible:** se ejecuta varias veces sin intervención.
> - **Robusto:** mismo resultado siempre, sin afectarse por el entorno.
> - **Necesario:** todo contribuye al comportamiento deseado.
> - **Despejado:** cada afirmación se entiende.
> - **Eficiente:** en tiempo razonable.
> - **Específico:** cada fallo apunta a una parte concreta.
> - **Independiente:** se ejecuta solo o en suite en cualquier orden.
> - **Sustentable:** fácil de modificar y ampliar.
> - **Trazable:** conforme a los requisitos y trazable con ellos.

**6.** Explique con un ejemplo cuándo **NO** utilizaría automatización de testing.

> [!success]- Respuesta
> No se automatiza cuando el caso se ejecuta **muy pocas veces**, cuando depende de **validaciones visuales o de usabilidad**, o cuando el **costo de automatizarlo es mayor que su beneficio**.
> **Ejemplo:** probar una sola vez el aspecto estético de una nueva pantalla del e-commerce conviene hacerlo manualmente, ya que automatizarlo sería costoso y la herramienta no puede juzgar la usabilidad.

**7.** Explique con un ejemplo cuándo **SÍ** utilizaría automatización de testing.

> [!success]- Respuesta
> Se automatiza cuando hay que correr el **mismo juego de pruebas repetidamente**, en funcionalidades **críticas y estables**, o con **muchos datos**.
> **Ejemplo:** la regresión del flujo de login y compra del e-commerce, que se ejecuta en cada nueva versión, conviene automatizarla para ahorrar tiempo y asegurar consistencia.

**8.** El TDD es un método de desarrollo de software que se basa en: (A) declarar el diseño / (B) comportamiento / (C) Ambiente.

> [!success]- Respuesta
> La opción correcta es **(B) comportamiento**: el **TDD** (Test-Driven Development) se basa en escribir primero las pruebas que definen el comportamiento esperado y luego el código que las satisface.

---

## Testing ágil

**1.** ¿Qué definición es la de testing Ágil?

> [!success]- Respuesta
> El **testing ágil** es aquel en el que los testers están integrados como **miembros plenos del equipo de desarrollo** y participan en la planificación, estimación y todas las actividades del equipo, trabajando mano a mano con desarrollo y gestión del producto, a diferencia del QA tradicional donde las pruebas se realizan de forma separada.

**2.** Describa los cuadrantes de testing ágil.

> [!success]- Respuesta
> - **Cuadrante 1:** pruebas unitarias y de componente, que se buscan automatizar al máximo para dar confianza al equipo.
> - **Cuadrante 2:** pruebas que, sin ser unitarias, prueban el sistema a un nivel más técnico que las de un usuario final.
> - **Cuadrante 3:** pruebas manuales enfocadas en el negocio y con espíritu crítico, orientadas a descubrir información sobre la aplicación.
> - **Cuadrante 4:** pruebas de rendimiento y demás pruebas no funcionales necesarias (usabilidad, seguridad, estabilidad, etc.).

**3.** Describa las relaciones de equipo funcional versus un equipo ágil.

> [!success]- Respuesta
> **Equipo funcional (tradicional):** las pruebas se hacen de forma separada por grupos de QA, con interacciones limitadas y bien establecidas, y los requerimientos se reciben por adelantado.
> **Equipo ágil:** hay comunicación continua entre integrantes, todos tienen habilidades de probadores y se busca que cada miembro cumpla varios roles para eliminar la dependencia entre individuos, integrándose testing y desarrollo.

**4.** Proyectos tradicionales vs Proyectos ágiles.

> [!success]- Respuesta
> **Tradicionales:** los requerimientos del negocio se reciben completos por adelantado, las pruebas se planifican de forma separada y QA escribe el plan y los casos mientras desarrollo codifica.
> **Ágiles:** los requerimientos se escriben de a uno para dar espacio a cambios, los testers participan desde la planificación y estimación, y los desarrolladores toman la iniciativa en las pruebas a nivel de código mientras los testers se centran en el negocio.

---

## DevOps / DevSecOps

**1.** Según la práctica "Costo de automatizar el testing - DevOps", explique en no más de 3 líneas las ventajas de su propuesta.

> [!success]- Respuesta
> La propuesta reduce el **tiempo y el costo** de las pruebas al automatizar las actividades repetitivas, permite implementar el código en producción de forma más **rápida, automatizada y repetible**, y **libera a los testers** para enfocarse en pruebas más críticas, mejorando la calidad y disminuyendo el error humano.

**2.** Explique tecnologías que se pueden usar en un modelo DevSecOps.

> [!success]- Respuesta
> **DevSecOps** integra la seguridad desde el **principio del ciclo DevOps** y se apoya fuertemente en la automatización, de modo que todos los procesos de seguridad que se puedan automatizar (como las auditorías de seguridad) se automaticen.
> Se apoya en herramientas de **integración y entrega continua (CI/CD)**, automatización de pruebas y de auditorías de seguridad, y **monitoreo**, sumando análisis de seguridad automatizado dentro del pipeline de desarrollo.

---

## Estándares y modelos de madurez

**1.** Explique con un ejemplo una **Debilidad en la ISO/IEC 29119**.

> [!success]- Respuesta
> Entre sus debilidades está que **no es novedosa**, que puede resultar **extensa y burocrática**, que **no es vista como "ágil"** y que su aplicación implica excesiva adaptación, cambio cultural y costos, además de dudarse si aplica a cualquier contexto u organización.
> **Ejemplo:** en una startup pequeña que trabaja con Scrum, aplicar toda la documentación de procesos que exige la norma sería burocrático y costoso, frenando la agilidad del equipo.

**2.** "El TMMI se posiciona como un modelo complementario a CMMI" — **Verdadero / Falso**.

> [!success]- Respuesta
> **Verdadero.** La fundación TMMi desarrolló el marco como **guía complementaria a CMMi** para la mejora del proceso de prueba, aunque se usa con mayor frecuencia como modelo **independiente** (no es necesario usar CMMi para aplicar TMMi).

**3.** Según la práctica "Comparación de ISO 29119 y TMMI", describir los puntos comunes entre ambos modelos.

> [!success]- Respuesta
> Ambos buscan **mejorar y estandarizar el proceso de prueba a nivel organización**, elevando el testing a un asunto organizacional; se basan en **buenas prácticas reconocidas**, utilizan **niveles/etapas progresivas** de mejora y apuntan a aumentar la calidad del producto y la confianza en las pruebas mediante procesos sistemáticos y documentados.

**4.** Según la práctica "Establecer Línea Base de Testing (Plan de CM)", describí tu propuesta.

> [!success]- Respuesta
> La propuesta consiste en establecer una **línea base inicial al finalizar la etapa de diseño**, congelando los artefactos del proyecto (código, requisitos, casos de prueba, checklists, Plan de Calidad y Plan CM) bajo control de configuración según **IEEE 828**.
> A partir de ahí, todo cambio pasa por el **proceso formal de control de cambios** con sus auditorías por sprint, garantizando trazabilidad, integridad y reproducibilidad de cada versión del sistema e-commerce de EMPRESA.
