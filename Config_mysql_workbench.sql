use panel_de_usuarios;

SELECT * 
FROM usuarios;

INSERT INTO usuarios ( nombre, apellido, email,contraseña, user_level)
VALUES ('Ignacio', 'Labarca', 'ignacio@labarca.cl' , 'chanchofeliz', 3);


UPDATE usuarios 
SET nombre = 'Pedro'
WHERE  id = 2;

DELETE FROM usuarios
WHERE id= 3 ;

SELECT * FROM usuarios;





