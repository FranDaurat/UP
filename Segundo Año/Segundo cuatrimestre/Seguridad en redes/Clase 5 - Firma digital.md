-- -

## Problemática actual

- Un documento electrónico puede ser **alterado fácilmente**.
    
- No siempre se puede determinar con certeza su **autor**.
    
- Puede ser objeto de **repudio** (el emisor puede negar haberlo enviado).
    

---

## Objetivo

Lograr que un documento firmado electrónicamente tenga la **misma validez técnica y legal** que un documento firmado en papel.

---

## Requisitos para ello

- **Autenticar al autor**: asegurar que se puede atribuir el documento a su verdadero firmante.
    
- **Integridad**: verificar que el contenido no fue modificado luego de firmado.
    
- **No repudio**: que el autor no pueda negar su participación.
    

---

## Firma digital – Definición

Solución tecnológica que **autentica el origen** y **verifica la integridad** de un mensaje, demostrable ante terceros.

**Propiedades**:

- **Autenticidad** → identifica al autor.
    
- **Integridad** → evidencia si hubo alteraciones.
    
- **Exclusividad** → la firma solo puede estar bajo control del firmante.
    
- **No repudio** → el autor no puede negar la autoría.
    

---

## Funciones hash – Características

- Entrada de cualquier tamaño, salida de tamaño fijo.
    
- **Libre de colisiones** → no deben existir dos entradas con el mismo hash.
    
- **Irreversible** → no se puede deducir la entrada a partir del hash.
    
- **Rápidas** de calcular.
    

---

## Qué se puede firmar digitalmente

- Formularios web, imágenes, música.
    
- Bases de datos, discos, CDs, DVDs.
    
- Sitios web, transacciones electrónicas, e-mails.
    
- Documentos de texto, planillas, programas y software.
    
- Archivos en general.
    

---

## Medidas de seguridad según el caso

- **Documento sin firma ni cifrado** → sin protección.
    
- **Documento firmado pero no cifrado** → asegura autenticidad, integridad y no repudio.
    
- **Documento cifrado pero no firmado** → asegura confidencialidad.
    
- **Documento firmado y cifrado** → combina todas las garantías: autenticidad, integridad, no repudio y confidencialidad.
    

---

## Problema

- **Criptografía simétrica** → rápida, pero insegura para compartir la clave (¿cómo se la das al otro sin que alguien la intercepte?).
    
- **Criptografía asimétrica** → segura para compartir claves, pero lenta para cifrar grandes volúmenes de datos.
    

---

## Solución: Criptografía híbrida

Combina lo mejor de las dos:

1. El **emisor** genera una **clave simétrica de sesión** (clave temporal para este intercambio).
    
2. Con esa clave **cifra los datos** (rápido y eficiente).
    
3. Luego, esa **clave de sesión** se cifra con la **clave pública del receptor** (asimétrica).
    
4. El **receptor** usa su **clave privada** para recuperar la clave de sesión.
    
5. Con la clave de sesión, **descifra los datos**.
    

---

## Ventajas

- **Rapidez** → los datos grandes se cifran con simétrica.
    
- **Seguridad** → la clave simétrica se protege con asimétrica.
    
- **Uso real** → es lo que hacen protocolos como **TLS/SSL**, **VPN** o **PGP**.
    

---

 Ejemplo cotidiano:  
Cuando entrás a una página **HTTPS**:

- Tu navegador y el servidor intercambian una clave de sesión usando criptografía asimétrica.
    
- Una vez establecida, toda la comunicación (texto, imágenes, etc.) viaja cifrada con simétrica (porque es más rápida).
    

---
# Resumen: Certificados, Autoridades, Marco Normativo y Estándares

## Certificados digitales

- Un **certificado de clave pública** vincula una identidad (persona, empresa, servidor) con su clave pública, garantizado por un certificador.
    
