-- -
## **FIREWALL**

Un **firewall** es un sistema (o conjunto de sistemas) que **impone políticas de seguridad** entre una red privada y una red externa (como Internet).  
Su función es **controlar el tráfico** entrante y saliente **paquete por paquete**, permitiendo o bloqueando según reglas.

### Funciones principales:

- Permitir conexiones **desde la red interna hacia afuera**.
    
- Bloquear conexiones **desde fuera hacia adentro** (por defecto).
    
- Usar reglas llamadas **Access-Lists** (listas de acceso).
    
- Proveer un punto único para **seguridad y auditoría**.
    

### Lo que **NO** hace:

- No protege contra ataques desde adentro.
    
- No detiene virus, troyanos, túneles.
    
- No evita filtraciones de datos por otros medios.
    
- No reemplaza una política de seguridad completa.
    

---

## **Clasificación de Firewalls**

### Por tecnología:

- **Filtro de paquetes**: analiza cabeceras IP y puertos origen/destino.
    
- **Proxy de aplicación**: solo permite tráfico a través del proxy (ej. proxy web).
    
- **Stateful inspection**: analiza tráfico en contexto (con tabla dinámica de estado).
    
- **Híbridos**: combinación de los anteriores.
    

### Por ubicación:

- **Cortafuegos personales**: protegen una sola PC, con control sobre apps.
    
- **SOHO**: para pequeñas oficinas, suelen estar antes del router.
    
- **Hardware dedicado**: fáciles de usar, config centralizada.
    
- **Corporativos**: punto central de control en grandes redes.
    

---

## **DMZ (Zona Desmilitarizada)**

Funcionalidad ofrecida por los firewalls.  
Es una **subred intermedia entre Internet y la LAN**, donde se colocan **servidores públicos** (web, email, FTP).

### Características:

- Reduce el riesgo si un servidor es comprometido.
    
- Filtra el acceso a la LAN solo si es imprescindible.
    
- Se pueden agregar zonas de cuarentena.
    
- Los servidores en la DMZ deben ser reforzados.
    

---

## **UTM / NGFW**

- **UTM**: Unified Threat Management.
    
- **NGFW**: Next-Generation Firewall.
    

Ambos son términos comerciales para describir **equipos de seguridad perimetral multiservicio**.

Incluyen funcionalidades integradas como:

- Firewall
    
- IDS/IPS
    
- VPN
    
- Antivirus
    
- Filtros de contenido
    

Cada proveedor usa su propio nombre/combinación.

---

## IDS / IPS

### **IDS** (Intrusion Detection System)

- Sistema **pasivo** que **detecta ataques**.
    
- Utiliza **sensores tipo sniffer** para analizar el tráfico.
    
- Detecta firmas o comportamientos sospechosos.
    
- No actúa directamente: **necesita un firewall** para responder.
    
- Hace **detección continua** y genera **alertas**.
    

#### Tipos:

- **NIDS**: para toda la red.
    
- **HIDS**: para un solo host.
    
- **DIDS**: IDS distribuidos con consola centralizada.
    

#### Métodos de detección:

- **Heurístico**: comportamiento esperado.
    
- **Por patrón**: compara tráfico con firmas conocidas.
    

---

### **IPS** (Intrusion Prevention System)

- Sistema **activo** que **previene y bloquea** intrusos.
    
- Evolución del IDS.
    
- Puede cortar sesiones, modificar políticas, etc.
    
- Detecta con:
    
    - **Firmas** (como antivirus).
        
    - **Políticas declaradas**.
        
    - **Anomalías** de comportamiento.
        
    - **Honeypots** (sistemas trampa para observar ataques).
        

---

## **WAF (Web Application Firewall)**

Firewall especializado para **aplicaciones web**.

### Características:

- Puede ser **hardware o software**.
    
- Analiza tráfico **en capa 7** (Aplicación) del modelo OSI.
    
- Mitiga ataques como:
    
    - **SQL Injection**
        
    - **Cross-Site Scripting (XSS)**
        
    - **DoS**
        

### Modo de conexión:

- Router
    
- Bridge
    
- Proxy
    
- Plug-in
    

### Modo de trabajo:

- **Positivo**: todo se bloquea excepto lo explícitamente permitido.
    
- **Negativo**: todo se permite excepto lo que coincida con firmas de ataque.
    

---

## **Anti-DoS / Anti-DDoS**

Soluciones diseñadas para **mitigar ataques de denegación de servicio**.

### Clean Pipe

- Ofrecido por el proveedor de servicios.
    
- Analiza tráfico en borde de red (entrada/salida).
    
- Monitorea estadísticas de tráfico.
    
- Si detecta ataque, **envía el tráfico a un centro de limpieza**, filtra lo malo y reenvía lo legítimo.
    

### Appliance en línea

- Se instala un equipo especializado dentro de la red.
    
- Detecta ataques **hasta capa 7** y filtra tráfico en tiempo real.
    
- Debe estar bien dimensionado para no ser saturado.
    

### Comunicación con el proveedor

- Puede instalarse un dispositivo del mismo fabricante que el del proveedor.
    
- Se habilita una **licencia de señalización** para que ambos equipos se comuniquen y bloqueen IPs de forma colaborativa.
    
---
## **Otras soluciones**

![[Pasted image 20251007141118.png]]