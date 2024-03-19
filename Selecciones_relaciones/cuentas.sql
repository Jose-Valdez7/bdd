create table cuentas(
	numero_cuenta char(5) not null, 
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)
delete from cuentas
select * from cuentas

create table usuario(
	cedula char(5), 
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint usuario_pk primary key(cedula)
)

alter table cuentas
add constraint cuentas_usuario_fk
foreign key (cedula_propietario)
references usuario(cedula)


select cu.numero_cuenta, us.nombre from cuentas cu,usuario us
where cu.cedula_propietario=us.cedula
and cast(cu.saldo as numeric )between 100.00 and 1000.00

select cu.numero_cuenta,cu.fecha_creacion,cu.saldo, us.cedula from cuentas cu,usuario us
where cu.cedula_propietario=us.cedula
and cu.fecha_creacion between '21/09/2022' and '21/09/2023'