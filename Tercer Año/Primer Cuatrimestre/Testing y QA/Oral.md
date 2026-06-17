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
- **P1 – Productos de QA:** se seleccionan y justifican varios productos (especificación de requisitos, matriz de trazabilidad, documento de arquitectura, plan de calidad, plan de testing, plan de CM, métricas). "Producto" = documento/artefacto que genera QA, no funcionalidad del sistema. El **Plan de Calidad es el producto central** desde el que arranca todo; los demás se desarrollan en partes siguientes (NO se descartaron).
- **P2 – Checklist:** herramienta práctica derivada del Plan de Calidad. Verifica atributos (funcionalidad, usabilidad, seguridad, performance). Columnas: categoría, actividad, criterio, control, criticidad (Alta rojo / Media amarillo / Baja verde), cumplimiento. Los ítems salen de las historias de usuario, no se inventan.
- **P3 – Herramientas de gestión (Módulo 3):** brainstorming, Ishikawa (causa-efecto), 5 por qué, Pareto, 5W2H, PDCA. Todas aplicadas al problema del pago. **Causa raíz: falta de definición de requisitos y de prácticas formales de QA.**
- **P4 – Plan CM (IEEE 828):** NO es estrategia de testing; es control de versiones, cambios y línea base. Roles (Admin CM, CCB, etc.), flujo de cambios por RFC en Jira, repo GitHub (feature → develop → main), línea base inicial al terminar análisis y diseño.
- **P5 – Casos de prueba (Módulo 6):** 3 historias críticas (login, carrito, confirmar compra). Técnicas: clases de equivalencia (válida/inválida), análisis de borde (mín/medio/máx), resultado esperado. Equivalencia y borde **verifican comportamiento, no definen reglas** (las reglas vienen de la especificación).
- **P6 – Estrategia de testing (Módulo 7):** 6 niveles (unitarias, integración, no funcionales, aceptación, regresión, por tipo de sistema). **Bottom-Up** (empieza por lo estable, sin stubs). **Prueba beta** (alfa la hace el propio equipo, paralela no aplica sin sistema anterior).
- **P7 – Plan de Testing (IEEE 729):** formaliza la P6 + principios ágiles (Módulo 9). Define qué/cómo/quién/cuándo y criterios de aceptación o parada. Incluye elementos a evaluar, criterios entrada/salida, cronograma (9 semanas, sprints de 2), recursos, riesgos (riesgo–efecto–acción preventiva–correctiva), aprobaciones.
- **P8 – Testing ágil:** TDD (prueba antes que código), BDD (escenarios Dado-Cuando-Entonces, mirada de negocio, Cucumber), ATDD (criterios de aceptación acordados antes con negocio/dev/tester). Demo de TDD con JUnit sobre el módulo de pagos, ciclo **RED-GREEN-REFACTOR**.
- **P9 – Costo de automatizar / DevSecOps:** etapas y herramientas — CI/CD (GitHub Enterprise + Actions), testing E2E (Cypress), seguridad (Fortify SAST + OWASP ZAP), performance y monitoreo (LoadRunner + Datadog). Cypress se eligió con **AHP** vs Selenium y Tricentis Tosca. Se automatiza el 100% de los casos de criticidad Alta + sanity.
- **P10 – ISO/IEC 29119:** desarrollada por ISO e IEEE. **5 partes:** definiciones, procesos, documentación, técnicas, pruebas basadas en palabras clave. Enfoque estructurado, orientado a procesos, a nivel organizacional. Debilidad: extensa, burocrática, "no se la ve como ágil". Reflexión: la **esencia no cambió** (reducir riesgos, dar confianza, verificar comportamiento); cambió el **cómo y el cuándo** (de secuencial y documentado a iterativo, colaborativo y automatizado).

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