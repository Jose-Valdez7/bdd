create table personas(
	cedula char(10) not null, 
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura numeric,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key(cedula)
)

insert into personas (cedula,nombre,apellido,estado_civil_codigo)
values ('1722340594','Leonel', 'Messi');

insert into personas (cedula,nombre,apellido)
values ('0934758123','Richard', 'Carapaz');

insert into personas (cedula,nombre,apellido)
values ('2345672819','Cristiano', 'Ronaldo');

insert into personas (cedula,nombre,apellido)
values ('1722340738','Mateo', 'Messi');

select * from personas

