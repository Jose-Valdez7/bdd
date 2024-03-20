create table registros_entrada(
	codigo_registro int not null, 
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)

delete from registros_entrada
select * from registros_entrada
alter table registros_entrada
add column codigo_empleado int not null

create table empleado(
	codigo_empleado int not null, 
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key(codigo_empleado)
)

select * from empleado

alter table registros_entrada
add constraint registros_entrada_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)


select re.cedula_empleado, count(re.codigo_registro) as total_registros_entrada
from registros_entrada re, empleado em
where re.codigo_empleado=em.codigo_empleado
group by re.cedula_empleado

select MIN(re.fecha) as fecha_minima, MAX(re.fecha) as fecha_maxima
from registros_entrada re
