create table registros_entrada(
	codigo_registro int not null, 
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)

delete from registros_entrada
select * from registros_entrada
alter table registros_entrada
add column codigo_empleado int not null

create table empleado(
	codigo_empleado int not null, 
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key(codigo_empleado)
)

select * from empleado

alter table registros_entrada
add constraint registros_entrada_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)

insert into empleado (codigo_empleado,nombre,fecha,hora)
values (2201,'Francisco','02/08/2023','09:44');
insert into empleado (codigo_empleado,nombre,fecha,hora)
values (2202,'Juan','05/09/2023','10:41');
insert into empleado (codigo_empleado,nombre,fecha,hora)
values (2203,'Richard','10/09/2023','11:52');
insert into empleado (codigo_empleado,nombre,fecha,hora)
values (2204,'Angela','15/10/2023','11:55');
insert into empleado (codigo_empleado,nombre,fecha,hora)
values (2205,'Alicia','18/08/2023','13:00');
insert into empleado (codigo_empleado,nombre,fecha,hora)
values (2206,'Estefania','11/11/2023','12:12');
insert into empleado (codigo_empleado,nombre,fecha,hora)
values (2207,'Jose','26/09/2023','12:11');
insert into empleado (codigo_empleado,nombre,fecha,hora)
values (2208,'Renato','27/12/2023','11:21');
insert into empleado (codigo_empleado,nombre,fecha,hora)
values (2209,'Francisco','22/12/2023','10:23');
insert into empleado (codigo_empleado,nombre,fecha,hora)
values (2210,'Andy','12/11/2023','09:43');

select * from empleado

insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha,codigo_empleado)
values (1231,'1290873645','10:37','22/11/2023',2205);
insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha,codigo_empleado)
values (1234,'1290873641','10:34','23/10/2023',2201);
insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha,codigo_empleado)
values (1233,'1290873642','12:24','24/08/2023',2202);
insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha,codigo_empleado)
values (1236,'1290873643','08:54','24/09/2023',2209);
insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha,codigo_empleado)
values (1237,'1290873644','09:56','25/08/2023',2208);
insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha,codigo_empleado)
values (1239,'1290873646','11:37','22/09/2023',2206);
insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha,codigo_empleado)
values (1241,'1290873647','12:12','25/11/2023',2207);
insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha,codigo_empleado)
values (1251,'1290873648','11:25','27/12/2023',2203);
insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha,codigo_empleado)
values (1245,'1290873649','09:20','26/10/2023',2201);
insert into registros_entrada (codigo_registro,cedula_empleado,hora,fecha,codigo_empleado)
values (1290,'1290873640','08:34','27/12/2023',2210);


select * from registros_entrada

