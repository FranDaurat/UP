- --
## 1. Elementos básicos del diagrama

- El **sistema** se representa con un **rectángulo**.
    
    - Si el sistema tiene un nombre, se coloca **dentro del rectángulo**.
        
- **Dentro del rectángulo** se incluyen todas las **funcionalidades del sistema** (casos de uso).
    
- **Fuera del rectángulo** se colocan los **actores** que interactúan con el sistema.
    
- Se utiliza la siguiente notación visual:
    
    - **Actor** → figura de persona fuera del sistema.
        
    - **Caso de uso** → óvalo con el nombre de la funcionalidad dentro del sistema.
        
    - **Interacción** → línea que conecta al actor con el caso de uso.
        

---

## 2. Utilidad de los diagramas y narrativas

- Sirven para **validar con los usuarios** cómo funciona el sistema.
    
- Se acompañan de **narrativas de casos de uso**, que describen los pasos de cada escenario.
    
- Importante:
    
    - No se habla de **programación**, **bases de datos** ni de cuestiones técnicas.
        
    - Solo se describe **qué hace el sistema** y **cómo interactúan los actores**.
        

---

## 3. Ejemplo didáctico

- Se utiliza el ejemplo de **“cliente cenando”** para mostrar relaciones opcionales/obligatorias.
    
- Este ejemplo no sería sistematizable porque:
    
    - El cliente no interactúa con un sistema → no puede ser actor.
        
    - La acción de cenar no puede informatizarse.
        

---

## 4. Relaciones entre casos de uso

### Relación de **Extensión** (`<<extend>>`)

- Se usa cuando una parte de la funcionalidad **no siempre ocurre**.
    
- El caso extendido es un **caso de uso independiente**.
    
- No necesariamente se origina por un error.
    
- **Cómo se representa:**
    
    - En el **diagrama** → una flecha punteada con la etiqueta `<<extend>>` que apunta desde el caso que extiende al caso base.
        
    - En la **narrativa** → se expresa con condiciones:
        
        - `Paso. Si [condición], acción.`
            
        - Ejemplo: _“3. Si [el cliente desea café], ejecutar CU2 Cliente pidiendo café”_.
            
- Puede aparecer tanto en el **flujo normal** como en el **flujo alternativo**.
    

---

### Relación de **Inclusión** (`<<include>>`)

- Se utiliza cuando varias funcionalidades **comparten un proceso común**.
    
- El caso incluido también es un **caso de uso independiente**.
    
- Se ejecuta **siempre** cuando se dispara el caso que lo incluye.
    
- **Cómo se representa:**
    
    - En el **diagrama** → una flecha punteada con la etiqueta `<<include>>` que apunta hacia el caso común.
        
    - En la **narrativa** → se escribe como:
        
        - `Paso. Ejecutar CU.`
            
        - Ejemplo: _“3. Ejecutar CU2 Cliente pidiendo cuenta”_.
            
- A diferencia de la extensión, la inclusión es **obligatoria**.
    

---

## 5. Ejemplo aplicado – Sistema de cajas de supermercado

- Caso de uso principal: **CU1 Cajero atendiendo cliente**.
    
- Existen acciones especiales:
    
    - Si el cajero debe **cancelar una venta ya cerrada**, requiere autorización de un supervisor.
        
- **Representación en narrativa:**
    
    - `3. Si [cajero cancela venta], ejecutar CU Supervisor autorizando cancelación.`
        
    - `4. Ejecutar CU Cajero cerrando venta.`
        
- **Representación en diagrama:**
    
    - El caso _“Cajero atendiendo cliente”_ se conecta con:
        
        - `<<extend>>` → _“Supervisor autorizando cancelación”_ (opcional).
            
        - `<<include>>` → _“Cajero cerrando venta”_ (obligatorio).
            

---

## 6. Organización de los diagramas

- Se pueden crear **varios diagramas de casos de uso**, agrupando funcionalidades según su categoría, para mayor claridad:
    
    - Ejemplo: uno para **seguridad**, otro para **configuración**, etc.
        
- Recomendación: cada diagrama debe ser lo más claro posible para que **cualquiera pueda entenderlo**.
    
- Importante:
    
    - Los diagramas de casos de uso son **estáticos**.
        
    - No representan **secuencia de ejecución** ni orden cronológico de los casos.
        

---

# Conclusión general

El documento explica **cómo representar y narrar casos de uso** en UML de manera formal:

1. El sistema se dibuja como un rectángulo con casos de uso dentro y actores fuera.
    
2. Las narrativas describen el funcionamiento **sin mencionar detalles técnicos**.
    
3. Se distinguen claramente dos tipos de relaciones:
    
    - **Extensión (`<<extend>>`)** → funcionalidad opcional, con condición en la narrativa.
        
    - **Inclusión (`<<include>>`)** → funcionalidad obligatoria, siempre presente.
        
4. Ejemplo aplicado: sistema de cajas de supermercado, con relaciones de extensión (supervisor) e inclusión (cierre de venta).
    
5. Los diagramas deben organizarse por áreas funcionales y recordarse que son **estáticos**.
    

