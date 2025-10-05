- -- 
### ¿Qué es un diagrama de secuencia?

Un **diagrama de secuencia UML** modela los **aspectos dinámicos** de un sistema.  
Representa **interacciones entre objetos** organizadas en **orden temporal**, mostrando qué objetos participan y **qué mensajes intercambian**.

---

### Elementos principales

| Elemento                 | Descripción                                                                                                           |
| ------------------------ | --------------------------------------------------------------------------------------------------------------------- |
| **Roles de clase**       | Representan los objetos participantes en la interacción. Se expresan como `nombreRol:NombreClase`.                    |
| **Líneas de vida**       | Líneas verticales punteadas que salen de los objetos. Representan el tiempo de existencia del objeto.                 |
| **Activaciones**         | Rectángulos delgados sobre la línea de vida. Indican que el objeto está ejecutando una acción.                        |
| **Mensajes**             | Líneas horizontales entre objetos. Representan llamadas o respuestas (pueden llevar parámetros o valores de retorno). |
| **Creación/Destrucción** | Se pueden representar momentos de creación (`<<create>>`) y destrucción (`<<destroy>>`) de objetos.                   |

---

### Dimensiones del diagrama

- **Vertical (↓)**: representa el paso del **tiempo**.
    
- **Horizontal (→)**: muestra los **objetos participantes** en la interacción.
    

---

### Ejemplo aplicado

Caso: **llamada telefónica** a través de una central.

- Objetos involucrados: `s:Interlocutor`, `r:Interlocutor`, `:Central`, `c:Conversación`.
    
- El proceso incluye descolgar, marcar, enrutar y conectar.
    
- Luego, ambos interlocutores pueden intercambiar información libremente.
    

Diagrama simplificado:

```plaintext
s:Interlocutor  → :Central         → r:Interlocutor
 ↓                  ↓                ↓
descolgarAuricular()
darTonoDeLlamada()
marcarDigito(num:int)
enrutarLlamadas(s,n)
<<create>> c:Conversación
llamar()
conectar(r,s)
```

---

### Relación con Casos de Uso

Los **diagramas de secuencia dependen de los casos de uso**, ya que estos describen **cómo los actores interactúan con el sistema**.

- Cada caso de uso genera **eventos externos** (actores) e **internos** (objetos del sistema).
    
- El diagrama refleja ese flujo de eventos en un escenario específico del caso de uso.
    

---

### Ejemplo: Compra en supermercado

- **Caso de uso**: Comprar productos
    
- **Actores**: Cliente, Cajero
    
- **Descripción**:  
    El cliente llega a la caja, el cajero registra los productos, cobra el importe, y el cliente se retira con los productos.
    

Este escenario se modela con un **diagrama de secuencia** donde se representan los mensajes entre cliente y cajero en el orden en que ocurren.

---

