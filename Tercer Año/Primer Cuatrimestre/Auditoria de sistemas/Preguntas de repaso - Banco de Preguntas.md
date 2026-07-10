# Preguntas de repaso — Banco de Preguntas (Auditoría de Sistemas)

> [!tip] Cómo usar este archivo
> Leé la consigna, respondela mentalmente, y desplegá la caja **▸ Respuesta** para verificar. Las cajas están colapsadas por defecto. Las respuestas son la versión resumida (lo esencial de cada respuesta en un párrafo compacto).
>
> Las preguntas 1 a 10 del Primer Parcial son las mismas del Segundo Parcial, por eso se responden una sola vez aquí. El Primer Parcial agrega las exclusivas 11–14. El Final tiene su propio set.
>
> 🔴 **Marca de prioridad:** las preguntas con 🔴 *(tomada — Parcial mayo 2026)* ya cayeron en el parcial rendido. Darles menos peso al repasar; concentrarse en las que **no** tienen la marca.

---

## Segundo Parcial — noviembre 2025

**1.** 🔴 *(tomada — Parcial mayo 2026)* Argumentar por qué la certificación ISO 27001 no debe ser vista como un objetivo único, sino como un ciclo de mejora continua. ¿Qué implicaciones tiene esta visión para el trabajo del auditor de sistemas?

> [!success]- Respuesta
> La certificación no acredita que estés "seguro", sino que tenés un SGSI funcionando, y este se basa en el modelo PDCA (Plan → Do → Check → Act), que es cíclico por definición; tomarlo como meta final sería congelar el sistema en la primera vuelta. La mejora continua importa porque amenazas, tecnología y negocio cambian, y un control que servía ayer queda obsoleto. Para el auditor implica no verificar controles sueltos sino que el SGSI gire como sistema de gestión, buscando evidencia de las cuatro fases y verificando que las no conformidades se documenten y cierren.

**2.** 🔴 *(tomada — Parcial mayo 2026)* Explicar las diferencias y similitudes clave entre la norma ISO 27001 y la norma ISO 27002. Describir cómo cada una contribuye a la implementación y el mantenimiento de un Sistema de Gestión de Seguridad de la Información (SGSI) eficaz, y por qué son consideradas complementarias.

> [!success]- Respuesta
> Ambas son de la familia ISO 27000 y apuntan a un SGSI eficaz bajo los pilares CIA, pero la 27001 fija los requisitos y es certificable, mientras que la 27002 es una guía de buenas prácticas con los controles recomendables y no es certificable. La 27001 dice el "qué" y la 27002 el "cómo"; además, en la 27001 no todos los controles son obligatorios y la organización justifica cuáles aplica mediante la Declaración de Aplicabilidad (SOA). Son complementarias: la 27001 da el marco para certificar y la 27002 el detalle práctico para implementar los controles.

**3.** 🔴 *(tomada — Parcial mayo 2026)* Explicar y comparar las definiciones de seguridad informática, seguridad de la información y ciberseguridad. Ilustrar con un diagrama de Venn y ejemplos concretos de cómo cada concepto aborda diferentes aspectos de la protección de los activos de una organización.

> [!success]- Respuesta
> La seguridad informática es la más acotada (proteger la información en medios informáticos: hardware, software, redes). La seguridad de la información es más amplia: protege todos los activos de información de la organización e incluye clasificación, gestión de riesgos, marco normativo, controles y mejora continua. La ciberseguridad se centra en las amenazas del ciberespacio. En un diagrama de Venn, la seguridad de la información es el círculo más abarcativo que contiene a la informática, y la ciberseguridad se solapa con ambas; las tres convergen en proteger los pilares CIA (confidencialidad, integridad, disponibilidad).

**4.** 🔴 *(tomada — Parcial mayo 2026)* Un auditor de sistemas, durante una revisión de un sistema legado, descubre que un proveedor externo ha implementado un backdoor (puerta trasera) no documentado para acceso de soporte, creando una vulnerabilidad masiva. El proveedor presiona al auditor para que no revele este hallazgo para proteger el contrato. Analizar el dilema ético del auditor y la acción correcta, según los principios de la deontología profesional.

