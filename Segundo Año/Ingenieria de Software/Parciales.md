-- -
# Parcial 1 
1. ¿Qué es la Ingeniería de Software? (1 punto)
    
2. ¿Qué es una entrevista? ¿Qué tipos de preguntas puede contener? Brinde 2 ejemplos de cada tipo. (1 punto)
    
3. Explique la cualidad de Productividad y los principios de Rigor y Formalidad. (2 puntos)
    
4. Según Frederick Brooks, en su artículo "No Silver Bullet", ¿qué son las dificultades esenciales y accidentales? Enuncie y explique brevemente las dificultades esenciales planteadas en el mismo. (2 puntos)
    
5. Grafique el modelo de ciclo de vida de entrega por etapas (incremental). Indique ventajas y desventajas de dicho modelo. (2 puntos)
    
6. ¿Qué es un requerimiento? Explique las diferencias entre requerimiento funcional y no funcional. (2 puntos)
---
1. **La Ingeniería de Software** es la aplicación de principios de ingeniería para el desarrollo, mantenimiento e integración del software. Consiste principalmente en usar métodos sistemáticos y disciplinados con el fin de crear software eficiente y mantenible.

2. Una entrevista es me metodo de extraccion de informacion utilizado con el fin de obtener las necesidades de los usuarios del software. Pueden contener preguntas abierta, cerradas y de sondeo/exploratorias.
   Ejemplo preguntas abiertas:
		- Cuando fue la ultima vez que uso el software?
		- Que le agregaria?
	Ejemplo de preguntas cerradas:
		- Le gusta el software?
		- Suele utilizarlo?
	Ejemplo de preguntas de sondeo/exploratorias?
		- Porque no lo usa?
		- Porque le agregaria esas cosas?

3. 
- La cualidad de productividad esta mas realcionada al proceso. Un proceso eficiente es el que genera mas productos rapidamente.
- El rigor es un enfoque meticuloso y detallado que asegura que el trabajo sea confiable y preciso. Es una cualidad intuitiva que se puede aplicar en diferentes niveles
- La formalidad seria el nivel mas alto del rigor ya que permite desarrollar productos mas confiables, controlar los costos, etc.

4. 
- Las dificultades/tareas esenciales son aquellas que no se pueden eliminar ni automatizar facilmente ya que estan ligadas a la propia naturaleza misam del desarrollo de software. Son el corazon del problema ya que se debe entenedre que es lo que el software debe hacer y como se tiene que representar correctamente.
- Las dificultades/tareas accidentales son las que no forman parte del problema en si, sino que aparecen como consecuencia de las herramientas, lenguajes o tecnologias que se utilizan para desarrollar el software.

5. El **modelo incremental** consiste principalmente en **dividir el sistema en varios subsistemas** (o módulos) y realizar **entregas parciales** al cliente. A medida que el cliente prueba estos subsistemas, se pueden **ajustar y continuar desarrollando** de acuerdo con los nuevos requerimientos o cambios.
Ventajas :
- Proporicona sub-sistemas operativos parciales los cuales permiten ser ajustados para comprender mejor las necesidades reales. 
- Permite entregas rapidas y parciales evitando el desarrollo completo de una sola vez. 
- Permite incoporar nuevos requisitos que surjan durant el proyecto.
---
# Parcial 2

1. Explique al menos tres roles del ingeniero de software.
    
2. Grafique y explique el modelo de ciclo de vida iterativo e incremental.
    
3. Explique cuáles son las dificultades esenciales según Frederick Brooks en el artículo de “No Silver Bullet”. ¿Por qué las denomina así?
    
4. ¿Cuáles son los requerimientos? ¿Cómo pueden clasificarse? Brinde un ejemplo de cada uno de los tipos de requerimientos de la clasificación anterior para un sistema de alquiler de autos.
    
5. Explique dos principios de la ingeniería del software y dos cualidades del software.
    
6. Revise las afirmaciones que se indican a continuación e indique si son correctas o falsas, justificando en todos los casos su respuesta en no más de 4 líneas. No serán consideradas las respuestas no justificadas:  
    a. La ingeniería de software se ocupa del desarrollo de nuevos productos de software.  
    b. Los roles en Scrum son product owner, product management, y scrum master.  
    c. SRS debe incluir los requerimientos, tiempos del proyecto y plan de pruebas.  
    d. Una de las ventajas más importantes del modelo de cascada es que permite incorporar el análisis de riesgos al inicio del proceso de desarrollo.  
    e. Un error en la especificación de requerimientos solo puede repercutir en el diseño del sistema.
    

