# Módulo 7 - Estrategias de Testing

## Idea central

Este módulo explica cómo organizar el testing según riesgo, nivel de prueba, integración entre módulos, tipo de sistema y etapa del proyecto. La clave no es probar “todo”, sino decidir qué probar primero, con qué estrategia, en qué ambiente y con qué criterio de aceptación.

## 1. Gestión de riesgos en testing

Un **riesgo** es un problema que todavía no ocurrió. Un **problema** es un riesgo que ya se manifestó.

En desarrollo de software, el riesgo principal es **fracasar en construir el producto correcto**. Los riesgos siempre miran al futuro y tienen tres rasgos:

- **Incertidumbre:** no se sabe si ocurrirán.
- **Probabilidad:** puede estimarse qué tan probable es que ocurran.
- **Impacto:** si ocurren, generan pérdida o daño.

El análisis de riesgos permite tomar decisiones informadas bajo incertidumbre. Busca responder:

- Qué puede salir mal.
- Qué impacto tendría.
- Qué acciones conviene tomar.

La administración de riesgos no se enfoca en decisiones futuras, sino en las **consecuencias futuras de decisiones actuales**. Por eso los riesgos deben identificarse desde etapas tempranas del proyecto.

### Riesgos frecuentes en testing

- Resultados incorrectos.
- Transacciones no autorizadas.
- Pérdida de integridad de archivos.
- Procesos no reconstruibles o no rastreables.
- Degradación del servicio al usuario.
- Compromiso de seguridad.
- Fallas en requisitos, requerimientos o pautas.
- Resultados no desplegables.
- Dificultad de uso o problemas de interfaz.
- Baja mantenibilidad.
- Incumplimiento de criterios de calidad.
- Problemas de interfaz con otros sistemas.
- Problemas de eficiencia o performance.

### Documentación de riesgos

Un riesgo debería documentarse con:

| Campo | Qué describe |
|---|---|
| Riesgo | Situación posible que puede afectar el testing o el producto. |
| Efectos | Consecuencias si el riesgo ocurre. |
| Acciones preventivas | Qué hacer antes para reducir probabilidad o impacto. |
| Acciones correctivas | Qué hacer si el riesgo ya se manifestó. |

Ejemplos:

| Riesgo | Efecto | Prevención | Corrección |
|---|---|---|---|
| No tener ambiente de testing separado | Resultados inconsistentes, retrasos, pruebas poco confiables | Preparar ambiente antes de la etapa de testing | Armar ambiente lo antes posible |
| Falta de tiempo para ejecutar pruebas | Errores no detectados | Reservar tiempos reales en cronograma | Priorizar pruebas y paralelizar grupos |
| Entrega de grandes bloques no incrementales | Sobrecarga, “catarata de errores”, retrasos | Planificar entregas incrementales | Priorizar bloqueantes y errores críticos |
| No tener herramienta de seguimiento | Mala trazabilidad de errores y observaciones | Usar herramienta para administrar resultados | Priorizar administración de resultados |

## 2. Prueba de unidad

La **prueba de unidad** verifica un módulo de forma independiente. Normalmente la realiza el área que construyó el módulo y se basa en el diseño detallado.

Aspectos que se prueban:

- Interfaces del módulo.
- Estructuras de datos locales.
- Condiciones límite.
- Caminos independientes.
- Caminos de manejo de errores.

Su objetivo es detectar defectos dentro del módulo antes de combinarlo con otros.

## 3. Pruebas de módulos, stubs y drivers

Cuando se prueba un módulo aislado, muchas veces hay que simular componentes que lo llaman o que son llamados por él.

Ejemplo: si el módulo **B** es usado por **A** y B usa a **E** y **F**, para probar B aislado:

- Se simula la llamada de A hacia B con un **driver**.
- Se simulan E y F con **stubs**.
- B se prueba como unidad, sin depender de la implementación real de A, E o F.

### Driver

Un **driver** es código que simula el uso del módulo bajo prueba por otro módulo.

Características:

- Llama al módulo que se está testeando.
- Suele suministrar los datos de los casos de prueba.
- Puede leer datos desde archivo, GUI u otra fuente.
- Es menos costoso que un stub.

### Stub

Un **stub** simula un componente omitido que el módulo bajo prueba necesita llamar.

Características:

