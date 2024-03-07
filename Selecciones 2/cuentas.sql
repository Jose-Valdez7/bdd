create table cuentas(
	numero_cuenta char(5) not null, 
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)

select numero_cuenta, saldo from cuentas where cast(saldo as numeric) between 101 and 999

select * from cuentas where fecha_creacion between '06/03/2023' and '06/03/2024'

select * from cuentas where cast(saldo as numeric)=0 or cedula_propietario like '%2' 