> [!success]- Respuesta
> Segun la deontologia profesional y el codigo de etica ISACA, la accion correcta es revelar el hallazgo sin ceder a la presion del proveedor. El auditor debe mantener su independencia y reportar todos los hechos significativos a las partes apropiadas documentando tambien cualquier presion recibida para proteger la integridad del reporte y los intereses del cliente.

**5.** 🔴 *(tomada — Parcial mayo 2026)* Explicar, con palabras propias, la importancia estratégica de una auditoría de sistemas en una organización moderna, y cómo su rol va más allá de la mera detección de fallos. Argumentar cómo contribuye a la gobernanza y la toma de decisiones.

> [!success]- Respuesta
> Revisa que los controles funcionen bien para dar confianza de que las operaciones, la información y el cumplimiento de normas están en orden. Detectando por qué fallan las cosas y proponiendo mejoras brindando a la dirección información segura para decidir, preveniendo asi fraudes y manteniendo la tecnología alineada con los objetivos. Su valor está en mejorar el control interno, no en buscar culpables.

**6.** 🔴 *(tomada — Parcial mayo 2026)* Comparar una auditoría de sistema de información "operativa" con una "financiera" en términos de sus objetivos, alcance y el tipo de hallazgos que cada una priorizaría. Proporcionar un ejemplo donde los resultados de una auditoría operativa de TI impactarían directamente en los resultados de una auditoría financiera.

> [!success]- Respuesta
> La operativa se enfoca en la efectividad y eficiencia de las operaciones, priorizando hallazgos de desempeño y seguridad; la financiera busca la confiabilidad y razonabilidad de la información contable. Se relacionan directamente porque la TI soporta las aplicaciones financieras. Ejemplo: si la auditoría operativa detecta un control de accesos deficiente o ausencia de logs en el sistema contable, ese hallazgo impacta en la financiera, porque sin esos controles no se garantiza la integridad de los datos.

**7.** 🔴 *(tomada — Parcial mayo 2026)* Analizar las ventajas y desventajas de contar con un equipo de auditoría interna versus contratar a un auditor externo para una evaluación integral de los sistemas de información de una gran corporación. ¿En qué situaciones específicas podría ser más beneficioso uno u otro?

> [!success]- Respuesta
> La interna conoce a fondo el negocio, hace seguimiento continuo y cuesta menos, pero tiene menor independencia y posible sesgo. El auditor externo es independiente, aporta credibilidad ante terceros y puede certificar, pero cuesta más y conoce menos el contexto. Conviene la interna para monitoreo continuo y mejora permanente; conviene el externo cuando se necesita opinión imparcial para terceros, certificación de normas (ISO 27001) o cumplimiento regulatorio que exige independencia (como SOX, que prohíbe ciertas incompatibilidades del auditor).

**8.** Describir un escenario en el que los hallazgos de una auditoría de sistemas rutinaria podrían ser el detonante para iniciar una investigación forense informática. Explicar cómo cambian los objetivos, la metodología y el tratamiento de la evidencia en esta transición.

> [!success]- Respuesta
> Cuando en una auditoría el auditor detecta señales de un incidente (accesos indebidos, movimientos raros o un posible fraude), eso puede dar inicio a una investigación forense. Ahí cambia el objetivo: la auditoría revisa que los controles funcionen, mientras que la forensia busca demostrar qué pasó y reunir pruebas válidas para la justicia, cuidando que la evidencia no se altere. Por eso sigue pasos propios que una auditoría común no tiene.

**9.** 🔴 *(tomada — Parcial mayo 2026)* Detallar las responsabilidades clave y las metodologías distintivas de un auditor de sistemas y un forense informático. En un caso de robo de propiedad intelectual a través de una brecha de seguridad, explicar cómo las preguntas que intentaría responder cada profesional difieren fundamentalmente, y cómo su trabajo se complementaría.

