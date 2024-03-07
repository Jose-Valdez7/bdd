create table videojuegos(
	codigo int not null, 
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (12,'DOTA 2','Juego multijugadores online',10)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (13,'LOL','Juego multijugadores online',7)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (11,'VALORANT','SHOOTER',10)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (10,'GENSHIN IMPACT','GACHA',9)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (22,'CABAL','MMORPG',7)

insert into videojuegos (codigo,nombre,valoracion)
values (23,'PUBG',9)

insert into videojuegos (codigo,nombre,valoracion)
values (34,'AMOUNG US',8)

insert into videojuegos (codigo,nombre,valoracion)
values (31,'ELDER RING',10)

select * from videojuegos where nombre like 'C%'

select * from videojuegos where valoracion between 9 and 10

select * from videojuegos where descripcion is null