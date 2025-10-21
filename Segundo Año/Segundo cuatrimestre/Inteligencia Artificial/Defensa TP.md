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

## Explicación de StandardScaler y Stratify

Tanto **StandardScaler** como la estrategia **Stratify** son técnicas fundamentales utilizadas en la fase de **Preprocesamiento de Datos** antes de entrenar un modelo de Machine Learning, como la Red Neuronal Profunda (DNN) propuesta en tu TP.

## 1. StandardScaler (Escalamiento de Datos)

**StandardScaler** es una técnica de normalización o estandarización de datos.

- **¿Qué es?** Es el módulo que realiza el **Escalamiento** en el _pipeline_ de datos. Transforma las características para que tengan una media (promedio) de 0 y una desviación estándar de 1.
    
- **Propósito:** Asegurar que todas las variables numéricas tengan la **misma magnitud**.
    
- **Justificación para la DNN:** Es **vital** para que el algoritmo de optimización (**Descenso de Gradiente**, como Adam) funcione de manera eficiente y justa. Esto evita que las características con valores numéricos grandes (como el monto de la transacción) dominen el proceso de entrenamiento de la red, impidiendo que el modelo aprenda correctamente de todas las características.
    

---

## 2. Stratify (Estrategia de División Estratificada)

**Stratify** es una estrategia utilizada durante la **División Train/Test** (separación de los datos en conjuntos de entrenamiento y prueba).

- **¿Qué es?** Es una opción que se aplica a la división de los datos.
    
- **Propósito:** Garantizar que la **proporción de clases** (Fraude vs. No Fraude) en los conjuntos de entrenamiento y prueba sea la **misma** que la proporción original del _dataset_ completo.
    
- **Justificación para el TP de Fraude:** En la detección de fraude, los datos están altamente **desequilibrados** (hay muy pocos casos de fraude). Usar _Stratify_ es esencial para asegurar que el rendimiento del modelo (especialmente el **Recall**) se evalúe correctamente sobre una distribución de clases que represente la realidad del problema, evitando sesgos.

-- -
# **Explicacion diagramas**

## 1. Diagrama de Flujo del Sistema DNN

![[Pasted image 20251021153833.png]]


El diagrama ilustra el _pipeline_ (flujo de trabajo) de preparación de datos para el **Sistema de Detección de Fraude (DNN)**, desde que se reciben las transacciones hasta que están listas para el entrenamiento del modelo de Inteligencia Artificial.

|**Paso**|**Bloque del Diagrama**|**Significado y Propósito**|
|---|---|---|
|**Inicio**|**Transacciones Brutas**|Es la materia prima: el conjunto de registros históricos de transacciones financieras tal como se reciben. Estos datos incluyen variables con diferentes escalas (ej: montos grandes y horas pequeñas), valores categóricos (ej: tipo de tarjeta) y el desequilibrio natural de clases (mucho "No Fraude", poco "Fraude").|
|**1**|**Preprocesamiento y Escalamiento**|Se aplica la limpieza de datos (eliminar valores nulos o inconsistencias) y el **Escalamiento** (usando _StandardScaler_). Este paso es crucial para que todas las variables numéricas tengan la misma magnitud. Esto es vital para que el algoritmo de optimización (Descenso de Gradiente, como Adam) funcione de manera eficiente y justa, sin que una característica domine a las demás solo por tener un valor numérico grande.|
|**2**|**Datos Escalados (D1)**|Es el resultado del primer paso: las transacciones están ahora listas para el modelo (limpias, con variables categóricas codificadas y con magnitudes uniformes).|
|**3**|**División Train/Test**|Los datos escalados se dividen en dos subconjuntos principales: **Entrenamiento (Train)** y **Prueba (Test)**. Esta división debe hacerse con la estrategia _stratify_ (estratificada) para asegurar que el conjunto de entrenamiento y el de prueba tengan una proporción similar de casos de fraude/no fraude.|
|**4**|**Conclusión**|Representa la fase final del proceso de modelado, donde la arquitectura DNN (Red Neuronal Profunda) entrenará con los datos de **Entrenamiento** y será evaluada con los datos de **Prueba** para determinar su rendimiento (usando métricas como Loss, Accuracy y **Recall**).|

