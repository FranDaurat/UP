-- -

# CI/CD: Integración y Despliegue Continuo

## Resumen Ejecutivo

Este documento sintetiza los fundamentos de CI/CD (Continuous Integration / Continuous Deployment) basándose en las directrices académicas de la Universidad de Palermo. El enfoque central es la automatización del ciclo de vida del software para eliminar el error humano y acelerar la entrega de valor.

Los pilares fundamentales son:

- **Velocidad**: Entrega rápida de funcionalidades.
- **Calidad**: Garantía de estándares mediante pruebas automáticas constantes.
- **Cultura**: Fomento de la responsabilidad compartida bajo la premisa _"you build it, you run it"_.

La implementación exitosa se rige por el modelo **CAMS** (Culture, Automation, Measurement, Sharing) y la filosofía de que, si un proceso de integración es dificultoso, debe realizarse con mayor frecuencia para reducir la complejidad acumulada.

---

## 1. CI: Integración Continua

Práctica de automatizar la integración de cambios de código de múltiples contribuyentes de forma frecuente, con una periodicidad mínima de **una vez al día**.

### Objetivos Principales

- **Fail Fast**: Detectar errores en las primeras etapas para minimizar el impacto.
- **Reducción del "Integration Hell"**: Evitar conflictos masivos al integrar ramas de larga duración.
- **Estabilidad**: Mantener la base de código siempre en un estado funcional.

### Etapas del Flujo de CI

#### Code (Codificación)

El desarrollo comienza en el control de versiones (SCM). El estándar actual es **Git**.

**Estrategias de Ramificación:**

- **Trunk-based Development**: Ramas cortas e integración diaria. Ideal para despliegue continuo.
- **GitFlow**: Estructura rígida con ramas dedicadas (feature, release, hotfix). Adecuado para productos con ciclos de lanzamiento formales.

**Code Review**: Uso de Pull Requests para validación humana de la calidad.

**Conventional Commits**: Formato estándar de mensajes de commit que permite automatizar changelogs y versionado dentro del pipeline.

- `feat`: nueva funcionalidad
- `fix`: corrección de errores
- `docs`: cambios en documentación
- `chore`: tareas de mantenimiento
- `refactor`: mejora interna sin cambiar comportamiento

#### Build (Construcción)

Transformación del código fuente en un artefacto ejecutable.

- Gestión de dependencias: npm, maven, pip, nuget.
- Compilación de binarios.
- **Contenedorización**: Creación de imágenes Docker para asegurar portabilidad y reproducibilidad del entorno ("en mi máquina funciona" deja de ser una excusa).

#### Test (Pruebas Automatizadas)

Actúa como la red de seguridad del proyecto. Comprende:

- **Pruebas Unitarias**: Lógica interna de funciones.
- **Pruebas de Integración**: Comunicación entre módulos.
- **Análisis Estático (Linting)**: Estilo y calidad del código.
- **Seguridad (SAST)**: Análisis estático de vulnerabilidades.
- **Code Coverage**: Mide qué porcentaje de líneas ejecuta la suite de tests. Útil como indicador, pero no es 100% confiable: se puede tener cobertura alta sin probar realmente la lógica.

### Herramientas de CI

|Función|Herramientas|
|---|---|
|Orquestación del pipeline|GitHub Actions, Jenkins, CircleCI, Travis CI|
|Build|Webpack, Gradle, Bazel|
|Pruebas y calidad|Jest, JUnit, PyTest, SonarQube, Snyk|

---

## 2. CD: Entrega y Despliegue Continuo

### Diferencia Clave

- **Continuous Delivery (Entrega Continua)**: El código está siempre listo para producción, pero el paso final requiere **aprobación manual**. Ideal para entornos regulados o donde el negocio decide cuándo lanzar.
- **Continuous Deployment (Despliegue Continuo)**: Todo el proceso es **totalmente automático**. Si el código supera las pruebas, llega a producción sin intervención humana. Requiere alta madurez técnica y confianza total en la suite de pruebas.

### Etapas de CD

- **Release**: Versionado (SemVer), creación de notas de lanzamiento y almacenamiento en registros de artefactos (Artifact Registry).
- **Deployment**: El acto técnico de poner el código en el servidor o la nube.

### Estrategias de Despliegue

- **Blue/Green**: Dos entornos paralelos (viejo y nuevo). Se redirige el tráfico gradualmente. Cero tiempo de inactividad y rollback sencillo.
- **Canary**: Lanzamiento progresivo a un pequeño porcentaje de usuarios (ej: 5% → 10% → 50% → 100%) para validar comportamiento antes del despliegue total. El nombre viene de los canarios que se usaban en las minas para detectar gases tóxicos.
- **Rolling Deployment**: Actualización gradual de instancias, manteniendo la aplicación disponible durante el proceso.
- **Rollback Automático**: Reversión inmediata ante la detección de fallos. Puede automatizarse para revertir si se supera un umbral de errores.
- **Feature Flags**: Toggles en el código que permiten habilitar o deshabilitar funcionalidades sin necesidad de redesplegar. Útiles para despliegues progresivos y para controlar qué usuarios acceden a una nueva función.

---

## 3. Operación y Monitoreo

El ciclo de vida no concluye con el despliegue.

- **Operate**: Gestión de la infraestructura mediante IaC (Infraestructura como Código), escalado automático y gestión de secretos.
- **Monitoring**: Observabilidad a través de los tres pilares: **Logs**, **Métricas** y **Trazas**. Permiten detectar errores, medir performance y ver llamadas encadenadas entre servicios.
- **Feedback Loop**: Los datos de producción (errores, métricas) informan directamente la planificación del siguiente sprint, cerrando el ciclo.
- **Versionado Beta**: Retroalimentación temprana, validación de características y reducción del riesgo de lanzamiento.

### Herramientas

|Área|Herramientas|
|---|---|
|Despliegue y orquestación|Docker, Argo, Kubernetes, AWS Lambda|
|Infraestructura|Terraform|
|Monitoreo y observabilidad|Datadog, New Relic, Grafana, Prometheus, ELK|

---

## 4. Filosofía y Modelo CAMS

|Pilar|Descripción|
|---|---|
|**Culture**|Colaboración y transparencia en el proceso de entrega|
|**Automation**|El núcleo del pipeline|
|**Measurement**|Pruebas automáticas y monitoreo de rendimiento constantes|
|**Sharing**|Visibilidad total del estado de los despliegues y repositorios compartidos|

> **"Si duele, hazlo más seguido"** — La frecuencia en la integración reduce la complejidad y el riesgo acumulado, transformando tareas difíciles en rutinas manejables.

> **"El objetivo de CI/CD es hacer que los deployments sean aburridos"** — Jez Humble