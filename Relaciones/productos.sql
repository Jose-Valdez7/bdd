create table ventas(
	id_venta int, 
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key(id_venta)
)

select * from ventas

create table productos(
	codigo int not null, 
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)
delete from productos
select * from productos

alter table ventas
add constraint ventas_productos_fk
foreign key (codigo_producto)
references productos(codigo)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (25,'laptop','productos tecnologico de alta gama',900.75,50);
insert into productos (codigo,nombre,descripcion,precio,stock)
values (26,'mouse','mouse de 400 dp',20.55,100);
insert into productos (codigo,nombre,descripcion,precio,stock)
values (51,'padmouse','Xl cobbertura total',10.37,150);
insert into productos (codigo,nombre,descripcion,precio,stock)
values (45,'teclado','teclado raizer mecanico rgb',30.50,25);
insert into productos (codigo,nombre,descripcion,precio,stock)
values (2,'silla gamer','marca meetion',200.32,35);
insert into productos (codigo,nombre,precio,stock)
values (4,'CPU',500.00,29);
insert into productos (codigo,nombre,precio,stock)
values (22,'Pantalla SONY',90.82,23);
insert into productos (codigo,nombre,precio,stock)
values (11,'Tarjeta de video',324.11,5);
insert into productos (codigo,nombre,precio,stock)
values (1,'memoria RAM',21.90,34);
insert into productos (codigo,nombre,precio,stock)
values (12,'mainboard',375.50,2);

select * from productos

insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values(01,1,'21/08/2022',5);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values(02,1,'02/10/2022',2);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values(03,1,'01/09/2022',10);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values(04,12,'21/01/2023',1);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values(05,26,'27/04/2023',20);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values(06,25,'21/08/2023',5);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values(07,22,'29/05/2023',8);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values(08,22,'15/08/2023',9);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values(09,51,'10/03/2023',70);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values(10,45,'21/09/2023',1);

select * from ventas

