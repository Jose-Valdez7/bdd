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

insert into profesores (codigo,nombre,direccion,telefono)
values (01,'Francisco','Av. la Paz 10-81','0987657381');
insert into profesores (codigo,nombre,direccion,telefono)
values (02,'Juan','Av. Luis Cordero','0934561237');
insert into profesores (codigo,nombre,direccion,telefono)
values (03,'Richard','Av. Grnl. Enrriquez','098765467');
insert into profesores (codigo,nombre,direccion,telefono)
values (04,'Angela','Puente 3','0998076123');
insert into profesores (codigo,nombre,direccion,telefono)
values (05,'Alicia','Av. Gonzales Suarez','0945621345');
insert into profesores (codigo,nombre,direccion,telefono)
values (06,'Estefania','Av. Guayaquil','0987654300');
insert into profesores (codigo,nombre,direccion,telefono)
values (07,'Jose','Av. Pichincha','0977778989');
insert into profesores (codigo,nombre,direccion,telefono)
values (08,'Renato','Av. 6 de Diciembre','0909009877');
insert into profesores (codigo,nombre,direccion,telefono)
values (09,'Francisco','Av. Eloy Alfaro','0943533451');
insert into profesores (codigo,nombre,direccion,telefono)
values (10,'Andy','Av. Italia','0967678900');

select * from profesores

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('1231234567','Eduardo','Mosquera','edu@gmail.com','22/05/1994',01);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('1231234568','Jose','Valdez','josx@gmail.com','29/12/1998',03);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('1231234569','Mariana','Marrique','mamarri@gmail.com','12/06/1999',01);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('1231234566','Angely','Velez','ange@gmail.com','23/03/1996',03);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('1231234565','Juan','Andrango','jugo@gmail.com','17/04/2000',07);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('1231234564','Hugo','Sanchez','hugz@gmail.com','15/04/1998',06);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('1231234563','Renato','Butilier','buti@gmail.com','19/07/1997',10);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('1231234562','Sandra','Martinez','sand@gmail.com','05/09/1996',09);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('1782903567','Daisy','Hernandez','SofiJz22@gmail.com','2000-04-12',05);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('1728930471','Sofia','Jimenez','MoniMar15@gmail.com','2001-01-22',02);

select * from estudiantes

