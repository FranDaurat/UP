-- --

## 1. ¿Qué es HTTP?

- **HTTP (HyperText Transfer Protocol)** es un **protocolo de nivel de aplicación** basado en el modelo **request-response**.
    
- Se usa para **comunicación cliente-servidor**, generalmente entre un navegador y un servidor web.
    
- Es un protocolo **stateless**: no guarda información entre requests.
    
- Usa **puertos**:
    
    - `80` → HTTP
        
    - `443` → HTTPS
        

---

### Componentes clave del ecosistema web

|Componente|Función|
|---|---|
|**HTML**|Lenguaje de marcado del contenido|
|**URL**|Identifica recursos|
|**HTTP**|Transfiere datos entre cliente y servidor|
|**La Web**|Ecosistema que une los tres anteriores|

---

### Ciclo HTTP (request/response)

1. El cliente abre una **conexión TCP** al servidor.
    
2. Envía un **request HTTP**.
    
3. El servidor procesa y responde con un **HTTP response**.
    
4. El contenido está en el **body** de la respuesta.
    
5. Desde HTTP/1.1, las conexiones pueden **persistir** (reutilizarse para más de una petición).
    

---

### Tipos de recursos que viajan por HTTP

- Documentos HTML
    
- CSS
    
- JavaScript
    
- Imágenes, videos, íconos, fuentes, etc.
    

---

### Características principales

|Característica|Descripción|
|---|---|
|**Stateless**|Cada request es independiente. Se puede mantener "estado" mediante **cookies**.|
|**Extensible**|Se puede ampliar mediante headers personalizados.|
|**Textual y legible**|En HTTP/1.1, los mensajes son texto plano. En HTTP/2 son binarios (frames).|

---

### HTTP Methods (Verbos)

|Método|Descripción|¿Tiene body?|¿Idempotente?|¿Safe?|
|---|---|---|---|---|
|**GET**|Obtener un recurso|❌|✅|✅|
|**POST**|Crear un nuevo recurso|✅|❌|❌|
|**PUT**|Reemplazar un recurso|✅|✅|❌|
|**PATCH**|Actualizar parcialmente|✅|❌|❌|
|**DELETE**|Eliminar un recurso|❌ o ✅|✅|❌|
|**OPTIONS**|Consultar opciones disponibles|❌|✅|✅|
|**HEAD**|Igual que GET, pero sin body|❌|✅|✅|

---

### Safe vs Idempotent

- **Safe**: no modifica el estado del servidor (GET, HEAD, OPTIONS).
    
- **Idempotent**: varias veces tiene el mismo efecto que una sola (GET, PUT, DELETE).
    

---

### Headers HTTP

- Son pares `clave: valor` que van en request o response.
    
- Clasificación por función:
    

|Tipo|Ejemplos|
|---|---|
|**General**|`Cache-Control`, `Connection`, `Date`|
|**Request**|`Accept`, `Cookie`, `User-Agent`|
|**Response**|`Location`, `Set-Cookie`, `Server`|
|**Entidad (Body)**|`Content-Type`, `Content-Length`|

- Otros headers:
    
    - Autenticación: `Authorization`
        
    - CORS: `Access-Control-Allow-Origin`
        
    - Negociación de contenido: `Accept`, `Content-Type`
        
    - Descargas: `Content-Disposition`
        

---

### Estructura de un Request

```http
GET /index.html HTTP/1.1
Host: example.com
User-Agent: Mozilla/5.0
Accept: text/html

[optional body]
```

---

### Estructura de un Response

```http
HTTP/1.1 200 OK
Content-Type: text/html
Content-Length: 1256

<html>...</html>
```

---

### Status Codes

|Rango|Significado|Ejemplos|
|---|---|---|
|`1xx`|Informativos|100 Continue|
|`2xx`|Éxito|200 OK, 201 Created, 204 No Content|
|`3xx`|Redirección|301 Moved Permanently, 302 Found|
|`4xx`|Error del cliente|400 Bad Request, 401 Unauthorized, 404 Not Found|
|`5xx`|Error del servidor|500 Internal Server Error, 503 Service Unavailable|

---

### Negotiación de contenido (Content Negotiation)

