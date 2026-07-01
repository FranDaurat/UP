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

>[!success]- Respuesta
> Ambos son marcos que buscan estandarizar y mejorar el proceso de testing a nivel organizacional, llevándolo de una práctica informal a un proceso disciplinado y basado en procesos, con enfoque a riesgos y mejora continua de la calidad, independientemente de la metodología de desarrollo.

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
> 
> 1. **Definir los ítems de configuración (CI)**
> 2. Asignar **Roles y responsabilidades** para las actividades de GCS.
> 3. Establecer **Políticas** de administración de configuración para el control de cambios.
> 4. Definir las **Herramientas a utilizar** y el proceso de uso (control de cambios vía RFC, control de versiones).
> 5. **Definición de la base de configuración (línea base)** para registrar la información.
>
> Además correspone incluir las **auditorías** (FCA funcional / PCA física) y el **control de interfaces críticas** (la nueva API de geolocalización y el módulo de impuestos).

**2.** Exprese por medio de ejemplos el concepto de Quality Assurance.

> [!success]- Respuesta
> El **Quality Assurance** se asegira que se estan siguiendo todos los pasos correctos para hacer el trabajo. Un ejemplo seria asegurarse que se esta siguiendo el estandar iso/iec 29119 *(Se enfoca en el proceso: ¿estoy construyendo correctamente el producto?)*

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
>Se utiliza determinar cuanto tiempo y trabajo nos llevara probar el software, determinando que tan complicadas son las pruebas que hay que hacer. Por ejemplo, si se prueba un modulo de login y hay cinco casos de prueba simples, tres promedio y 2 complejos, el TCP calcularia con esos valores una formula para determinar los puntos y asi determinar la complejidad del testing a realizar.

**6.** Exprese por medio de ejemplos la diferencia de Error y Defecto.

> [!success]- Respuesta
>Un **error** es la **equivocación** humana que comete el programador al escribir el código. Un **defecto** es ese error ya **plasmado** en el código, que queda ahí escrito de forma estática.

**7.** Realizar los 5 porqués de la NC descripta a continuación para encontrar la causa del problema. **NC:** La organización solo reacciona a los incidentes y no lleva a cabo el análisis de la causa raíz (RCA) para identificar y eliminar problemas recurrentes o subyacentes. El mismo incidente de alto impacto ocurre repetidamente sin que se tomen medidas permanentes.

> [!success]- Respuesta
> **Problema (síntoma):** reaccionamos a los incidentes pero el mismo problema de alto impacto vuelve a ocurrir sin medidas permanentes.
> 1. ¿Por qué vuelve a ocurrir? → Porque solo arreglamos lo superficial (la reacción) y no hacemos un análisis de causa raíz (RCA) para entender el origen.
> 2. ¿Por qué no se analiza? → Porque no existe un procedimiento definido.
> 3. ¿Por qué no existe procedimiento? → Porque no está documentado en el plan de calidad.
> 4. ¿Por qué no está documentado? → Porque no se implementó una mejora de procesos.
> 5. ¿Por qué no se implementó? → **Falta de gestión de calidad continua.** 


**8.** Explicar brevemente la diferencia entre TMMi y la ISO 29119. ¿Por qué TMMi es un modelo para la "mejora de procesos de pruebas" e ISO 29119 un modelo "basado en contenido" o "estándar"? 

> [!success]- Respuesta
> TMMi evalua que tan bien se testea la organización y marca un camino para ir mejorando ese proceso por niveles, del más caótico al más optimizado (responde "¿qué tan buenos somos y cómo mejoramos?"). La ISO 29119 es un estándar que te dice cómo hay que hacer y documentar las pruebas, sin medir tu madurez ni hacerte crecer (responde "¿cómo documentamos y ejecutamos cada prueba?"). Por eso TMMi es mejora de procesos y la 29119 es contenido o estándar.

**9.** ¿Podrían TMMi e ISO 29119 ser utilizados de forma complementaria? Si es así, proporcioná un ejemplo de cómo una organización podría aplicar ambos.

> [!success]- Respuesta
> Sí, podrían aplicarse de forma complementaria. El **TMMi** es un modelo de madurez para evaluar y mejorar procesos de prueba; la **ISO/IEC 29119** aporta estándares, técnicas y enfoque organizacional para la gestión del testing. **Ejemplo:** una organización puede usar la ISO 29119 para definir estándares de testing y TMMi para medir y mejorar el nivel de madurez del proceso.

**10.** Explique si la expresión es verdadera o falsa y justifique: "los estándares de calidad del proceso para sistemas críticos deben requerir una especificación completa y aprobada antes de que comience la implementación". [1/1]

