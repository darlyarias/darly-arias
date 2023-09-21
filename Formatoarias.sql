CREATE DEFINER=`root`@`localhost` FUNCTION `Contar_ciudad_exterior`(desc_departamento varchar(50)) RETURNS int
    READS SQL DATA
BEGIN
    DECLARE conteo INT;
    
SELECT 
    COUNT(*)
INTO conteo FROM
    clientes.cat_ciudad
WHERE
    desc_departamento = 'Dpto del exterior';
    
    RETURN conteo;
END
