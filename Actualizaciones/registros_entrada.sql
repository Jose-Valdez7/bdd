create table registros_entrada(
	codigo_registro int not null, 
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)

select * from registros_entrada

update registros_entrada set cedula_empleado='0823456791'
where fecha between '01/08/2023' and '31/08/2023'