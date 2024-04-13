Select * from personas

insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1722823343','Angelica','Andrade','S');

delete from personas where cedula= '1722823343' 

select * from compras

insert into compras (id_compra,cedula,fecha_compra,monto)
values(11,'1892093452','2022/03/23',100.54);

delete from compras where cedula='1892093452';

insert into clientes(cedula,nombre,apellido)
values('1892093452','Jose','Sanchez');

Select * from cuentas

insert into cuentas(numero_cuenta,cedula_propietario,saldo,fecha_creacion)
values (00011,'12385',928.98,'2022/05/11')

delete from cuentas where numero_cuenta='11'

insert into usuario(cedula,nombre,apellido,tipo_cuenta)
values('12385','Angely','Valdez','D')