¡Muy bien, Fran! Te dejo una versión corregida, clara y bien redactada para que la puedas presentar tal como está o pegar en Obsidian si querés. Te hice leves correcciones de redacción, completé el punto 4 y mejoré un poco la estructura de los ítems.

---

### 1. **Explique al menos tres roles del ingeniero de software**

- Debe tener conocimientos avanzados de programación, estructuras de datos y algoritmos para resolver problemas técnicos complejos.
    
- Tiene la capacidad de comunicarse con usuarios y clientes utilizando un lenguaje claro, evitando tecnicismos, para que todos comprendan los requerimientos.
    
- Tiene flexibilidad para adaptarse y participar en las distintas etapas del ciclo de vida del software, como análisis, diseño, implementación, pruebas y mantenimiento.
    

---

### 2. **Grafique y explique el modelo de ciclo de vida iterativo e incremental**

**Explicación:** El modelo iterativo e incremental (por ejemplo, el _Proceso Unificado_ - UP) combina dos conceptos:

- **Iteración**: se repiten ciclos de desarrollo para mejorar el producto gradualmente.
    
- **Incremento**: en cada iteración se agregan nuevas funcionalidades al sistema.
    

**Ejemplo visual:**

```
Iteración 1 → [Análisis → Diseño → Implementación → Pruebas] → Entrega 1
Iteración 2 → [Análisis → Diseño → Implementación → Pruebas] → Entrega 2
...
Cada entrega agrega nuevas funcionalidades al producto anterior.
```

---

### 3. **Explique cuáles son las dificultades esenciales según Frederick Brooks en “No Silver Bullet”**

Las dificultades esenciales son aquellas que no pueden eliminarse mediante mejoras tecnológicas o herramientas. Son parte inherente del desarrollo de software, como:

- Entender los requerimientos del cliente.
    
- Modelar el problema correctamente.
    
- Adaptarse a cambios durante el desarrollo.
    

Brooks las llama “esenciales” porque son inevitables y **no hay una “bala de plata” (solución mágica)** que las resuelva por completo.

---

### 4. **¿Qué son los requerimientos? ¿Cómo se clasifican? Dé un ejemplo para un sistema de alquiler de autos**

**Requerimientos** son descripciones de lo que el sistema debe hacer o cómo debe comportarse.

**Clasificación:**

- **Funcionales**: describen lo que el sistema debe hacer.
    
    - _Ejemplo_: El sistema debe permitir al cliente buscar autos disponibles por fecha y ubicación.
        
- **No funcionales**: describen restricciones o cualidades del sistema.
    
    - _Ejemplo_: El sistema debe responder a cualquier solicitud en menos de 3 segundos.
        
- **Requerimientos del dominio**: dependen del contexto específico del negocio.
    
    - _Ejemplo_: Solo se pueden alquilar autos a personas mayores de 21 años con licencia válida en Argentina.
        

---

### 5. **Explique dos principios de la ingeniería de software y dos cualidades del software**

**Principios:**

- **Rigor**: Aplicación meticulosa y disciplinada de métodos que aseguran la precisión del desarrollo.
    
- **Modularidad**: División del sistema en partes independientes y manejables (módulos) para facilitar el mantenimiento.
    

**Cualidades:**

- **Confiabilidad**: El software funciona correctamente bajo condiciones normales y el usuario puede depender de él.
    
- **Portabilidad**: Capacidad del software para ejecutarse en diferentes plataformas o sistemas operativos con pocos o ningún cambio.
    

---

### 6. **Revisión de afirmaciones (correcto/falso y justificación)**

**a)** ❌ **Falso**  
La ingeniería de software no solo se ocupa del desarrollo, sino también del mantenimiento, documentación, pruebas y gestión del software.

**b)** ❌ **Falso**  
Los roles de Scrum son: Product Owner, Scrum Master y el Equipo de Desarrollo. “Product Management” no es un rol oficial de Scrum.

**c)** ❌ **Falso**  
El SRS (Software Requirements Specification) contiene requerimientos del sistema, pero **no** incluye cronogramas ni el plan de pruebas. Especifica **qué debe hacer el sistema**, no cómo ni cuándo.

**d)** ❌ **Falso**  
El modelo que incluye el análisis de riesgos es el **modelo espiral**, no el modelo en cascada.

**e)** ❌ **Falso**  
Un error en los requerimientos puede afectar no solo el diseño, sino también la implementación, pruebas y hasta la fase de mantenimiento.

---

¿Querés que te lo pase todo en PDF o en formato `.md` para Obsidian?