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

Pieza:

| *cod_pieza          |
| ------------------- |
| nombre_pieza        |
| cod_pais_origen(FK) |
| *cod_articulo (FK)  |

Pieza/Pais

| *cod_pieza (FK)  |
| ---------------- |
| *cod_pais_origen |
| nombre_pais      |
-- -
### 3FN

