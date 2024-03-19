create table banco(
	codigo_banco int, 
	codigo_transaccion int,
	detalle varchar(100),
	constraint banco_pk primary key(codigo_banco)
)

select * from banco

create table transacciones(
	codigo int, 
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date,
	hora time,
	constraint transacciones_pk primary key(codigo)
)

select * from transacciones

alter table banco
add constraint banco_transacciones_fk
foreign key (codigo_transaccion)
references transacciones(codigo)

insert into transacciones (codigo,numero_cuenta,monto,tipo)
values (1,'22001',200.66,'C');
insert into transacciones (codigo,numero_cuenta,monto,tipo)
values (2,'22002',340.66,'C');
insert into transacciones (codigo,numero_cuenta,monto,tipo)
values (3,'22003',200.56,'D');
insert into transacciones (codigo,numero_cuenta,monto,tipo)
values (4,'22004',243.76,'C');
insert into transacciones (codigo,numero_cuenta,monto,tipo)
values (5,'22005',2123.66,'C');
insert into transacciones (codigo,numero_cuenta,monto,tipo)
values (6,'22006',123.66,'D');
insert into transacciones (codigo,numero_cuenta,monto,tipo)
values (7,'22007',99.66,'D');
insert into transacciones (codigo,numero_cuenta,monto,tipo)
values (8,'22008',876.66,'D');
insert into transacciones (codigo,numero_cuenta,monto,tipo)
values (9,'22009',2676.66,'C');
insert into transacciones (codigo,numero_cuenta,monto,tipo)
values (10,'22010',767.66,'D');

select * from transacciones

insert into banco (codigo_banco,codigo_transaccion,detalle)
values (11,1,'Debito');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values (12,2,'Ahorro');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values (13,1,'Ahorro');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values (14,10,'Debito');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values (15,9,'Ahorro');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values (16,8,'Debito');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values (17,9,'Ahorro');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values (18,3,'Debito');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values (19,7,'Debito');
insert into banco (codigo_banco,codigo_transaccion,detalle)
values (20,5,'Ahorro');


select * from banco

