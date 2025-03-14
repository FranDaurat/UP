-- -
### Algebra relacional 
- Lenguaje basado en algebra y teoria de conjuntos.
- Vamos a usar SQL server express

Primer parcial --> 16/9
Segundo parcial --> 28/10

--- 
# Catálogo de una Base de Datos

Un catálogo de base de datos es como una lista de contenido que describe todo lo que hay en la base de datos (metadatos). Incluye información sobre:

1. **Tablas**: 
   - Conjuntos de datos organizados en filas y columnas.
   - Ejemplo: tabla de "usuarios" con columnas como "nombre" y "correo electrónico".

2. **Columnas**: 
   - Las características de los datos en una tabla.
   - Ejemplo: en la tabla "usuarios", las columnas podrían ser "ID", "nombre", "edad".

3. **Índices**: 
   - Herramientas para encontrar datos rápidamente.
   - Ejemplo: un índice en la columna "ID" para buscar usuarios por su identificación.

4. **Usuarios y Permisos**: 
   - Quién puede ver o modificar los datos.
   - Ejemplo: algunos usuarios pueden solo ver los datos, otros pueden editarlos.

Un catálogo ayuda a entender qué información está almacenada y cómo está organizada dentro de la base de datos.

### Redundancia Controlada:
- La redundancia de datos controlada **se produce cuando se duplican o repiten deliberadamente algunos datos para mejorar la fiabilidad, la disponibilidad o el rendimiento de los datos**. Lo ideal es que haya la menor redundancia posible.
---
# Instrucciones de un Administrador de Transacciones

Un administrador de transacciones es responsable de gestionar y coordinar transacciones en una base de datos para asegurar la consistencia y la integridad de los datos. A continuación se presentan las instrucciones básicas que se manejan:

## 1. **BEGIN TRANSACTION**
   - **Descripción**: Inicia una nueva transacción.
   - **Propósito**: Marca el punto de partida de una serie de operaciones que deben tratarse como una unidad.
   - **Ejemplo**:
     ```sql
     BEGIN TRANSACTION;
     ```

## 2. **COMMIT**
   - **Descripción**: Confirma todas las operaciones realizadas desde el inicio de la transacción.
   - **Propósito**: Guarda permanentemente los cambios realizados durante la transacción.
   - **Ejemplo**:
     ```sql
     COMMIT;
     ```

## 3. **ROLLBACK**
   - **Descripción**: Revierte todas las operaciones realizadas desde el inicio de la transacción.
   - **Propósito**: Deshace los cambios y restaura el estado previo de los datos.
   - **Ejemplo**:
     ```sql
     ROLLBACK;
     ```

## 4. **SAVEPOINT**
   - **Descripción**: Crea un punto de guardado dentro de una transacción.
   - **Propósito**: Permite definir un punto específico al cual se puede retroceder parcialmente.
   - **Ejemplo**:
     ```sql
     SAVEPOINT savepoint_name;
     ```

## 5. **ROLLBACK TO SAVEPOINT**
   - **Descripción**: Revierte la transacción hasta un punto de guardado específico.
   - **Propósito**: Deshace parcialmente los cambios hasta el punto de guardado, sin afectar el resto de la transacción.
   - **Ejemplo**:
     ```sql
     ROLLBACK TO SAVEPOINT savepoint_name;
     ```

## 6. **SET TRANSACTION**
   - **Descripción**: Establece las características de una transacción (como el nivel de aislamiento).
   - **Propósito**: Configura parámetros específicos para la transacción en curso.
   - **Ejemplo**:
     ```sql
     SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
     ```

Estas instrucciones permiten al administrador de transacciones asegurar que las operaciones en la base de datos se manejen de manera coherente y segura, garantizando que las transacciones sean atómicas, consistentes, aisladas y duraderas (ACID).

---
DBA (Database Administrator) --> Usuario principal el cual suele usar una cuenta como root.

**Distinción clave:**
- **DBA (Database Administrator)**: Persona o rol que gestiona las bases de datos, asegura su rendimiento y realiza tareas de mantenimiento.

- **Usuario Principal (root)**: En sistemas como MySQL y MariaDB, este es el usuario administrador predeterminado con todos los permisos.
----
# Sublenguajes de un SGBD

Los sublenguajes de un Sistema de Gestión de Bases de Datos (SGBD) son conjuntos de comandos y estructuras de lenguaje utilizados para manejar y manipular datos. Los principales sublenguajes incluyen:

## 1. **Data Definition Language (DDL)**
   - **Descripción**: Define la estructura de la base de datos, como la creación y modificación de tablas y otros objetos.
   - **Comandos Comunes**:
     - `CREATE`: Crea nuevos objetos en la base de datos.
     - `ALTER`: Modifica la estructura de los objetos existentes.
     - `DROP`: Elimina objetos de la base de datos.
   - **Ejemplo**:
     ```sql
     CREATE TABLE empleados (
       id INT PRIMARY KEY,
       nombre VARCHAR(50),
       puesto VARCHAR(50)
     );
     ```

