create table estudiantes(
	cedula char(10) not null, 
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)

select * from estudiantes
alter table estudiantes
add column codigo_profesor int 

create table profesores(
	codigo int, 
	nombre varchar(50) not null,
	direccion varchar(200),
	telefono char(10) not null,
	constraint profesores_pk primary key(codigo)
)

delete from estudiantes
select * from profesores

alter table estudiantes
add constraint estudiantes_profesores_fk
foreign key (codigo_profesor)
references profesores(codigo)


select es.codigo_profesor,es.nombre,es.apellido from estudiantes es, profesores pr
where es.codigo_profesor=pr.codigo
and es.apellido like '%n%'

select es.cedula,es.nombre,es.apellido,es.email,es.fecha_nacimiento,es.codigo_profesor from estudiantes es, profesores pr
where es.codigo_profesor=pr.codigo
and pr.nombre='Francisco'