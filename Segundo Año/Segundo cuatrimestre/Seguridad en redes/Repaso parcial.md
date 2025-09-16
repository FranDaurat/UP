-- -
# Primer Parcial

1. En una empresa han sido recientemente atacados por un ransomware... ¿Qué políticas le recomendarías al gerente de IT que aplique?
- Ante un ataque de **ransomware**, las principales recomendaciones son:
-  **Políticas de acceso**: Aplicar el principio de privilegios mínimos, asignando permisos específicos según la función de cada usuario y restringiendo la ejecución de archivos sospechosos (.exe) en directorios como _AppData_.    
-  **Backups**: implementar copias de seguridad periódicas, almacenadas en ubicaciones externas y seguras, y verificar periódicamente su restauración.    
-  **Seguridad en sistemas**: mantener antivirus activos, sistemas operativos actualizados y navegadores configurados para bloquear la ejecución de scripts maliciosos.
- **Contingencia**: contar con un plan de respuesta a incidentes que contemple aislamiento de equipos, redundancia de servicios críticos y uso de entornos virtualizados para reducir riesgos.
-  **Capacitación**: entrenar al personal en la detección de correos fraudulentos, phishing y buenas prácticas de ciberseguridad.

2. Enunciar y describir la autenticacion y autorizacion. Tambien dar un ejemplo.
- **Autenticacion:** Es el proceso en el que el sistema verifica y valida que la persona (usuario) es quien dice ser. Para esto se suele utilizar el nombre de usuario/correo electronico junto con una contraseña. Si estos resultan ser validos el sistema identifica al usuario como tal y le da acceso al sistema.
- **Autorizacion:** Depende en cierta manera de la autenticacion ya que no siempre el usuario ya autenticado en el sistema tiene permisos para acceder a todos los recursos del sistema, esto quiere decir que la autorizacion viene luego de la autenticacion ya que esta misma se ocupa de brindarle privilegios al usuario dentro del sistema luego de haber demostrado quien es. Por ejemplo, cuando un usuario se logue en una aplicacion web no necesariemente tiene acceso al panel de administracion.

3. ¿Por qué decimos que en un sistema asimétrico la gestión de claves es mucho mejor que en un sistema simétrico? Justificar su respuesta
- Se considera como mejor a un sistema **asimetrico** ya que este es mas seguro debido a que utiliza un par de claves: Una **privada** la cual se mantiene en secreto y no debe ser compartida y una **publica** la cual puede compartirse a cualquier receptor. Esto asegura que solo el que posee la clave **privada** pueda descrifrar los mensaje encriptado con la clave publica conservando asi la confidencialidad.
- En cambio, un sistema simetrico emplea unicamente una unica clave la cual debe de ser si o si compartido entre el emisor y el receptor. Al tener que ser compartida, esta misma queda expuesta generando asi riesgos de confidencialidad e integridad ya que un atacante malicios podria llegar a usarla para descifrar o falsificar mensajes. 

4. Una empresa quiere empezar a firmar digitalmente los recibos de sueldo de sus empleados. ¿Qué pasos debería seguir para poder realizarlo? Explicar el proceso que debería realizar la misma para emitirlo.
	1. **Obtener un certificado digital válido:** Se solicita un certificado a una autoridad certificante (AC) reconocida. Esta autoridad emite un certificado digital a nombre de la empresa o del responsable autorizado, junto con un dispositivo seguro (USB o smartcard) el cual almacena la clave privada.
	2. **Instalacion y configuracion del certificado:** El certificado se instala en equipos desde los cuales se realizaran  las firmas. Es importante asegurarse de que el token USB o smartcard este correctamente configurado y protegido con una buena contraseña.
	3. **Preparacion del documento a firmar:** Los recibos de sueldo se generan en formato electronico asegurando asi que el archivo este completo y correcto antes de aplicar la firma.
	4. **Proceso de firma digital:** 
		- El sistema de la empresa aplica un hash criptografico al documento PDF.
		- Ese hash se cifra con la clave privada del firmante contenida en el certificado digital.
		- El resultado es la firma digital, la cual se adjunta al documento.
	5. **Verificacion por parte del receptor:** El empleado puede validar la firma usando la clave publica asociada al certificado emitido por la AC. Al hacerlo se comprueba:
		- **Autenticidad:** La firma pertence efectivamente a la empresa.
		- **Integridad:**  Que el recibo no fue alterado despues de la firma.
		- **No repudio:** La empresa no puede negar haber firmado el documento porque la clave privada es unica y esta bajo su custodia.

5. Enumerar y describir explotacion de vulnerabilidad y dar un ejemplo de explotacion de una vulnerabildiad sobre un sistema operativo.
- **Explotacion de vulnerabilidades:** Es cuando ya se pone en marcha el plan de ataque y el atacante despliega su exploit con el fin de comprometer el sistema aprovechando las vulnerabilidades previametne identificadas.
- **Ejemplo:** Explotacion de la vulneerabilidad critica denominada como Shell Shock la cual mediante la modificacion de variables de entorno un atacante conseguia ejecutar codigo arbitrario en el servidor vulnerable. Este tambien es considerado como RCE.

6.
- a) ¿Que es un ataque DDOS? 
	- Es un ataque de denegacion de servicio distribuido, es decir, varios equipos de distintos lados del mundo intentan inundar de solicitudes al sistema objetivo (target) con el fin de que no puede responder a las solicitudes legitimas comprometiendo asi su disponibilidad. 
- b) ¿Un botnet es parte de un ataque DDoS o de defensa ¿porque?
	- Un botnet es parte de un ataque DDos ya que es una red de equipos infectados (bots) los cuales se utilizan para lanzar solicitudes a sistemas expuestos en internet con el fin de saturarlos y dejarlos fuera de servicio.

7. Si Alice firma digitalmente un documento PDF.
- a) ¿Cual es el procedimiento de verificacion que debe realizar.