- Tiene los mismos parámetros de entrada y salida que el módulo real.
- Simplifica mucho el comportamiento real.
- Puede devolver datos desde archivo, pedir datos a un tester o no hacer nada si eso alcanza.
- Puede ser costoso de construir.

Cuidado importante: si un stub devuelve siempre el mismo valor, puede hacer que el módulo bajo prueba no sea testeado adecuadamente.

## 4. Prueba de integración

La **prueba de integración** construye progresivamente la estructura del programa mientras prueba las interacciones entre módulos.

Objetivo: combinar módulos individuales y verificar que funcionen correctamente juntos.

Estrategias principales:

- No incremental: **Big-Bang**.
- Incrementales: **Bottom-Up**, **Top-Down**, **Sándwich**, **por disponibilidad**.

## 5. Estrategias de integración

### Big-Bang

Primero se prueba cada módulo por separado. Luego se integran todos los módulos juntos y se prueba el sistema combinado.

Ventaja:

- Permite trabajo paralelo, porque los módulos pueden probarse individualmente al mismo tiempo.

Desventajas:

- Requiere stubs y drivers para muchos módulos.
- Es difícil ubicar el origen de una falla porque todo se integró junto.
- Los defectos de interfaz aparecen tarde.
- No permite empezar integración con pocos módulos.
- No es recomendable para sistemas grandes.

### Bottom-Up

Comienza por los módulos de menor nivel, es decir, aquellos que no dependen de otros para ejecutarse. Luego avanza hacia arriba en la jerarquía de uso.

Características:

- Requiere **drivers**.
- No requiere **stubs**.
- Para probar un módulo, todos los módulos que están “debajo” deben estar probados.
- Facilita crear condiciones de prueba.
- Simplifica pruebas al evitar stubs.

Desventaja principal:

- El programa como entidad completa no existe hasta que se agrega el último módulo.

Uso recomendado:

- Cuando los módulos bajos son críticos.
- Cuando conviene validar lógica interna, algoritmos o servicios base temprano.

### Top-Down

Comienza por el módulo superior de la jerarquía y avanza hacia abajo.

Características:

- Requiere **stubs**.
- No requiere **drivers**.
- Para probar un módulo, todos los módulos superiores relacionados deben estar probados.
- Permite ver temprano una versión demostrable del producto.
- En sistemas orientados a objetos o con GUI, facilita usar casos de prueba reales porque los módulos superiores suelen estar cerca de la interfaz.

Desventajas:

- Los stubs pueden ser complejos.
- Algunas condiciones de prueba, sobre todo inválidas, pueden ser difíciles de crear.

Uso recomendado:

- Cuando se necesita mostrar funcionamiento temprano.
- Cuando la interfaz o flujo principal es crítico.

### Sándwich

Combina Top-Down y Bottom-Up. Busca probar primero los módulos más críticos, integrando desde arriba y desde abajo.

Uso recomendado:

- Cuando hay componentes críticos en distintos niveles de la arquitectura.
- Cuando se quiere balancear demostración temprana con validación de módulos base.

### Por disponibilidad

Integra los módulos a medida que están disponibles.

Ventaja:

- Se adapta a la realidad del proyecto.

Riesgo:

- Si no hay planificación, puede terminar generando una integración desordenada y difícil de diagnosticar.

## 6. Comparación: incremental vs no incremental

La integración incremental suele ser superior a Big-Bang porque detecta problemas antes y facilita ubicar defectos.

Problemas del enfoque no incremental:

- Requiere más trabajo por la cantidad de stubs y drivers.
- Detecta tarde errores de interfaz.
- Detecta tarde suposiciones incorrectas entre módulos.
- Dificulta encontrar la causa de una falla.
- Los módulos se prueban menos veces.

Ventajas del enfoque incremental:

- Cada módulo nuevo se valida contra módulos ya probados.
- Si aparece una falla, probablemente esté en el módulo recién integrado o en su interfaz.
- Los módulos ya integrados se vuelven a ejercitar indirectamente.
- Permite feedback más temprano.

## 7. Pruebas del sistema

Las **pruebas del sistema** verifican la aplicación como parte de un sistema más grande. Se realizan en un ambiente similar al real.

Incluyen interacción con:

- Otras aplicaciones.
- Hardware.
- Equipos externos.
- Configuraciones reales o representativas.

Tipos principales:

