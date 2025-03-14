-- -
1. **Selección (σ - Sigma)**: Extrae filas que cumplen una condición específica.
    
    - **SQL**: `SELECT * FROM empleados WHERE salario > 5000;`
    - **Álgebra Relacional**: σ(salario > 5000)(empleados)
2. **Proyección (π - Pi)**: Selecciona columnas específicas de una tabla.
    
    - **SQL**: `SELECT nombre, salario FROM empleados;`
    - **Álgebra Relacional**: π(nombre, salario)(empleados)
3. **Renombramiento (ρ - Rho)**: Asigna un nuevo nombre a una relación o a sus atributos.
    
    - **SQL**: `SELECT nombre AS empleado_nombre FROM empleados;`
    - **Álgebra Relacional**: ρ(empleado_nombre/nombre)(empleados)
4. **Unión (∪ - Union)**: Combina las filas de dos tablas que tienen la misma estructura.
    
    - **SQL**: `SELECT * FROM empleados1 UNION SELECT * FROM empleados2;`
    - **Álgebra Relacional**: empleados1 ∪ empleados2
5. **Intersección (∩ - Intersection)**: Obtiene las filas comunes entre dos tablas.
    
    - **SQL**: `SELECT * FROM empleados1 INTERSECT SELECT * FROM empleados2;`
    - **Álgebra Relacional**: empleados1 ∩ empleados2
6. **Diferencia (− - Difference)**: Devuelve las filas presentes en la primera tabla pero no en la segunda.
    
    - **SQL**: `SELECT * FROM empleados1 EXCEPT SELECT * FROM empleados2;`
    - **Álgebra Relacional**: empleados1 − empleados2
7. **Producto cartesiano (× - Cartesian Product)**: Combina todas las filas de dos tablas.
    
    - **SQL**: `SELECT * FROM empleados, departamentos;`
    - **Álgebra Relacional**: empleados × departamentos
8. **Join (⨝ - Join)**: Combina filas de dos tablas basadas en una condición.
    
    - **SQL**: `SELECT * FROM empleados JOIN departamentos ON empleados.dep_id = departamentos.id;`
    - **Álgebra Relacional**: 
		    emp |x| categoria
			emp.categoria = categoria.categ
---
Practica:

1.
σ(PERFUME)
precio > 1000
2.
σ(Proveedor)
localidad = "Capital Federal"
3.
e alias esencia
m alias mezcla
pe alias perfume

[σ(e)
e.nombre_ese = "jazmin"] |x| M --> mjzaz

π (pe |x| mjaz)
pe.cod_perfume
pe.nombre_perf
pe.precio
pe.stock
pe.cod_perfume = cod_perfume

6.
E alias esencia
m alias mezcla
pe alias perfume
P alias proveedor
L alias localidad

π cod_esencia,nombre_ese,costo,cod_provee​(σ nombre_localidad="Olivos"​(E|x|(P|x|L)))

