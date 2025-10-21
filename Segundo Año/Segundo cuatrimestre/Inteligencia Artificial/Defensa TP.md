-- -
# 1. ¿Qué es el **aprendizaje supervisado**?

Es un tipo de entrenamiento de modelos donde el algoritmo aprende **a partir de datos etiquetados**.  
Esto significa que **cada entrada (input)** en el conjunto de datos **tiene una salida (output) conocida**, es decir, una “respuesta correcta”.

### Ejemplo:

Si querés entrenar un modelo para detectar fraudes:

- Input: características de una transacción (monto, hora, ubicación, etc.)
    
- Output: etiqueta que indica si fue **fraude (1)** o **no fraude (0)**
    

El modelo **aprende a predecir** esa salida a partir de los ejemplos anteriores.

### Objetivo:

Aprender una **función que relacione entradas con salidas** para poder predecir nuevas instancias correctamente.

---

## ¿Qué es el **aprendizaje no supervisado**?

En este caso, el modelo **no recibe etiquetas**. Solo se le dan los datos sin decirle cuál es la salida correcta.

### Ejemplo:

Un dataset con miles de transacciones, pero **sin saber cuáles son fraudulentas** y cuáles no.

### Objetivo:

Descubrir **patrones ocultos o agrupamientos (clusters)** en los datos.

---

## Diferencias clave

|Característica|Aprendizaje Supervisado|Aprendizaje No Supervisado|
|---|---|---|
|**Etiquetas (output conocido)**|✅ Sí|❌ No|
|**Ejemplos típicos**|Clasificación, regresión|Clustering, reducción de dimensionalidad|
|**Ejemplo práctico**|Detectar fraudes, reconocer spam|Agrupar clientes según su comportamiento|
|**Entrada de datos**|Input + Output|Solo Input|
|**Resultado esperado**|Modelo que predice salidas conocidas|Estructura interna de los datos|

---

## En tu TP:

Usaste **aprendizaje supervisado** porque el modelo fue entrenado con **transacciones ya etiquetadas como fraude o no fraude**, y se buscó que **aprendiera a clasificar nuevas transacciones** correctamente.

-- -

# 2. ¿Qué es una Red Neuronal Profunda?

Las **Redes Neuronales Profundas (DNN, por _Deep Neural Networks_)** son una clase de modelos de aprendizaje supervisado inspirados en el funcionamiento del cerebro humano. Son una extensión de las redes neuronales artificiales tradicionales, pero con **más capas ocultas**, lo que les permite aprender representaciones complejas y abstractas de los datos.

---

Una DNN es una red neuronal que tiene:

- Una **capa de entrada** (input layer)
    
- **Varias capas ocultas** (hidden layers) — esto es lo que la hace “profunda”
    
- Una **capa de salida** (output layer)
    

Cuantas más **capas ocultas** tenga la red, **más profunda** es.

---

### Estructura básica de una DNN

```
Entrada → Capa oculta 1 → Capa oculta 2 → ... → Capa oculta N → Salida
```

Cada capa está compuesta por **neuronas artificiales**, que aplican una función matemática sobre los datos y las **pesan** en base al entrenamiento.

---

## ¿Qué hacen las DNN?

Las redes neuronales profundas **aprenden representaciones jerárquicas de los datos**. Por ejemplo, en imágenes:

- Las primeras capas pueden detectar bordes
    
- Las intermedias pueden detectar formas
    
- Las últimas pueden detectar objetos complejos
    

En tu caso, aplicado a **detección de fraudes**:

- Capas iniciales pueden identificar patrones simples (como montos altos)
    
- Capas intermedias pueden identificar combinaciones sospechosas (ubicación + hora)
    
- Capas finales deciden si es fraude o no
    

---

## ¿Por qué son poderosas?

Las DNN:

- Aprenden **características automáticamente** (no necesitan que se las definan manualmente)
    
- Pueden capturar **relaciones no lineales muy complejas**
    
- Funcionan muy bien con **grandes volúmenes de datos**
    

---

## Elementos clave en una DNN

|Componente|Descripción|
|---|---|
|**Neuronas**|Cada una realiza un cálculo: suma ponderada + función de activación|
|**Pesos (weights)**|Valores que indican la importancia de cada entrada|
|**Funciones de activación**|Como ReLU, Sigmoid, Tanh. Introducen no linealidad|
|**Backpropagation**|Algoritmo que ajusta los pesos durante el entrenamiento|
|**Función de pérdida (loss)**|Mide qué tan mal predice la red, para corregir errores|
|**Optimización (e.g., Adam)**|Algoritmo que busca minimizar la función de pérdida|

---

## En tu TP

Usaron una red neuronal profunda con capas como:

- **Input Layer:** recibe los features de la transacción
    
- **Hidden Layers:** extraen combinaciones complejas de patrones
    
- **Output Layer:** devuelve 1 (fraude) o 0 (no fraude)
    

Y aplicaron:

- **Funciones de activación ReLU y Sigmoid**
    
- **Backpropagation**
    
- **Función de pérdida Binary Cross Entropy**
    
- **Optimizador Adam**
    

---

# 3. Funciones de Activación: **ReLU** y **Sigmoid**

Las **funciones de activación** son funciones matemáticas que se aplican a la salida de cada neurona. Le permiten a la red **modelar relaciones no lineales**, lo cual es esencial para problemas complejos como la detección de fraudes.

### ReLU (_Rectified Linear Unit_)

**Fórmula:**  
$$  
f(x) = \max(0, x)  
$$

**Qué hace:**

- Devuelve el mismo valor si es positivo
    
