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

select pr.cedula ,SUM(CAST(pr.monto as numeric)) as monto_total_prestamo
from persona pe, prestamo pr
where pr.cedula=pe.cedula
group by pr.cedula

select count(pe.cedula) as total_personas
from persona pe
where cast(pe.numero_hijos as numeric)>1

