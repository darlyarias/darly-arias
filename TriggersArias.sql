use clientes;

#Creación de la tabla log donde se registraran todos los movimientos y acciones que se ejecuten sobre las tablas de la BD.
CREATE TABLE log(
  id_movimiento int not null unique primary key AUTO_INCREMENT,
  accion varchar(255) not null,
  tabla varchar(255) not null,
  fecha datetime not null DEFAULT CURRENT_TIMESTAMP,
  usuario varchar(255) not null
);