> [!success]- Respuesta
> El auditor evalúa la efectividad de los controles para evitar problemas y reportarlos a la direccion. El forense, en cambio, investiga que paso cuando ya ocurrio un incidente y reune pruebas con validez lega. Ante un robo de propiedad intelectual, el auditor pregunta "¿por qué fallaron los controles y cómo evitarlo?" y el forense "¿quién accedió, cómo, cuándo y qué lo prueba?". Se complementan: la auditoría detecta el problema y el control fallido, la forensia reconstruye el hecho y aporta la prueba legal.

**10.** Si una empresa del sector financiero en Latinoamérica desea expandir sus operaciones a Estados Unidos, ¿cómo debería abordar el cumplimiento de normativas desde la perspectiva de la auditoría de sistemas? Considerar los principales desafíos, como cuál sería la norma que tendría que cumplir de forma obligatoria.

> [!success]- Respuesta
> El caso se aborda con una auditoría basada en riesgos ya que al cotizar en Estados Unidos, la empresa queda obligada a cumplir la Ley Sarbanes-Oxley (SOX), donde la sección 302 hace responsables al CEO y CFO por los reportes financieros mientras que la 404 exige tener y demostrar un control interno adecuado sobre esa información. El desafío del auditor es lograr que los controles de TI que alimentan esos reportes queden documentados y probados, usando marcos como COSO y COBIT.
---

## Primer Parcial — mayo 2026 (preguntas exclusivas)

> [!info] Las preguntas 1 a 10 son las mismas que las del Segundo Parcial (ver arriba).

**11.** Explicar y analizar críticamente las distinciones y solapamientos entre seguridad informática, seguridad de la información y ciberseguridad. Proporcionar un caso hipotético de una empresa que haya implementado una estrategia de seguridad que sólo se haya centrado en la "seguridad informática", y explicar las vulnerabilidades sistémicas que surgirían de esta visión limitada.

> [!success]- Respuesta
> Las tres protegen los pilares CIA pero difieren en alcance: la informática cubre lo técnico, la de la información abarca todos los activos y su gestión, y la ciberseguridad atiende las amenazas del ciberespacio. Una empresa que solo invierte en "seguridad informática" pone firewalls y antivirus pero descuida la gestión: no clasifica información, no analiza riesgos ni concientiza al personal. Las vulnerabilidades sistémicas que surgen son fugas por ingeniería social (factor humano), información sensible sin proteger fuera de los sistemas, falta de continuidad del negocio y de cumplimiento normativo; los controles técnicos quedan aislados sin un SGSI que los gobierne.

**12.** Explicar la diferencia fundamental entre una auditoría de cumplimiento y una auditoría de desempeño u operativa en el contexto de los sistemas de información. Proporcionar un ejemplo concreto de una situación en la que sería más apropiada cada una.

> [!success]- Respuesta
> La auditoria de cumplimiento se enfoca en la adhesion a normativas y leyes obligatorias. Respondiendo a si la organizacion cumple con lo que debe cumplir. Por otro lado, la auditoria de desempeño analiza la eficacia y eficiencia de los procesos buscando mejoras independientemente de si existe una imposicion legal. El caso de un banco verificando regulaciones del banco central ejemplifica el cumplimiento, mientras que evaluar la eficiencia de los backups ilustra el enfoque operativo. 

**13.** 🔴 *(tomada — Parcial mayo 2026)* Si una empresa del sector salud en Latinoamérica desea expandir sus operaciones a Estados Unidos, ¿cómo debería abordar el cumplimiento de normativas desde la perspectiva de la auditoría de sistemas? Considerar los principales desafíos, como cuál sería la norma que tendría que cumplir de forma obligatoria.

> [!success]- Respuesta
> Al expandirse al mercado estadounidense, la empresa debe realizar un analisis de riesgos para determinar cuales normativas son obligatorias. El foco principal seria la ley HIPAA la cual exige reglas muy estrictas para la privacidad y seguridad de los datos de los pacientes. Para el auditor, El desafio clave es verfiicar que los sistemas que procesan esa informacion medica cumplan efectivamente con esos requisitos incluyendo el control de accesos, cifrado y la notificacion antes cualquier brecha de seguridad.

**14.** 🔴 *(tomada — Parcial mayo 2026)* En el ámbito de la Auditoría de Sistemas y la Seguridad, definir qué se entiende por riesgo. Explicar sus componentes principales, y por qué una comprensión clara del riesgo es fundamental para la toma de decisiones en la gestión de la seguridad de la información.

