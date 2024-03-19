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


select cl.nombre,cl.apellido from clientes cl,compras co
where cl.cedula=co.cedula
and cl.cedula like '%7%'

select cl.cedula,cl.nombre,cl.apellido,co.fecha_compra from clientes cl,compras co
where cl.cedula=co.cedula
and cl.nombre='Monica'
