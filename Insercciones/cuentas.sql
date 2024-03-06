create table cuentas(
	numero_cuenta char(5) not null, 
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('25467','12345','12/06/2023',90.75)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('29383','12034','29/05/2020',790.5)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('90875','09586','23/07/2022',65.71)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('76589','09850','11/08/2023',127.78)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('23940','34560','04/09/2021',99.99)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('09438','23856','22/01/2024',100.15)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('94384','34856','17/03/2018',200.98)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('35956','49043','19/12/2019',1000.75)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('47584','89431','21/11/2019',323.11)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('83493','83493','01/10/2020',10.59)
