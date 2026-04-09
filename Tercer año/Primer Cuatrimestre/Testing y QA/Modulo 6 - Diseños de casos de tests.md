-- - 
# Estrategias y Diseño de Casos de Prueba de Software: Documento Informativo

## Resumen Ejecutivo

El diseño de pruebas de software es una actividad crítica orientada por la optimización de recursos, partiendo de la premisa de que cada ensayo consume tiempo y dinero. Dado que la prueba exhaustiva es técnicamente imposible, el objetivo estratégico es identificar la mayor cantidad de defectos mediante el menor número de ensayos posibles, asegurando que cada uno sea breve y tenga una alta probabilidad de hallar fallos no detectados previamente.

Este documento sintetiza las metodologías para el diseño de casos de prueba, clasificándolas en técnicas estáticas (analíticas) y dinámicas (experimentales). Mientras que las técnicas estáticas permiten una detección temprana de defectos mediante la revisión de código y modelos, las dinámicas validan el comportamiento del software en ejecución bajo enfoques de "caja blanca" (estructural) y "caja negra" (funcional). La eficacia del proceso depende de criterios de selección precisos, el uso de métricas de complejidad lógica y la aplicación de métodos probados como el análisis de clases de equivalencia y condiciones de borde.

--------------------------------------------------------------------------------

## 1. Fundamentos y Estrategia de Diseño

El diseño de pruebas se basa en la diferenciación de dos conceptos clave:

- **Condiciones de prueba:** Descripciones de situaciones ante las cuales el sistema debe responder.
- **Casos de prueba:** Lotes de datos específicos necesarios para que se manifieste una condición de prueba.

Un programa se considera correcto si la salida es precisa para todas las combinaciones de datos de entrada válidos. Sin embargo, ante la imposibilidad de realizar pruebas exhaustivas, la estrategia exige un **criterio de selección** riguroso: elegir el conjunto mínimo de casos que maximice la probabilidad de encontrar defectos.

--------------------------------------------------------------------------------

## 2. Técnicas de Pruebas Estáticas (Analíticas)

Estas técnicas consisten en analizar el producto para deducir su operación correcta sin necesidad de ejecutar el código.

### Análisis de Código Fuente

Actividad grupal para revisar algoritmos y detectar faltas. Se rige por principios como criticar el producto y no a la persona, buscando unificar y elevar el estilo de programación.

- **Recorridas (Walkthroughs):** Simulaciones de ejecución con pocas personas (máximo 2 horas). El autor explica el código y el secretario reporta los hallazgos. El foco es detectar, no corregir.
- **Inspecciones:** Examen formal utilizando listas de faltas comunes (check-lists) que dependen del lenguaje y la organización (ej. variables no inicializadas).

#### El Proceso de Inspección

1. **Planeación:** Selección del equipo y aseguramiento del material.
2. **Visión de Conjunto:** Presentación de los objetivos del programa.
3. **Preparación Individual:** Búsqueda de defectos de forma personal.
4. **Reunión de Inspección:** Dedicada exclusivamente a la detección de defectos.
5. **Corrección:** El autor subsana los fallos.
6. **Seguimiento:** El moderador evalúa si es necesaria una nueva inspección.

### Análisis Automatizado y Formal

- **Análisis Automatizado:** Herramientas que detectan anomalías sintácticas (instrucciones mal formadas o variables sin uso) y analizan el flujo de control sin ejecutar el programa.
- **Análisis Formal:** Intenta demostrar matemáticamente que el programa cumple con una especificación. Presenta objeciones como la alta complejidad matemática, la posibilidad de que la especificación misma sea incorrecta y la omisión de las limitaciones del hardware.

--------------------------------------------------------------------------------

## 3. Técnicas Dinámicas (Pruebas)

Consisten en experimentar con el comportamiento del producto para verificar si actúa según lo esperado.

### Prueba de Caja Blanca (Estructural)

Se basa en el conocimiento de la estructura interna del programa.

- **Objetivo:** Probar lo que el software _hace_ basándose en la implementación.
- **Riesgo:** Puede ignorar requerimientos no implementados por estar enfocada exclusivamente en el código existente.

### Prueba de Caja Negra (Funcional)

Se basa en los requerimientos y especificaciones sin conocer el contenido interno del módulo.

- **Objetivo:** Probar lo que el software _debería hacer_.
- **Ventaja:** No requiere acceso al código y se centra en la entrada/salida.

--------------------------------------------------------------------------------

## 4. Metodologías de Diseño de Caja Negra

Para optimizar las pruebas de caja negra, se utilizan técnicas que reducen el universo de datos:

|   |   |
|---|---|
|Técnica|Descripción|
|**Partición de Equivalencia**|Divide las condiciones de entrada en clases válidas e inválidas. Se asume que un valor representativo es equivalente a cualquier otro de su misma clase.|
|**Análisis de Condiciones de Borde**|Se enfoca en los extremos de los rangos o conjuntos. Los errores suelen ocurrir en los márgenes de las clases de equivalencia (mínimos, máximos y valores inmediatamente fuera de ellos).|
|**Conjetura de Errores (Error Guessing)**|Basada en la intuición y la experiencia sobre errores comunes en la organización o partes complejas del programa.|
|**Pairwise**|Busca identificar combinaciones de valores de entrada que sean equivalentes para reducir el costo combinatorio del testeo.|

--------------------------------------------------------------------------------

## 5. Complejidad Ciclomática

Es una métrica cuantitativa de la complejidad lógica de un programa, que determina el número de **caminos independientes** (aquellos que agregan una nueva condición o conjunto de sentencias).

Se puede calcular de tres formas:

1. Número de regiones del grafo de flujo.
2. V(g) = A - N + 2 (donde A es el número de aristas y N el de nodos).
3. V(g) = P + 1 (donde P es la cantidad de nodos de predicado o decisión).

--------------------------------------------------------------------------------

## 6. Comparativa: Técnicas Estáticas vs. Dinámicas

|   |   |   |
|---|---|---|
|Aspecto|Técnicas Estáticas|Técnicas Dinámicas|
|**Detección**|Efectivas en detección temprana.|Realistas, consideran el ambiente final.|
|**Alcance**|Verifican requisitos, diseño y código.|Verifican y validan funcionalidad y otros atributos.|
|**Limitaciones**|Sujetas a errores de razonamiento humano.|Atadas al contexto de ejecución; la generalidad no siempre es clara.|
|**Hardware**|No consideran el hardware ni software de base.|Consideran el ambiente real de uso.|
|**Efectividad**|Conclusiones de validez general.|Normalmente detectan un único error por prueba (colapsos).|

El documento concluye que el éxito en el control de calidad reside en la combinación equilibrada de ambos enfoques: la capacidad analítica y preventiva de las técnicas estáticas junto con la validación empírica y realista de las técnicas dinámicas.