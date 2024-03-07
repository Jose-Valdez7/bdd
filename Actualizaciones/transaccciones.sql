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

update transaccciones set tipo='T'
where cast(monto as numeric) between 101 and 499
and fecha between '01/01/2024' and '30/01/2024'
and hora between '14:00' and '20:00'