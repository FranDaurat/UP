-- -
# Ciclo de vida del software

## Modelos de ciclo de vida para el desarrollo

### Conceptos básicos (según el estándar 12207):

- **Ciclo de vida del software**: 
  - Periodo comprendido desde la definición de los requisitos hasta el fin del uso.
- **Procesos**: 
  - Actividades y tareas implicadas en el desarrollo, operación y mantenimiento de un sistema de software.

### Patrones básicos en la etapa de desarrollo:

- Desarrollo en **cascada** (o variante secuencial).
- Desarrollo en **espiral**.

### Patrones para el ciclo de vida después de la primera versión:

- Desarrollo **incremental** del sistema.
- Desarrollo **evolutivo** del sistema.

### Factores modificadores de los patrones:

- Prototipado.
- Concurrencia.
- Componentes comerciales y reutilización.

> Estos elementos generan modelos y submodelos de patrones, clasificados como "modelos de ciclos de vida".

![[Pasted image 20250314082131.png]]
-- -
## Lineal o Secuencial 

1. **Requisitos**  
2. **Diseño**  
3. **Codificación**  
4. **Pruebas**  
5. **Integración**  
6. **Operación y mantenimiento**  

- Modelo de desarrollo marcado por la **sucesión escalonada de etapas**:
  - Requisitos, diseño, codificación, pruebas e integración.
- Es necesario **terminar completamente cada etapa** para pasar a la siguiente.

### Características:
- Identificado desde los años 50.
- Modelo **rígido**, ya que cada fase requiere como entrada el resultado completo de la anterior.
- En la práctica, su rigidez puede generar problemas:
  - Difícil tener todos los requisitos o diseño completo al inicio.
  - Crea barreras que impiden avanzar.

### Casos donde es apropiado:
- **Nuevas versiones** de sistemas ya conocidos, donde no hay riesgos por desconocimiento de usuarios o entorno.
- **Sistemas pequeños**, sin previsión de evolución a corto plazo.

> Nota: Existe un modelo casi idéntico llamado "en cascada", que evita algunas de estas rigideces.
![[Pasted image 20250314084716.png]]
-- -
## Cascada
### Etapas del modelo en cascada:

1. **Requisitos**
2. **Diseño**
3. **Codificación**
4. **Pruebas**
5. **Integración**
6. **Operación y mantenimiento**

### Definición:
En 1970, **Winston Royce** definió flujos de retorno sobre el modelo secuencial, dando origen al modelo en **cascada**.

### Características:
- Refleja la necesidad de **volver atrás** durante el desarrollo cuando aparece nueva información.
- Acepta que, aunque el proceso avance fase por fase, es común tener que retornar a fases anteriores.
- Destaca la importancia de contar con **requisitos** y **diseño previos** antes de comenzar a codificar.
- Sin embargo, reconoce la dificultad de tener documentación completa desde el inicio, lo que puede convertirse en una **barrera para avanzar**.

### Representaciones gráficas del modelo:
- Un **flujo secuencial con posibilidad de retorno entre fases**.
- Un **flujo secuencial con retornos a cualquier fase previa**.

### Problemas habituales:
- Equipos que aplican cascada pueden caer en la tentación de **comenzar con el diseño o codificación sin requisitos completos**.
- Puede bloquear el avance si no se cuenta con documentación detallada desde el principio.

### Casos donde es apropiado:
- **Nuevas versiones** de sistemas veteranos, donde no hay incertidumbre en los requisitos.
- **Sistemas pequeños**, sin necesidad de evolución a corto plazo.

> **Nota**: Algunos textos llaman "cascada" al modelo lineal, y "cascada modificada" al modelo de cascada que permite estos retornos.

![[Pasted image 20250314084653.png]]
-- -
## Prototipo 
- Desechable 
- Evolutivo 
- Intenta resolver el problema del sistema de cascada y secuencial (El cliente no ve el sistema hasta el final de su creacion)
- Sirve para cuando el cliente no sabe lo que quiere o para cuando yo no entiendo del negocio.
- Es mas barato que ponerme a desarrollar de una el codigo sin saber bien a donde hay que llegar.
----
## Espiral

