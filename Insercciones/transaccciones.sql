create table transaccciones(
	codigo int not null, 
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transaccciones_pk primary key(codigo)
)

insert into transaccciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (12,'12345',200.66,'C','31/01/2024','10:54')

insert into transaccciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (77,'11829',340.66,'C','22/01/2024','11:34')

insert into transaccciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (72,'14345',200.56,'D','11/01/2024','12:51')

insert into transaccciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (98,'12151',243.76,'C','01/01/2024','17:44')

insert into transaccciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (4,'09342',2123.66,'C','02/01/2024','18:22')

insert into transaccciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (21,'12356',123.66,'D','21/01/2024','20:51')

insert into transaccciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (22,'94745',99.66,'D','19/01/2024','10:12')

insert into transaccciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (11,'98343',876.66,'D','18/01/2024','12:54')

insert into transaccciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (13,'09123',2676.66,'C','22/01/2024','13:55')

insert into transaccciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (15,'78344',767.66,'D','29/01/2024','19:11')

