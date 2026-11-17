# Resumen primer parcial — Ingeniería Inversa

## Contexto
- Materia: Ingeniería Inversa. Profe: Ariel Cessario (CSIRT Argentina). Alumno: Francisco.
- Parcial 1 = analizar malware `putty.exe` (putty sospechoso/backdoored) y responder 10 preguntas.
- Entrega: jueves ~4-5pm profe habilita examen en plataforma (preguntas de ensayo). Pegar respuestas ahí.
- Informe PDF opcional: puede sumar nota, pero corrige la respuesta pegada en pantalla.
- Corrección: profe se para como CLIENTE. Nada de "porque me pareció". Justificar (ej: por qué SHA-256).

## Archivos
- `primer-parcial/preguntas.txt` — 10 preguntas (ver abajo).
- `primer-parcial/putty_7z` — 7z SIN password. Contiene `putty.exe` (1,545,216 bytes, fecha interna 2021-10-02).
  - Hash del 7z: `5258590e6f6f1f45932bf67227f458c6c162c85003a5cad340773a73338251ab`
  - Q1 pide hash del **putty.exe extraído**, no del 7z.

## Preguntas
1. Hash del archivo analizado. ¿Arquitectura? ¿Fecha de compilación?
2. Listar secciones del archivo.
3. Listar strings relevantes.
4. ¿Está empaquetado?
5. Listar imports relevantes.
6. Describir detonación inicial. ¿Funciona el programa? ¿Algo extraño durante ejecución?
7. Información importante de procmon.
8. Información importante de wireshark.
9. Información importante de TCPView.
10. ¿Qué tipo de malware es? + otros hallazgos.

## Trampas avisadas por profe
- Entropía alta ⇒ sugiere empaquetado pero NO siempre (puede ser ofuscado/cifrado). Pregunta que mayoría contesta mal.
- Diferencia: ofuscado = contra el que lee el código; cifrado = contra el que no tiene clave.
- RawSize = espacio en disco; VirtualSize = descomprimido en memoria.

## VM / ejecución
- Ejecutar SOLO en FLARE VM (Windows).
- Host: carpeta `vmshare/` compartida. En VM aparece en `Z:\vmshare\` o `\\vmware-host\Shared Folders\vmshare\`.
- NO ejecutar desde la carpeta compartida. Copiar `putty_7z` al disco de la VM y extraer ahí (`7z x putty_7z`).
- Después de copiar: desactivar shared folder antes de detonar.
- Snapshot de la VM antes de la detonación.
- Q6-Q10 dinámicas: ejecutar con procmon + wireshark + TCPView capturando. Cuidado con red (putty posible C2).
- Q1-Q5 estáticas: se pueden hacer en Linux también, pero en clase practicaron en VM.

## Estado
- Falta: extraer en VM, correr análisis completo (estático + dinámico), redactar respuestas, pegar en plataforma el jueves.
- Examen: jueves ~Sep 3, entre 4 y 5pm habilita plataforma. Malware y preguntas ya entregados (sábado).

## Fuentes
- Transcripciones de clase: `Material/transcripts/clase1-4.txt` (formato, logística, trampas).
- Decisión fecha examen al final de clase4.
