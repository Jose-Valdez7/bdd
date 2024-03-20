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

select co.cedula, SUM(co.monto)
from compras co, clientes cl
where cl.cedula=co.cedula
group by co.cedula

select co.fecha_compra, count(co.fecha_compra)AS total_compras
from compras co, clientes cl
where cl.cedula=co.cedula
and co.fecha_compra='2023-08-21'
group by co.fecha_compra
