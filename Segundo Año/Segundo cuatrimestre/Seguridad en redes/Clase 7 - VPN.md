- --

### **¿Qué es una VPN?**

Una **VPN (Virtual Private Network)** permite interconectar redes a través de medios no seguros (como Internet) de forma segura y cifrada.  
Su objetivo principal es **garantizar la seguridad, privacidad y confidencialidad** de las comunicaciones entre dos puntos remotos.

Antes de las VPN, las empresas usaban **enlaces dedicados punto a punto**, con altos costos y baja escalabilidad. Las VPN transformaron este escenario permitiendo trabajar sobre internet pública y reducir gastos.

---

### Tipos de VPN según la capa OSI

|Tipo|Características|
|---|---|
|**VPN de Capa 2**|Utilizan tecnologías como MPLS, ATM y Frame Relay. Muy usadas en bancos y grandes corporaciones.|
|**VPN de Capa 3**|Basadas principalmente en **IPSec**, con funciones de hash (MD5, SHA1, SHA2) y cifrado (3DES, AES, RSA, DH). Ambos extremos deben soportar IPSec para funcionar correctamente.|

---

### Tipos de VPN según su uso

#### VPN de acceso remoto

Permite que un usuario se conecte a una red privada (como la de su empresa) desde un lugar remoto usando internet.

- **Autenticación**: con contraseña, biometría o certificados.
    
- **Túnel cifrado**: se crea entre cliente y servidor usando protocolos como **IPSec** o **SSL/TLS**.
    
- **Usos comunes**: teletrabajo, acceso a servidores empresariales desde Wi-Fi público.
    

#### VPN personal (de consumo)

Cifra la conexión del usuario hacia internet y oculta su dirección IP. No da acceso a redes privadas, sino al internet público cifrado.

- **Usos comunes**:
    
    - Acceso a contenido restringido por región (ej. Netflix).
        
    - Evitar censura en países autoritarios.
        
    - Proteger privacidad frente a ISPs, gobiernos o hackers.
        
    - Evitar ataques DDoS.
        

#### VPN móvil

Adaptada para dispositivos móviles que cambian de red constantemente.

#### VPN de sitio a sitio

Conecta **dos redes enteras**, como sucursales de una empresa.

- **Intranet VPN**: entre redes de una misma empresa.
    
- **Extranet VPN**: entre redes de empresas distintas (cliente-proveedor).
    
- Implementadas usualmente con **IPSec entre routers o firewalls**.
    

---

### Modos de operación IPSec

|Modo|Descripción|
|---|---|
|**Modo Túnel**|Cifra **todo el paquete IP original**. Se usa entre gateways.|
|**Modo Transporte**|Cifra solo el contenido (payload). Se usa entre hosts.|

---

### Componentes clave de IPSec

- **IKE (Internet Key Exchange)**: negocia los parámetros de seguridad (SA) y las claves.
    
- **SA (Security Association)**: define cómo se usarán los servicios de seguridad.
    
- **Protocolos de seguridad**:
    
    - **AH (Authentication Header)**:
        
        - Brinda autenticación, integridad y no repudio.
            
        - No cifra los datos.
            
    - **ESP (Encapsulating Security Payload)**:
        
        - Proporciona cifrado, integridad y autenticación.
            
        - Puede usarse solo o junto con AH.
            

---

### VPN SSL/TLS

Utiliza los protocolos SSL (obsoleto) o **TLS** para ofrecer acceso remoto a través de navegadores web.

- No requiere instalación de software adicional.
    
- Cifra todo el tráfico con **E2EE (End-to-End Encryption)**.
    
- Permite autenticación y acceso remoto como si el usuario estuviera en la red local.
    
- **Tipos de SSL VPN**:
    
    - **Portal VPN**: acceso web a un sitio remoto.
        
    - **Túnel VPN**: acceso a múltiples recursos (web y no web) mediante navegador con contenido activo.
        
- **Ventajas**:
    
    - Fácil de implementar.
        
    - Compatible con múltiples navegadores y SO.
        
    - Menor soporte técnico.
        

---

### Protocolos VPN comparados

|Protocolo|Pros|Contras|Recomendación|
|---|---|---|---|
|**OpenVPN**|Seguro, código abierto, estable, usa AES‑256|Requiere más ancho de banda|⭐ Recomendado|
|**WireGuard**|Muy rápido, liviano, moderno|Configuración por defecto con problemas de privacidad|👍 Muy buena opción|
|**PPTP**|Rápido, fácil|Inseguro, vulnerable, descifrado por la NSA|❌ Obsoleto|
|**IKEv2/IPSec**|Estable, rápido, ideal para móviles|Código cerrado (salvo Linux), posible backdoor NSA|✅ Aceptable|
|**L2TP/IPSec**|Más seguro que PPTP|Muy lento, sospechas de vulnerabilidad NSA|⚠️ Evitar|
|**SSTP**|Bueno contra cortafuegos, cifrado fuerte|Código cerrado, posible acceso NSA|⚠️ Riesgoso|
|**SoftEther**|Código abierto, muy rápido, bueno contra censura|Poca compatibilidad, requiere configuración|✅ Potencial futuro|

---

### Cifrado Híbrido

Se combinan técnicas de **cifrado simétrico** (como AES o 3DES) y **asimétrico** (como RSA o DH) para garantizar seguridad durante la negociación de claves y el transporte de datos.

---

