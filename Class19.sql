#Act 1
CREATE USER 'data_analyst' IDENTIFIED BY 'contra123';

#Act 2
GRANT SELECT, UPDATE, DELETE ON sakila.* TO 'data_analyst';

#Act 3:
#No se puede hacer la operacion pq no tiene el privilegio de CREATE.

#ACt 4:

UPDATE sakila.film
SET title = 'ACADEMY DINOSAUR UPDATED'
WHERE film_id = 1;

#Act 5:
REVOKE UPDATE ON sakila.* FROM 'data_analyst';

#Act 6:
#Ejecuto 
UPDATE sakila.film
SET title = 'ACADEMY DINOSAUR UPDATED'
WHERE film_id = 1;

#Pero no funciona pq tira:
/*
Error Code: 1142.
UPDATE command denied to user 'data_analyst'@'localhost'
for table 'film'
 */

#Eso aparece pq antes le sacamos los permisos de update a ese usuario.