### Etapas o actividades del modelo en espiral:

1. **Determinación de objetivos, alternativas y restricciones.** (Planificacion)
2. **Análisis de riesgos.** 
3. **Desarrollo y verificación del siguiente nivel.** (Desarrollo)
4. **Planificación de las fases siguientes.** (Evaluacion del cliente)

### Definición:
- Modelo propuesto por **Boehm en 1988**, de carácter **evolutivo**, en contraste con los modelos lineales (cascada, secuencial).
- Incorpora de manera distintiva la actividad de **análisis de riesgos** para guiar el proceso de desarrollo.
- Se basa en **iteraciones** o ciclos (sentido horario), que al representarse gráficamente forman una espiral.

### Características:
- Cada vuelta a la espiral corresponde a una fase del desarrollo, y está dividida en cuatro tipos de actividades:
  1. **Planificación**.
  2. **Análisis de riesgos**.
  3. **Ingeniería** (análisis, diseño, codificación, etc.).
  4. **Evaluación**.

- En cada ciclo se realiza una parte del desarrollo total, incrementando poco a poco el sistema completo.
- **Cada vuelta** establece el contexto del desarrollo y decide qué parte se abordará en la siguiente.
- El **análisis de riesgos** ayuda a evaluar las alternativas posibles antes de avanzar.

### Flexibilidad del modelo:
- Permite combinar distintas fases en cada vuelta:
  - Puede enfocarse solo en **requisitos**, o **requisitos + diseño**, o bien en todo un subsistema completo (requisitos + diseño + codificación + pruebas + integración).
- Admite variaciones como:
  - Enfoque tipo **cascada** (si las vueltas siguen fases completas en orden).
  - Enfoque **incremental** (si cada vuelta desarrolla solo una parte del sistema).
  - Enfoque **espiral** propiamente dicho (si cada vuelta añade una mejora con análisis de riesgos previo).

### Reflexión:
- Aunque pueda parecer similar a otros modelos (como cascada o incremental), **la diferencia clave es la incorporación sistemática del análisis de riesgos**.
- La manera en que se planifiquen y ejecuten las fases determina si es realmente un **modelo en espiral** o no.

### Casos donde se usa:
- Proyectos grandes y complejos que requieren constante evaluación y ajuste.
- Cuando hay **incertidumbre alta** o **riesgos importantes** que evaluar antes de avanzar.

> **Nota**: La flexibilidad del espiral permite adaptarse a distintos tipos de desarrollo, por eso no siempre se usa igual y puede "parecer" otro modelo si no se identifican sus características distintivas.
---
## Incremental

### Definición:
- El **modelo incremental** mitiga la rigidez del modelo en cascada, **descomponiendo el desarrollo del sistema en partes (sub-sistemas)**.
- Cada sub-sistema sigue un ciclo de desarrollo (similar al modelo en cascada).
- Permite **entregas parciales y funcionales** en periodos cortos de tiempo.

### Ventajas del modelo incremental:

- ✅ El usuario dispone de **pequeños sub-sistemas operativos** que permiten **ajustar y entender mejor las necesidades reales** del sistema completo.
- ✅ Permite **entregas parciales** en menos tiempo que desarrollar todo el sistema de una vez.
- ✅ Facilita la **incorporación de nuevos requisitos** que no estaban disponibles o definidos al inicio del proyecto.

### Características adicionales:

- En la práctica, aunque gráficamente los sub-sistemas aparecen como desarrollados uno después del otro, **en realidad se pueden solapar en el tiempo** (trabajarse en paralelo o escalonados según convenga).
- Cada sub-sistema puede **comenzar cuando el anterior está finalizado o parcialmente avanzado**.

### Casos en los que es apropiado:

- Desarrollo de sistemas donde el **cliente necesita funcionalidad parcial disponible lo antes posible**, sin esperar al desarrollo completo del sistema.
- Sistemas donde, por contexto, **conviene obtener los requisitos de forma escalonada** a través de los sub-sistemas (cuando no se conocen todos los requisitos al inicio)

![[Pasted image 20250314091819.png]]
------ -
## Evolutivo

