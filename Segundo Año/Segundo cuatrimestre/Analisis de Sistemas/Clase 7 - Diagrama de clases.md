-- -
## Definición

- Los **diagramas de clases** son diagramas de **estructura estática** que muestran las clases del sistema y sus interrelaciones (herencia, agregación, asociación, etc.).
    
- Son el **pilar básico del modelado UML**, usados tanto para mostrar qué puede hacer el sistema como cómo puede construirse.
    
- Cada clase se documenta con descripción, atributos y métodos.
    
- Las relaciones se documentan con propósito y cardinalidad (cuántos objetos intervienen).
    
- El **modelo de casos de uso** aporta información para establecer clases, atributos y operaciones.
    

---

## Representación de una clase

- Caja subdividida en tres partes:
    
    1. Nombre de la clase.
        
    2. Atributos.
        
    3. Operaciones (métodos).
        
- Puede mostrarse solo con el nombre.
    
- Las clases representan agrupaciones, son **plantillas para objetos**.
    
- Detectadas normalmente como **sustantivos en singular** (ej.: Moto = todas las motos posibles).
    

---

## Objetivo

- **Describir las clases del dominio y sus relaciones**.
    

---

## Pasos para construir el modelo (Rumbaugh)

1. Identificar clases de objetos.
    
2. Retener clases candidatas.
    
3. Preparar diccionario de datos.
    
4. Identificar asociaciones.
    
5. Retener asociaciones correctas.
    
6. Identificar atributos.
    
7. Retener atributos correctos.
    
8. Refinar mediante herencia.
    
9. Iterar el modelo.
    

### Identificación de clases

- Ejemplos: Persona, Casa, Empleado, Máquina.
    
- Evitar estructuras de implementación (listas, conectores DB).
    
- Normalmente corresponden a sustantivos.
    
- No preocuparse por herencia en primera fase.
    

### Retener clases candidatas

- Eliminar redundantes (quedarse con la más descriptiva).
    
- Eliminar irrelevantes.
    
- Operaciones con características propias → modelarlas como clases.
    

### Diccionario de datos

- Lista de entidades + descripción de cada clase.
    

### Asociaciones

- Identificar relaciones entre clases, sin diferenciar demasiado entre asociación y agregación.
    
- Retener solo asociaciones relevantes, eliminar:
    
    - Entre clases eliminadas.
        
    - Irrelevantes.
        
    - Acciones transitorias.
        
    - Ternarias.
        
    - Derivadas.
        

### Atributos

- Propiedades simples (nombre, velocidad, color).
    
- Deben tener **nombre significativo**.
    
- No exagerar en análisis.
    
- Si la entidad requiere existencia independiente → es objeto, no atributo.
    

### Herencia

- Organizar clases para compartir estructura común.
    
- Dos direcciones:
    
    - Generalizar aspectos comunes en una superclase.
        
    - Refinar clases en subclases especializadas.
        

### Iteración

- El modelo difícilmente quede correcto en la primera versión.
    
- Si hay error → volver a la etapa anterior.
    

---

## Atributos

- Identifican características propias de la clase.
    
- Generalmente de tipos simples; los compuestos → relaciones con otras clases.
    
- Sintaxis UML:
    
```
    visibilidad nombre : tipo = valor inicial
```
    
- **Visibilidad**:
    
    - `+` public: accesible desde cualquier clase externa.
        
    - `#` protected: accesible por descendientes o dentro del paquete.
        
    - `-` private: solo la clase.
        
- Tipos básicos: `date`, `time`, `string`, `int`, `double`, etc.
    

Ejemplo: Moto → atributos: color, marca, modelo, velocidad.

---

## Operaciones (métodos)

- Son las **responsabilidades** o comportamientos de la clase (generalmente verbos).
    
- Indican cómo se comunican las clases entre sí.
    
- Sintaxis UML:
    
    ```
    visibilidad nombre(parámetros): tipo_devuelto
    ```
    

---

## Cardinalidad

- Indica grado y nivel de dependencia.
    
- Notación:
    
    - 1 a 1
        
    - 1 a muchos → `1..*`
        
    - 0 a muchos → `0..*`
        
    - Número fijo → `m`
        
- Ejemplos:
    
    - Cliente → muchas órdenes; orden → 1 cliente.
        
    - Paciente atendido por muchos doctores; doctor atiende a muchos pacientes.
        

---

## Asociaciones

- Representadas con línea entre clases.
    
- Expresan colaboración, no dependencia fuerte (objetos no comparten tiempo de vida).
    

---

## Diagrama de objetos

- Representa el sistema en un **momento del tiempo**.
    
- Muestra objetos con atributos llenos y sus relaciones.
    
- Los objetos son **instancias de clases**.
    
- Permite ver el estado concreto del sistema.
    
- Objetivo: describir objetos del dominio y sus relaciones.
    

---

## Diferencia Clases vs Objetos

- **Clases**: atributos, métodos, cardinalidad.
    
- **Objetos**: estado, comportamiento, multiplicidad.
    

---
