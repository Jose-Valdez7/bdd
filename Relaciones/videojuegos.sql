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

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (12,'DOTA 2','Juego multijugadores online',10);
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (13,'LOL','Juego multijugadores online',7);
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (11,'VALORANT','SHOOTER',10);
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (10,'GENSHIN IMPACT','GACHA',9);
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (22,'CABAL','MMORPG',7);
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (23,'PUBG','Guerra',9);
insert into videojuegos (codigo,nombre,valoracion)
values (34,'AMOUNG US',8);
insert into videojuegos (codigo,nombre,valoracion)
values (31,'ELDER RING',10);
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (54,'CALL OF DUTY','Guerra',9);
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (61,'GOD OF WAR','Guerra',10);

select * from videojuegos

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(01,'Steam',34);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(02,'Nintendo',12);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(03,'Valve',10);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(04,'Epic Games',31);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(05,'Cabal',61);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(06,'Hoyoverse',31);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(07,'MU',22);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(08,'EA Plays',54);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(09,'GeForce',22);
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(10,'PlayStation plus',12);

select * from plataformas

