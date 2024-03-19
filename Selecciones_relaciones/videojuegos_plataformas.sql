create table plataformas(
	id_plataforma int, 
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int,
	constraint plataformas_pk primary key(id_plataforma)
)

select * from plataformas

create table videojuegos(
	codigo int not null, 
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)

delete from videojuegos
select * from videojuegos

alter table plataformas
add constraint platafomas_videojuegos_fk
foreign key (codigo_videojuego)
references videojuegos(codigo)

select vi.nombre,vi.descripcion,vi.valoracion,pl.nombre_plataforma from videojuegos vi, plataformas pl
where pl.codigo_videojuego=vi.codigo
and vi.descripcion='Guerra'and cast(vi.valoracion as numeric)>7
or vi.nombre like 'C%' and cast(vi.valoracion as numeric)>8
or vi.nombre like 'D%' and cast(vi.valoracion as numeric)>8

select pl.id_plataforma,pl.nombre_plataforma,pl.codigo_videojuego from videojuegos vi, plataformas pl
where pl.codigo_videojuego=vi.codigo
and vi.nombre='GOD OF WAR'