- Contiene:
    
    - Clave pública del titular.
        
    - Identidad (nombre, empresa, dominio).
        
    - Periodo de validez.
        
    - Número de serie.
        
    - Firma digital de la Autoridad Certificante (AC).
        

## Estructura X.509 v3

Incluye:

- Versión, número de serie, algoritmo de firma.
    
- Emisor, periodo de validez, sujeto.
    
- Información de clave pública (algoritmo + clave).
    
- Identificadores únicos opcionales.
    
- Extensiones opcionales.
    
- Firma digital del certificado.
    

## Tipos de certificados

1. **Personales** → acreditan identidad de una persona.
    
2. **De persona jurídica** → identifican empresas o instituciones.
    
3. **De sitio seguro** → usados en servidores web (ej. HTTPS).
    
4. **De firma de código** → garantizan autoría e integridad del software.
    

## Autoridades Certificantes (AC)

- Terceras partes confiables que validan la información de los certificados.
    
- Ejemplos:
    
    - Estado → agentes públicos.
        
    - Empresas → empleados.
        
    - Bancos → clientes.
        
    - Colegios profesionales → matriculados.
        

## Infraestructura de Clave Pública (PKI)

Conjunto de **leyes, hardware, software, redes, personal y procedimientos** que permiten usar de manera segura la criptografia de clave pública

Tambien permite:
- Identificación segura en transacciones digitales.
    
- Garantizar autoría e integridad de documentos.
    

## Actores en un sistema de firma digital

1. Quien firma (suscriptor).
    
2. Quien verifica.
    
3. Quien certifica la relación firma-persona.
    
4. Quien controla el sistema.
    

## Ley 25.506 (Argentina)

- Establece la **infraestructura nacional de firma digital**.
    
- Define:
    
    - Presunción de autoría e integridad (firma digital).
        
    - Equivalencia funcional con la firma manuscrita.
        
    - Firma electrónica → invierte la carga de prueba.
        
    - Neutralidad tecnológica.
        
    - Reconocimiento de certificados extranjeros.
        
    - Protección al suscriptor.
        

### Normas complementarias

- **Decreto 2628/02**: reglamenta la ley.
    
- **Decreto 160/04**: crea la Comisión Asesora Nacional de Firma Digital.
    
- **Decreto 409/05**: Subsecretaría de Gestión Pública como autoridad de aplicación.
    
- **Resolución 399E/16**: reglas para otorgar/revocar licencias a certificadores.
    

## Firma digital

- Resultado de aplicar un algoritmo matemático con datos bajo control exclusivo del firmante.
    
- Permite:
    
    - Identificar al firmante.
        
    - Detectar alteraciones posteriores.
        
- Debe ser verificable por terceros.
    

## Solicitud de un certificado

1. Comunicación con la AC.
    
2. Generación de claves pública/privada.
    
3. Clave privada se guarda bajo control exclusivo.
    
4. Envío de la pública a la AC.
    
5. Validación (ej. correo electrónico).
    
6. Emisión del certificado.
    
7. Archivo de la clave pública.
    

## Estándares criptográficos

- **PKCS**: estándares de criptografía de clave pública.
    
- **CRL**: lista de certificados revocados (cuando se compromete una clave antes de expirar).
    
- **OCSP**: protocolo online que verifica en tiempo real si un certificado es válido o revocado.
    

## CRL vs OCSP

- **CRL**: lista estática, descargable, de certificados revocados.
    
- **OCSP**: consulta online, dinámica, que informa en el momento el estado de un certificado.
    

## Conclusión sobre cifrado

- **Simétrico (clave secreta):** rápido, ideal para cifrar grandes volúmenes de datos.
    
- **Asimétrico (clave pública):** más lento, pero permite intercambio de claves y firmas digitales.
    
- **Solución híbrida:**
    
    - Usar cifrado simétrico para la información.
        
    - Usar cifrado asimétrico para firmar e intercambiar la clave de sesión.
        

---

