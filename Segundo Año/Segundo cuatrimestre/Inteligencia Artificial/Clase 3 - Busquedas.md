- --

#  **Resumen completo — Búsqueda y Planificación**

## ¿Qué es búsqueda y planificación?

Es un conjunto de acciones que permiten encontrar soluciones a un problema concreto, mediante algoritmos que se agrupan en dos grandes categorías:

### 1. **Búsquedas completas o no informadas**

- Garantizan encontrar una solución si existe.
    
- No poseen información extra sobre los estados.
    
- Solo pueden generar sucesores y verificar si un estado es objetivo.
    
- Son **computacionalmente costosas** (complejidad exponencial).
    

### 2. **Búsquedas incompletas (heurísticas)**

- Utilizan conocimientos adicionales del problema (heurísticas).
    
- Permiten un **ahorro computacional considerable**.
    

---
### **Búsqueda en amplitud (BFS - Breadth First Search)**

- Explora el grafo desde la raíz y expande nodos por nivel (por distancia).
    
- Produce un árbol BF con el mínimo número de vértices hasta cada nodo.
    
- Garantiza el camino más corto en número de pasos (no en coste).
    

#### **Procedimiento**

1. Inicializar todos los nodos como NO_VISITADO.
    
2. Usar una **cola FIFO (Q)**.
    
3. Explorar todos los nodos adyacentes del nodo extraído.
    
4. Si un nodo no fue visitado:
    
    - Marcarlo como VISITADO.
        
    - Calcular su distancia.
        
    - Registrar su padre.
        
    - Encolarlo.
        

#### **Pseudocódigo BFS**

```javascript 
BFS(grafo G, nodo_fuente s) {
  Inicializar todos los nodos como NO_VISITADO, distancia = ∞, padre = NULL
  estado[s] = VISITADO
  distancia[s] = 0
  Encolar(Q, s)
  Mientras Q no esté vacía {
    u = extraer(Q)
    Para cada v adyacente a u {
      Si estado[v] == NO_VISITADO {
        estado[v] = VISITADO
        distancia[v] = distancia[u] + 1
        padre[v] = u
        Encolar(Q, v)
      }
    }
  }
}
```

---

### **Búsqueda en profundidad (DFS - Depth First Search)**

- Expande nodos por un camino hasta que no hay más, y retrocede (backtracking).
    
- No garantiza el camino más corto.
    
- Utiliza recursividad.
    

#### **Pseudocódigo DFS**

```plaintext
DFS(grafo G) {
  Para cada u ∈ V[G] {
    estado[u] = NO_VISITADO
    padre[u] = NULO
  }
  tiempo = 0
  Para cada u ∈ V[G] {
    Si estado[u] == NO_VISITADO {
      DFS_Visitar(u)
    }
  }
}

DFS_Visitar(u) {
  estado[u] = VISITADO
  d[u] = ++tiempo
  Para cada v ∈ Vecinos[u] {
    Si estado[v] == NO_VISITADO {
      padre[v] = u
      DFS_Visitar(v)
    }
  }
  f[u] = ++tiempo
}
```

---

## **Algoritmo de búsqueda A***

### Introducción

- Presentado en 1968 por Hart, Nilsson y Raphael.
    
- Encuentra el **camino de menor coste** entre un nodo origen y destino.
    
- Divide el mapa en una rejilla de nodos (cuadros).
    

### Iniciando la búsqueda

1. Agregar el nodo inicial A a la **lista abierta**.
    
2. Explorar los cuadros adyacentes transitables y guardarlos con A como padre.
    
3. Pasar A a la **lista cerrada** (ya procesado).
    

### Puntuación del camino:

Se calcula con la fórmula:

```
F = G + H
```

- **G**: Coste desde A hasta el nodo actual.
    
- **H**: Estimación del coste desde el nodo actual hasta B (heurística).
    
- **F**: Costo total estimado.
    

####  Detalles:

- G: se calcula sumando el G del padre + 10 (movimiento ortogonal) o +14 (diagonal).
    
- H: se calcula con heurística de Manhattan (número de cuadros horizontales + verticales × 10).
    
- F: se recalcula constantemente para elegir el nodo con menor F.
    

### Continuando la búsqueda

4. Seleccionar el nodo con menor F en la lista abierta.
    
5. Procesarlo, moverlo a la lista cerrada.
    
6. Para cada vecino:
    
    - Si no está en la lista abierta: agregarlo.
        
    - Si ya está: verificar si el nuevo G es menor; si lo es, actualizar el padre y recalcular F y G.
        

### Finalización

- Cuando el nodo objetivo se agrega a la lista abierta.
    
- Se recorre desde el nodo objetivo hacia atrás usando los padres para reconstruir el camino.
    

---

## **Resumen paso a paso del método A***

1. Añadir nodo inicial a la lista abierta.
    
2. Mientras la lista abierta no esté vacía:
    
    - Elegir nodo con F más bajo (actual).
        
    - Moverlo a lista cerrada.
        
    - Para cada adyacente:
        
        - Ignorar si es intransitable o está en cerrada.
            
        - Si no está en abierta, agregarlo.
            
        - Si ya está, actualizar si el nuevo G es menor.
            
3. Si se encuentra el objetivo: reconstruir camino desde padres.
    

---

## Notas sobre implementación

### 1. **Lista abierta**

- Puede hacerse con lista simple, ordenada o **heap binario** (más eficiente).
    

### 2. **Otras unidades (entidades)**

- Es preferible **no incluirlas en el pathfinding**, sino tratarlas por separado.
    

### 3. **Optimización**

- Buscar caminos en grupos.
    
- Usar cuadros más grandes o caminos precalculados.
    
- Preprocesar mapas (detectar “islas” o zonas inaccesibles).
    

### 4. **Costes variables del terreno**

- Añadir penalizaciones por tipo de terreno.
    
- Útil para pantanos, colinas, escaleras, etc.
    

### 5. **Áreas inexploradas**

- Usar una matriz de traspasabilidad conocida por jugador.
    
- Las unidades cometerán errores hasta aprender el mapa.
    

### 6. **Caminos más suaves**

- Penalizar cambios de dirección o ajustar camino luego de generarlo.
    

### 7. **Mapas no basados en cuadros**

- Usar países (como en Risk) o **waypoints predefinidos**.
    

---

## **Algoritmo Minimax**

### Teoría de Juegos

- En juegos de **suma cero**, con adversarios e información perfecta.
    
- Busca **minimizar la pérdida máxima esperada**.
    
- Es recursivo y alterna turnos entre **minimizador** y **maximizador**.
    

### Definición de Von Neumann

- Un juego es una situación conflictiva donde las decisiones de todos afectan el resultado.
    

### Funcionamiento:

1. Generar árbol de juego hasta nodos terminales.
    
2. Asignarles valor mediante función de utilidad.
    
3. Propagar esos valores hacia la raíz:
    
    - Máximos (jugador) y mínimos (oponente).
        
4. Elegir la jugada óptima en la raíz.
    

### Ejemplo:

- En ajedrez: +1 (ganar), 0 (empatar), -1 (perder).
    
- En backgammon: valores entre +192 y -192.
    

---

