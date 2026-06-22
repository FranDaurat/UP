# Parciales y Final — Testing y QA (2026-1C)

> [!tip] Cómo usar este archivo
> Leé cada consigna, respondela mentalmente o en voz alta, y recién después desplegá la caja **▸ Respuesta** para verificar. Las cajas están colapsadas por defecto.
>
> Cada caja muestra **tu respuesta del examen** y, cuando existe, la **corrección del profesor** (⚠️ / 🛑) o la verificación contra los módulos (✅). Las que dieron puntaje completo van marcadas ✅.

---

## Primer examen parcial — Nota: 10

> [!info] Sin correcciones del profesor.

**1.** Según la definición expresada en los contenidos de la materia, explicar, con un ejemplo, cada una de las etapas del Proceso de Administración de Configuración.

> [!success]- Respuesta
> La administración de configuración consiste en manejar los **CI (ítems de configuración)** y sus configuraciones. Se realiza mediante el uso de la herramienta Git para hacer un control de versiones. Durante este proceso los desarrolladores, el líder del proyecto y el **CM (Administrador de configuración)** trabajan sobre el GCS. Los desarrolladores presentan sus cambios y el **CCB** decide si aceptarlos o rechazarlos. Si estos son rechazados se les hace una devolución a los desarrolladores.

**2.** Expresar un ejemplo concreto y justificar la respuesta de uno de los problemas asociados a la calidad de software, expresado en los contenidos de la materia.

> [!success]- Respuesta
> Uno de los problemas asociados a la calidad del software es la **Ambigüedad**. Un ejemplo concreto puede ser cuando en los requisitos se solicita que el sistema debe ser "rápido". Esto presenta un problema ya que deja a libre interpretación de cada uno lo que es rápido o no. Como consecuencia el software puede presentar características distintas a las esperadas, reduciendo su calidad.

**3.** Expresar un ejemplo concreto del proceso de aseguramiento de calidad, describiendo todos los activos que se necesitan para definir un proceso, que haya sido mencionado en los contenidos de la materia.

> [!success]- Respuesta
> Ejemplo: se está desarrollando un módulo de login para una plataforma de cursos online. El **QA (Quality Assurance)** se asegura de que se estén siguiendo todos los procesos y estándares definidos en el plan de calidad y los requisitos, interviniendo si no es así. Si llegara a intervenir, los desarrolladores deberían corregir el código o sus procesos acorde al planteo del QA.

**4.** Según la definición expresada en los contenidos de la materia, explicar, con un ejemplo, la Auditoría de Configuración Funcional (FCA) en administración de configuración.

> [!success]- Respuesta
> La **auditoría de configuración funcional (FCA)** consiste en verificar que se implementaron correctamente las funcionalidades requeridas. Por ejemplo, si se quiere desarrollar un módulo de carrito que permita a los usuarios agregar y borrar productos, la auditoría tendría que demostrar que estas funcionalidades en verdad funcionan y van acordes al plan.

**5.** Explicar el uso de la Complejidad Ciclomática en el proceso de testing.

> [!success]- Respuesta
> La complejidad ciclomática se usa como una **métrica** que consiste en descubrir todos los caminos lógicos dentro del software con el fin de obtener el **número mínimo de casos de prueba** que se necesitan para recorrerlos y abarcarlos.

**6.** Definir qué es la técnica de Caja Negra, teniendo en cuenta lo aprendido hasta el momento en los contenidos de la materia.

> [!success]- Respuesta
> La técnica de **caja negra** consiste en probar el software desde afuera sin tener conocimiento del código fuente. Prueba lo que el software **debería hacer** y tiene que ser realizada por el mejor usuario.

**7.** Explicar la diferencia entre las definiciones de errores y fallas.

> [!success]- Respuesta
> Un **error** es la equivocación humana a la hora de escribir el código. En cambio una **falla** es la manifestación de ese error durante la ejecución del software.