> [!success]- Respuesta
> **Verdadero**. En sistemas críticos la especificación debe estar completa y aprobada antes de implementar, para garantizar la calidad del proceso.

**11.** Explique si la expresión es verdadera o falsa y justifique: "Para mantener la calidad de software es importante seleccionar un modelo de calidad que no permita la administrar los atributos en el proceso de desarrollo".

> [!success]- Respuesta
> **Falso**, porque la calidad depende del proceso y debe poder adaptarse a distintos contextos y ciclos de vida. Es preferible **administrar** los atributos durante el desarrollo, no impedirlo. 


**12.** Generar un Checklist de revisión del siguiente requerimiento usando solo una pregunta por cada criterio: Lenguaje, Ambigüedad y Conciso, como el aplicado en clase. **Requerimiento:** Diseñar un sistema de riego automático para un jardín promedio de una casa en una zona con clima templado. Considerar la eficiencia del agua y el costo, y proponer una solución que se pueda instalar fácilmente. La presentación final debe incluir un diagrama, un presupuesto detallado y una breve justificación de por qué tu diseño es superior a los métodos de riego manual tradicionales. [0/1]

> [!success]- Respuesta
> - **Lenguaje:** ¿El requerimiento usa términos claros y comprensibles para todos los interesados?
> - **Ambigüedad:** ¿Evita interpretaciones múltiples sobre cómo debe funcionar el sistema (qué significa "jardín promedio", "fácil de instalar", "clima templado")?
> - **Conciso:** ¿Expresa lo necesario sin información redundante ni rodeos?

**13.** Definir la diferencia de Error guessing y Pairwise.

> [!success]- Respuesta
> **Error guessing** se basa en la experiencia sobre errores comunes en la organizació mientras que **Pairwise** intenta encontrar "clases de equivalencia" de conjuntos de valores. Como la combinatoria de todas las entradas es muy costosa, en lugar de probar todas las combinaciones prueba **todas las combinaciones de a pares**, reduciendo la cantidad de casos.

**14.** Explicar cada herramienta propuesta en la práctica de DevSecOps que cubra todo el ciclo.

> [!success]- Respuesta
> - CI/CD automatizan el flujo desde que se escribe el código hasta que se despliega. Los repositorios y control de versiones guardan el código y permiten volver atrás si algo se rompe (github / gitlab). 
> - Los contenedores y la orquestación empaquetan la app para que corra igual en cualquier lado (docker / dockerhub).
> - Las herramientas de seguridad revisan automáticamente el código en busca de vulnerabilidades tanto de manera dinamica como estatica. (OWASP ZAP / Fortify) 
> - Y el monitoreo vigila el sistema ya desplegado para detectar fallas a tiempo. (New relic / datadog)

**15.** Realizar los Casos de Prueba y lote de datos según la imagen adjunta (formulario "Crear Comunidad" con campos Nombre, CUIT, Tipo de Comunidad, Calle, Número, Código Postal, Provincia, Localidad/Barrio) como se aplicó en clase.

