-- -
## Introducción

- Vivimos en una era donde se procesan **entradas** (como datos) para generar **salidas** (como resultados).
    
- Para esto se usan **lenguajes**, que pueden ser:
    
    - **Naturales**: humanos (español, inglés, etc.).
        
    - **Formales**: usados para comunicarse con máquinas (como lenguajes de programación).
        

## Alfabeto (Σ)

- Conjunto **finito y no vacío** de **símbolos no repetidos**.
    
- Ejemplo válido: `{1, 2, 3}`
    
- Ejemplo inválido: `{1, 2, 12}` (12 se forma con 1 y 2)
    

## Cadenas

- Secuencia **finita** de símbolos del alfabeto.
    
- **Cadena vacía**: `λ`
    
- Ejemplo:
    
    - Si Σ = `{a, b}`, entonces: `"aba"`, `"ababaaa"`, `"aaaab"` ∈ Σ*
        

### Σ* (Clausura de Kleene)

- Conjunto de **todas las cadenas posibles** (incluyendo `λ`)
    
- Se define como:
    
    Σ∗=∪Σn(n∈N)Σ* = ∪ Σⁿ (n ∈ ℕ)

## Longitud de una cadena

- Denotada como `|x|`
    
- Ejemplos:
    
    - `|aba| = 3`
        
    - `|λ| = 0`
        

## Concatenación de cadenas

- Si `u = "ab"` y `v = "ba"`, entonces `u·v = "abba"`
    
- `u·λ = λ·u = u`
    

## Potencia de una cadena

- `uⁿ` es `u` concatenado consigo mismo `n` veces  
    Ejemplo: `(aab)³ = aabaabaab`
    

## Prefijos y sufijos

- Si `w = xy` entonces:
    
    - `x` es **prefijo**
        
    - `y` es **sufijo**
        
- Son **propios** si no son la cadena completa.
    
- Ejemplo:  
    `w = abbcc`
    
    - Prefijos: `λ`, `a`, `ab`, `abb`, `abbc`, `abbcc`
        
    - Sufijos: `λ`, `c`, `cc`, `bcc`, `abbcc`
        

## Subcadena

- Si `w = xyz`, entonces `y` es subcadena de `w`
    
- Todos los prefijos y sufijos también lo son
    

## Lenguajes

- Un **lenguaje** es un subconjunto de Σ*, es decir: `L ⊆ Σ*`
    
- Tipos:
    
    - Lenguaje vacío: `L = ∅`
        
    - Lenguaje con cadena vacía: `L = {λ}`
        
- Puede ser **finito o infinito**
    

### Ejemplos:

- Σ = `{a, b}` → L = `{a, aba, aab}`
    
- Σ = `{a, b, c}` → L = `{aⁿ | n ≥ 1}` = `{a, aa, aaa, ...}`
    
- Σ = `{0, 1}` → L = `{0, 01, 010, 111}`
    

---

