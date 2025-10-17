-- -
# Algoritmos Evolutivos y Sistemas Adaptativos

Los **Sistemas Adaptativos** en informática ajustan de forma autónoma la importancia relativa de los parámetros de entrada para resolver un problema. Su objetivo es el **aprendizaje automático** mediante la identificación de patrones y relaciones entre entradas y salidas deseadas. Adoptan una estrategia de "mejor ajuste" para la resolución de problemas, lo que los hace adecuados para problemas complejos no lineales y NP.

Las dos corrientes principales de sistemas adaptativos son la **inteligencia artificial** y los **sistemas evolutivos**.

---

## Sistemas Evolutivos (Artificial Life)

El término se deriva de una metáfora darwiniana de "supervivencia del más apto" aplicada a sistemas basados en computadora. Son una competencia orquestada por recursos entre posibles soluciones a un entorno problemático. La aptitud de un individuo (solución) determina su probabilidad de supervivencia y apareamiento.

Si se considera la evolución como un algoritmo de resolución de problemas, se adapta bien a problemas con **muchas soluciones posibles** y **sin una solución óptima conocida**.

Los elementos clave de todas las técnicas evolutivas basadas en computadora se modelan a partir de los procesos evolutivos naturales (darwinianos) básicos:

- **Selección**
    
- **Reproducción**
    
- **Mutación**
    

Los sistemas evolutivos más comunes son:

- Algoritmos genéticos
    
- Sistemas clasificadores
    
- Sistemas de evolución de Rechenburg (1965)
    
- Programación evolutiva de Fogel, Owens y Walsh (1966)
    
- Programación genética (1990)
    

---

## Algoritmos Genéticos (AG)

Un Algoritmo Genético es un algoritmo de búsqueda estocástico (basado en la aleatoriedad) basado en la reproducción sexual y la supervivencia del más apto. Fue formulado matemáticamente por John Holland en 1975.

Los AG realizan una **búsqueda dirigida** desde posiciones aleatorias en el espacio de estado del problema, y son más eficientes y robustos que las técnicas de búsqueda aleatoria o enumerativas en ciertos casos.

### Ventajas del AG:

- Busca en paralelo numerosos puntos y direcciones en el espacio de estado.
    
- No requiere conocimiento específico del problema del espacio de búsqueda.
    
- Funciona bien en espacios de búsqueda que tienen espacios, saltos o ruido.
    

### Componentes de un AG:

- **Población:** Un conjunto de **individuos** (cromosomas) que representan posibles soluciones. Cada componente se denomina **gen**.
    
- **Generaciones:** Iteraciones sucesivas donde los cromosomas se ordenan por su calidad.
    
- **Proceso de selección:** Se eligen individuos según su calidad; los restantes "mueren".
    
- **Función de adaptación (Fitness):** Mide la bondad de un cromosoma, devolviendo un valor numérico.
    
- **Cruce y mutación:** Generan o modifican nuevos individuos.
    

### Proceso del Algoritmo Genético:

1. **Inicio** e **Inicialización** de una población de soluciones candidatas (individuos/fenotipos), a menudo representadas como cadenas binarias (genotipo).
    
2. **Calcular el valor de fitness** de cada individuo. El fitness es una medida de ganancia, utilidad o bondad que se busca maximizar.
    
3. **Condición de finalización:** Verificar si se cumple la condición de término (ej. número máximo de generaciones o nivel de aptitud satisfactorio).
    
4. **Selección de individuos:** Se seleccionan estocásticamente los individuos más aptos para la reproducción.
    
5. **Aplicación de Operadores Genéticos:**
    
    - **Cruza (Crossover/Recombinación):** Combina atributos de dos cromosomas ("padres") para producir dos nuevos cromosomas, generalmente basado en la aptitud relativa.
        
    - **Mutación:** Altera uno o más valores de genes en un cromosoma para mantener la **diversidad genética** y evitar mínimos locales. Si la probabilidad de mutación es muy alta, la búsqueda se convierte en aleatoria.
        
