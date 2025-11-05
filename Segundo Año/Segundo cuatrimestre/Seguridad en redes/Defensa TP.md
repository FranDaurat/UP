-- -

## 1. Introducción Ampliada: TechSolutions S.A.

### Actividad y Servicios

**TechSolutions S.A.** es una **PYME de desarrollo de software y servicios de infraestructura IT** con una operación dual en Argentina. Sus servicios clave, que manejan información sensible, incluyen:

1. **Desarrollo de Software:** Creación de aplicaciones a medida para clientes, involucrando propiedad intelectual y _código fuente_ crítico.
    
2. **Servicios de Infraestructura IT:** Hosting, mantenimiento y soporte de sistemas para terceros.
    
### Estructura y Distribución

- **Sede Central (Buenos Aires):** Aloja el Data Center. Es el punto más crítico de la red.
    
- **Sede Secundaria (Córdoba):** Enfocada en soporte técnico y desarrollo auxiliar.
    
- **Riesgo:** La necesidad de comunicar datos críticos (código, bases de datos) entre estas dos sedes, y la operación remota, se realizan sin los controles de confidencialidad adecuados.
    

---

## 2. Análisis de Riesgos y Vulnerabilidades

La red actual, con una segmentación básica (DMZ y LAN), no cumple con los principios de Confidencialidad, Integridad y Disponibilidad (CID) en varios puntos:

- **Vulnerabilidad Cero:** La ausencia de VPN expone las comunicaciones inter-sede y el teletrabajo a ataques de intermediario (_Man-in-the-Middle_).
    
- **Exposición de Base de Datos:** El acceso directo o mínimamente controlado desde la **DMZ** a la **Base de Datos Interna** es una ruta crítica de compromiso de la Integridad y Confidencialidad.
    
- **Falta de Detección:** No existe un **EDR** en los _endpoints_ ni un **SIEM** centralizado para detectar y correlacionar ataques avanzados (_ransomware_, persistencia).
    

---

## 3. Justificación de Soluciones Propuestas (La Defensa)

### A. Autenticación, Autorización y Auditoría (AAA)

**Justificación de la Elección:** La seguridad no puede depender de credenciales locales aisladas. Elegimos AAA (con RADIUS/TACACS+) para **centralizar la política de acceso** y obligar el **MFA (Autenticación Multifactor)**.

- **¿Por qué es necesario?** Eliminar el riesgo de _passwords_ débiles y dispersas. La **Auditoría (tercera 'A')** garantiza la trazabilidad de cualquier cambio realizado por un administrador o empleado en la red.
    

---

### B. Firma Digital y PKI (Public Key Infrastructure)

**Justificación de la Elección:** Dada la naturaleza de **servicios** de TechSolutions S.A. (contratos, _NDA_s), la **Integridad y el No Repudio** son requisitos legales y de negocio ineludibles.

- **¿Por qué es necesario?** La PKI proporciona la base de confianza necesaria. El uso de **Certificados Digitales** y la clave asimétrica (_RSA 2048 bits_) garantiza que:
    
    1. El documento no ha sido alterado (**Integridad**).
        
    2. El firmante no puede negar haber firmado (**No Repudio**).
        

---

### C. Seguridad Perimetral y Endpoints

**Justificación de la Elección:** El _firewall_ básico actual solo bloquea por puerto/IP (Capa 3/4). Necesitamos inspeccionar el **contenido** (Capa 7).

- **NGFW y DPI:** La implementación de un **Next-Generation Firewall (NGFW)** con **Inspección Profunda de Paquetes (DPI)** permite filtrar tráfico malicioso basado en la aplicación (ej., bloquear Dropbox, permitir Outlook) y analizar la carga útil.
    
- **IDS/IPS:** Detecta y detiene patrones de ataque conocidos.
    
- **EDR (Endpoint Detection and Response):** Los _endpoints_ son el eslabón más débil. El EDR es la **última línea de defensa**, monitoreando el comportamiento para detener ataques de día cero o _ransomware_ que evadieron el perímetro.
    
- **SIEM:** Monitoreo y correlación centralizada para pasar de una postura reactiva a una **proactiva** y detectar incidentes a tiempo.
    

---

### D. Conectividad Segura (VPN)

**Justificación Detallada de la Elección de VPN (Site-to-Site y Acceso Remoto):**

La VPN se eligió para abordar directamente el riesgo de **Confidencialidad** en la comunicación inter-sede y remota, que actualmente es inexistente. Se necesitan dos tipos:

| **Tipo de VPN**                   | **Función**                                                                                  | **Justificación Estratégica**                                                                                                                                                                                                               |
| --------------------------------- | -------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Site-to-Site (Sede a Sede)**    | Conexión permanente y transparente de las LAN de Buenos Aires (Central) y Córdoba (Soporte). | **Garantiza la operatividad**. Asegura que el _código fuente_, los datos de la DB y los servicios internos viajen de forma cifrada entre las oficinas, **protegiendo la propiedad intelectual** de la empresa en tránsito.                  |
| **Acceso Remoto (Usuario a LAN)** | Permite a empleados y administradores conectarse desde sus hogares/móviles.                  | **Permite el teletrabajo seguro**. Evita que los empleados utilicen conexiones **HTTP** o **FTP** inseguras y previene el robo de credenciales o la interceptación de datos sensibles a través de redes públicas (cafeterías, aeropuertos). |

