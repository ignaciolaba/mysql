use panel_de_usuarios;


INSERT INTO usuarios ( nombre, apellido, email)
VALUES ('Ignacio', 'Labarca', 'ignacio@labarca.cl');

INSERT INTO usuarios ( nombre, apellido, email)
VALUES ('Pedro', 'Silva', 'pedro@silva.cl' );

INSERT INTO usuarios ( nombre, apellido, email)
VALUES ('juan', 'Arcos', 'juana@arcos.cl');



SELECT email 
FROM usuarios 
LIMIT 1;

select id
from usuarios
order by id desc
limit 1;

update usuarios
set id=12
where id=11;

delete from usuarios
where id = 10;


SELECT * 
FROM usuarios
order by nombre asc;

SELECT * 
FROM usuarios
order by nombre desc;