- El cliente puede pedir el formato deseado usando `Accept`.
    
- El servidor responde con el formato correcto en `Content-Type`.
    

```http
GET /users
Accept: application/json
```

```http
HTTP/1.1 200 OK
Content-Type: application/json
```

---

### Request Body y Payload

- **No todos los métodos** llevan body:
    
    - `GET`, `HEAD`, `DELETE`, `OPTIONS` → en general no llevan.
        
    - `POST`, `PUT`, `PATCH` → **sí llevan**, con contenido tipo JSON, XML, etc.
        
- Puede ser:
    
    - **Single resource**: un solo objeto.
        
    - **Multipart**: como en formularios HTML con archivos.
        

---

### Cookies y sesiones

- HTTP es stateless, pero las **cookies** permiten mantener sesiones (stateful).
    
- Se envían desde el cliente con `Cookie` y desde el server con `Set-Cookie`.
    

---

### Otros conceptos clave

#### User-Agent

- Identifica el navegador o cliente HTTP que hace el request.
    

#### Conexiones persistentes

- En HTTP/1.1 se permite mantener abierta la conexión.
    
- HTTP/2 permite **multiplexar** múltiples requests sobre una misma conexión.
    

#### Domain Sharding

- Técnica antigua para abrir más conexiones usando varios subdominios (`www1`, `www2`, etc.).
    
- ⚠️ Obsoleta con HTTP/2, que ya soporta múltiples requests en paralelo.
    

---

## 3. ¿Qué es REST?

- **REST (Representational State Transfer)** es un **estilo de arquitectura** propuesto por **Roy Fielding** en su tesis doctoral (2000).
    
- Define un conjunto de **restricciones** para crear **sistemas distribuidos** simples y escalables.
    
- Se aplica principalmente al diseño de **APIs web**.
    

---

### Principales características de REST

1. **Cliente / Servidor**
    
    - Separación entre cliente (interfaz de usuario) y servidor (almacenamiento y lógica).
        
    - Mejora la **portabilidad** y **escalabilidad**.
        
2. **Sin estado (Stateless)**
    
    - Cada request HTTP debe contener **toda la información** necesaria.
        
    - El servidor **no guarda estado** entre requests.
        
3. **Cacheable**
    
    - Las respuestas deben indicar si pueden **ser almacenadas en caché** o no.
        
    - Mejora el rendimiento del sistema.
        
4. **Interfaz uniforme**
    
    - Reglas estrictas que permiten que los componentes evolucionen de manera independiente.
        
    - Se logra mediante:
        
        - Identificación de recursos mediante URI.
            
        - Manipulación de recursos vía representaciones (ej. JSON).
            
        - Uso de métodos HTTP.
            
        - Hipermedios (opcional, más propio de HATEOAS).
            
5. **Sistema en capas**
    
    - El cliente no sabe si está comunicándose con el servidor final o con un proxy intermedio.
        
    - Aumenta la **escalabilidad** y **seguridad**.
        
6. **Código bajo demanda (opcional)**
    
    - El servidor puede enviar código ejecutable al cliente (JavaScript, por ejemplo).
        
    - Poca adopción práctica.
        

---

### Recursos en REST

- Todo en REST es un **recurso**: usuarios, productos, pedidos, etc.
    
- Cada recurso se identifica mediante una **URI única**:
    

```http
GET /users/123
```

---

### Representaciones

- Los recursos no se exponen directamente, sino a través de una **representación** (ej. JSON, XML).
    
- El cliente interactúa con la **representación del recurso**, no con el recurso en sí.
    
- Ejemplo:
    

```json
{
  "id": 123,
  "name": "Fran",
  "email": "fran@mail.com"
}
```

---

### Métodos HTTP en REST

REST usa los métodos HTTP estándar para operar sobre los recursos:

|Método|Operación|Descripción|
|---|---|---|
|**GET**|Read|Obtener un recurso o colección|
|**POST**|Create|Crear un nuevo recurso|
|**PUT**|Update|Reemplazar un recurso completo|
|**PATCH**|Update|Modificar parcialmente un recurso|
|**DELETE**|Delete|Eliminar un recurso|

