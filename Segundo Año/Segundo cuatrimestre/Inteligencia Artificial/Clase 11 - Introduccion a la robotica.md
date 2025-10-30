-- -
`#ingeniería #robótica #IA`

**Robótica**

La robótica es una rama interdisciplinaria de la ciencia y la ingeniería (mecánica, electrónica, informática, etc.) que se ocupa del diseño, construcción, operación y uso de robots, así como de los sistemas informáticos para su control, retroalimentación sensorial y procesamiento de información.

Los robots son agentes físicos equipados con **sensores** (para percibir el entorno) y **efectores** (piernas, ruedas, pinzas) que les permiten realizar tareas mediante la manipulación física del mundo. El propósito de los efectores es transmitir fuerzas físicas al entorno.

Estas tecnologías buscan desarrollar máquinas que sustituyan a los humanos o repliquen sus acciones, especialmente en entornos peligrosos (desactivación de bombas, exploración espacial o submarina, manejo de materiales peligrosos), procesos de fabricación, o donde los humanos no pueden sobrevivir.

Si bien el concepto de máquinas autónomas se remonta a la antigüedad, el campo creció sustancialmente en el siglo XX y hoy está en rápida expansión. Muchos robots actuales están inspirados en la naturaleza (robótica bioinspirada), y otros se diseñan con apariencia humana para facilitar su aceptación al replicar comportamientos como caminar, levantar objetos o hablar.

---

**Sensores y Visión**

- **Sensores:** Permiten a los robots recibir información del entorno o de sus componentes internos. Son esenciales para que el robot reaccione a cambios y reciba información en tiempo real sobre la tarea que ejecuta.
    
- **Visión por Computadora:** Es la ciencia y tecnología que permite a las máquinas "ver". Los sistemas extraen información de imágenes (como secuencias de video) para resolver tareas.
    
    - Se basan en **sensores de imagen** (que usan física de estado sólido y óptica) para detectar radiación electromagnética (luz visible o infrarroja).
        
    - Al igual que los ojos humanos, los "ojos" del robot deben poder enfocar y adaptarse a la intensidad de la luz. Se pueden usar múltiples sensores para calcular la profundidad.
        
    - Un subcampo de la visión por computadora imita el procesamiento biológico, y muchos métodos de aprendizaje automático tienen sus antecedentes en la biología.
        

---

**Características Morfológicas**

- **Grados de Libertad (GDL):** Son los parámetros necesarios para determinar la posición y orientación del efector terminal (la "mano") del robot. Un mayor número de GDL implica mayor flexibilidad.
    
- **Zona de Trabajo:** Es el espacio que puede alcanzar el robot. Está definida por las dimensiones de sus elementos y los grados de libertad, y restringida por los límites de giro y desplazamiento de las articulaciones.
    
- **Capacidad de Carga:** El peso máximo que el robot puede transportar con su efector terminal.
    
- **Exactitud y Repetitividad:**
    
    - **Exactitud:** La distancia entre la posición que se le ordenó al robot y la posición real que alcanzó.
        
    - **Repetitividad:** La capacidad del robot de volver a la misma posición en movimientos sucesivos. Suele ser una medida más precisa (menor) que la exactitud.
        
- **Precisión en la Repetitividad:** El grado de exactitud al repetir una tarea. Es crucial en ensamblaje (requiere < ±0.1mm), mientras que en soldadura o pintura es aceptable entre 1 y 3mm.
    
- **Resolución del Mando:** El incremento más pequeño de movimiento que el robot puede realizar. Se calcula como $2^n$ (donde _n_ es el número de bits del controlador). Por ejemplo, un controlador de 8 bits puede dividir un movimiento en 256 posiciones discretas.
    
- **Velocidad:** La velocidad de trabajo depende de la tarea; es alta para soldadura y manipulación, pero media o baja para pintura o ensamblaje.
    

---

**Estructura y Componentes**

- **Estructura Mecánica de un Robot:** Está formada por **eslabones** (como cuerpo, brazo) unidos por **articulaciones** (como codo, muñeca) que permiten el movimiento relativo entre ellos.
    
- **Brazos de Robot (Junturas):**
    
    - **Tipos de Juntura:** Los más comunes son los de **rotación** (accionados por motores) y los **prismáticos** (movimiento lineal o deslizante).
        
    - **Configuraciones Básicas:** Hay cuatro estructuras clásicas para los manipuladores: **Cartesianas** (para espacios de trabajo grandes y rectangulares), **Cilíndricas** (para espacios redondos), **Polares/Esféricas** (dos rotaciones y un deslizador, como un brazo humano) y **Angulares**. También existe el tipo **SCARA** (Selective Compliant Articulated Robot Arm).
        
- **Actuadores (Motores):** Son los elementos que generan el movimiento.
    
    - **Hidráulicos:** Para tareas de gran potencia y capacidad de carga.
        
    - **Neumáticos:** Gran velocidad de respuesta y bajo coste, pero están siendo reemplazados.
        
    - **Eléctricos:** Dominan el campo por su gran precisión en el control del movimiento y cubren la gama de media y baja potencia.
        
- **Sistemas de Robots Básicos (Componentes):**
    
    1. **Estructura mecánica:** Eslabones, base, etc.
        
    2. **Actuadores:** Motores, cilindros, transmisiones.
        
    3. **Control a la computadora:** El "cerebro" que une al usuario con las junturas.
        
    4. **EOAT (End-of-Arm Tooling):** La herramienta terminal (pinza, soldadora) diseñada para la tarea.
        
    5. **Enseñe la pendiente (Teach Pendant):** Un dispositivo manual (control remoto) para dirigir el movimiento del robot, registrar puntos y programar sucesiones de movimiento.
        

---

**Clasificación de Robots por Arquitectura**

- **Poliarticulados:** Robots sedentarios (fijos) estructurados para mover sus herramientas en un espacio de trabajo determinado. Ejemplos: manipuladores industriales, brazos cartesianos.
    
- **Móviles:** Robots con gran capacidad de desplazamiento, basados en carros o plataformas con sistemas de ruedas.
    
- **Androides:** Intentan reproducir la forma y el comportamiento cinemático de un ser humano. Actualmente, son dispositivos de experimentación sin mucha utilidad práctica (Ej: Asimo de Toyota).
    
- **Zoomórficos:** Imitan los sistemas de locomoción de seres vivos (caminadores o no caminadores).
    
- **Híbridos:** Combinan características de las clasificaciones anteriores (ej: un brazo articulado montado sobre un carro móvil).