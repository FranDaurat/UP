-- - 
# ¿Qué es modelado? ¿Por qué modelamos?

El **modelado** es la representación de una parte de la realidad creada para reflejar la apariencia y el comportamiento de lo que se desea modelar. Utiliza mecanismos de **abstracción** que destacan los detalles importantes mientras minimizan los irrelevantes.

Según **Alan Davis**, un modelo se emplea para responder a un conjunto bien definido de preguntas sobre la realidad modelada, considerando una **tolerancia adecuada** según el propósito establecido.

## Ejemplos de modelos
- Diagrama de clases
- Organigrama
- Informe estadistico
- Modelo de proceso de negocio

## Características de los modelos

- No son la realidad en sí, sino una representación de ella.  
- Siguen una **forma de construcción** específica.  
- Permiten **mostrar o predecir características** de la realidad modelada.  
- Son **más económicos** que usar la realidad misma.  

Trabajar con modelos permite **detectar errores tempranamente** y ajustar el diseño según sea necesario.  

## Modelado del negocio

El modelado del negocio describe los **procesos de una empresa** para comprender mejor su funcionamiento.  

Ayuda a realizar **recomendaciones** sobre informatización y a incorporar **nuevas funcionalidades** de manera eficiente.

Un negocio tiene varios **procesos de negocio** que llevan al funcionamiento completo del negocio.

## Diagrama de actividad

El **diagrama de actividad** modela procesos de negocio mostrando el comportamiento a alto nivel, sin profundizar en detalles internos. Es similar a un **diagrama de flujo**, pero permite representar **procesos en paralelo** y varios hilos en programas concurrentes.  

Este tipo de diagrama es útil para:  
- Describir **acciones y su impacto** en los objetos que actúan.  
- Mostrar cómo un **caso de uso** puede ejecutarse paso a paso.  
- Representar el funcionamiento de un dominio en términos de **roles, tareas y organización**.  
- Describir la **dinámica de procesos concurrentes**.  

## Elementos de un diagrama de actividad

### Estado inicial
- Representado por un **círculo completamente negro**.  
- Indica el **punto de partida** de una actividad.  

### Estado final
- Representado por un **círculo con un punto en el centro**.  
- Indica el **punto de finalización** de una actividad.  

### Actividad
- Una **acción que genera un cambio** en el sistema o devuelve un valor.  
- Se representa gráficamente como una **caja con extremos redondeados**.  

### Transición
- Muestra el **paso de una actividad a otra**.  
- Se grafica como una **línea con flecha** para indicar la dirección de ejecución.  
- Puede incluir una **condición de guarda** entre corchetes.  

### Decisión
- Representa la posibilidad de seguir **flujos alternativos**.  
- Se muestra como un **rombo** con una o más transiciones de entrada y dos o más salientes.  
- Cada salida debe tener una **condición de guarda** y ser **excluyente** entre sí.  
- El **rombo** se puede usar tambien para reunificar caminos.

## Barra de sincronización

La **barra de sincronización** permite manejar hilos paralelos de actividades en un diagrama de actividad. Se utiliza para:

### División (split)
- Representa una transición que se **divide en dos o más hilos paralelos**.  
- Visualmente, es una **línea recta** desde la cual salen múltiples flechas hacia actividades distintas.  
- Los hilos paralelos se unen generalmente en **nodos de sincronización**.  

### Unión (merge)
- Espera que todos los **hilos activos lleguen al nodo** antes de generar las transiciones salientes.  
- Se utiliza para **reunir hilos paralelos** en un solo punto.  

## Fortalezas y debilidades de los diagramas de actividad

### 💪 Fortalezas
- Permiten modelar el **comportamiento paralelo**, lo cual es útil para flujos de trabajo (**workflow**) y programación **multihilo (multi-thread)**.  

### 🚩 Debilidades
- No muestran de manera clara los **enlaces entre acciones y objetos**.  
- Para representar relaciones más detalladas entre elementos, es preferible usar el **diagrama de secuencia**.  

## BPM (Business Process Model)

El **Business Process Management (BPM)** es un enfoque sistemático para identificar, documentar, diseñar, ejecutar y controlar procesos manuales o automatizados, con el objetivo de alinear los resultados con la estrategia de la organización.  

### 💡 Ventajas del BPM:
- Acota los **requerimientos de negocio**, permitiendo que expertos modelen procesos mientras IT provee infraestructura.  
- Incrementa la **flexibilidad y agilidad corporativa** al separar la lógica de negocio de las reglas.  
- Reduce los **costos de desarrollo** al emplear lenguajes de programación gráfica de alto nivel.  
- Facilita la **definición, administración y ejecución de procesos** dentro de un contexto corporativo.  


## BPMN (Business Process Model and Notation)

El **BPMN** es una notación gráfica para modelar procesos de negocio, creada por el Grupo de Gestión de Procesos y adoptada por la **OMG (Object Management Group)** en 2004.  
Su objetivo es hacer comprensible el modelado tanto para profesionales de negocio como para ingenieros de software.  

### 🚀 Evolución:
- **BPMN 2.0** (2009):  
  - Amplió la notación gráfica para incluir **perspectivas de procesos** en varios niveles.  
  - Facilita la comprensión para distintos roles, desde analistas hasta responsables técnicos.  
  - Se destaca por ser **sencillo y accesible**, incluso para quienes no son expertos.  

### 📌 **Elementos gráficos de BPMN:**
1. **Elementos de flujo:** eventos, actividades y gateways.  
2. **Elementos de conexión:** flujo de secuencia, flujo de mensajes, asociaciones.  
3. **Contenedores:** piscinas (pools) y carriles (swimlanes).  
4. **Artefactos:** objetos de datos, anotaciones y agrupaciones.  

![[Pasted image 20250328085915.png]]
![[Pasted image 20250328085937.png]]

