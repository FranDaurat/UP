-- -

### ¿Qué son?

- Sistemas computacionales inspirados en el cerebro humano.
    
- Capaces de **aprender de ejemplos** y generalizar a partir de ellos.
    
- Compuestas por **neuronas artificiales** conectadas entre sí.
    

---

## Componentes Básicos

### Neurona Artificial

- Unidad de procesamiento básica.
    
- Recibe entradas, aplica **pesos** y una **función de activación**, y genera una salida.
    

$y = f\left( \sum_{i=1}^n w_i x_i + b \right)$

### Pesos y Umbral (bias)

- Los **pesos** determinan la importancia de cada entrada.
    
- El **bias** (umbral) permite ajustar la salida del nodo.
    

### Funciones de Activación

- Transforman la suma ponderada de entradas en una salida.
    

Ejemplos:

- Escalón
    
- Sigmoidea
    
- Tangente hiperbólica
    
- ReLU
    

---

## Arquitectura de la Red

### Tipos de Arquitecturas

1. **Perceptrón simple**

    - 1 sola capa, linealmente separable.
        
2. **Perceptrón multicapa (MLP)**
    
    - Varias capas ocultas.
        
3. **Redes recurrentes**
    
    - Neuronas con conexiones en ciclos.
        
---
## Proceso de Aprendizaje

### Tipos de aprendizaje

1. **Supervisado**:
    
    - Usa ejemplos con entradas y salidas esperadas.
        
2. **No supervisado**:
    
    - Solo entradas. Descubre patrones ocultos.
        
3. **Por refuerzo**:
    
    - Usa recompensas para guiar el aprendizaje.
        

### Propagación y Retropropagación

1. **Forward propagation**: propaga la entrada hacia la salida.
    
2. **Backpropagation**: ajusta pesos en función del error.
    

---

## Algoritmos de Aprendizaje

### Descenso del gradiente

- Minimiza una función de error modificando los pesos.
    
- Componente central del **backpropagation**.
    

---

## Ejemplo de RNA

Se entrena una red para identificar letras o patrones simples.

- Se muestra un conjunto de patrones de entrada.
    
- La red ajusta sus pesos para recordarlos y reconocer variantes.
    
- Aplicable en tareas como OCR, detección de fraudes, diagnóstico, etc.
    

---

## Ventajas y Desventajas

### Ventajas

- Aprenden de ejemplos.
    
- Generalizan conocimientos.
    
- Tolerancia al ruido.
    
### Desventajas

- “Caja negra”: difícil de interpretar.
    
- Requiere muchos datos.
    
- Entrenamiento costoso computacionalmente.
    

---

## Aplicaciones

- Reconocimiento de patrones
    
- Procesamiento de imágenes y voz
    
- Diagnóstico médico
    
- Predicción financiera
    
- Automatización industrial
    

---

## Red Neuronal de Hopfield

### **Definición general***

- Es una **red neuronal autoasociativa no lineal**.
    
- Fue propuesta por **John Hopfield en 1982**.
    
- Se basa en modelos previos de **McCulloch y Pitts**, y en analogías con **campos magnéticos de spin**.
    
- Utiliza **valores bipolares** `{−1, 1}` aunque puede adaptarse a binarios `{0, 1}`.
    

---

### Componentes de la red

- **Neurona o nodo:** $X_i$
    
- **Peso de la conexión (arista):** $W_{i,j}$
    
- La red es **recurrente**, todas las neuronas están conectadas entre sí, excepto consigo mismas (sin lazos).
    

---

### Funcionamiento (proceso de ejecución)

1. Se **presenta un patrón** en la red.
    
2. Las neuronas se **actualizan iterativamente**.
    
3. El sistema se detiene cuando los valores **se estabilizan** (converge a un patrón memorizado) o se alcanza el número máximo de iteraciones.
    

---

### Entrenamiento

#### Fórmula general:

$$  
w_{ij} = \sum_{\mu=1}^{n} (2P_i^\mu - 1)(2P_j^\mu - 1)  
$$

> Donde $P_i^\mu$ es el valor del patrón $\mu$ en la neurona $i$

#### Implementación:

1. Crear una **lista de patrones** a memorizar.
    
2. Determinar la **cantidad de neuronas** (longitud del patrón).
    
3. Inicializar la **matriz de pesos** en cero.
    
4. Aplicar la **fórmula de entrenamiento** para calcular cada ( w_{ij} ).
    

```python
patterns = [[1,1,1,1,0,0,0,0], [1,1,0,0,1,1,0,0], [0,0,0,0,1,1,1,1]]
```

---

### Reconocimiento de patrones

1. Se presenta un patrón posiblemente **ruidoso**.
    
2. Se actualiza el estado de cada neurona aplicando la suma ponderada de las entradas.
    
3. Se usa una **función de activación** tipo umbral:
    
    - Si $\text{suma} \geq 0$ : valor = 1
        
    - Si $\text{suma} < 0$ : valor = 0
        

```python
if value >= 0:
    nodes[n] = 1
else:
    nodes[n] = 0
```

4. Después de varias iteraciones, el patrón **converge** al más cercano memorizado.
    

---

### Ejemplo de salida

**Matriz de pesos calculada:**

```
[0, 1, 1, 1, -1, -1, -1, -1]
[1, 0, 1, 1, -1, -1, -1, -1]
[1, 1, 0, 1, -1, -1, -1, -1]
[1, 1, 1, 0, -1, -1, -1, -1]
[-1, -1, -1, -1, 0, 1, 1, 1]
[-1, -1, -1, -1, 1, 0, 1, 1]
[-1, -1, -1, -1, 1, 1, 0, 1]
[-1, -1, -1, -1, 1, 1, 1, 0]
```

**Patrón de entrada:** `[1,1,0,1,0,0,0,0]`  
**Resultado reconocido:** `[1, 1, 1, 1, 0, 0, 0, 0]`

---

### Aplicación

- Reconocimiento de patrones visuales, restauración de datos ruidosos.
    
- Ideal para **memoria asociativa**.
    

---