#### Justificación de las elecciones

- **IPSec/IKEv2:** Se elige por ser el **estándar de la industria**, ofreciendo la mejor combinación de seguridad, robustez y _performance_. IKEv2 mejora la reconexión automática y la estabilidad, crucial para el teletrabajo (_Acceso Remoto_).
    
- **Cifrado AES-256 / Integridad SHA-512:** Estas son las suites criptográficas **más robustas** recomendadas hoy en día (a diferencia de algoritmos más antiguos como DES o MD5), asegurando que la clave de la Confidencialidad y la Integridad cumplan con los más altos estándares de resistencia.
    
- **MFA y Certificados:** El acceso remoto no solo debe pedir _password_, sino también un **segundo factor** y, idealmente, el uso de **certificados digitales** (gestionados por la PKI), para que solo los dispositivos autorizados puedan conectarse.
    

### **Protocolos RADIUS y TACACS+**

#### ¿Qué hacen?

Son **protocolos de autenticación, autorización y auditoría** que permiten centralizar la gestión de accesos en redes empresariales.

- **RADIUS (Remote Authentication Dial-In User Service):**
    
    - Se usa comúnmente para controlar el acceso a redes **WIFI y VPN**.
        
    - **Autenticación y autorización** se hacen juntas.
        
    - Las contraseñas se cifran parcialmente.
        
    - Usa **UDP** (más rápido pero menos confiable).
        
    - Está orientado al **uso masivo**, como usuarios finales conectándose a la red.
        
- **TACACS+ (Terminal Access Controller Access-Control System Plus):**
    
    - Se utiliza especialmente para acceder a **dispositivos de red** (switches, routers, firewalls).
        
    - Permite **separar autenticación, autorización y auditoría**, lo que da **mayor granularidad**.
        
    - Cifra todo el contenido del paquete.
        
    - Usa **TCP**, lo que mejora la fiabilidad.
        
    - Más orientado a **administradores de red y equipos técnicos**.
        

#### 🧠 ¿Por qué se eligen?

- Para evitar gestión local de usuarios en cada dispositivo.
    
- Para **centralizar la política de acceso** a la red y mantener un mejor control.
    
- RADIUS se usa cuando hay muchos usuarios finales (como empleados en la red Wi-Fi).
    
- TACACS+ se elige cuando se necesita **más control sobre comandos específicos** que puede ejecutar un administrador en un equipo.
    

---

### 🧭 **Autenticación multifactor (MFA)**

#### ✅ ¿Qué hace?

Requiere **algo que el usuario sabe** (ej. contraseña) y **algo que el usuario tiene** (ej. token, app móvil, SMS).

#### 🧠 ¿Por qué se elige?

- Reduce el riesgo de accesos no autorizados por **robo o filtración de contraseñas**.
    
- Mejora la **seguridad de accesos críticos**, incluso si un atacante obtiene credenciales válidas.
    

---

### 👥 **Control de acceso basado en roles (RBAC)**

#### ✅ ¿Qué hace?

Asigna **permisos mínimos necesarios** según el **rol o función** del usuario en la organización.

Por ejemplo:

- Un empleado de finanzas no necesita acceso al sistema de IT.
    
- Un pasante tiene permisos muy limitados.
    

#### 🧠 ¿Por qué se elige?

- Aplica el principio de **menor privilegio**.
    
- Facilita la **gestión de permisos masiva** por departamento.
    
- Reduce la superficie de ataque ante incidentes internos o compromisos de cuentas.
    

---

### 📝 **Registro de auditorías**

#### ✅ ¿Qué hace?

Guarda información detallada sobre los accesos: **quién accedió, cuándo, desde dónde y qué hizo**.

#### 🧠 ¿Por qué se elige?

- Permite **detectar y rastrear accesos indebidos** o incidentes de seguridad.
    
- Es una medida clave para **cumplimiento normativo** (por ejemplo, ISO 27001, HIPAA, etc.).
    
- Sirve como **prueba forense** ante una brecha.
    

---

### ✅ **Resumen en una frase por ítem**

- **RADIUS:** Centraliza la autenticación de usuarios finales en redes Wi-Fi.
    
- **TACACS+:** Proporciona control detallado sobre el acceso de administradores a equipos de red.
    
- **MFA:** Añade una segunda capa de seguridad para proteger credenciales.
    
- **RBAC:** Otorga permisos según funciones, evitando accesos innecesarios.
    
- **Auditoría:** Registra todo para asegurar trazabilidad y control post-acción.
    

---

¿Querés que te lo pase en un formato para Obsidian o para un informe técnico?

---

## 4. Conclusión Final

La propuesta de rediseño establece una arquitectura de **"Defensa en Profundidad"**. No solo se eleva el perímetro (NGFW/IPS), sino que se añaden capas de control interno (AAA, VLANs) y de respuesta avanzada (EDR, SIEM). Este enfoque es el paso estratégico necesario para que TechSolutions S.A. mantenga la **Continuidad Operativa** y proteja los activos de sus clientes en un entorno de negocio cada vez más digitalizado y remoto.