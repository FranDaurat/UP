-- -
# Repaso Segundo Parcial — Seguridad en Sistemas Operativos (Módulos 8-12)

> [!tip] Cómo usar este archivo
> Formato **multiple choice** calcado al estilo de la cátedra: escenario aplicado + 4 opciones largas y técnicamente densas, con una opción que "suena del mundo real / lo hace la industria" (trampa) y la correcta que es el **fundamento técnico**. Elegí tu opción y desplegá **▸ Respuesta** para ver la letra correcta y por qué caen las demás.
> Al final hay un bloque de **Desarrollo** (como la pregunta abierta del primer parcial).

> [!warning] Sobre el "Módulo 7"
> En el proyecto **no hay PDF del Módulo 7**. Esto cubre 8 (Gestión de riesgos), 9 (Políticas), 10 (Perimetral + VPN), 11 (Redundancia) y 12 (Mainframe). Si el 7 existe y no fue subido, pasámelo y lo integro.

> [!note] Patrones que repite el profe (vistos en el 1er parcial)
> - *Compliance ≠ seguridad* (SOC 2 / HIPAA / ISO).
> - *Cifrado ≠ control de acceso* (TLS/VPN no frena fuerza bruta).
> - La opción trampa suele ser "lo hace la industria / ya se usa en producción" o "una sola cosa cubre todo".
> - Pide la respuesta **más precisa técnicamente**, no la que suena razonable.

