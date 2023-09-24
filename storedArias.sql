#Creación procedimiento para ordenar una tabla
DELIMITER $$
CREATE PROCEDURE OrdenarTablas(
#como parametros de entrada recibe el nombre de la tabla, el campo por el cual queremos ordenar y el metodo de ordenamiento: si es Ascendente se ingresa el valor ASC o si es descendente se ingresa el valor DESC
    IN nombre_de_tabla VARCHAR(255),
    IN nombre_de_campo VARCHAR(255),
    IN orden VARCHAR(4)
)
BEGIN
    SET @query = CONCAT('SELECT * FROM clientes.', nombre_de_tabla, ' ORDER BY ', nombre_de_campo, ' ', orden, ';');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END$$
DELIMITER ;


#creación procedimiento para eliminar un registro de la tabla sucursal
DELIMITER $$
#los parametros de entrada son el codigo de la sucursal
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarSucursal`(
    IN codigo_sucursal INT
)
BEGIN
    SET @query = concat('delete from cat_sucursal where cod_sucursal = (',codigo_sucursal,');');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END$$
DELIMITER ;
