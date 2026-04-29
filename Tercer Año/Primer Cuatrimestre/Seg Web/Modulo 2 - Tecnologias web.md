-- -
# Tecnologías Web y Seguridad en el Desarrollo de Aplicaciones

## Resumen Ejecutivo

El protocolo HTTP (_HyperText Transfer Protocol_) constituye el pilar fundamental de la comunicación en la Web. Diseñado a principios de los años 90 como un protocolo sencillo y extensible, ha evolucionado para permitir el intercambio de una vasta gama de recursos, desde documentos HTML hasta contenido multimedia complejo y actualizaciones en tiempo real mediante Ajax.

Los hallazgos clave de este análisis incluyen:

- **Modelo Cliente-Servidor:** La comunicación es iniciada exclusivamente por el cliente (agente de usuario), mientras que el servidor gestiona y responde a las peticiones, a menudo a través de intermediarios o _proxies_.
- **Naturaleza Sin Estado (Stateless):** Por diseño, HTTP no retiene información entre peticiones. Esta limitación se solventa mediante el uso de **cookies** y mecanismos de gestión de sesiones para permitir funcionalidades como carritos de compras y autenticación.
- **Extensibilidad y Estructura:** El uso de cabeceras (_headers_) permite ampliar las funcionalidades del protocolo sin alterar su núcleo. La comunicación se divide en métodos de petición específicos (GET, POST, etc.) y códigos de estado de respuesta que categorizan el éxito o error del intercambio.
- **Seguridad y Análisis:** La complejidad de las aplicaciones modernas requiere el uso de esquemas de codificación (Unicode, Base64) para el manejo seguro de datos y herramientas especializadas como **Burp Suite** para la evaluación de vulnerabilidades.

--------------------------------------------------------------------------------

## 1. Fundamentos y Arquitectura del Protocolo HTTP

HTTP es un protocolo de la capa de aplicación que opera sobre protocolos fiables como TCP o TLS (encriptado). Su diseño se centra en la legibilidad humana y la facilidad de depuración.

### Arquitectura de los Sistemas

La comunicación se basa en un intercambio de mensajes individuales:

- **Peticiones (Requests):** Enviadas por el cliente (navegador, curl, wget).
- **Respuestas (Responses):** Enviadas por el servidor tras procesar la petición.
- **Proxies:** Intermediarios que realizan funciones críticas como:
    - _Caching_ (público o privado).
    - Filtrado (antivirus, control parental).
    - Balanceo de carga (_load balancing_).
    - Autenticación y registro de eventos.

### Componentes de una URL

La estructura estándar para acceder a recursos es: `protocolo://hostname:port_number/path/?query_parameters`

- **Protocolo:** Generalmente HTTP o HTTPS. Los navegadores también manejan `mailto:` o `ftp:`.
- **Hostname:** Nombre de dominio o dirección IP.
- **Puerto:** Debe especificarse si no se utilizan los puertos estándar.
- **Parámetros:** Lista de pares llave/valor separados por `&`.

--------------------------------------------------------------------------------

## 2. Componentes de la Comunicación HTTP

### Métodos de Petición

Los métodos indican la acción específica que el cliente desea realizar sobre el recurso:

|   |   |
|---|---|
|Método|Descripción|
|**GET**|Recopila recursos (HTML, vídeos, datos).|
|**POST**|Envía datos en el cuerpo de la solicitud para crear resultados en el servidor.|
|**PUT**|Indica al servidor que almacene los datos en la URL solicitada.|
|**HEAD**|Pide una respuesta idéntica a GET pero sin el cuerpo.|
|**PATCH**|Actualiza parcialmente un recurso.|
|**OPTIONS**|Describe los métodos habilitados para un recurso.|
|**TRACE**|Realiza un diagnóstico retornando el contenido exacto recibido.|
|**CONNECT**|Inicia una conexión bidireccional (túnel proxy).|
|**DELETE**|Borra un recurso específico.|

### Cabeceras (Headers)

Permiten enviar información adicional y se agrupan según su contexto:

- **Generales:** Aplicables a peticiones y respuestas.
- **De Request:** Información sobre el cliente o el contenido deseado.
- **De Response:** Datos sobre el servidor y el origen del contenido.
- **De Entidad:** Información sobre el cuerpo del mensaje (tamaño, tipo MIME).

