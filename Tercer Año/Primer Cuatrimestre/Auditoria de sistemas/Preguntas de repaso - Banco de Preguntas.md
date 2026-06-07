# Preguntas de repaso — Banco de Preguntas (Auditoría de Sistemas)

> [!tip] Cómo usar este archivo
> Leé la consigna, respondela mentalmente, y desplegá la caja **▸ Respuesta** para verificar. Las cajas están colapsadas por defecto. Las respuestas son la versión resumida (lo esencial de cada respuesta en un párrafo compacto).
>
> Las preguntas 1 a 10 del Primer Parcial son las mismas del Segundo Parcial, por eso se responden una sola vez aquí. El Primer Parcial agrega las exclusivas 11–13. El Final tiene su propio set.

---

## Segundo Parcial — noviembre 2025

**1.** Argumentar por qué la certificación ISO 27001 no debe ser vista como un objetivo único, sino como un ciclo de mejora continua. ¿Qué implicaciones tiene esta visión para el trabajo del auditor de sistemas?

> [!success]- Respuesta
> La certificación no acredita que estés "seguro", sino que tenés un SGSI funcionando, y este se basa en el modelo PDCA (Plan → Do → Check → Act), que es cíclico por definición; tomarlo como meta final sería congelar el sistema en la primera vuelta. La mejora continua importa porque amenazas, tecnología y negocio cambian, y un control que servía ayer queda obsoleto. Para el auditor implica no verificar controles sueltos sino que el SGSI gire como sistema de gestión, buscando evidencia de las cuatro fases y verificando que las no conformidades se documenten y cierren.

**2.** Explicar las diferencias y similitudes clave entre la norma ISO 27001 y la norma ISO 27002. Describir cómo cada una contribuye a la implementación y el mantenimiento de un Sistema de Gestión de Seguridad de la Información (SGSI) eficaz, y por qué son consideradas complementarias.

> [!success]- Respuesta
> Ambas son de la familia ISO 27000 y apuntan a un SGSI eficaz bajo los pilares CIA, pero la 27001 fija los requisitos y es certificable, mientras que la 27002 es una guía de buenas prácticas con los controles recomendables y no es certificable. La 27001 dice el "qué" y la 27002 el "cómo"; además, en la 27001 no todos los controles son obligatorios y la organización justifica cuáles aplica mediante la Declaración de Aplicabilidad (SOA). Son complementarias: la 27001 da el marco para certificar y la 27002 el detalle práctico para implementar los controles.

**3.** Explicar y comparar las definiciones de seguridad informática, seguridad de la información y ciberseguridad. Ilustrar con un diagrama de Venn y ejemplos concretos de cómo cada concepto aborda diferentes aspectos de la protección de los activos de una organización.

> [!success]- Respuesta
> La seguridad informática es la más acotada (proteger la información en medios informáticos: hardware, software, redes). La seguridad de la información es más amplia: protege todos los activos de información de la organización e incluye clasificación, gestión de riesgos, marco normativo, controles y mejora continua. La ciberseguridad se centra en las amenazas del ciberespacio. En un diagrama de Venn, la seguridad de la información es el círculo más abarcativo que contiene a la informática, y la ciberseguridad se solapa con ambas; las tres convergen en proteger los pilares CIA (confidencialidad, integridad, disponibilidad).

**4.** Un auditor de sistemas, durante una revisión de un sistema legado, descubre que un proveedor externo ha implementado un backdoor (puerta trasera) no documentado para acceso de soporte, creando una vulnerabilidad masiva. El proveedor presiona al auditor para que no revele este hallazgo para proteger el contrato. Analizar el dilema ético del auditor y la acción correcta, según los principios de la deontología profesional.

> [!success]- Respuesta
> La acción correcta, según la deontología, es revelar el hallazgo sin ceder a la presión. El auditor debe informar todos los hechos significativos que, de ocultarse, distorsionarían el reporte; callar violaría integridad, veracidad, responsabilidad e independencia y dejaría al cliente expuesto. La confidencialidad protege la información del auditado frente a terceros, pero no habilita a ocultarle un riesgo grave al propio cliente. Corresponde documentar el hallazgo con su riesgo y recomendación, escalarlo a la dirección y dejar constancia de la presión recibida.

