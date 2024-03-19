create table banco(
	codigo_banco int, 
	codigo_transaccion int,
	detalle varchar(100),
	constraint banco_pk primary key(codigo_banco)
)

select * from banco

create table transacciones(
	codigo int, 
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date,
	hora time,
	constraint transacciones_pk primary key(codigo)
)

select * from transacciones

alter table banco
add constraint banco_transacciones_fk
foreign key (codigo_transaccion)
references transacciones(codigo)


select tr.codigo,tr.numero_cuenta,tr.monto,tr.tipo,tr.fecha,tr.hora,ba.codigo_transaccion,ba.codigo_banco,ba.detalle from banco ba, transacciones tr
where ba.codigo_transaccion=tr.codigo
and tr.tipo='C' and tr.numero_cuenta between '22001' and '22004'

select tr.codigo,tr.numero_cuenta,tr.monto,tr.tipo,tr.fecha,tr.hora from banco ba, transacciones tr
where ba.codigo_transaccion=tr.codigo
and cast(ba.codigo_transaccion as numeric)=1