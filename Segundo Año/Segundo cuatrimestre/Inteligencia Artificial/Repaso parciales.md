-- -
# Primer Parcial

### **Autoevaluacion 1**
1. Inteligencia es la **capacidad** de alcanzar nuestros objetivos.

2. La inteligencia artifical es la **ciencia** de hacer máquinas que realizadas por el hombre requieran uso de **inteligenica**.

3. Reduccion a subproblemas: en esta aproximacion suponemos que podemos **descomponer** el problema global en problemas mas **pequeños** de manera recursiva hasta llegar a problemas simples

4. ¿En que decada se considera como el inicio de la inteligencia arficial? **40**

5. El test de Turing sirve para: **Determinar cuando una computadora es igual de inteligente que un humano**

6. Un problema es: **La necesidad de un cambio de estado, del estado inicial al final**

7. La IA es la ciencia de hacer máquinas que hagan cosas que realizadas por el hombre requieran uso de herramientas. **Falso**

8. El test de Turing es un algoritmo para acelerar el procesamiento. **Falso**

9. Los problemas son la necesidad de un cambio de estado. **Verdadero**

### **Autoevaluacion 2**
1. Un agente es todo aquello que **percibe** su ambiente mediante **sensores** y responde o actúa.

2. Un agenta **natural** es aquel cuyo cuerpo es biologico.

3. Agente **racional** es el que percibe y actua para cumplir con sus objetivos en base a sus creencias de lo que es correcto.

4. El agente que solo se basa en la percepcion actual es: **Agente reactivo simple**

5. El ambiente es: **El entorno donde el agente interactua**

6. El agente basado en utilidad se caracteriza por: **Cuantificar que tan deseable es un estado en particular**

7. Un agente nunca adapta su modo de control segun su ambiente. **Falso**

8. Los agentes pueden ser naturales o artificiales. **Verdadero**

9. Los agentes racionales son aquellos que actuan con base a lo que creen que es correcto. **Verdadero**

### **Autoevaluacion 3**
1. Las busquedas completas computacionalmente son **costosas**

2. Las busquedas en amplitud y profundidad normalmente son usadas en **árboles**

3. El algoritmo A* es un algoritmo de usado para buscar **caminos**

4. En el algoritmo A*, el estimador de distancia al destino comunmente usado es: **Manhattan**

5. Para la implementacion de A* se suelen usar: **Dos listas**

6. El algortimo mini-max fue creado bajo el teorema creado por: **John Von Neumann**

7. La busqueda en amplitud es una busqueda incompleta. **Falso**

8. En el minimax debe haber mas de dos adversarios. **Falso**

9. El algoritmo A* es un algoritmo del tipo heuristico. **Verdadero**

### **Autoevaluacion 4**
1. La representacion del conocimiento es el proceso de **transformacion** de conocimiento de un dominio en un **lenguaje** simbolico para que pueda ser procesado computacionalmente.

2. La unificacion es el proceso de computar las sustituciones apropiadas que permitan determinar si dos expresiones **lógicas**, ya sean predicados o patrones, coinciden.

3. Una red semantica o esquema de representacion en red es una forma de representacion de **conocimiento** linguistico en la que los conceptos y sus interrelaciones se representan mediante un **grafo**.

4. Los aspectos de la representacion del conocimiento son. **Sintaxis y semantica**

5. Prolog esta compuesto por; **Hechos y reglas**

6. Lo que define las posibles formas de construir y combinar elementos de un lenguaje es: **Sintaxis**

7. Adecuacion representacional es la capacidad para representar adecuadamente todo el conocimiento perteneciente a un dominio. **Verdadero**

8. El cuantificador universal indica que la formula bien formada, dentro de su alcance es verdadera para algunos valores posibles de la variable que es cuantificada. **Falso**

9. La unificacion es el proceso de computar las sustituciones apropiadas que permiten determinar si dos expresiones logicas, ya sean predicados o patrones, coinciden. **Verdadero**

