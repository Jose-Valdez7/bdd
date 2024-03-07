create table productos(
	codigo int not null, 
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (25,'laptop','productos tecnologico de alta gama',900.75,50)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (26,'mouse','mouse de 400 dp',20.55,100)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (51,'padmouse','Xl cobbertura total',10.37,150)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (45,'teclado','teclado raizer mecanico rgb',30.50,25)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (2,'silla gamer','marca meetion',200.32,35)

insert into productos (codigo,nombre,precio,stock)
values (4,'CPU',500.00,29)

insert into productos (codigo,nombre,precio,stock)
values (22,'Pantalla SONY',90.82,23)

insert into productos (codigo,nombre,precio,stock)
values (11,'Tarjeta de video',324.11,5)

select * from productos