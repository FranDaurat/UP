
-- - 
# Primer Parcial
## Media
![[Pasted image 20250410214147.png]]

## Mediana
![[Pasted image 20250410214204.png]]

## Modo
![[Pasted image 20250410214241.png]]
![[Pasted image 20250410214316.png]]

![[Pasted image 20250410214634.png]]

## Representativa o No representativa
![[Pasted image 20250410214717.png]]

## Coeficiente de variacion poblacional
![[Pasted image 20250410214818.png]]

## Coeficiente de variacion muestral
![[Pasted image 20250410214831.png]]

## Coeficiente de Asimetria
![[Pasted image 20250410214914.png]]

## Laplace 
![[Pasted image 20250410215002.png]]

## Complemento
![[Pasted image 20250410215021.png]]

## Union 
![[Pasted image 20250410215035.png]]

## Sucesos mutuamente excluyentes
![[Pasted image 20250410215122.png]]

## Probabilidades Condicionales
![[Pasted image 20250410215204.png]]

## Formula de bayes
![[Pasted image 20250410215259.png]]

## Distribucion Binomial 
![[Pasted image 20250410215514.png]]
![[Pasted image 20250410215519.png]]
### Coeficiente de variacion en Distribucion Binomial
![[Pasted image 20250411121709.png]]


## Distribucion de Poisson
![[Pasted image 20250410221305.png]]
![[Pasted image 20250410221344.png]]
### Coeficiente de variacion en Distribucion de Poisson
![[Pasted image 20250411121743.png]]

## Estandarizacion es distribucion normal
![[Pasted image 20250418192006.png]]
## Propiedades de la media o esperanza matematica
**![[Pasted image 20250417141948.png]]

## Propiedades de la varianza
![[Pasted image 20250417142016.png]]
-- - 
# Segundo Parcial
## Intervalos de Confianza – Propiedades clave

### Media muestral
$$
\text{Esperanza:} \quad \mathbb{E}[\bar{x}] = \mu
$$
$$
\text{Varianza:} \quad \text{Var}(\bar{x}) = \frac{\sigma^2}{n}
$$
$$\text{Desvío estándar:} \quad \sigma(\bar{x}) = \frac{\sigma}{\sqrt{n}} \quad \text{(Error estándar)}
$$
### Interpretación del IC
- Si IC(0.95) = (a, b), entonces:
  "El 95% de los intervalos construidos con muestras distintas contendrán al parámetro poblacional u".
### NO decimos:
- "Hay un 95% de probabilidad de que u esté entre a y b" ❌
- "Hay un 95% de probabilidad de que {x} esté entre a y b" ❌

### Tipos de parámetros que se estiman con IC:
$$
\mu → \text{media poblacional}
$$
$$
p → \text{proporción poblacional}
$$
$$
\sigma → \text{desvío estándar poblacional} (menos frecuente)
$$

## Inferencia

### Estimadores
![[Pasted image 20250508105722.png]]
### Caso I 

![[Pasted image 20250526154038.png]]

### Caso II 

![[Pasted image 20250508120647.png]] ![[Pasted image 20250508120656.png]]
![[Pasted image 20250526154155.png]]
### Error medio muestal
![[Pasted image 20250508115640.png]]
-- -
# Test de hipotesis

## Estadistico de prueba
- Son los valores del dominio para los cuales se rechaza H0.
- Si el estadistico de prueba cae en la zona de rechazo ---> se rechaza H0.
- En caso contrario no se descarta H0.
### Valor critico
- Es el que divide la region de rechazo de la region de no rechazo.
$$
\bar{X}_c = \mu_0 + t_{1-\alpha, n-1} \cdot \frac{S}{\sqrt{n}}
$$
## 2 Tipos de errores

### Error tipo I
- Rechazar H0 cuando es verdadera. 
$$
\mathbb{P}(\text{cometer un error de tipo I}) = \mathbb{P}(\text{rechazar } H_0 \mid H_0 \text{ es verdadera}) = \alpha
$$
### Error tipo II
- No rechazar H0 cuando es falsa.
$$
\mathbb{P}(\text{cometer un error de tipo II}) = \mathbb{P}(\text{no rechazar } H_0 \mid H_0 \text{ es falsa}) = \beta
$$
### Potencia de prueba
$$
\text{Potencia de la prueba} = \mathbb{P}(\text{tomar la decisión correcta}) = 1 - \beta
$$
## Formulas del estadistico de prueba para cada caso

### A) Test de hipótesis para la media poblacional μ con σ desconocida
$$
t_0 = \frac{\bar{X} - \mu}{\dfrac{S}{\sqrt{n}}}
$$
### B) Test de hipótesis para la proporción poblacional PP