### **Autoevaluacion 5**
1. El razonamiento formal juega un papel importante para la inteligencia artificial. Hay dos maneras principales de formalizar razonamiento: una que enfatiza en la **deduccion** y otra que enfatiza en la **incertidumbre**.

2. Aquellos razonamientos que sin ser válidos parecen serlo se denominan **falacia.**

3. Con logica difusa, las proposiciones pueden ser representadas con **grados** de veracidad o falsedad

4. Los conjuntos difusos son: **Conjuntos con elementos con grado de pertenencia**

5. El nucleo en un conjunto difuso es: **Todos los elementos cuya funcion de pertenencia es 1**

6. Los conjuntos de un dominio se solapan entre si: **En general**

7. El diseño de un sistema difuso consiste en identificar las variables, su dominio, los conjuntos difusos que las forman y los modificadores permitidos. **Verdadero**

8. La variable cuyos valores son conjuntos difusos se llaman términos linguisticos (por ejemplo, distancia). **Falso**

9. En un conjunto difuso el soporte, que es el conjunto de elementos con grado de pertenencia, no nulo. **Verdadero**

### **Parcial repaso**

1)  Definir lógica difusa. Analice las ventajas y limitaciones. Dar ejemplos de su uso. 
- La logica difusa es un tipo de logica que extiene a la logica clasica (verdadero/falso) permitiendo trabajar con grados de verdad en el intervalo [0,1].  
- **Ventajas:**
	- Permite que una proposicion no solo sea completamente verdadera (1) o falsa (0) generando asi valores intermedio que reflejan situaciones imprecisas y/o aproximadas. 
	- Facilita la representacion de conceptos imprecisos/vagos/difusos como "temperatura alta", "velocidad media", etc.
- **Limitaciones:**
	- El diseño de las funciones de pertenencia depende en la experiencia del experto.
	- En comparacion a la logica clase, esta misma requere estructuras mas elaboradas, complejizandola aun mas.
- **Ejemplo:**
	- Si la temperatura es alta, entonces la velocidad del ventilador debe ser muy alta.
	- Si hay muchos chicos en el colegio, tiene que haber muchos profesores.
	- Si las revoluciones suben, el auto consume mas.

2) Explique la distinción entre Inteligencia Artificial (IA), Aprendizaje Automático (ML) y Aprendizaje Profundo (DL). Incluya en su análisis con ejemplos específicos de la evolución, aplicaciones y limitaciones inherentes de cada paradigma. 

- **Inteligencia Artificial (IA):**
	- **Definicion:** Rama de la informatica que busca crear sistemas capaced de realizar tareas que normalmente requieren inteligencia humana.
	- **Evolucion:** Surge de los años 50 con la idea de simular inteligencia humana. En el siglo XXI crece gracias a *big data* y mayor poder de computo
	- **Aplicaciones:** Asistentes virtuales (Siri, Alexa), deteccion de fraudes de bancos, chatbots, etc.
	- **Limitaciones:** Depende de los datos con los cuales se la entrene; posee sesgos en la toma de decisiones y cuestiones eticas.
- **Aprendizaje Automatico (ML):**
	- **Definicion:** Subcampo de la IA que se enfoca en que los sistemas aprendan patrones a partir de datos y mejoren con la experiencia sin ser programados explicitamente.
	- **Evolucion:** Pasó de algoritmos estadisticos basicos a tecnicas avanzadas como support machines random forests.
	- **Aplicaciones:**
		- Recomendaciones de Netflix y Spotify.
		- Filtros de spam en correos electronicos.
		- Prediccion de riesgos crediticios.
	- **Limitaciones:** 
		- Requiere gran cantidad y calidad de datos.
		- Puede sobreajustarse (overfitting) si el modelo aprende demasiado de los datos de entrenamiento.
		- Resultados a veces poco interpretables
