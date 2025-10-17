-- -
## Aprendizaje en las Redes Neuronales

El aprendizaje en una red neuronal es el proceso de ajuste de los pesos sinápticos para que la salida de la red se aproxime lo más posible a una salida deseada, minimizando una función de error.

### 1. Aprendizaje Supervisado

En este modo, la red aprende a partir de un conjunto de datos que incluye tanto los patrones de entrada como las salidas correctas deseadas.

**Proceso Detallado:**

1. **Inicialización:** Los pesos de las sinapsis se inicializan con valores aleatorios.
    
2. **Cálculo de Salida:** Para cada patrón de entrada $P_{entrada}$ la red realiza su dinámica interna y calcula una salida $S_{red}$
    
3. **Cálculo del Error:** Se mide la diferencia entre la salida de la red $S_{red}$ y la salida deseada $P_{salida\_deseada}$. Frecuentemente se utiliza el error cuadrático medio, cuya fórmula es:
    $$Error_{parron} = \sqrt{\sum_{l}(P_{sallda.deseada.l})^2 - (S_{red.l})^2}$$
4. **Ajuste de Pesos:** Se utiliza una regla de aprendizaje para ajustar los pesos sinápticos con el objetivo de disminuir el error. Esto se logra creando una función que representa el error, la cual se deriva para aplicar técnicas de minimización matemática.

5. **Iteración:** El proceso se repite desde el paso 2 hasta que el error sea menor a un criterio predefinido o todos los patrones se clasifiquen correctamente.
    

**Redes y Aplicaciones:**

- Las redes más significativas que usan este aprendizaje son el **Perceptrón**, el **Perceptrón Multicapa** y la **red de Hopfield**.
    
- Sus aplicaciones incluyen **asociadores de patrones** (recuperar información a pesar de errores en la entrada) y **modeladores funcionales** (aproximar una función a partir de algunos de sus puntos).
    
### 2. Aprendizaje No Supervisado

Este tipo de aprendizaje no requiere salidas deseadas. La red identifica patrones y los clasifica en categorías basadas en su grado de similitud.

- **Medida de Similitud:** La similitud entre patrones se determina a menudo usando el error cuadrático medio.
    
- **Tipos de Aprendizaje No Supervisado:**
    
    - **Aprendizaje por Componentes Principales:** Se basa en hallar características principales (componentes) comunes a muchos patrones de entrada. Un pequeño número de neuronas coopera para representar el patrón.
        
    - **Aprendizaje Competitivo:** Las neuronas compiten entre sí para representar un patrón de entrada. La neurona cuyos pesos se asemejan más al patrón es la "ganadora", y sus conexiones se refuerzan mientras que las de las demás se debilitan.
        

### 3. Aprendizaje Reforzado

Es un método intermedio donde la información que recibe la red es mínima. Se basa en el condicionamiento por refuerzo, limitándose a indicar si la salida de la red es **correcta o incorrecta**. Los pesos sinápticos se premian cuando la red acierta y se penalizan cuando falla.

### Modelos de Redes Neuronales

- **Perceptrón Simple:**
    
    - **Historia:** Fue desarrollado por F. Rosenblatt a finales de los 50, basándose en la regla de aprendizaje de Hebb y los modelos neuronales de McCulloch y Pitts24.
        
    - **Arquitectura:** Es una red _feed-forward_ de dos capas: una capa de entrada (sensores) y una capa de procesamiento. Las conexiones entre ambas capas son totales (cada neurona de entrada se conecta con todas las de salida).
        
    - **Funcionalidad:** Es un clasificador que asigna un vector de entrada a un valor binario mediante una transformación no lineal. Es una máquina de computación universal, con expresividad equivalente a la lógica booleana, ya que puede emular una puerta NAND.
        
    - **Limitación:** Su incapacidad para clasificar conjuntos que no son linealmente separables. El famoso ejemplo es que un perceptrón simple no puede aprender la función **XOR**, como se demostró en la obra _Perceptrons_ de 1969.
    
        ![[Pasted image 20251008100228.png]]

