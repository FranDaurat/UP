-- -

# AAA (Authentication, Authorization, Accounting)

- AAA no es un protocolo único, sino una **familia de protocolos** que ofrecen tres servicios principales :
    
    1. **Autenticación** → proceso mediante el cual una entidad prueba su identidad ante otra.
        
    2. **Autorización** → determina si una entidad tiene permiso para realizar una actividad específica.
        
    3. **Contabilización** → capacidad de registrar eventos y hacer seguimiento del consumo de recursos por parte de los usuarios.
        

## Extensión AAAA

- A los tres servicios anteriores, se suma una cuarta funcionalidad:  
    4. **Auditoría (Audit/Autoría)** → relaciona y analiza los diferentes eventos registrados para obtener trazabilidad y control.
    

## Objetivo general

- Controlar **qué usuarios acceden a los servicios** y **cuántos recursos utilizan**.
    
- Permitir un registro que garantice seguridad, control y responsabilidad en el uso de la red.
    

# Protocolos principales

- **PAP (Password Authentication Protocol)**
    
    - Protocolo simple, 2-way handshake.
        
    - Transmite contraseñas en ASCII sin cifrar.
        
    - Usado en conexiones antiguas (PPP, módems).
        
    - Hoy se usa solo como último recurso.
![[Pasted image 20250924094026.png]]

- **CHAP (Challenge Handshake Authentication Protocol)**
    
    - Basado en desafío–respuesta (RFC 1994).
        
    - 3 etapas: desafío, respuesta (hash, usualmente MD5), verificación.
        
    - Puede verificarse al inicio o durante la sesión.
        
    - Protege contra ataques replay (con identificadores y valores variables).
        
    - Microsoft tiene su versión: MS-CHAP.
![[Pasted image 20250924094115.png]]

- **EAP (Extensible Authentication Protocol)**
    
    - Framework extensible, lock-step (no avanza sin respuesta válida).
        
    - Muy usado en WLAN (WPA/WPA2).
        
    - Métodos: EAP-MD5, EAP-TLS, EAP-SIM, PEAP, LEAP, TTLS, etc.
        
    - Roles: solicitante (usuario), autenticador (AP o firewall básico), servidor de autenticación (normalmente RADIUS).
        
    - Flujo: request → response → repetición → success/failure.
![[Pasted image 20250924094805.png]]

- **RADIUS (Remote Authentication Dial-In User Service)**
    
    - Usa UDP 1812. RFC 2865 (autenticación/autorización) y RFC 2866 (contabilidad).
        
    - Autentica con PAP, CHAP o EAP.
        
    - Asigna recursos (IP, parámetros).
        
    - Maneja sesiones, registra inicio/fin → facturación y estadísticas.
        
    - Multivendor (estándar).
        
    - Encripta solo la contraseña, no el resto de la info (usuario, servicios, contabilidad expuestos).
![[Pasted image 20250924100142.png]]

- **TACACS / TACACS+**
    
    - Original: control de acceso en terminales (UDP 49), sin contabilidad. Hoy en desuso.
        
    - Evolución: XTACACS (Cisco).
        
    - **TACACS+**:
        
        - Basado en TCP 49, protocolo distinto a los anteriores.
            
        - Propietario de Cisco (no estandarizado).
            
        - Separa autenticación, autorización y contabilidad.
            
        - Cifra el cuerpo completo del paquete (excepto cabecera).
            
        - Más seguro que RADIUS.
![[Pasted image 20250924100156.png]]
![[Pasted image 20250924100232.png]]
- **Kerberos**
    
    - Desarrollado por MIT.
        
    - Autenticación mutua en redes inseguras.
        
    - Usa cifrado simétrico + hash de contraseñas.
        
    - Componentes:
        
        - **AS (Authentication Server)** → valida usuario.
            
        - **TGS (Ticket Granting Server)** → emite tickets para acceder a servicios.
            
        - **SS (Service Server)** → valida ticket y otorga acceso.
            
    - Implementaciones en varios sistemas (ej. Microsoft).
        
**Síntesis:**  
Los protocolos AAA evolucionaron desde métodos básicos e inseguros (PAP) hacia esquemas más robustos y flexibles (CHAP, EAP, RADIUS, TACACS+, Kerberos). Cada uno aporta diferentes niveles de seguridad, escalabilidad y control, siendo RADIUS y TACACS+ los más usados en infraestructura de red, mientras que Kerberos destaca en entornos corporativos para autenticación mutua y tickets.

