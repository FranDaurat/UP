# Segundo Parcial — Seguridad en Sistemas Operativos (Resuelto)

> [!tip] Cómo usar este archivo
> Transcripción del segundo parcial. Leé la consigna, respondé mentalmente y desplegá **▸ Respuesta** para ver la correcta (la que estaba marcada). Las preguntas 8 es de desarrollo.

---

**Pregunta 1.** Un investigador forense analiza una imagen JPEG encontrada en el dispositivo de un sospechoso y necesita determinar cuándo y dónde fue tomada la foto, con qué dispositivo fue capturada y si la imagen fue alterada posteriormente. ¿Qué herramienta de código abierto es la más adecuada para este análisis específico?

- A. Wireshark, porque analiza los paquetes de red asociados a la transmisión de la imagen hacia el dispositivo.
- B. OSSEC, porque detecta intrusiones y cambios no autorizados en los archivos del sistema operativo.
- C. ExifTool, ya que es una herramienta versátil que permite leer metadatos en imágenes incluyendo fecha, ubicación GPS, modelo de cámara y otros detalles.
- D. Volatility, porque analiza la memoria del sistema donde fue procesada la imagen por última vez.

> [!success]- Respuesta
> **C.** ExifTool.

---

**Pregunta 2.** Una empresa realiza backups incrementales diarios de lunes a sábado y un backup completo los domingos. El miércoles por la noche el servidor principal falla completamente. Para recuperar todos los datos al estado del miércoles por la tarde, ¿qué backups necesita restaurar la empresa y en qué orden?

- A. Solo necesita el backup completo del domingo; los incrementales son opcionales para una recuperación de emergencia completa.
- B. Debe solicitar el backup al proveedor cloud, ya que los backups locales no son suficientes para una falla total del servidor.
- C. Debe restaurar primero el backup completo del domingo, luego el incremental del lunes, luego el del martes y finalmente el del miércoles.
- D. Solo necesita restaurar el backup incremental del miércoles, que contiene todos los datos actualizados.

> [!success]- Respuesta
> **C.** Completo del domingo + incrementales en orden (lunes → martes → miércoles).

---

**Pregunta 3.** Un administrador configura replicación Activa-Activa para los servidores de base de datos. Un colega recomienda Activa-Pasiva argumentando que es más simple y segura. ¿Cuál es la diferencia técnica clave entre ambos enfoques y qué determina cuál usar?

- A. No hay diferencia funcional real; Activa-Activa y Activa-Pasiva producen el mismo resultado con diferente configuración de hardware.
- B. Activa-Activa aplica exclusivamente a bases de datos, mientras que Activa-Pasiva se usa para todos los demás tipos de sistemas.
- C. La replicación Activa-Pasiva es siempre superior porque el nodo pasivo puede detectar y corregir errores del activo antes de que se propaguen.
- D. Activa-Activa: Sistemas simultáneos compartiendo carga y replicando en tiempo real (máximo rendimiento). Activa-Pasiva: Un sistema activo y otro en standby en caso de fallo (más simple y económico).

> [!success]- Respuesta
> **D.**

---

**Pregunta 4.** Una empresa bancaria opera un mainframe con 15 años de antigüedad que ejecuta un sistema operativo sin soporte ni actualizaciones de seguridad. El CTO argumenta que "los mainframes son inherentemente seguros y nunca han sido comprometidos". ¿Qué característica específica de los mainframes hace que este argumento sea particularmente peligroso?

- A. El riesgo es solo de rendimiento y no de seguridad; los sistemas operativos obsoletos son más lentos pero igualmente seguros.
- B. El único riesgo real es la incompatibilidad con aplicaciones modernas, no vulnerabilidades de seguridad explotables externamente.
- C. Los mainframes más antiguos no pueden conectarse a redes modernas, por lo que el riesgo de ataque externo es técnicamente mínimo.
- D. La obsolescencia y vulnerabilidad de los mainframes, sumada a su rol crítico en la organización, hace que cualquier ataque exitoso tenga un impacto catastrófico.

> [!success]- Respuesta
> **D.**

---

**Pregunta 5.** Un gerente de IT argumenta que el análisis cualitativo de riesgos (con categorías 'alto', 'medio', 'bajo') es siempre inferior al cuantitativo porque "no tiene precisión matemática". Un consultor responde que ambos enfoques tienen su lugar. ¿Cuándo es más apropiado el análisis cualitativo y por qué?

