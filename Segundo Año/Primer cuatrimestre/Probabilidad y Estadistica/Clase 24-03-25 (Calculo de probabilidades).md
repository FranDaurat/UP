-- - 
## 🎲 Probabilidad: Conceptos Básicos

### 🔹 **Experimento Aleatorio**

- Es aquel cuyos **resultados son inciertos** y **no se conocen** antes de realizar el experimento.
- **Requieren observación**.
- **Ejemplos**:
    - Arrojar un dado y observar el número obtenido.
    - Ventas diarias de un producto.

### 🔹 **Espacio Muestral** (S, U, E)

- Conjunto de **todos los resultados posibles** de un experimento.
- **Ejemplos**:
    - Si el experimento es arrojar un dado:  
        **E = {1, 2, 3, 4, 5, 6}**
    - Si el experimento es registrar el monto diario de ventas de un kiosco:  
        **E = ℝ** (números reales).

### 🔹 **Suceso o Evento Aleatorio**

- **Subconjunto** del espacio muestral.
- **Ejemplos**:
    - **A**: Sale un número par al arrojar un dado.
    - **B**: Se obtienen ventas menores a $10.000 por día.
----
## 🎲 Definiciones de Probabilidad

Cuando hablamos de probabilidad, nos referimos a la **"posibilidad relativa"** de ocurrencia de un suceso.

### ✅ **Definición Clásica de Probabilidad (Laplace)**

- La probabilidad de ocurrencia de un evento $A$ se calcula como el **cociente entre el número de casos favorables y el número de casos posibles**, siempre que todos los resultados sean **igualmente probables**.
    
- **Fórmula**:
$$
P(A) = \frac{\text{nº de casos favorables}}{\text{nº de casos posibles}}
$$
⚠️ **Nota**: Esta definición **solo aplica cuando todos los resultados del experimento son igualmente probables**, lo que es una de sus **limitaciones**.

## 📊 Definición Frecuentista de Probabilidad (Von Mises)

- Un experimento aleatorio se caracteriza porque, **repetido muchas veces y en idénticas condiciones**, el cociente entre:
    
    - Número de veces que ocurre un suceso.
    - Número total de repeticiones.
    
    **Tiende a un número fijo** (probabilidad).
    
- Definimos la probabilidad de un suceso $A$ como el número hacia el cual **convergen las frecuencias relativas** al repetir el experimento.
    
- **Ley de los grandes números** (Jakob Bernoulli):
    A medida que aumenta el número de repeticiones, la frecuencia relativa **se estabiliza**.


⚠️ **Inconveniente**: Las frecuencias relativas pueden variar entre repeticiones, aunque al aumentar la cantidad de ensayos se aproximan a un valor estable.

## 📐 Definición Axiomática de Probabilidad (A. de Kolmogórov)

Es una definición **general** que permite incluir las distintas interpretaciones de la probabilidad.  
La probabilidad de un suceso $A$ es un **número real** y debe cumplir los siguientes **axiomas**:

### ✅ Axiomas:

1. **No negatividad**:
$$
P(A) \geq 0
$$
2. **Probabilidad total**:
$$
P(E) = 1
$$
Donde $E$ es el espacio muestral (todo lo posible).

3. **Adición para sucesos mutuamente excluyentes**:  
    Si $A$ y $B$ son **mutuamente excluyentes**, entonces:
$$
P(A \cup B) = P(A) + P(B)
$$
4. **Adición para sucesos no excluyentes (fórmula de la unión)**:  
    Si $A$ y $B$ **no son mutuamente excluyentes** (es decir, pueden ocurrir al mismo tiempo), entonces:
$$P(A∪B)=P(A)+P(B)−P(A∩B)$$ 

Esta fórmula evita contar dos veces los casos que pertenecen a la **intersección** de ambos eventos.
### ⚠️ **Consecuencias de los axiomas:**

- De los axiomas (1) y (2):
$$
0 \leq P(A) \leq 1
$$
Es decir, **una probabilidad nunca puede ser negativa ni mayor a 1**.

- De los axiomas (2) y (3), se deduce la probabilidad del **complemento** de $A$:
$$
P(\overline{A}) = 1 - P(A)
$$
💡 **Resumen importante**:
> Una probabilidad **siempre está entre 0 y 1**, y el complemento de un suceso es **lo que falta para completar 1**.
---
## ✅ Clasificación de los Sucesos

### 1. **Sucesos Mutuamente Excluyentes**

- Dos sucesos $A$ y $B$ son **incompatibles o mutuamente excluyentes** si **no tienen elementos en común**.
- **Símbolo**:
$$
A \cap B = \emptyset
$$
### 2. **Sucesos Exhaustivos**

- Dos o más sucesos son **exhaustivos** si su **unión** es el conjunto universal $U$ (cubren todos los casos posibles).

### 3. **Sucesos Complementarios**

- Dos sucesos son **complementarios** si son **exhaustivos y mutuamente excluyentes**.
- El complemento de un suceso $A$ está formado por todos los elementos **que no pertenecen a $A$**.
- **Símbolos del complemento**:
$$
\overline{A},\ A^c,\ A',\ \neg A
$$