**8.** Explicar la diferencia entre condición de prueba y caso de prueba, según lo visto en la materia.

> [!success]- Respuesta
> Una **condición de prueba** es la descripción de lo que se quiere probar del sistema bajo ciertas condiciones. En cambio un **caso de prueba** es cuando se lleva a cabo esa actividad con sus respectivos datos de entrada, su ambiente y registrando sus resultados.

**9.** Describir un ejemplo concreto donde se muestre el uso de control de calidad.

> [!success]- Respuesta
> Se desea desarrollar una plataforma de cursos online. El **QC (Quality Control)** debe verificar que el producto final/entregable cumpla con los requisitos definidos y vaya acorde al plan de calidad, respondiendo a la pregunta **¿Estoy construyendo el producto correcto?** A diferencia del **QA (Quality Assurance)**, que verifica que los procesos vayan acorde a lo especificado, respondiendo **¿Estoy construyendo correctamente el producto?**

**10.** Explicar el uso de clase de equivalencia en la selección de datos para los casos de prueba.

> [!success]- Respuesta
> El uso de **clase de equivalencia** consiste en agrupar en 2 clases los datos de entrada como **válidos e inválidos**. Su objetivo es reducir el número de casos de prueba necesarios, demostrando que si un valor de una clase es inválido, entonces todos los valores de esa clase también lo son, y viceversa.

---

## Segundo examen parcial — Nota: 7

> [!info] Correcciones marcadas en P4 y P8.

**1.** Explicar un ejemplo concreto del testing exploratorio.

> [!success]- Respuesta
> Ejemplo: se le asignan 30 minutos a un tester sin un objetivo definido para probar una aplicación de e-commerce. Durante ese tiempo el tester prueba agregar, borrar, modificar libros y así con todas las funcionalidades de la app buscando producir algún tipo de fallo.

**2.** Explicar con un ejemplo y desarrollar brevemente: ¿cuándo no se utilizaría la automatización de testing?

> [!success]- Respuesta
> No utilizaría la automatización en procesos que no se repiten constantemente o que requieran una prueba de **usabilidad o visibilidad**. Por ejemplo, no lo utilizaría para chequear cómo renderiza la aplicación vista desde un navegador.

**3.** Explicar, con un ejemplo, cómo hacer el proceso de prueba de una aplicación móvil.

> [!success]- Respuesta
> Abriría la aplicación en distintos dispositivos, con distintos sistemas operativos, para comprobar que abre correctamente sin inconvenientes. Me aseguraría de que haga un uso eficiente de la batería y que cada funcionalidad sea accesible sin problema.

**4.** Se revisa el modelo de contenido de la aplicación web para descubrir errores. (Verdadero / Falso)

> [!success]- Respuesta
> Tu respuesta: **Falso.**
> ⚠️ **Corrección — la correcta es Verdadero.** El Módulo 11 (Testing web y mobile), en la "Estrategia de pruebas web", lista como primer paso textual: *"Se revisa el modelo de contenido de la aplicación web para descubrir errores"*. La afirmación está tomada literal del material.

**5.** Según la práctica grupal realizada sobre la "Comparación de ISO 29119 y TMMI", describir los puntos comunes entre ambos modelos.

> [!success]- Respuesta
> Ambos consisten en implementar una serie de controles y procedimientos basados en normativas, que se centran en implementar procesos de prueba en toda la organización, asegurando la calidad en todo aspecto posible y reduciendo errores o fallas.

**6.** Según la práctica grupal realizada sobre "Establecer Línea Base de Testing (Plan de CM)", describir la propuesta.

> [!success]- Respuesta
> Establecería una línea base una vez terminada la etapa de diseño, congelando así el control de fuente y de configuraciones, basándome en la norma **IEEE 828**. Luego implementaría una serie de procesos para gestionar los cambios del código y de la configuración, manteniendo la integridad.

