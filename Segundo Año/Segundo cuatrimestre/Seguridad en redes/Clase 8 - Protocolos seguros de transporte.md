-- -
### Introducción a SSL/TLS

- Además de IPsec (visto en VPN), existen otros protocolos para cifrar información a nivel de transporte.
    
- Los principales son:
    
    - **SSL** (Secure Socket Layer)
        
    - **TLS** (Transport Layer Security)
        
- Ambos permiten el intercambio seguro de datos entre cliente y servidor mediante **cifrado**, **autenticación** y **handshake**.
    
- Usan certificados **X.509** y **criptografía asimétrica** para verificar identidades e intercambiar una **clave simétrica** para cifrado.
    

---

### SSL (Secure Socket Layer)

- Desarrollado por **Netscape** en los años 90.
    
- Versiones más relevantes: **2.0** (primera difundida) y **3.0** (más estable).
    
- Diseñado inicialmente para **proteger conexiones HTTP** (por ejemplo, enviar tarjetas de crédito).
    
- Seguridad implementada en la **capa de transporte**, no en HTTP.
    
- Utiliza **puertos específicos**:
    
    - Ej.: 443 (HTTPS), 993 (IMAP seguro), 995 (POP seguro).
        
- Se creó una interfaz de sockets segura:
    
    - `SSL_connect`, `SSL_accept`, `SSL_send`, `SSL_recv` (reemplazo seguro de `connect`, `accept`, etc.).
        
- Permite que cualquier app basada en TCP use SSL solo cambiando llamadas de socket.
    

---

### TLS (Transport Layer Security)

- Evolución de SSL. **TLS 1.0 ≈ SSL 3.0**.
    
- Estándar del **IETF** desde 1999.
    
- Últimas actualizaciones: RFC 5246 (2008), RFC 6176 (2011).
    
- Versiones:
    
    - **1.0**, **1.1**, **1.2**, **1.3**
        
- Se divide en:
    
    1. **TLS Record Protocol**: nivel bajo, sobre TCP. Asegura:
        
        - **Privacidad**: con cifrado simétrico.
            
        - **Integridad**: mediante verificación de mensajes.
            
    2. **TLS Handshake Protocol**: nivel superior. Garantiza:
        
        - **Autenticación**: con criptografía de clave pública.
            
        - **Negociación segura de clave compartida**.
            
        - **Fiabilidad en la negociación** (prevención de alteraciones).
            
- Funciona por **protocolo**, no por puerto. Comienza con un "hello" inseguro → se cambia a conexión segura tras handshake.
    
    - Ejemplo: comando `STARTTLS` en SMTP.
        

---

### Diferencias entre SSL y TLS

|Elemento|SSL|TLS|
|---|---|---|
|**Intercambio de claves**|No detallado explícitamente|Mejores algoritmos soportados|
|**Cifrado**|Usa algoritmos como DES/3DES|Mejores prácticas modernas|
|**Integridad de mensajes**|**MAC** (Message Authentication Code)|**HMAC** (Hash-based MAC)|
|**Función hash recomendada**|SHA1, MD5|**HMAC-SHA-256** (actual)|

- **MAC**: utiliza una clave secreta compartida para autenticar mensajes.
    
- **HMAC**: usa funciones hash (como SHA-256) para mayor seguridad.
    

---

## **2. Ejemplos de uso**

### 🔐 Protocolos sobre SSL/TLS

SSL/TLS se utiliza ampliamente sobre otros protocolos conocidos. Algunos ejemplos:

|Protocolo|Uso|Puerto|
|---|---|---|
|**HTTPS**|HTTP sobre TLS/SSL|443|
|**SSH**|Secure Shell|22|
|**SCP**|Secure Copy (sobre SSH)|—|
|**SFTP**|SSH File Transfer Protocol|—|
|**SMTP/POP3/IMAP**|Correo seguro (encriptado)|465/995/993|

---

### SSH (Secure Shell)

- Utiliza **TCP/IP** como transporte.
    
- Arquitectura **cliente-servidor** para conexión remota **segura**.
    
- Reemplaza protocolos como **Telnet** y **FTP**, ya que **cifra toda la sesión** (previene robo de contraseñas).
    
- Permite asegurar otros protocolos **inseguros** mediante **reenvío de puertos** (port forwarding).
    
    - Ejemplo: POP → conexión segura a través de túnel SSH.
        

#### Algoritmos usados por SSH:

|Tipo de algoritmo|Ejemplos|
|---|---|
|**Asimétrico (intercambio de claves)**|RSA, DSA, Diffie-Hellman|
|**Simétrico (cifrado de datos)**|DES, 3DES, IDEA, Blowfish, AES|
|**HASH (integridad)**|MD5, SHA1, variantes SHA2|

---

## Conclusión general

- **SSL/TLS y SSH** son pilares en la seguridad de transporte en redes.
    
- TLS es la **versión más segura y moderna** (y compatible hacia atrás con SSL).
    
- SSH va más allá del cifrado: **túneles seguros**, transferencia de archivos, conexiones remotas.
    
- La **autenticación, encriptación y verificación de integridad** son claves para todos estos protocolos.
    

---

