-- -

## 1. Conceptos Fundamentales

- **Criptografía:** ciencia que protege información mediante algoritmos matemáticos y claves, garantizando **confidencialidad, integridad, autenticidad y no repudio**.
    
- **Texto plano:** mensaje original legible.
    
- **Criptograma:** mensaje cifrado ilegible sin clave.
    
- **Cifrar/descifrar:** transformar entre texto plano ↔ criptograma.
    
- **Codificar ≠ Cifrar:** codificar es una conversión fija (ej. ASCII), no protege.
    
- **Criptología:** ciencia que abarca criptografía + criptoanálisis.
    
- **Principios de Kerckhoff:** la seguridad debe residir en la clave, no en el algoritmo.
    

---

## 2. Criptografía Antigua

- **Cifrado César:** sustitución monoalfabética por rotación de letras (ej. corrimiento 3).
    
- **Sustitución:** reemplazo de letras por otras o símbolos. Puede ser mono o polialfabética (ej. Vigenère).
    
- **Transposición:** reordenar caracteres sin cambiarlos, genera difusión.
    
- **Ejemplos históricos:**
    
    - Atbash, Albam (ROT13) → cifrados hebreos.
        
    - Escítala espartana → clave = circunferencia del cilindro.
        
    - Disco de Alberti → base de cifradores polialfabéticos.
        
    - Cuadro de Polybios → pares numéricos.
        
    - Máquina Enigma → rotores electromecánicos usados en WWII.
        

---

## 3. Criptografía Moderna

### Clasificación

- **Según clave:**
    
    - **Simétrica (clave secreta):** misma clave para cifrar/descifrar.
        
    - **Asimétrica (clave pública):** par de claves diferentes (pública + privada).
        
- **Según tratamiento:**
    
    - **Por bloque:** agrupa bits en bloques fijos (ej. AES, DES).
        
    - **Por flujo:** cifra bit a bit con un keystream (ej. RC4, A5).
        

### Funciones comunes

- **Cifrado de datos.**
    
- **Intercambio de claves.**
    
- **Firma digital/autenticación.**
    

---

## 4. Criptografía Simétrica

- **Características:** rápida, eficiente, pero requiere intercambio seguro de claves.
    
- **Problemas:**
    
    - Distribución de claves en canales inseguros.
        
    - Escalabilidad: con _n_ participantes se requieren n(n−1)/2 claves.
        
- **Tipos:**
    
    - **Bloque:** usa bloques de longitud fija, requiere vector de inicialización (IV).
        
    - **Flujo:** cifra cada bit/caracter con keystream pseudoaleatorio.
        
- **Algoritmos principales:**
    
    - **DES:** 64 bits → inseguro desde 1998.
        
    - **3DES:** DES aplicado tres veces; más robusto, pero lento.
        
    - **AES (Rijndael):** estándar actual (128/192/256 bits). Opera en rondas con SubBytes, ShiftRows, MixColumns y AddRoundKey.
        
    - Otros: Serpent, Twofish, Camelia.
        

---

## 5. Criptografía Asimétrica

- **Concepto:** utiliza un par de claves ligadas matemáticamente (pública para cifrar, privada para descifrar).
    
- **Ventaja:** resuelve el problema de distribución de claves.
    
- **Desventaja:** mucho más lenta que la simétrica.
    
- **Usos:**
    
    - **Cifrado de datos** (ej. Alice cifra con clave pública de Bob).
        
    - **Generación segura de claves** (ej. Diffie-Hellman → hoy con curvas elípticas ECC).
        
    - **Firma digital** (clave privada firma, clave pública verifica).
        
- **Ejemplos:** RSA, ElGamal, ECC.
    

---

## 6. Algoritmos y Protocolos Importantes

- **Algoritmo de Feistel:** divide texto en bloques y aplica rondas con subclaves (base de DES, 3DES).
    
- **RSA:** basado en factorización de primos grandes.
    
- **Diffie-Hellman:** intercambio de claves en canales inseguros. Vulnerable a MITM sin autenticación.
    
- **ECC:** seguridad equivalente con claves mucho más cortas.
    
- **AES:** bloque de 128 bits, clave 128/192/256 bits. Estándar global de cifrado.
    

---

## 7. Criptoanálisis

- **Definición:** técnicas para romper cifrados y recuperar claves/mensajes.
    
- **Ejemplos:**
    
    - Análisis de frecuencias en sustituciones monoalfabéticas.
        
    - Ataques de fuerza bruta sobre DES.
        
    - MITM en Diffie-Hellman clásico.
        

---

La criptografía evolucionó desde sistemas simples de sustitución y transposición en la antigüedad hasta complejos algoritmos matemáticos modernos. Hoy se combinan:

- **Simétrica (AES) para velocidad y eficiencia.**
    
- **Asimétrica (RSA, ECC, Diffie-Hellman) para intercambio de claves, autenticación y firmas.**  
    Ambas se integran en protocolos como **TLS/SSL**, garantizando comunicaciones seguras en Internet.
    

---