**7.** El TDD es un método de desarrollo de software que se basa en: (A) Ambiente / (B) Comportamiento / (C) Declarar el diseño.

> [!success]- Respuesta
> **B — Comportamiento.** El TDD (Test-Driven Development) escribe primero las pruebas que definen el comportamiento esperado y luego el código que las satisface.

**8.** Completar la fórmula de estimar testing propuesta en los contenidos de la materia. Costo de testing =

> [!success]- Respuesta
> Tu respuesta: **Costo de testing = (costo de desarrollo) / 3.**
> 🛑 **Corrección del profesor:** **Costo de testing = duración de testing × cantidad de tester × costo por día del personal.**
> (Confirmado en el Módulo 8. Lo que pusiste, *(duración desarrollo)/3*, es la fórmula de la **duración** de testing, no del **costo**.)

**9.** Explicar, con un ejemplo, una fortaleza en la ISO/IEC 29119.

> [!success]- Respuesta
> Una fortaleza podría ser haber implementado una prueba de **CI/CD** en la organización, para que antes de deployar el código en producción se pruebe que se implementará correctamente. Le ahorra a la empresa posibles problemas en producción, quejas y costos.

**10.** Explicar, con un ejemplo, cómo sería una Prueba de Aceptación del Usuario.

> [!success]- Respuesta
> La **prueba de aceptación del usuario** se realiza una vez terminado el software. El usuario verifica que cumple con todos sus requisitos y necesidades. Por ejemplo, en una plataforma de pedidos de comida el usuario verifica que le permite acceder a varios restaurantes y buscar por sus nombres, hacer pedidos, agregar/eliminar productos al carrito, y proceder con el pago sin inconvenientes. Esto le permite aceptarlo como última instancia.

---

## Examen final (consolidado)

> [!info] Las imágenes corresponden a dos versiones del final (numeraciones distintas). Acá están unificadas sin duplicados. Donde había puntaje visible se indica entre corchetes, y se marcan las correcciones verificadas contra los módulos.

**1.** Generar el plan de administración de configuración / plan de Testing para el siguiente enunciado, con todas las secciones del plan. **Enunciado:** una empresa va a liberar la versión 3.0 de su aplicación de gestión de inventario. Incluye una refactorización completa del módulo de Cálculo de Impuestos y la integración de una nueva API de terceros para geolocalización de almacenes. Sos el Líder de Testing del proyecto v3.0; las fases de Prueba de Integración y Prueba de Aceptación del Usuario están por comenzar. Es fundamental asegurar la trazabilidad y consistencia. [Plan de CM: 0/1]

> [!success]- Respuesta
> Según el Módulo 4, un plan de administración de configuración (**IEEE 828**) se organiza en capítulos que debían figurar:
> 1. **Definición de los ítems de configuración (CI)** y el esquema formal para identificarlos.
> 2. **Roles y responsabilidades** de las actividades de GCS (CM, líder de proyecto, desarrolladores, QA, CCB).
> 3. **Políticas** de administración de configuración.
> 4. **Herramientas a utilizar** y el proceso de uso (control de cambios vía RFC, control de versiones).
> 5. **Definición de la base de configuración (línea base)** para registrar la información.
>
> Además correspone incluir las **auditorías** (FCA funcional / PCA física) y el **control de interfaces críticas** (la nueva API de geolocalización y el módulo de impuestos).

**2.** Exprese por medio de ejemplos el concepto de Quality Assurance.

> [!success]- Respuesta
> El **Quality Assurance** es el conjunto de actividades sistemáticas que buscan darle al proceso de software la capacidad de producir un producto adecuado para el uso. *(Se enfoca en el proceso: ¿estoy construyendo correctamente el producto?)*

**3.** Exprese por medio de ejemplos el concepto de Quality Control.

> [!success]- Respuesta
> El **Quality Control** es la evaluación independiente de la capacidad del proceso de software para producir un producto usable. Su objetivo es **verificar el producto final/entregable**. *(¿Estoy construyendo el producto correcto?)*