- Recuperación.
- Seguridad.
- Resistencia o stress.
- Rendimiento: volumen y performance.
- Facilidad de uso.
- Configuración.
- Compatibilidad.
- Documentación.
- Instalación.
- Confiabilidad.

## 8. Pruebas de desempeño

### Prueba de estrés

Somete al sistema a cargas o esfuerzos muy altos, normalmente por encima de sus límites, durante un período corto.

No solo aplica a volumen de datos. También puede aplicar a:

- Usuarios concurrentes.
- Dispositivos conectados.
- Transacciones simultáneas.
- Llamadas, requests o eventos por segundo.

Ejemplo: un sistema telefónico sometido a una cantidad enorme de llamadas en poco tiempo.

### Prueba de volumen

Somete al sistema a grandes cantidades de datos.

Objetivo: demostrar si el sistema puede o no manejar el volumen especificado.

Ejemplos:

- Compilar un programa extremadamente grande.
- Probar un simulador con un circuito de miles de componentes.

### Diferencia clave

| Tipo | Pregunta central | Ejemplo simple |
|---|---|---|
| Volumen | ¿Soporta muchos datos? | Escribir un documento enorme |
| Estrés | ¿Soporta un pico intenso? | Escribir 50 palabras por minuto |
| Rendimiento | ¿Cumple tiempos bajo condiciones definidas? | Facturar 10.000 empleados en menos de 1 hora |

### Prueba de rendimiento

Busca demostrar que el sistema no cumple sus especificaciones de rendimiento.

Casos comunes:

- Tiempo de respuesta en sistemas interactivos.
- Tiempo máximo de ejecución de una tarea.
- Performance bajo una carga y configuración definidas.

Ejemplo: el proceso de facturación no debe durar más de una hora para 10.000 empleados en un ambiente específico.

## 9. Otras pruebas de sistema

### Facilidad de uso

Busca problemas de usabilidad.

Preguntas típicas:

- La interfaz, ¿está ajustada al usuario final?
- Las salidas, ¿son claras y significativas?
- Los mensajes de error, ¿son entendibles o demasiado técnicos?
- El sistema, ¿puede volverse inutilizable aunque funcione técnicamente?

Estas pruebas pueden comenzar durante prototipado.

### Seguridad

Intenta crear casos de prueba que burlen los controles de seguridad.

Forma práctica de diseñarlas:

- Estudiar fallas conocidas en sistemas similares.
- Buscar si el sistema bajo prueba tiene problemas equivalentes.
- Usar listas de vulnerabilidades o fallas comunes como guía.

Ejemplo: intentar vencer el mecanismo de protección de memoria de un sistema operativo.

### Configuración

Prueba el sistema bajo distintas combinaciones de hardware y software.

Mínimo esperado:

- Configuración mínima soportada.
- Configuración máxima prevista.

### Compatibilidad

Necesaria cuando el sistema tiene interfaces con otros sistemas.

Objetivo: verificar si las funciones de interfaz cumplen los requerimientos especificados.

### Documentación

La documentación de usuario también debe probarse.

Se revisa:

- Exactitud.
- Claridad.
- Coherencia con el sistema real.

Todo ejemplo incluido en la documentación debe convertirse en caso de prueba. Si el manual dice que algo funciona, debe ejecutarse y obtener el resultado esperado.

### Instalación

Verifica las distintas formas de instalar el sistema.

Es especialmente importante cuando la aceptación no se hizo en el ambiente real de instalación.

### Recuperación

Simula o crea fallas para probar si el sistema se recupera según los requerimientos.

Ejemplos de situaciones:

- Corte de energía.
- Caída de servicio.
- Error de comunicación.
- Corrupción controlada de datos.
- Reinicio inesperado.

### Confiabilidad

Todas las pruebas aumentan confianza, pero la prueba de confiabilidad existe como tipo específico cuando hay requerimientos explícitos de confiabilidad.

Ejemplo: validar o estimar tiempo medio entre fallas. A veces no puede comprobarse directamente en poco tiempo y requiere modelos matemáticos.

## 10. Prueba de aceptación del usuario

La **prueba de aceptación del usuario** verifica que el sistema se ajusta a los requerimientos del usuario.

Características:

- La realizan usuarios o representantes del usuario.
- Se basa en la especificación de requerimientos.
- Es una técnica de caja negra.
- Define si el sistema se acepta o se rechaza.
- Es la última oportunidad real de testeo antes de aceptación.

