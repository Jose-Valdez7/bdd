create table estudiantes(
	cedula char(10) not null, 
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)

select nombre,apellido from estudiantes where nombre like 'M%' or apellido like '%z'

select nombre from estudiantes where cedula like '%32%' or cedula like '18%'

select nombre,apellido from estudiantes where cedula like '%06' or cedula like '17%'