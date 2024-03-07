create table estudiantes(
	cedula char(10) not null, 
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1231234567','Eduardo','Mosquera','edu@gmail.com','22/05/1994')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1231234568','Jose','Valdez','josx@gmail.com','29/12/1998')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1231234569','Mariana','Marrique','mamarri@gmail.com','12/06/1999')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1231234566','Angely','Velez','ange@gmail.com','23/03/1996')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1231234565','Juan','Andrango','jugo@gmail.com','17/04/2000')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1231234564','Hugo','Gutierrez','hugz@gmail.com','15/04/1998')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1231234563','Renato','Butilier','buti@gmail.com','19/07/1997')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1231234562','Sandra','Vizuete','sand@gmail.com','05/09/1996')

select nombre,cedula from estudiantes

select nombre from estudiantes where cedula like '17%'

select nombre,apellido from estudiantes where nombre like 'A%'