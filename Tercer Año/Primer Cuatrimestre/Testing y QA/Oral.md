-- -
# Defensa TP – Testing y QA (Grupo 8)

## La cadena (columna vertebral)
EMPRESA: empresa mediana (~10 desarrolladores) que hacía software financiero y decide crear una plataforma de e-commerce de libros. No tiene proceso formal de QA. De ese problema baja todo:

1. Como no hay proceso de QA, se eligen los productos de calidad y se arma el **Plan de Calidad** (P1).
2. Del Plan de Calidad se deriva la **checklist** para verificar criterios (P2).
3. La checklist detecta las **fallas en el proceso de pago**; se aplican herramientas de gestión para hallar la causa raíz (P3).
4. Se arma el **Plan CM** para control de versiones, cambios y línea base (P4).
5. Se diseñan los **casos de prueba** sobre las historias críticas (P5).
6. Se define la **estrategia de testing** para el despliegue (P6).
7. Se formaliza en el **Plan de Testing** (P7).
8. Se suman las técnicas ágiles **TDD/BDD/ATDD** (P8).
9. Se agrega la **automatización con herramientas DevSecOps** (P9).
10. Se cierra comparando todo contra la norma **ISO/IEC 29119** (P10).

**Reflejo clave:** ante cualquier "¿por qué hicieron X?", la respuesta arranca casi siempre en las características de EMPRESA o en lo que produjo la parte anterior.

## Parte por parte
## Defensa TP – Testing y QA (Grupo 8)

**Contexto general:** El trabajo construye, parte por parte, todo el sistema de control de calidad para EMPRESA, una compañía ficticia que vende libros por internet. La empresa no tenía ningún proceso formal de QA y arrastraba defectos y retrabajos, así que fuimos armando el control de calidad desde cero. Cada entrega se apoya en la anterior, de modo que al final todo queda encadenado: del plan de calidad sale la checklist, de los problemas detectados salen los casos de prueba, de los casos sale la estrategia, y así hasta el cierre con la norma internacional.

**P1 – Productos de QA:** Seleccionamos y justificamos los documentos de calidad que necesitaba la empresa, según el ciclo de vida tradicional: especificación de requisitos, matriz de trazabilidad, documento de arquitectura, plan de calidad, plan de testing, plan de control de versiones (CM) y métricas de calidad. El plan de calidad es el producto central, porque de ahí arranca todo lo demás: define estándares, procedimientos y criterios.

**P2 – Checklist:** Es una herramienta práctica que se desprende del plan de calidad. Es una lista de verificación para chequear de forma sistemática que el sistema cumpla con los atributos de calidad: funcionalidad, usabilidad, seguridad y performance. Está organizada en columnas: categoría, actividad o proceso, criterio de evaluación, control a realizar, nivel de criticidad y cumplimiento. La criticidad se marca con colores: Alta en rojo (crítico, afecta el funcionamiento o la experiencia del usuario), Media en amarillo, Baja en verde. Los ítems salen de las historias de usuario, no se inventan. El campo de cumplimiento permite registrar si cada criterio se cumple, no se cumple o no aplica. Detectamos gracias a esto que habia problemas en el proceso de pago.

**P3 – Herramientas de gestión de calidad:** Aplicamos varias técnicas para analizar por qué fallaba el proceso de pago: brainstorming, diagrama de Ishikawa (causa-efecto), los 5 por qué, Pareto, 5W2H y el ciclo PDCA. Todas apuntadas al mismo problema. La conclusión fue que la causa raíz era doble: falta de definición clara de los requisitos y ausencia de prácticas formales de QA. O sea, el fallo de pago era un síntoma, no la enfermedad.

**P4 – Plan de Control de Versiones (CM, IEEE 828):** Aplicamos un plan para el control de versiones, cambios y línea base del software. Definimos roles (Administrador de CM, el comité de control de cambios o CCB, etc.), el flujo para pedir un cambio mediante una solicitud formal (RFC) gestionada en Jira, y la organización del repositorio en GitHub con ramas (feature → develop → main). La línea base inicial se establece al terminar el análisis y diseño, o sea cuando los requisitos quedan congelados y aprobados.

**P5 – Casos de prueba (Módulo 6):** Diseñamos las pruebas sobre las tres historias más críticas: login, carrito y confirmación de compra. Usamos tres técnicas: clases de equivalencia (separar entradas válidas e inválidas), análisis de valores límite o de borde (probar el mínimo, el medio y el máximo) y el resultado esperado de cada caso. Por ultimo estas técnicas sirven para decidir qué entradas conviene probar y verifican el comportamiento del sistema, pero no definen las reglas del negocio; esas reglas vienen de la especificación de requisitos, que es de donde sale qué resultado debería dar cada caso.

