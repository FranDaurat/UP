- --
## ¿Qué es un caso de uso?

- **Secuencia de interacciones** entre un **sistema** y **alguien/algo** que utiliza sus servicios.
    
- Representa **funcionalidades** del sistema y cómo se alcanzan sus objetivos.
    
---

## Actores

- **Actor**: agrupación uniforme de personas, sistemas o máquinas que interactúan con el sistema **de la misma manera**.
    
- **Actor principal**: dispara el **primer paso** del caso; **debe aparecer** en el **nombre**, en la **lista de actores** y en el **paso 1**.
    
- **Actor secundario**: participa sin iniciar el caso (poco frecuente).
    
- **Disparadores programados**: si la funcionalidad se ejecuta por horario/tarea (cron), el “actor” es **tiempo/reloj**.
    
- **Regla clave**: **el sistema nunca es un actor**; otros **sistemas externos sí** pueden ser actores del nuestro.
    

---

## Identificación y trazabilidad

- Los casos de uso **son** las funciones del sistema.
    
- Deben **trazarse** con **requerimientos** (funcionales y de calidad) para medir **impacto** ante cambios.
    
    - Un requerimiento puede mapear a **uno o más** casos de uso (y viceversa).
        

---

## Partes de la narrativa

1. **Nombre**: incluir código (p.ej., “CU 1.1”) + **Actor principal en gerundio** (“Usuario ingresando al sistema”).
    
2. **Descripción**: propósito del caso.
    
3. **Actores**: marcar el **(P)** al principal.
    
4. **Precondición**: condición **previa** para ejecutar el caso (lo que dispara el flujo).
    
5. **Flujo normal**: pasos para lograr el objetivo.
    
6. **Flujos alternativos**: desvíos por **validaciones fallidas** u otras variantes; deben **referenciar** el paso del flujo normal que los origina.
    
7. **Poscondición**: estado del sistema tras el **flujo normal**.
    

**Buenas prácticas al redactar pasos**

- En cada paso debe quedar claro **quién actúa** (“Sistema …” / “Usuario …”).
    
- **No** escribir “el usuario hace clic” si antes no se indicó que el **sistema mostró/habilitó** ese botón.
    
- Los **mensajes** del sistema se escriben **textuales entre comillas** (“Usuario no existe”).
    
- Se pueden **agrupar** pasos del mismo actor para concisión.
    
- Las **validaciones** pertenecen al **flujo normal**; si fallan, se deriva a un **flujo alternativo** (p.ej., “4.1 PIN erróneo, …”).
    

---

## Plantilla rápida (para copiar/pegar)

```markdown
**Nombre:** CU X.Y <Actor principal> <acción en gerundio>
**Descripción:** …
**Actores:** <Actor principal> (P), <Secundarios?>

**Precondición:** …

**Flujo normal:**
1. <Actor principal> …
2. Sistema …
3. <Actor> …
4. Sistema valida …
5. …

**Flujos alternativos:**
A. De 4: “condición…”
   A.1 Sistema muestra “<mensaje>”.
   A.2 Volver a paso <n> / Fin

**Poscondición:** …
```

---

## Ejemplos (resumidos)

### Cajero automático — “Cliente retirando efectivo”

- **Actores:** Cliente (P).
    
- **Precondición:** Cliente con tarjeta.
    
- **Flujo normal (extracto):**
    
    1. Cliente inserta tarjeta.
        
    2. Sistema solicita PIN.
        
    3. Cliente ingresa PIN.
        
    4. Sistema valida PIN.
        
    5. Cliente elige “Extraer efectivo”.
        
    6. Cliente ingresa monto.
        
    7. Sistema actualiza saldo.
        
    8. Sistema entrega dinero e imprime comprobante.
        
- **Alternativos (ejemplos):** PIN erróneo; 3 fallos → retiene tarjeta; fondos insuficientes → expulsa tarjeta.
    
- **Poscondición:** Cliente retiró efectivo.
    

### Login — “Usuario ingresando al sistema”

- **Claves:** el sistema **muestra** campos y botón **antes** de que el usuario haga clic; mensajes **textuales**; validaciones en normal y desvíos en alternativos (“Usuario no existe”).
    

### Supermercado “Night” — línea de cajas

- **Requerimientos funcionales detectados:**
    
    - **RF1 Abrir caja** (conteo e informe de dinero inicial).
        
    - **RF2 Atender clientes** (escanear o ingresar códigos; total; cobro; vuelto; cancelar si no alcanza).
        
    - **RF3 Cerrar caja** (arqueo, sobres, dinero que queda).
        
    - **RF4 Informar ventas** (gerente reporta día previo; requiere cajas cerradas).
        
- **CU “Cajero atendiendo cliente” (extracto):**
    
    - Normal: iniciar venta → ingresar productos → total → ingresar dinero recibido → sistema calcula vuelto y abre cajón → fin.
        
    - Alternativos: repetir ingreso de productos si “hay más”.
        

---

## Checklist de calidad rápida

-  El **actor principal** inicia el **paso 1** y aparece en el **nombre**.
    
-  **Sistema ≠ actor** (solo sistemas **externos** pueden serlo).
    
-  **Precondición** es verdaderamente **previa** (no una validación del flujo).
    
-  **Validaciones** en **flujo normal**; desvíos en **alternativos** con **referencia** al paso original.
    
-  Mensajes del sistema **entre comillas**.
    
-  Pasos dejan claro **quién** actúa; botones **mostrados/habilitados** antes de clic.
    
-  **Trazabilidad** con requerimientos documentada.
    
