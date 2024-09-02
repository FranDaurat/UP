-- -
## 0 Forma normal
### ¿En que consiste?
- Consiste en la estructura completa sin marcar claves primarias, ni foraneas ni nada (Es la estructura hecha sin ninguna modificacion)

**Sucursal:**

| Nombre_Suc           |
| -------------------- |
| Cod_Post_Suc         |
| Localidad_Suc        |
| Cod_Articulo         |
| Descripcion_Articulo |
| Precio_Unitario      |
| Cantidad_Stock       |
| Nro_sucursal         |

-- -
## 1ra Forma Normal
### ¿En que consiste?
- Consiste en eliminar estructuras repetitivas.

1.  Paso A) Copiar la estructura repetitiva:
2. Paso B) Elegir clave primaria
3. Paso C) Pasar la clave foranea

*Atributos primos* ---> Atributos que **SON** la clave primaria
*Atributos **NO** Primos* ---> Atributos que **NO** son la clave primaria

| *Nro_suc*     |
| ------------- |
| nombre_suc    |
| cod_post_suc  |
| localidad_suc |
Es primera forma normal ya que no tiene grupos repetitivos y ya que todos los atributos no primos tienen un solo valor para la clave primaria.


| *nro_suc*(FK)    |
| ---------------- |
| **cod_articulo** |
| desc_art         |
| precio_unitario  |
| cant_stock       |
(Al ser nro_sucursal multi evaluado lo marco como clave primaria)
Es primera forma nomal porque no tiene estructuras repetitivas
-- -
## 2da Formal normal
### ¿En que consiste?
- Consiste en eliminar dependencias parciales.
- (Analizar atributos que dependan de parte de la clave ---> Analizar entidades con CLAVE COMPUESTA) ---> Todos los atributos deben depender de la clave completa
- Se eliminan dependencias **PARCIALES** de la **clave primaria**. 

| *Nro_suc*     |
| ------------- |
| nombre_suc    |
| cod_post_suc  |
| localidad_suc |
Esta en 2FN orque tiene clave simple

| *nro_suc*(FK)         |
| --------------------- |
| **cod_articulo** (FK) |
| Cant_stock            |
Esta en 2FN porque todos los atributos dependen de la clave primaria completa

| *cod_art*(FK)   |
| --------------- |
| Desc_art        |
| precio_unitario |
Esta en 2FN porque tiene clave simple

-- - 
## 3ra Forma Normal
### ¿En que consiste?
Consiste en eliminar dependencias transitivas ---> Analizar dependencias entre atributos NO CLAVE.

| *Nro_suc*        |
| ---------------- |
| nombre_suc       |
| cod_post_suc(FK) |
Esta en 3FN porque no hay dependencias transitivas.

| *cod_post_suc* |
| -------------- |
| localidad_suc  |
Esta en 3FN porque tiene un solo atributo no clave

| *nro_suc*(FK)         |
| --------------------- |
| **cod_articulo** (FK) |
| Cant_stock            |
Esta en 3FN ya que tiene un solo atributo no clave.

| *cod_art*(FK)   |
| --------------- |
| Desc_art        |
| precio_unitario |
Esta en 3FN porque no hay dependencia entre atributos no clave.

-- -
# Ej:

### 0 Forma normal
nro_pedido
fecha_pedido
cod_cliente
nombre_cliente
cod_articulo
nombre_artic
precio_articulo
cant
### Dependencias funcionales
nro_pedido ---> fecha,cod_cliente
cod_client ---> nombre_cliente
cod_articulo ---> precio_articulo, nombre_articulo
nro_pedido,cod_articulo --> cant
### 1ra Forma normal
*nro_pedido*
cod_articulo(FK)
fecha_pedido
cod_cliente
nombre_cliente

estructura repetitiva:
*cod_articulo*
nombre_artic
precio_articulo
cant

### 2da Forma normal



### 3ra Forma normal
pedido:
*Nro_pedido*
cod_cliente(FK)
fecha

cliente:
*cod_cliente*
nombre_cliente

articulos
*cod_articulo*
precio_articulo
nombre_articulo

nro_pedido/cod_artic
*nro_pedido*(FK)
*cod_articulo*(FK)
cant
-- -

### 1era Forma Normal

*codigo_carrera*
nombre_carrera
*dni_decano*
nombre_decano
apellido_decano

*codigo_materia*
*codigo_carrera*(FK)
nombre_materia
### 2da Forma Normal

*codigo_carrera*
nombre_carrera
dni_decano
nombre_decano
apellido_decano

*codigo_materia*
nombre_materia

*cod_materia*(FK)
*cod_carrera*(FK)

### 3era Forma Normal

*codigo_carrera*
nombre_carrera
dni_decano(FK)

*dni_decano*
nombre_decano
apellido_decano

*codigo_materia*
nombre_materia

*cod_materia*(FK)
*cod_carrera*(FK)

-- -
### 1era Forma Normal
*cod_hotel*
nombre_hotel
cod_localidad_hotel(FK)
nombre_localidad
cod_categoria_hotel(FK)
descripc_categ_hotel

*nro_habitacion*
capacidad_habitacion
precio_diario_hab
piso_habitacion

### 2da Forma Normal

*cod_hotel*
nombre_hotel
cod_localidad_hotel(FK)
cod_categoria_hotel(FK)

*cod_localidad_hotel*
nombre_localidad

*cod_categoria_hotel*
descripc_categ_hotel

*nro_habitacion*
capacidad_habitacion
precio_diario_hab
piso_habitacion

### 3ra Formal

*cod_hotel*
nombre_hotel
cod_localidad_hotel(FK)
cod_categoria_hotel(FK)

*cod_localidad_hotel*
nombre_localidad

*cod_categoria_hotel*
descripc_categ_hotel


*nro_habitacion*(FK)
*cod_hotel*(FK)
capacidad_habitacion
precio_diario_hab
piso_habitacion

-- -

