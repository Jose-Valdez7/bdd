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


select re.cedula_empleado,em.nombre,em.fecha from registros_entrada re, empleado em
where re.codigo_empleado=em.codigo_empleado
and re.fecha between '01/08/2023' and '31/08/2023'
or re.cedula_empleado like '17%' and re.hora between '08:00' and '12:00'
or re.fecha between '06/10/2023' and '20/10/2023' and re.cedula_empleado like '08%' and re.hora between '09:00' and '13:00'

select re.codigo_registro,em.nombre from registros_entrada re, empleado em
where re.codigo_empleado=em.codigo_empleado
and em.codigo_empleado='2201'