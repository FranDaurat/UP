-- - 
1. Usted tiene que armar una red Wifi para su edificio central, el cual recibe muchos clientes diarios. Explique cómo asignaría los ips de la red y que clase elegiría para satisfacer la demanda. Justifique su respuesta.

- Para diseñar la red WiFi del edificio central, donde se espera una gran cantidad de clientes diarios, utilizaría direcciones IP privadas de **Clase B** (por ejemplo, el bloque `172.16.0.0/12`). Esta clase permite aproximadamente **1 millón de direcciones IP**, lo que proporciona suficiente espacio para atender una alta demanda de dispositivos.

Para asignar las IPs, implementaría un servidor **DHCP (Dynamic Host Configuration Protocol)** que distribuya las direcciones de forma dinámica a los dispositivos conectados. A su vez, utilizaría técnicas de **VLSM (Variable Length Subnet Masking)** para dividir la red en subredes más pequeñas según las áreas del edificio (por ejemplo, por piso o tipo de usuario), lo que optimiza el uso del espacio de direcciones y reduce el tráfico innecesario en la red.

Esta configuración permite **escalabilidad, eficiencia y una administración sencilla** del direccionamiento IP en una red con alta rotación de usuarios.

2.

| Num | Host<br>solic | Hosts<br>Encontrados | Direccion<br>de<br>red | Masc | Masc<br>decim<br>punteada | Primera<br>ip<br>utilizable | Ultima<br>ip<br>utilizable | Direccion <br>de <br>Broadcast |
| --- | ------------- | -------------------- | ---------------------- | ---- | ------------------------- | --------------------------- | -------------------------- | ------------------------------ |
| 1   |               |                      |                        |      |                           |                             |                            |                                |
| 2   |               |                      |                        |      |                           |                             |                            |                                |
| 3   |               |                      |                        |      |                           |                             |                            |                                |
| 4   |               |                      |                        |      |                           |                             |                            |                                |
3. Indique diferencias entre protocolos TCP y UDP.
- TCP (Transmission Control Protocol) es un protocolo orientado a la conexión, confiable, que garantiza la entrega y el orden de los datos mediante mecanismos como control de flujo y reenvío en caso de pérdida. En cambio, UDP (User Datagram Protocol) es más rápido porque no establece conexión ni asegura la entrega ni el orden, por lo que es menos confiable pero ideal para aplicaciones en tiempo real como streaming o videojuegos.

4. Explique qué es y en que se destaca Sliding Windows

5. Explique qué diferencias hay entre cable UTP (par trenzado) y Fibra Óptica. 

