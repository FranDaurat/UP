-- -
# Guía Integral de Administración de Configuración de Software

## Resumen Ejecutivo

La administración de configuración (CM, por sus siglas en inglés) es una disciplina crítica que aporta estabilidad a la producción de software mediante el control de la evolución del producto y sus cambios asociados. Definida por la IEEE, se centra en identificar y documentar las características físicas y funcionales de los ítems de configuración, controlar los cambios, registrar su estado y verificar el cumplimiento de los requerimientos. En el ecosistema de un proyecto, la administración de configuración actúa como el eje central (o "centro de la rueda") sobre el cual giran las demás funciones, incluyendo la planificación, el aseguramiento de la calidad y el seguimiento. Un sistema de CM robusto garantiza que las versiones sean trazables, los cambios sean evaluados por su impacto estratégico y las entregas a los clientes sean precisas y recuperables.

--------------------------------------------------------------------------------

## 1. Fundamentos y Definición

La administración de configuración se fundamenta en la identificación de los componentes del producto y el registro exhaustivo de sus modificaciones: quién realizó el cambio, cuándo y por qué.

### Definición según la IEEE

Es la disciplina dedicada a:

- Identificar y documentar características físicas y funcionales.
- Controlar cambios en dichas características.
- Registrar y reportar el estado de los cambios.
- Verificar el cumplimiento de los requerimientos.

### El Rol del Gestor de Configuración

Los gestores son responsables de mantener el registro de las diferencias entre versiones y asegurar que la derivación de nuevas versiones ocurra de forma controlada para entregar el producto correcto en el momento adecuado. El proceso suele activarse una vez que el desarrollo inicial y las pruebas de componentes han finalizado.

--------------------------------------------------------------------------------

## 2. El Proceso de Administración de Configuración

La disciplina se divide en cinco etapas fundamentales que estructuran el control del ciclo de vida del software.

### A. Planificación

Define el **qué, quién, cómo, dónde y cuándo** de las tareas de CM. Un plan típico debe incluir:

- Definición y esquema de identificación de los ítems de configuración.
- Roles y responsabilidades.
- Políticas de administración.
- Descripción de herramientas y procesos asociados.
- Definición de la base de configuración para el registro de información.

### B. Identificación de la Configuración

Establece las convenciones para identificar líneas base y niveles de revisión.

- **Ítems de Configuración:** Incluyen planes de proyecto, especificaciones, diseños, programas y datos de prueba.
- **Esquema de Nombres:** Debe ser único y reflejar el tipo de elemento, la parte del sistema, el creador y las relaciones con otros documentos para asegurar una raíz común.

### C. Control de Configuraciones y Cambios

Busca prevenir cambios innecesarios y agilizar los significativos mediante un análisis de costo-beneficio.

- **Consejo de Control de Cambios (CCB):** Evalúa las peticiones de cambio desde una perspectiva estratégica y organizacional, más que técnica. Decide si el cambio se justifica económicamente.
- **Sistemas Estándar vs. Medida:** En sistemas estándar, los cambios suelen derivar de errores reportados por clientes vía web o e-mail, los cuales son validados y priorizados por un equipo de administración de errores.
- **Métodos Ágiles:** En enfoques como la Programación Extrema (XP), el cliente participa directamente en la priorización de cambios, y la reconstrucción continua del software se considera parte natural del desarrollo.

### D. Estado de la Configuración

Utiliza una base de datos de configuración (CMDB) para registrar problemas y solicitudes de cambio. Esta base de datos es vital para evaluar el impacto de los cambios y debe responder consultas críticas como:

- ¿A qué clientes se les entregó una versión específica?
- ¿Qué hardware/OS requiere una versión dada?
- ¿Qué versiones se ven afectadas si se cambia un componente particular?
- ¿Cuántos fallos o peticiones de cambio están pendientes?

### E. Revisión y Auditoría

Verifica que las líneas base cumplan con los estándares y requerimientos.

- **Auditoría de Configuración Funcional (FCA):** Verifica que el elemento cumpla con las características funcionales y atributos de calidad especificados.
- **Auditoría de Configuración Física (PCA):** Comprueba que el ítem construido sea conforme a la documentación técnica.
- **Auditoría de Gestión:** Confirma que los registros sean completos, consistentes y precisos.

--------------------------------------------------------------------------------

## 3. Gestión de Versiones y Entregas (Releases)

La gestión de versiones identifica y mantiene el historial de las diversas instancias del software.

### Diferencia entre Versión y Entrega

|   |   |
|---|---|
|Concepto|Definición|
|**Versión**|Instancia del software que difiere de otras en funcionalidad, rendimiento o reparaciones. Se usa internamente.|
|**Entrega (Release)**|Versión distribuida oficialmente a los clientes. Siempre hay menos entregas que versiones.|

### Componentes de una Entrega

Una entrega no es solo código ejecutable; incluye:

1. Archivos de configuración para instalaciones específicas.
2. Archivos de datos operativos.
3. Programas de instalación.
4. Documentación electrónica y en papel (manuales).
5. Embalaje y publicidad.

--------------------------------------------------------------------------------

## 4. Herramientas y Entornos de Trabajo

Las herramientas CM proporcionan el soporte técnico para automatizar y controlar el flujo de trabajo.

### Tipos de Entornos

- **Entornos Abiertos:** Herramientas para cada etapa integradas mediante procedimientos estándar.
- **Entornos Integrados:** Ofrecen facilidades nativas para gestión de versiones, construcción del sistema y seguimiento de cambios.

### Capacidades Requeridas en Herramientas CM

- Editor para ingresar peticiones de cambio.
- Flujo de trabajo (workflow) para definir responsables y orden de procesamiento.
- Mecanismo de alertas para informar sobre el progreso.
- Base de conocimiento vinculada a la administración de versiones.
- Generador de reportes de estado.

--------------------------------------------------------------------------------

## 5. Flujo de Trabajo y Pasaje entre Ambientes

El proceso de cambio sigue una progresión lógica a través de distintos estados y ambientes:

|   |   |   |
|---|---|---|
|Paso|Estado/Ambiente|Acción Principal|
|**1**|Pedido de Cambio|Identificación y análisis de impacto por CM; comunicación al líder.|
|**2**|En Desarrollo|El desarrollador realiza _check-out_, aplica cambios, hace pruebas unitarias y realiza _check-in_.|
|**3**|En QA / Testing|CM crea un "release de testing". QA realiza pruebas y genera un "release aprobado".|
|**4**|Aceptación de Usuario|Los usuarios realizan pruebas de aceptación (UAT).|
|**5**|En SCM / Producción|CM crea una etiqueta de "release de producción" y notifica a los _stakeholders_.|

--------------------------------------------------------------------------------

## 6. Características Técnicas de los Sistemas de CM

Para garantizar la eficiencia y el ahorro de recursos, los sistemas modernos de administración de versiones implementan:

- **Administración del Almacenamiento (Deltas):** En lugar de guardar archivos completos, se guardan las diferencias (deltas) respecto a una versión maestra, permitiendo reconstruir versiones anteriores aplicando deltas inversas.
- **Desarrollo Independiente:** Permite que diferentes versiones de un sistema se desarrollen en paralelo.
- **Control de Concurrencia:** Asegura que los cambios de diferentes desarrolladores no interfieran entre sí mediante el registro de componentes extraídos para edición.
- **Soporte Multi-sitio:** Herramientas como CVS facilitan el trabajo desde múltiples ubicaciones geográficas con almacenes de datos distribuidos.