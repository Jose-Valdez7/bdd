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


select pe.cantidad_ahorrada,pr.monto,pr.garate from prestamo pr, persona pe
where pr.cedula=pe.cedula
and cast(pr.monto as numeric) between 100.00 and 1000.00

select pe.cedula,pe.nombre,pe.apellido,pe.estatura,pe.fecha_nacimiento,pe.hora_nacimiento,pe.cantidad_ahorrada,pe.numero_hijos from prestamo pr, persona pe
where pr.cedula=pe.cedula
and pe.nombre='Sean'
