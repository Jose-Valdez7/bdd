select * from personas

delete from
personas //porque necesito borrar todos los registro anteriores

alter table personas
add column estado_civil_codigo char(1) not null,

create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null,
	constraint estado_civil_pk primary key(codigo)
)

alter table personas
add constraint personas_estado_civil_fk
foreign key (estado_civil_codigo)
references estado_civil(codigo)

insert into personas (cedula,nombre,apellido,estado_civil_codigo)
values ('172234052','Jose', 'Valdez','U')

insert into estado_civil(codigo,descripcion)
values ('U', 'UNION LIBRE');
insert into estado_civil(codigo,descripcion)
values ('C', 'CASADO');
insert into estado_civil(codigo,descripcion)
values ('S', 'SOLTERO');

delete from estado_civil 

select pe.cedula,pe.nombre,pe.apellido,ec.descripcion from 
personas pe,estado_civil ec
where
pe.estado_civil_codigo=ec.codigo