**5.** Explicar, con palabras propias, la importancia estratégica de una auditoría de sistemas en una organización moderna, y cómo su rol va más allá de la mera detección de fallos. Argumentar cómo contribuye a la gobernanza y la toma de decisiones.

> [!success]- Respuesta
> Su misión va más allá de detectar fallos: evalúa y monitorea la efectividad del control interno para dar seguridad razonable sobre operaciones, confiabilidad de la información y cumplimiento de normas. En una organización moderna donde la TI soporta el negocio, esto la vuelve una herramienta de gobernanza: al verificar controles, identificar causas de desviaciones y recomendar mejoras, se aporta información confiable para la toma de decisiones de la alta dirección, previniendo fraudes y alineando la tecnología con los objetivos del negocio. Su valor está en gestionar riesgos y mejorar el control interno, no en buscar culpables.

**6.** Comparar una auditoría de sistema de información "operativa" con una "financiera" en términos de sus objetivos, alcance y el tipo de hallazgos que cada una priorizaría. Proporcionar un ejemplo donde los resultados de una auditoría operativa de TI impactarían directamente en los resultados de una auditoría financiera.

> [!success]- Respuesta
> La operativa se enfoca en la efectividad y eficiencia de las operaciones, priorizando hallazgos de desempeño y seguridad; la financiera busca la confiabilidad y razonabilidad de la información contable. Se relacionan directamente porque la TI soporta las aplicaciones financieras. Ejemplo: si la auditoría operativa detecta un control de accesos deficiente o ausencia de logs en el sistema contable, ese hallazgo impacta en la financiera, porque sin esos controles no se garantiza la integridad de los datos y la opinión podría requerir salvedades.

**7.** Analizar las ventajas y desventajas de contar con un equipo de auditoría interna versus contratar a un auditor externo para una evaluación integral de los sistemas de información de una gran corporación. ¿En qué situaciones específicas podría ser más beneficioso uno u otro?

> [!success]- Respuesta
> La interna conoce a fondo el negocio, hace seguimiento continuo y cuesta menos, pero tiene menor independencia y posible sesgo. El auditor externo es independiente, aporta credibilidad ante terceros y puede certificar, pero cuesta más y conoce menos el contexto. Conviene la interna para monitoreo continuo y mejora permanente; conviene el externo cuando se necesita opinión imparcial para terceros, certificación de normas (ISO 27001) o cumplimiento regulatorio que exige independencia (como SOX, que prohíbe ciertas incompatibilidades del auditor).

**8.** Describir un escenario en el que los hallazgos de una auditoría de sistemas rutinaria podrían ser el detonante para iniciar una investigación forense informática. Explicar cómo cambian los objetivos, la metodología y el tratamiento de la evidencia en esta transición.

> [!success]- Respuesta
> Si durante una auditoría rutinaria el auditor detecta indicios de incidente (accesos no autorizados, transacciones anómalas, logs alterados o un fraude), eso puede gatillar una investigación forense. En la transición cambian los objetivos, la metodología y la evidencia: la auditoría evalúa controles y emite una opinión en un entorno organizativo; la forensia busca determinar qué pasó y reunir prueba legal para un entorno judicial, por lo que la evidencia debe ser auténtica, íntegra, conforme a la ley y con cadena de custodia preservada. La forensia sigue etapas propias (preparación, forensia física, forensia digital, reporte y cierre) que no existen en una auditoría común.

**9.** Detallar las responsabilidades clave y las metodologías distintivas de un auditor de sistemas y un forense informático. En un caso de robo de propiedad intelectual a través de una brecha de seguridad, explicar cómo las preguntas que intentaría responder cada profesional difieren fundamentalmente, y cómo su trabajo se complementaría.

> [!success]- Respuesta
> El auditor evalúa la efectividad de los controles para emitir una opinión, con evidencia confiable y suficiente en un entorno organizativo, reportando a la dirección. El forense (perito) aplica técnicas de investigación para hallar evidencia legal sobre un hecho ya ocurrido y produce un dictamen para la justicia, con evidencia auténtica, íntegra y con cadena de custodia. Ante un robo de propiedad intelectual, el auditor pregunta "¿por qué fallaron los controles y cómo evitarlo?" y el forense "¿quién accedió, cómo, cuándo y qué lo prueba?". Se complementan: la auditoría detecta el problema y el control fallido, la forensia reconstruye el hecho y aporta la prueba legal.

