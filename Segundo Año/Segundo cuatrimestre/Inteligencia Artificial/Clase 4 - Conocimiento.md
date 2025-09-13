 -- -
 
## 1. Conocimiento y su Representación
### Definición

La **representación del conocimiento** es el proceso de transformar el conocimiento de un dominio en un **lenguaje simbólico** para que pueda ser procesado computacionalmente.  
Es un área central de la **IA simbólica** (en contraste con la IA sub-simbólica, donde no existe relación directa entre conocimiento y representación).

### Objetivo

Capturar las **características esenciales** del dominio de un problema para que la información sea accesible a los procedimientos de resolución.

### Aspectos

- **Sintaxis:** formas de construir y combinar los elementos del lenguaje.
    
- **Semántica:** relación entre los elementos del lenguaje y su interpretación en el dominio.
    

### Propiedades deseables en un esquema de representación

1. **Adecuación representacional:** capacidad para representar todo el conocimiento de un dominio.
    
2. **Adecuación inferencial:** permite deducir conocimiento nuevo a partir del ya existente.
    
3. **Eficiencia inferencial:** incluye heurísticas que agilizan la inferencia → busca un coste computacional aceptable.
    
4. **Eficiencia adquisicional:** facilidad para incorporar nuevo conocimiento (manual o automático).
    
5. **Transparencia:** facilidad de lectura e interpretación por humanos.
    
6. **Reusabilidad:** aplicable a diferentes tipos de problemas.
    

### Notas comparativas

- En **biología**, el conocimiento está en estructuras neuronales interconectadas.
    
- En **computadoras**, en estructuras simbólicas (estados eléctricos y magnéticos).
    
- En **humanos**, de forma natural se representa mediante imágenes, lenguaje hablado y escrito. También se desarrollaron sistemas: literal, numérico, estadístico, estocástico, lógico.
    

La **ingeniería cognoscitiva** toma modelos de psicología cognitiva y los adapta a computadoras.

---

## 2. Ontología

- En informática: esquema conceptual **exhaustivo y riguroso** dentro de un dominio.
    
- Finalidad: facilitar comunicación e intercambio de información entre sistemas y entidades.
    
- **Usos comunes:** IA y representación del conocimiento.
    
- **Ontologías fundacionales:** vocabularios fijos para describir todo lo demás.
    
- Problema: generan representaciones pobres en algunos dominios → se crean esquemas especializados.
    
- **Valor comercial:** se compite por definir estándares → “guerra semántica/ontológica” (Peter Murray-Rust).
    

---

## 3. Lógica Simbólica Formal

Formas de representación basadas en lógica:

- **Lógica proposicional**
    
- **Lógica de predicados**
    
- **Reglas de producción**
    

### 3.1 Lógica Proposicional

- **Más simple y antigua.**
    
- Representa aserciones del mundo real con proposiciones simples (V/F).
    
- Usa **conectivos proposicionales**: AND, OR, etc.
    
- Limita la expresividad: no analiza las palabras individuales de la sentencia.
    

**Ejemplo:**

- Proposiciones: `hoy_es_viernes`, `ayer_llovió`, `hace_frío`.
    
- Proposición compuesta: `hoy_es_viernes ∧ hace_frío`.
    

Una proposición compuesta válida se llama **fórmula bien formada (wff)**.

---

### 3.2 Lógica de Predicados

- Supera limitaciones de la proposicional.
    
- Expresa relaciones entre objetos y sus atributos.
    
- **Predicado:** cualidad, relación o acción sobre objetos.
    
- **Argumentos:** términos del predicado (constantes o variables).
    

**Ejemplos:**

- `mortal(juan_carlos)`
    
- `ama(roberto, vanesa)`
    
- `lee(alex, novela)`
    
- **Axiomas:** predicados asumidos como verdaderos.
    
- **Reglas de inferencia:** garantizan derivar solo consecuencias verdaderas.
    

**Cuantificadores:**

- ∀ (universal): válido para todos los objetos.
    
    - Ej: ∀X $niño(X) ⇒ le_gusta(X, helados)$
        
- ∃ (existencial): válido para al menos un objeto.
    
    - Ej: $∃X [mamífero(X) ⇒ nace(X, vivo)]$
        

**Función de Skolem:** reemplaza cuantificadores existenciales para simplificar representaciones.

---

### 3.3 Unificación

Proceso para determinar si dos expresiones lógicas (predicados/patrones) coinciden.

- Si el predicado no tiene variables → debe coincidir exactamente con un axioma.
    
- Si tiene variables → se sustituyen valores hasta igualar.
    