## 2. **Data Manipulation Language (DML)**
   - **Descripción**: Manipula los datos almacenados en la base de datos.
   - **Comandos Comunes**:
     - `SELECT`: Recupera datos de la base de datos.
     - `INSERT`: Inserta nuevos datos.
     - `UPDATE`: Modifica datos existentes.
     - `DELETE`: Elimina datos.
   - **Ejemplo**:
     ```sql
     INSERT INTO empleados (id, nombre, puesto)
     VALUES (1, 'Juan Perez', 'Gerente');
     ```

## 3. **Data Control Language (DCL)**
   - **Descripción**: Controla el acceso a los datos en la base de datos.
   - **Comandos Comunes**:
     - `GRANT`: Concede permisos a los usuarios.
     - `REVOKE`: Revoca permisos de los usuarios.
   - **Ejemplo**:
     ```sql
     GRANT SELECT ON empleados TO usuario1;
     ```

## 4. **Transaction Control Language (TCL)**
   - **Descripción**: Gestiona las transacciones en la base de datos para asegurar la integridad de los datos.
   - **Comandos Comunes**:
     - `COMMIT`: Confirma una transacción.
     - `ROLLBACK`: Deshace una transacción.
     - `SAVEPOINT`: Define un punto de guardado dentro de una transacción.
   - **Ejemplo**:
     ```sql
     COMMIT;
     ```

## 5. **Query Language (QL)**
   - **Descripción**: Permite realizar consultas a los datos almacenados.
   - **Nota**: A menudo se considera parte del DML, especialmente con el comando `SELECT`.

Estos sublenguajes proporcionan un conjunto de herramientas para definir, manipular, controlar y gestionar transacciones en la base de datos. Cada uno tiene un propósito específico y juega un papel crucial en el funcionamiento de un SGBD.

---
# Diagrama Entidad-Relación (D.E.R)

Un Diagrama Entidad-Relación (D.E.R) es un esquema visual que representa las entidades, sus atributos y las relaciones entre ellas en un sistema de bases de datos. Es una herramienta fundamental en el diseño de bases de datos.

## Componentes de un D.E.R

1. **Entidades**
   - **Descripción**: Objetos o conceptos que se pueden identificar de manera única en el contexto del sistema.
   - **Representación**: Rectángulos.
   - **Ejemplo**: `Cliente`, `Producto`, `Pedido`.

2. **Atributos**
   - **Descripción**: Propiedades o características de una entidad.
   - **Representación**: Elipses conectadas a su entidad.
   - **Ejemplo**: Para la entidad `Cliente`, los atributos podrían ser `nombre`, `dirección`, `teléfono`.
   - Pueden ser: nominados, descriptivos o referenciales.
  

3. **Relaciones**
   - **Descripción**: Describen cómo las entidades están relacionadas entre sí.
   - **Representación**: Rombos conectados a las entidades.
   - **Ejemplo**: Una relación `Compra` entre las entidades `Cliente` y `Producto`.

4. **Cardinalidad**
   - **Descripción**: Indica el número de instancias de una entidad que pueden estar asociadas con instancias de otra entidad.
   - **Tipos**:
     - Uno a uno (1:1)
     - Uno a muchos (1:N)
     - Muchos a muchos (M:N)
   - **Ejemplo**: Un `Cliente` puede realizar múltiples `Pedidos` (1:N).
---
# Clave Foránea y Clave Primaria en Bases de Datos

## Clave Primaria (Primary Key)
Una **clave primaria** es un atributo o un conjunto de atributos que identifica de manera única a cada fila en una tabla de base de datos. Las características principales de una clave primaria son:

- **Unicidad**: Cada valor en la clave primaria debe ser único para cada registro.
- **No Nulidad**: Los valores de la clave primaria no pueden ser nulos.
- **Identificación Unívoca**: Permite identificar de manera única cada registro en la tabla.

**Ejemplo**:
```sql
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Email VARCHAR(50)
);
```
En este ejemplo, `ID` es la clave primaria de la tabla `Clientes`.
## Clave Foránea (Foreign Key)

Una **clave foránea** es un atributo o conjunto de atributos en una tabla que establece una relación con la clave primaria de otra tabla. La clave foránea se utiliza para asegurar la integridad referencial entre las tablas, lo que significa que los valores en la clave foránea deben coincidir con los valores de una clave primaria en otra tabla.

**Ejemplo**:
```sql
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    Fecha DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);
```

En este ejemplo, `ClienteID` es una clave foránea en la tabla `Pedidos` que hace referencia a la clave primaria `ID` de la tabla `Clientes`. Esto establece una relación entre los pedidos y los clientes, asegurando que cada pedido esté asociado con un cliente válido.

## Relación entre Clave Foránea y Clave Primaria

Una clave foránea hace referencia a una **clave primaria** (o en algunos casos, a una **clave única**) en otra tabla. La clave foránea se utiliza para vincular dos tablas y asegurar que los datos sean consistentes y que las relaciones entre los datos se mantengan correctamente.

La **clave foránea** garantiza que para cualquier valor de la columna (o columnas) de la clave foránea, exista un valor correspondiente en la clave primaria de la tabla referenciada. Este mecanismo es fundamental para mantener la integridad referencial en la base de datos.

**Una clave forànea hace referencia a una clave primaria.**