---

### Buenas prácticas para URIs RESTful

|Objetivo|URI|Verbo|
|---|---|---|
|Listar todos|`/users`|GET|
|Obtener uno|`/users/123`|GET|
|Crear uno|`/users`|POST|
|Actualizar|`/users/123`|PUT o PATCH|
|Eliminar|`/users/123`|DELETE|

> ⚠️ Las URIs deben representar recursos **(sustantivos)**, no acciones.

✅ Correcto: `/users/123`  
❌ Incorrecto: `/getUser`

---

### Recursos y Sub-recursos

- Se pueden modelar relaciones jerárquicas:
    

```http
GET /users/123/orders
GET /users/123/orders/456
```

---

### Diferencias con RPC (Remote Procedure Call)

|REST|RPC|
|---|---|
|Basado en recursos|Basado en acciones o funciones|
|Usa HTTP semánticamente|Usa HTTP solo como transporte|
|Ejemplo: `/users/1`|Ejemplo: `/getUser?id=1`|

---

### Ventajas de REST

- Simplicidad y legibilidad
    
- Escalabilidad
    
- Caching integrado
    
- Uso de estándares (HTTP, JSON, URI)
    
- Independencia cliente-servidor
    
- Bajo acoplamiento
    

---

### Desventajas / Desafíos

- Stateless puede ser complejo en apps interactivas
    
- No hay un estándar obligatorio (como en SOAP)
    
- Seguridad y versionado no están definidos por REST, deben implementarse aparte
    

---

###  Conclusión

> REST no es un protocolo, es un estilo de arquitectura.  
> Define **cómo debe diseñarse una API** para que sea escalable, mantenible y fácil de consumir.

---

### 4. ¿Qué es un middleware?

Un **middleware** es una función que se ejecuta **antes de que una petición llegue al controlador final** en Express.  
Actúa como **una capa intermedia** que puede inspeccionar, modificar o incluso **interrumpir** el flujo de la request.

```js
function middleware(req, res, next) {
  // lógica acá
  next(); // pasa al siguiente middleware o controlador
}
```

> Es parte del patrón **"Pipe and Filters"**, donde cada middleware es un filtro que actúa en serie.

---

### ¿Qué puede hacer?

Un middleware puede:

- ✔ Ejecutar cualquier código.
    
- ✔ Leer o modificar `req` y `res`.
    
- ✔ Finalizar la respuesta (`res.send()`).
    
- ✔ Llamar a `next()` para continuar el flujo.
    

---

### Tipos de middleware

|Tipo|Descripción|
|---|---|
|**Global**|Afecta a todas las rutas (`app.use(...)`)|
|**De ruta**|Solo se ejecuta en rutas específicas|
|**De errores**|Tiene 4 parámetros: `(err, req, res, next)`|

---

### Ejemplos comunes de middleware

- `express.json()` → parsea el body
    
- Autenticación → verifica token/JWT
    
- Logging → registra info de la request
    
- Seguridad → cabeceras, protección XSS
    
- Manejo de cookies y sesiones
    

---

### Flujo de ejecución

```txt
[Cliente]
   ↓
[Middleware 1]  → logging
   ↓
[Middleware 2]  → auth/token
   ↓
[Middleware 3]  → parsing body
   ↓
[Controlador]   → lógica de la ruta (/users)
   ↓
[Respuesta]
```

---

### Ejemplo simple:

```js
// Middleware global
app.use((req, res, next) => {
  console.log(`Request a: ${req.method} ${req.url}`);
  next(); // continúa
});

// Middleware específico
function auth(req, res, next) {
  if (!req.headers.authorization) {
    return res.status(401).send('No autorizado');
  }
  next();
}

// Ruta protegida
app.get('/users', auth, (req, res) => {
  res.send(['Fran', 'Lucía']);
});
```

---

### En resumen

> Un middleware en Express **intercepta una petición HTTP antes de llegar al controlador**, y puede realizar tareas como validaciones, logs, autenticación, parsing, manejo de errores, etc.  
> Son fundamentales para mantener el código **modular, reutilizable y mantenible**.

---

