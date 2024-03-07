create table videojuegos(
	codigo int not null, 
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)

select * from videojuegos where nombre like '%C%' or valoracion=7

select * from videojuegos where codigo between 3 and 7 or valoracion=7

select * from videojuegos where (valoracion>7 and nombre like 'C%') 
or (valoracion>8 and nombre like 'D%')