> [!success]- Respuesta
> El riesgo es la probabilidad de que una amenaza explote una vulnerabilidad de un activo y cause un impacto negativo sobre los pilares CIA (confidencialidad, integridad, disponibilidad). Sus componentes principales son: el activo (lo que se protege), la amenaza (el evento potencialmente dañino), la vulnerabilidad (la debilidad que la amenaza aprovecha), la probabilidad de ocurrencia y el impacto resultante; de forma simplificada, riesgo = probabilidad × impacto. Comprenderlo con claridad es fundamental porque tanto la auditoría como la gestión de seguridad se basan en riesgos: permite priorizar los controles donde más importan, asignar recursos de forma eficiente y tomar decisiones informadas sobre cómo tratar cada riesgo (aceptarlo, mitigarlo, transferirlo o evitarlo). Sin entender el riesgo no se puede decidir qué proteger ni cuánto invertir, y los controles quedarían aplicados a ciegas.

---

## Final — diciembre 2025

**1.** No basta con "tener seguridad". Explique por qué la norma ISO 27001 se enfoca en un Sistema de Gestión (SGSI) y no solo en herramientas técnicas. ¿Qué valor aporta la "mejora continua" en este contexto?

> [!success]- Respuesta
> Las herramientas tecnicas no bastan por si solas ya que no garantizan proteccion. La ISO 27001 se basa en el ciclo PDCA  (Plan->Do->Check->Act) para gestionar la seguridad como un proceso continuo. La mejora continua es fundamental para mantener la eficacia del sistema frente a un entorno cambiante, en lugar de congelarse en el estado del dia de la certficiacion permitiendo asi detectar y corregir desviaciones antes de que ocurran incidentes.

**2.** La norma ISO requiere compromiso de la alta dirección. ¿Qué evidencia buscaría usted como auditor para verificar que la gerencia realmente apoya el SGSI y no es solo papel mojado?

> [!success]- Respuesta
> Como auditor buscaria evidencia tangible. Como por ejemplo la politica de seguridad de la informacion formalmente firmada, actas de revisiones de la direccion, asignacion de presupuesto y programas de formacion impulsados por ellos. Todo esto demuestra un compromiso real. 

**3.** ¿Cómo auditor, qué evidencia solicitaría para verificar que el principio de "Integridad" de la triada CIA se cumple en una base de datos de nómina?

> [!success]- Respuesta
> Para verificar esto me aseguraria de 3 cosas. Primero, revisaria quien tiene acceso para modificar los datos, es decir, revisaria la matriz de permisos. Segundo, revisaria los logs para ver quien toco que y cuando. Y por ulitmo verificaria el uso de funciones hash con algoritmos actualizados como sha-256 y metodos de encriptacion como AES. Todas estas son evidencias de cumplimiento del principio de integridad. 

**4.** Un auditor descubre una vulnerabilidad crítica en el sistema de un cliente que también afecta a otros bancos (que no son sus clientes). Según el código de ética profesional, ¿cuál es el curso de acción correcto? Analice el dilema entre confidencialidad del cliente e interés público.

> [!success]- Respuesta
>El curso correcto es primero informar al cliente y trabajar con él para que remedie la vulnerabilidad, sin revelar sus datos a terceros. Si el riesgo público es grave y el cliente no actúa, se genera la alerta por vías legales o regulatorias apropiadas, nunca divulgando detalles que expongan al cliente. La clave es equilibrar ambos deberes con integridad y legalidad.

**5.** Usted es consultor de seguridad para la empresa A y auditor para la empresa B. La empresa B quiere comprar a la A. ¿Existe un conflicto ético si usted realiza la Due Diligence tecnológica? Justifique.

> [!success]- Respuesta
> Sí, hay un conflicto de intereses que compromete la independencia. Al ser consultor de A (la comprada) y auditor de B (la compradora), el profesional tiene intereses en ambos lados. Debido a esto, su juicio podria quedar sesgado y se generaria una incompatibilidad de funciones de la deontología ya que no se audita lo que uno mismo asesoró y habria restricciones de SOX. Lo correcto es declarar el conflicto y abstenerse de la Due Diligence, o renunciar a uno de los dos roles, para preservar la independencia.