- A. El análisis cualitativo permite una evaluación inicial rápida y eficiente cuando no hay datos numéricos sólidos, identificando riesgos sin requerir valores precisos.
- B. El análisis cualitativo es apropiado solo en organizaciones pequeñas que carecen de capacidad técnica para calcular valores numéricos.
- C. Nunca; el análisis cuantitativo siempre ofrece mejor información para la toma de decisiones estratégicas.
- D. El análisis cualitativo se usa exclusivamente para riesgos físicos, mientras que el cuantitativo aplica a riesgos digitales.

> [!success]- Respuesta
> **A.**

---

**Pregunta 6.** Una empresa detecta que un empleado sospechoso copió archivos confidenciales antes de renunciar. El equipo de IT comienza a analizar el disco duro del empleado directamente, sin hacer ninguna copia previa. ¿Cuál es el error fundamental cometido y qué consecuencia legal puede tener?

- A. No hay error: analizar el disco original es más eficiente y los resultados son igualmente válidos.
- B. El error es no haber notificado a RRHH antes del análisis; sin esa notificación la evidencia no es válida.
- C. El error es usar herramientas de IT estándar; debieron usar EnCase específicamente desde el inicio.
- D. El error es no realizar una adquisición forense (copia bit a bit) antes del análisis; trabajar sobre el original puede alterar la evidencia, hacerla inadmisible en un tribunal y destruir la cadena de custodia.

> [!success]- Respuesta
> **D.**

---

**Pregunta 7.** Un investigador forense usa la herramienta `dd` para copiar un disco sospechoso. Un colega argumenta que debería haber usado EnCase porque "`dd` es demasiado simple para una investigación seria". ¿Es técnicamente correcta esta objeción?

- A. No, pero `dd` debe combinarse obligatoriamente con Wireshark para que la adquisición sea legalmente válida.
- B. Sí, `dd` no puede realizar copias forenses válidas porque no calcula hashes de verificación automáticamente.
- C. No necesariamente; `dd` se utiliza comúnmente para la adquisición bit a bit de discos y dispositivos de almacenamiento, siendo útil para clonar discos y garantizar la integridad de los datos originales.
- D. Sí, `dd` solo funciona en sistemas Linux y no es aceptado como evidencia en tribunales internacionales.

> [!success]- Respuesta
> **C.**

---

**Pregunta 8 (Desarrollo).** Contexto: Un banco internacional decide extremar sus controles de seguridad perimetral e interna debido a un incremento en los ataques de phishing y malware. Como medida regulatoria, obligan a los empleados a cambiar contraseñas complejas de 18 caracteres cada 15 días, prohíben el uso de cualquier dispositivo externo y bloquean el acceso remoto, limitando la usabilidad diaria de las plataformas. Al cabo de unos meses, una auditoría interna detecta un preocupante incremento de anotaciones físicas con contraseñas pegadas debajo de los teclados y personal compartiendo credenciales de acceso para agilizar los procesos operativos.

1. Explicá cómo se manifiesta en este escenario la **tensión entre usabilidad y seguridad**, fundamentando teóricamente por qué controles excesivamente estrictos pueden terminar reduciendo la seguridad real de la organización.
2. Proponé una estrategia de mitigación basada en controles técnicos modernos (como la Autenticación Multifactorial - MFA) y un plan específico de comunicación o capacitación que resuelva la falla técnica sin alienar al usuario.

> [!success]- Respuesta (la que figura en el parcial)
> **1)** Los controles del banco ignoran el factor humano. Como superan la capacidad de memoria y de tolerancia de los usuarios, buscan atajos para poder trabajar: una clave de 18 caracteres que cambia cada 15 días termina anotada debajo del teclado. Bloquear dispositivos y accesos remotos lleva a compartir credenciales y así se pierde la trazabilidad.
>
> **2)** Implementar MFA resistente al phishing con SSO. Usar frases de paso largas sin vencimiento periódico, que se cambie solo si hay compromiso. Habilitar acceso remoto con VPN + MFA, y permitir dispositivos autorizados y cifrados en vez de prohibidos. Dar cuentas individuales con mínimo privilegio para eliminar las credenciales compartidas. En capacitación, explicar el porqué de los cambios, dar talleres breves para configurar el MFA y hacer simulacros de phishing con retroalimentación no punitiva.

---

