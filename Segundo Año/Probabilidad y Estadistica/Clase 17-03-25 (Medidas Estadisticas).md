
-- -
# 📊 Medidas Estadísticas o Resumen

Las **medidas resumen** permiten **resumir** las principales características de un conjunto de datos. Se clasifican en:

### 1. **Medidas de Posición o Tendencia Central**

- Identifican valores "típicos" en los datos.
- Muestran la tendencia a agruparse en torno a un punto central.

### 2. **Medidas de Dispersión**

- Miden la **variabilidad** o **dispersión** de los datos.
- Dos conjuntos pueden tener la misma tendencia central pero diferente dispersión.

### 3. **Medidas de Forma**

- Describen la **forma** o **patrón** de los datos.
- Incluyen **asimetrías** y **valores atípicos** (valores poco comunes).

---
## 📍 Medidas de Posición Central o Tendencia Central

### 1. **Promedio o Media Aritmética**

- Es la medida de tendencia central más conocida y utilizada.
- Se representa como:
    - **μ** (letra griega) cuando se refiere a una **población**.
    - **x̄** (x barra) cuando se refiere a una **muestra**.
- **μ** es un **parámetro constante** (valor fijo), mientras que **x̄** es una **variable aleatoria** que puede cambiar según la muestra.
- **Cálculo**: suma de todos los valores observados dividido por el total de datos.

### 2. **Mediana**

- Es el valor que ocupa la **posición central** cuando los datos están ordenados.
- Divide al conjunto en dos partes iguales:
    - 50% de los valores son menores o iguales a la mediana.
    - 50% son mayores o iguales a la mediana.
- **Símbolo**: `Me`
- **Cálculo**:
    - Si el número de datos es impar, la mediana es el valor central.
    - Si es par, se promedian los dos valores centrales.
- **Ejemplos**:
    - Datos: `3 – 5 – 12 – 16 – 9`
        - Ordenados: `3 – 5 – 9 – 12 – 16` → **Me = 9**
    - Datos: `-2 – 3 – 5 – 8 – 12 – 25`
        - Ordenados: `-2 – 3 – 5 – 8 – 12 – 25`
        - Como son pares, Mediana = promedio de `5` y `8`: **Me = (5 + 8) / 2 = 6.5**

## 3. **Moda o Modo (Mo)**

- **Definición**: Valor de la variable que aparece con **mayor frecuencia** en un conjunto de datos (el que más se repite).
- En un gráfico de barras, la moda corresponde a la **barra más alta**.
- **Ejemplos**:
    - Datos: `2 – 5 – 3 – 2 – 3 – 2 – 5` → **Mo = 2** (Unimodal, una sola moda).
    - Datos: `3 – 5 – 2 – 5 – 2 – 3 – 5` → **Mo = 5** (se repite 3 veces, es el más frecuente).
    - Datos: `3 – 5 – 2 – 5 – 2 – 3 – 5 – 3` → **Mo = 3 y 5** (Bimodal, dos modas).
    - Datos: `1 – 2 – 3 – 4 – 5 – 6 – 7 – 8` → **Mo = ?** (Amodal, no existe).

---- 
## 📏 Medidas de Posición Relativas

- Son medidas que dividen la distribución en partes iguales:
    - **Cuartiles**: 4 partes iguales.
    - **Deciles**: 10 partes iguales.
    - **Percentiles**: 100 partes iguales.

### ✅ Percentiles:

- Se representan como **P(k)**, donde **k** es el porcentaje.
- Ejemplo:
    - **P(33)**: valor **por debajo del cual queda el 33%** de los datos.
    - **P(50)**: equivale a la **Mediana**.

---
## 📊 Medidas de Dispersión

- Evalúan qué tan **"dispersos" o "distintos"** son los valores de una variable.
- Comparan la **distancia** entre cada valor y el **promedio**.

### 🔸 Ejemplo Introductorio:

Notas de 3 alumnos en parciales:

- **Alumno A**: `4 – 4 – 4` → **Promedio: 4**
- **Alumno B**: `2 – 4 – 6` → **Promedio: 4**
- **Alumno C**: `1 – 4 – 10` → **Promedio: 4`

⚠️ Aunque el promedio es igual para los tres, la **dispersión** varía:

|Alumno|Dispersión|Motivo|
|---|---|---|
|A|Menor|Siempre sacó 4. **Sin variación.**|
|B|Media|Notas **parecidas** (cierta dispersión).|
|C|Mayor|Notas **muy distintas** (alta dispersión).|
## Profundización en las Medidas de Dispersión

Cuando hay **muchos datos**, es necesario definir una **medida precisa de dispersión** para saber qué conjunto es más disperso.

### ✅ Intento inicial: **Desvíos respecto a la media**

- **Desvío**: Diferencia entre cada dato y el promedio: $x−xˉx - \bar{x}x−xˉ.$
- **Problema**: Si sumamos los desvíos, siempre da **cero**, ya que el promedio es un punto de equilibrio.

**Ejemplo:**

Notas:

- Alumno A: `4 – 4 – 4`
- Alumno B: `2 – 4 – 6`
- Alumno C: `1 – 4 – 10`

**Promedio para todos**: 4

**Cálculo de desvíos:**

- A: `(4−4)+(4−4)+(4−4)` = 0 
- B: `(2−4)+(4−4)+(6−4)` =− 2+0+2 = 0
- C:` (1−4)+(4−4)+(10−4)` =−3+0+6 = 

➡️ Por eso **la suma de desvíos siempre es 0**, y **no mide la dispersión**.

### 🧠 ¿Cómo solucionar este problema?

- **Solución**: **Elevar al cuadrado** los desvíos (para evitar negativos) → **siempre positivos**.

## 📏 Varianza y Desvío Estándar

### 1. **Varianza**

- Media de los desvíos al cuadrado.
- **Símbolos**:
    - **Población**: $\sigma^2$
    - **Muestra**: $s^2$


### 2. **Desvío Estándar**

- Raíz cuadrada de la varianza (para mantener la misma unidad de medida que los datos).
- **Símbolos**:
    - **Población**: $\sigma$
    - **Muestra**: $s$

## 📏 Coeficiente de Variación (C.V.)

- Es una **medida de dispersión** que **no lleva unidad**.
- Permite **comparar** la dispersión de dos o más muestras **sin importar la unidad de medida**.
- Fórmula:
$$
CV = \frac{\text{Desvío estándar}}{\text{Media}} \times 100
$$
### ✅ Interpretación:

- Si $CV > 20\%$, el conjunto de datos es **heterogéneo** → la media **no es representativa**.
- Si $CV < 20\%$, el conjunto de datos es **homogéneo** → la media **sí es representativa**.

---
## 📐 Medidas de Forma

Al describir un conjunto de datos es importante considerar la **forma** o **patrón** de la distribución.

- Si la distribución **no es simétrica**, se llama **asimétrica** o **sesgada**.

### ✅ **Coeficiente de Asimetría (AS)**

- Fórmula:
$$
AS = \frac{\bar{x} - Mo}{s}
$$
$Me$ = $\bar{x}$
## 🔑 Interpretación del Coeficiente de Asimetría:

### 1. Asimetría Positiva ($AS > 0$):
- La distribución está sesgada hacia la derecha.
- **Relación**: $Mo < < \bar{x}$
- **Ejemplo**: ingresos.

### 2. Asimetría Negativa ($AS < 0$):
- La distribución está sesgada hacia la izquierda.
- **Relación**: $Mo > \bar{x}$
- **Ejemplo**: vida útil de una batería.

### 3. Distribución Simétrica ($AS \approx 0$):
- **Relación**: $Mo \approx Me \approx \bar{x}$ (las tres medidas son aproximadamente iguales).
- **Ejemplo**: consumo de agua.

> **Nota**: Al observar la **gráfica** (histograma o barra), también se puede identificar visualmente la simetría o asimetría de los datos.