### Definición:
- Modelo compuesto por **varios ciclos de desarrollo**, donde **cada ciclo produce un sistema completo** que puede operar en su entorno.
- La **información acumulada en cada versión** se usa para **mejorar o ampliar los requisitos y el diseño** de las versiones siguientes.
- Se considera un **ciclo de vida común** a todos los sistemas desarrollados, que **evolucionan y mejoran a través de versiones sucesivas**.

### Características:
- Cada ciclo completo incluye:
  - **Requisitos → Diseño → Codificación → Pruebas → Integración → Operación y Mantenimiento**.
- La fase de operación del sistema actual **alimenta el desarrollo del siguiente** con nueva información.
- Aunque inicialmente contempla desarrollos internos en cascada, **también podría hacerse con desarrollos en espiral**.

### Casos en los que es apropiado:

- ✅ **Desconocimiento inicial** de todas las necesidades operativas (por ejemplo, sistemas nuevos que funcionarán en un entorno desconocido o sin experiencia previa).
- ✅ Necesidad de que el sistema esté operativo **en menos tiempo** que el requerido para un diseño exhaustivo.
- ✅ Desarrollo de sistemas en **entornos cambiantes**:
  - Normas legislativas.
  - Competencia.
  - Necesidad de mejora continua del producto.

 >Nota:
> - El modelo **permite adaptarse** a situaciones donde **no es posible definir todos los requisitos desde el inicio**.
> - Es ideal para productos que **necesitan salir pronto al mercado y luego mejorar** con el tiempo.

![[Pasted image 20250314093125.png]]
-- -
## Modelo Iterativo e Incremental (Proceso Unificado)

### Definición:
- Modelo conocido como **Proceso Unificado (UP, Unified Process)**.
- Propuesto por los autores de UML (Lenguaje Unificado de Modelado): 
  - **Ivar Jacobson, Grady Booch y James Rumbaugh**.
- Es un **proceso de desarrollo iterativo e incremental** centrado en arquitectura y casos de uso.

### Características principales:

- ✅ **Centrado en la arquitectura** del sistema.
- ✅ **Dirigido mediante los casos de uso**.
- ✅ **Iterativo e incremental**, integrando:
  - Ciclos.
  - Fases.
  - Flujos de trabajo.
  - Otros aspectos del proceso de desarrollo

### Fases del modelo:

1. **Inicio (Inception)**: Definición de los objetivos principales.
2. **Elaboración (Elaboration)**: Refinamiento de la arquitectura y del análisis.
3. **Construcción (Construction)**: Desarrollo y codificación del producto.
4. **Transición (Transition)**: Preparación para la entrega final y puesta en producción.

### Funcionamiento:

- El proceso se repite mediante **ciclos iterativos**, cada uno finalizando con una versión del producto lista para el cliente.
- Cada ciclo se divide en fases con **hitos (milestones)**:
  - Objetivos cumplidos.
  - Entrega de modelos, documentos o incrementos del sistema.
- Permite **dividir trabajos complejos** en partes más pequeñas y manejables.
- Integra diferentes disciplinas o flujos de trabajo, como:
  - Requisitos.
  - Análisis.
  - Diseño.
  - Implementación.
  - Pruebas.

### Beneficios:

- ✅ **Flexibilidad** para adaptarse a cambios.
- ✅ **Entrega continua de valor** al cliente mediante versiones parciales pero funcionales.
- ✅ Facilita la gestión de riesgos al dividir el desarrollo en etapas pequeñas.

![[Pasted image 20250314093830.png]]
**UML** (Lenguaje unificado de modelado)
**OMG** (Object Managment Group)
--- -
# Introducción a los modelos de ciclos de vida

### Metodologías Ágiles

- Los modelos tradicionales de ciclo de vida, como **cascada** o **evolutivo**, surgieron para asegurar una correcta planificación del proyecto y garantizar calidad si se aplicaban correctamente.
- Estaban pensados para **sistemas grandes**, con muchos recursos, equipos numerosos, y sistemas que durarían mucho tiempo en las organizaciones.

### Problemas de los modelos tradicionales:
- **Dificultad para aplicarse en proyectos pequeños o empresas chicas**.
- La **planificación y documentación** requerían más tiempo que la programación.
- **Falta de adaptación a entornos cambiantes**.
- **Rigidez** para incorporar modificaciones.

