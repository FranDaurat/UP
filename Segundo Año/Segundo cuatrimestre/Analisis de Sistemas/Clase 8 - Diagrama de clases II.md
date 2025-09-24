-- -

## Herencia

- Se representa con un triángulo hacia la clase **padre**.
    
- **Generalización**: vista del hijo al padre.
    
- **Especialización**: vista del padre al hijo.
![[Pasted image 20250924083634.png]]
- **Tipos (Liskov)**:
    
    - **Herencia de tipo**: responde a “¿es un…?”.
        
    - **Herencia de uso**: reutiliza atributos o métodos, pero rompe encapsulamiento (Snyder).
![[Pasted image 20250924083652.png]]

## Propiedades

- **Estáticas**: definidas en tiempo de diseño.
![[Pasted image 20250924083909.png]]
- **Dinámicas**: creadas en tiempo de ejecución.
![[Pasted image 20250924083919.png]]
---

## Roles (Martin Fowler)

Los **roles** permiten que un objeto represente diferentes comportamientos o funciones según el contexto. Fowler describe cinco enfoques para modelarlos:

### 1. **Single Role**

- Todo el comportamiento y atributos de los roles están en **una sola clase**.
![[Pasted image 20250924084314.png]]

**Ventajas**

- Fácil de implementar.
    
- Todo está en un mismo lugar, no requiere mucho diseño.
    
 **Desventajas**

- Difícil de mantener cuando hay muchos roles.
    
- Código poco flexible: cambios afectan a toda la clase.
    
- Mezcla responsabilidades (rompe SRP – principio de responsabilidad única).
    

### 2. **Separated Role**

- Cada rol se implementa como una **clase separada**.
![[Pasted image 20250924084346.png]]

**Ventajas**

- Diseño más organizado y claro.
    
- Se puede trabajar en cada rol de forma independiente.
    
 **Desventajas**

- Puede generar **duplicación de código**.
    
- La gestión de muchos roles puede complicar la estructura.
    

### 3. **Role Subtype**

- Se define una **clase padre común**, y cada rol se modela como **subclase**.
![[Pasted image 20250924084428.png]]

**Ventajas**

- Elimina duplicación de código (atributos y métodos comunes en la superclase).
    
- Claridad jerárquica, facilita la reutilización.
    
 **Desventajas**

- **No admite múltiples roles al mismo tiempo** (limitación de herencia simple).
    
- Rígido si se necesita que un objeto cambie de rol dinámicamente.
    

### 4. **Role Object**

- Un objeto puede tener una **colección de roles** que maneja dinámicamente.
![[Pasted image 20250924084536.png]]    

**Ventajas**

- Flexibilidad: un objeto puede asumir diferentes roles en distintos momentos.
    
- Permite cambiar o agregar roles en tiempo de ejecución.
    
- Facilita el mantenimiento y la extensión.
    
**Desventajas**

- No gestiona bien **múltiples contextos** simultáneos.
    
- Requiere un diseño más complejo que los anteriores.
    

### 5. **Role Relationship**

- Los roles se modelan como **relaciones en un contexto específico**.
![[Pasted image 20250924084705.png]]

**Ventajas**

- Maneja adecuadamente roles en distintos contextos.
    
- Es el más **realista y completo** para modelar situaciones complejas.
    
**Desventajas**

- Mucho más **complejo de implementar y mantener**.
    
- Aumenta la abstracción, puede ser difícil de entender sin buena documentación.
    

**Resumen práctico**:

- **Single** → simple pero rígido.
    
- **Separated** → ordenado pero con duplicación.
    
- **Subtype** → elimina duplicación, pero no permite múltiples roles.
    
- **Object** → flexible y dinámico, pero más complejo.
    
- **Relationship** → el más realista, pero también el más difícil de implementar.
    

---

## Type Object (Johnson y Woolf)

- Desacopla instancias de sus clases.
    
- Permite crear **nuevas clases dinámicamente en tiempo de ejecución**.
    
- Útil cuando se necesitan instancias y subclases en cantidad desconocida.
    
![[Pasted image 20250924085344.png]]
-- -