- **Aprendizaje Projundo (DL):** 
	- **Definicion:** Subcampo de ML que utiliza rede neuronales profundas inspiradas en el cerebro humano capaces de modela relaciones muy complejas.
	- **Evolucion:** Revolucion en la ultima decada gracias a GPUs potentes y disponibilidad de grandes volumenes de datos.
	- **Aplicaciones:** 
		- Reconocimiento facial en telefonos.
		- Traduccion automatica.
		- Conduccion autonoma.
		- Generacion de contenido.
	- **Limitaciones:** 
		- "Cajas negras": Dificl explicar como llegan a una decision.
		- Consumen enormes recursos de computo y energia.
		- Dependencia de datasets masivos y riesgo de aplicar sesgos.
- **Sintestis Comparativa:**
	- **IA** ---> Disciplina general (Objetivo: simular inteligencia humana).
	- **ML** ---> Subcampo de IA (aprende de los datos, no de las reglas fijas).
	- **DL** ---> Subcampo de ML (usa redes neuronales profundas para tareas complejas)

3)  Crear una base de conocimiento con al menos 5 reglas en Prolog referente a algún tema de interés. Ejemplificar haciendo consultas a la misma. 
```prolog
animal(perro).
animal(gato).
animal(aguila).
animal(delfin).
animal(vaca).

mamifero(perro).
mamifero(gato).
mamifero(delfin).
mamifero(vaca).

ave(aguila).

omnivoro(perro).
omnivoro(gato).
carnivoro(aguila).
herbivoro(vaca).
carnivoro(delfin).



es_mamifero(X) :- mamifero(X).
es_ave(X) :- ave(X).
es_carnivoro(X) :- carnivoro(X).
es_herbivoro(X) :- herbivoro(X).
es_omnivoro(X) :- ominvoro(X).

es_mamifero(gato).
es_ave(aguila).
es_carnivoro(aguila).
es_herbivoro(vaca).
es_omnivor(perro).

```

4) ¿Cuáles son las ventajas y desventajas de usar sistemas expertos en aplicaciones del mundo real? Proporcione ejemplos para ilustrar sus puntos. 

- **Ventajas:**
	- *Disponibilidad del conocimiento:* Capturan la experiencia de un experto humano en forma de reglas o base de conocimiento, lo que permite que el sistema este disponible las 24hs.
	- *Consistencia en las decisiones:* A diferencia de los humanos, no se fatigan ni cometen errores por cansancio.
	- *Soporte a la toma de decisiones:* Funcionan como herramienta de ayuda en entornos complejos (Ejemplo: diagnostico medico).
	- *Transferencia de conociemiento:* El conocimiento de un experto puede ponerse a disposicion de mas personas en la organizacion.
- **Desventajas:**
	- *Dependencia de la calidad del conocimiento:* Si la base de conocimiento está incompleta o mal diseñada, el sistema dará resultados poco fiables y/o erroneos.
	- *Rigidez:* No tienen creatividad ni sentido comun, solo aplican las reglas que se les programan.
	- *Costos elevados de desarrollo y mantenimiento:* Requieren mucho tiempo para construir la base de conocimiento y mantenerla actualizada. 
	- *Obsolecencia:* En entornos que cambian rapido, el sistema puede quedar desactualizado.
	- *Explicabilidad limitada:* Algunos sistemas expertos complejos son dificiles de entender para el usuario final.
- **Ejemplos:**
	- Medicina
	- Finanzas
	- Soporte tecnico

 5) Explique la definición formal del problema (E, O, M) en la resolución de problemas de IA.
- **E - Estado Inicial**
	- Describe la situacion de partida del problema.
	- Es el punto desde el cual el agente comienza a razonar o actuar.
- **O - Operadores:**
	- Conjunto de acciones posibles que permiten pasar de un estado a otro.
	- Definen como se transforma el sistema cuando el agente actua.
- **M - Meta (Objetivo)**
	- Define el conjunto de estados finales que resuelven el problema.
	- Un estado es objetivo si cumple con las condiciones deseadas.

--- -