**6.** "La auditoría no busca culpables, busca riesgos". Critique o defienda esta afirmación y explique cómo este enfoque cambia la predisposición del personal auditado.

> [!success]- Respuesta
> La afirmación es defendible y refleja el enfoque moderno. La auditoría evalúa la efectividad del control interno e identifica causas de desviaciones, debilidades de control y recomendaciones, no sanciona personas. Esto cambia favorablemente la predisposición del auditado. Si percibe que se busca castigar, oculta información y se pone a la defensiva. Si entiende que se busca mitigar riesgos para proteger a la organización, colabora y participa de las soluciones. 

**7.** En un entorno virtualizado, los servidores son efímeros. ¿Qué desafío presenta esto para la recolección de evidencia forense durante una auditoría post-incidente?

> [!success]- Respuesta
> En entornos virtualizados los servidores se crean y destruyen dinámicamente, lo que dificulta la recolección forense post-incidente. El problema central es la volatilidad ya que al apagarse o eliminarse una VM, su estado, memoria y rastros desaparecen, complicando recolectar la información y reconstruir la línea de tiempo, comprometiendo la integridad, autenticidad y completitud que la evidencia necesita para un entorno judicial, y dificulta la cadena de custodia. 

**8.** Analice cómo la ley SOX cambió la responsabilidad de los directivos (CEOs/CFOs) respecto a los reportes financieros y cómo esto impacta directamente al área de TI.

> [!success]- Respuesta
> La ley Sarbanes-Oxley (SOX) hace que los CEOs y CFOs sean personalmente responsables de los estados financieros. La seccion 302 exige que certifiquen por escrito su efectividad mientras que la 404 exige una estructura de control interno solida. Esto impacta directamente en ti ya que los controles financieros estan en los sistemas de TI, asi que se debe garantizar los controles de acceso, cambios e integridad. COSO y COBIT actuan como marcos de referencia para implementar esos controles.

**9.** Defina el concepto de MTPD (Maximum Tolerable Period of Disruption). Si el MTPD de un proceso es de 4 horas y su RTO (Recovery Time Objective) es de 6 horas, ¿qué conclusión crítica saca usted sobre la viabilidad de la estrategia de recuperación actual?

> [!success]- Respuesta
> El MTPD es el tiempo máximo que un proceso puede estar interrumpido antes de que el daño sea inaceptable. El RTO es el tiempo en que deben reanudarse los procesos antes de incurrir en pérdidas. Con MTPD de 4h y RTO de 6h, la estrategia no es viable ya que el plan recupera en 6 horas pero la organización solo tolera 4, así que para cuando termine la recuperación el daño ya superó el límite. El RTO debe ser siempre ≤ MTPD.  

**10.** Explique la diferencia entre un Plan de Continuidad de Negocio (BCP) y un Plan de Recuperación de Desastres (DRP). ¿Puede existir uno sin el otro de manera efectiva?

> [!success]- Respuesta
> El BCP es el plan integral que abarca toda la organización para reducir el riesgo ante una interrupción de las funciones críticas y asegurar los servicios mínimos. El DRP es un componente del BCP, específico de sistemas, para recuperar la infraestructura de TI tras un desastre. No pueden existir efectivamente uno sin el otro. Un DRP sin BCP recuperaría los sistemas pero dejaría sin plan al resto del negocio y un BCP sin DRP sería inviable porque el negocio depende de los sistemas y no podría sostener sus funciones críticas sin recuperar primero la infraestructura. Son complementarios y se necesitan mutuamente.

---

## Finales — julio 2026

**1.** Describa un escenario empresarial donde la Disponibilidad deba priorizarse críticamente sobre la Confidencialidad. Justifique su decisión basándose en el impacto al negocio.