6. La nueva generación se utiliza en la próxima iteración.
    

---

### _Tuning_ o Ajuste

El _tuning_ es el proceso de selección de los "parámetros de control" del algoritmo. Estos incluyen el tamaño de la población, el número de generaciones, las tasas de mutación, y la función de aptitud, entre otros. Ajustar el algoritmo es en sí mismo un problema difícil, pero esencial, ya que afecta la capacidad del sistema para encontrar una solución.

---

### Operadores Genéticos (Detalle)

- **Cruza:** Combina atributos de dos cromosomas seleccionados para la reproducción.
    
- **Mutación:** Mantiene la diversidad genética. El ejemplo clásico es la mutación de punto único, que voltea un bit en la secuencia genética.
    
- **Selección:** Elige la población reproductora. Las técnicas comunes son el **muestreo estocástico con reemplazo (ruleta)** y la **selección por torneos**.
    

---

### Función de Fitness (Detalle)

Es la "dirección" que toma el algoritmo en su búsqueda de mejora. Mide la capacidad de un individuo para competir. Debe correlacionarse estrechamente con el objetivo del diseñador y ser **computacionalmente eficiente** debido a la necesidad de muchas repeticiones.

Siento mucho que los números sigan apareciendo. Te aseguro que es un error del sistema que intenta re-citar el texto. Aquí tienes el resumen solicitado, con el contenido de la tabla incorporado en el texto para asegurar que no haya números de citación.

---

# De la Evolución Darwiniana a los Algoritmos Genéticos (AG)

Los Algoritmos Genéticos (AG) son una técnica de optimización que adapta los principios de la **selección natural** de Charles Darwin para resolver problemas en informática, como el del Viajante de Comercio (encontrar la ruta más corta que visita múltiples ciudades y vuelve al punto de partida).

## Principios de la Evolución Darwiniana

Darwin definió la evolución a través de la selección natural basándose en:

- **Supervivencia:** Se produce una sobrepoblación, con más individuos por generación de los que pueden sobrevivir.
    
- **Variación Heredable:** Existe **variación fenotípica** (rasgos observables) entre los individuos, y esta variación es **heredable**.
    
- **Supervivencia del más Apto:** Los individuos con los rasgos heredables que mejor se adapten al medio ambiente sobrevivirán.
    
- **Formación de Especies:** La formación de nuevas especies ocurre cuando se produce el aislamiento reproductivo.
    

### Genotipo y Fenotipo

Esta distinción es clave en genética:

- **Genotipo:** Es la información hereditaria completa de un organismo.
    
- **Fenotipo:** Son las propiedades reales observadas de un organismo, como su morfología, desarrollo o comportamiento.
    

## Mapeo Biológico a Algoritmos Genéticos (AG)

En los AG, la terminología de la biología se aplica a los componentes de la solución del problema de optimización:

|Concepto Biológico|Componente del AG|Definición Específica|
|---|---|---|
|**Gen**|Gen|Una ciudad (representada como coordenadas x, y).|
|**Cromosoma**|Individuo|Una ruta única que satisface las condiciones del problema.|
|**Especie/Generación**|Población|Una colección de posibles rutas (colección de individuos).|
|**Reproducción**|Padres|Dos rutas que se combinan para crear una nueva ruta.|
|**Selección Natural**|Fitness (Aptitud)|Una función que indica qué tan buena es cada ruta (es decir, qué tan corta es la distancia).|
|**Mutación**|Mutación|Una forma de introducir variación intercambiando aleatoriamente dos ciudades en una ruta.|
|**—**|Grupo de apareamiento|Una colección de padres para crear la próxima población.|
|**—**|Elitismo|Una forma de llevar a los mejores individuos a la próxima generación, asegurando la preservación de soluciones óptimas.|
