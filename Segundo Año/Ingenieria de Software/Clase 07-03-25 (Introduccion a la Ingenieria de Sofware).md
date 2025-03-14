-- -
# Introducción a la Ingeniería del Software

## Definición de Ingeniería del Software

- **Parnas (1987)**: Construcción de un software multiversión realizada por múltiples personas.
- **Fritz Bauer**: Establecimiento y uso de principios de ingeniería robustos, orientados a obtener software económico, fiable y eficiente sobre máquinas reales.
- **Boehm**: Aplicación práctica del conocimiento científico al diseño y construcción de programas y documentación asociada, necesaria para desarrollar, operar y mantenerlos.
- **Fairley (1985)**: Disciplina tecnológica preocupada por la producción sistemática y el mantenimiento de productos de software desarrollados y modificados dentro de un tiempo y presupuesto definidos.

![[Pasted image 20250314162219.png]]

## ¿Qué es un producto?

No solo es el código objeto y el manual del usuario que se entrega al cliente, sino también los documentos asociados producidos durante el proceso de desarrollo del software, como:
- Requerimientos
- Diseño
- Código fuente
- Datos de prueba, etc.

## ¿Qué es el proceso?

El proceso es el que se usa para producir un producto de software a partir de los requerimientos del usuario.

## El rol del ingeniero de software

Idealmente, un buen ingeniero de software debe poseer:

1. Experiencia en programación y buen conocimiento de estructuras de datos.
2. Capacidad para traducir requerimientos y deseos vagos en una especificación clara y precisa.
3. Capacidad para conversar con el usuario del sistema en términos de la aplicación (no solo jerga técnica).
4. Habilidad para moverse en diferentes niveles de abstracción en las distintas etapas del proyecto.
5. Capacidad para construir y usar modelos de procesos y de datos.
6. Habilidad para la comunicación interpersonal y la administración del trabajo.
![[Pasted image 20250314163231.png]]
## ¿Qué es un sistema?

> "Colección de componentes organizados para cumplir una función o conjunto de funciones específicas".  
> *IEEE Standard 610.12-1990*

Un sistema está compuesto por:
- Sistema de Entrada
- Elementos del sistema (múltiples)
- Sistema de Salida

## ¿Qué es un Software?

El software es un sistema o sub-sistema formado por una colección de programas y documentación que, de forma conjunta, satisfacen determinados requisitos.

### Características:
- Puede ser un **sistema independiente** que realiza su objetivo en un ordenador (sistema intensivo de software).
- Puede ser parte de un sistema mayor, es decir, un **sub-sistema de software**.

### Ejemplo:
> El sistema de software de un avión de combate es en realidad un sub-sistema del software del avión.

![[Pasted image 20250314163441.png]]
## Calidad

### Definición:
La totalidad de características de un producto o servicio que se refieren a su habilidad para satisfacer necesidades establecidas o implícitas.

La calidad en el software depende del producto que estamos construyendo y del grado en que él posee la combinación deseada de atributos.

### Objetivo de la Ingeniería de Software:
Construir un producto de calidad.

### Puntos de vista de la calidad:
- **Desarrollador**: que el producto sea mantenible, portable, ...
- **Usuario**: que el producto sea confiable, fácil de usar, ...
- **Jefe de proyecto**: que el proceso sea productivo, fácil de controlar, ...

## Cualidades del Software

### Puntos de vista de las cualidades:
- **Usuario del software**: Confiable, eficiente, fácil de usar.
- **Productor del software**: Verificable, mantenible, portable, extensible.
- **Administrador del proyecto**: Productivo, controlable.

### Cualidades:

- **Correcto**: Un producto es *funcionalmente correcto* si se comporta de acuerdo a la especificación de funciones que debería proveer.

- **Confiable**: El software es confiable si el usuario puede depender de él. Formalmente, se define como la probabilidad de que opere correctamente dentro de un intervalo de tiempo especificado.

- **Robusto**: Se comporta razonablemente, incluso ante circunstancias no previstas. Ej.: No debe fallar si el usuario presiona una tecla errónea.

- **Eficiente**: Usa los recursos (tiempo, memoria) de forma económica.

- **Amigable**: Fácil de usar. No solo importa la interfaz, también la corrección y el rendimiento afectan la amigabilidad.

- **Verificable**: Sus propiedades (como corrección y rendimiento) pueden comprobarse fácilmente. Se facilita con diseño modular, buenas prácticas de codificación y lenguajes apropiados.

