-- -
Conflicto:
*cod_conflicto*
nombre_conflicto


paises_afectados:
*cod_pasi*
nombre_pais


paises/conflicto:
*cod_conflicto*(FK)
*nombre_pais*(FK)
fecha_entrada_pais

Causa:
*cod_causa*
nombre_causa

conflicto/soldado:
*cod_conflicto*(FK)
*cod_soldado*(FK)
fecha_entrada_conflicto
fecha_salida_conflicto

Soldado:
*cod_soldado*
cod_pais(FK)
nro_documento
nombre
edad

Rangos
*cod_rango*
nombre_rango

condec/pais:
*cod_condec*(FK)
*cod_pais*(FK)


Condecoraciones:
*cod_condec*
descripcion
-- - 

NroSucursal
NombreSucursal
TelefonoSuc
CuilRepartidor
NombreRepartidor
ApellidoRepartidor
CodLocalidadRepartidor
NombreLocalidad
CantHorasRepartSuc
CodArticulo
DescAritculo
CodMarca
NombreMarca

-- -
### 1 FN:
1. Copio estructuras repetitivas
2. Elijo claves primarias
3. Paso la clave Foranea


*NroSucursal*
NombreSucursal
TelefonoSuc

Elijo NroSucursal como clave primaria ya que lo pide en las dependencias funcionales

NroSucursal (FK)
*CuilRepartidor*
NombreRepartidor
ApellidoRepartidor
CodLocalidadRepartidor
NombreLocalidad
CantHorasRepartSucuc

Como el Cuil es unico, lo elijo como clave primaria y como cada repartidor corresponde a una sola sucursal le paso NroSucursal como FK

*CodArticulo*
*NroSucursal* (FK)
DescAritculo
CodMarca
NombreMarca

Como el CodArticulo es unico, lo elijo como clave primaria y como cada articulo puede estar en varias sucursales, la clave primaria queda compuesta.
-- - 
### 2 FN:

*NroSucursal*
NombreSucursal
TelefonoSuc

Tienen un solo atributo primo por lo que ya esta en 2FN

NroSucursal (FK)
*CuilRepartidor*
NombreRepartidor
ApellidoRepartidor
CodLocalidadRepartidor
NombreLocalidad

*CodArticulo*
DescArticulo
CodMarca
NombreMarca

Dependen solo de una parte de la clave primaria (CodArticulo)

*CodArticulo* (FK)
*NroSucursal* (FK)

Le agrego la clave foranea para que se relacione con la otra estructura