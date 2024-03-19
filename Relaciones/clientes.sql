create table compras(
	id_compra int, 
	cedula char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2) not null,
	constraint compras_pk primary key(id_compra)
)

select * from compras

create table clientes(
	cedula char(10), 
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	constraint clientes_pk primary key(cedula)
)

select * from clientes

alter table compras
add constraint compras_clientes_fk
foreign key (cedula)
references clientes(cedula)

insert into clientes (cedula, nombre,apellido)
values('1234576547','Juan','Perez');
insert into clientes(cedula, nombre,apellido)
values('1203490748','Monica','Molina');
insert into clientes (cedula, nombre,apellido)
values('0958648983','Juan','Valdez');
insert into clientes (cedula, nombre,apellido)
values('0985030918','Valentina','Urrutia');
insert into clientes(cedula, nombre,apellido)
values('3456078493','Yuly','Andrade');
insert into clientes (cedula, nombre,apellido)
values('2385610293','Ismael','Cueva');
insert into clientes (cedula, nombre,apellido)
values('3485678399','Peter','Zambrano');
insert into clientes (cedula, nombre,apellido)
values('4904323087','Antonio','Valencia');
insert into clientes (cedula, nombre,apellido)
values('8943123710','Angely','Recalde');
insert into clientes (cedula, nombre,apellido)
values('8349312784','Lucia','Jimenez');

select * from clientes

insert into compras (id_compra,cedula,fecha_compra,monto)
values(01,'1203490748','21/08/2022',100.00);
insert into compras (id_compra,cedula,fecha_compra,monto)
values(02,'8349312784','02/10/2022',233.50);
insert into compras (id_compra,cedula,fecha_compra,monto)
values(03,'1203490748','01/09/2022',100.64);
insert into compras (id_compra,cedula,fecha_compra,monto)
values(04,'3485678399','21/01/2023',167.22);
insert into compras (id_compra,cedula,fecha_compra,monto)
values(05,'1203490748','27/04/2023',203.45);
insert into compras (id_compra,cedula,fecha_compra,monto)
values(06,'1234576547','21/08/2023',345.00);
insert into compras (id_compra,cedula,fecha_compra,monto)
values(07,'1234576547','29/05/2023',899.57);
insert into compras (id_compra,cedula,fecha_compra,monto)
values(08,'8943123710','15/08/2023',999.99);
insert into compras (id_compra,cedula,fecha_compra,monto)
values(09,'3485678399','10/03/2023',700.88);
insert into compras (id_compra,cedula,fecha_compra,monto)
values(10,'1203490748','21/09/2023',1000.00);

select * from compras

