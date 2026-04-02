-- -

## Resumen Ejecutivo

El testing de software se define como un proceso crítico y sistemático destinado a minimizar el riesgo de fallos tras la liberación de un producto. Lejos de ser una actividad periférica, el testing es una parte integral del ciclo de vida del desarrollo de software que busca identificar discrepancias entre el comportamiento esperado y el real del sistema. Este documento sintetiza los principios fundamentales, los axiomas operativos y los modelos de ciclo de vida necesarios para una gestión de calidad efectiva. Los puntos clave incluyen la distinción crítica entre verificación y validación, la implementación de estrategias basadas en "oráculos" para determinar resultados esperados y el reconocimiento de que, aunque el testing no garantiza la ausencia total de errores, es la herramienta principal para evaluar y mejorar la calidad del producto.

--------------------------------------------------------------------------------

## 1. Definiciones y Conceptos Fundamentales

Según los estándares de la IEEE, el testing es el proceso de operar un sistema o componente bajo condiciones determinadas, observando y registrando los resultados para elaborar una evaluación y devolución de los mismos.

### Verificación vs. Validación

Una distinción fundamental en la ingeniería de software radica en estos dos conceptos:

- **Verificación:** Responde a la pregunta "¿Estoy construyendo correctamente el producto?". Se enfoca en asegurar que el software cumple con las especificaciones técnicas.
- **Validación:** Responde a la pregunta "¿Estoy construyendo el producto correcto?". Se centra en asegurar que el producto satisface las necesidades y expectativas del usuario final.

### Objetivos de la Verificación y Validación (V&V)

1. **Descubrimiento de defectos:** Para su posterior corrección.
2. **Provocación de fallas:** Como método para detectar defectos ocultos.
3. **Revisión de productos:** Evaluación directa de los componentes.
4. **Evaluación de la calidad:** Proporcionar una visión clara del estado del software.

--------------------------------------------------------------------------------

## 2. Axiomas del Testing

La práctica del testing se rige por 13 principios o axiomas fundamentales que definen su naturaleza y limitaciones:

|   |   |   |
|---|---|---|
|#|Axioma|Descripción Clave|
|1|El software siempre se testea|Es una etapa ineludible.|
|2|El buen caso de prueba es el que falla|Su éxito radica en demostrar que el programa no funciona.|
|3|El fin del testing es incierto|Es extremadamente difícil determinar cuándo dejar de testear.|
|4|Imposibilidad del autotesteo|Uno no puede testear su propio código de manera objetiva.|
|5|El resultado esperado es ineludible|No hay test válido sin un resultado previsto para comparar.|
|6|Reproducibilidad|El test debe poder repetirse bajo las mismas condiciones.|
|7|Condiciones válidas e inválidas|Se deben probar tanto escenarios normales como de error.|
|8|Inspección total|Todos los resultados del testeo deben ser revisados.|
|9|Probabilidad decreciente|A medida que avanza el testeo, la probabilidad de hallar nuevos errores baja.|
|10|Caja Blanca|El mejor programador debe realizar el testeo de caja blanca.|
|11|Caja Negra|El mejor usuario debe realizar el testeo de caja negra.|
|12|Integración|El testing es parte intrínseca del proceso de desarrollo.|
|13|No modificación por testeo|Nunca se altera un programa solo para facilitar su prueba.|

--------------------------------------------------------------------------------

## 3. Dinámica de Errores, Defectos y Fallas

El proceso de testing identifica una cadena causal entre la acción humana y el comportamiento del sistema:

- **Errores:** Acciones humanas que se manifiestan como defectos.
- **Defectos (Bugs):** Imperfecciones en el código o ambiente inesperado.
- **Fallas:** La manifestación física u observable del defecto durante la ejecución (efecto externo).
- **Incidentes:** Eventos que ocurren al ejecutar casos de prueba que requieren análisis para determinar si son fallas.

**Procesos de Gestión:**

- **Identificación de defectos:** Proceso para determinar qué defecto específico causó una falla.
- **Corrección de defectos:** Proceso de cambiar el sistema para remover los defectos identificados.

--------------------------------------------------------------------------------

## 4. El Proceso de Prueba y Casos de Uso

Un sistema de pruebas robusto requiere la interacción de cuatro componentes principales:

1. **Equipo de pruebas:** Diseña, configura y da soporte.
2. **Entorno de pruebas:** Proporciona la plataforma de operación.
3. **Procesos de prueba:** Determinan el uso del entorno y los recursos.
4. **Recursos de prueba:** Herramientas y elementos utilizados según los procesos.

### Estrategia y el "Oráculo"

La estrategia de prueba toma los requerimientos y el componente a probar para generar **Casos de Prueba**. Estos casos se alimentan a dos vertientes:

- **El Oráculo:** Determina el **Resultado Esperado**.
- **La Prueba:** Ejecuta el componente para obtener un **Resultado Obtenido**.
- **Comparación:** El resultado de la prueba surge de contrastar lo obtenido contra lo esperado por el oráculo.

### Ejemplo Práctico: Clasificación de Triángulos

Para un programa que lee tres lados y determina el tipo de triángulo, se deben diseñar casos que cubran todas las respuestas posibles:

- **Inválido (Error):** Lados (0, 1, 0).
- **Isósceles:** Lados (2, 2, 3).
- **Escaleno:** Lados (2, 3, 4).
- **Equilátero:** Lados (2, 2, 2).

--------------------------------------------------------------------------------

## 5. Modelos de Ciclo de Vida y Testing

El testing se adapta a diversas metodologías de desarrollo, integrándose en diferentes etapas:

### Modelo V

Estructura una relación simétrica entre las fases de desarrollo y las fases de prueba:

- **Desarrollo (Equipo de Desarrollo):** Requerimientos de usuario, Requerimientos de SW, Diseño de alto nivel, Diseño de bajo nivel, Codificación.
- **Testing (Equipo de QC):** Pruebas Unitarias, Pruebas de Integración, Pruebas de Sistema, Pruebas de Rendimiento, Pruebas de Aceptación de Usuario (UAT).

### Otros Modelos

- **Modelo de Prototipo:** El cliente prueba maquetas de forma iterativa (Escuchar al cliente -> Construir/Revisar maqueta -> El cliente prueba).
- **Modelo en Espiral:** Integra pruebas unitarias, de integración y de sistema en ciclos progresivos de rediseño y desarrollo.
- **Modelo Incremental:** Divide el proyecto en entregas funcionales, donde cada incremento pasa por análisis, diseño, codificación y pruebas.
- **RUP (Rational Unified Process):** Define roles específicos como el _Tester_ (implementa y ejecuta suites de prueba) y el _Test Analyst_ (identifica ideas de prueba y determina resultados basados en la arquitectura y casos de uso).

--------------------------------------------------------------------------------

## 6. Conclusiones sobre la Eficacia del Testeo

El análisis de datos demuestra que el porcentaje de defectos detectados aumenta significativamente durante los primeros ensayos, pero tiende a estabilizarse. Esto refuerza el axioma de que es difícil determinar el punto exacto de finalización. La calidad no se "añade" al final, sino que se evalúa constantemente mediante la planificación, el diseño de pruebas, la ejecución, la evaluación de resultados y el análisis de errores para retroalimentar el desarrollo con acciones preventivas y mejoras de procesos.