-- -
## Resumen – Denegación de Servicio (DoS / DDoS)

### Definición

- Un ataque de **Denegación de Servicio (DoS)** consiste en provocar la **pérdida de disponibilidad** de un servicio (ej. caída de red, sobrecarga de CPU, memoria, disco, ancho de banda, etc.).
    
- Se produce cuando el sistema no puede gestionar la cantidad de solicitudes recibidas y rechaza nuevas conexiones o directamente colapsa.
    
- **DDoS (Distributed Denial of Service):** variante distribuida, donde los ataques provienen de múltiples equipos (generalmente botnets), dificultando la defensa.
    

---

### 🔹 Clasificación de ataques DoS/DDoS

1. **Ataques por saturación:** buscan consumir recursos críticos (CPU, memoria, ancho de banda).  
    _Ejemplo: ataques masivos del grupo Anonymous._
    
2. **Ataques a la configuración:** modifican parámetros de servidores, routers o DNS para dejarlos fuera de servicio.  
    _Ejemplo: Syrian Electronic Army contra el New York Times (alteraron DNS)._
    
3. **Ataques destructivos:** dañan o alteran físicamente un sistema.  
    _Ejemplo: ataque a fábrica de acero en Alemania (2014) mediante spear-phishing)._
    
4. **Ataques disruptivos:** interrumpen la comunicación entre dos dispositivos, impidiendo la transferencia de datos.
    
5. **Ataques obstructivos:** bloquean o cortan la comunicación entre dos IPs o ISPs.
    
6. **Ataques de capa de aplicación:** se disfrazan como usuarios legítimos con peticiones que buscan colapsar el servidor web.
    

**En resumen:**  
Los ataques DoS/DDoS buscan **inhabilitar servicios críticos** saturando recursos, modificando configuraciones o bloqueando comunicaciones. Pueden ser masivos y distribuidos mediante botnets, y han alcanzado volúmenes de tráfico récord (superiores a 1 Tbps). Son una de las amenazas más comunes en ciberseguridad actual.
--- -
## Resumen – Redes Botnet

### 1. Concepto de Botnet

- Una **botnet** es una red de computadoras infectadas con malware (llamadas _bots_ o _zombies_), controladas de manera remota por un atacante (_botmaster_).
    
- El dueño de la computadora generalmente **no sabe** que su equipo está comprometido.
    
- Se usan para actividades ilegales como ataques distribuidos de denegación de servicio (DDoS), spam masivo, robo de información y fraudes.
    

---

### 2. Estructura de una Botnet

- **Bots/Zombies** → equipos infectados.
    
- **Botmaster** → el atacante que controla la red.
    
- **C&C (Command and Control)** → canal de comunicación que conecta al botmaster con los bots. Puede ser:
    
    - **Centralizado** (servidor único, fácil de localizar pero más eficiente).
        
    - **P2P (Peer-to-Peer)** (descentralizado, más difícil de derribar).
        

---

### 3. Propagación e Infección

- Las botnets se propagan mediante:
    
    - **Correos electrónicos con adjuntos maliciosos**.
        
    - **Explotación de vulnerabilidades en software o sistemas**.
        
    - **Descargas ocultas (drive-by-downloads)** en sitios web comprometidos.
        
- Una vez infectado, el bot:
    
    - Se conecta al C&C.
        
    - Espera instrucciones.
        
    - Puede recibir actualizaciones de malware.
        

---

### 4. Usos principales de una Botnet

- **Ataques DDoS** → saturación de servidores o redes.
    
- **Robo de credenciales** y espionaje.
    
- **Spam** y distribución de phishing.
    
- **Fraude publicitario** (click fraud).
    
- **Minado de criptomonedas** sin consentimiento.
    

---

### 5. Detección y Prevención

- **Señales de infección**: lentitud de red, procesos sospechosos, consumo elevado de CPU.
    
- **Medidas preventivas**:
    
    - Mantener sistemas y software **actualizados**.
        
    - Usar **antivirus/antimalware**.
        
    - Aplicar **firewalls** y sistemas de detección de intrusos (IDS).
        
    - Concienciar a los usuarios para evitar abrir adjuntos sospechosos o enlaces maliciosos.
        

---
## Ejemplos de Botnets

### **Mirai**

- Descubierta en **2016**, es de las más conocidas.
    
- Infecta principalmente **IoT (cámaras IP, routers, DVRs, etc.)** con contraseñas débiles o por defecto.
    
- Una vez infectado, el dispositivo se convierte en un **bot** que se conecta al servidor de C&C.
    
- Se hizo famosa por el **ataque DDoS masivo contra Dyn** (empresa de DNS) que tumbó servicios como **Twitter, Netflix, Spotify, Reddit**.
    
- Su código fue filtrado públicamente, lo que permitió que otros delincuentes crearan **variantes**.
    

---

### **Hajime**

- Apareció poco después de Mirai.
    
- También afecta dispositivos **IoT**, pero con una diferencia clave:
    
    - Tiene una **arquitectura P2P** (no usa un servidor central de C&C).
        
    - Eso lo hace más difícil de desmantelar.
        
- Interesante: **no es destructiva**, algunos investigadores creen que fue creada con la intención de **proteger IoT vulnerables** al bloquear otros malwares como Mirai.
    
- Se le llamó “el vigilante del IoT” porque parece más un experimento de seguridad que una botnet criminal.
    
---

### **BrickerBot**

- Activo en **2017**, muy destructivo.
    
- No se limita a reclutar dispositivos: **los inutiliza permanentemente** (ataque “**Permanent Denial of Service – PDoS**”).
    
- Infectaba routers, cámaras IP y otros IoT mal configurados.
    
- Ejecutaba comandos que **corrompían la memoria y borraban el firmware**, dejando los dispositivos inservibles (literalmente “ladrillos” → _bricks_).
    
- El autor se hacía llamar **Janit0r** y afirmaba que lo hacía para “limpiar internet” de dispositivos inseguros.
    
- Muy polémico porque, aunque con intención “ética”, dejó a miles de personas sin equipos.
    

---
## Conclusión

- **Mirai** → masivo, orientado a DDoS y base de muchas variantes.
    
- **Hajime** → más misterioso, P2P, con un perfil de “vigilante” más que de atacante.
    
- **BrickerBot** → destructivo, no crea una red de bots, sino que destruye los dispositivos infectados.
    

---