Proceso común:

1. Determinar el rol del usuario.
2. Definir criterios de aceptación.
3. Desarrollar plan de aceptación.
4. Ejecutar plan de aceptación.
5. Tomar decisión de aceptación.

### Rol del usuario

Debe definirse:

- Cómo participa el usuario durante el proceso.
- Quién acepta el sistema.
- Qué recursos se necesitan.
- Qué criterios iniciales, intermedios y finales aplican.
- Cómo se prepara el plan de aceptación.

### Criterios de aceptación

Pueden incluir:

- Funcionalidad.
- Performance.
- Interfaz.
- Calidad.
- Seguridad.
- Conformidad.

### Criticidad de aceptación

Depende de:

- Importancia del sistema.
- Consecuencias de una falla.
- Complejidad del proyecto.
- Riesgo tecnológico.
- Complejidad del ambiente.

## 11. Pruebas de regresión

Las **pruebas de regresión** verifican que un cambio nuevo no haya roto funcionalidad existente.

Idea clave: hay que probar **lo nuevo y lo viejo**.

Para que la regresión sea viable se necesitan:

- Casos de prueba reutilizables.
- Condiciones de prueba repetibles.
- Resultados esperados claros.

La regresión es una prueba funcional de integración. Se realiza al final de un ciclo de testing para verificar que el nuevo build o incremento no desarregló casos ya probados.

Se puede ejecutar:

- Toda la suite de pruebas.
- Un subconjunto priorizado según impacto y riesgo.

Si la regresión detecta defectos:

1. Establecer impacto de la prueba fallada.
2. Armar nuevo ciclo con pruebas falladas y pruebas impactadas.
3. Corregir defectos.
4. Ejecutar regresión sobre el build corregido.
5. Tomar ese build como nueva base para ciclos posteriores.

## 12. Pruebas según tipo de sistema o despliegue

### Prueba de instalación

Busca errores de instalación. Es crítica si la aceptación no se hizo en el ambiente donde se instalará finalmente.

### Prueba piloto

El sistema se pone en producción de forma localizada o limitada.

Ventaja:

- Reduce impacto de fallas porque no afecta a toda la organización.

### Desarrollo para múltiples clientes

#### Alfa

Prueba realizada por el equipo de desarrollo sobre el producto final.

#### Beta

Prueba realizada por clientes elegidos sobre el producto final.

Sirve para obtener feedback en condiciones más reales antes de liberar masivamente.

### Sistema que reemplaza a otro

#### Pruebas en paralelo

El sistema viejo sigue funcionando mientras se empieza a usar el nuevo.

Se comparan resultados entre ambos para validar que el sistema nuevo funciona correctamente.

Ventaja:

- Reduce riesgo de reemplazo brusco.

Costo:

- Durante un tiempo se mantienen dos sistemas operativos.

## 13. Comparaciones clave para examen

| Concepto | Diferencia importante |
|---|---|
| Riesgo vs problema | Riesgo todavía no ocurrió; problema ya se manifestó. |
| Stub vs driver | Stub simula módulo llamado; driver simula módulo que llama. |
| Unidad vs integración | Unidad prueba módulo aislado; integración prueba interacción entre módulos. |
| Big-Bang vs incremental | Big-Bang integra todo al final; incremental integra progresivamente. |
| Bottom-Up vs Top-Down | Bottom-Up sube desde módulos base y usa drivers; Top-Down baja desde módulos superiores y usa stubs. |
| Stress vs volumen | Stress prueba picos intensos; volumen prueba grandes cantidades de datos. |
| Sistema vs aceptación | Sistema prueba el producto en ambiente similar al real; aceptación valida si el usuario lo acepta. |
| Regresión vs prueba nueva | Regresión verifica que cambios no rompan comportamiento ya probado. |

## 14. Síntesis final

Una buena estrategia de testing combina análisis de riesgos, selección correcta de niveles de prueba y planificación de integración. Los riesgos ayudan a priorizar. Las pruebas unitarias aíslan módulos. Stubs y drivers permiten probar componentes incompletos. La integración incremental suele ser mejor que Big-Bang porque encuentra antes los errores y facilita diagnosticar fallas. Las pruebas de sistema validan comportamiento en un contexto parecido al real. La aceptación confirma si el usuario recibe lo que necesita. La regresión protege funcionalidad existente frente a cambios nuevos.