> [!success]- Respuesta
> Un sistema médico de emergencias: acá lo más importante es que el sistema esté siempre disponible, porque si se cae en una emergencia pueden perderse vidas. Un médico que no puede ver a tiempo las alergias o la medicación de un paciente puede cometer un error grave e irreversible. En cambio, si se filtran datos de un paciente el daño es serio pero se puede reparar con el tiempo. Como una vida no se recupera, se prioriza que el sistema nunca deje de funcionar. Esto no significa dejar de proteger los datos, sino poner el mayor esfuerzo donde el impacto es más grave.

**2.** Una pequeña tienda online afirma que no necesita cumplir con PCI-DSS porque "terceriza" los pagos con una pasarela (como PayPal). ¿Es esta afirmación correcta? Argumente basándose en el alcance de la norma.

> [!success]- Respuesta
> Es incorrecta. PCI-DSS alcanza a toda empresa que participa en pagos con tarjeta, aunque no guarde los datos. Tercerizar el procesamiento delega la operacion pero no la responsabilidad, por lo que la tienda debe seguir usando una pasarela certificada y asegurar el cumplimiento de la norma utilizando el cuestionario brindado por esta norma.

**3.** 🆕 Explique el modelo de control interno basado en riesgos y cómo se aplica en una auditoría de sistemas para garantizar la confiabilidad de la información y la protección de activos.

> [!success]- Respuesta
> El modelo se basa en identificar primero los riesgos y activos criticos para luego aplciar controles priorizando las areas de mayor impacto. En auditoria, esto perimte enfocar los recursos en lo verdaderamente importante para asegurar la confiabilidad de los datos y la proteccion de los activos sin desgatarse en elementos de bajo riesgo. Este enfoque usa marcos como COSO y COBIT.

**4.** 🆕 ¿Cómo se evalúan los controles de acceso en una organización para garantizar la segregación de funciones y evitar conflictos de interés en sistemas críticos?

> [!success]- Respuesta
> El Auditor verifica que nadie concentre funciones incompatibles que permitan cometer fraudes. Para esto, se revisa que la matriz de permisos contra los roles reales, asegurando que quien registra por ejemplo una operacion no pueda aprobarla ademas de respaldar todo con registros de acceso (logs).

**5.** 🆕 Compare y contraste ISO/IEC 27001 con COBIT 2019 en términos de alcance, enfoque de gobernanza y utilidad para una auditoría de seguridad de la información.

> [!success]- Respuesta
> Por un lado la ISO 27001 se centra en la seguridad de la informacion y es certificable detallando los controles necesarios. En cambio, COBIT 2019 es un marco de gobierno mas amplio para toda la TI que alinea la tecnologia con el negocio. Se complementan ya que la ISO da el detalle tecnico y el COBIT la vision de gobierno y direccion.

**6.** 📕 Describa un plan de pruebas de penetración ético (pentesting) para evaluar la seguridad de una red corporativa y los controles de defensa en profundidad.

> [!success]- Respuesta
> Un pentest ético sigue tres etapas: 
> - Planificación: se define el alcance y los objetivos, y se firma la autorización de qué se puede atacar y qué no. 
> - Ejecución: se prueban las defensas capa por capa —firewall, antivirus, accesos, segmentación de red— para ver si frenan al atacante o lo dejan pasar. 
> - Informe: se documentan las vulnerabilidades encontradas con evidencia confiable y se recomiendan mejoras. 
> 
> La "defensa en profundidad" es tener varias capas de protección para que, si una falla, otra lo detenga; el pentest verifica que esas capas realmente funcionen.

**7.** 🆕 Explique cómo diseñarían un programa de continuidad del negocio y recuperación ante desastres enfocado en sistemas críticos de TI.

> [!success]- Respuesta
> Primero se hace un BIA para identificar los sistemas críticos y el impacto de su caída. De ahí surgen el MTPD, el RPO y el RTO. Para los sistemas críticos se busca un RPO casi nulo y un RTO mínimo, logrados mediante replicación y redundancia. El plan se estructura con un BCP para la continuidad del negocio en general y un DRP específico para recuperar la infraestructura de TI. Finalmente, se prueba periódicamente para asegurar que funcione.

**8.** 🆕 ¿Qué criterios utilizaría para evaluar la efectividad de un programa de gestión de incidentes de seguridad en una organización?