**10.** Si una empresa del sector financiero en Latinoamérica desea expandir sus operaciones a Estados Unidos, ¿cómo debería abordar el cumplimiento de normativas desde la perspectiva de la auditoría de sistemas? Considerar los principales desafíos, como cuál sería la norma que tendría que cumplir de forma obligatoria.

> [!success]- Respuesta
> El caso se aborda con una auditoría basada en riesgos ya que al cotizar en Estados Unidos, la empresa queda obligada a cumplir la Ley Sarbanes-Oxley (SOX), donde la sección 302 hace responsables al CEO y CFO por los reportes financieros, y la 404 exige tener y demostrar un control interno adecuado sobre esa información. El desafío del auditor es lograr que los controles de TI que alimentan esos reportes queden documentados y probados, usando marcos como COSO y COBIT para cubrir la brecha con la normativa local.

---

## Primer Parcial — mayo 2026 (preguntas exclusivas)

> [!info] Las preguntas 1 a 10 son las mismas que las del Segundo Parcial (ver arriba).

**11.** Explicar y analizar críticamente las distinciones y solapamientos entre seguridad informática, seguridad de la información y ciberseguridad. Proporcionar un caso hipotético de una empresa que haya implementado una estrategia de seguridad que sólo se haya centrado en la "seguridad informática", y explicar las vulnerabilidades sistémicas que surgirían de esta visión limitada.

> [!success]- Respuesta
> Las tres protegen los pilares CIA pero difieren en alcance: la informática cubre lo técnico, la de la información abarca todos los activos y su gestión, y la ciberseguridad atiende las amenazas del ciberespacio. Una empresa que solo invierte en "seguridad informática" pone firewalls y antivirus pero descuida la gestión: no clasifica información, no analiza riesgos ni concientiza al personal. Las vulnerabilidades sistémicas que surgen son fugas por ingeniería social (factor humano), información sensible sin proteger fuera de los sistemas, falta de continuidad del negocio y de cumplimiento normativo; los controles técnicos quedan aislados sin un SGSI que los gobierne.

**12.** Explicar la diferencia fundamental entre una auditoría de cumplimiento y una auditoría de desempeño u operativa en el contexto de los sistemas de información. Proporcionar un ejemplo concreto de una situación en la que sería más apropiada cada una.

> [!success]- Respuesta
> La auditoria de cumplimiento se enfoca en la adhesion a normativas y leyes obligatorias. Respondiendo a si la organizacion cumple con lo que debe cumplir. Por otro lado, la auditoria de desempeño analiza la eficacia y eficiencia de los procesos buscando mejoras independientemente de si existe una imposicion legal. El caso de un banco verificando regulaciones del banco central ejemplifica el cumplimiento, mientras que evaluar la eficiencia de los backups ilustra el enfoque operativo. 

**13.** Si una empresa del sector salud en Latinoamérica desea expandir sus operaciones a Estados Unidos, ¿cómo debería abordar el cumplimiento de normativas desde la perspectiva de la auditoría de sistemas? Considerar los principales desafíos, como cuál sería la norma que tendría que cumplir de forma obligatoria.

> [!success]- Respuesta
> Al expandirse al mercado estadounidense, la empresa debe realizar un analisis de riesgos para determinar cuales normativas son obligatorias. El foco principal seria la ley HIPAA la cual exige reglas muy estrictas para la privacidad y seguridad de los datos de los pacientes. Para el auditor, El desafio clave es verfiicar que los sistemas que procesan esa informacion medica cumplan efectivamente con esos requisitos incluyendo el control de accesos, cifrado y la notificacion antes cualquier brecha de seguridad.

---

## Final — diciembre 2025

**1.** No basta con "tener seguridad". Explique por qué la norma ISO 27001 se enfoca en un Sistema de Gestión (SGSI) y no solo en herramientas técnicas. ¿Qué valor aporta la "mejora continua" en este contexto?