$$
z_0 = \frac{\hat{P} - P}{\sqrt{\dfrac{PQ}{n}}}
$$
(Normal estandarizada)

## P value
- Es el minimo nivel de simplificacion para que H0 sea rechazada.
- Hay 2 opciones para rechazar o no rechazar H0.
![[Pasted image 20250516161002.png]]
-----
# Prueba de hipoteis para muestras independientes

- Se utiliza para comparar medias entre 2 grupos. 
- Primero hay que validar la homogeneidad de las varianzas. Es decir si son iguales o distintas
- Para comparar las medias de 2 poblaciones primero hay que tener en cuanta si son independientes o si son las diferencias entre las medias de un mismo individuo.
### Homogeneidad
- Se usa la Prueba F. 
- Permite decidir si 2 vatianzas son iguales.
### Estadistica de prueba
- Se lo denomina como FM.
- Es el cociente de las varianzas muestrales.
$$
F_{m} = \frac{S_1^2}{S_2^2}
$$
$$
\text{Si } F_{m} < 1 \Rightarrow p\text{-value} = 2 \cdot P(F < F_{m})
$$
$$
\text{Si } F_{m} > 1 \Rightarrow p\text{-value} = 2 \cdot P(F > F_{m})
$$



# 2 casos:

## Caso 1) 
### Prueba T para muestras independientes
- Se hace la prueba T para la diferencia de medias entre observaciones independientes.
- Hay 2 muestras.
- Comparar 2 medias poblacionales entre 2 grupos, las distribucion es normal (Supuesto).
- Hay 2 muestras independientes ---> hay que ver la homogeneidad de las varianzas.

1. Planteamos la hipotesis nula y la hipotesis alternativa.
2. Calculamos la estadisitca de prueba.
3. Obtenemos el Pvalue y acorde a su valor realizamos una comparacion u otra.
4. Comparamos el Pvalue con el alpha y vemos si rechazamos h0 o no.

### Test de diferencia de medias
1. Planteamos la hipotesis nula y la hipotesis alternativa.
$$
H_0: \mu_1 = \mu_2 \\
$$
$$
H_1: \mu_1 < \mu_2
$$
2. Pasamos todos los mu para un lado para igualarlo a 0.
$$
H_0: \mu_1 - \mu_2 = 0 \\
$$
$$
H_1: \mu_1 - \mu_2 < 0
$$
3. Cargamos todos los valores en geogebra de ambas muestras.
4. Comparamos el Pvalue con el alpha y vemos si rechazamos h0 o no.
## Caso 2)
### Prueba para datos apareados
- **Hacer una prueba T para muestras apareadas** (La diferencia entre las medias de un mismo individuo) 
- Hay una sola muestra.

1. Planteamos la hipotesis nula y la hipotesis alternativa.
$$
H_0: \mu_d = 0 \\
$$
$$
H_1: \mu_d > 0 \\
$$
$$\mu_d\ Es\ la\ diferencia\ entre \ los \ valores $$  
2. Hacemos la prueba t para medias emparejadas. El resultado de esto es el Pvalue.
	- Si es menor o mayor es a una cola
	- Si es distintio es a 2 colas.
3. Comparamos el Pvalue con el alpha.
## Caso 3)
### Comparacion de proporciones
- Se realiza cuando debo hacer un test de hipotesis basado en la distribucion normal sobre la proporcion de 2 muestras independientes.

1. Llamamos p(A) al mayor de los 2 porcentajes y p(B) al menor.
2. Planteamos H0 y H1 de investigacion.
$$
H_0: P_A  = P_B
$$
$$
H_1: P_A  \gt P_B
$$
3. Planteamos H0 y H1 estadisticas.
$$
H_0: P_A - P_B = 0
$$

$$
H_1: P_A - P_B \gt 0
$$
4. Ponemos en geogebra los valores de ambas muestras.
5. Comparamos el P-value con el nivel de significacion.
----
# Pruebas no parametricas
## Caso 1) Prueba de la bondad de ajuste
- Es una prueba para decidir si una distribucion teorica puede ser similar a la distribucion de la muestra.
- Se utiliza cuando hay una sola variabla categorica y se quiere ver si los datos se ajustan o no a una distribucion teorica esperada.
$$
%% Hipótesis
H_0: \text{Los datos siguen la distribución teórica} \\
$$
$$
H_1: \text{Los datos NO siguen la distribución teórica}
$$
$$
Estadistico \ de \ prueba \ -->
\chi_m^2 = \sum \frac{(O_i - E_i)^2}{E_i}
$$
$$
O_i = \text{frecuencia observada} \\
$$
$$
E_i = \text{frecuencia esperada}
$$
$$
e_i = m \ .{\text{prop}}
$$

