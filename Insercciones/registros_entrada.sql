create table registros_entrada(
	codigo_registro int not null, 
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)

insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha)
values (1231,'1290873645','10:34','22/12/2023')

insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha)
values (1234,'1290873641','10:34','23/12/2023')

insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha)
values (1233,'1290873642','12:24','24/12/2023')

insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha)
values (1236,'1290873643','16:54','24/12/2023')

insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha)
values (1237,'1290873644','09:56','25/12/2023')

insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha)
values (1239,'1290873646','10:37','22/12/2023')

insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha)
values (1241,'1290873647','12:12','25/12/2023')

insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha)
values (1251,'1290873648','11:25','27/12/2023')

insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha)
values (1245,'1290873649','17:20','26/12/2023')

insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha)
values (1290,'1290873640','19:34','27/12/2023')

insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha)
values (1200,'1290873605','20:49','28/12/2023')

select cedula_empleado,fecha,hora from registros_entrada

select * from registros_entrada where hora between '7:00' and '14:00'

select * from registros_entrada where hora>'8:00'