### Aparición de nuevos modelos:
- El **modelo iterativo e incremental** fue un avance hacia una nueva generación de ciclos de vida, más flexibles.

### Surgimiento de metodologías ágiles:
- En los años 90 comenzaron a surgir **métodos ágiles**, con enfoques iterativos, centrados en:
  - Generar software funcional rápidamente.
  - Acompañar el diseño y la documentación al desarrollo.

### Principales metodologías ágiles:

- **XP (Extreme Programming)** — Publicado por **Kent Beck**.
- **Scrum** — Publicado por **Ken Schwaber y Mike Beedle (2001)**.
- **Crystal Clear** — Publicado por **Alistair Cockburn y Jim Highsmith (2001)**.
- **Adaptive Software Development (ASD)** — Publicado por **Jennifer Stapleton (1997)**.
- **Feature Driven Development (FDD)** — Desarrollado por **Jeff De Luca**.

### El Manifiesto Ágil (2001):
- En **2001**, varios críticos de los modelos tradicionales se reunieron para proponer mejoras en los procesos de desarrollo.
- De esa reunión surgió el **Manifiesto Ágil**, que marcó un cambio importante en la forma de desarrollar software.

![[Pasted image 20250314105551.png]]
- El cliente y el equipo de desarrollo describen los escenarios para comprender las necesidades.
- Definen las historias de usuario a implementar en la entrega.
- Las historias se dividen en tareas.
- Se planifica la entrega.
- Se desarrolla el software.
- Se realizan pruebas.
- Se entrega el software al cliente.
- El cliente evalúa la entrega.
- Se repite el proceso seleccionando nuevas historias de usuario para la siguiente entrega.
-- -
## Scrum

- **Proceso ágil** que busca agregar valor al negocio en el menor tiempo posible.
- Favorece el **desarrollo iterativo e incremental**, mejorando proyectos y productos.
- Avanza mediante **ciclos de trabajo denominados sprints** (duración: 1 a 4 semanas).
- Cada sprint trabaja con una **lista priorizada de requisitos (pila de producto)**.
- El equipo se compromete a completar lo planificado en el sprint.
- Enfocado en la **gestión**, no en la "ingeniería".

### Roles en Scrum:

- **Product Owner (Dueño del Producto)**:
  - Administra el Product Backlog.
  - Define prioridades de las funcionalidades.
  - Asegura que el equipo agregue valor a la compañía.
  - Sus decisiones deben ser respetadas.

- **Equipo**:
  - Construye el producto mediante sprints.
  - Multidisciplinario (analistas, programadores, diseñadores, testers).
  - Autoorganizado (sin líder o jefe formal).
  - Compuesto idealmente por 7 personas, ± 2.

- **Scrum Master**:
  - Guía al equipo y la organización en Scrum.
  - No es jefe, sino facilitador del proceso.
  - Remueve impedimentos y promueve productividad y calidad.
  - **No puede ser la misma persona que el Product Owner**.

## Combinación de paradigmas y selección de modelo de ciclo de vida

- **No existe un único modelo mejor**: depende de las circunstancias y características del proyecto.
- Es posible **combinar modelos** según necesidad (ej.: espiral + cascada para desarrollo).
- Al iniciar un proyecto, quien lo dirige debe:
  - Analizar las circunstancias ambientales.
  - Diseñar el modelo específico de ciclo de vida.
  - Definir actividades sobre ese modelo.
  - Planificar la gestión del ciclo de vida del proyecto.

### Aspectos a considerar para elegir un modelo:

- Descomposición del sistema en subsistemas con entregas diferenciadas.
- Estabilidad esperada de los requisitos.
- Novedad de los procesos gestionados por el sistema en el entorno del cliente.
- Criticidad de agendas y presupuestos.
- Complejidad de la interfaz de operación y usabilidad.
- Conocimiento del entorno, componentes y herramientas disponibles.
- Riesgos del proyecto.
- Visibilidad del avance para el cliente.

> ⚠️ **Una mala elección del modelo de ciclo de vida puede llevar al fracaso del proyecto.**

- --
