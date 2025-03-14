-- -
Listar el codigo y nombre de las esencias que no son del proveedor: "Con razon social sanches hermanos"

e alias esencias
p alias proveefores

p |x| e

e |x| σ (p)
razon-social 
	!= 
"sanchez hermanos"

e.cod-provee = p.cod_prov
 
π (e.cod_esencia, e.nombre_ese)


Esencias que no se usan en el perfume llamado matrix

e alias esencias
p alias perfumer

σ(PERFUMES)
nombre-perf="matrix" 