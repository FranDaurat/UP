-- -
# Razonamiento

### Introducción

El razonamiento es una operación lógica mediante la cual, a partir de uno o más juicios (premisas), se deriva la validez, posibilidad o falsedad de otro juicio (conclusión).

- Es central en **Inteligencia Artificial**, con dos enfoques:
    
    - **Deducción** (lógica).
        
    - **Incertidumbre** (probabilidad).
        
- Se usa en **demostradores de teoremas** (automatizados, aunque suelen requerir guía humana).
    

Cuando el proceso es riguroso y la conclusión se deriva necesariamente de las premisas, se llama **inferencia**. Esta puede ser:

- **Deductiva** → conclusión menos general que las premisas.
    
- **Inductiva** → conclusión más general que las premisas.
    
- **Transductiva** → mismo grado de generalidad.
    

### Razonamiento lógico

- Puede ser **válido** o **inválido**.
    
- Válido: premisas ofrecen soporte suficiente a la conclusión.
    
    - En deducción → verdad de premisas implica verdad de conclusión.
        
    - En no deducción → verdad de premisas hace probable la conclusión.
        
- **Falacias**: razonamientos inválidos que parecen válidos.
    
- Funciones: ampliar conocimiento, justificar creencias, demostrar (ej. matemáticas).
    
- Marca la diferencia entre **instinto** (reacción automática) y **pensamiento humano** (criterio propio).
    

### Razonamiento no-lógico

- También llamado **informal** o **argumentación**.
    
- No se limita a una única alternativa correcta, depende de **experiencia y contexto**.
    
- Ejemplo:
    
    - Formal → clasificar alimentos en verduras, carnes, frutas.
        
    - Informal → según el orden en la heladera.
        
- La inducción generaliza a partir de casos finitos → conclusión siempre **probable** e **incierta**.
    
- En inducción válida: se pueden afirmar las premisas y negar la conclusión sin contradicción → todo depende de probabilidades.
    

### Sistemas de razonamiento probabilístico

- Usan **teoría de la probabilidad** para razonar con incertidumbre.
    
- Ventaja: permiten decidir racionalmente incluso con información incompleta.
    
- Problema: la distribución conjunta de probabilidades crece demasiado con más variables.
    
- Se requieren **datos estadísticos** y estimaciones.
    
- Se simplifica gracias a **independencias condicionales**.
    
- Se representan mediante **redes bayesianas** (redes probabilísticas de creencias):
    
    - Nodos → variables aleatorias.
        
    - Flechas → influencia causal (X influye en Y).
        
    - Cada nodo tiene una **tabla de probabilidad condicional**.
        
    - La red es un **grafo acíclico dirigido**.
        

---

# Lógica Difusa

### Introducción

La **lógica difusa** permite trabajar con **grados de verdad** entre 0 y 1, no solo verdadero/falso.

- Es extensión de la lógica clásica y multivaluada.
    
- Nació en los 60 con Lotfi Zadeh como “lógica del razonamiento aproximado”.
    
- Representa frases como:
    
    - “La velocidad del motor es muy alta”.
        
    - “El paciente tiene una fiebre moderada”.
        
- Aplicaciones:
    
    - **Sistemas expertos difusos** (ej. diagnóstico médico).
        
    - **Ingeniería de control** (ej. ventiladores que ajustan velocidad suavemente).
        

### Conjuntos difusos

- Definidos por **Zadeh (1965)**.
    
- A diferencia de los conjuntos clásicos, los límites no son abruptos → hay **grados de pertenencia**
    
- Se expresan con la función de pertenencia:
    
    $μA(x):U⊆R→[0,1] \mu_A(x) : U \subseteq \mathbb{R} \to [0,1]$
- Permiten representar información imprecisa y tomar decisiones similares a las humanas.
    
- Principales aplicaciones:
    
    - **Control difuso**.
        
    - **Sistemas expertos basados en conjuntos difusos**.
        
- En control industrial:
    
    - Basado en la capacidad humana de manejar información imprecisa.
        
    - Basado en combinar múltiples modelos mediante reglas difusas.
        

### Variables y diseño de sistemas difusos

- Variables lingüísticas → sus valores son conjuntos difusos (ej. distancia: cerca, lejos).
    
- Se define:
    
    - Variables, dominio, conjuntos difusos y modificadores.
        
    - Número y forma de funciones de pertenencia → decisión de diseño (experiencia).
        
    - Conjuntos difusos deben **solaparse** (evitar huecos en el dominio).
        

### Núcleo y soporte

- **Núcleo**: elementos con pertenencia = 1.
    
- **Soporte**: elementos con pertenencia > 0.
    

### Operaciones entre conjuntos difusos

Generalización de operaciones clásicas:

![[Pasted image 20250903111810.png]]
    

---

# Conclusión comparativa

- **Razonamiento** abarca los procesos lógicos (deductivo, inductivo, transductivo) y probabilísticos, mostrando cómo derivar conocimiento a partir de premisas, incluso bajo incertidumbre.
    
- **Lógica difusa** se centra en extender la lógica clásica para manejar la imprecisión, usando grados de pertenencia y conjuntos difusos, especialmente útiles en control de sistemas y expertos.
    

Ambos enfoques buscan aproximar el **razonamiento humano**: uno desde la **estructura lógica/probabilística**, el otro desde la **gestión de imprecisión y lenguaje natural**.

---

