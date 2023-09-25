use clientes;
#Creación de tabla Log para registrar movimientos de datos
CREATE TABLE log(
  id_movimiento int not null unique primary key AUTO_INCREMENT,
  accion varchar(255) not null,
  tabla varchar(255) not null,
  fecha date not null,
  hora time not null,
  usuario varchar(255) not null
);

#Triggers de la tabla cat_sucursal
#Creación de triggers en la tabla sucursal para registrar la creación de un nuevo registro y la eliminación de un registro.
delimiter //
create trigger log_insertar_sucursal after insert on cat_sucursal
for each row begin
insert into log (accion, tabla, fecha,hora,usuario) values (Concat('Se creo un registro en sucursal con el código:',new.cod_sucursal),'cat_sucursal',current_date,current_time,CURRENT_USER);
end//
delimiter ;

#Creación de triggers para registrar la acción de eliminación de sucursal antes y despues.
delimiter //
create trigger log_bf_eliminar_sucursal before delete on cat_sucursal
for each row begin
insert into log (accion, tabla, fecha,hora,usuario) values (Concat('Se va a eliminar un registro en sucursal con el código:',old.cod_sucursal),'cat_sucursal',current_date,current_time,CURRENT_USER);
end//
delimiter ;

delimiter //
create trigger log_eliminar_sucursal after delete on cat_sucursal
for each row begin
insert into log (accion, tabla, fecha, hora, usuario) values (Concat('Se eliminó un registro en sucursal con el código:',old.cod_sucursal),'cat_sucursal',current_date, current_time, current_user);
end//
delimiter ;


#Triggers de la tabla clientes
#Creación de triggers en la tabla clientes para registrar la creación de un nuevo registro y la eliminación de un registro.
delimiter //
create trigger log_insertar_cliente after insert on clientes
for each row begin
insert into log (accion, tabla, fecha,hora,usuario) values (Concat('Se creo un nuevo cliente con el id:',new.id),'clientes',current_date,current_time,CURRENT_USER);
end//
delimiter ;

#Creación de triggers para registrar la acción de eliminación de clientes antes y despues.

delimiter //
create trigger log_bf_eliminar_cliente before delete on clientes
for each row begin
insert into log (accion, tabla, fecha, hora, usuario) values (Concat('Se va a eliminar un cliente con el id:',old.id),'clientes',current_date, current_time, current_user);
end//
delimiter ;

delimiter //
create trigger log_eliminar_cliente after delete on clientes
for each row begin
insert into log (accion, tabla, fecha, hora, usuario) values (Concat('Se eliminó un cliente con el id:',old.id),'clientes',current_date, current_time, current_user);
end//
delimiter ;

insert into cat_sucursal values ( 6,"Parque Berrio", 1 , 1);
insert into cat_sucursal values ( 7,"La candelaria", 1 , 1);
insert into cat_sucursal values ( 8,"Santa Monica", 1 , 1);
insert into clientes values (105,1,2,"1983-10-13",1000000,6);
insert into clientes values (106,1,2,"1983-10-13",1000000,7);
insert into clientes values (107,2,1,"1983-10-13",1000000,6);
delete from clientes where id = 106;
delete from cat_sucursal where cod_sucursal = 7;


select * from log;