### Códigos de Estado

Las respuestas del servidor se categorizan en cinco clases:

- **100s (Informativas):** Ejemplo: _100 Continue_.
- **200s (Éxito):** Ejemplo: _200 OK_, _203 Non-Authoritative Information_.
- **300s (Redirección):** Ejemplo: _301 Moved Permanently_, _302 Found_.
- **400s (Errores del Cliente):** Ejemplo: _400 Bad Request_, _401 Unauthorized_, _403 Forbidden_, _404 Not Found_.
- **500s (Errores del Servidor):** Ejemplo: _500 Internal Server Error_.

--------------------------------------------------------------------------------

## 3. Estado, Sesiones y Cookies

Dado que HTTP es _stateless_, las **cookies** son esenciales para mantener la coherencia en la interacción del usuario.

### Funcionalidades de las Cookies

1. **Gestión de Sesiones:** Logins, carritos de compras, puntajes.
2. **Personalización:** Temas y preferencias de usuario.
3. **Rastreo:** Análisis del comportamiento del usuario.

### Seguridad y Atributos de las Cookies

- **Set-Cookie:** Encabezado del servidor para crear la cookie.
- **Atributos de sesión vs. permanentes:** Las permanentes usan `Expires` o `Max-Age`.
- **Seguridad:**
    - `Secure`: Solo se envía bajo protocolo HTTPS.
    - `HttpOnly`: Inaccesible desde JavaScript (`document.cookie`), previniendo ciertos ataques.
- **SameSite:** Controla el envío en solicitudes _cross-site_:
    - `Strict`: Solo al sitio de origen.
    - `Lax`: Permite el envío en navegaciones externas (redirecciones).
    - `None`: Permite _cross-site_ pero requiere contexto `Secure`.

### Aplicaciones Stateful vs. Stateless

- **Stateful:** La información del cliente se guarda en el objeto _Session_ del servidor. Presenta problemas de escalabilidad y performance si hay demasiados clientes.
- **Stateless:** El servidor persiste el `SessionID` en una base de datos, permitiendo una validación independiente del equipo físico que atienda la petición.

--------------------------------------------------------------------------------

## 4. Tecnologías y Manejo de Datos

### Ecosistema Tecnológico

- **Servidor:** Utiliza lenguajes como PHP, Java, Python; plataformas como ASP.NET o Node.js; y bases de datos SQL (Oracle, MySQL) o NoSQL (MongoDB).
- **Cliente:** El navegador interpreta HTML, CSS y JavaScript, además de implementar el **DOM (Document Object Model)**, una representación abstracta manipulable mediante scripts.
- **Formatos:** **JSON** es el estándar para transferir objetos de JavaScript de forma simple.

### Esquemas de Codificación

Debido a que HTTP y HTML se basan en texto, se requieren esquemas para manejar caracteres inusuales:

- **Unicode:** Persigue universalidad y unicidad.
    - **UTF-8:** Orientado a bytes, longitud variable (ej. `%c2%a9` para ©).
    - **UTF-16:** 16 bits, longitud variable (ej. `%u00e9` para é).
    - **UTF-32:** 32 bits, longitud fija.
- **Base64 / Hexadecimal (Base16):** Utilizan caracteres ASCII para representar bloques de datos binarios.
- **HTML:** Codificación mediante códigos ASCII decimales o hexadecimales (ej. `&#34;` para ").

--------------------------------------------------------------------------------

## 5. Herramientas de Evaluación: Burp Suite

Burp Suite es una herramienta multiplataforma basada en Java, diseñada para el análisis manual y automatizado de aplicaciones web.

### Componentes Principales

- **Proxy:** Intercepta y modifica el tráfico entre el navegador y el servidor.
- **Scanner:** Búsqueda automática de contenido y vulnerabilidades (requiere licencia).
- **Intruder:** Realización de ataques automatizados personalizados.
- **Repeater:** Modificación manual y reemisión de solicitudes.
- **Sequencer:** Análisis de la calidad de aleatoriedad en tokens de sesión.
- **Decoder:** Codificación y decodificación de datos.
- **Comparer:** Comparación visual de datos para identificar diferencias.