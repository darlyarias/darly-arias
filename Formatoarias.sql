DELIMITER $$
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
END$$
DELIMITER ;




DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `ObtenerPaisPorCiudad`(cod_ciudad INT) RETURNS varchar(255) CHARSET utf8mb4
    READS SQL DATA
BEGIN
    DECLARE pais VARCHAR(255);
    
    SELECT cp.desc_pais
    INTO pais
    FROM clientes.cat_ciudad cc
    JOIN clientes.cat_pais cp ON cc.cod_pais_region_zona = cp.cod_pais_region_zona
    ;
    
    RETURN pais;
END$$
DELIMITER ;

