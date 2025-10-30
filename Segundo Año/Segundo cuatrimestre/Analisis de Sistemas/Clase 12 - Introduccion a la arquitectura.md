-- -
**Introducción a la Arquitectura de Software**

La **arquitectura de software** es el conjunto de estructuras del sistema. Comprende los elementos de software, sus propiedades externamente visibles y las relaciones entre ellos. Solo se ocupa del lado público de las interfaces, ya que los detalles de implementación no son arquitectónicos.

- **Importancia:** La arquitectura es un **vehículo de comunicación** y un lenguaje común entre los _stakeholders_. Provee un **blueprint técnico** para la construcción y análisis del sistema. Es el producto de las decisiones iniciales de diseño, las cuales definen los **atributos de calidad**.
    
- **Rol del Arquitecto:** Actúa como un **puente** entre las necesidades del negocio y el sistema. Su función es traducir los requerimientos de usuario en arquitecturas de alta calidad que cumplan los objetivos.
    

---

**Estilo Arquitectónico**

Un **estilo arquitectónico** es una descripción de elementos y tipos de relaciones, junto con un conjunto de restricciones sobre cómo pueden ser utilizados. Los sistemas complejos suelen combinar múltiples estilos.

- **Características de un Estilo:**
    
    - Define un conjunto de **elementos** (componentes, procesos, módulos).
        
    - Define un conjunto de **tipos de conectores** (call, event, pipe).
        
    - Define la **topología** (distribución de elementos).
        
    - Establece **restricciones** sobre la topología y el comportamiento.
        
    - Proporciona una descripción de los **costos y beneficios** (trade-offs).
        

---

**Atributos de Calidad (Requerimientos No Funcionales)**

Los **atributos de calidad** son propiedades medibles utilizadas para indicar qué tan bien el sistema satisface las necesidades de los interesados. Son el principal insumo del arquitecto.

|**Atributo**|**Definición y Métricas**|
|---|---|
|**Performance**|Respuesta del sistema en un intervalo de tiempo. Se mide en **latencia** y **throughput**.|
|**Reliability**|Habilidad de continuar operando de forma esperada sin fallar.|
|**Availability**|Proporción de tiempo en que el sistema está funcional.|
|**Security**|Capacidad de reducir las chances de acciones maliciosas o accidentales.|
|**Usability**|Intuición de uso, diseño orientado al usuario y accesibilidad.|
|**Reusability**|Probabilidad de reutilización de componentes con poco o ningún cambio.|
|**Maintainability**|Habilidad para manejar cambios con facilidad.|
|**Interoperability**|Habilidad de operar comunicándose con otros sistemas externos.|
|**Scalability**|Habilidad de manejar un aumento de carga sin afectar el _performance_.|
|**Testability**|Aptitud de los componentes para crear y ejecutar criterios de _test_.|

---

**Calidad y Vistas**

- **Buena Arquitectura:** No existe una arquitectura universalmente "buena"; es aquella que soluciona un problema específico en un **contexto específico**. Se evalúa por el cumplimiento de sus objetivos.
    
- **Vistas (_Viewtypes_):** Se usan múltiples vistas para entender la complejidad, ya que cada una es selectiva.
    
    - **Module** (Nivel estático, división lógica): Descomposición, Usos, Clasificación, Capas.
        
    - **Componente y Conectores** (Nivel de ejecución): Proceso, Concurrencia, _Client-Server_, Datos Compartidos.
        
    - **Allocation** (Nivel de implementación): Despliegue, Implementación, Asignación de Trabajo.
        
- **Ley de Conway:** La estructura de diseño de un sistema tiende a copiar la estructura de comunicación de la organización que lo diseña.