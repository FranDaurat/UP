-- - 
### 0FN

| cod_articulo     |
| ---------------- |
| desc_articulo    |
| cod_marca_art    |
| nombre_marca     |
| precio_vta       |
| stock_actual_art |
| cod_pieza        |
| nombre_pieza     |
| cod_pais_origen  |
| nombre_pais      |
-- - 
### 1FN

**Articulo:**

| *cod_articulo    |
| ---------------- |
| desc_articulo    |
| cod_marca_art    |
| nombre_marca     |
| precio_vta       |
| stock_actual_art |
Pieza y Articulo: Primera forma normal ya que todos los atributos no primos tienen un solo valor para la clave primaria.
**Pieza:**


| *cod_pieza         |
| ------------------ |
| nombre_pieza       |
| cod_pais_origen    |
| nombre_pais        |
| *Cod_articulo (FK) |
-- -
### 2FN

**Articulo:** Esta en 2FN ya que tiene clave simple

| *cod_articulo    |
| ---------------- |
| desc_articulo    |
| cod_marca_art    |
| nombre_marca     |
| precio_vta       |
| stock_actual_art |

Pieza: Esta en 2FN ya que tiene clave simple

| *cod_pieza      |
| --------------- |
| nombre_pieza    |
| cod_pais_origen |
| nombre_pais     |

Articulo/Pieza:  Esta en 2FN ya que no tiene elementos NO primos

| *cod_articulo (FK) |
| ------------------ |
| *cod_pieza(FK)     |
-- -
### 3FN

atriculo: 3FN ya que 

| *cod_articulo     |
| ----------------- |
| desc_articulo     |
| cod_marca_art(FK) |
| precio_vta        |
| stock_actual_art  |
marca: Esta en 3FN porque tiene un solo atributo no primo

| *cod_marca_art |
| -------------- |
| nombre_marca   |
pais: Esta en 3FN porque tiene un solo atributo no primo

| *cod_pais_origen |
| ---------------- |
| nombre_pais      |
pieza: Esta en 3FN porque no hay dependencias entre atributos no primos

| *cod_pieza          |
| ------------------- |
| nombre_pieza        |
| cod_pais_origen(FK) |
Pieza/Articulo: Esta en 3FN porque no hay atributos no primos

| *cod_articulo (FK) |
| ------------------ |
| *cod_pieza(FK)     |
-- - 
### 0FN

| cod_sucursal          |
| --------------------- |
| nombre_suc            |
| cod_mascota           |
| nombre_mascota        |
| dni_dueño_mascota     |
| nombre_dueño          |
| apellido_dueño        |
| matricula_veterinario |
| nombre_veterinario    |
| apellido_veterinario  |
-- - 
### 1FN
sucursal ---> Esta en primer forma normal ya que solo hay una clave simple

| *cod_sucursal |
| ------------- |
| nombre_suc    |
mascota ---> Esta en 1FN ya que cada atributo no primo tiene un solo valor para su clave compuesta

| *cod_mascota      |
| ----------------- |
| nombre_mascota    |
| dni_dueño_mascota |
| nombre_dueño      |
| apellido_dueño    |
| *cod_sucursal(FK) |
veterinario ---> Esta en 1FN ya que no hay atributos multievaluados

| *matricula_veterinario |
| ---------------------- |
| nombre_veterinario     |
| apellido_veterinario   |
| cod_sucursal(FK)       |
-- -
### 2FN

| *cod_sucursal |
| ------------- |
| nombre_suc    |

| *cod_mascota      |
| ----------------- |
| nombre_mascota    |
| dni_dueño_mascota |
| nombre_dueño      |
| apellido_dueño    |

| *cod_sucursal (FK) |
| ------------------ |
| *cod_mascota (FK)  |

| *matricula_veterinario |
| ---------------------- |
| nombre_veterinario     |
| apellido_veterinario   |
| cod_sucursal(FK)       |
-- - 
### 3FN

| *cod_sucursal |
| ------------- |
| nombre_suc    |

| *cod_mascota          |
| --------------------- |
| nombre_mascota        |
| dni_dueño_mascota(FK) |

| *dni_dueño_mascota |
| ------------------ |
| nombre_dueño       |
| apellido_dueño     |

| *cod_sucursal (FK) |
| ------------------ |
| *cod_mascota (FK)  |

| *matricula_veterinario |
| ---------------------- |
| nombre_veterinario     |
| apellido_veterinario   |
| cod_sucursal(FK)       |