- Se aplica recursivamente y luego se evalúan los conectivos lógicos.
    

---

### 3.4 Reglas de Producción

- Propuestas por **Newell y Simon (1970s)**.
    
- Representan conocimiento en forma de **“situación → acción”**.
    
- Usadas en **sistemas expertos**, gramáticas formales, teoría de autómatas.
    
- **Propiedades:**
    
    - Modularidad.
        
    - Incrementalidad.
        
    - Modificabilidad.
        
    - Transparencia.
        

**Ejemplo:**

```
IF animal es carnívoro AND color café AND tiene rayas
THEN animal es tigre
```

---

## 4. Formas Estructuradas

### 4.1 Redes Semánticas

- Representan conceptos y relaciones como **grafos**.
    
- Los nodos = elementos semánticos.
    
- Aristas = relaciones (simples o dirigidas).
    
- Usadas en mapas conceptuales y mentales.
    
- **Inferencia:** se realiza mediante propiedades de herencia entre nodos.
    

---

### 4.2 Frames (Estructuras marco)

- Consideran resolución de problemas como “rellenar huecos” en descripciones incompletas.
    
- Almacenan conocimiento sobre clases o individuos en **frames**.
    
- Organizados jerárquicamente en **taxonomías**.
    

**Tipos:**

- Frames clase (genéricas).
    
- Frames instancia (individuos).
    

**Capacidades:**

- Documentar modelos (ej: maquinaria).
    
- Restringir valores de atributos.
    
- Modularidad → fácil expansión.
    
- Sintaxis clara y consistente.
    
- Soporte para herencia de información.
    

---

### 4.3 Representación Orientada a Objetos

- Similar a frames, pero enfatiza el **cálculo** (mensajes entre objetos).
    
- Diferencia: POO resalta el procesamiento, frames la representación.
    
- Se pueden combinar: un frame puede verse como clase de objeto, con ranuras y facetas.
    

---

## 5. PROLOG

### Origen

Lenguaje de programación **lógico e interpretado** (de _PROgrammation en LOGique_).  
Nació en proyectos de clasificación de lenguajes naturales.

### Elementos básicos

- **Cláusulas:** hechos y reglas.
    
    - Regla: `Cabeza :- Cuerpo.`
        
    - Hecho: `gato(tom).`
        
- Programas = base de datos de predicados.
    

### Reglas sintácticas

- Constantes: empiezan en minúscula.
    
- Variables: empiezan en mayúscula o subrayado.
    
- Predicados terminan en punto.
    

### Variables

- **Lógicas:** no son variables clásicas, representan valores desconocidos.
    
- **Anónimas (_):** distintas entre sí aunque se escriban igual.
    

### Operadores

- `,` = AND
    
- `;` = OR
    
- `A = B` (unificación).
    
- `A \= B` (falso si unifican).
    
- `A is B` (evalúa B y lo compara).
    
- Comparadores: =:=, ==, <, >, <=, >=.
    

### Predicados y objetivos

- Predicado = unidad ejecutable.
    
- Objetivo = llamada a predicado → éxito/fallo.
    
- Variables libres pueden quedar ligadas al cumplirse un predicado.
    

---

### Ejemplo de programa completo en Prolog

```prolog
% Hechos
man(adam).
man(peter).
man(cain).
man(abel).
woman(eve).
woman(mary).
woman(anna).
mother(eve, mary).
mother(mary, anna).
father(adam, peter).
father(adam, cain).
father(peter, mary).

% Reglas
is_mother(M) :- mother(M, _).
is_parent(P) :- father(P, _) ; mother(P, _).
is_grandfather(G) :- father(G, H), is_parent(H).
```

Permite inferir relaciones familiares (madres, padres, abuelos).

---

## 6. Bibliografía

- **Russell, S. J. (2009).** _Inteligencia Artificial: un enfoque moderno_ (3ª ed.). Prentice Hall Hispanoamericana.
    

---

# ✅ Conclusión Global

El texto expone **todos los métodos principales para representar conocimiento en IA**, desde **ontologías** y **lógicas** (proposicional/predicados) hasta **formas estructuradas** (redes semánticas, frames, objetos) y **lenguajes de programación lógicos (Prolog)**.  
Cada método busca equilibrar **adecuación, eficiencia, transparencia y reusabilidad** para modelar el mundo real de forma útil para máquinas y humanos.

---

👉 ¿Querés que ahora te lo arme como un **mapa conceptual jerárquico en Markdown/Obsidian** con indentación tipo esquema (para que veas rápido conexiones), o preferís que te lo pase como un **cuadro comparativo** de todas las representaciones?