**4.** ¿Cuáles son los seis principios que son esenciales al adoptar DevOps?

> [!success]- Respuesta
> 1. Acción centrada en el cliente.
> 2. Responsabilidad de extremo a extremo.
> 3. Mejora continua.
> 4. Automatizar todo.
> 5. Trabajar con un solo equipo.
> 6. Monitorear y probar todo.

**5.** Explique con un ejemplo el análisis de puntos de casos de prueba (Test Case Point — TCP).

> [!success]- Respuesta
> *(Respuesta correcta — Módulo 8.)* El **análisis de puntos de casos de prueba (TCP)** es un enfoque para hacer una estimación precisa de los proyectos de pruebas funcionales. Enfatiza los factores clave que determinan la complejidad de todo el ciclo de prueba y permite traducir los esfuerzos de creación de pruebas a esfuerzos de ejecución, muy útil para estimar pruebas de regresión. Sigue un proceso de **7 pasos**: (1) identificar casos de uso, (2) identificar casos de prueba, (3) determinar TCP para la generación de casos de prueba, (4) para la automatización, (5) para la ejecución manual, (6) para la ejecución automatizada y (7) calcular el TCP total. En cada etapa se clasifican los casos en **simples, promedio y complejos** y se aplica:
> `puntos = (Nº simples × 6) + (Nº promedio × 8) + (Nº complejos × 12)`
> El total es `TCP-T = TCP-G + TCP-A + TCP-ME + TCP-AE`, indicativo del tamaño del proyecto de prueba.
> **Ejemplo:** para un módulo de login con 5 casos simples, 3 promedio y 2 complejos, el TCP de generación sería `(5×6)+(3×8)+(2×12) = 30+24+24 = 78` puntos, luego ajustados por un factor según la complejidad del dominio y el lenguaje.

**6.** Exprese por medio de ejemplos la diferencia de Error y Defecto.

> [!success]- Respuesta
> *(Respuesta correcta — Módulo 5, diagrama "Errores, defectos y fallas".)* Un **error** es la equivocación humana del programador al escribir el código; los errores se manifiestan como defectos. Un **defecto (bug)** es ese error ya plasmado en el código o producto, y se observa como una **falla** al ejecutar. La cadena es: **error (humano) → defecto (en el código) → falla (efecto externo al ejecutar)**.
> **Ejemplo:** el desarrollador escribe un `>` donde iba `>=` (error). Ese código queda mal escrito en el sistema (defecto). Cuando un usuario carga el valor límite, la app rechaza una compra válida (falla).

**7.** Realizar los 5 porqués de la NC descripta a continuación para encontrar la causa del problema. **NC:** La organización solo reacciona a los incidentes y no lleva a cabo el análisis de la causa raíz (RCA) para identificar y eliminar problemas recurrentes o subyacentes. El mismo incidente de alto impacto ocurre repetidamente sin que se tomen medidas permanentes.

> [!success]- Respuesta
> **Problema (síntoma):** reaccionamos a los incidentes pero el mismo problema de alto impacto vuelve a ocurrir sin medidas permanentes.
> 1. ¿Por qué vuelve a ocurrir? → Porque solo arreglamos lo superficial (la reacción) y no hacemos un análisis de causa raíz (RCA) para entender el origen.
> 2. ¿Por qué no se analiza? → Porque no existe un procedimiento definido.
> 3. ¿Por qué no existe procedimiento? → Porque no está documentado en el proceso de calidad.
> 4. ¿Por qué no está documentado? → Porque no se implementó una mejora de procesos.
> 5. ¿Por qué no se implementó? → **Falta de gestión de calidad continua.** (Como no se puede mostrar el impacto económico de la repetición, la prevención no es vista como una inversión necesaria.)

