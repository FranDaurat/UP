-- -
# Gramáticas Formales

## Definición

Una **gramática formal** es un modelo matemático que describe la **sintaxis** de un lenguaje, indicando cómo se generan todas las cadenas bien formadas.

## Componentes

Una gramática se define como una **cuádrupla**:

G=${ΣT,ΣN,S,P}G = \{\Sigma_T, \Sigma_N, S, P\}$

- **$\Sigma_T$ – Terminales:**  
    Símbolos finales que forman las palabras del lenguaje.  
    _Ejemplo:_ `a`, `b` (se escriben en minúsculas).
    
- **$\Sigma_N$ – No terminales:**  
    Símbolos auxiliares que se reemplazan por otros símbolos.  
    _Ejemplo:_ `S`, `A`, `B` (se escriben en mayúsculas).
    
- **$S$ – Símbolo inicial:**  
    Punto de partida para generar las cadenas.
    
- **$P$ – Producciones:**  
    Reglas de la forma:

**En resumen:**  
Una gramática formal define **qué cadenas pertenecen a un lenguaje** y **cómo generarlas** paso a paso desde el símbolo inicial.