> [!success]- Respuesta
> ## Casos de Prueba – Formulario "Crear Comunidad"
> - **CP1 – Alta válida:** Completar todos los campos con datos válidos y guardar → Comunidad creada.
> - **CP2 – Nombre vacío:** Dejar Nombre en blanco, resto válido → Error: campo obligatorio.
> - **CP3 – CUIT con formato incorrecto:** Ingresar CUIT sin formato válido → Error: formato de CUIT inválido.
> - **CP4 – Número no numérico:** Ingresar texto en el campo Número → Error: solo valores numéricos.
> - **CP5 – Código Postal longitud inválida:** Ingresar CP con menos dígitos de los requeridos → Error: CP inválido.
> - **CP6 – Provincia no seleccionada:** Dejar Provincia sin seleccionar → Error: campo obligatorio.
> - **CP7 – Campos en límite máximo:** Completar los campos con la cantidad máxima de caracteres permitida → Comunidad creada (borde).
> - **CP8 – Caracteres especiales en Nombre:** Ingresar Nombre con caracteres especiales → Según regla de validación.
>
> ## Lote de Datos de Prueba
> - **Caso 1 – Válido:** Nombre: Lectores del Sur / CUIT: 30-71234567-8 / Tipo: Club de lectura / Calle: Av. Libertador / Número: 1450 / CP: 1640 / Provincia: Buenos Aires / Localidad: San Isidro → Comunidad creada
> - **Caso 2 – Nombre vacío:** Nombre: / CUIT: 30-71234567-8 / Tipo: Editorial / Calle: Corrientes / Número: 800 / CP: 1043 / Provincia: CABA / Localidad: Balvanera → Error: campo obligatorio
> - **Caso 3 – CUIT con formato incorrecto:** Nombre: Libros Norte / CUIT: 1234 / Tipo: Biblioteca / Calle: San Martín / Número: 250 / CP: 5000 / Provincia: Córdoba / Localidad: Centro → Error: formato de CUIT inválido
> - **Caso 4 – Número no numérico:** Nombre: Páginas Abiertas / CUIT: 33-69876543-9 / Tipo: Club de lectura / Calle: Mitre / Número: abc / CP: 2000 / Provincia: Santa Fe / Localidad: Rosario → Error: solo valores numéricos
> - **Caso 5 – Código Postal longitud inválida:** Nombre: Letras Vivas / CUIT: 30-70011223-4 / Tipo: Editorial / Calle: Belgrano / Número: 120 / CP: 99 / Provincia: Mendoza / Localidad: Godoy Cruz → Error: CP inválido
> - **Caso 6 – Provincia no seleccionada:** Nombre: Comunidad Lectora / CUIT: 30-71234567-8 / Tipo: Biblioteca / Calle: Rivadavia / Número: 3000 / CP: 1424 / Provincia: / Localidad: Caballito → Error: campo obligatorio
> - **Caso 7 – Campos en límite máximo:** Nombre: Asociación Cultural de Lectores Independientes Argentinos / CUIT: 30-71234567-8 / Tipo: Editorial / Calle: Avenida de los Constituyentes / Número: 99999 / CP: 9999 / Provincia: Tierra del Fuego / Localidad: Ushuaia → Comunidad creada (borde)
> - **Caso 8 – Caracteres especiales en Nombre:** Nombre: Lectores #@! del Este / CUIT: 30-71234567-8 / Tipo: Club de lectura / Calle: Sarmiento / Número: 45 / CP: 1870 / Provincia: Buenos Aires / Localidad: Avellaneda → Según regla de validación

**16.** Realizar los Casos de Prueba y lote de datos según la imagen adjunta (pantalla de login con Correo Electrónico, Contraseña, botón Ingresar y acceso con Google) como se aplicó en clase.

> [!success]- Respuesta
> ## Casos de Prueba – Pantalla de Login
> - **CP1 – Login válido:** Ingresar email y contraseña válidos y presionar Ingresar → Acceso exitoso, redirige al inicio.
> - **CP2 – Email vacío:** Dejar email en blanco, contraseña válida, presionar Ingresar → Error: campo obligatorio.
> - **CP3 – Contraseña vacía:** Email válido, contraseña en blanco, presionar Ingresar → Error: campo obligatorio.
> - **CP4 – Ambos campos vacíos:** Dejar email y contraseña en blanco, presionar Ingresar → Error: campos obligatorios.
> - **CP5 – Email con formato inválido:** Ingresar email sin formato válido, contraseña válida → Error: formato de email inválido.
> - **CP6 – Contraseña incorrecta:** Email válido con contraseña errónea → Error: credenciales inválidas.
> - **CP7 – Usuario inexistente:** Email no registrado, contraseña cualquiera → Error: credenciales inválidas.
> - **CP8 – Acceso con Google válido:** Presionar "Acceso con Google" y autenticar cuenta válida → Acceso exitoso vía Google.
> - **CP9 – Acceso con Google cancelado:** Presionar "Acceso con Google" y cancelar la autenticación → Permanece en login sin acceder.
>
> ## Lote de Datos de Prueba
> - **D1:** Email: cliente@correo.com / Contraseña: Libro1234 → Acceso exitoso.
> - **D2:** Email: (vacío) / Contraseña: Libro1234 → Error: campo obligatorio.
> - **D3:** Email: cliente@correo.com / Contraseña: (vacío) → Error: campo obligatorio.
> - **D4:** Email: (vacío) / Contraseña: (vacío) → Error: campos obligatorios.
> - **D5:** Email: cliente.correo.com / Contraseña: Libro1234 → Error: formato de email inválido.
> - **D6:** Email: cliente@correo.com / Contraseña: Wrong000 → Error: credenciales inválidas.
> - **D7:** Email: nadie@correo.com / Contraseña: Libro1234 → Error: credenciales inválidas.
> - **D8:** Cuenta Google: cliente@gmail.com (autenticación válida) → Acceso exitoso vía Google.
> - **D9:** Cuenta Google: autenticación cancelada → Permanece en login.

---

> [!note] Cobertura
> Primer Parcial (10, nota 10) + Segundo Parcial (10, nota 7 — correcciones en P4 y P8) + Final consolidado (16 únicas, dos versiones unificadas). Correcciones del profe marcadas ⚠️/🛑 y verificaciones ✅ dentro de cada caja.
