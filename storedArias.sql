DELIMITER $$
CREATE PROCEDURE OrdenarTablas(
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
