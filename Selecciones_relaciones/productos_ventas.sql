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


select pr.nombre,pr.stock,ve.cantidad from productos pr, ventas ve
where pr.codigo=ve.codigo_producto
and pr.nombre like '%m%' or pr.descripcion='0'

select pr.nombre,pr.stock from productos pr, ventas ve
where pr.codigo=ve.codigo_producto
and cast(ve.cantidad as numeric)=5