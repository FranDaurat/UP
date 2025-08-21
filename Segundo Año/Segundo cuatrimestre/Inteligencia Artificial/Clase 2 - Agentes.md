-- -
## **Agentes Inteligentes**

Un **agente** es cualquier entidad (hardware o software) que **percibe su entorno mediante sensores** y **actúa en él a través de efectores**. Puede ser **autónomo**, interactuar y reaccionar al medio, e incluso ser **proactivo** para cumplir objetivos.

Debe adaptarse a:

- Cambios en la información y recursos.
    
- Restricciones basadas en objetivos e incertidumbre.
    
- Diferentes tareas de razonamiento y disponibilidad de datos.
    
- Demandas, oportunidades y recursos cambiantes.
    

---

## **Tipos de agentes**

### **1. Agentes naturales**

- **Cuerpo biológico** (humanos, animales).
    
- **Entorno:** naturaleza.
    
- **Sensores:** sentidos (vista, oído, tacto, etc.).
    
- **Efectores:** extremidades.
    
- **Objetivo:** supervivencia y reproducción.
    

### **2. Agentes artificiales**

- **Hardware (robots):** interactúan con el entorno físico mediante cámaras, sensores, ruedas, manipuladores, etc.
    
- **Software (softbots):** actúan en entornos virtuales (ej. Internet) y no requieren manipular físicamente el entorno.
    

**Agente racional:** elige acciones que cumplan sus objetivos según lo que cree correcto.  
Su racionalidad depende de:

1. **Medida de rendimiento** (grado de éxito).
    
2. **Secuencia de percepciones**.
    
3. **Conocimiento del entorno**.
    
4. **Acciones posibles**.
    

**Autonomía:** depender menos de conocimientos previos y más de la experiencia.  
**Aprendizaje:** mejorar a partir de lo percibido.

---

## **Clasificación de agentes inteligentes**

1. **Agentes reactivos simples**
    
    - Actúan según la percepción actual (regla condición → acción).
        
    - Funcionan bien en entornos completamente observables.
        
    - Riesgo de bucles infinitos en entornos parcialmente observables.
        
2. **Agentes reactivos basados en modelo**
    
    - Manejan entornos parcialmente observables.
        
    - Mantienen un **modelo interno del mundo** para reflejar aspectos no visibles.
        
    - Pueden predecir comportamientos de otros agentes.
        
3. **Agentes basados en objetivos**
    
    - Usan información sobre estados deseables.
        
    - Seleccionan acciones que alcancen el objetivo.
        
    - Utilizan búsqueda y planificación.
        
4. **Agentes basados en utilidad**
    
    - Evalúan cuán deseable es un estado mediante una **función de utilidad**.
        
    - Escogen acciones que maximicen la utilidad esperada.
        
5. **Agentes que aprenden**
    
    - Pueden actuar en entornos desconocidos y mejorar con experiencia.
        
    - **Elemento de aprendizaje:** ajusta el rendimiento.
        
    - **Crítico:** da retroalimentación.
        
    - **Generador de problemas:** busca experiencias nuevas.
        

---

## **Ambientes**

Un sistema de IA está compuesto por **agente** + **entorno**, que puede incluir otros agentes.

### **Propiedades de los ambientes**:

1. **Accesible / Inaccesible:** si el agente recibe toda la información necesaria o no.
    
2. **Determinístico / No-determinístico:** si el próximo estado depende totalmente del actual y la acción.
    
3. **Episódico / No-episódico:** si las acciones pasadas afectan o no al futuro.
    
4. **Estático / Dinámico:** si el entorno cambia mientras el agente decide.
    
5. **Discreto / Continuo:** número limitado o infinito de percepciones/acciones.
    
6. **Con o sin adversarios racionales:** presencia de oponentes que afectan la estrategia.
    

**Más difíciles:** ambientes inaccesibles, no determinísticos, no episódicos, dinámicos y continuos.

---