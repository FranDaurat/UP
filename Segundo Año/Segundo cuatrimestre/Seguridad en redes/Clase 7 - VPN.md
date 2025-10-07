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

## Profundización sobre VPN IPSec

---

## ¿Qué es IPSec?

**IPSec (Internet Protocol Security)** es un conjunto de protocolos que permite establecer una **VPN (Red Privada Virtual)** en la **capa 3 del modelo OSI** (red).  
Su objetivo es garantizar:

- **Confidencialidad de los datos** (evitar que terceros los lean)
    
- **Autenticación mutua** (verificar identidad entre los extremos)
    
- **Integridad** (verificar que los datos no hayan sido modificados)
    
- **Intercambio seguro de claves** y negociación de parámetros criptográficos
    

---

## Componentes fundamentales de IPSec

### IKE – _Internet Key Exchange_

- Protocolo que **negocia los parámetros de seguridad (Security Association)**.
    
- Establece un **canal seguro inicial** para intercambiar claves criptográficas.
    
- Utiliza algoritmos como:
    
    - **Confidencialidad:** 3DES, AES, RSA, DH (Diffie-Hellman)
        
    - **Autenticación:** MD5, SHA1, SHA2
        
- El canal tiene un **tiempo de vida limitado** (ej. 10 minutos)
    

### SA – _Security Association_

- Representa la relación entre dos extremos (host ↔ host o gateway ↔ gateway).
    
- Define:
    
    - Qué algoritmos se van a usar
        
    - Qué claves
        
    - Cuánto tiempo serán válidas
        
    - Qué servicios de seguridad se activan (confidencialidad, integridad, etc.)
        

---

## Fases del establecimiento IPSec

### FASE 1 – Negociación IKE

- Se crea un **canal cifrado y autenticado**.
    
- Se negocian:
    
    - Algoritmos de cifrado y hash
        
    - Intercambio de claves
        
    - Identidad de los extremos
        
    - Tiempo de vida del canal seguro
        

### FASE 2 – Negociación de parámetros de tráfico

- Se define:
    
    - Qué modo de operación se usará (Túnel o Transporte)
        
    - Qué encabezado se aplicará (ESP, AH o ambos)
        
    - Qué datos se protegerán
        
    - Qué reglas seguirán los paquetes
        

---

## Modos de operación de IPSec

|Modo|Uso principal|Qué cifra/autentica|
|---|---|---|
|**Modo Túnel**|Gateway ↔ Gateway / Gateway ↔ Host|Todo el paquete IP original (incluye encabezado IP)|
|**Modo Transporte**|Host ↔ Host|Solo el **payload** (datos) del paquete IP|

---

## Protocolos principales de IPSec

### AH – Authentication Header

- Proporciona:
    
    - ✅ Autenticación de origen
        
    - ✅ Integridad
        
    - ✅ No repudio
        
- **No cifra los datos**
    
- Se puede usar en modo Túnel o Transporte
    
- En modo Túnel: AH se coloca **antes del encabezado IP original**, protegiendo toda la estructura
    

### ESP – Encapsulating Security Payload

- Proporciona:
    
    - Confidencialidad (**Cifrado**)
        
    - Integridad
        
    - Autenticación de origen
        
- En modo **Transporte**:
    
    - Cifra el payload (TCP + datos)
        
    - Autenticación va desde el header ESP hasta el trailer ESP
        
- En modo **Túnel**:
    
    - Cifra **todo el paquete IP original**
        
    - Autenticación incluye encabezado IP original
        

### AH + ESP combinados

- En algunos entornos de alta seguridad se usan **ambos protocolos juntos**, aprovechando:
    
    - Cifrado de ESP
        
    - Autenticación robusta de AH
        

---

## Resumen conceptual

|Protocolo|Cifra|Autentica|Integridad|No repudio|Nivel|
|---|---|---|---|---|---|
|**AH**|❌|✅|✅|✅|IP (capa 3)|
|**ESP**|✅|✅|✅|❌ (limitado)|IP (capa 3)|
|**AH+ESP**|✅ (ESP)|✅ (AH)|✅|✅|Alta seguridad|

---

## Diferencia con SSL/TLS VPN

|Aspecto|IPSec|SSL/TLS|
|---|---|---|
|Capa del modelo OSI|Capa 3 (Red)|Capa 7 (Aplicación)|
|Protocolos usados|IKE, AH, ESP|SSL/TLS|
|Acceso|Red completa (L2/L3)|Aplicaciones específicas (web, RDP, etc.)|
|Configuración|Compleja, requiere cliente|Más sencilla (puede usar navegador)|
|Casos de uso|Sucursales, redes corporativas|Acceso remoto web, BYOD|

---

## Usos típicos de VPN IPSec

- **Site-to-Site VPN**: interconectar sucursales o redes completas
    
- **Remote Access VPN**: conexión segura de un usuario remoto a la red empresarial
    
- **VPNs en bancos, organismos públicos, gobiernos**
    
- **Ambientes donde se requiere seguridad a bajo nivel (capa 3)**
    

---

## ¿Cómo se vería en un flujo real?

1. Cliente inicia IKE → se establece canal seguro
    
2. Se negocian los parámetros (SA)
    
3. Se define modo túnel o transporte
    
4. Se aplica AH, ESP o ambos según configuración
    
5. Todo el tráfico posterior viaja cifrado y autenticado
    

---

### Protocolos VPN comparados

| Protocolo       | Pros                                             | Contras                                               | Recomendación       |
| --------------- | ------------------------------------------------ | ----------------------------------------------------- | ------------------- |
| **OpenVPN**     | Seguro, código abierto, estable, usa AES‑256     | Requiere más ancho de banda                           | ⭐ Recomendado       |
| **WireGuard**   | Muy rápido, liviano, moderno                     | Configuración por defecto con problemas de privacidad | 👍 Muy buena opción |
| **PPTP**        | Rápido, fácil                                    | Inseguro, vulnerable, descifrado por la NSA           | ❌ Obsoleto          |
| **IKEv2/IPSec** | Estable, rápido, ideal para móviles              | Código cerrado (salvo Linux), posible backdoor NSA    | ✅ Aceptable         |
| **L2TP/IPSec**  | Más seguro que PPTP                              | Muy lento, sospechas de vulnerabilidad NSA            | ⚠️ Evitar           |
| **SSTP**        | Bueno contra cortafuegos, cifrado fuerte         | Código cerrado, posible acceso NSA                    | ⚠️ Riesgoso         |
| **SoftEther**   | Código abierto, muy rápido, bueno contra censura | Poca compatibilidad, requiere configuración           | ✅ Potencial futuro  |

---

### Cifrado Híbrido

Se combinan técnicas de **cifrado simétrico** (como AES o 3DES) y **asimétrico** (como RSA o DH) para garantizar seguridad durante la negociación de claves y el transporte de datos.

---