> [!success]- Respuesta
> Las herramientas tecnicas no bastan por si solas ya que no garantizan proteccion. La ISO 27001 se basa en el ciclo PDCA  (Plan->Do->Check->Act) para gestionar la seguridad como un proceso continuo. La mejora continua es fundamental para mantener la eficacia del sistema frente a un entorno cambiante, en lugar de congelarse en el estado del dia de la certficiacion permitiendo asi detectar y corregir desviaciones antes de que ocurran incidentes.

**2.** La norma ISO requiere compromiso de la alta dirección. ¿Qué evidencia buscaría usted como auditor para verificar que la gerencia realmente apoya el SGSI y no es solo papel mojado?

> [!success]- Respuesta
> Buscaría evidencia tangible de que el apoyo no es "papel mojado": la Política de Seguridad aprobada y firmada por la dirección y revisada periódicamente; actas de revisiones por la Dirección donde se traten resultados, incidentes y mejoras; asignación documentada de recursos y presupuesto; definición de roles y un responsable de seguridad designado; aprobación de la SOA y del análisis de riesgos; y programas de formación y concientización impulsados desde arriba. Objetivos de seguridad medibles con seguimiento, y decisiones tomadas a partir de las revisiones, demuestran compromiso real y no declarativo.

> [!success]- Respuesta
> Como auditor buscaria evidencia tangible. Como por ejemplo la politica de seguridad de la informacion formalmente firmada, actas de revisiones de la direccion, asignacion de presupuesto y programas de formacion impulsados por ellos. Todo esto demuestra un compromiso real. 

**3.** ¿Cómo auditor, qué evidencia solicitaría para verificar que el principio de "Integridad" de la triada CIA se cumple en una base de datos de nómina?

> [!success]- Respuesta
> La integridad implica que solo personas autorizadas modifiquen los datos por métodos autorizados, garantizando exactitud, fiabilidad y consistencia. Solicitaría: la matriz de roles y permisos (control de accesos), los logs que registren quién modificó qué y cuándo, los controles de integridad referencial de la base, los controles de aplicación sobre entradas/procesamiento/salidas (validación, prevención de altas no autorizadas), funciones hash que detecten alteraciones, y pruebas de conciliación que verifiquen la consistencia interna y externa (por ejemplo, contra los legajos). Son evidencias de cumplimiento (que el control existe) y sustantivas (que funciona).

> [!success]- Respuesta
> Para verificar esto solicitaria la matriz de roles y permisos, los registros de auditoria o logs para ver quien modificio que y cuando, los controles de integridad referencial, evidencia de controles de aplicacion sobre entradas, pocesamiento y/o salidas, el uso de funciones hash para detectar alteraciones y las pruebas de conciliacion que verifiquen la consistencia interna y externa. Todas estas son evidencias de cumplimiento del principio de integridad. 

**4.** Un auditor descubre una vulnerabilidad crítica en el sistema de un cliente que también afecta a otros bancos (que no son sus clientes). Según el código de ética profesional, ¿cuál es el curso de acción correcto? Analice el dilema entre confidencialidad del cliente e interés público.

> [!success]- Respuesta
>El auditor mantiene la confidencialidad salvo que la ley exija divulgar, y a la vez sirve a las partes de modo legal y honesto. El curso correcto es primero informar al cliente y trabajar con él para que remedie la vulnerabilidad, sin revelar sus datos a terceros. Si el riesgo público es grave y el cliente no actúa, se genera la alerta por vías legales o regulatorias apropiadas, nunca divulgando  detalles que expongan al cliente. La clave es equilibrar ambos deberes con integridad y legalidad.

**5.** Usted es consultor de seguridad para la empresa A y auditor para la empresa B. La empresa B quiere comprar a la A. ¿Existe un conflicto ético si usted realiza la Due Diligence tecnológica? Justifique.

