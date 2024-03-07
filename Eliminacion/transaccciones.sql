create table transaccciones(
	codigo int not null, 
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transaccciones_pk primary key(codigo)
)

select * from transaccciones

delete from transaccciones where hora between '14:00' and '18:00'
and fecha between '01/08/2024' and '31/08/2024'