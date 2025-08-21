-- -
## **Resumen sobre seguridad, amenazas y suplantación de identidad**

### **Conceptos clave**

- **Amenaza:** Potencial de causar un incidente que dañe sistemas, organizaciones o información, explotando una vulnerabilidad.
    
- **Ataque:** Acción deliberada que compromete la seguridad de un sistema o red.
    
- **Vulnerabilidad:** Debilidad técnica, operativa o de información que puede ser explotada.
    
- **Riesgo:** Posible problema que combina vulnerabilidad y amenaza; su gravedad depende del impacto en los activos y la probabilidad de ocurrencia.
    
    > Fórmula orientativa: **Riesgo = Vulnerabilidad × Amenaza**.
    

---

### **Fases de un ataque**

1. **Descubrimiento:** Identificación y exploración de posibles víctimas.
    
2. **Búsqueda de vulnerabilidades:** Puede ser activa (pruebas que afectan el sistema) o pasiva (obtención de información sin impacto).
    
3. **Explotación:** Uso de vulnerabilidades para ejecutar el ataque.
    
4. **Compromiso del sistema:** Instalación de puertas traseras, malware o usuarios no autorizados para mantener acceso.
    
5. **Eliminación de pruebas:** Borrar/modificar registros para ocultar la intrusión.
    

---

### **Herramientas comunes en ataques**

- Escáneres de puertos, sniffers, exploits, backdoors, rootkits, auto-rooters, cracking de contraseñas, malware, spoofing, cifrado para ocultar actividad y ataques híbridos.

---

### **Análisis de vulnerabilidades y riesgos**

- Identificar **activos** (personas, equipos, software, infraestructuras, etc.).
    
- Detectar vulnerabilidades internas/externas y físicas/lógicas.
    
- Asociar amenazas posibles a cada vulnerabilidad.
    
- Evaluar riesgos considerando impacto y probabilidad.
    
- Implementar **mitigaciones** técnicas, lógicas o procedimentales (ej. alta disponibilidad, hardware replicado).

---

### **Análisis de tráfico y patrones**

- Permite acceder, capturar y estudiar el tráfico para detectar comportamientos sospechosos.
    
- Uso de **firmas o huellas** para identificar actividad maliciosa.
    
- Posibles errores: falsos positivos (alertas falsas) y falsos negativos (ataques no detectados).
    
- Requiere correlación de fuentes y actualización constante.

---

### **Suplantación de identidad (Spoofing)**

Consiste en falsificar información o identidad para engañar y obtener acceso, información o control. Tipos principales:

- **IP Spoofing:** Falsificación de IP de origen.
    
- **ARP Spoofing/Poisoning:** Alterar tablas ARP para redirigir tráfico.
    
- **DNS Spoofing:** Respuestas falsas a consultas DNS, posible _cache poisoning_.
    
- **Web Spoofing:** Páginas web falsas para interceptar o manipular datos.
    
- **Mail Spoofing:** Falsificación de remitentes de correo.
    
- **GPS Spoofing:** Señales falsas para engañar geolocalización.
    
- **DHCP Spoofing:** Respuestas falsas de DHCP para dar datos inválidos.
    
- **ICMP Redirection:** Redirección de tráfico mediante ICMP para ataques _man-in-the-middle_.
    
- **Cookie Poisoning:** Alteración o duplicado de cookies de sesión para suplantar identidad.
    

---