- Devuelve 0 si es negativo
    

**Ventajas:**

- Simple y eficiente computacionalmente
    
- Ayuda a evitar el problema del **desvanecimiento del gradiente**
    
- Funciona muy bien en capas ocultas
    

**En tu TP:**  
Usaron **ReLU en las capas ocultas** para extraer patrones no lineales complejos de los datos.

---

### Sigmoid

**Fórmula:**  
$$  
f(x) = \frac{1}{1 + e^{-x}}  
$$

**Qué hace:**

- Comprime la salida entre 0 y 1
    
- Interpretable como una **probabilidad**
    

**En tu TP:**  
Usaron **Sigmoid en la capa de salida**, ya que el objetivo es **clasificar**:

- 0 = transacción normal
    
- 1 = transacción fraudulenta
    

---

## 2. Backpropagation

Es el **algoritmo de entrenamiento** que permite a la red aprender.

### ¿Qué hace?

Ajusta los **pesos de las conexiones** entre neuronas, **minimizando el error** en la predicción.

### ¿Cómo funciona?

1. **Forward pass:** se calcula la salida de la red con los pesos actuales
    
2. **Se mide el error** entre la salida obtenida y la salida esperada (ground truth)
    
3. **Se propaga el error hacia atrás** desde la salida hasta la entrada
    
4. Se calcula el **gradiente de la función de pérdida** con respecto a cada peso
    
5. Se **actualizan los pesos** para minimizar ese error
    

### ¿Con qué se combina?

Con un **optimizador**, como **Adam**, que decide cuánto y cómo ajustar los pesos.

---

## 📉 3. Función de Pérdida: **Binary Cross Entropy**

Es una función que mide qué tan mal están las predicciones de la red respecto a los valores reales.  
Se usa en **clasificación binaria** (como fraude vs no fraude).

### Fórmula:

$$  
\text{Loss} = -[y \cdot \log(\hat{y}) + (1 - y) \cdot \log(1 - \hat{y})]  
$$

Donde:

- $y$: valor real (0 o 1)
    
- $\hat{y}$: probabilidad predicha por la red
    

### ¿Por qué se usa?

- Penaliza mucho cuando la red está muy equivocada
    
- Da resultados en escala de 0 a 1, ideal para tareas de clasificación
    

**En tu TP:**  
La red fue entrenada para minimizar este error entre las predicciones y la realidad.

---

## 4. Optimizador **Adam**

Es un **algoritmo de optimización** muy usado para entrenar redes neuronales.

### ¿Qué hace?

Durante el backpropagation, decide **cuánto deben ajustarse los pesos** para reducir la pérdida.

### ¿Por qué es tan usado?

- Combina lo mejor de dos algoritmos: **Momentum** y **RMSProp**
    
- Ajusta automáticamente la tasa de aprendizaje para cada peso
    
- Es eficiente y robusto, ideal para datasets grandes y ruidosos
    

**En tu TP:**  
Se usó **Adam** para optimizar los pesos y garantizar que la red converja más rápido.

---

## En resumen, en tu TP:

|Componente|Rol|
|---|---|
|**ReLU**|Función de activación en capas ocultas|
|**Sigmoid**|Activación final para devolver una probabilidad de fraude|
|**Binary Cross Entropy**|Mide el error de predicción en clasificación binaria|
|**Backpropagation**|Propaga el error y ajusta los pesos|
|**Adam**|Decide cómo ajustar los pesos para minimizar el error|

---

# Explicacion diagramas

## Explicación del Diagrama de Flujo del Sistema DNN

![[Pasted image 20251021153833.png]]


El diagrama ilustra el _pipeline_ (flujo de trabajo) de preparación de datos para el **Sistema de Detección de Fraude (DNN)**, desde que se reciben las transacciones hasta que están listas para el entrenamiento del modelo de Inteligencia Artificial.

|**Paso**|**Bloque del Diagrama**|**Significado y Propósito**|
|---|---|---|
|**Inicio**|**Transacciones Brutas**|Es la materia prima: el conjunto de registros históricos de transacciones financieras tal como se reciben. Estos datos incluyen variables con diferentes escalas (ej: montos grandes y horas pequeñas), valores categóricos (ej: tipo de tarjeta) y el desequilibrio natural de clases (mucho "No Fraude", poco "Fraude").|
|**1**|**Preprocesamiento y Escalamiento**|Se aplica la limpieza de datos (eliminar valores nulos o inconsistencias) y el **Escalamiento** (usando _StandardScaler_). Este paso es crucial para que todas las variables numéricas tengan la misma magnitud. Esto es vital para que el algoritmo de optimización (Descenso de Gradiente, como Adam) funcione de manera eficiente y justa, sin que una característica domine a las demás solo por tener un valor numérico grande.|
|**2**|**Datos Escalados (D1)**|Es el resultado del primer paso: las transacciones están ahora listas para el modelo (limpias, con variables categóricas codificadas y con magnitudes uniformes).|
|**3**|**División Train/Test**|Los datos escalados se dividen en dos subconjuntos principales: **Entrenamiento (Train)** y **Prueba (Test)**. Esta división debe hacerse con la estrategia _stratify_ (estratificada) para asegurar que el conjunto de entrenamiento y el de prueba tengan una proporción similar de casos de fraude/no fraude.|
|**4**|**Conclusión**|Representa la fase final del proceso de modelado, donde la arquitectura DNN (Red Neuronal Profunda) entrenará con los datos de **Entrenamiento** y será evaluada con los datos de **Prueba** para determinar su rendimiento (usando métricas como Loss, Accuracy y **Recall**).|
