use dojos_y_ninjas;

select * 
from dojos;

insert into dojos (nombre)
values('karioka');

insert into dojos (nombre)
values('Goku');

insert into dojos (nombre)
values('Sushi');

delete from dojos where id < 10;

insert into dojos (nombre)
values('Pollos');

insert into dojos (nombre)
values('Avatar');

insert into dojos (nombre)
values('Aang');

insert into ninjas (nombre, apellido, edad, dojos_id)
values ('Ignacio', 'Labarca', 28, 8);
 
 insert into ninjas (nombre, apellido, edad, dojos_id)
values ('Pedro', 'silva', 12, 8);

insert into ninjas (nombre, apellido, edad, dojos_id)
values ('Jauncho', 'Galdames', 44, 8);

insert into ninjas (nombre, apellido, edad, dojos_id)
values ('Hernan', 'Jaramillo', 14, 9);
 
 insert into ninjas (nombre, apellido, edad, dojos_id)
values ('omar', 'lopez', 55, 9);

insert into ninjas (nombre, apellido, edad, dojos_id)
values ('Adam', 'west', 43, 9);

insert into ninjas (nombre, apellido, edad, dojos_id)
values ('Ernesto', 'Jaramillo', 99, 10);
 
 insert into ninjas (nombre, apellido, edad, dojos_id)
values ('Lucia', 'Vit', 71, 10);

insert into ninjas (nombre, apellido, edad, dojos_id)
values ('Pamela', 'díaz', 41, 10);

select *
from ninjas
where dojos_id = 8;

select *
from ninjas
where dojos_id = 10;

select * 
from dojos
where id = ( select dojos_id 
from ninjas
order by id desc
Limit 1);


select * 
from ninjas;