-- - 
## Conceptos Clave

- **Clase:** Plantilla o descripción general que define un conjunto de objetos con atributos y métodos comunes.
    
- **Objeto:** Instancia concreta de una clase; hereda atributos y métodos de la clase.
    
---
## Clasificación

- **Sustantivos** → Clases.
    
- **Verbos** → Métodos.
    
- **Adjetivos** → Atributos.
    
- Clases agrupadas en jerarquías según funcionalidad.
    
- Identificar también las **relaciones** y el **flujo de mensajes** entre clases.
    
- Útil simular situaciones reales para definir responsabilidades.
    
---
## Encapsulamiento y Ocultamiento de Información

- Controla el acceso a los datos de un objeto:
    
    - **Privado:** Solo accesible dentro del propio objeto.
        
    - **Público:** Accesible desde otros objetos.
        
    - **Protegido:** Accesible por clases heredadas.
        
- Evita acceso directo a los atributos, usando **métodos de acceso** (get/set).
    
- Ejemplo: atributo `edad` privado con métodos `ingresarEdad()` y `obtenerEdad()`.
    

---
## Retención de Estado

- Los datos de un objeto mantienen su valor hasta que una operación definida los modifica.
    
---
## Herencia

- Una subclase hereda atributos y métodos de su superclase.
    
- Permite reutilizar estructuras y algoritmos sin reimplementarlos.
    
---
## Polimorfismo

- Capacidad de una clase para responder de distintas formas según el estímulo.
    
- **Sobrecarga:** Misma firma, comportamiento distinto.
    
- **Sobreescritura:** Firma diferente, mismo comportamiento esperado.
    
---

## Generalización

- Relación entre una clase general y clases hijas especializadas.
    
- Ejemplo: Clase `Animal` → clases `Humano`, `Perro`.
    
- Puede incluir **sobreescritura** de métodos para comportamientos específicos.
    
- Caso aplicado: `Persona` → `Persona Física` (CUIL) y `Persona Jurídica` (CUIT), con `identificarse()` adaptado.
    
---