$$
Condición \ de \ validez \ --> \
E_i \geq 5 \quad \text{(si no se cumple, agrupar categorías)}
$$
![[Pasted image 20250604183025.png]]

$$
\text{Grados de libertad ==>} \ \nu = c - 1 - m
$$
- c: cantidad de **grupos** (después de agrupar si es necesario)
- m: cantidad de **parámetros estimados** de la distribución teórica
$$
\text{Valor Critico ==> } \chi^2_{\nu, \alpha}
$$
## Caso 2) Prueba de la independencia
- Trata de ver si 2 variables son dependientes o independientes.
- Se utiliza cuiando hay 2 variables categoricas (Ej: sexo y preferencia).
- Se quiere saber si hay relacion entre ellas o son independientes.
$$
\begin{aligned}
H_0 &: \text{Las variables son independientes} \\
H_1 &: \text{Las variables NO son independientes}
\end{aligned}
$$
$$
Estadistico \ de \ prueba \ -->
\chi_m^2 = \sum \frac{(O_i - E_i)^2}{E_i}
$$
![[Pasted image 20250604183025.png]]

## Caso 3) Prueba de homogeneidad
- Trata de ver si 2 poblaciones son homogeneas. 
- Preguntar si hay diferencias.
- Hay mas de 2 grupos.
$$
%% Hipótesis
H_0: \text{Las distribuciones son iguales entre los grupos (los grupos son homogéneos).} \\
$$
$$
H_1: \text{Al menos uno de los grupos tiene una distribución distinta (no son homogéneos)}
$$
$$

Estadistico \ de \ prueba \ -->
\chi_m^2 = \sum \frac{(O_i - E_i)^2}{E_i}
$$
----
# Analisis de regresion y correlación

- Hay **2 variables**:
  - **X**: variable **independiente** (la que se observa o controla).
  - **Y**: variable **dependiente** (la que se predice o estima).
  - **Y depende de X**, no al revés.

- El modelo de regresión es un **ajuste lineal**, expresado como:

$$
\boxed{y = a + bx}
$$

- **a**: ordenada al origen o **intercepto** → valor estimado de Y cuando X = 0.  

- **b**: pendiente o **coeficiente de regresión** → indica cuánto varía Y por cada unidad adicional en X.

- El modelo **solo es confiable dentro del rango observado de X** (⚠ **no extrapolar** fuera del intervalo de datos).

## 📈 Coeficientes estadísticos

### ▸ Coeficiente de correlación (r)
- Mide la **fuerza y dirección** de la relación lineal entre X e Y.
- Es la riaz cuadrada del coeficiente de determinacion
- Rango: $(-1 \leq r \leq 1)$
	- **Si r ≈ 0** → no hay relación lineal entre las variables.
	- **Si r ≈ 1** → hay una relación lineal directa perfecta.
	- **Si r ≈ -1** → hay una relación lineal inversa perfecta.
- El signo de **r** coincide con **b** (la pendiente).
- Si **r ≈ 1** existe una fuerte asociacion o correlacion entre x e y.
 
### ▸ Coeficiente de determinación (r²)
- Se utiliza para calcular un modelo lineal (que tan buena es la recta de regresion).
- Rango: $(0 \leq r^2 \leq 1)$
  - **r² = 0,80 o más**: se considera un **modelo bueno**, aunque depende del contexto.
  - **r² bajo** puede indicar que:
    - La relación no es lineal,
    - Hay menor relacion entre x e y.
    - Los datos son mas dispersos.
  -  **r² >= 0.80**: El {procentaje} de las variaciones de y pueden explicarse por la variacion de x.

## Test para pendiente β

Se utiliza para predecir la pendiente (β) y la ordenada al origen (α):

$$
\hat{y} = \alpha + \beta x
$$

- **α**: estimador de la ordenada al origen  
- **β**: estimador de la pendiente

### Hipótesis
- **H₀**: β = 0  
Las variables no estan linealmente relacionadas.
- **H₁**: β ≠ 0
Las variables estan linealmente relacionadas.
### Estadístico de prueba

$$
t_0 = \frac{b - \beta}{S_b}
$$

### Criterio de rechazo (CR)
$$
\text{P-value} \leq \alpha
$$
gl = n - 2 
$$
\text{Pv} = 2 \cdot P(t > t_0)
$$

Si **Rechazo H0**, quiere decir que hay una asociacion lineal entre x e y.