**Pregunta 9.** Un auditor revisa la seguridad de un mainframe bancario y observa que todos los usuarios, desde operadores de nivel básico hasta administradores senior, tienen el mismo acceso irrestricto a todos los recursos del sistema. ¿Qué control de seguridad fundamental falta y qué principio de seguridad viola este diseño?

- A. Sin un Control de Acceso Basado en Roles (RBAC), los usuarios carecen de privilegios restringidos, permitiendo que cualquiera acceda y comprometa transacciones críticas del mainframe.
- B. Falta autenticación multifactor; todos los usuarios deberían tener MFA independientemente de sus roles o nivel de acceso.
- C. Falta aislamiento de datos mediante particionamiento; todos los datos deben estar en particiones separadas sin importar los permisos asignados a los usuarios.
- D. Falta cifrado de datos; sin cifrado cualquier usuario puede leer todos los datos aunque no pueda modificarlos.

> [!success]- Respuesta
> **A.** RBAC (viola el principio de mínimo privilegio).

---

**Pregunta 10.** Una empresa tiene un firewall configurado para bloquear todo el tráfico entrante no solicitado pero que permite libremente todo el tráfico saliente. Un analista detecta que malware instalado en un equipo interno está enviando datos confidenciales hacia servidores externos. ¿Qué limitación fundamental del diseño perimetral actual explica esta brecha?

- A. El problema es que se necesita un IDS en lugar de un firewall para detectar y bloquear este tipo de amenaza interna.
- B. La seguridad perimetral clásica controla el tráfico que entra y sale de la red, pero si solo se filtra el entrante, el tráfico saliente malicioso puede exfiltrar datos sin ser detectado.
- C. El firewall no puede detectar malware porque esa función es exclusiva del antivirus instalado en los equipos de usuario.
- D. El firewall está mal configurado; también debería bloquear el tráfico entrante solicitado para evitar respuestas maliciosas.

> [!success]- Respuesta
> **B.** Falta filtrado del tráfico **saliente** (egress) → exfiltración.

---

**Pregunta 11.** Una empresa implementa una política de contraseñas que exige 12 caracteres con mayúsculas, números y símbolos especiales. Los empleados la consideran imposible de recordar y comienzan a escribir sus contraseñas en papeles pegados en el monitor. ¿Qué tensión fundamental en seguridad ilustra este escenario y qué enseñanza deja para el diseño de políticas?

- A. No hay tensión real; las políticas prescriptivas de contraseñas siempre son más efectivas que las orientativas porque son obligatorias.
- B. La seguridad excesiva daña la usabilidad y, paradójicamente, reduce la protección real al empujar a los usuarios a buscar atajos peligrosos.
- C. La tensión entre el presupuesto de seguridad disponible y los controles técnicos necesarios para implementarlo.
- D. El problema es exclusivamente de comunicación: si los empleados entendieran la importancia de la política, la cumplirían sin dificultad.

> [!success]- Respuesta
> **B.** Tensión usabilidad/seguridad.

---

**Pregunta 12.** El CISO de una empresa elaboró políticas de seguridad técnicamente completas y detalladas. Un año después, una auditoría revela que la mayoría de los empleados no las sigue. Paradójicamente, los empleados afirman que "nunca les explicaron para qué sirven". ¿Cuál es el elemento clave de las políticas de seguridad efectivas que fue omitido?

- A. Sin comunicación efectiva, capacitación ni orientación, las personas no comprenden las políticas. La falta de concienciación hace fracasar incluso los mejores controles técnicos.
- B. El problema es que las políticas fueron elaboradas solo por el CISO sin consultar a CISOs de otras empresas del sector.
- C. Las políticas son inefectivas porque solo el departamento de IT puede comprender su alcance técnico real.
- D. Las políticas técnicas nunca son efectivamente seguidas; solo las políticas administrativas tienen adherencia real en las organizaciones.

> [!success]- Respuesta
> **A.** Faltó comunicación/concienciación.

---

**Pregunta 13.** Una startup de tecnología con recursos limitados decide posponer la implementación de gestión de riesgos y auditorías de seguridad hasta tener mayor presupuesto. El fundador argumenta que las startups pequeñas rara vez son objetivo de ataques. ¿Qué riesgos concretos y subestimados enfrenta al tomar esta decisión?

