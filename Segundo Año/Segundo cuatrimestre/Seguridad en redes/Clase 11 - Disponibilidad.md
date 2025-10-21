---

---
 -- --
 
 La **disponibilidad** es uno de los tres pilares fundamentales de la seguridad informática o de redes. Las soluciones analizadas buscan mejorar específicamente la disponibilidad de los servicios o recursos, manteniendo los recursos accesibles y operativos.

---

## Soluciones de Conectividad y Redundancia de Capa 3 (Ruteo)

### Sistema Autónomo (AS) con BGP

El uso de un **Sistema Autónomo (AS)** junto con el protocolo **BGP** (_Border Gateway Protocol_) permite a una organización lograr **independencia de sus Proveedores de Servicio de Internet (ISP)** y aumentar la disponibilidad de su conectividad.

- **BGP:** Es el protocolo mediante el cual se intercambia información de encaminamiento o ruteo entre sistemas autónomos. Es el protocolo más utilizado para configurar la interconexión de redes grandes.
    
- **AS (Sistema Autónomo):** Cada AS tiene sesiones internas (**IBGP**) y sesiones externas (**eBGP**). Para disponer de un AS en Internet es necesario declararlo y contratarlo.
    
- **Disponibilidad:** Al tener un AS propio y gestionar el direccionamiento IP, el cliente puede tener **varios proveedores de Internet** (_multihoming_). Esto crea **redundancia**, ya que la dirección IP pública del cliente dispone de múltiples caminos para ser accedida, asegurando la conexión incluso si falla un ISP.
    

---

## Soluciones de Enlace y Prevención de Fallas (Capa 2)

### STP (Spanning Tree Protocol) y RSTP

El **STP** (_Spanning Tree Protocol_, IEEE 802.1D) es un protocolo de Capa 2 (enlace de datos) que se ejecuta en _switches_. Su principal objetivo es **gestionar la presencia de bucles** en topologías de red que utilizan enlaces redundantes.

- **Problema:** Los enlaces redundantes son necesarios como respaldo (_failover_), pero sin STP, crean bucles que son fatales para la red.
    
- **Mecanismo:** STP define un árbol que se expande por todos los _switches_, obligando a que los trayectos de datos redundantes se coloquen en un **estado de espera (bloqueado)** y dejando otros en el estado de **reenvío** (_Forwarding_). Si un enlace activo falla, STP reconfigura la red y activa el trayecto en espera.
    
- **Estados de Enlace (STP):** Los enlaces pasan por varios estados para converger a una red sin bucles: **Blocking** → **Listening** (15 seg) → **Learning** (15 seg) → **Forwarding**.
    
- **RSTP (Rapid Spanning Tree Protocol):** Es una variante que **mejora drásticamente la velocidad de restablecimiento** (tiempos de convergencia), unificando estados y reduciendo el tiempo de convergencia de unos 50 segundos (en STP clásico) a un tiempo máximo mucho menor (por ejemplo, 6 segundos).
    

### Link Aggregation (Agregación de Enlaces)

- **Definición:** También conocido como **Bonding o Trunking** (IEEE 802.3ad), permite utilizar **varios enlaces Ethernet** en la comunicación entre dos equipos como si fueran un único enlace lógico.
    
- **Función de Disponibilidad:** La agregación de enlaces aumenta la **velocidad de los enlaces** al repartir el tráfico entre ellos, y ofrece **redundancia** total. Si un cable del paquete de enlaces falla, el tráfico se reenvía automáticamente por los cables restantes, manteniendo la disponibilidad.
    

---

## Soluciones de Energía (Disponibilidad Física)

### POE (Power Over Ethernet)

**PoE** describe un sistema para transferir **potencia eléctrica junto con datos** a dispositivos remotos sobre el mismo cable Ethernet (categoría 3, 5, 5E ó 6).

- **Función de Disponibilidad:** Permite que dispositivos finales (PD's), como teléfonos VoIP, _Webcams_ o _Access Points_, se alimenten directamente del _switch_.
    
- **Ventaja:** Si el _switch_ es el único dispositivo conectado a una **UPS / grupo electrógeno**, todos los dispositivos alimentados por PoE mantendrán la energía y, por lo tanto, la **disponibilidad del servicio**, incluso ante un corte de energía principal.
    

---

## Conceptos de Segmentación

### VLAN (Red de Área Local Virtual)

- **Separación Lógica:** Las VLANs crean una **topología virtual** que es independiente del cableado físico, permitiendo agrupar usuarios en grupos de trabajo.
    
- **Dominio de Broadcast:** Cada VLAN es su propio **dominio de broadcast**, lo que ayuda a controlar el tráfico de difusión y, por ende, mejora la seguridad.
    
- **Comunicación:** La comunicación entre diferentes VLANs siempre requiere **enrutamiento de Capa 3** (_routers_).