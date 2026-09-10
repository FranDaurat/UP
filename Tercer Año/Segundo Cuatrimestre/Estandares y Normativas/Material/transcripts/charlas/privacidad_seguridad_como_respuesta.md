# Resumen: Privacidad y seguridad como respuesta (BDO)

**Formato:** Webinar de BDO (5ª consultora global) — equipo: Fabián (ciberseguridad/intro), Candelaria y Gastón (abogados con conocimiento de ciberseguridad), Solange Gal (supervisora de protección de datos), Juan Martín Morando (práctica legal), Giordano Delgado (tecnología).

## Idea central

Los incidentes con datos personales se abordaban solo desde lo legal-regulatorio; hoy requieren una **visión holística** que una ciberseguridad + privacidad + gestión. La privacidad agrega un atributo a la seguridad del dato: proteger la **identidad** de las personas dueñas de esos datos. Referencias: privacidad por diseño (desde ~2006, adoptada por el GDPR), ISO 27001:2022 integrada con ISO 27701.

## Dos momentos

1. **Gestión de riesgos (antes del problema)** — incorporar la privacidad al mapa general de riesgos de la organización (no es exclusivo de legales ni de seguridad de la información).
   - Ejemplo RRHH: datos identificatorios, salariales, bancarios, médicos, biométricos → preguntar si se necesitan, para qué, quién accede, dónde se almacenan, con qué terceros se comparten y consecuencias de su exposición.
   - 4 preguntas clave: ¿qué datos tenemos? ¿por qué? ¿dónde están? ¿quién puede acceder?
   - Caso Meta 2023: transferencia de datos de usuarios europeos a EEUU → multa ~100M EUR y orden de adecuar transferencias. Enseñanza: el mapa de riesgos debe incluir qué información sale de la organización, a qué proveedores y dónde se procesa (accountability: demostrar riesgos conocidos y controles).
2. **Gestión de incidentes (después)** — ver abajo.

## Conceptos base (Cande)

- **Dato personal:** el que identifica o hace identificable a una persona. Ley 25.326 (Argentina) es más amplia (alcanza personas jurídicas); GDPR solo personas físicas.
- **Datos sensibles** (salud, biométricos, opiniones políticas, religión, raza): protección reforzada por mayor impacto de su uso indebido.
- Argentina adhirió al **Convenio 108+**: obligación de notificar incidentes sin demora injustificada, acercándose al enfoque europeo de **72 horas**.
- **Derechos ARCO:** acceso, rectificación, cancelación, oposición.
- Tendencia común: más responsabilidad organizacional, más transparencia, protección más activa.

## Evento vs. violación de datos (Solange)

- **Evento:** cualquier suceso observable (caída de servidor, alerta de antivirus, intento de acceso fallido). No siempre compromete datos.
- **Violación de datos personales:** destrucción, pérdida, alteración, divulgación o acceso no autorizado → dispara obligaciones, plazos y notificaciones.
- Primera pregunta al saltar la alarma: ¿es evento o violación?
- **Tres dimensiones** del impacto: confidencialidad (alguien vio lo que no debía), integridad (datos modificados sin permiso), disponibilidad (ransomware, backup fallido, borrado). Cada una se gestiona y notifica distinto. Hoy el ransomware suele venir con exfiltración y publicación de los datos.

## El reloj de las 72 horas (Gastón)

- Identificar normativa aplicable según país, industria y tipo de incidente.
- **GDPR:** notificar a la autoridad dentro de las 72 h de conocido el hecho (si es improbable el riesgo, no); si el riesgo es alto, comunicar a los afectados sin demora.
- **Argentina:** ley 25.326 no fija plazo obligatorio; la resolución 47/2018 (medidas de seguridad) y comunicaciones de la AAIP **recomiendan** las 72 h.
- Verificar norma + contrato con proveedor + sector antes de activar el reloj.

## Costos de reaccionar tarde (Solange)