**8.** Explicar brevemente la diferencia entre TMMi y la ISO 29119. ¿Por qué TMMi es un modelo para la "mejora de procesos de pruebas" e ISO 29119 un modelo "basado en contenido" o "estándar"? [1/2 en una versión]

> [!success]- Respuesta
> Tu respuesta: TMMi es un modelo para la mejora de procesos de pruebas e ISO 29119 es un modelo basado en contenido o estándar.
> ⚠️ **Corrección del profesor:** "La respuesta aborda la idea correcta sobre la ISO 29119 (que es una norma que se debe seguir), pero es muy incompleta y no explica la diferencia fundamental con TMMi. **TMMi se centra en el crecimiento organizacional** (¿Qué tan bien lo estamos haciendo y cómo mejoramos?), e **ISO 29119 se centra en la normalización técnica** (¿Cómo debemos documentar y ejecutar cada prueba?)."
> **Refuerzo (Módulo 13):** TMMi es un modelo de **madurez por etapas** (como CMMi) que evalúa y mejora el proceso de prueba de la organización nivel por nivel; ISO/IEC 29119 es un **estándar internacional** que normaliza el contenido (procesos, documentación y técnicas de testing).

**9.** ¿Podrían TMMi e ISO 29119 ser utilizados de forma complementaria? Si es así, proporcioná un ejemplo de cómo una organización podría aplicar ambos.

> [!success]- Respuesta
> Sí, podrían aplicarse de forma complementaria. El **TMMi** es un modelo de madurez para evaluar y mejorar procesos de prueba; la **ISO/IEC 29119** aporta estándares, técnicas y enfoque organizacional para la gestión del testing. **Ejemplo:** una organización puede usar la ISO 29119 para definir estándares de testing y TMMi para medir y mejorar el nivel de madurez del proceso.

**10.** Explique si la expresión es verdadera o falsa y justifique: "los estándares de calidad del proceso para sistemas críticos deben requerir una especificación completa y aprobada antes de que comience la implementación". [1/1]

> [!success]- Respuesta
> **Verdadero**, justificado. ✅ *(Punto obtenido completo.)* En sistemas críticos la especificación debe estar completa y aprobada antes de implementar, para garantizar la calidad del proceso.

**11.** Explique si la expresión es verdadera o falsa y justifique: "Para mantener la calidad de software es importante seleccionar un modelo de calidad que no permita la administrar los atributos en el proceso de desarrollo".

> [!success]- Respuesta
> **Falso**, porque la calidad depende del proceso y debe poder adaptarse a distintos contextos y ciclos de vida (modelos como TMMi son genéricos y aplicables a distintos entornos). Es preferible **administrar** los atributos durante el desarrollo, no impedirlo. ✅
> ✅ **Verificado:** el Módulo 2 dice textual: *"Para mantener la calidad de software es importante seleccionar un modelo de calidad que **permita** la administrar los atributos en el proceso de desarrollo"*. La afirmación del examen estaba **invertida** ("que no permita"), por lo que **Falso** es la respuesta correcta.

**12.** Generar un Checklist de revisión del siguiente requerimiento usando solo una pregunta por cada criterio: Lenguaje, Ambigüedad y Conciso, como el aplicado en clase. **Requerimiento:** Diseñar un sistema de riego automático para un jardín promedio de una casa en una zona con clima templado. Considerar la eficiencia del agua y el costo, y proponer una solución que se pueda instalar fácilmente. La presentación final debe incluir un diagrama, un presupuesto detallado y una breve justificación de por qué tu diseño es superior a los métodos de riego manual tradicionales. [0/1]