## 2. Arquitectura completa del sistema de ML

![[Pasted image 20251021154519.png]]

Este diagrama es una representación de la **arquitectura completa de un sistema de Machine Learning (ML)** diseñado para la detección de fraude, mostrando las tres fases principales por las que pasan los datos y el modelo: **Infraestructura de Datos, Pipeline de Entrenamiento, y Modelo en Producción (Inferencia)**.

### 1. Infraestructura de Datos (Azul)

Esta fase se centra en obtener, limpiar y preparar los datos de entrada.

- **Fuente de Datos (_make_classification_):** Representa la entrada inicial de las **Transacciones Brutas**, que son los registros sin procesar.
    
- **Módulo de Preprocesamiento (_StandardScaler_):** Se encarga de la limpieza y la transformación inicial de las transacciones. Utiliza el **StandardScaler** para **escalar las variables** y asegurar que todas tengan la misma magnitud.
    
- **Almacén de Características (_X_scaled, y_):** Es el resultado del preprocesamiento, donde las características (_X_) ya están escaladas y listas, junto con la etiqueta real (_y_) (Fraude/No Fraude).
    

---

### 2. Pipeline de ML/Entrenamiento (Naranja)

Esta es la fase de construcción y ajuste del modelo.

- **Módulo de Preprocesamiento (_StandardScaler_):** Este módulo asegura que el modelo se entrena con los mismos pasos de escalado usados en la preparación de los datos originales, pero aplicados solo a los **Datos de Entrenamiento**.
    
- **Módulo de Entrenamiento (_TensorFlow Keras_):** Aquí es donde se construye, compila y entrena la **Red Neuronal Profunda (DNN)**. Utiliza las librerías _TensorFlow Keras_ para el proceso de ajuste de pesos (_Backpropagation_) y creación del **Modelo Entrenado**.
    
- **Registro de Modelos (_modelSave_):** Almacena y versiona el **Modelo Entrenado** para su uso futuro, mantenimiento o para ser utilizado en producción.
    
- **API de Inferencia (Predicción en tiempo real):** Muestra cómo el modelo entrenado es **Desplegado** y está listo para recibir peticiones para hacer predicciones en tiempo real.
    

---

### 3. Modelo en Producción (Inferencia) (Verde)

Esta fase representa el uso del modelo en un entorno operativo para tomar decisiones sobre nuevas transacciones.

- **Registro de Modelos (_modelSave_):** El modelo entrenado se recupera de este registro.
    
- **API de Inferencia (Predicción en):** Es el servicio activo que recibe **nuevas transacciones** y aplica el modelo desplegado para clasificarlas inmediatamente como Fraude o No Fraude (la predicción en tiempo real).
-- -
## 3. Flujo de Implementación de la DNN (Modelo de Detección de Fraude)

![[Pasted image 20251021155829.png]]

Este diagrama ilustra los pasos secuenciales para construir, entrenar y validar el modelo de Machine Learning utilizando las librerías Scikit-learn y TensorFlow/Keras.

