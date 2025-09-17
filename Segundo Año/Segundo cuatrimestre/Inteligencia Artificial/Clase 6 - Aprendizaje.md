-- -
# Resumen – Aprendizaje

## Aprendizaje automático

- Programas que **mejoran con la experiencia**.
    
- Experiencia:
    
    - **Supervisado**: ejemplos clasificados (patrones).
        
    - **No supervisado**: exploración autónoma (prueba y error).
        

## Tipos de aprendizaje

- **Inductivo**: ejemplos específicos → regla general (ej: reconocimiento de caras).
    
- **Deductivo**: reglas generales → casos específicos.
    
- **Refuerzo**: sin datos previos, aprende con prueba/error.
    

## Modelo de agentes que aprenden

- **Rendimiento**: percibe y actúa.
    
- **Aprendizaje**: mejora el rendimiento.
    
- **Crítico**: evalúa desempeño con estándar externo.
    
- **Generador de problemas**: sugiere acciones exploratorias.
    

## Árboles de decisión

- Diagrama que relaciona **condiciones y acciones**.
    
- Útiles para funciones discretas y decisiones formales.
    
- Ventajas: clarifican decisiones, consecuencias y datos críticos.
    
- Limitaciones: sistemas muy complejos → usar tablas de decisión.
    

### Terminología

- Nodo de decisión (⬛): decisión a tomar.
    
- Nodo de probabilidad (⚪): evento aleatorio.
    
- Arista: camino posible.
    

## Probabilidad condicional

$$
P(A \mid E) = \frac{P(A \cap E)}{P(E)}
$$


## Ejemplo

- Indemnización directa: **210.000 USD**.
    
- Juicio: 70% ganar (185k / 415k / 580k), 30% perder (−30k).
    
- Valor esperado juicio = **224.100 USD**.
    
- Decisión más favorable: **ir a juicio**.
    

---
# Arbol de decisión

## Contexto

- Empresa analiza pedidos anticipados para evitar faltantes de stock.
    
- Costos:
    
    - Pedido anticipado: **$50/unidad**.
        
    - Pedido extra por exceso de demanda: **$100/unidad**.
        
- Datos históricos (40 meses):
    
    - 10 unidades → 20 meses (50%).
        
    - 20 unidades → 12 meses (30%).
        
    - 30 unidades → 8 meses (20%).
        

## Pasos del análisis

1. **Alternativas**: comprar 10, 20 o 30 unidades.
    
2. **Estados posibles**: vender 10, 20 o 30 unidades.
    
3. **Probabilidades**:
    
    - P(10) = 0.5
        
    - P(20) = 0.3
        
    - P(30) = 0.2
        
4. **Costos por escenario**:
    
    - Comprar 10: $500 / $1.500 / $2.500.
        
    - Comprar 20: $1.000 / $1.000 / $2.000.
        
    - Comprar 30: $1.500 / $1.500 / $1.500.
        
5. **Esperanza matemática (coste esperado)**:
    
    - Comprar 10 = $1.200
        
    - Comprar 20 = $1.200
        
    - Comprar 30 = $1.500
        

## Resultado

- **Política óptima**: pedir **10 o 20 unidades**.
    
- **Coste esperado mínimo**: **$1.200**.
    

---
# Regresión lineal

## ¿Para qué sirve?
1. Evaluar si dos variables están asociadas.  
2. Predecir valores de una variable \(Y\) a partir de otra \(X\).  
3. Medir el grado de concordancia entre ambas variables.  

## Condiciones para usarla
1. **Existencia**: para todo \(X\), \(Y\) tiene media y varianza finitas.  
2. **Independencia**: los valores de \(Y\) son independientes entre sí.  
3. **Linealidad**: la media de \(Y\) es función lineal de \(X\).  
4. **Homocedasticidad**: la varianza de \(Y\) es constante para todo \(X\).  
5. **Normalidad**: para cada \(X\), \(Y\) sigue distribución normal.  

## Definición
La regresión lineal consiste en encontrar la **recta que mejor se ajusta** a la nube de puntos.  

### Ecuación general
$$
Y = a + bX + \varepsilon
$$

Donde:  
- $Y$: variable dependiente  
- $a$: constante  
- $b$: pendiente  
- $X$: variable independiente  
- $\varepsilon$: error  

## Ejemplo en Excel
1. Seleccionar datos y crear gráfico de dispersión.  
2. Agregar **línea de tendencia lineal**.  
3. En propiedades, marcar **“presentar ecuación en el gráfico”**.  
-- -
