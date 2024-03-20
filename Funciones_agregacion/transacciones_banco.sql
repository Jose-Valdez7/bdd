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


select count(tr.tipo) as total_transacciones_credito
from transacciones tr
where tr.tipo='C'

select tr.numero_cuenta,ROUND(AVG(CAST(tr.monto as decimal)),2)as monto_promedio
from transacciones tr
group by tr.numero_cuenta