---

# Protocolos de Directorio

## LDAP (Lightweight Directory Access Protocol)

- Protocolo de aplicación, también considerado como **base de datos**.
    
- Objetivo: ser un **directorio de información ordenado y distribuido**.
    
- Usos principales:
    
    - Autenticación de usuarios.
        
    - Almacenamiento de información adicional (contactos, ubicación de recursos, permisos, certificados).
        
- Estándar: **LDAPv3 (RFC 2251 y 2256)**.
    
- Puerto: **TCP 389**.
    
- Basado en **X.500** (servicios de directorio de ITU-T).
    
- Estructura:
    
    - Directorio = **árbol de entradas**.
        
    - Entrada = conjunto de **atributos**.
        
    - Cada atributo tiene nombre y valores definidos en un **esquema**.
        
    - Cada entrada tiene un **DN (Distinguished Name)**, formado por un RDN más el DN del padre.
        
- Comportamiento:
    
    - Cliente no siempre espera respuesta antes de enviar nueva petición.
        
    - Servidor puede responder en cualquier orden.
        
    - Soporta **notificaciones no solicitadas** (ej. antes de terminar conexión).
        

---

## Active Directory

- Implementación de **LDAP de Microsoft** con servicios adicionales: **DNS, DHCP, Kerberos**.
    
- Permite:
    
    - Crear objetos (usuarios, equipos, grupos).
        
    - Gestionar inicios de sesión en red.
        
    - Administrar **políticas** a nivel de toda la red.
        
    - Autenticación y autorización.
        
    - Despliegue de programas, actualizaciones y políticas de seguridad.
        
- Estructura jerárquica: organiza usuarios, grupos, permisos, asignación de recursos.
    
- Basado también en **X.500**.
    
- Diferencia con LDAP: **sincronización entre servidores de autenticación** en todo el dominio.
    
- Existen otras implementaciones: **Novell Directory Services, iPlanet/Sun ONE, OpenLDAP, Red Hat Directory Server, Apache Directory Server, Open DS**, etc.
    

---

📌 **Síntesis:**

- **LDAP** → protocolo ligero y estándar para directorios distribuidos, con base en X.500.
    
- **Active Directory** → implementación de Microsoft sobre LDAP, con servicios extra (DNS, DHCP, Kerberos) y capacidades avanzadas de gestión de usuarios, políticas y sincronización.
    
---

# Data Loss Prevention (DLP) 

## Definición

- Soluciones de seguridad que **identifican, supervisan y protegen datos** en:
    
    - **Uso** → acciones finales de usuarios.
        
    - **Movimiento** → tráfico de la red.
        
    - **Estáticos** → almacenamiento de datos.
        
- También llamado:
    
    - Prevención de fuga de datos.
        
    - Prevención/detección de fugas de información.
        

---

## Funcionalidad

- Métodos:
    
    - **Inspección de contenido**.
        
    - **Análisis del contexto** (atributos del creador, tipo de datos, medios, tiempo, destino, etc.).
        
    - **Gestión centralizada**.
        
- Objetivos:
    
    - Detectar y prevenir el uso no autorizado de datos sensibles.
        
    - Controlar la transmisión de información confidencial.
        
- Definición alternativa: conjunto de herramientas que evitan que los usuarios envíen información crítica fuera de la red corporativa.
    
---

## Herramientas de clasificación

- Uso de **reglas** para examinar contenido de archivos con datos sensibles.
    
- **Etiquetado** para clasificar información.
    
- Tres herramientas principales:
    
    1. **Supervisor de actividades y control**.
        
    2. **Filtro de flujo de datos**.
        
    3. **Protección de datos en reposo**.
        

---

## Conclusiones

- **Difícil de implementar** por la cantidad de agentes a instalar.
    
- Muy útil para detectar contenido estructurado (ej. números de tarjetas de crédito).
    
- Menos eficaz para validar propiedad intelectual o datos no estructurados (imágenes, gráficos).
    
- Requiere la participación de **todos los niveles de la empresa** para definir e implementar reglas efectivas.
    

📌 **Síntesis:** DLP es clave para prevenir fugas de información en uso, tránsito o reposo. Aunque su implementación es compleja, asegura trazabilidad y control de datos sensibles, siempre que exista un compromiso organizacional integral.
- --


