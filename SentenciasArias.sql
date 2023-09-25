#Creación de usuarios y asignación de permisos para la base de datos clientes.

select * from mysql.user;

#Creación de usuarioLectura
CREATE USER 'usuarioLectura' IDENTIFIED BY 'usuarioLectura';
#Creación del usuario usuarioLIM
CREATE USER 'usuarioLIM' IDENTIFIED BY 'usuarioLIM';

#Se asignan permisos de lectura en todas las tablas de la bd Clientes a usuarioLectura
grant select on clientes.* to usuarioLectura;
#Se asignan permisos de lectura, inserción y modificación en todas las tablas de la bd Clientes a usuarioLIM
grant select, insert, update on clientes.* to usuarioLIM;

#Se listan los usuarios creados en la base de datos.
select * from mysql.user;
