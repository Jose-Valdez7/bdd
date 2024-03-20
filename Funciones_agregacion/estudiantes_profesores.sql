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

select es.codigo_profesor, count(es.codigo_profesor)AS total_estudiantes
from profesores pr, estudiantes es
where es.codigo_profesor=pr.codigo
group by es.codigo_profesor

select es.fecha_nacimiento, ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE)-EXTRACT(YEAR FROM es.fecha_nacimiento )))AS edad_promedio
from estudiantes es
group by es.fecha_nacimiento