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

insert into usuario (cedula, nombre,apellido)
values('12345','Juan','Perez');
insert into usuario (cedula, nombre,apellido)
values('12034','Manuel','Molina');
insert into usuario (cedula, nombre,apellido)
values('09586','Juan','Valdez');
insert into usuario (cedula, nombre,apellido)
values('09850','Valentina','Urrutia');
insert into usuario (cedula, nombre,apellido)
values('34560','Yuly','Andrade');
insert into usuario (cedula, nombre,apellido)
values('23856','Ismael','Cueva');
insert into usuario (cedula, nombre,apellido)
values('34856','Peter','Zambrano');
insert into usuario (cedula, nombre,apellido)
values('49043','Antonio','Valencia');
insert into usuario (cedula, nombre,apellido)
values('89431','Angely','Recalde');
insert into usuario (cedula, nombre,apellido)
values('83493','Lucia','Jimenez');

select * from usuario

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00001','12345','21/08/2022',100.00);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00002','12034','02/10/2022',233.50);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00003','12345','01/09/2022',100.64);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00004','09850','21/01/2023',167.22);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00005','34560','27/04/2023',203.45);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00006','23856','21/08/2023',345.00);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00007','12345','29/05/2023',899.57);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00008','49043','15/08/2023',999.99);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00009','12345','10/03/2023',700.88);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00010','12345','21/09/2023',1000.00);

select * from cuentas

