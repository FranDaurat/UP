- - -
## Preguntas para el oral.

### 1. ¿Qué significa que $a$ divida a $b$?

Se dice que un entero $a$ (distinto de cero) divide a un entero $b$ si y solo si existe un entero $c$ tal que $b = a \cdot c$.

- Se anota como $a|b$.
    
- En este caso, $b$ es un **múltiplo** de $a$, y $a$ es un **divisor** de $b$.
    

---

### 2. ¿Qué tiene que pasar para que la ecuación de congruencia y la diofántica tengan solución?

- **Ecuación Lineal de Congruencia** ($ax \equiv b \pmod{m}$):
    
    - Tiene solución si y solo si el máximo común divisor entre $a$ y $m$ divide a $b$.
        
    - En símbolos: $\mathbf{\text{mcd}(a, m) | b}$.
        
    - Si tiene solución, tendrá $\mathbf{d}$ soluciones mutuamente incongruentes módulo $m$, donde $d = \text{mcd}(a, m)$.
        
- **Ecuación Diofántica** ($ax + by = c$):
    
    - Tiene solución si y solo si el máximo común divisor entre $a$ y $b$ divide a $c$.
        
    - En símbolos: $\mathbf{\text{mcd}(a, b) | c}$.
        

---

### 3. ¿Qué es una ecuación diofántica?

Una ecuación diofántica es una ecuación lineal con coeficientes enteros que exige que sus soluciones ($x$ e $y$) también sean **enteras**.

- Su forma simbólica es: $\mathbf{ax + by = c}$, con $a, b, c \in \mathbb{Z}$.

---

### 4. ¿Qué es una ecuación lineal de congruencia?

Es una ecuación de la forma $\mathbf{a \cdot X \equiv b \pmod{m}}$, donde $a$ y $b$ son enteros, y la incógnita $X$ debe verificar que $m$ divide a $a \cdot X - b$.

- Se denomina "lineal" porque la incógnita $X$ tiene como exponente 1.
    

---

### 5. ¿Qué significa que dos números sean coprimos?

Dos números enteros $a$ y $b$ se dicen **coprimos** si en su descomposición en factores primos no tienen **ningún factor primo en común**.

- Esto es equivalente a decir que su máximo común divisor es 1.
    
- En notación: $\mathbf{\text{mcd}(a, b) = 1}$.
    
- Si $\text{mcd}(a, m) = 1$, la ecuación de congruencia $ax \equiv b \pmod{m}$ tiene una **única solución** módulo $m$.
    

- (Preguntas muy generales sobre el 2do parcial).

### 6.  Mínimo Común Múltiplo (MCM)

El MCM entre dos números enteros $a$ y $b$, no simultáneamente iguales a cero, es el **menor de todos los múltiplos que tienen en común**. Se denota como $\text{mcm}(a, b)$ o $[a, b]$.

Para que un entero $m$ sea el $\text{mcm}(a, b)$, debe cumplir tres condiciones3:

1. $a$ divide a $m$ y $b$ divide a $m$ ($m$ es un múltiplo común).
    
2. Si $m'$ es cualquier otro múltiplo común (es decir, $a|m'$ y $b|m'$), entonces $m$ debe dividir a $m'$.
    

### 7. Máximo Común Divisor (MCD)

El MCD entre dos números enteros $a$ y $b$, no simultáneamente iguales a cero, es el **mayor de todos los divisores que dichos números tienen en común**. Se denota como $\text{mcd}(a, b)$ o $(a, b)$.

Para que un entero $d$ sea el $\text{mcd}(a, b)$, debe cumplir dos condiciones:

1. $d$ divide a $a$ y $d$ divide a $b$ ($d$ es un divisor común).
    
2. Si $d'$ es cualquier otro divisor común (es decir, $d'|a$ y $d'|b$), entonces $d'$ debe dividir a $d$.