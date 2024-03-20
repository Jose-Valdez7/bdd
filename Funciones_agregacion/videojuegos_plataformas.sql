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

select pl.codigo_videojuego, count(pl.id_plataforma) as total_plataformas
from videojuegos vi, plataformas pl
where pl.codigo_videojuego=vi.codigo
group by pl.codigo_videojuego

select ROUND(AVG(vi.valoracion),2) as valoracion_promedio
from videojuegos vi