## Índice
- [[#Módulo 8 — Gestión de riesgos y cumplimiento]]
- [[#Módulo 9 — Políticas de seguridad]]
- [[#Módulo 10 — Seguridad perimetral y VPN]]
- [[#Módulo 11 — Redundancia y recuperación]]
- [[#Módulo 12 — Mainframe]]
- [[#Desarrollo]]

---

# Módulo 8 — Gestión de riesgos y cumplimiento

**1.** Una fintech certifica ISO/IEC 27001 y su CISO sostiene ante el directorio que "con la certificación ya estamos seguros y no hace falta seguir invirtiendo en controles ni en pentesting". ¿Cuál es la evaluación más precisa de esta afirmación?

- A. Es correcta: ISO 27001 cubre automáticamente todos los controles técnicos, por lo que las pruebas de penetración pasan a ser redundantes.
- B. ISO 27001 certifica que existe un SGSI con un proceso de gestión de riesgos documentado, pero es una línea de base y una foto en el tiempo; no garantiza ausencia de vulnerabilidades y el riesgo evoluciona, por lo que los controles y las auditorías deben ser continuos.
- C. Es incorrecta solo porque ISO 27001 exige rotar el hardware de los servidores cada 12 meses, algo que la empresa no está haciendo.
- D. Es correcta siempre que la empresa opere on-premise; en la nube la certificación pierde validez y recién ahí harían falta más controles.

> [!success]- Respuesta
> **Correcta: B.** *Compliance ≠ seguridad.* La certificación acredita el proceso, no la inmunidad. A es la trampa "me certifiqué, estoy cubierto"; C y D inventan requisitos que la norma no tiene.

**2.** Un analista debe priorizar 40 riesgos y necesita asignar un valor económico a cada uno para justificar el presupuesto ante finanzas. ¿Qué enfoque de análisis de riesgos es el más adecuado y por qué?

- A. Análisis cualitativo, porque asigna valores monetarios precisos mediante categorías "alto/medio/bajo".
- B. Análisis cuantitativo, porque asigna valores numéricos a probabilidad e impacto (p. ej. VAR, costo esperado) y permite expresar el riesgo en términos monetarios comparables.
- C. Matriz de riesgos exclusivamente, porque reemplaza cualquier cálculo numérico.
- D. Análisis Delphi, porque sustituye los datos por la opinión de expertos y eso da cifras exactas en dólares.

> [!success]- Respuesta
> **Correcta: B.** Cuantitativo = números/plata (VAR, costo-beneficio). A describe el cualitativo y lo confunde con monetario; la matriz prioriza pero no monetiza; Delphi es para cuando faltan datos, no para cifras exactas.

**3.** Una empresa detecta una vulnerabilidad cuyo parcheo es carísimo y de bajo impacto, y decide contratar un seguro cibernético que cubra el eventual incidente. ¿Qué estrategia de tratamiento del riesgo aplicó?

- A. Mitigación, porque el seguro reduce la probabilidad de que ocurra el ataque.
- B. Evitación, porque al asegurarse elimina la vulnerabilidad.
- C. Transferencia, porque traslada la consecuencia económica del riesgo a un tercero.
- D. Aceptación, porque convive con el riesgo sin tomar ninguna acción.

> [!success]- Respuesta
> **Correcta: C.** El seguro **transfiere** el impacto a un tercero (no reduce la probabilidad ni elimina la falla). Mitigar = parchear; evitar = eliminar el activo/actividad; aceptar = no hacer nada.

**4.** Después de aplicar todos los controles aprobados, el responsable de seguridad informa que "aún queda un nivel de riesgo que la organización decide no tratar porque está dentro de lo aceptable". ¿Cómo se denomina técnicamente esa situación?

- A. Riesgo inherente, que desaparece una vez documentado en la matriz.
- B. Riesgo residual, que se compara contra la tolerancia (apetito) al riesgo y se acepta cuando queda por debajo del umbral definido.
- C. Falso positivo del análisis de riesgos, que debe descartarse.
- D. Riesgo cero, ya que todo control bien implementado elimina el riesgo por completo.

> [!success]- Respuesta
> **Correcta: B.** Lo que queda tras los controles es **riesgo residual**; se acepta si está bajo la tolerancia. El inherente es el de *antes* de los controles; "riesgo cero" no existe.

**5.** Un hospital que opera en EE.UU. procesa historias clínicas en la nube, cumple GDPR por tener pacientes europeos, y el CTO concluye: "cumpliendo GDPR ya cumplimos con todo lo aplicable". ¿Por qué este razonamiento es incorrecto?

- A. Porque GDPR protege datos personales (marco de la UE), pero los datos de salud en EE.UU. suelen caer bajo HIPAA y, si hay pagos, bajo PCI DSS; son marcos distintos con requisitos diferentes y cumplir uno no implica cumplir los demás.
- B. Porque GDPR es el estándar global que absorbe a HIPAA, PCI DSS y SOX, y por lo tanto el razonamiento es correcto.
- C. Porque GDPR prohíbe expresamente almacenar datos de salud en la nube bajo cualquier circunstancia.
- D. Porque basta con firmar un contrato (BAA) con el proveedor de nube para quedar cubierto frente a toda normativa, sin controles adicionales del cliente.

> [!success]- Respuesta
> **Correcta: A.** Distintos marcos, distintos requisitos (mismo patrón SOC 2 ≠ HIPAA del primer parcial). B es la trampa "una norma cubre todo"; D repite la trampa del parcial 1 sobre el contrato/BAA.

**6.** Una PyME nunca realizó auditorías de seguridad y argumenta que "con el firewall perimetral alcanza". ¿Cuál es la consecuencia técnica y de negocio más grave de esta decisión?

- A. Un leve aumento del consumo eléctrico y de la latencia de la red.
- B. Que queden vulnerabilidades y configuraciones incorrectas sin detectar, elevando el riesgo de violaciones de datos, incumplimiento normativo (multas) y pérdida de continuidad del negocio y de reputación.
- C. Ninguna consecuencia relevante mientras exista un antivirus en los endpoints.
- D. Únicamente la imposibilidad de certificar ISO 27001, sin impacto en la seguridad real.

> [!success]- Respuesta
> **Correcta: B.** Sin auditorías las debilidades pasan inadvertidas: brechas, sanciones, daño a continuidad y reputación. A y C minimizan; D reduce todo a un trámite.

**7.** Un SIEM que correlaciona logs y dispara una alerta al detectar un patrón de intrusión en curso es, según la clasificación de controles, un control de tipo:

- A. Preventivo, porque impide que el ataque se produzca.
- B. Detectivo, porque descubre y notifica que el incidente está ocurriendo o ya ocurrió.
- C. Correctivo, porque restaura el sistema a su estado previo.
- D. Disuasivo físico, porque desalienta el acceso al datacenter.

> [!success]- Respuesta
> **Correcta: B.** Detectivo = descubre/alerta (IDS, logs, SIEM, auditoría). Preventivo evita (firewall, MFA, cifrado); correctivo repara (backup, failover).

**8.** En un análisis de riesgos de una red empresarial, se estima que un ataque de phishing tiene probabilidad moderada e impacto alto, mientras que un desastre natural tiene impacto alto pero probabilidad muy baja. ¿Qué herramienta se usa para priorizarlos visualmente y qué resultado da?

- A. La matriz de riesgos: cruza probabilidad vs impacto; el phishing cae en "alto riesgo" y el desastre natural en "medio riesgo".
- B. La matriz de riesgos: ambos quedan en "bajo riesgo" porque uno es poco probable y el otro es mitigable.
- C. El análisis costo-beneficio, que reemplaza a la matriz y asigna la misma prioridad a ambos.
- D. El árbol de fallas (FTA), que determina que el desastre natural es siempre el riesgo más crítico.

> [!success]- Respuesta
> **Correcta: A.** La **matriz de riesgos** ubica cada riesgo según probabilidad × impacto; prob. moderada + impacto alto (phishing) pesa más que impacto alto con prob. muy baja (desastre). Es el ejemplo del propio módulo.

**9.** ¿Cuál de las siguientes afirmaciones describe correctamente la relación entre una auditoría de seguridad y una evaluación de cumplimiento?

- A. Son lo mismo: ambas verifican el cumplimiento de GDPR.
- B. La auditoría de seguridad evalúa la efectividad real de los controles y busca debilidades/vulnerabilidades; la evaluación de cumplimiento verifica la conformidad con leyes y estándares aplicables. Una empresa puede ser "compliant" y aun así ser vulnerable.
- C. La auditoría de seguridad solo aplica a la nube y la de cumplimiento solo a entornos on-premise.
- D. La evaluación de cumplimiento reemplaza a la auditoría de seguridad porque cubre todos sus objetivos.

> [!success]- Respuesta
> **Correcta: B.** Auditoría = seguridad real; cumplimiento = conformidad normativa. Son complementarias, no intercambiables. Refuerza el *compliance ≠ seguridad*.

**10.** Un equipo afirma que, una vez finalizada la evaluación de riesgos y aplicados los controles, el trabajo está terminado. ¿Por qué es técnicamente incorrecto?

- A. Porque la evaluación de riesgos es un proceso continuo: el entorno de amenazas, las tecnologías y las regulaciones cambian, por lo que debe revisarse y actualizarse periódicamente.
- B. Porque la norma obliga a reescribir la evaluación palabra por palabra cada mes.
- C. Porque los controles técnicos caducan legalmente a los 30 días de aplicados.
- D. Es correcto: una evaluación de riesgos bien hecha es definitiva y no requiere revisión.

> [!success]- Respuesta
> **Correcta: A.** Ciclo continuo: identificar → evaluar → controlar → monitorear → repetir. D es la trampa "set and forget".

## ★ Extra sugeridas

**E1.** ¿Qué representa el análisis costo-beneficio dentro de la gestión de riesgos?

- A. El costo de un ataque menos el valor del activo.
- B. La comparación entre el costo de implementar un control y el beneficio de la reducción de riesgo que aporta, para decidir la asignación de recursos.
- C. El precio de la certificación ISO 27001.
- D. La diferencia entre análisis cuantitativo y cualitativo.

> [!success]- Respuesta
> **Correcta: B.** Se evalúa si el control "vale la pena": costo de implementarlo vs reducción de riesgo lograda. Sustenta decisiones de presupuesto.

**E2.** Según el módulo, ¿qué distingue a NIST de GDPR en cuanto a su naturaleza?

- A. NIST es una ley de EE.UU. de cumplimiento obligatorio; GDPR es una recomendación opcional.
- B. NIST (Cybersecurity Framework) es un marco/guía ampliamente adoptado pero no es una ley en sí mismo; GDPR es un reglamento legal de la UE con requisitos obligatorios (DPIA, notificación de brechas, DPO).
- C. Ambos son leyes europeas equivalentes.
- D. NIST aplica solo a tarjetas de pago y GDPR solo a salud.

> [!success]- Respuesta
> **Correcta: B.** NIST = marco/guía (no ley); GDPR = reglamento con obligaciones legales. D confunde con PCI DSS/HIPAA.

---

# Módulo 9 — Políticas de seguridad

**1.** Una organización redacta una política de contraseñas técnicamente impecable, la publica en la intranet, pero nunca la comunica ni capacita al personal. Seis meses después, varios empleados siguen usando contraseñas débiles. ¿Cuál es la causa más probable y técnicamente precisa del fracaso?

- A. La política era demasiado corta y por eso nadie la respetó.
- B. Sin un programa de concienciación y capacitación, las políticas no se cumplen: el usuario es el eslabón más débil y la adhesión depende de que las personas comprendan las políticas y sepan aplicarlas.
- C. Las políticas de contraseñas requieren aprobación de un ente regulador externo antes de entrar en vigor.
- D. No hay fracaso real: con tener la política documentada y publicada, el cumplimiento queda garantizado.

> [!success]- Respuesta
> **Correcta: B.** La concienciación/capacitación es parte integral de la política; sin ella no hay adhesión. D es la trampa "con tenerla escrita alcanza".

**2.** En la jerarquía documental de seguridad, ¿cuál es la relación correcta entre política, estándar, procedimiento y guía?

- A. La política define el qué y el por qué (alto nivel, obligatoria); el estándar fija requisitos específicos y medibles (obligatorio); el procedimiento detalla el cómo paso a paso; la guía ofrece recomendaciones opcionales.
- B. Todos son sinónimos que cambian de nombre según la norma aplicable.
- C. El procedimiento es la declaración de alto nivel y la política es el paso a paso operativo.
- D. El estándar es siempre opcional y la guía siempre obligatoria.

> [!success]- Respuesta
> **Correcta: A.** Jerarquía: política → estándar → procedimiento → guía. C invierte política y procedimiento; D invierte obligatoriedad.

**3.** Una política establece textualmente: "se recomienda a los empleados habilitar la autenticación multifactor cuando sea posible". Según su propósito, ¿de qué tipo de política se trata?

- A. Prescriptiva, porque obliga a usar MFA en todos los casos.
- B. Orientativa, porque brinda una recomendación general sin imponer una regla obligatoria.
- C. Técnica, porque menciona un control técnico.
- D. Específica, porque aplica solo a un área de la organización.

> [!success]- Respuesta
> **Correcta: B.** "Se recomienda" = orientativa. Prescriptiva sería "todos los empleados deben usar MFA". (Técnica/específica son clasificaciones por enfoque y por alcance, no por propósito.)

**4.** Al elaborar una política que regula el tratamiento de datos personales de clientes, ¿cuál es una consideración legal clave que debe contemplar?

- A. Obtener el consentimiento informado antes de recopilar o procesar los datos, proteger los datos sensibles y definir procedimientos de notificación de brechas, en línea con normativas como GDPR o la Ley 25.326.
- B. Exigir que todos los empleados usen el mismo sistema operativo de escritorio.
- C. Prohibir el uso de cifrado para facilitar las auditorías internas.
- D. Eliminar automáticamente todos los registros de auditoría cada 30 días para "proteger la privacidad".

> [!success]- Respuesta
> **Correcta: A.** Consentimiento, protección de datos sensibles y notificación de brechas son consideraciones legales centrales. C y D degradan la seguridad; B no es una cuestión legal de datos.

**5.** Una consideración ética en la elaboración de políticas de seguridad establece que estas deben aplicarse sin discriminar por origen, raza, género o religión. ¿Qué principio ético refleja?

- A. Equidad y no discriminación.
- B. Transparencia y comunicación.
- C. Rendición de cuentas.
- D. Cumplimiento normativo.

> [!success]- Respuesta
> **Correcta: A.** La aplicación equitativa y sin discriminación es la consideración ética específica. Transparencia, rendición de cuentas y cumplimiento son otras consideraciones distintas.

**6.** Un proyecto de implementación de políticas fracasa porque el área de TI las percibe como una traba a su productividad y la dirección no se involucra. ¿Cuáles son las barreras predominantes?

- A. Exceso de presupuesto en ciberseguridad y políticas demasiado breves.
- B. Resistencia al cambio y una cultura que no prioriza la seguridad, agravadas por la falta de apoyo visible de la alta dirección.
- C. La ausencia total de regulaciones aplicables al sector.
- D. Que las políticas estén escritas en lenguaje demasiado simple.

> [!success]- Respuesta
> **Correcta: B.** Resistencia al cambio + cultura + falta de respaldo de la dirección son las barreras típicas; el apoyo de la dirección aporta autoridad, presupuesto y ejemplo.

**7.** ¿Por qué las políticas de seguridad deben someterse a un ciclo de revisión periódica (p. ej. anual o semestral)?

- A. Porque las tecnologías, las regulaciones y el panorama de amenazas cambian, y una política desactualizada deja de ser efectiva y puede derivar en incumplimiento.
- B. Porque la norma obliga a reescribirlas íntegramente cada mes, sin importar si cambió algo.
- C. Porque los empleados olvidan su contenido si el texto no se modifica.
- D. No es necesario: una política bien redactada es permanente y no requiere revisión.

> [!success]- Respuesta
> **Correcta: A.** Revisión continua que incorpora cambios legales, tecnológicos, de amenazas y feedback. D es la trampa "set and forget".

**8.** Se detecta una tensión entre una medida de seguridad muy estricta y la facilidad de uso: los empleados empiezan a evadirla (anotan contraseñas, usan herramientas no autorizadas). ¿Cómo describe el módulo este fenómeno y su manejo?

- A. Es la tensión entre usabilidad y seguridad; se maneja buscando un equilibrio que no obstaculice la productividad mientras se mantienen altos estándares (seguridad proporcional al riesgo, implementación gradual).
- B. Es un falso positivo del IDS y se corrige ajustando las firmas.
- C. Es un problema exclusivamente de hardware y se resuelve comprando más servidores.
- D. No es un problema real: la seguridad siempre debe primar aunque la gente evada los controles.

> [!success]- Respuesta
> **Correcta: A.** Controles demasiado rígidos empujan al "shadow IT"; el equilibrio usabilidad-seguridad es clave. D ignora que un control evadido no protege.

**9.** ¿Qué diferencia a un estándar de seguridad de una política de seguridad?

- A. El estándar es la declaración de alto nivel del por qué, y la política el requisito medible.
- B. El estándar es un conjunto de reglas/requisitos concretos y referenciales (p. ej. ISO 27001, NIST, PCI DSS), basados en mejores prácticas de la industria; la política establece el marco de decisión (qué proteger y por qué) de la organización.
- C. Son idénticos; "estándar" es el término que usa la UE y "política" el que usa EE.UU.
- D. El estándar solo aplica a hardware y la política solo a software.

> [!success]- Respuesta
> **Correcta: B.** Estándar = requisito concreto/comparable con la industria; política = marco de decisión. A invierte los conceptos.

**10.** Una buena política debe especificar, además de objetivos, alcance y responsabilidades, un elemento que muchas organizaciones omiten y que debilita su cumplimiento. ¿Cuál es?

- A. El color corporativo del documento.
- B. Las consecuencias del incumplimiento, de forma clara y consistente.
- C. El fabricante del firewall perimetral.
- D. La marca del antivirus instalado en los endpoints.

> [!success]- Respuesta
> **Correcta: B.** Sin consecuencias definidas la política pierde fuerza y la rendición de cuentas se vuelve arbitraria. Es un consejo explícito del módulo.

## ★ Extra sugeridas

**E1.** ¿Qué es una política de uso aceptable (AUP)?

- A. Un documento que define qué uso pueden darle los usuarios a los recursos de la organización (equipos, red, correo, internet) y qué está prohibido.
- B. Un estándar que fija el algoritmo de cifrado del disco.
- C. Un procedimiento de restauración de backups.
- D. Una guía opcional sobre ergonomía del puesto de trabajo.

> [!success]- Respuesta
> **Correcta: A.** La AUP fija expectativas de uso de los recursos y protege legal y operativamente a la organización.

**E2.** ¿Por qué el apoyo de la alta dirección es determinante para una política de seguridad?

- A. Porque la dirección redacta personalmente cada procedimiento técnico.
- B. Porque aporta autoridad, presupuesto y ejemplo; sin respaldo visible la política carece de peso y la cultura de seguridad no permea (funciona de arriba hacia abajo).
- C. Porque es un requisito legal de GDPR tener la firma del CEO en cada política.
- D. Porque reemplaza la necesidad de capacitar a los empleados.

> [!success]- Respuesta
> **Correcta: B.** El cambio cultural de seguridad es top-down: sin la dirección, no hay autoridad ni recursos.

---

# Módulo 10 — Seguridad perimetral y VPN

**1.** Un administrador publica un panel de administración directamente en internet y lo "asegura" exigiendo que los usuarios se conecten por VPN cifrada; sin embargo, la VPN usa solo usuario y contraseña simple. Un pentester compromete el acceso. ¿Cuál es el vector de ataque más crítico que el cifrado de la VPN NO mitiga?

- A. Exponer el acceso con autenticación débil habilita ataques de fuerza bruta y credential stuffing contra el mecanismo de autenticación de la VPN, que el cifrado del túnel no previene.
- B. Ninguno: una vez que el tráfico va cifrado por la VPN, se eliminan todos los vectores de ataque relevantes.
- C. El único riesgo es que el certificado de la VPN sea autofirmado; con un certificado de CA válida el acceso queda totalmente protegido.
- D. El problema es exclusivamente de rendimiento: el túnel agrega latencia que vuelve inutilizable el panel.

> [!success]- Respuesta
> **Correcta: A.** El cifrado protege el canal, no la autenticación: falta MFA y restringir el acceso (idealmente que el panel no esté expuesto). Mismo patrón que RDP/TLS del primer parcial. B y C son las trampas "cifrado = seguro".

**2.** Un equipo de seguridad instala un IDS en el borde de la red y el responsable informa que "ya está, el IDS frena los ataques entrantes". ¿Por qué esta evaluación es incorrecta desde el punto de vista técnico?

- A. Porque un IDS es activo y bloquea el tráfico, pero requiere un proxy para operar.
- B. Porque un IDS es pasivo: monitorea, detecta y genera alertas sobre actividad sospechosa, pero no bloquea el tráfico; para cortar o prevenir automáticamente un ataque se necesita un IPS.
- C. Porque el IDS reemplaza simultáneamente al firewall y al IPS, por lo que el resto de controles quedan obsoletos.
- D. Porque los IDS solo funcionan en redes domésticas y no en entornos corporativos.

> [!success]- Respuesta
> **Correcta: B.** IDS = detecta y alerta (pasivo); IPS = detecta y bloquea (activo). El IDS aporta visibilidad, no contención. A invierte el concepto.

**3.** ¿Cuál es la diferencia técnica entre un firewall de filtrado de paquetes (packet filtering) y uno de estado (stateful)?

- A. El stateful solo examina encabezados de forma estática; el de filtrado de paquetes rastrea el estado de las conexiones.
- B. El de filtrado de paquetes examina los encabezados (IP origen/destino, puerto, protocolo) y aplica reglas estáticas sin contexto; el stateful mantiene una tabla del estado de las conexiones y decide según el contexto de la comunicación, lo que lo hace más efectivo.
- C. Son el mismo producto con distinto nombre comercial; no hay diferencia funcional.
- D. El stateful no puede bloquear tráfico, solo registrarlo para auditoría.

> [!success]- Respuesta
> **Correcta: B.** El stateful entiende el contexto de la conexión (p. ej. permite respuestas de una sesión ya iniciada). A invierte las definiciones.

**4.** En un SOC, un analista recibe más de 500 alertas diarias de un IPS, de las cuales la enorme mayoría son inofensivas, y comienza a ignorarlas. ¿Qué riesgo de seguridad introduce esta situación y cómo se denomina?

- A. Introduce únicamente falsos negativos, que se corrigen agregando más firmas.
- B. Introduce fatiga de alertas producto del exceso de falsos positivos: el analista termina ignorando también las alertas reales; se mitiga afinando reglas/umbrales y correlacionando en un SIEM.
- C. No introduce ningún riesgo: un alto volumen de alertas indica que el IPS está correctamente configurado.
- D. Introduce una mejora del rendimiento de la red al descartar tráfico legítimo.

> [!success]- Respuesta
> **Correcta: B.** El exceso de **falsos positivos** genera fatiga de alertas. El peligro simétrico es el **falso negativo** (ataque no detectado). C es la trampa.

**5.** Una empresa migra a trabajo remoto y necesita que sus empleados accedan a recursos internos desde internet de forma segura, además de conectar la casa central con una sucursal. ¿Cuál es el uso correcto de una VPN en seguridad perimetral?

- A. La VPN reemplaza al firewall y al IDS/IPS, por lo que deja de ser necesario el resto del perímetro.
- B. La VPN crea un túnel cifrado que asegura la comunicación y extiende el perímetro seguro: en modo acceso remoto conecta un dispositivo a la red corporativa, y en modo site-to-site une dos redes (central y sucursal).
- C. La VPN acelera la navegación eliminando el cifrado del tráfico interno.
- D. La VPN se usa principalmente para almacenar los logs de auditoría de la organización.

> [!success]- Respuesta
> **Correcta: B.** Túnel seguro sobre red pública: cifra, autentica y extiende el perímetro (acceso remoto + site-to-site). No reemplaza otras capas (A) ni elimina el cifrado (C).

**6.** Una organización divide su red en subredes aisladas separadas por reglas de firewall. Ante una brecha en un servidor web, ¿qué beneficio de seguridad aporta principalmente esta segmentación?

- A. Incrementa el ancho de banda total disponible en la red.
- B. Limita el movimiento lateral del atacante, conteniendo el incidente dentro del segmento comprometido y evitando que alcance libremente el resto de la red.
- C. Elimina la necesidad de firewalls y de IDS/IPS.
- D. Reduce el consumo eléctrico de los switches del datacenter.

> [!success]- Respuesta
> **Correcta: B.** La segmentación frena el movimiento lateral: si cae un segmento, el atacante no se mueve libre al resto. Pilar de defensa en profundidad.

**7.** ¿Qué distingue a un IDS/IPS basado en firmas (reglas) de uno basado en anomalías?

- A. El basado en firmas detecta desviaciones del comportamiento normal; el de anomalías usa patrones predefinidos de ataques conocidos.
- B. El basado en firmas usa reglas/patrones predefinidos de ataques conocidos (bueno contra amenazas conocidas); el basado en anomalías usa algoritmos para detectar desviaciones del comportamiento normal (puede detectar amenazas nuevas, con más falsos positivos).
- C. Ambos son idénticos y se diferencian solo en el fabricante.
- D. El basado en anomalías solo funciona si se desactiva el cifrado de la red.

> [!success]- Respuesta
> **Correcta: B.** Firmas = conocido y preciso; anomalías = puede pescar lo nuevo pero con más falsos positivos. A invierte las definiciones.

**8.** Respecto al servidor VPN con WireGuard visto en el material, ¿cuál de las siguientes afirmaciones es técnicamente correcta?

- A. WireGuard usa una única clave simétrica compartida por todos los clientes y no requiere configurar peers.
- B. WireGuard usa claves asimétricas (par pública/privada generado con `wg genkey | wg pubkey`), corre sobre Linux con clientes Linux y Windows, requiere habilitar el ruteo (`net.ipv4.ip_forward=1`) y se define en `wg0.conf` con secciones `[Interface]` y `[Peer]` (con `AllowedIPs`); se levanta con `wg-quick up wg0`.
- C. WireGuard no necesita reglas de `iptables` ni direcciones de peers porque cifra a nivel de aplicación.
- D. WireGuard solo admite clientes Linux y nunca Windows.

> [!success]- Respuesta
> **Correcta: B.** Claves asimétricas, `ip_forward=1`, `[Interface]`/`[Peer]` con `AllowedIPs`, `wg-quick up/down`. A y D contradicen el material.

**9.** Con el auge del trabajo remoto y la adopción de la nube, ¿cómo cambia el concepto de perímetro de seguridad y qué enfoque se adopta?

- A. El perímetro desaparece por completo y ya no hace falta ninguna medida de seguridad.
- B. El perímetro tradicional se difumina (más dispositivos y datos fuera de la red interna, entornos multicloud/híbridos), lo que amplía la superficie de ataque y empuja hacia enfoques como Zero Trust ("nunca confiar, siempre verificar") y monitoreo continuo.
- C. El perímetro se vuelve más fácil de defender porque hay menos conexiones externas.
- D. El perímetro se reduce a instalar un antivirus por equipo, sin otras medidas.

> [!success]- Respuesta
> **Correcta: B.** El perímetro se difumina y aumenta la superficie; se adopta Zero Trust y monitoreo continuo. A, C y D subestiman el problema.

**10.** Una empresa necesita publicar su servidor web y de correo hacia internet sin que un compromiso de esos servicios ponga en riesgo directo la red interna. ¿Qué diseño perimetral es el más adecuado?

- A. Colocar los servidores públicos en la red interna y abrir los puertos necesarios en el firewall.
- B. Ubicar los servicios accesibles desde afuera en una DMZ (zona desmilitarizada), una subred intermedia entre internet y la red interna, de modo que un compromiso quede contenido allí y no alcance directamente la red interna.
- C. Exponer los servidores directamente a internet sin firewall, confiando en el cifrado TLS.
- D. Mover toda la red interna a una única VLAN plana para simplificar la administración.

> [!success]- Respuesta
> **Correcta: B.** La **DMZ** contiene el compromiso de los servicios expuestos. A y C aumentan el riesgo; D elimina la segmentación.

## ★ Extra sugeridas

**E1.** ¿Qué diferencia a una VPN de acceso remoto de una VPN site-to-site?

- A. La de acceso remoto conecta dos redes completas; la site-to-site conecta un único dispositivo.
- B. La de acceso remoto conecta un dispositivo individual (empleado) a la red corporativa; la site-to-site conecta dos redes completas de forma permanente (p. ej. central y sucursal).
- C. Son lo mismo; cambia solo el protocolo de cifrado.
- D. La site-to-site no usa cifrado.

> [!success]- Respuesta
> **Correcta: B.** Acceso remoto = un dispositivo → red; site-to-site = red ↔ red. A invierte los conceptos.

**E2.** Dentro de las herramientas de monitoreo y respuesta perimetral, ¿qué aporta un SOAR frente a un SIEM?

- A. El SOAR solo almacena logs y el SIEM los automatiza.
- B. El SIEM recopila y correlaciona logs para dar visibilidad; el SOAR agrega orquestación y automatización de la respuesta a incidentes, acelerando y estandarizando las acciones.
- C. Son idénticos; "SOAR" es el nombre europeo de "SIEM".
- D. El SOAR reemplaza al firewall perimetral.

> [!success]- Respuesta
> **Correcta: B.** SIEM = correlación/visibilidad; SOAR = automatiza y orquesta la respuesta. (XDR unifica detección y respuesta en una plataforma.)

---

# Módulo 11 — Redundancia y recuperación

**1.** Una empresa configura RAID 1 (espejo) en su servidor de base de datos y el administrador sostiene que "con el espejo de discos no hacen falta backups". Tras un ataque de ransomware, pierde todos los datos. ¿Cuál es el error técnico de su razonamiento?

- A. RAID 1 es más lento que un backup, por eso no sirve como respaldo.
- B. RAID aporta redundancia ante fallo de hardware, pero replica instantáneamente el borrado accidental, el ransomware y la corrupción lógica en ambos discos; no es un backup, que es una copia independiente en el tiempo (idealmente offsite, regla 3-2-1).
- C. RAID 1 solo funciona con SSD; con discos mecánicos no protege nada.
- D. No hay error: un espejo RAID equivale a una copia de seguridad offsite.

> [!success]- Respuesta
> **Correcta: B.** **RAID ≠ backup.** El ransomware se copia al espejo al instante. Falta una copia independiente/offsite. D es la trampa.

**2.** Un servidor crítico usa replicación activa-pasiva. Durante un pico de carga, el rendimiento no mejora pese a tener dos nodos. ¿Cuál es la explicación técnica correcta?

- A. En activa-pasiva el nodo pasivo permanece en standby y solo toma el control si el activo falla; no atiende solicitudes, por lo que aporta disponibilidad, no rendimiento. Para repartir carga se necesita activa-activa o un clúster de balance de carga.
- B. En activa-pasiva ambos nodos atienden carga simultáneamente, así que el problema debe ser de red.
- C. La replicación activa-pasiva apaga periódicamente el nodo principal, degradando el rendimiento.
- D. Activa-pasiva solo funciona con bases de datos pequeñas, por eso se satura.

> [!success]- Respuesta
> **Correcta: A.** Activa-pasiva = disponibilidad, no rendimiento. Para repartir carga: activa-activa o balance de carga. B describe activa-activa.

**3.** Tras un incendio que destruye el datacenter, una empresa descubre que sus únicas copias de seguridad estaban almacenadas en el mismo edificio. ¿Qué principio de continuidad se violó?

- A. El principio de mínimo privilegio.
- B. La necesidad de copias offsite (fuera del sitio), propia de la recuperación ante desastres (DR) y de la regla 3-2-1, ya que un backup en el mismo sitio no sobrevive a un desastre físico de ese sitio.
- C. La segmentación de red.
- D. Ninguno: los backups locales son suficientes para un plan de DR.

> [!success]- Respuesta
> **Correcta: B.** DR exige copias **offsite**. Un backup co-ubicado con el sistema muere con el sitio. D es la trampa.

**4.** ¿Qué distingue a un clúster de alta disponibilidad (HA) de uno de balance de carga?

- A. El HA minimiza el downtime redirigiendo tareas a otros nodos ante un fallo (prioriza disponibilidad); el de balance de carga distribuye la carga de trabajo entre nodos para evitar la congestión y mejorar el rendimiento.
- B. Son el mismo tipo de clúster con distinto nombre.
- C. El HA prioriza el rendimiento y el balance de carga la disponibilidad.
- D. El balance de carga funciona con un único nodo.

> [!success]- Respuesta
> **Correcta: A.** HA = continuidad ante fallos; balance de carga = reparto de trabajo/rendimiento. C invierte los objetivos.

**5.** ¿Cuál es la diferencia entre un backup incremental y uno diferencial?

- A. El incremental copia desde la última copia (completa o incremental), generando backups chicos pero cuya restauración requiere la completa más toda la cadena; el diferencial copia desde la última completa, generando backups que crecen pero cuya restauración solo requiere la completa más el último diferencial.
- B. El incremental copia siempre todo el sistema; el diferencial solo la primera vez.
- C. Son idénticos en tiempo de backup y espacio ocupado.
- D. El diferencial no permite restaurar el sistema operativo.

> [!success]- Respuesta
> **Correcta: A.** Incremental = chico pero cadena larga para restaurar; diferencial = crece pero restauras con completa + último diferencial.

**6.** ¿Por qué un snapshot de una VM no reemplaza a un backup?

- A. Porque el snapshot tarda más que un backup completo en generarse.
- B. Porque el snapshot suele depender del mismo almacenamiento/datastore de la VM original: si este se corrompe o se pierde, el snapshot también se pierde; el backup es una copia independiente (idealmente offsite) que sobrevive al fallo del origen.
- C. Porque el snapshot solo guarda la configuración de la VM, nunca los datos.
- D. Porque no existe diferencia: snapshot y backup son equivalentes.

> [!success]- Respuesta
> **Correcta: B.** El snapshot es ideal para revertir cambios, pero depende del origen; el backup es independiente y resiste la pérdida del datastore.

**7.** Un plan de continuidad define que el sistema puede estar caído como máximo 2 horas y que se tolera perder a lo sumo 15 minutos de datos. ¿A qué métricas corresponden, respectivamente, esos dos valores?

- A. Al tipo de RAID (2 horas) y a la cantidad de nodos del clúster (15 minutos).
- B. RTO = 2 horas (tiempo máximo de inactividad tolerable) y RPO = 15 minutos (cantidad de datos que se pueden perder, medida en tiempo hacia atrás, que define la frecuencia de backups).
- C. A la velocidad de la red (2 horas) y a la del disco (15 minutos).
- D. Al costo del hardware (2 horas) y al del software de backup (15 minutos).

> [!success]- Respuesta
> **Correcta: B.** RTO = objetivo de tiempo de recuperación; RPO = objetivo de punto de recuperación (define cada cuánto respaldar).

**8.** ¿Qué enfoque de recuperación se centra en restaurar el sistema tras un evento catastrófico (incendio, inundación, corte masivo) y cuál tras una falla puntual de hardware/software?

- A. Recuperación de desastres (DR) para el evento catastrófico y recuperación ante fallas (FR) para el fallo puntual.
- B. Recuperación ante fallas (FR) para el evento catastrófico y recuperación de desastres (DR) para el fallo puntual.
- C. Ambos casos usan exclusivamente recuperación basada en archivos.
- D. Ninguno; en los dos casos alcanza con un snapshot local.

> [!success]- Respuesta
> **Correcta: A.** DR = catástrofe de sitio (planes de contingencia, copias offsite); FR = fallo puntual (tolerancia a fallos, replicación, HA).

**9.** Diferencia entre recuperación basada en imágenes y basada en archivos:

- A. La basada en imágenes restaura archivos individuales; la basada en archivos restaura el sistema completo.
- B. La basada en imágenes usa una imagen completa del sistema para restaurarlo entero (ideal para recuperación total y rápida); la basada en archivos restaura archivos individuales perdidos o dañados (más granular).
- C. Son lo mismo; cambia solo el formato del archivo.
- D. La basada en imágenes solo funciona en Windows.

> [!success]- Respuesta
> **Correcta: B.** Imagen = restauración total; archivos = granular/puntual. A invierte las definiciones.

**10.** Un administrador tiene backups completos diarios pero nunca probó una restauración. Durante un incidente real, descubre que los backups estaban corruptos. ¿Qué buena práctica se omitió?

- A. Aumentar la frecuencia de los backups a cada hora.
- B. Probar periódicamente la restauración: un backup solo sirve si se puede restaurar; sin pruebas de recuperación, la corrupción o mala configuración recién se descubre en la emergencia.
- C. Cifrar los backups con AES-256.
- D. Guardar los backups en el mismo servidor para acceder más rápido.

> [!success]- Respuesta
> **Correcta: B.** La **prueba de restauración** es parte del plan, no opcional. D es directamente una mala práctica (co-ubicar backup y sistema).

## ★ Extra sugeridas

**E1.** ¿Qué establece la regla 3-2-1 de backups?

- A. 3 backups diarios, 2 semanales y 1 mensual.
- B. 3 copias de los datos, en 2 tipos de medios distintos, con 1 copia fuera del sitio (offsite).
- C. 3 nodos de clúster, 2 firewalls y 1 IDS.
- D. 3 contraseñas, 2 factores y 1 administrador.

> [!success]- Respuesta
> **Correcta: B.** 3 copias / 2 medios / 1 offsite: minimiza el riesgo de perder todo ante un único fallo o desastre físico.

**E2.** ¿Qué diferencia a la alta disponibilidad (HA) de la recuperación ante desastres (DR)?

- A. HA cubre catástrofes de sitio y DR fallos locales puntuales.
- B. HA minimiza el downtime ante fallos puntuales dentro del mismo sitio (redundancia local, failover); DR restaura la operación tras un evento catastrófico que afecta todo el sitio, con copias offsite o un sitio alternativo.
- C. Son sinónimos.
- D. HA solo aplica a bases de datos y DR solo a servidores web.

> [!success]- Respuesta
> **Correcta: B.** HA = continuidad inmediata ante fallos locales; DR = recuperación ante el peor caso (sitio).

---

# Módulo 12 — Mainframe

**1.** El gerente de sistemas de un banco afirma que su mainframe "es inherentemente más seguro que una arquitectura distribuida porque todo está centralizado y aislado del resto de la red". ¿Cuál es la evaluación técnicamente correcta de esta afirmación?

- A. Es correcta sin matices: la centralización elimina todos los vectores de ataque posibles.
- B. La centralización simplifica el control y la auditoría, pero crea un único punto cuyo compromiso da acceso a todos los recursos, su disponibilidad crítica lo vuelve blanco de ataques de denegación de servicio, y el aislamiento reduce la visibilidad, dificultando la detección de ataques.
- C. Es correcta porque el aislamiento vuelve al mainframe inaccesible para cualquier atacante remoto.
- D. Es correcta porque, al ser un sistema antiguo y propietario, nadie conoce cómo atacarlo.

> [!success]- Respuesta
> **Correcta: B.** Centralización = fortaleza de control pero único punto de falla + blanco de DoS + menor visibilidad. C y D son trampas (seguridad por oscuridad / "aislado = inatacable").

**2.** Entre las características propias de los mainframes, ¿cuál incrementa su exposición a vulnerabilidades desde el punto de vista del software?

- A. Su interfaz gráfica moderna y actualizada constantemente.
- B. Su edad: suelen ejecutar sistemas operativos y software obsoletos, con vulnerabilidades conocidas que pueden no tener parche disponible o aplicado.
- C. Que usan exclusivamente cifrado asimétrico, incompatible con los datos modernos.
- D. Que carecen por completo de mecanismos de control de acceso.

> [!success]- Respuesta
> **Correcta: B.** La "edad" (software obsoleto) es una característica de riesgo explícita. Los mainframes sí usan RBAC/MFA y cifrado fuerte, descartando C y D.

**3.** En un mainframe se asignan privilegios agrupando a los usuarios según su función (administrador, operador, consulta), y los permisos se otorgan a esos grupos en lugar de usuario por usuario. ¿Qué modelo de control de acceso describe?

- A. DAC (control de acceso discrecional).
- B. MAC (control de acceso obligatorio).
- C. RBAC (control de acceso basado en roles).
- D. ABAC (control de acceso basado en atributos).

> [!success]- Respuesta
> **Correcta: C.** RBAC asigna permisos a **roles** y roles a usuarios, simplificando la administración. DAC = decide el dueño; MAC = política impuesta por etiquetas; ABAC = por atributos/contexto.

**4.** Los mainframes suelen estar aislados del resto de la infraestructura de TI. El módulo señala que esto genera un desafío de seguridad concreto. ¿Cuál y cómo se mitiga?

- A. La "falta de visibilidad": al no integrarse al monitoreo general, cuesta detectar ataques y responder; se mitiga integrando sus registros a un SIEM para una visión global de la seguridad.
- B. El exceso de interfaces gráficas de administración; se mitiga quitando monitores.
- C. La generación de muy pocos registros de auditoría; se mitiga desactivando el logging.
- D. No es un problema: el aislamiento garantiza que no haya ataques.

> [!success]- Respuesta
> **Correcta: A.** El aislamiento dificulta detectar/responder; integrar logs al SIEM da visibilidad. Los mainframes generan registros **muy** detallados (descarta C).

**5.** La virtualización de mainframes aporta eficiencia y escalabilidad, pero introduce nuevos riesgos. ¿Cuál es el riesgo de seguridad más crítico en este contexto?

- A. Que las máquinas virtuales consuman demasiada memoria del host.
- B. El fallo de aislamiento / VM escape: que una VM comprometida rompa la segregación y afecte al hipervisor o a otras VM, comprometiendo toda la infraestructura alojada, no solo una máquina.
- C. Que no se puedan tomar snapshots de las máquinas virtuales.
- D. Que la virtualización obligue a desactivar el cifrado de datos.

> [!success]- Respuesta
> **Correcta: B.** Romper el aislamiento entre VM (y atacar el hipervisor) es el riesgo estrella; por eso se exige segregación, integridad de imágenes/snapshots, parches del hipervisor y monitoreo. Mismo patrón que el riesgo del hipervisor en virtualización.

**6.** ¿Por qué a los sistemas mainframe les aplican normativas como PCI-DSS, HIPAA o GDPR, y cómo se relaciona esto con sus capacidades integradas?

- A. Porque son equipos de uso doméstico sujetos a garantías del consumidor.
- B. Porque concentran datos críticos y regulados (financieros, de salud, personales); su auditoría detallada y su cifrado integrados sirven, en parte, justamente para cumplir esas normativas, que exigen registros, control de acceso y protección de datos.
- C. Porque esas normativas solo aplican a hardware fabricado antes del año 2000.
- D. No les aplican: los mainframes están exentos de toda regulación por ser propietarios.

> [!success]- Respuesta
> **Correcta: B.** Manejan los datos que esas normas protegen; la auditoría y el cifrado integrados apuntan a cumplirlas. C y D son falsas.

**7.** ¿Cuál es el mecanismo que utilizan los mainframes para separar conjuntos de datos y entornos, de modo que solo usuarios autorizados accedan a cada área y se prevengan fugas de información?

- A. La defragmentación periódica del almacenamiento.
- B. El particionamiento lógico y físico (aislamiento de datos), que segrega áreas de datos dentro del mismo sistema.
- C. La compresión con pérdida de los datos sensibles.
- D. El uso exclusivo de contraseñas sin ningún otro control.

> [!success]- Respuesta
> **Correcta: B.** El **particionamiento lógico/físico** aísla datos y limita el alcance de un compromiso. Es una característica de seguridad integrada del mainframe.

**8.** Para asegurar el acceso remoto a un mainframe que procesa datos financieros, ¿qué conjunto de medidas es el más alineado con el módulo?

- A. Exponer el mainframe directamente a internet confiando solo en su antigüedad como protección.
- B. Autenticación fuerte (MFA), capas adicionales como VPN/conexiones cifradas, acceso basado en políticas (quién, desde dónde, con qué nivel), segmentación de red, firewalls/filtrado de tráfico, monitoreo activo y parches al día.
- C. Deshabilitar la auditoría para mejorar el rendimiento del acceso remoto.
- D. Permitir acceso con usuario y contraseña simples desde cualquier ubicación, sin MFA ni cifrado.

> [!success]- Respuesta
> **Correcta: B.** MFA + VPN/cifrado + políticas + segmentación + firewalls + monitoreo + parches. A, C y D son justamente lo que no hay que hacer.

**9.** En cuanto a la gestión de claves criptográficas en un mainframe, ¿qué enfoques describe el módulo?

- A. Únicamente gestión manual por parte de cada usuario final.
- B. Gestión centralizada (un servidor de claves), distribuida (una red de servidores de claves) o híbrida, con rotación periódica y protección de las claves contra acceso no autorizado, modificación y destrucción.
- C. No se gestionan claves porque el mainframe no usa cifrado.
- D. Las claves se publican en los registros de auditoría para facilitar su recuperación.

> [!success]- Respuesta
> **Correcta: B.** Centralizada / distribuida / híbrida, con rotación y protección del ciclo de vida de las claves. D sería un disparate de seguridad.

**10.** ¿Por qué la auditoría y el registro detallado de eventos son especialmente importantes en entornos mainframe?

- A. Porque reemplazan la necesidad de cifrado y de control de acceso.
- B. Porque generan registros contextuales (identidad del usuario, hora, terminal, recurso, resultado) que permiten detectar amenazas e intrusiones, cumplir normativas (PCI-DSS, HIPAA, GDPR) e investigar incidentes posteriores; se potencian integrándolos a un SIEM.
- C. Porque solo sirven para medir el rendimiento de la CPU del mainframe.
- D. Porque la normativa prohíbe cualquier otro control de seguridad en mainframe.

> [!success]- Respuesta
> **Correcta: B.** La auditoría detallada habilita detección, cumplimiento e investigación forense; el SIEM le da visibilidad global. A y D son falsas.

## ★ Extra sugeridas

**E1.** ¿Qué modelos de seguridad en mainframe describe el módulo?

- A. Solo el modelo de referencia.
- B. De referencia (seguridad física, lógica y de aplicaciones), a capas (múltiples capas: control de acceso, cifrado, autenticación, detección de intrusiones), basado en riesgos (se centra en los riesgos más probables y graves) y por capas (combinación de los anteriores).
- C. Únicamente el modelo basado en riesgos.
- D. Un único modelo propietario sin variantes.

> [!success]- Respuesta
> **Correcta: B.** Referencia + a capas + basado en riesgos + combinado (por capas). Son los cuatro que detalla el módulo.

**E2.** En la virtualización de mainframes, ¿por qué es importante verificar la integridad de las imágenes y snapshots de las VM?

- A. Para liberar espacio en disco.
- B. Para asegurar que no hayan sido comprometidos o manipulados maliciosamente antes de desplegarlos, evitando introducir una VM alterada en el entorno.
- C. Porque las imágenes caducan legalmente cada 30 días.
- D. Porque sin ello no se puede habilitar el cifrado del host.

> [!success]- Respuesta
> **Correcta: B.** Una imagen/snapshot manipulado reintroduce el compromiso; verificar integridad es parte de asegurar el entorno virtualizado.

---

# Desarrollo

> [!tip] Sobre esta sección
> Preguntas abiertas de desarrollo, como la del primer parcial (donde pedía análisis con fundamento técnico y ejemplos). Desplegá para ver una respuesta modelo.

**D1.** Explique por qué, en gestión de riesgos, el **cumplimiento normativo (compliance)** no equivale a estar **seguro**. Mencione al menos un marco (ISO 27001, NIST o GDPR) y distinga una **auditoría de seguridad** de una **evaluación de cumplimiento**.

> [!success]- Respuesta
> El cumplimiento certifica adhesión a reglas en un momento dado: **ISO 27001** acredita que existe un **SGSI** con gestión de riesgos documentada; **GDPR** exige protección de datos personales (DPIA, notificación de brechas, DPO); **NIST** es un marco/guía adoptado voluntariamente. Pero el compliance es una **línea de base** y una foto en el tiempo: no garantiza ausencia de vulnerabilidades, y el entorno de amenazas evoluciona. La **seguridad real** depende de la **ejecución continua** de controles. Por eso se distinguen: la **auditoría de seguridad** evalúa la **efectividad real** de los controles y busca debilidades; la **evaluación de cumplimiento** verifica la **conformidad legal/normativa**. Una empresa puede ser compliant y aun así ser vulnerable, y a la inversa.

**D2.** En una arquitectura de continuidad del negocio, distinga **alta disponibilidad (HA)** de **recuperación ante desastres (DR)**, explique por qué **RAID no es un backup**, y diferencie la replicación **activa-pasiva** de la **activa-activa**. Incluya los conceptos de **failover**, **copia offsite**, **RTO** y **RPO**.

> [!success]- Respuesta
> **HA** minimiza el downtime ante fallos **puntuales dentro del mismo sitio** mediante redundancia local y **failover** (un nodo toma el recurso del que falló). **DR** restaura la operación tras un **evento catastrófico del sitio** (incendio, inundación), apoyándose en **copias offsite** y, a veces, un sitio alternativo. **RAID no es backup**: aporta redundancia ante fallo de disco, pero **replica** el borrado accidental, el ransomware y la corrupción lógica a todos los discos; el backup es una **copia independiente en el tiempo** (regla **3-2-1**) que permite volver atrás. En replicación, **activa-pasiva** mantiene un nodo en standby (aporta **disponibilidad**, no rendimiento), mientras que **activa-activa** reparte la carga entre nodos activos con replicación en tiempo real. El plan se dimensiona con **RTO** (tiempo máximo de inactividad tolerable) y **RPO** (datos máximos que se pueden perder, que define la frecuencia de backups).

**D3.** Un administrador expone un panel de administración a internet "protegido con VPN cifrada". Analice **qué protege y qué NO protege** el cifrado, qué medidas de **seguridad perimetral** agregaría, y el rol de **IDS vs IPS** y de la **segmentación/DMZ**.

> [!success]- Respuesta
> El **cifrado** (VPN/TLS) protege la **confidencialidad e integridad en tránsito**, pero **no** evita **fuerza bruta / credential stuffing** contra la autenticación ni la explotación de vulnerabilidades del servicio expuesto. Hay que sumar: **MFA** y contraseñas robustas, un **firewall** con reglas estrictas (solo puertos/IP necesarios), **segmentación de red** y, para servicios públicos, una **DMZ** que contenga un eventual compromiso sin que alcance la red interna. Para monitoreo se usa un **IDS** (pasivo: detecta y alerta) o, mejor, un **IPS** (activo: bloquea el tráfico malicioso), idealmente correlacionando en un **SIEM**. La combinación de capas (**defense-in-depth**) es lo que da robustez: ninguna medida por sí sola alcanza, y lo ideal sería que el panel ni siquiera estuviera expuesto a internet.

**D4.** Explique por qué un sistema **mainframe centralizado** no es "inherentemente más seguro", pese a su control de acceso riguroso y su auditoría detallada. Mencione al menos tres características de riesgo propias del mainframe y cómo se mitigan.

> [!success]- Respuesta
> La centralización facilita el control, la auditoría y la aplicación consistente de políticas, pero no vuelve al sistema "inherentemente más seguro". Características de riesgo propias: (1) **computación centralizada** → un único punto cuyo compromiso da acceso a **todos** los recursos; se mitiga con segmentación, control de acceso riguroso (RBAC/MFA) y particionamiento de datos. (2) **Disponibilidad crítica** → blanco atractivo de **DoS**; se mitiga con redundancia, HA y DR. (3) **Edad / software obsoleto** → vulnerabilidades conocidas; se mitiga con actualizaciones/parches regulares y pentesting. Se suma la **falta de visibilidad** por el aislamiento, que se mitiga **integrando los logs a un SIEM**. En conjunto, la seguridad del mainframe depende de una estrategia **por capas** (física, lógica, de aplicaciones y de red) y de la mejora continua, no de la centralización en sí.