- **Mantenible**: Permite realizar modificaciones tras la entrega. Incluye:
  - **Correctivo**: Arreglar errores.
  - **Adaptativo**: Adaptarse a nuevos requerimientos.
  - **Perfectivo**: Mejoras.
  - **Reparable**: Fácil de reparar si tiene módulos bien diseñados.
  - **Evolutivo**: Permite agregar nuevas funciones o cambiar existentes.

- **Reusable**: Puede usarse en otros proyectos o contextos. Se aplica más a componentes que al producto completo. Requiere diseño previo pensando en la reutilización.

- **Portable**: Puede funcionar en diferentes ambientes (hardware, software, sistemas operativos).

- **Entendible**: Fácil de comprender internamente. Relacionada con la amigabilidad externa al usuario.

- **Interoperable**: Puede coexistir y cooperar con otros sistemas (por ejemplo, intercambiar datos).

- **Productivo**: Relacionado al proceso. Un proceso eficiente genera productos rápidamente. Herramientas y entornos de desarrollo aumentan la productividad.

- **Oportuno**: Se entrega a tiempo (timeliness). Requiere buena planificación, estimación y metas claras.

- **Visible**: Todos los pasos y el estado del desarrollo están documentados y accesibles para revisión externa.
-- - 
# Principios de Ingeniería del Software

### Rigor
Es el complemento necesario a la creatividad en cada actividad ingenieril.  
**Permite:**
- Desarrollar productos más confiables.
- Controlar los costos.
- Aumentar la credibilidad de los resultados.

Es una cualidad intuitiva que se puede aplicar en diferentes niveles.  
El nivel más alto es la **Formalidad**.

### Formalidad
- Requiere que el proceso de software (SW) sea conducido y evaluado por leyes matemáticas.
- Debe ser la base para la mecanización del proceso.
- Su uso en la programación aumenta la confiabilidad y verificabilidad de los productos de software.

### Separación de Responsabilidades
Permite tratar diferentes aspectos individuales de un problema, concentrándose en cada uno por separado.

### Modularidad
- Dividir un sistema complejo en partes más sencillas llamadas **módulos**.
- Permite aplicar la separación de responsabilidades en dos etapas:
  1. Cada módulo aislado.
  2. Relación entre módulos para integrarlos coherentemente.

**Estrategias:**
- **Descomposición**: Top Down.
- **Composición**: Bottom Up.
- **Entendimiento**: Modificabilidad.

> Para lograrlo, los módulos deben tener **alta cohesión** y **bajo acoplamiento**.

### Abstracción
Identificar los aspectos importantes de un fenómeno e ignorar los que no son relevantes para su comprensión.

### Anticipación al Cambio
Identificar necesidades de reparación o evolución de una aplicación a medida que surgen nuevos requerimientos o se modifican los existentes.  
Requiere herramientas para gestionar versiones y revisiones del software de forma controlada.

### Generalización
Descubrir un problema más general oculto detrás del que se está tratando.

### Incrementalidad
Dividir la aplicación en subconjuntos para:
- Desarrollarlos por partes.
- Entregar al usuario versiones parciales y recibir retroalimentación.
- Usar productos intermedios como **prototipos** del producto final.

### Revisión
Estos principios se aplican durante todo el proceso de desarrollo y evolución del software.  
Por su aplicabilidad general, son la **piedra angular** de la Ingeniería de Software, más allá de una fase específica del ciclo de vida.

## No Silver Bullet

Toda construcción de software involucra **tareas esenciales** y **tareas accidentales**.

### Tareas esenciales:
- Implican la modelización de **estructuras conceptuales complejas**, compuestas por entidades abstractas de software.

### Tareas accidentales:
- Representación de estas entidades abstractas en **lenguajes de programación**.
- Representación en **lenguajes de máquina** con limitaciones de espacio y velocidad.

### Recomendaciones:
- **Explorar el mercado masivo** para evitar construir algo que ya existe.
- Usar **prototipación rápida** como parte de la iteración planeada en el establecimiento de los requerimientos.
- Fomentar el **crecimiento orgánico del software**, agregando funciones al sistema conforme se prueban y usan.

### Importancia de los arquitectos de software:
> "La parte más difícil de construir un sistema es precisamente saber qué construir. Ninguna otra parte del trabajo conceptual es tan difícil como establecer los requerimientos técnicos detallados, incluyendo todas las interfaces con gente, máquinas, y otros sistemas." — *Fred Brooks*

### Conclusión:
> "Entonces la tarea más importante que el ingeniero de software hace para el cliente, es la extracción iterativa y el refinamiento de los requerimientos del producto." — *Fred Brooks*