Perfecto, Fran. Ahora sí, te dejo un **resumen completo y detallado** de la presentación **“6. Browsers.pptx.pdf”**, con foco especial en los conceptos más importantes, incluyendo lo que pediste de la **API DOM**. Está organizado y listo para que lo copies en Obsidian:

---

## 5. ¿Qué es un navegador?

Un **navegador web** es una aplicación que permite al usuario **interactuar con recursos de la web**, como páginas HTML, CSS, JavaScript, imágenes, etc.

Funciones principales:

- Descargar contenido desde URLs (por medio de **HTTP** o **HTTPS**).
    
- Interpretar y renderizar HTML.
    
- Ejecutar JavaScript.
    
- Aplicar estilos CSS.
    
- Gestionar caché, cookies, seguridad, almacenamiento local, etc.
    

---

### Componentes del navegador

1. **User Interface (UI)**
    
    - Elementos como barra de direcciones, botones, pestañas, etc.
        
2. **Browser Engine**
    
    - Coordina acciones entre la UI y el motor de renderizado.
        
3. **Rendering Engine**
    
    - Interpreta HTML, CSS y genera el árbol de renderizado (ej: WebKit, Blink, Gecko).
        
4. **Networking**
    
    - Maneja las conexiones HTTP/HTTPS.
        
5. **UI Backend**
    
    - Dibuja elementos básicos en pantalla (botones, cuadros de texto).
        
6. **JavaScript Engine**
    
    - Interpreta y ejecuta código JS (ej: V8 en Chrome, SpiderMonkey en Firefox).
        
7. **Data Storage**
    
    - Módulos para almacenamiento local (cookies, localStorage, IndexedDB, etc.).
        

---

### Ciclo de vida de una página web

1. El navegador realiza una **solicitud HTTP**.
    
2. Recibe el HTML → inicia **parsing**.
    
3. Construye el **DOM (Document Object Model)**.
    
4. Solicita CSS y JS externos.
    
5. Construye el **CSSOM**.
    
6. Combina DOM + CSSOM → **Render Tree**.
    
7. Realiza **layout** (posiciona elementos).
    
8. Pinta los elementos (paint).
    
9. Muestra en pantalla.
    

---

### ¿Qué es la API DOM?

- El **DOM** (Document Object Model) representa la estructura jerárquica del documento HTML como un **árbol de nodos**.
    
- Cada etiqueta HTML es representada como un nodo. Por ejemplo:
    

```html
<body>
  <h1>Título</h1>
  <p>Contenido</p>
</body>
```

Se transforma en:

```
Document
└── html
    └── body
        ├── h1
        └── p
```

#### La **API DOM** permite:

- Acceder, modificar y eliminar elementos del documento HTML desde **JavaScript**.
    
- Interactuar con los elementos dinámicamente.
    

#### Ejemplos clave:

```js
document.getElementById("miElemento");
document.querySelectorAll("p");
element.innerHTML = "Nuevo texto";
```

> 🧠 Es una **interfaz programática** estándar para modificar el contenido, estructura y estilo de una página web desde JS.

---

### Ejecución de JavaScript

- El motor JS es **single-threaded**.
    
- Usa un **event loop** que procesa tareas asincrónicas (setTimeout, fetch, etc.).
    
- Internamente trabaja con una **call stack** y una **task queue**.
    

---

### Modelo de seguridad Same-Origin Policy (SOP)

- Los scripts de una página sólo pueden acceder a datos de **la misma fuente** (misma combinación de protocolo, host y puerto).
    
- Esto protege al usuario de ataques como **Cross-Site Scripting (XSS)** o **Cross-Origin Request Forgery (CSRF)**.
    

---

### Herramientas del navegador

- **DevTools** (F12) permiten:
    
    - Ver estructura del DOM.
        
    - Inspeccionar elementos y estilos.
        
    - Ver solicitudes de red.
        
    - Depurar JavaScript.
        
    - Usar consola interactiva.
        

---

### Importancia de la caché

- Mejora el rendimiento cargando archivos desde almacenamiento local.
    
- Puede generar problemas de seguridad si no se configura correctamente (Cache Poisoning).
    
- Headers como `Cache-Control`, `ETag` y `Vary` son claves.
    

---

