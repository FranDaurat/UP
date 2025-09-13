-- -

- El **diagrama de actividades (DA)** representa gráficamente la narrativa de un caso de uso, aunque sin precondiciones ni postcondiciones.

## Ejemplo: actualización de stock

- Usuario ingresa valor de stock.
    
- El sistema:
    
    - Verifica si el depósito es **facturable** (bifurcación).
        
    - Envía un mail al usuario **al mismo tiempo** (procesamiento paralelo con _fork_).
        
- El _fork_ se cierra con un _join_, que avanza al fin solo cuando ambas entradas se ejecutan.
    

## Errores comunes

- **No cerrar bifurcación con unificación**: el _join_ no se completa porque espera más entradas de las que recibe.
    
- **Actividad sin salida**: queda pendiente y el diagrama no finaliza.
    
- **No indicar el actor**: debe especificarse si la acción la hace el sistema o el usuario.
    

## Alternativas de modelado

- Se puede omitir el uso de _join_ o unificación en algunos casos.
    
- Usar **calles (swimlanes)** permite mostrar claramente qué actor ejecuta cada actividad.
    

---

**En síntesis**: el DA muestra el flujo de un caso de uso con bifurcaciones, paralelismos (_fork/join_) y responsabilidades (usuario vs sistema). Es clave evitar errores de cierre y siempre indicar quién ejecuta cada acción.
