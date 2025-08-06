-- - 
1. Usted tiene que armar una red Wifi para su edificio central, el cual recibe muchos clientes diarios. Explique cómo asignaría los ips de la red y que clase elegiría para satisfacer la demanda. Justifique su respuesta.

- Para diseñar la red WiFi del edificio central, donde se espera una gran cantidad de clientes diarios, utilizaría direcciones IP privadas de **Clase B** (por ejemplo, el bloque `172.16.0.0/12`). Esta clase permite aproximadamente **1 millón de direcciones IP**, lo que proporciona suficiente espacio para atender una alta demanda de dispositivos.

- Para asignar las IPs, implementaría un servidor **DHCP (Dynamic Host Configuration Protocol)** que distribuya las direcciones de forma dinámica a los dispositivos conectados. A su vez, utilizaría técnicas de **VLSM (Variable Length Subnet Masking)** para dividir la red en subredes más pequeñas según las áreas del edificio (por ejemplo, por piso o tipo de usuario), lo que optimiza el uso del espacio de direcciones y reduce el tráfico innecesario en la red.

- Esta configuración permite **escalabilidad, eficiencia y una administración sencilla** del direccionamiento IP en una red con alta rotación de usuarios.

2.

| Num | Host<br>solic | Hosts<br>Encontrados | Direccion<br>de<br>red | Masc | Masc<br>decim<br>punteada | Primera<br>ip<br>utilizable | Ultima<br>ip<br>utilizable | Direccion <br>de <br>Broadcast |
| --- | ------------- | -------------------- | ---------------------- | ---- | ------------------------- | --------------------------- | -------------------------- | ------------------------------ |
| 1   | 62            | 62                   | 192.168.1.0            | /26  | 255.255.255.192           | 192.168.1.1                 | 192.168.1.62               | 192.168.1.63                   |
| 2   | 50            | 62                   | 192.168.1.64           | /26  | 255.255.255.192           | 192.168.1.65                | 192.168.1.126              | 192.168.1.127                  |
| 3   | 16            | 30                   | 192.168.1.128          | /27  | 255.255.255.224           | 192.168.1.129               | 192.168.1.158              | 192.168.1.159                  |
| 4   | 2             | 2                    | 192.168.1.160          | /30  | 255.255.255.252           | 192.168.1.161               | 192.168.1.162              | 192.168.1.163                  |
| 5   | 2             | 2                    | 192.168.1.164          | /30  | 255.255.255.252<br>       | 192.168.1.165               | 192.168.1.166              | 192.168.1.167                  |
| 6   | 2             | 2                    | 192.168.1.168          | /30  | 255.255.255.252<br>       | 192.168.1.169               | 192.168.1.170              | 192.168.1.171                  |

| Num | Host<br>solic | Hosts<br>Encontrados | Direccion<br>de<br>red | Masc    | Masc<br>decim<br>punteada | Primera<br>ip<br>utilizable | Ultima<br>ip<br>utilizable | Direccion <br>de <br>Broadcast |
| --- | ------------- | -------------------- | ---------------------- | ------- | ------------------------- | --------------------------- | -------------------------- | ------------------------------ |
| 1   | 44            | 62                   | 192.168.2.0            | /26     | 255.255.255.192           | 192.168.2.1                 | 192.168.2.62               | 192.168.2.63                   |
| 2   | 18            | 30                   | 192.168.2.64           | /27     | 255.255.255.224           | 192.168.2.65                | 192.168.2.94               | 192.168.2.95                   |
| 3   | 10            | 14                   | 192.168.2.96           | /28     | 255.255.255.240           | 192.168.2.97                | 192.168.2.110              | 192.168.2.111                  |
| 4   | 2             | 2                    | 192.168.2.112          | /30     | 255.255.255.252           | 192.168.2.113               | 192.168.2.114              | 192.168.2.115                  |
| 5   | 2             | 2                    | 192.168.2.116          | /30<br> | 255.255.255.252<br>       | 192.168.2.117               | 192.168.2.118              | 192.168.2.119                  |
| 6   | 2             | 2                    | 192.168.2.120          | /30     | 255.255.255.252<br>       | 192.168.2.121               | 192.168.2.122              | 192.168.2.123                  |

| Num | Host<br>solic | Hosts<br>Encontrados | Direccion<br>de<br>red | Masc | Masc<br>decim<br>punteada | Primera<br>ip<br>utilizable | Ultima<br>ip<br>utilizable | Direccion <br>de <br>Broadcast |
| --- | ------------- | -------------------- | ---------------------- | ---- | ------------------------- | --------------------------- | -------------------------- | ------------------------------ |
| 1   | 2             | 2                    | 192.168.3.0            | /30  | 255.255.255.252           | 192.168.3.1                 | 192.168.3.2                | 192.168.3.3                    |


3. Indique diferencias entre protocolos TCP y UDP.

- TCP (Transmission Control Protocol) es un protocolo orientado a la conexión, confiable, que garantiza la entrega y el orden de los datos mediante mecanismos como control de flujo y reenvío en caso de pérdida. En cambio, UDP (User Datagram Protocol) es más rápido porque no establece conexión ni asegura la entrega ni el orden, por lo que es menos confiable pero ideal para aplicaciones en tiempo real como streaming o videojuegos.

4. Explique qué es y en que se destaca Sliding Windows

- Sliding Window (ventana deslizante) es un mecanismo usado por TCP para controlar el flujo de datos entre emisor y receptor. Permite que se envíen varios segmentos sin esperar una confirmación por cada uno, mejorando la eficiencia. Se destaca porque adapta dinámicamente cuántos datos pueden enviarse según la capacidad del receptor, evitando saturarlo y optimizando la velocidad de transmisión.

5. Explique qué diferencias hay entre cable UTP (par trenzado) y Fibra Óptica. 

- El cable UTP (par trenzado) transmite datos mediante señales eléctricas, es más económico y fácil de instalar, pero tiene menor velocidad, alcance y es más susceptible a interferencias. En cambio, la fibra óptica transmite datos mediante pulsos de luz, lo que le permite alcanzar mayores distancias, mayor velocidad y mejor inmunidad a interferencias, aunque su instalación es más costosa y delicada.