| **Bloque del Diagrama**             | **Paso**                    | **Explicación Funcional**                                                                                                                                                                                                                     |
| ----------------------------------- | --------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Simular/Cargar Datos                | **Carga de Datos (X, y)**   | Se simulan o cargan las transacciones (X, características) y sus etiquetas reales (y, Fraude/No Fraude).                                                                                                                                      |
| Instanciar y Aplicar StandardScaler | **Preprocesamiento**        | Se aplica el **StandardScaler** para **escalar las características** (X) y asegurar que todas las variables numéricas tengan la misma magnitud.                                                                                               |
| Dividir Datos                       | **Separación Train/Test**   | Los datos se dividen en conjuntos de **entrenamiento** y **prueba** (80%/20%) utilizando la estrategia **stratify** para mantener el equilibrio de clases (Fraude/No Fraude) en ambos conjuntos.                                              |
| Definir Arquitectura DNN            | **Construcción del Modelo** | Se define la arquitectura secuencial de la Red Neuronal Profunda (DNN) con sus capas:                                                                                                                                                         |
| Capa Densa (64, ReLU, input)        | _1ª Capa Oculta_            | 64 neuronas con activación **ReLU** (introduce no linealidad). Define la forma de la entrada (input).                                                                                                                                         |
| Capa Densa (32, RELU)               | _2ª Capa Oculta_            | 32 neuronas con activación **ReLU**. Continúa el procesamiento no lineal.                                                                                                                                                                     |
| Capa Densa (1, Sigmoid)             | _Capa de Salida_            | 1 neurona con activación **Sigmoid**. Mapea la salida a una probabilidad entre 0 y 1 para la clasificación binaria.                                                                                                                           |
| Compilar Modelo                     | **Configuración**           | Se configura el modelo con el optimizador **Adam** y la función de pérdida **Binary Crossentropy** (necesaria para problemas binarios).                                                                                                       |
| Entrenar Modelo                     | **Ajuste de Pesos**         | Se entrena el modelo (_model.fit_) con los datos de entrenamiento a lo largo de 10 épocas (_epochs_) y reservando una porción (_validation_split_) para la validación interna del modelo. Este paso ejecuta el algoritmo **Backpropagation**. |
| Evaluar Modelo                      | **Prueba (Test)**           | Se evalúa el modelo entrenado (_model.evaluate_) utilizando el conjunto de datos de prueba (x_test, y_test) que el modelo nunca ha visto.                                                                                                     |
| Imprimir Métricas                   | **Reporte**                 | Se muestran las métricas de rendimiento clave: **Loss** (pérdida final), **Accuracy** (precisión general), y **Recall** (sensibilidad, crucial para detectar fraudes).                                                                        |
| Guardar Modelo                      | **Despliegue**              | El modelo entrenado se guarda (_model.save_) para poder ser desplegado en producción y utilizarse para la inferencia en tiempo real.                                                                                                          |
| Fin                                 |                             | El proceso ha finalizado.                                                                                                                                                                                                                     |
--- -
## 4. Diagrama de Clases: Componentes de la DNN y Pipeline de Datos

![[Pasted image 20251021161721.png]]

Este diagrama es un **Diagrama de Clases** que representa la estructura de los componentes de software (clases y sus relaciones) utilizados para implementar el modelo de detección de fraude con la Red Neuronal Profunda (DNN). Se enfoca en cómo los datos se preparan y se utilizan para construir el modelo en Keras.

El diagrama muestra las clases principales, sus atributos (datos) y métodos (funciones), y cómo interactúan para llevar a cabo el entrenamiento.

### 1. Clases de Datos y Preprocesamiento

| **Clase**       | **Propósito y Contenido**                                                                                                                                                                                                                                                                                                                                       | **Relaciones Clave**                                                                                          |
| --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| **DataSet**     | Representa la fuente de datos. Contiene el método `make_classification` para simular o cargar las transacciones. Sus atributos son los datos de entrada **X** (características) y la etiqueta **y** (fraude/no fraude), ambos como _ndarray_ (arreglos de datos).                                                                                               | **Alimenta** el modelo (`Preprocessor` de Keras) con los datos ya divididos y escalados.                      |
| **Preprocesor** | Representa las herramientas de preparación de datos (Scikit-learn). Contiene el método `StandardScaler` para el escalamiento y el método `fit_transform(X)` para aplicar el escalamiento. También contiene el método `train_test_split(X_scaled, y)` para dividir los datos en conjuntos de entrenamiento (`x_train`, `y_train`) y prueba (`x_test`, `y_test`). | **Usa/Alimenta** a la clase `Preprocessor` (entrenamiento) y a la clase `Preprocessor` (preparación inicial). |


