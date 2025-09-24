-- -
## Grafos _k_-regulares

- Un grafo es **k-regular** cuando **todos sus vértices tienen el mismo grado**.
    
- Ejemplos:
    
    - **1-regular:** cada vértice tiene exactamente 1 arista.
        
    - **2-regular:** cada vértice tiene exactamente 2 aristas.
        

## Grafo simple

- Es un grafo **sin bucles ni aristas paralelas**.
    
## Grafo completo

- Cada vértice tiene una arista que lo conecta con **todos los demás vértices**.
    
- En un grafo completo:
    
    - Todo vértice es adyacente a todos los demás.
        
    - Es, además, un grafo simple.
        

## Propiedades basicas

$∑g⁡(v)=2∣A∣$

- La **suma de los grados de todos los vértices** de un grafo es igual al **doble del número de aristas**.
- En todo grafo la cantidad de vertices de grado impar es par
### Caso particular: grafo regular
Si el grafo es $k$-regular (todos los vértices tienen grado $k$), entonces:

$$
2 \cdot |A| = k \cdot |V| 
$$
donde:
- $k$ = grado de cada vértice,  
- $|V|$ = número de vértices,  
- $|A|$ = número de aristas.

### Matriz de adyacencia
- Dada en cada posicion aparecen la cantidad de aristas incidentes en el vertice.
- Los que aparecen en la diagonal principal son bucles.
- Tiene que ser si o si simetrica.
![[Pasted image 20250903173220.png]]

### Matriz de incidencia
- Es un vinculo entre vértices y aristas.
- No tiene que ser si o si simetrica
![[Pasted image 20250903173319.png]]

##  Camino Circuito y Ciclo

- **Camino:** secuencia de vértices y aristas que conecta dos nodos.  
	- Puede ser abierto o cerrado.
    - **Camino abierto:**
    
    - El **vértice inicial y final son distintos**.
        
    - Ejemplo: v1→v2→v3→v4​.
        
- **Camino cerrado:**
    
    - El **vértice inicial coincide con el vértice final**.
        
    - Ejemplo: v1→v2→v3→v1​.

- **Circuito:**
    
    - Es un **camino cerrado** (empieza y termina en el mismo vértice).
        
    - **Se pueden repetir vértices y aristas.**
        
    - Ejemplo: v1→v2→v3→v2→v1
        

- **Ciclo:**
    
    - Es un **circuito especial**.
        
    - El vértice inicial = vértice final.
        
    - **No se permiten repeticiones de vértices ni aristas**, salvo el inicial/final.
        
    - Ejemplo: v1→v2→v3→v1
        
![[Pasted image 20250903174956.png]]

### Conexo
- Un grafo es **conexo** si existe al menos un camino entre cada vertice.
- Todo grafo **conexo** tiene un unico componente **conexo**.
- Si un grafo tiene mas de un componente conexo no es **conexo**.

### Camino de euler
- Es todo camino que recorre todos los vertices del grafo pero una unica vez por c/u de sus aristas.
- Un grafo admite camino de euler si y solo si es conexo y tiene exactamente 2 vertices de grado **impar**.
- Debo comenzar de uno de los vertices impares y terminar en el otro vertice **impar**.

### Circuito de euler
- Es un camino de euler con  VI = VF.
- Un grafo admite circuito de euler si y solo si es conexo y todos sus vertices tienen grado **par**.
- Se puede empezar de cualquier vertice.
**Prop:** Si un grafo admite camino o circuito de euler se lo llama grafo euleriano

## Hamilton

### Camino de hamilton
- Es un camino que pasa por todos los vertices del grafo y no los repite.
- **No es necesario pasar por todas las aristas**

### Circuito de hamilton
- También recorre **todos los vértices exactamente una vez**.
- Es un camino de hamilton cuyo VI = VF.
**Prop:** Si hay un vertice pendiente no puede haber circuito de hamilton.

## Isomorfismo de grafos
- Si algo de lo siguiente **no ocurre** ---> **no son isomorfos**: 
	- Cuando tienen != cantidad de vértices.
	- Cuando tienen != cantidad de aristas.
	- Cuando no se corresponden los **grados** de los **vértices**.
	- Se corresponden los ciclos.
	- Cuando uno es **conexo** y el otro no.
- Si todo esto se cumple los grafos son **Isomorfos** y al volver a dibujar uno de ellos se obtiene un dibujo igual al otro. 
- Las matrices de adyacencia son iguales reordenando los vertices de uno de ellos.

## Grafo Planar/Plano
- Un grafo es **planar** o **plano** cuando: 
	- Se puede dibujar en un plano sin que ninguna de sus aristas se cruce en un punto que no sea uno de los vertices.
- Cualquier grafo planar se puede colorear con un maximo de 4 colores de tal forma que ningun vertice sea adyacente a otro con el mismo color.

Perfecto, te lo armo por separado para que solo pegues lo nuevo en tu apunte:

## Teorema de Euler (grafos planares)

- Si GG es un grafo **conexo y planar**, se cumple:
    
    $r = m - n + 2$
    
    donde:
    
    - $r$: número de **regiones** en el plano,
        
    - $m$: número de **aristas**,
        
    - $n$: número de **vértices**.
        

---

## Coloración de grafos

- Colorear un grafo simple significa asignar un **color a cada vértice** de modo que vértices **adyacentes no compartan color**.
    
- El **número cromático** $χ(G)$ es el **mínimo número de colores necesarios** para colorear el grafo.
    

---

## Teorema de los cuatro colores

- Todo grafo **planar** puede colorearse con **como máximo 4 colores**.
    
- Aplicación clásica: **mapas**, donde cada región se representa como un vértice y se conecta con las regiones limítrofes (grafo dual).
    

---

