-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: 127.0.0.1    Database: clientes
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `cat_ciudad`
--

LOCK TABLES `cat_ciudad` WRITE;
/*!40000 ALTER TABLE `cat_ciudad` DISABLE KEYS */;
INSERT INTO `cat_ciudad` VALUES (1,1,'Medellin','Antioquia'),(2,3,'Santiago de chile','Dpto del exterior'),(3,1,'Cali','Valle del cauca'),(4,2,'Buenos aires','Dpto del exterior'),(5,5,'Miami','Dpto del exterior');
/*!40000 ALTER TABLE `cat_ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_genero`
--

LOCK TABLES `cat_genero` WRITE;
/*!40000 ALTER TABLE `cat_genero` DISABLE KEYS */;
INSERT INTO `cat_genero` VALUES (1,'Masculino'),(2,'Femenino'),(3,'No informa');
/*!40000 ALTER TABLE `cat_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_pais`
--

LOCK TABLES `cat_pais` WRITE;
/*!40000 ALTER TABLE `cat_pais` DISABLE KEYS */;
INSERT INTO `cat_pais` VALUES (1,'Colombia'),(2,'Argentina'),(3,'Chile'),(4,'Venezuela'),(5,'EEUU'),(6,'Panamá'),(7,'México');
/*!40000 ALTER TABLE `cat_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_sucursal`
--

LOCK TABLES `cat_sucursal` WRITE;
/*!40000 ALTER TABLE `cat_sucursal` DISABLE KEYS */;
INSERT INTO `cat_sucursal` VALUES (1,'carabobo',1,1),(2,'Independencia',2,3),(3,'Banco de cali',3,1),(4,'Sede santiago',4,2),(5,'Palm beach',5,5),(6,'Parque Berrio',1,1),(8,'Santa Monica',1,1);
/*!40000 ALTER TABLE `cat_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_tip_doc`
--

LOCK TABLES `cat_tip_doc` WRITE;
/*!40000 ALTER TABLE `cat_tip_doc` DISABLE KEYS */;
INSERT INTO `cat_tip_doc` VALUES (1,'Cedula de ciudadania'),(2,'Cedula de extranjeria'),(3,'NIT'),(4,'Tarjeta de identidad'),(5,'Pasaporte'),(9,'Registro civil');
/*!40000 ALTER TABLE `cat_tip_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_zona`
--

LOCK TABLES `cat_zona` WRITE;
/*!40000 ALTER TABLE `cat_zona` DISABLE KEYS */;
INSERT INTO `cat_zona` VALUES (1,'Colombia','Norte','Caribe'),(2,'Colombia','Sur','Amazonia'),(3,'Argentina','Centro','Cordoba'),(4,'Panama','Sur','Panama norte'),(5,'Mexico','Norte','Norte de mexico');
/*!40000 ALTER TABLE `cat_zona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,1,1,'1983-10-13',1000000,1),(2,2,2,'1967-03-12',2000000,2),(3,1,1,'1997-03-16',30000000,1),(4,5,2,'1996-03-18',4000000,1),(5,1,1,'1981-03-07',500000,2),(9,2,1,'1999-09-27',9000000,1),(10,1,2,'1995-08-01',900000,5),(11,3,2,'1991-07-23',1100000,1),(12,1,2,'1998-06-08',1500000,1),(13,2,1,'1985-05-28',450000,1),(14,1,3,'1989-05-23',3800000,5),(15,1,2,'1990-05-01',1000000,1),(16,9,1,'1993-04-10',3200000,5),(17,2,1,'1986-03-18',7800000,4),(18,9,2,'1984-02-09',400000,3),(19,3,3,'1992-10-02',1100000,3),(20,4,1,'2009-02-20',4500000,1),(105,1,2,'1983-10-13',1000000,6),(107,2,1,'1983-10-13',1000000,6);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'Se va a eliminar un cliente con el id:6','clientes','2023-09-25','17:00:50','root@localhost'),(2,'Se eliminó un cliente con el id:6','clientes','2023-09-25','17:00:50','root@localhost'),(3,'Se va a eliminar un cliente con el id:7','clientes','2023-09-25','17:00:59','root@localhost'),(4,'Se eliminó un cliente con el id:7','clientes','2023-09-25','17:00:59','root@localhost'),(5,'Se va a eliminar un cliente con el id:8','clientes','2023-09-25','17:01:04','root@localhost'),(6,'Se eliminó un cliente con el id:8','clientes','2023-09-25','17:01:04','root@localhost'),(7,'Se va a eliminar un cliente con el id:105','clientes','2023-09-25','17:01:20','root@localhost'),(8,'Se eliminó un cliente con el id:105','clientes','2023-09-25','17:01:20','root@localhost'),(9,'Se va a eliminar un registro en sucursal con el código:6','cat_sucursal','2023-09-25','17:01:28','root@localhost'),(10,'Se eliminó un registro en sucursal con el código:6','cat_sucursal','2023-09-25','17:01:28','root@localhost'),(13,'Se va a eliminar un cliente con el id:106','clientes','2023-09-25','17:02:53','root@localhost'),(14,'Se eliminó un cliente con el id:106','clientes','2023-09-25','17:02:53','root@localhost'),(15,'Se va a eliminar un registro en sucursal con el código:7','cat_sucursal','2023-09-25','17:03:16','root@localhost'),(16,'Se eliminó un registro en sucursal con el código:7','cat_sucursal','2023-09-25','17:03:16','root@localhost'),(17,'Se creo un registro en sucursal con el código:6','cat_sucursal','2023-09-25','17:03:45','root@localhost'),(18,'Se creo un registro en sucursal con el código:7','cat_sucursal','2023-09-25','17:03:45','root@localhost'),(19,'Se creo un registro en sucursal con el código:8','cat_sucursal','2023-09-25','17:03:45','root@localhost'),(20,'Se creo un nuevo cliente con el id:105','clientes','2023-09-25','17:03:45','root@localhost'),(21,'Se creo un nuevo cliente con el id:106','clientes','2023-09-25','17:03:45','root@localhost'),(22,'Se creo un nuevo cliente con el id:107','clientes','2023-09-25','17:03:45','root@localhost'),(23,'Se va a eliminar un cliente con el id:106','clientes','2023-09-25','17:03:45','root@localhost'),(24,'Se eliminó un cliente con el id:106','clientes','2023-09-25','17:03:45','root@localhost'),(25,'Se va a eliminar un registro en sucursal con el código:7','cat_sucursal','2023-09-25','17:03:45','root@localhost'),(26,'Se eliminó un registro en sucursal con el código:7','cat_sucursal','2023-09-25','17:03:45','root@localhost');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-25 19:00:11