**P6 – Estrategia de testing (Módulo 7):** Definimos cómo íbamos a probar todo de cara al despliegue, en seis niveles: pruebas unitarias, de integración, no funcionales, de aceptación, de regresión y por tipo de sistema. Para la integración elegimos un enfoque Bottom-Up, es decir, empezar por los módulos más simples y estables e ir sumando hacia arriba; la ventaja es que no necesita "simuladores" (stubs) y detecta temprano errores en las conexiones entre módulos. El orden fue: Inventario y Catálogo, después Carrito, después Login y por último Pagos. Para la prueba final elegimos prueba beta, hecha por usuarios reales; descartamos la alfa porque la hace el propio equipo de desarrollo y no aporta la mirada del usuario, y la prueba en paralelo no aplica porque no hay un sistema anterior al que reemplazar.

**P7 – Plan de Testing (IEEE 829):** Formaliza y pasa en limpio la estrategia de la P6, sumándole los principios ágiles del Módulo 9. Define qué se prueba, cómo, quién y cuándo, más los criterios para aceptar o frenar la actividad. Incluye los elementos a evaluar (los módulos con su criticidad), los criterios de entrada y de salida, el cronograma (9 semanas con sprints de 2), los recursos, los riesgos (analizados como riesgo, efecto, acción preventiva y acción correctiva) y las aprobaciones necesarias. Por ejemplo, un criterio de salida es que el 100% de los casos críticos estén ejecutados sin defectos pendientes.

**P8 – Testing ágil:** Sumamos las tres prácticas modernas. TDD: escribir la prueba antes que el código. BDD: escribir escenarios en lenguaje natural (Dado-Cuando-Entonces) con mirada de negocio, usando una herramienta como Cucumber. ATDD: acordar los criterios de aceptación de antemano entre negocio, desarrollo y testing. Mostramos una demostración de TDD con JUnit sobre el módulo de pagos, siguiendo el ciclo Rojo-Verde-Refactor: primero la prueba falla (rojo), después se escribe el código mínimo para que pase (verde) y por último se mejora el código sin romper nada (refactor).

**P9 – Costo de automatizar / DevSecOps:** Definimos las etapas y herramientas para automatizar. Integración y entrega continua con GitHub y Actions; pruebas de punta a punta con Cypress; seguridad con Fortify y OWASP ZAP; performance y monitoreo con LoadRunner y Datadog. Cypress no se eligió a dedo: usamos el método AHP para compararlo contra Selenium y Tricentis Tosca y justificar la decisión con criterios. Se automatiza el 100% de los casos de criticidad Alta más las pruebas rápidas de sanidad (sanity).

**P10 – Norma ISO/IEC 29119:** Es una norma internacional de testing desarrollada en conjunto por ISO e IEEE. Tiene 5 partes: definiciones, procesos, documentación, técnicas y pruebas basadas en palabras clave. Su enfoque es estructurado, orientado a procesos y pensado a nivel organizacional. Su debilidad es que es extensa y burocrática, y por eso a veces no se la percibe como ágil. La reflexión final del trabajo: la esencia del testing no cambió (siempre busca reducir riesgos, dar confianza y verificar que el sistema se comporta como debe); lo que cambió es el cómo y el cuándo, pasando de algo secuencial y muy documentado a algo iterativo, colaborativo y automatizado.

## Datos duros (memoria pura)
- **Estándares:** IEEE 828 (Plan CM) · IEEE 729 (Plan de Testing) · ISO/IEC 29119 (5 partes).
- **TDD:** RED → GREEN → REFACTOR.
- **Integración:** Bottom-Up. **Tipo de sistema:** beta.

## Los dos puntos que más se confunden
**Auditorías (P4) — ambas post-desarrollo:**
- **FCA (funcional):** verifica que lo construido **cumple los requisitos** (historias de usuario). Se hace **al final de cada sprint**.
- **PCA (física):** verifica que el producto **corresponde con la documentación técnica**. Se hace **antes de cada release a producción**.
- Truco: funcional = ¿hace lo que se pidió? · física = ¿código y doc coinciden?
- Responsable: Administrador de Configuración con el Líder de Proyecto.

**Dos circuitos distintos del Plan CM (no confundir):**
- **Auditorías (FCA/PCA):** verifican conformidad. NO modifican la línea base.
- **Control de cambios:** una **RFC** la evalúa el **CCB**; si la aprueba, se modifica la línea base. Ese es el único mecanismo que cambia la línea base.
- No los encadenes como causa-efecto: la auditoría dice "conforme / no conforme"; el control de cambios dice "se aprueba / no se aprueba modificar".

## Aclaraciones para no meter la pata
- En P1 NO se descartaron los otros productos: el Plan de Calidad es solo el punto de entrada.
- La **matriz de trazabilidad** se seleccionó en P1 pero **no se desarrolló como documento** en ninguna entrega. El concepto aparece implícito en P5 (cada caso ligado a una historia), pero no hay una matriz armada. Si la piden, decir eso; no inventar que existe.

Eso es todo lo que necesitás. Pegalo en Obsidian y esta noche probá contarlo de memoria sin mirar; donde te trabes, ahí mirás.
p;0o987ytrfty89