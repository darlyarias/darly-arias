#función para contar las ciudades que pertenecen a un departamento.
DELIMITER $$
#Se define como parametro de entrada el departamento al cual queremos contar las ciudades que se encuentran registradas en la BD
CREATE DEFINER=`root`@`localhost` FUNCTION `Contar_ciudad_por_departamento`(descripcion_departamento varchar(50)) RETURNS int
    READS SQL DATA
BEGIN
    DECLARE conteo INT;
    #Construcciónd del query
SELECT 
    COUNT(*)
INTO conteo FROM
    clientes.cat_ciudad
WHERE
    desc_departamento = descripcion_departamento;
    
    RETURN conteo;
END$$
DELIMITER ;



#Función para obtener el nombre del pais de la ciudad ingresada por medio de un join entre la tabla cat_ciudad y cat_pais
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `ObtenerPaisPorCiudad`(descripcion_ciudad VARCHAR(30)) RETURNS varchar(255) CHARSET utf8mb4
    READS SQL DATA
BEGIN
DECLARE pais VARCHAR(255);

   select p.desc_pais INTO pais
   from clientes.cat_ciudad c
   join clientes.cat_pais p ON c.cod_pais_region_zona = p.cod_pais_region_zona where c.desc_ciudad = descripcion_ciudad;
#el valor que permite crear la relación en ambas tablas es cod_pais_region_zona
RETURN pais;

END$$
DELIMITER ;

