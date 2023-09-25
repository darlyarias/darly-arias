#Control de transacciones TCL
#Se inicia transacción en la tabla clientes, se eliminan registros y se deja comentada el rollback y el commit.
start transaction;
delete from clientes where id = '1';
delete from clientes where id = '2';
delete from clientes where id = '3';
delete from clientes where id = '4';
#rollback;
#commit;


#Se inicia transacción en la tabla sucursal, se agregan 8 registros con 2 punteros: uno despues de la insercion 4 y otro despues de la 8
start transaction;
insert into cat_sucursal values (11,"Carabobo", 1 , 1);
insert into cat_sucursal values (12,"Poblado", 1 , 1);
insert into cat_sucursal values (13,'Ciudad fabricato', 1,1);
insert into cat_sucursal values (14,'Belen', 1,1);
savepoint puntero1;
#se deshacen cambios guardados en el puntero 1.
#rollback to puntero1;

#Se continua con la insercion de datos
insert into cat_sucursal values (15,"San lucas", 1 , 1);
insert into cat_sucursal values (16,"Calle 10", 1 , 1);
insert into cat_sucursal values (17,'Santa fe', 1,1);
insert into cat_sucursal values (18,'Zamora', 1,1);
savepoint puntero2;
#rollback;
commit;