### 2. Clase del Modelo (Keras)

| **Clase**                | **Propósito y Contenido**                                                                                                                                                                                                                                                                                                                                                                     | **Relaciones Clave**                                                                                                          |
| ------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| **Preprocessor** (Keras) | Representa el flujo de trabajo de Machine Learning y el modelo en sí (construcción y entrenamiento) usando **TensorFlow Keras**. Contiene el constructor `Sequential(model)` y el método `add(Layer)` para añadir capas. Incluye los métodos `compile` (para definir el optimizador, la función de pérdida y las métricas) y `fit` (para ejecutar el entrenamiento a lo largo de las épocas). | **Contiene** instancias de la clase `DenseLayer` (las capas de la DNN). **Usa** la clase `DenseLayer` para evaluar el modelo. |
| **DenseLayer**           | Representa la unidad fundamental de la Red Neuronal Profunda. Define los parámetros de cada capa de la DNN (64, 32 y 1 neurona). Sus atributos son: **units** (número de neuronas), **activation** (ej: RELU, Sigmoid) y **input_shape** (la dimensión de la entrada).                                                                                                                        | Es **contenida** por el `Preprocessor` (Keras) para formar la arquitectura de la red (Capas 64/32/1).                         |

En esencia, el diagrama muestra un ciclo donde los datos son cargados, limpiados y divididos (clase `Preprocessor` de Scikit-learn), y luego usados para construir y ajustar el modelo de capas densas (`Preprocessor` de Keras) mediante el entrenamiento (`fit`)
-- -

## 5. Diagrama de Información del Sistema de Detección de Fraude

![[Pasted image 20251021163152.png]]

Este diagrama modela la estructura de la base de datos y los flujos de información del sistema, mostrando cómo los datos crudos se preparan, entrenan y registran para la inferencia del modelo DNN.

### 1. Entidades de Datos Crudos

| **Entidad**     | **Propósito y Atributos Clave**                                                                                        | **Relación**                                                          |
| --------------- | ---------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------- |
| **TRANSACTION** | Contiene los registros generales de las transacciones. Incluye la etiqueta real de lo que se intenta predecir.         | **Tiene** una relación con el `Preprocessor` (que utiliza sus datos). |
|                 | `transaction_id` (Clave Primaria), `float amount`, `int is_fraud` (Etiqueta Real).                                     |                                                                       |
| **FEATURE**     | Contiene las características de ingeniería que se alimentan al modelo DNN. Cada registro se vincula a una transacción. | **Utiliza** el `Preprocessor` para escalar y dividir sus datos.       |
|                 | `feature_id` (Clave Primaria), `transaction_id` (Clave Foránea), y las `float feature_v1` a `feature_v15`.             |                                                                       |

### 2. Módulo de Preprocesamiento (Motor de Datos)

|**Clase**|**Propósito y Métodos Clave**|**Relaciones Clave**|
|---|---|---|
|**Preprocessor**|Representa el código que maneja la preparación de datos (Scikit-learn/Keras). Sus métodos transforman los datos de las tablas `TRANSACTION` y `FEATURE`.|**Utiliza** datos de `TRANSACTION` y `FEATURE`. **Genera** la `MODEL_VERSION` (ya que sus métodos definen cómo se usan los datos para entrenar el modelo).|
||`StandardScaler scaler`, `fit_transform(X)` (para escalamiento), `train_test_split(X_scaled, y)` (para dividir los datos).||

### 3. Entidades de Modelo y Predicción

