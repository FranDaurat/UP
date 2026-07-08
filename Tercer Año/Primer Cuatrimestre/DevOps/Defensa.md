-- - 
# Guion de defensa — TP Integrador DevOps

Resumen oral del TP completo: qué decir, en qué orden, y las respuestas a lo
que probablemente pregunten. Complementa al `INFORME.md` (detalle técnico) y
al `DEVSECOPS.md` (security gate).

---

## Apertura (1 minuto)

> "El objetivo no fue hacer una app compleja sino implementar **cada etapa del
> ciclo DevOps completa y justificada**: la API se testea, se dockeriza, se
> integra con CI, se publica, se deploya y se monitorea. Cada decisión técnica
> tiene un comentario en el código citando la fuente oficial."

**Pipeline completo en una frase:** commit → PR con review cruzado → CI (lint
+ tests + build + security) → merge a `main` protegida → imagen a Docker Hub
taggeada con el SHA → deploy automático a Render → monitoreo en New Relic.

---

## Fase 1 — API y tests

- **FastAPI en 4 capas** (routers → services → clients → db). No es capricho:
  la separación en capas es lo que habilita las **trazas encadenadas** del
  monitoreo — sin capas, New Relic mostraría un único span plano.
- CRUD completo de items + proxy a PokeAPI (API externa) + `/health` +
  `/error-test`.
- **PATCH y no PUT**: semántica de actualización parcial — el cliente manda
  solo los campos que cambia (`exclude_unset=True`).
- **8 tests** con pytest, cobertura 87%. PokeAPI **mockeada** (los tests no
  dependen de la red), SQLite en memoria creada y destruida por test
  (aislamiento total).
- Config 100% por variables de entorno — nada hardcodeado. SQLite en local,
  Postgres en compose, sin tocar código.

## Fase 2 — Docker

- **Multi-stage**: `builder` instala dependencias, `runtime` copia solo lo
  instalado → imagen final chica, sin toolchain de compilación.
- Base `slim` y no `alpine`: alpine usa musl libc y rompe wheels nativos como
  `psycopg2-binary`; slim es Debian/glibc.
- **Usuario no-root** (principio de mínimo privilegio), `HEALTHCHECK` a
  `/health`, `requirements.txt` copiado antes del código (caché de capas).
- Compose: Postgres con healthcheck + `depends_on: condition: service_healthy`
  (evita el race condition de arrancar antes que la DB), volumen nombrado,
  red aislada, imagen pineada `16.3-alpine`.

## Fases 3-5 — CI/CD

- **CI en cada PR**: lint (ruff) + tests + build de imagen + **security gate**.
  Cualquier check en rojo = merge bloqueado → **Andon Cord**.
- **`main` protegida**: requiere PR, aprobación de un compañero que **no**
  escribió el código (review cruzado) y checks en verde.
- **CD en cada merge a main**: imagen a Docker Hub taggeada con el **SHA del
  commit** (trazabilidad: cada imagen mapea a un commit exacto) y deploy a
  Render con esa imagen exacta — no `latest`. Login al registry con access
  token, nunca la contraseña de la cuenta.

## Extra — Security gate (DevSecOps)

- Cuarto check del CI: **Trivy** (CVEs en deps), **pip-audit** (CVEs Python),
  **hadolint** (buenas prácticas del Dockerfile), **gitleaks** (secrets
  commiteados).
- **El argumento estrella**: apenas se activó encontró **9 CVEs reales** —
  8 en `starlette`, una dependencia **transitiva que nadie eligió** (viene
  adentro de FastAPI). Eso demuestra el valor del escaneo automático: estaba
  en la imagen de producción sin que nadie lo supiera. Se corrigió todo
  (FastAPI 0.139.0, starlette 1.3.1 pineada, pytest 9.1.1, pip pineado en el
  Dockerfile) y se verificó **localmente** antes de pushear.
- Es **shift-left**: la seguridad como check automático en el PR, no como
  auditoría al final. Cubre OWASP API8 (Security Misconfiguration).
- Detalle completo, cronología y preguntas frecuentes en `DEVSECOPS.md`.

## Fase 6 — Monitoreo

- Agente New Relic envolviendo uvicorn (`newrelic-admin run-program` en el
  `CMD` del Dockerfile), configurado 100% por env vars.
- Dashboard: hits, throughput, tiempos de respuesta, tasa de error.
  `/error-test` genera errores a propósito para demostrar la visibilidad.
- **Trazas encadenadas**: `@function_trace` en service y client → un span por
  capa: router → service → client → llamada HTTP externa. Acá se cierra el
  círculo con la arquitectura en capas de Fase 1.

---

## Anclaje teórico (lo van a preguntar)

| Concepto | Dónde está en el TP |
|---|---|
| **The Three Ways** | *Flujo*: pipeline CI/CD automatizado · *Feedback*: New Relic + CI en cada PR · *Aprendizaje continuo*: iteración por PRs con review |
| **Andon Cord** | Check rojo = merge bloqueado; la línea se frena ante el defecto, sea un test o un CVE |
| **Shift-left** | Tests y seguridad corren en el PR (minutos), no en producción (incidente) |
| **Reproducibilidad** | Todo pineado: deps Python, imagen de Postgres, `pip` del build, y las propias GitHub Actions |
| **Lean** | Producto mínimo viable, cero features que no suman a la rúbrica |

---

## Frases que ganan la defensa

- "La imagen se taggea con el SHA del commit — puedo decir exactamente qué
  código corre en producción ahora mismo."
- "El gate de seguridad encontró 8 CVEs en una dependencia que ningún
  integrante eligió — ese es el punto del escaneo automático."
- "La separación en capas no es estética: es lo que hace que las trazas de
  New Relic muestren la cadena completa."
- "Cada decisión rara del Dockerfile tiene un comentario con el link a la
  documentación oficial que la justifica."

---

## Demos en vivo (orden sugerido)

1. Un PR real mergeado con los checks en verde + la config de branch
   protection.
2. Docker Hub con los tags por SHA → el mismo SHA deployado en Render.
3. Dashboard de New Relic + pegarle a `/error-test` → el error aparece en el
   dashboard.
4. Una traza encadenada de `GET /pokemon/{name}` (router → service → client →
   PokeAPI).
5. **Seguridad**: rama descartable con `requests==2.25.0` → abrir PR → el
   check `security` falla y GitHub bloquea el merge → cerrar el PR. Nada se
   rompe: es el equivalente en seguridad al `/error-test` del monitoreo.