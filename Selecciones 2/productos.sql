create table productos(
	codigo int not null, 
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)

select * from productos where stock=10 and cast(precio as numeric)<10 

select nombre, stock from productos where nombre like '%m%' or descripcion like '% %'

select nombre from productos where descripcion is null or stock=0