- A. Ninguno significativo, ya que los atacantes se concentran en grandes empresas con datos valiosos.
- B. Solo el riesgo de no obtener certificaciones ISO, relevante para contratos B2B pero sin impacto operativo directo.
- C. Sin gestión de riesgos ni auditorías, la empresa no detectará vulnerabilidades, lo que puede resultar en brechas de datos, incumplimiento normativo con sanciones legales.
- D. Principalmente riesgos reputacionales a largo plazo, pero los riesgos operativos inmediatos son mínimos.

> [!success]- Respuesta
> **C.**

---

**Pregunta 14.** Una empresa de e-commerce opera con un único servidor web. Durante el Black Friday, el servidor colapsa por el pico de tráfico y la tienda permanece inaccesible durante 4 horas. ¿Qué tipo de clúster habría sido más adecuado para prevenir este escenario específico y por qué?

- A. Un clúster de balance de carga, ya que distribuye las tareas y la carga de trabajo entre los nodos disponibles para evitar la congestión y mejorar el rendimiento ante picos de tráfico.
- B. Un sistema de backup diferencial, porque restaura el servidor más rápidamente que los otros tipos de backup disponibles.
- C. Un clúster de failover, porque detecta fallos de hardware y redirige el tráfico al nodo de respaldo automáticamente.
- D. Un clúster de alta disponibilidad, porque garantiza que el servidor nunca falle bajo ninguna circunstancia ni carga.

> [!success]- Respuesta
> **A.** Balance de carga (el problema era pico de tráfico, no un fallo de hardware).

---

**Pregunta 15.** Una empresa multinacional debe cumplir simultáneamente con GDPR (Europa), HIPAA (sector salud en EE.UU.) y regulaciones locales de varios países donde opera. ¿Cuál es el desafío más crítico específicamente identificado para grandes organizaciones en este escenario de compliance múltiple?

- A. El único desafío real es el costo de las certificaciones, que escala linealmente con la cantidad de países donde se opera.
- B. Las empresas con sede fuera de Europa están exentas de GDPR si no tienen oficinas físicas en la UE.
- C. La complejidad regulatoria exige cumplir simultáneamente normativas locales e internacionales; un desafío que se agrava al intentar comunicarlo con éxito en toda la organización.
- D. Las grandes empresas no tienen desafíos significativos en compliance porque siempre disponen de los recursos necesarios.

> [!success]- Respuesta
> **C.**

---

**Pregunta 16.** Una empresa del sector salud opera en Argentina y Europa y debe cumplir con la Ley 25.326 y el GDPR europeo. El área legal pide desarrollar una política específica que aborde el manejo de datos personales de pacientes. ¿Qué tipo de política de seguridad, según su clasificación, es la más adecuada y qué debe incluir obligatoriamente?

- A. Una política general que aborde seguridad sin mencionar regulaciones específicas, para evitar conflictos entre jurisdicciones.
- B. Una política específica que alinea la seguridad con el cumplimiento normativo, definiendo la clasificación, manejo, almacenamiento y distribución de datos sensibles según ambas regulaciones.
- C. Una política orientativa que recomiende buenas prácticas sin obligaciones formales, para mantener flexibilidad operativa.
- D. Una política técnica exclusiva centrada en firewalls y cifrado, ya que las regulaciones de privacidad solo aplican a controles técnicos.

> [!success]- Respuesta
> **B.** Política específica (por alcance) alineada al cumplimiento.

---

**Pregunta 17.** Una empresa analiza dos riesgos: un ataque de phishing con probabilidad del 10% anual e impacto significativo, y un desastre natural con probabilidad del 1% anual e impacto 10 veces mayor. El equipo debate cómo asignar el presupuesto de seguridad. ¿Cómo se priorizan correctamente estos riesgos según la metodología de gestión de riesgos?

- A. Priorizar siempre el desastre natural porque su impacto absoluto es mayor, independientemente de la probabilidad.
- B. El riesgo combina probabilidad e impacto: el phishing es alto (probabilidad moderada / impacto significativo), mientras que un desastre natural es medio (baja probabilidad / alto impacto).
- C. Ambos tienen idéntico nivel de riesgo, ya que al multiplicar probabilidad por impacto relativo el resultado se iguala matemáticamente.
- D. Priorizar siempre el phishing porque tiene mayor probabilidad, independientemente del impacto potencial.

> [!success]- Respuesta
> **B.** Riesgo = probabilidad × impacto (phishing = alto; desastre = medio).