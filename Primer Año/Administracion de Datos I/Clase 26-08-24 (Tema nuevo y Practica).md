-- -
## 0 Forma normal
**Empleado:**
*Legajo*
nombre
apellido
cod_localidad
nombre_loc
cod_proyecto
nombre_proyecto
cant_hs
-- -
## 1ra Forma Normal
Paso A) Copiar la estructura repetitiva:
Paso B) Elegir clave primaria
Paso C) Pasar la clave foranea

*Legajo(FK)*
*cod_proyecto*
nombre_proyecto
cant_hs

*Legajo*
Nombre
apellido
cod_localidad
nombre_loc
### Dependencias funcionales:
Legajo ---> ya determina de por si el nombre, apellido y el cod_localidad ya que es un identificador unico.

cod_localidad ---> ya determina el nombre_loc

cod_proyecto ---> determina el nombre_proyec

legajo, cod_proyecto ---> determina cant_hs

-- -
## 2da Formal normal
*Legajo*
nombre
apellido
cod_localidad
nombre_loc

*cod_proyecto*
nombre_proyecto

*Legajo*(FK)
*cod_proyecto*(FK)
cant_hs

### Dependencias parciales:

-- - 
## 3ra Forma Normal

**Localidad**
*cod_localidad*
nombre_localidad

**Empleado**
*legajo*
nombre
apellido
cod_localidad(FK)

**Proyecto**
*cod_proyecto*
nombre_proy

**Asignacion**
*legajo*(FK)
*cod_proy*(FK)
cant_hs
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

