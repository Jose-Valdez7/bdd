create table videojuegos(
	codigo int not null, 
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)

select * from videojuegos

update videojuegos set descripcion='Mejor Puntuado' where valoracion>9