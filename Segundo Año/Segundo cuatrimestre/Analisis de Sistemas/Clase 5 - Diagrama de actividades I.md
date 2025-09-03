-- -
## Definición y propósito

- Un **diagrama de actividades** muestra la lógica de las acciones que ocurren como respuesta a un evento dentro de un sistema.
    
- Está asociado a una **clase o caso de uso específico** y describe los pasos necesarios para llevar a cabo una operación.
    
- Sirve para comprender el **comportamiento de alto nivel** de un sistema sin entrar en detalles técnicos de implementación.
    

---

## Diferencias y usos principales

- Se parece a un **diagrama de flujo**, pero añade la capacidad de representar **procesamiento paralelo**.
    
- Es útil en:
    
    - **Análisis de casos de uso** → entender acciones y dependencias.
        
    - **Comprensión de flujos de trabajo** entre casos de uso.
        
    - **Modelado de procesos de negocio (workflow)**.
        

---

## Características

- Es un diagrama **dinámico**: permite ver qué actividad antecede y cuál sigue.
    
- Al ser de alto nivel, se puede **revisar con el usuario** fácilmente.
    
- No muestra detalles técnicos (lenguaje de programación o base de datos).
    
- Se combina con otros diagramas porque:
    
    - Su fortaleza → representar **comportamiento paralelo** (workflow y multihilo).
        
    - Su debilidad → no muestra claramente la relación entre acciones y objetos (para eso sirven mejor los diagramas de secuencia).
        

---

## Notación y componentes básicos

- **Inicio**: un único punto de comienzo (un círculo sólido).
    
- **Actividad**: acción representada en un rectángulo con bordes redondeados.
    
- **Fin**: marca la finalización, puede haber múltiples finales.
    
- **Flechas**: indican el flujo de transición.
    
![[Pasted image 20250903140133.png]]
---

## 🔹 Condiciones y decisiones

- **Bifurcación**: un diamante con una entrada y dos salidas, cada salida lleva la condición entre paréntesis.
    
- **Unificación**: el punto donde convergen dos caminos en una sola salida.
    
![[Pasted image 20250903140151.png]]
---

## 🔹 Procesos paralelos

- **Fork (división)**: una barra gruesa de la que salen múltiples flujos en paralelo.
    
- **Join (unión)**: una barra gruesa en la que confluyen varios flujos; hasta que no lleguen todos, no continúa la salida.
    
![[Pasted image 20250903140212.png]]

---

## Calles (swimlanes)

- Sirven para **agrupar actividades por responsabilidades**.
    
- Cada calle representa un área o actor responsable de las actividades que contiene.
    
![[Pasted image 20250903140234.png]]
-- -
