create table transaccciones(
	codigo int not null, 
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transaccciones_pk primary key(codigo)
)

select * from transaccciones where tipo='C' and numero_cuenta between '22001' and '222004'

select * from transaccciones where tipo='D' and extract(month from fecha)=05 and extract(day from fecha)=25
and numero_cuenta between '22007' and '22010'

select * from transaccciones where codigo between 1 and 5 and numero_cuenta between '22002' and '22010'
and extract(month from fecha)=05  and (extract(day from fecha)=26 or extract(day from fecha)=29)