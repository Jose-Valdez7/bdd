create table prestamo(
	cedula char(10), 
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garate varchar(40),
	constraint prestamo_pk primary key(cedula)
)

select * from prestamo
delete from persona

create table persona(
	cedula char(10) not null, 
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal(10,2),
	fecha_nacimiento date not null,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint persona_pk primary key(cedula)
)

select * from persona

alter table prestamo
add constraint prestamo_persona_fk
foreign key (cedula)
references persona(cedula)

insert into persona (cedula,nombre,apellido,fecha_nacimiento)
values ('1798293041','Francisco','Alcivar','22/01/2002');
insert into persona (cedula,nombre,apellido,fecha_nacimiento)
values ('1798293091','Eduarda','Juares','12/11/2000');
insert into persona (cedula,nombre,apellido,fecha_nacimiento)
values ('1798293081','Irene','Ordones','31/12/2008');
insert into persona (cedula,nombre,apellido,fecha_nacimiento)
values ('1798293048','Pepe','Duque','26/10/2005');
insert into persona (cedula,nombre,apellido,fecha_nacimiento)
values ('1798293040','Patricio','Liar','15/04/2008');
insert into persona (cedula,nombre,apellido,fecha_nacimiento)
values ('1798293061','Alexander','Sato','17/03/2004');
insert into persona (cedula,nombre,apellido,fecha_nacimiento)
values ('1798293022','Alvaro','King','05/06/2001');
insert into persona (cedula,nombre,apellido,fecha_nacimiento)
values ('1798293000','Estefania','Curry','07/08/1995');
insert into persona (cedula,nombre,apellido,fecha_nacimiento)
values ('1798293099','Manuela','James','04/03/1996');
insert into persona (cedula,nombre,apellido,fecha_nacimiento)
values ('1798293059','Sean','Messi','31/08/2002');

select * from persona

insert into prestamo (cedula,monto)
values ('1798293041',300.50);
insert into prestamo (cedula,monto)
values ('1798293099',323.54);
insert into prestamo (cedula,monto)
values ('1798293000',312.50);
insert into prestamo (cedula,monto)
values ('1798293022',314.77);
insert into prestamo (cedula,monto)
values ('1798293059',134.99);
insert into prestamo (cedula,monto)
values ('1798293081',1000.00);
insert into prestamo (cedula,monto)
values ('1798293061',866.44);
insert into prestamo (cedula,monto)
values ('1798293048',789.50);
insert into prestamo (cedula,monto)
values ('1798293040',780.77);
insert into prestamo (cedula,monto)
values ('1798293091',123.50);


select * from prestamo

