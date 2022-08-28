use amistades;

insert into usarios (nombre, apellido)
values ('Daniel','Quintanilla'), ('Juan','Esteban'),('Pamela', 'Díaz'), ('Pedro', 'Pascal'), ('Victor', 'Jara'), ('Jaime','Bond');

insert into amistades (usuario_id, amigo_id)
values (1,2),(1,4),(1,6),(2,1),(2,3),(2,5),(3,2),(3,5),(4,3),(5,1),(5,6),(6,2),(6,3);


select * from amistades;

select * from usarios;

select * from usarios
join amistades on usarios.id = amistades.usuario_id
left join usarios as usarios2 on usarios2.id = amistades.amigo_id;

SELECT *
from usarios
JOIN amistades ON usarios.id = amistades.usuario_id
LEFT JOIN usarios as usarios2 ON usarios2.id = amistades.amigo_id;

SELECT usarios.nombre as nombre, usarios.apellido as apellido, usarios2.nombre as amigo_nombre, usarios2.apellido as amigo_apellido
from usarios
JOIN amistades ON usarios.id = amistades.usuario_id
LEFT JOIN usarios as usarios2 ON usarios2.id = amistades.amigo_id
where usarios.id=1;

select count(*) as numero_de_amigos from amistades;

select usuario_id, usarios.nombre, usarios.apellido, count(usuario_id) as numero_de_amigos from amistades
join usarios on usarios.id = amistades.usuario_id
group by usuario_id
order by numero_de_amigos desc
limit 1;

SELECT usarios.id as id, usarios.nombre as nombre, usarios.apellido as apellido, usarios2.nombre as amigo_nombre, usarios2.apellido as amigo_apellido
from usarios
JOIN amistades ON usarios.id = amistades.usuario_id
LEFT JOIN usarios as usarios2 ON usarios2.id = amistades.amigo_id
where usarios.id=3
order by amigo_nombre;