- **Perceptrón Multicapa (MLP):**
    
    - **Arquitectura:** Es una ampliación del perceptrón que añade una o más **capas ocultas** entre la capa de entrada y la de salida. Las conexiones son totales y hacia adelante (cada capa se conecta con la siguiente).
        
    - **Funcionalidad:** Las capas ocultas realizan una transformación sobre las variables de entrada que permite resolver el problema de la separabilidad lineal, convirtiendo funciones no independientes en linealmente independientes. Admite valores reales como entrada y es un modelador de funciones universal.
        
- **Backpropagation:**
    
    - **Definición:** Es el algoritmo principal para el aprendizaje en redes neuronales, popularizado en 1986 por Rumelhart, Hinton y Williams.
        
    - **Función:** Es un método para calcular eficientemente el **gradiente de la función de costo**. Específicamente, encuentra las derivadas parciales de la función de costo de la red con respecto a los pesos sinápticos.
        
    - **Relación con Descenso de Gradiente:** Se usan en conjunto. **Backpropagation** calcula el gradiente, mientras que el **Descenso de Gradiente** es la técnica de optimización que utiliza ese gradiente para minimizar la función de costo y ajustar los pesos.
        
---
## Redes Neuronales Convolucionales (CNN)

Una Red Neuronal Convolucional (CNN) es un tipo de red neuronal profunda que utiliza una operación matemática especializada llamada **convolución** en al menos una de sus capas. Estas redes son un ejemplo fundamental de aprendizaje profundo (_Deep Learning_) y son especialmente eficaces para procesar datos con topología de cuadrícula, como las imágenes. Una red se considera "profunda" cuando tiene más de dos capas (una de entrada, una de salida y al menos una capa oculta).

![[Pasted image 20251008100341.png]]
### Capas Principales de una CNN

- **Capa Convolucional (Convolutional Layer):**
    
    - Es el bloque de construcción principal de una CNN.
        
    - Aplica un **filtro o "kernel"** a los datos de entrada, realizando una operación algebraica para crear **mapas de características** (_feature maps_).
        
    - La convolución, matemáticamente, es una operación sobre dos funciones que produce una tercera, expresando cómo la forma de una es modificada por la otra.

	![[Pasted image 20251008100905.png]]

- **Capa ReLU (Rectified Linear Unit):**
    
    - Es una **función de activación** que se aplica a la salida de las neuronas para introducir no linealidad.
        
    - Se define como la parte positiva de su argumento, con la fórmula:
        
     $$f(x) = x^{+} = \max\{0, x\}$$
        
    - También se conoce como función rampa.
    $$\text{ReLU}(x) \triangleq \max(0, x)$$
	![[Pasted image 20251008100523.png]]

- **Capa de Agrupación (Pooling Layer):**
    
    - Su función es reducir las dimensiones de los datos (_downsampling_) para optimizar el cálculo y hacer que las características detectadas sean más robustas.
        
    - Puede ser local (actúa sobre pequeños grupos, típicamente 2x2) o global (actúa sobre todas las neuronas de la capa).
        
    - Tipos comunes:
        
        - **Max Pooling:** Utiliza el valor máximo de cada grupo de neuronas.
            
        - **Average Pooling:** Utiliza el valor promedio de cada grupo.

	![[Pasted image 20251008100712.png]]

- **Capa de Aplanamiento (Flatten Layer):**
    
    - Convierte los datos multidimensionales de los mapas de características en un **vector de características 1D**.
        
    - Este paso es necesario para poder pasar los datos a una capa densa (Full Connected).

	![[Pasted image 20251008100941.png]]

- **Capa Totalmente Conectada (Fully Connected Layer):**
    
    - Realiza el razonamiento de alto nivel en la red56.
        
    - Cada neurona en una capa totalmente conectada tiene conexiones a **todas las activaciones** de la capa anterior, similar a un Perceptrón Multicapa.

	![[Pasted image 20251008100959.png]]