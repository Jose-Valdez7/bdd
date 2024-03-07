create table productos(
	codigo int not null, 
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)

select * from productos

update productos set stock=0 where descripcion is null