|**Entidad**|**Propósito y Atributos Clave**|**Relación**|
|---|---|---|
|**MODEL_VERSION**|Almacena y versiona el modelo DNN entrenado. Registra el algoritmo usado y el rendimiento obtenido.|Es **generada** por el `Preprocessor` al finalizar el entrenamiento. **Contiene** la tabla `FRAUD_PREDICTION` (almacena las predicciones hechas por esta versión).|
||`model_version_id` (Clave Primaria), `string algorithm` (DNN), `trained_date`, `recall_score` (métrica clave).||
|**FRAUD_PREDICTION**|Almacena los resultados de la inferencia (predicciones) hechas por una versión específica del modelo.|Es **contenida** por la `MODEL_VERSION`.|
||`prediction_id` (Clave Foránea), `model_version_id` (Clave Foránea), `risk_probabilities` (la salida Sigmoid).||

El diagrama ilustra un flujo integral desde los **Datos Brutos** (Tablas `TRANSACTION`/`FEATURE`) $\to$ **Preparación (`Preprocessor`)** $\to$ **Modelo Entrenado (`MODEL\_VERSION`)** $\to$ **Resultado/Inferencia (`FRAUD\_PREDICTION`)**.

--- -
## 6. Flujo del Ciclo de Vida del Modelo DNN

![[Pasted image 20251021163700.png]]


Este diagrama de flujo ilustra el **ciclo de vida del modelo de Red Neuronal Profunda (DNN)**, desde su definición hasta su despliegue, usando la estructura de la librería Keras (Python).

Es una vista de alto nivel del proceso de **Entrenamiento y Validación** que se da en tu TP de detección de fraude.

| **Bloque del Diagrama** | **Fase**                          | **Explicación del Proceso**                                                                                                                                                                                                                                                                                                                               |
| ----------------------- | --------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Inicializado**        | **Definición del Flujo**          | Comienza con la llamada a `Sequential()`, que establece que la red neuronal tendrá un flujo de datos lineal, donde la información pasa secuencialmente de una capa a la siguiente.                                                                                                                                                                        |
| **Construyendo**        | **Arquitectura (Topología)**      | Se añaden las capas densas (`model.add(Dense)`). La arquitectura elegida es **64 → 32 → 1**, que consiste en dos capas ocultas (64 y 32 neuronas, ambas con activación **ReLU** para introducir no linealidad) y una capa de salida (1 neurona con activación **Sigmoid** para clasificación binaria).                                                    |
| **Compilando**          | **Configuración del Aprendizaje** | Se configura el modelo (`model.compile()`) antes del entrenamiento. Se define el: **Optimizer=Adam** (el algoritmo de Descenso de Gradiente), y **Loss=BinaryCrossentropy** (la función de pérdida para medir el error en un problema binario).                                                                                                           |
| **Entrenando**          | **Ajuste de Pesos**               | Es la ejecución de la función `model.fit()`, donde se alimentan los datos de entrenamiento. En cada paso se aplica el algoritmo de **Backpropagation** para ajustar los pesos sinápticos de la red y minimizar la pérdida.                                                                                                                                |
| **Validando**           | **Monitoreo Interno**             | Durante el entrenamiento, se reserva una porción de los datos (`validation_split`) para hacer una **predicción interna**. Esto permite monitorear el rendimiento del modelo en datos no vistos en ese _epoch_, ayudando a detectar si está ocurriendo un sobreajuste. El proceso de _Entrenando_ y _Validando_ se repite hasta que se cumplen las épocas. |
| **Entrenado**           | **Guardar Resultado**             | Una vez que se cumplen todas las épocas de entrenamiento, se llama a `model.save()` para guardar el modelo final ajustado (sus pesos y arquitectura).                                                                                                                                                                                                     |
| **Desplegado**          | **Uso en Producción**             | El modelo guardado se pasa a la **API** (Application Programming Interface), lo que significa que está listo para la **Inferencia** (clasificar nuevas transacciones en tiempo real).                                                                                                                                                                     |