> [!success]- Respuesta
> Tu respuesta (incompleta): Lenguaje → ¿usa términos claros y comprensibles para todos los interesados? Ambigüedad → ¿evita interpretaciones múltiples sobre cómo debe funcionar el sistema? (Conciso: faltó.)
> ⚠️ **Corrección [0/1]:** faltó la tercera pregunta (criterio **Conciso**). Según el Módulo 2, un checklist eficiente debe ser **conciso y preciso** (no más de una página), **completo**, **genérico** y **consistente**. Las tres preguntas debían ser, una por criterio:
> - **Lenguaje:** ¿El requerimiento usa términos claros y comprensibles para todos los interesados?
> - **Ambigüedad:** ¿Evita interpretaciones múltiples sobre cómo debe funcionar el sistema (qué significa "jardín promedio", "fácil de instalar", "clima templado")?
> - **Conciso:** ¿Expresa lo necesario sin información redundante ni rodeos?

**13.** Definir la diferencia de Error guessing y Pairwise.

> [!success]- Respuesta
> Tu respuesta: ambas son técnicas de diseño de prueba de **caja negra** (se basan en la experiencia y los datos sin mirar el código interno).
> ⚠️ **Corrección (Módulo 6):** aunque las dos son de caja negra, **no son lo mismo**.
> - **Error guessing:** se basa en la intuición o experiencia sobre errores comunes en la organización (la historia de defectos ayuda mucho). Ejemplos típicos: listas o valores vacíos, cero, números negativos, valores con significado cultural u organizacional.
> - **Pairwise:** intenta encontrar "clases de equivalencia" de conjuntos de valores. Como la combinatoria de todas las entradas es muy costosa, en lugar de probar todas las combinaciones prueba **todas las combinaciones de a pares**, reduciendo la cantidad de casos.
>
> La respuesta original las agrupó sin marcar esta diferencia, por eso quedaba incompleta.

**14.** Explicar cada herramienta propuesta en la práctica de DevSecOps que cubra todo el ciclo.

> [!success]- Respuesta
> **CI/CD (integración continua / despliegue continuo):** gestionan y automatizan el flujo de trabajo, desde que el código se escribe hasta que se despliega.
> *(Se continúa con el resto de herramientas por etapa del ciclo: repositorios y control de versiones, contenedores y orquestación, seguridad de aplicaciones/contenedores para análisis automatizado de vulnerabilidades, y monitoreo para vigilancia continua del sistema.)*

**15.** Realizar los Casos de Prueba y lote de datos según la imagen adjunta (formulario "Crear Comunidad" con campos Nombre, CUIT, Tipo de Comunidad, Calle, Número, Código Postal, Provincia, Localidad/Barrio) como se aplicó en clase.

> [!success]- Respuesta
> Se diseñan los casos de prueba con dos ideas:
> 1. **Clases de equivalencia:** agrupar los datos en válidos (lo que el sistema debería aceptar) e inválidos (lo que debería rechazar).
> 2. **Análisis de borde:** probar justo los límites (mínimo, máximo), donde más fallan los programas.
>
> **Caso de prueba:** registro de nueva comunidad. **Objetivo:** garantizar que solo se puedan crear comunidades con datos que cumplan estrictamente las reglas (longitud de nombre, formato de CUIT, número de calle). Ej. campo Nombre (alfanumérico, 3–50 caracteres): probar 2 (inválido por mínimo), 3 (válido), 50 (válido), 51 (inválido por máximo), vacío (inválido).

**16.** Realizar los Casos de Prueba y lote de datos según la imagen adjunta (pantalla de login con Correo Electrónico, Contraseña, botón Ingresar y acceso con Google) como se aplicó en clase.

> [!success]- Respuesta
> **Caso de prueba:** verificar acceso al sistema con credenciales válidas.
> **Lote de datos:**
> - usuario válido + contraseña válida → acceso permitido.
> - usuario válido + contraseña incorrecta → acceso denegado.
> - usuario vacío → error de validación.

---

> [!note] Cobertura
> Primer Parcial (10, nota 10) + Segundo Parcial (10, nota 7 — correcciones en P4 y P8) + Final consolidado (16 únicas, dos versiones unificadas). Correcciones del profe marcadas ⚠️/🛑 y verificaciones ✅ dentro de cada caja.
