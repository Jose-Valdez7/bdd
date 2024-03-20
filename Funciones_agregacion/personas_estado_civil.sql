--agregacion
--operacion sobre un conjunto de resultados
--count

select count(ec.codigo)
from personas per, estado_civil ec
where per.estado_civil_codigo=ec.codigo
and estado_civil_codigo='U'

--AVG-- promedio solo para tipo de datos numericos
select AVG(cast(cantidad_ahorrada as numeric)) 
from personas

select AVG(cast(cantidad_ahorrada as numeric))
from personas per, estado_civil ec
where per.estado_civil_codigo=ec.codigo
and estado_civil_codigo='U'

--MAX --MIN --SUM
select MAX(cast(cantidad_ahorrada as numeric)) 
from personas

--IGUal para los demas soslo se cambia el tipo de resultaod que se requiere

--group by
select estado_civil_codigo, count(*) from personas
group by estado_civil_codigo

select estado_civil_codigo, sum(numero_hijos) from personas
group by estado_civil_codigo