- Costo promedio global de una brecha: **USD 4,44M**; EEUU **USD 10,2M**; Latinoamérica **USD 3,81M** (cifras trazables de reporte, fuentes incluyen FBI).
- **97%** de las organizaciones con brechas vinculadas a IA no tenían controles de acceso a esas herramientas; **60%** de incidentes de IA comprometió datos reales.
- Detrás del cibercrimen hay financiación de guerras, armas, atentados (dimensión más allá de lo económico).
- Prepararse tiene retorno medible: es inversión, no gasto.

## Método de respuesta (5 pasos)

1. **Detectar:** confirmar que hay violación real y activar el equipo.
2. **Evaluar:** qué datos, cuántos titulares, alcance, riesgo real para las personas.
3. **Contener:** cortar acceso del atacante, deshabilitar cuentas, aislar servidores — **preservando evidencia** (contener ≠ borrar).
4. **Decidir:** el paso más incómodo; decisiones con información incompleta y reloj corriendo; mesa multidisciplinaria (legales, negocio, alta dirección): notificar o no, qué decir, cómo.
5. **Recuperar:** restablecer sistemas, reforzar lo que falló, documentar lecciones aprendidas (el incidente no estudiado se repite).
- Sin mapa claro y ensayado, la gente improvisa — e improvisar es carísimo. La detección técnica puede apoyarse en un **SOC 7x24**.

## Perspectiva legal: debida diligencia (Juan Martín Morando)

- Las normas dan por sentado que habrá incidentes; lo que se evalúa es la **debida diligencia** antes, durante y después (estándar transversal desde la reforma del Código Civil y Comercial).
- Mitos a romper: no todo ataque genera automáticamente responsabilidad; tampoco el "yo no fui" porque el ataque fue a un tercero. Cada caso es único: hay que demostrar qué se hizo en cada momento.
- **Prevención:**
  - Mapa de obligaciones: ley de datos + regulación sectorial (ej. financiera) + posibles jurisdicciones extranjeras.
  - Regular proveedores contractualmente: aviso inmediato de incidentes, preservación de registros, cooperación, información para evaluar riesgo, reglas de responsabilidad.
  - Minimización: eliminar lo que no se usa.
  - **Evidenciar** la debida diligencia: políticas conocidas, capacitaciones registradas, evaluaciones de riesgo, ejercicios de respuesta, revisiones de proveedores.
- **Decisión:** con información parcial; atención a los **múltiples relojes** (ej. Comunicación BCRA "A" 8280 en sector financiero vs. resolución 47/2018 — error típico: activar siempre el mismo reloj).
- **Preservación:** la ley exige evidencia forense (certificable por escribano, trazabilidad) para comunicar al regulador cómo se trató el incidente.

## Demo tecnológica: Goldenberg/Goldenbelt (Giordano)

Plataforma GRC SaaS (nube AWS, 15 módulos, implementación inicial de 5-6 módulos en 12-14 semanas) para digitalizar la gestión de cumplimiento que hoy vive en carpetas compartidas y Excel:

- Tableros personalizados por rol (procesos de privacidad, documentos, riesgos).
- **Flujos de trabajo:** digitalizar cualquier proceso (ej. derechos ARCO, registro de incidentes) en 3 pasos: diseñar el paso a paso → formularios personalizables → roles/SLA/notificaciones/escalamiento automático vinculado al organigrama.
- Trazabilidad completa: quién ejecutó cada tarea, fechas, formularios, evidencia — 100% auditable.
- **Colecciones:** matrices vivas (ROPA/RAT) — responsable, finalidad, datos sensibles, plazos, medidas de seguridad; ante una vulnerabilidad se cruza y se sabe con precisión qué datos están en peligro.
- Matriz de riesgos personalizable con planes de acción asociados (dashboards por fecha/estado/responsable).
- Gestión documental con IA: consultar el documento en lenguaje natural; generación automática de procedimientos desde diagramas de flujo.
- Mensaje final: transformar la gestión de privacidad integrando metodología probada + plataforma robusta; la herramienta como "debida diligencia materializada".
