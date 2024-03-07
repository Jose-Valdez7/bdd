create table registros_entrada(
	codigo_registro int not null, 
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)

select * from registros_entrada

delete from registros_entrada where fecha between '01/06/2023' and '30/06/2023'