> [!success]- Respuesta
> Se mide sobre todo por tiempos y resultados: qué tan rápido se detecta el incidente, cuánto tarda en contenerse y en volver a la normalidad, y si se evita que vuelva a pasar. También se evalúa si hay procedimientos y herramientas definidos , y si después se documenta y se aprende del incidente. Un buen programa baja el tiempo de respuesta y el impacto de cada evento.

**9.** 📕 Analice la importancia de la gestión de identidades y accesos (IAM) en entornos híbridos y los retos de auditoría que presentan las nubes públicas y privadas.

> [!success]- Respuesta
> IAM asegura que cada persona entre solo a lo que le corresponde. El reto en los entornos hibridos es mantener las reglas consistentes tanto localmente como en la nube. Ademas, un auditor no puede ver la infraestructura fisica, por lo que depende de la evidencia en forma de registros y reportes. 

**10.** 🆕  ¿Cómo se determina la adecuación y frecuencia de las revisiones de seguridad y cumplimiento normativo en un entorno regulado (por ejemplo, protección de datos personales)?

> [!success]- Respuesta
> Depende del riesgo del sistema y de lo que mostraron las revisiones anteriores. Un sistema crítico o regulado (por ejemplo, que maneja datos personales) debe revisarse seguido y cumplir la norma al pie de la letra; uno de bajo riesgo tolera más tiempo entre revisiones. Además la frecuencia se ajusta según resultados: si la última encontró muchas fallas, la próxima se adelanta para verificar que se corrigieron; si estaba todo bien, puede espaciarse. El objetivo es mantener el sistema al día con la normativa.

**11.** 📕  Discuta el papel de las pruebas de auditoría de seguridad en la evaluación de la resiliencia de sistemas críticos frente a amenazas modernas como ransomware y ataques de supply chain.

> [!success]- Respuesta
> Las pruebas de auditoría sirven para ver si un sistema crítico aguantaría estos ataques. El auditor busca por dónde podría entrar un ransomware o un ataque a la cadena de proveedores, identifica las vulnerabilidades y las comunica a la dirección para que las corrija antes de que ocurra el incidente. En sistemas críticos, que toleran muy poca interrupción, esto es clave: la auditoría mide la resiliencia y empuja a reforzar backups, controles de acceso y el control sobre los proveedores.

**12.** 🆕 Proponga un marco de evidencia y muestreo para auditar la integridad y confiabilidad de los datos en un sistema de información, incluyendo técnicas para evaluar la integridad de datos y las prácticas de registro (logging).

> [!success]- Respuesta
> La evidencia tiene que ser confiable, objetiva, suficiente e íntegra (sin alteraciones). Como no se puede revisar todo, se toma una muestra representativa de registros y se analiza. Se revisan los logs de acceso y de cambios para ver quién tocó qué y cuándo, buscando modificaciones sospechosas. Herramientas tipo ACL/CAAT ayudan a analizar grandes volúmenes. La clave es cruzar la muestra con los registros para confirmar que los datos no fueron modificados indebidamente.

---

> [!note] Cobertura
> 36 preguntas únicas con respuesta en versión resumida: 10 (Segundo Parcial) + 4 exclusivas (Primer Parcial) + 10 (Final diciembre 2025) + 12 (Finales julio 2026: 2 sueltas + 10 del examen rendido 07/07/2026). Las preguntas 1–10 del Primer Parcial coinciden con las del Segundo Parcial.
> Del examen 07/07/2026: 3 tratan temas fuera del material 📕 (pentesting, IAM/nube, ransomware/supply chain), 5 son temas nuevos 🆕 dentro del material y 2 solapan 🔁 con el Final de diciembre 2025 (continuidad BCP/DRP e integridad de datos). Detalle de cobertura en el aviso de la subsección.
> En el Parcial mayo 2026 cayeron las preguntas 🔴: del set 1–10 las nro. 1, 2, 3, 4, 5, 6, 7 y 9; de las exclusivas, la 13 (salud/HIPAA) y la 14 (riesgo). **No** cayeron: 8 (forense detonante), 10 (SOX financiero), 11 y 12.