> [!success]- Respuesta
> Sí, hay un conflicto de intereses que compromete la independencia. Al ser consultor de A (la comprada) y auditor de B (la compradora), el profesional tiene intereses en ambos lados. Pudo haber moldeado como consultor los sistemas que ahora debería evaluar objetivamente, y su juicio quedaría sesgado. Se agrava con la incompatibilidad de funciones de la deontología (no se audita lo que uno mismo asesoró) y las restricciones de SOX. Lo correcto es declarar el conflicto y abstenerse de la Due Diligence, o renunciar a uno de los dos roles, para preservar la independencia.

**6.** "La auditoría no busca culpables, busca riesgos". Critique o defienda esta afirmación y explique cómo este enfoque cambia la predisposición del personal auditado.

> [!success]- Respuesta
> La afirmación es defendible y refleja el enfoque moderno. La auditoría evalúa la efectividad del control interno e identifica causas de desviaciones, debilidades de control y recomendaciones, no sanciona personas. Esto cambia favorablemente la predisposición del auditado. Si percibe que se busca castigar, oculta información y se pone a la defensiva. Si entiende que se busca mitigar riesgos para proteger a la organización, colabora y participa de las soluciones. 

**7.** En un entorno virtualizado, los servidores son efímeros. ¿Qué desafío presenta esto para la recolección de evidencia forense durante una auditoría post-incidente?

> [!success]- Respuesta
> En entornos virtualizados los servidores se crean y destruyen dinámicamente, lo que dificulta la recolección forense post-incidente. El problema central es la volatilidad ya que al apagarse o eliminarse una VM, su estado, memoria y rastros desaparecen, complicando recolectar la información volátil y reconstruir la línea de tiempo. Esto compromete la integridad, autenticidad y completitud que la evidencia necesita para un entorno judicial, y dificulta la cadena de custodia. 

**8.** Analice cómo la ley SOX cambió la responsabilidad de los directivos (CEOs/CFOs) respecto a los reportes financieros y cómo esto impacta directamente al área de TI.

> [!success]- Respuesta
> La ley Sarbanes-Oxley (SOX) hace que los CEOs y CFOs sean personalmente responsables de los estados financieros. La seccion 302 exige que certifiquen por escrito su efectividad mientras que la 404 exige una estructura de control interno solida. Esto impacta directamente en ti ya que los controles financieros estan en los sistemas, asi que TI debe garantizar los controles de acceso, cambios e integridad. COSO y COBIT actuan como marcos de referencia para implementar esos controles.

**9.** Defina el concepto de MTPD (Maximum Tolerable Period of Disruption). Si el MTPD de un proceso es de 4 horas y su RTO (Recovery Time Objective) es de 6 horas, ¿qué conclusión crítica saca usted sobre la viabilidad de la estrategia de recuperación actual?

> [!success]- Respuesta
> El MTPD es el tiempo máximo que un proceso puede estar interrumpido antes de que el daño sea inaceptable. El RTO es el tiempo en que deben reanudarse los procesos antes de incurrir en pérdidas. Con MTPD de 4h y RTO de 6h, la estrategia no es viable ya que el plan recupera en 6 horas pero la organización solo tolera 4, así que para cuando termine la recuperación el daño ya superó el límite. El RTO debe ser siempre ≤ MTPD.  

**10.** Explique la diferencia entre un Plan de Continuidad de Negocio (BCP) y un Plan de Recuperación de Desastres (DRP). ¿Puede existir uno sin el otro de manera efectiva?

> [!success]- Respuesta
> El BCP es el plan integral que abarca toda la organización para reducir el riesgo ante una interrupción de las funciones críticas y asegurar los servicios mínimos. El DRP es un componente del BCP, específico de sistemas, para recuperar la infraestructura de TI tras un desastre. No pueden existir efectivamente uno sin el otro. Un DRP sin BCP recuperaría los sistemas pero dejaría sin plan al resto del negocio y un BCP sin DRP sería inviable porque el negocio depende de los sistemas y no podría sostener sus funciones críticas sin recuperar primero la infraestructura. Son complementarios y se necesitan mutuamente.

---

> [!note] Cobertura
> 23 preguntas únicas con respuesta en versión resumida: 10 (Segundo Parcial) + 3 exclusivas (Primer Parcial) + 10 (Final). Las preguntas 1–10 del Primer Parcial coinciden con las del Segundo Parcial.
