use mydb;

insert into usuarios (nombre, apellido)
values ('Jane', 'Austen');

insert into usuarios (nombre, apellido)
values ('Emily', 'Dickinson');

insert into usuarios (nombre, apellido)
values ('Fyodor', 'Dostoevsky');

insert into usuarios (nombre, apellido)
values ('William', 'Shakespeare');

insert into usuarios (nombre, apellido)
values ('Lau', 'Tzu');

insert into libros (titulo)
values ('C Sharp');

insert into libros (titulo)
values ('Java');

insert into libros (titulo)
values ('Python');

insert into libros (titulo)
values ('PHP');

insert into libros (titulo)
values ('Ruby');

update libros
set titulo = 'C#'
WHERE id = 6;


update usuarios 
set nombre = 'Bill'
where id = 19;


insert into favoritos (usuario_id, libro_id)
values (16,6),(16,7),(17,6),(17,7),(17,8),(18,6),(18,7),(18,8),(19,6),(19,7),(19,8),(19,9),(19,10);

select * from favoritos;

select * from usuarios
join favoritos on id = favoritos.usuario_id
join libros on libros.id = favoritos.libro_id
where libro_id = 8;

delete from favoritos
where libro_id = 8
and usuario_id =16;

insert into favoritos (usuario_id, libro_id)
values (20, 8);

select * from favoritos 
where libro_id = 10;  









select * 
from libros;

select * 
from usuarios;
