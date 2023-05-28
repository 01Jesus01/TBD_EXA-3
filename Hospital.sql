CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `consecutivos`
--

DROP TABLE IF EXISTS `consecutivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consecutivos` (
  `CONSECUTIVO` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consecutivos`
--

LOCK TABLES `consecutivos` WRITE;
/*!40000 ALTER TABLE `consecutivos` DISABLE KEYS */;
INSERT INTO `consecutivos` VALUES (1001);
/*!40000 ALTER TABLE `consecutivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuartos`
--

DROP TABLE IF EXISTS `cuartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuartos` (
  `cuarto_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `numero_cuarto` int NOT NULL,
  `inicio_estadia` date NOT NULL,
  `fin_estadia` date DEFAULT NULL,
  PRIMARY KEY (`cuarto_id`),
  KEY `paciente_id` (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuartos`
--

LOCK TABLES `cuartos` WRITE;
/*!40000 ALTER TABLE `cuartos` DISABLE KEYS */;
INSERT INTO `cuartos` VALUES (1,1,121,'2017-04-10','2017-04-17'),(2,2,190,'2017-04-11','2017-04-13'),(3,3,108,'2017-04-12','2017-04-17'),(4,4,179,'2017-04-13','2017-04-18'),(5,5,158,'2017-04-14','2017-04-17'),(6,6,183,'2017-04-15','2017-04-16'),(7,7,142,'2017-04-16','2017-04-23'),(8,8,108,'2017-04-17','2017-04-24'),(9,9,100,'2017-04-18','2017-04-23'),(10,10,109,'2017-04-19','2017-04-24'),(11,11,116,'2017-04-20','2017-04-23'),(12,12,182,'2017-04-21','2017-04-24'),(13,13,180,'2017-04-22','2017-04-28'),(14,14,188,'2017-04-23','2017-04-25'),(15,15,173,'2017-04-24','2017-05-01'),(16,16,176,'2017-04-25','2017-04-30'),(17,17,122,'2017-04-26','2017-04-27'),(18,18,155,'2017-04-27','2017-05-07'),(19,19,181,'2017-04-28','2017-04-30'),(20,20,178,'2017-04-29','2017-05-05'),(21,21,139,'2017-04-30','2017-05-07'),(22,22,119,'2017-05-01','2017-05-10'),(23,23,193,'2017-05-02','2017-05-09'),(24,24,153,'2017-05-03','2017-05-04'),(25,25,168,'2017-05-04','2017-05-14'),(26,26,115,'2017-05-05','2017-05-12'),(27,27,140,'2017-05-06','2017-05-09'),(28,28,170,'2017-05-07','2017-05-14'),(29,29,153,'2017-05-08','2017-05-10'),(30,30,177,'2017-05-09','2017-05-14'),(31,31,101,'2017-05-10','2017-05-17'),(32,32,118,'2017-05-11','2017-05-21'),(33,33,120,'2017-05-12','2017-05-19'),(34,34,156,'2017-05-13','2017-05-19'),(35,35,174,'2017-05-14','2017-05-15'),(36,36,156,'2017-05-15','2017-05-19'),(37,37,397,'2017-05-16','2017-05-26'),(38,38,314,'2017-05-17','2017-05-18'),(39,39,385,'2017-05-18','2017-05-24'),(40,40,356,'2017-05-19','2017-05-26'),(41,41,317,'2017-05-20','2017-05-28'),(42,42,305,'2017-05-21','2017-05-29'),(43,43,363,'2017-05-22','2017-05-26'),(44,44,346,'2017-05-23','2017-06-02'),(45,45,396,'2017-05-24','2017-05-31'),(46,46,376,'2017-05-25','2017-06-03'),(47,47,353,'2017-05-26','2017-05-27'),(48,48,342,'2017-05-27','2017-06-06'),(49,49,382,'2017-05-28','2017-05-29'),(50,50,346,'2017-05-29','2017-05-30'),(51,51,349,'2017-05-30','2017-06-02'),(52,52,381,'2017-05-31','2017-06-08'),(53,53,383,'2017-06-01','2017-06-11'),(54,54,339,'2017-06-02','2017-06-07'),(55,55,326,'2017-06-03','2017-06-09'),(56,56,391,'2017-06-04','2017-06-12'),(57,57,377,'2017-06-05','2017-06-13'),(58,58,323,'2017-06-06','2017-06-13');
/*!40000 ALTER TABLE `cuartos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_cascada` AFTER UPDATE ON `cuartos` FOR EACH ROW BEGIN
    UPDATE pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrado_cascada` BEFORE DELETE ON `cuartos` FOR EACH ROW BEGIN
    DELETE FROM pacientes WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cuentas_pacientes`
--

DROP TABLE IF EXISTS `cuentas_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_pacientes` (
  `cuentas_pacientes_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `forma_pago_pac_id` int DEFAULT NULL,
  `fecha_emision` date NOT NULL,
  `otros` text,
  PRIMARY KEY (`cuentas_pacientes_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `forma_pago_pac_id` (`forma_pago_pac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes`
--

LOCK TABLES `cuentas_pacientes` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes` VALUES (1,1,1,'2017-04-08','null'),(2,2,2,'2017-04-09','null'),(3,3,3,'2017-04-10','null'),(4,4,4,'2017-04-12','null'),(5,5,5,'2017-04-12','null'),(6,6,6,'2017-04-14','null'),(7,7,7,'2017-04-15','null'),(8,8,8,'2017-04-15','null'),(9,9,9,'2017-04-16','null'),(10,10,10,'2017-04-17','null'),(11,11,11,'2017-04-18','null'),(12,12,12,'2017-04-19','null'),(13,13,13,'2017-04-20','null'),(14,14,14,'2017-04-22','null'),(15,15,15,'2017-04-22','null'),(16,16,16,'2017-04-24','null'),(17,17,17,'2017-04-24','null'),(18,18,18,'2017-04-25','null'),(19,19,19,'2017-04-27','null'),(20,20,20,'2017-04-28','null'),(21,21,21,'2017-04-28','null'),(22,22,22,'2017-04-30','null'),(23,23,23,'2017-05-01','null'),(24,24,24,'2017-05-01','null'),(25,25,25,'2017-05-02','null'),(26,26,26,'2017-05-04','null'),(27,27,27,'2017-05-04','null'),(28,28,28,'2017-05-06','null'),(29,29,29,'2017-05-07','null'),(30,30,30,'2017-05-07','null'),(31,31,31,'2017-05-09','null'),(32,32,32,'2017-05-10','null'),(33,33,33,'2017-05-10','null'),(34,34,34,'2017-05-11','null'),(35,35,35,'2017-05-13','null'),(36,36,36,'2017-05-14','null'),(37,37,37,'2017-05-14','null'),(38,38,38,'2017-05-15','null'),(39,39,39,'2017-05-16','null'),(40,40,40,'2017-05-18','null'),(41,41,41,'2017-05-18','null'),(42,42,42,'2017-05-20','null'),(43,43,43,'2017-05-21','null'),(44,44,44,'2017-05-22','null'),(45,45,45,'2017-05-23','null'),(46,46,46,'2017-05-23','null'),(47,47,47,'2017-05-25','null'),(48,48,48,'2017-05-25','null'),(49,49,49,'2017-05-27','null'),(50,50,50,'2017-05-28','null'),(51,51,51,'2017-05-29','null'),(52,52,52,'2017-05-29','null'),(53,53,53,'2017-05-31','null'),(54,54,54,'2017-05-31','null'),(55,55,55,'2017-06-01','null'),(56,56,56,'2017-06-02','null'),(57,57,57,'2017-06-04','null'),(58,58,58,'2017-06-05','null');
/*!40000 ALTER TABLE `cuentas_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_cascada_1` AFTER UPDATE ON `cuentas_pacientes` FOR EACH ROW BEGIN
    UPDATE pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_cascada_2` AFTER UPDATE ON `cuentas_pacientes` FOR EACH ROW BEGIN
    UPDATE formas_pago_pacientes SET forma_pago_pac_id = NEW.forma_pago_pac_id WHERE forma_pago_pac_id = OLD.forma_pago_pac_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrado_cascada_1` BEFORE DELETE ON `cuentas_pacientes` FOR EACH ROW BEGIN
    DELETE FROM pacientes WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrado_cascada_2` BEFORE DELETE ON `cuentas_pacientes` FOR EACH ROW BEGIN
    DELETE FROM formas_pago_pacientes WHERE forma_pago_pac_id = OLD.forma_pago_pac_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cuentas_pacientes_detalles`
--

DROP TABLE IF EXISTS `cuentas_pacientes_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_pacientes_detalles` (
  `cuentas_pacientes_det_id` int NOT NULL AUTO_INCREMENT,
  `cuentas_pacientes_id` int DEFAULT NULL,
  `detalle` varchar(30) DEFAULT 'Diagnóstico',
  `cantidad` double NOT NULL,
  `costo_total` double NOT NULL,
  PRIMARY KEY (`cuentas_pacientes_det_id`),
  KEY `cuentas_pacientes_id` (`cuentas_pacientes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes_detalles`
--

LOCK TABLES `cuentas_pacientes_detalles` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes_detalles` VALUES (1,1,'Diagnóstico',3,151347),(2,2,'Diagnóstico',3,50299),(3,3,'Diagnóstico',2,335363),(4,4,'Diagnóstico',3,336904),(5,5,'Diagnóstico',1,284730),(6,6,'Diagnóstico',1,692302),(7,7,'Diagnóstico',1,191741),(8,8,'Diagnóstico',1,744675),(9,9,'Diagnóstico',1,859558),(10,10,'Diagnóstico',1,507315),(11,11,'Diagnóstico',2,189576),(12,12,'Diagnóstico',3,615740),(13,13,'Diagnóstico',2,251751),(14,14,'Diagnóstico',3,289314),(15,15,'Diagnóstico',2,346244),(16,16,'Diagnóstico',1,321521),(17,17,'Diagnóstico',3,729192),(18,18,'Diagnóstico',2,654777),(19,19,'Diagnóstico',2,141906),(20,20,'Diagnóstico',1,749107),(21,21,'Diagnóstico',1,347804),(22,22,'Diagnóstico',2,824953),(23,23,'Diagnóstico',3,966042),(24,24,'Diagnóstico',1,376164),(25,25,'Diagnóstico',3,376236),(26,26,'Diagnóstico',1,255123),(27,27,'Diagnóstico',3,317412),(28,28,'Diagnóstico',3,766565),(29,29,'Diagnóstico',3,230187),(30,30,'Diagnóstico',2,973681),(31,31,'Diagnóstico',3,556224),(32,32,'Diagnóstico',1,789826),(33,33,'Diagnóstico',3,797003),(34,34,'Diagnóstico',3,896987),(35,35,'Diagnóstico',1,645401),(36,36,'Diagnóstico',3,732868),(37,37,'Diagnóstico',1,707681),(38,38,'Diagnóstico',3,110331),(39,39,'Diagnóstico',3,158256),(40,40,'Diagnóstico',2,81944),(41,41,'Diagnóstico',2,881690),(42,42,'Diagnóstico',2,602980),(43,43,'Diagnóstico',1,268138),(44,44,'Diagnóstico',3,379874),(45,45,'Diagnóstico',1,153311),(46,46,'Diagnóstico',3,863400),(47,47,'Diagnóstico',2,860995),(48,48,'Diagnóstico',3,149290),(49,49,'Diagnóstico',1,267026),(50,50,'Diagnóstico',1,834540),(51,51,'Diagnóstico',3,153439),(52,52,'Diagnóstico',3,236628),(53,53,'Diagnóstico',3,871864),(54,54,'Diagnóstico',3,680413),(55,55,'Diagnóstico',3,343354),(56,56,'Diagnóstico',3,57805),(57,57,'Diagnóstico',3,308184),(58,58,'Diagnóstico',2,453174);
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_cascada_3` AFTER UPDATE ON `cuentas_pacientes_detalles` FOR EACH ROW BEGIN
    UPDATE cuentas_pacientes SET cuentas_pacientes_id = NEW.cuentas_pacientes_id WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrado_cascada_3` BEFORE DELETE ON `cuentas_pacientes_detalles` FOR EACH ROW BEGIN
    DELETE FROM cuentas_pacientes WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `direccion_id` int NOT NULL AUTO_INCREMENT,
  `calle` text NOT NULL,
  `numero_exterior` int NOT NULL,
  `numero_interior` int DEFAULT NULL,
  `colonia` text NOT NULL,
  `codigo_postal` text NOT NULL,
  `ciudad` text NOT NULL,
  `estado` text NOT NULL,
  `pais` text NOT NULL,
  `otros` text NOT NULL,
  PRIMARY KEY (`direccion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,'1 rue Alsace-Lorraine',1,0,'No especifica','40620','Toulouse','No especifica','France',''),(2,'12 Orchestra Terrace',12,0,'No especifica','72299','Walla Walla','WA','USA',''),(3,'12, rue des Bouchers',12,0,'No especifica','10368','Marseille','No especifica','France',''),(4,'120 Hanover Sq.',120,0,'No especifica','60155','London','No especifica','UK',''),(5,'184, chausse de Tournai',184,0,'No especifica','55769','Lille','No especifica','France',''),(6,'187 Suffolk Ln.',187,0,'No especifica','78271','Boise','ID','USA',''),(7,'1900 Oak St.',1900,0,'No especifica','85240','Vancouver','BC','Canada',''),(8,'2, rue du Commerce',2,0,'No especifica','46913','Helsinki','No especifica','',''),(9,'23 Tsawassen Blvd.',23,0,'No especifica','31994','Tsawassen','BC','Canada',''),(10,'24, place Klber',24,0,'No especifica','72584','Strasbourg','No especifica','France',''),(11,'25, rue Lauriston',25,0,'No especifica','43635','Paris','No especifica','France',''),(12,'265, boulevard Charonne',265,0,'No especifica','26346','Paris','No especifica','France',''),(13,'2732 Baker Blvd.',2732,0,'No especifica','87535','Eugene','OR','USA',''),(14,'2743 Bering St.',2743,0,'No especifica','79901','Anchorage','AK','USA',''),(15,'2817 Milton Dr.',2817,0,'No especifica','85182','Albuquerque','NM','USA',''),(16,'305 - 14th Ave. S. Suite 3B',305,3,'No especifica','62245','Oulu','No especifica','Finland',''),(17,'35 King George',35,0,'No especifica','13216','London','No especifica','UK',''),(18,'43 rue St. Laurent',43,0,'No especifica','18465','Montral','Qubec','Canada',''),(19,'5 Ave. Los Palos Grandes',5,0,'No especifica','68441','Caracas','DF','Venezuela',''),(20,'54, rue Royale',54,0,'No especifica','63117','Nantes','No especifica','France',''),(21,'55 Grizzly Peak Rd.',55,0,'No especifica','39549','Butte','MT','USA',''),(22,'67, rue des Cinquante Otages',67,0,'No especifica','56274','Nantes','No especifica','France',''),(23,'722 DaVinci Blvd.',722,0,'No especifica','13113','Kirkland','WA','USA',''),(24,'8 Johnstown Road',8,0,'No especifica','47847','Cork','Co. Cork','Ireland',''),(25,'87 Polk St. Suite 5',87,0,'No especifica','11981','San Francisco','CA','USA',''),(26,'89 Chiaroscuro Rd.',89,0,'No especifica','29410','Portland','OR','USA',''),(27,'89 Jefferson Way Suite 2',89,0,'No especifica','44919','Portland','OR','USA',''),(28,'90 Wadhurst Rd.',90,0,'No especifica','43827','London','No especifica','UK',''),(29,'Adenauerallee 900',900,0,'No especifica','86925','Lyon','No especifica','France',''),(30,'Alameda dos Canrios, 891',891,0,'No especifica','36965','Sao Paulo','SP','Brazil',''),(31,'Av. Brasil, 442',442,0,'No especifica','68328','Campinas','SP','Brazil',''),(32,'Av. Copacabana, 267',267,0,'No especifica','34941','Rio de Janeiro','RJ','Brazil',''),(33,'Av. del Libertador 900',900,0,'No especifica','71252','Buenos Aires','No especifica','Argentina',''),(34,'Av. dos Lusadas, 23',23,0,'No especifica','84473','Sao Paulo','SP','Brazil',''),(35,'Av. Ins de Castro, 414',414,0,'No especifica','14942','Sao Paulo','SP','Brazil',''),(36,'Avda. Azteca 123',123,0,'No especifica','78040','Mxico D.F.','Mxico D.F.','Mexico',''),(37,'Avda. de la Constitucin 2222',2222,0,'No especifica','71760','Mxico D.F.','Mxico D.F.','Mexico',''),(38,'Ave. 5 de Mayo Porlamar',5,0,'No especifica','20768','I. de Margarita','Nueva Esparta','Venezuela',''),(39,'Berguvsvgen  8',8,0,'No especifica','26468','Lule','No especifica','Sweden',''),(40,'Berkeley Gardens 12  Brewery',12,0,'No especifica','61775','London','No especifica','UK',''),(41,'Berliner Platz 43',43,0,'No especifica','21914','Mnchen','No especifica','Germany',''),(42,'Boulevard Tirou, 255',255,0,'No especifica','86215','Charleroi','No especifica','Belgium',''),(43,'C/ Araquil, 67',67,0,'No especifica','11697','Madrid','No especifica','Spain',''),(44,'C/ Moralzarzal, 86',86,0,'No especifica','77528','Madrid','No especifica','Spain',''),(45,'C/ Romero, 33',33,0,'No especifica','18057','Sevilla','No especifica','Spain',''),(46,'Calle Dr. Jorge Cash 321',321,0,'No especifica','19460','Mxico D.F.','Mxico D.F.','Mexico',''),(47,'Carrera 22 con Ave. Carlos Soublette #8-35',22,8,'No especifica','50156','San Cristbal','Tchira','Venezuela',''),(48,'Carrera 52 con Ave. Bolvar #65-98 Llano Largo',52,0,'No especifica','76914','Barquisimeto','Lara','Venezuela',''),(49,'Cerrito 333',333,0,'No especifica','41756','Buenos Aires','No especifica','Argentina',''),(50,'City Center Plaza 516 Main St.',516,0,'No especifica','47913','Elgin','OR','USA',''),(51,'Erling Skakkes gate 78',78,0,'No especifica','68136','Stavern','No especifica','Norway',''),(52,'Estrada da sade n. 58',58,0,'No especifica','11380','Lisboa','No especifica','Portugal',''),(53,'Fauntleroy Circus',100,0,'No especifica','12425','London','No especifica','UK',''),(54,'Forsterstr. 57',57,0,'No especifica','29719','Mannheim','No especifica','Germany',''),(55,'Garden House Crowther Way',5,0,'No especifica','52697','Cowes','Isle of Wight','UK',''),(56,'Geislweg 14',14,0,'No especifica','34435','Salzburg','No especifica','Austria',''),(57,'Gran Va, 1',1,0,'No especifica','61601','Madrid','No especifica','Spain',''),(58,'Grenzacherweg 237',237,0,'No especifica','83335','Genve','No especifica','Switzerland',''),(59,'Hauptstr. 29',29,0,'No especifica','23662','Bern','No especifica','Switzerland',''),(60,'Heerstr. 22',22,0,'No especifica','73900','Leipzig','No especifica','Germany',''),(61,'Ing. Gustavo Moncada 8585 Piso 20-A',8585,20,'No especifica','83428','Buenos Aires','No especifica','Argentina',''),(62,'Jardim das rosas n. 32',32,0,'No especifica','87099','Lisboa','No especifica','Portugal',''),(63,'kergatan 24',24,0,'No especifica','83154','Brcke','No especifica','Sweden',''),(64,'Keskuskatu 45',45,0,'No especifica','25873','Resende','SP','Brazil',''),(65,'Kirchgasse 6',6,0,'No especifica','59319','Graz','No especifica','Austria',''),(66,'Luisenstr. 48',78,0,'No especifica','32205','Mnster','No especifica','Germany',''),(67,'Magazinweg 7',7,0,'No especifica','69129','Frankfurt a.M.','','Germany',''),(68,'Mataderos  2312',2312,0,'No especifica','37179','Mxico D.F.','Mxico D.F.','Mexico',''),(69,'Maubelstr. 90',90,0,'No especifica','73705','Brandenburg','No especifica','Germany',''),(70,'Mehrheimerstr. 369',369,0,'No especifica','46012','Kln','No especifica','Germany',''),(71,'Obere Str. 57',57,0,'No especifica','30071','Berlin','No especifica','Germany',''),(72,'P.O. Box 555',555,0,'No especifica','26230','Lander','WY','USA',''),(73,'Rambla de Catalua, 23',23,0,'No especifica','38184','Barcelona','No especifica','Spain',''),(74,'Rua da Panificadora, 12',12,0,'No especifica','37964','Rio de Janeiro','RJ','Brazil',''),(75,'Rua do Mercado, 12',12,0,'No especifica','10549','Stuttgart','No especifica','Germany',''),(76,'Rua do Pao, 67',67,0,'No especifica','22071','Rio de Janeiro','RJ','Brazil',''),(77,'Rua Ors, 92',92,0,'No especifica','16799','Sao Paulo','SP','Brazil',''),(78,'Rue Joseph-Bens 532',532,0,'No especifica','32742','Bruxelles','No especifica','Belgium',''),(79,'Sierras de Granada 9993',9993,0,'No especifica','45792','Mxico D.F.','No especifica','Mexico',''),(80,'Smagsloget 45',45,0,'No especifica','88442','rhus','No especifica','Denmark',''),(81,'South House 300 Queensbridge',300,0,'No especifica','77552','London','No especifica','UK',''),(82,'Strada Provinciale 124',124,0,'No especifica','47511','Reggio Emilia','No especifica','Italy',''),(83,'Taucherstrae 10',10,0,'No especifica','86041','Cunewalde','No especifica','Germany',''),(84,'Torikatu 38',38,0,'No especifica','18047','Reims','No especifica','France',''),(85,'Via Ludovico il Moro 22',22,0,'No especifica','82459','Bergamo','No especifica','Italy',''),(86,'Via Monte Bianco 34',34,0,'No especifica','87116','Torino','No especifica','Italy',''),(87,'Vinbltet 34',34,0,'No especifica','59536','Kobenhavn','No especifica','Denmark',''),(88,'Walserweg 21',21,0,'No especifica','20796','Aachen','No especifica','Germany','');
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_empleados`
--

DROP TABLE IF EXISTS `direcciones_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones_empleados` (
  `direccion_empleado_id` int NOT NULL AUTO_INCREMENT,
  `empleado_id` int DEFAULT NULL,
  `direccion_id` int DEFAULT NULL,
  PRIMARY KEY (`direccion_empleado_id`),
  KEY `empleado_id` (`empleado_id`),
  KEY `direccion_id` (`direccion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_empleados`
--

LOCK TABLES `direcciones_empleados` WRITE;
/*!40000 ALTER TABLE `direcciones_empleados` DISABLE KEYS */;
INSERT INTO `direcciones_empleados` VALUES (1,2,56),(2,3,52),(3,4,74),(4,5,30),(5,6,83),(6,7,33),(7,8,15),(8,9,82),(9,10,32),(10,11,58),(11,12,57),(12,13,51),(13,14,6),(14,15,28),(15,16,87),(16,17,11),(17,18,72),(18,19,42),(19,20,27),(20,21,21),(21,22,66),(22,23,36),(23,24,35),(24,25,23),(25,26,80),(26,27,8),(27,28,NULL),(28,29,29),(29,30,84),(30,31,75);
/*!40000 ALTER TABLE `direcciones_empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_cascada_4` AFTER UPDATE ON `direcciones_empleados` FOR EACH ROW BEGIN
    UPDATE empleados SET empleado_id = NEW.empleado_id WHERE empleado_id = OLD.empleado_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_cascada_5` AFTER UPDATE ON `direcciones_empleados` FOR EACH ROW BEGIN
    UPDATE direcciones SET direccion_id = NEW.direccion_id WHERE direccion_id = OLD.direccion_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrado_cascada_4` BEFORE DELETE ON `direcciones_empleados` FOR EACH ROW BEGIN
    DELETE FROM empleados WHERE empleado_id = OLD.empleado_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrado_cascada_5` BEFORE DELETE ON `direcciones_empleados` FOR EACH ROW BEGIN
    DELETE FROM direcciones WHERE direccion_id = OLD.direccion_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `direcciones_pacientes`
--

DROP TABLE IF EXISTS `direcciones_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones_pacientes` (
  `direccion_paciente_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `direccion_id` int DEFAULT NULL,
  PRIMARY KEY (`direccion_paciente_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `direccion_id` (`direccion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_pacientes`
--

LOCK TABLES `direcciones_pacientes` WRITE;
/*!40000 ALTER TABLE `direcciones_pacientes` DISABLE KEYS */;
INSERT INTO `direcciones_pacientes` VALUES (1,1,16),(2,2,64),(3,3,NULL),(4,4,NULL),(5,5,NULL),(6,6,54),(7,7,10),(8,8,43),(9,9,3),(10,10,9),(11,11,53),(12,12,49),(13,13,79),(14,14,59),(15,15,34),(16,16,40),(17,17,88),(18,18,22),(19,19,17),(20,20,65),(21,21,77),(22,22,44),(23,23,5),(24,24,63),(25,25,41),(26,26,20),(27,27,86),(28,28,62),(29,29,73),(30,30,45),(31,31,31),(32,32,13),(33,33,19),(34,34,76),(35,35,47),(36,36,50),(37,37,24),(38,38,55),(39,39,69),(40,40,NULL),(41,41,1),(42,42,7),(43,43,2),(44,44,67),(45,45,25),(46,46,48),(47,47,38),(48,48,26),(49,49,85),(50,50,78),(51,51,18),(52,52,60),(53,53,81),(54,54,61),(55,55,14),(56,56,70),(57,57,12),(58,58,46);
/*!40000 ALTER TABLE `direcciones_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_cascada_6` AFTER UPDATE ON `direcciones_pacientes` FOR EACH ROW BEGIN
    UPDATE pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_cascada_7` AFTER UPDATE ON `direcciones_pacientes` FOR EACH ROW BEGIN
    UPDATE direcciones SET direccion_id = NEW.direccion_id WHERE direccion_id = OLD.direccion_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrado_cascada_6` BEFORE DELETE ON `direcciones_pacientes` FOR EACH ROW BEGIN
    DELETE FROM pacientes WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrado_cascada_7` BEFORE DELETE ON `direcciones_pacientes` FOR EACH ROW BEGIN
    DELETE FROM direcciones WHERE direccion_id = OLD.direccion_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `empleados_id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `apellido_pat` text NOT NULL,
  `apellido_mat` text NOT NULL,
  `titulo` text,
  `fecha_nacimiento` date NOT NULL,
  `otros` text,
  PRIMARY KEY (`empleados_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Alejandro','McAlpine','McAlpine','Senior Engineer','1953-09-19','null'),(2,'Breannda','Billingsley','Billingsley','Staff','1961-10-15','null'),(3,'Tse','Herber','Herber','Senior Engineer','1962-10-19','null'),(4,'Anoosh','Peyn','Peyn','Engineer','1961-11-02','null'),(5,'Gino','Leonhardt','Leonhardt','Senior Engineer','1952-08-06','null'),(6,'Udi','Jansch','Jansch','Senior Staff','1959-04-07','null'),(7,'Satosi','Awdeh','Awdeh','Staff','1963-04-14','null'),(8,'Kwee','Schusler','Schusler','Senior Engineer','1952-11-13','null'),(9,'Claudi','Stavenow','Stavenow','Senior Staff','1953-01-07','null'),(10,'Charlene','Brattka','Brattka','Staff','1962-11-26','null'),(11,'Margareta','Bierman','Bierman','Assistant Engineer','1960-09-06','null'),(12,'Reuven','Garigliano','Garigliano','Assistant Engineer','1955-08-20','null'),(13,'Hisao','Lipner','Lipner','Engineer','1958-01-21','null'),(14,'Hironoby','Sidou','Sidou','Senior Engineer','1952-05-15','null'),(15,'Shir','McClurg','McClurg','Engineer','1954-02-23','null'),(16,'Mokhtar','Bernatsky','Bernatsky','Staff','1955-08-28','null'),(17,'Gao','Dolinsky','Dolinsky','Engineer','1960-03-09','null'),(18,'Erez','Ritzmann','Ritzmann','Senior Engineer','1952-06-13','null'),(19,'Mona','Azuma','Azuma','Senior Staff','1964-04-18','null'),(20,'Danel','Mondadori','Mondadori','Engineer','1959-12-25','null'),(21,'Kshitij','Gils','Gils','Senior Staff','1961-10-05','null'),(22,'Premal','Baek','Baek','Staff','1957-12-03','null'),(23,'Zhongwei','Rosen','Rosen','Senior Staff','1960-12-17','null'),(24,'Parviz','Lortz','Lortz','Staff','1963-09-09','null'),(25,'Vishv','Zockler','Zockler','Engineer','1959-07-23','null'),(26,'Tuval','Kalloufi','Kalloufi','Senior Engineer','1960-05-25','null'),(27,'Kenroku','Malabarba','Malabarba','Staff','1962-11-07','null'),(28,'Somnath','Foote','Foote','Engineer','1962-11-19','null'),(29,'Xinglin','Eugenio','Eugenio','Technique Leader','1959-07-23','null'),(30,'Jungsoon','Syrzycki','Syrzycki','Engineer','1954-02-25','null'),(31,'prueba','a_prueba','m_prueba','pruebaaa','1999-03-04','pasenosprofe');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago`
--

DROP TABLE IF EXISTS `formas_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formas_pago` (
  `forma_pago_id` int NOT NULL AUTO_INCREMENT,
  `forma_pago` text NOT NULL,
  PRIMARY KEY (`forma_pago_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago`
--

LOCK TABLES `formas_pago` WRITE;
/*!40000 ALTER TABLE `formas_pago` DISABLE KEYS */;
INSERT INTO `formas_pago` VALUES (1,'EFECTIVO'),(2,'TARJETA CREDITO'),(3,'TARJETA DE DEBITO'),(4,'SEGURO'),(5,'CHEQUE');
/*!40000 ALTER TABLE `formas_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago_pacientes`
--

DROP TABLE IF EXISTS `formas_pago_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formas_pago_pacientes` (
  `forma_pago_pac_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `forma_pago_id` int DEFAULT NULL,
  `detalles` text,
  PRIMARY KEY (`forma_pago_pac_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `forma_pago_id` (`forma_pago_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago_pacientes`
--

LOCK TABLES `formas_pago_pacientes` WRITE;
/*!40000 ALTER TABLE `formas_pago_pacientes` DISABLE KEYS */;
INSERT INTO `formas_pago_pacientes` VALUES (1,1,1,''),(2,2,1,''),(3,3,1,''),(4,4,2,''),(5,5,3,''),(6,6,4,''),(7,7,5,''),(8,8,1,''),(9,9,2,''),(10,10,3,''),(11,11,4,''),(12,12,5,''),(13,13,1,''),(14,14,1,''),(15,15,1,'null'),(16,16,1,'null'),(17,17,1,'null'),(18,18,2,'null'),(19,19,3,'null'),(20,20,4,'null'),(21,21,5,''),(22,22,1,'null'),(23,23,1,'null'),(24,24,1,'null'),(25,25,1,'null'),(26,26,1,'null'),(27,27,2,'null'),(28,28,3,'null'),(29,29,4,'null'),(30,30,5,'null'),(31,31,1,'null'),(32,32,1,'null'),(33,33,1,''),(34,34,1,'null'),(35,35,2,'null'),(36,36,2,''),(37,37,1,'null'),(38,38,2,'null'),(39,39,3,'null'),(40,40,4,'null'),(41,41,5,'null'),(42,42,1,'null'),(43,43,1,'null'),(44,44,1,'null'),(45,45,1,'null'),(46,46,1,'null'),(47,47,2,'null'),(48,48,3,'null'),(49,49,4,'null'),(50,50,5,'null'),(51,51,1,'null'),(52,52,1,'null'),(53,53,1,'null'),(54,54,2,'null'),(55,55,3,'null'),(56,56,4,'null'),(57,57,5,''),(58,58,1,'null');
/*!40000 ALTER TABLE `formas_pago_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_cascada_8` AFTER UPDATE ON `formas_pago_pacientes` FOR EACH ROW BEGIN
    UPDATE pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_cascada_9` AFTER UPDATE ON `formas_pago_pacientes` FOR EACH ROW BEGIN
    UPDATE formas_pago SET forma_pago_id = NEW.forma_pago_id WHERE forma_pago_id = OLD.forma_pago_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrado_cascada_8` BEFORE DELETE ON `formas_pago_pacientes` FOR EACH ROW BEGIN
    DELETE FROM pacientes WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrado_cascada_9` BEFORE DELETE ON `formas_pago_pacientes` FOR EACH ROW BEGIN
    DELETE FROM formas_pago WHERE forma_pago_id = OLD.forma_pago_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `paciente_id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `apellido_pat` text NOT NULL,
  `apellido_mat` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL,
  `numero_seguro_social` text NOT NULL,
  `genero` enum('masculino','femenino') DEFAULT NULL,
  `telefono_casa` text,
  `telefono_trabajo` text,
  `telefono_movil` text,
  `otros` text,
  PRIMARY KEY (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Georgi','Facello','Facello','1960-02-20',93,1.99,'10001','masculino',NULL,NULL,NULL,NULL),(2,'Bezalel','Simmel','Simmel','1952-07-08',88,1.69,'10002','femenino',NULL,NULL,NULL,NULL),(3,'Parto','Bamford','Bamford','1953-09-29',62,1.88,'10003','masculino',NULL,NULL,NULL,NULL),(4,'Chirstian','Koblick','Koblick','1958-09-05',93,1.84,'10004','masculino',NULL,NULL,NULL,NULL),(5,'Kyoichi','Maliniak','Maliniak','1958-10-31',86,1.89,'10005','masculino',NULL,NULL,NULL,NULL),(6,'Anneke','Preusig','Preusig','1953-04-03',86,1.54,'10006','femenino',NULL,NULL,NULL,NULL),(7,'Tzvetan','Zielinski','Zielinski','1962-07-10',56,1.77,'10007','femenino',NULL,NULL,NULL,NULL),(8,'Saniya','Kalloufi','Kalloufi','1963-11-26',78,1.82,'10008','masculino',NULL,NULL,NULL,NULL),(9,'Sumant','Peac','Peac','1956-12-13',85,1.64,'10009','femenino',NULL,NULL,NULL,NULL),(10,'Duangkaew','Piveteau','Piveteau','1958-07-14',92,1.71,'10010','femenino',NULL,NULL,NULL,NULL),(11,'Mary','Sluis','Sluis','1959-01-27',96,1.96,'10011','femenino',NULL,NULL,NULL,NULL),(12,'Patricio','Bridgland','Bridgland','1960-08-09',63,1.9,'10012','masculino',NULL,NULL,NULL,NULL),(13,'Eberhardt','Terkki','Terkki','1956-11-14',81,1.64,'10013','masculino',NULL,NULL,NULL,NULL),(14,'Berni','Genin','Genin','1962-12-29',67,1.74,'10014','masculino',NULL,NULL,NULL,NULL),(15,'Guoxiang','Nooteboom','Nooteboom','1953-02-08',60,1.55,'10015','masculino',NULL,NULL,NULL,NULL),(16,'Kazuhito','Cappelletti','Cappelletti','1959-08-10',97,1.71,'10016','masculino',NULL,NULL,NULL,NULL),(17,'Cristinel','Bouloucos','Bouloucos','1963-07-22',66,1.91,'10017','femenino',NULL,NULL,NULL,NULL),(18,'Kazuhide','Peha','Peha','1960-07-20',88,1.51,'10018','femenino',NULL,NULL,NULL,NULL),(19,'Lillian','Haddadi','Haddadi','1959-10-01',85,1.61,'10019','masculino',NULL,NULL,NULL,NULL),(20,'Mayuko','Warwick','Warwick','1959-09-13',96,1.78,'10020','masculino',NULL,NULL,NULL,NULL),(21,'Ramzi','Erde','Erde','1959-08-27',91,1.61,'10021','masculino',NULL,NULL,NULL,NULL),(22,'Shahaf','Famili','Famili','1956-02-26',70,1.81,'10022','masculino',NULL,NULL,NULL,NULL),(23,'Bojan','Montemayor','Montemayor','1960-09-19',86,1.8,'10023','femenino',NULL,NULL,NULL,NULL),(24,'Suzette','Pettey','Pettey','1961-09-21',79,1.74,'10024','femenino',NULL,NULL,NULL,NULL),(25,'Prasadram','Heyers','Heyers','1957-08-14',91,1.95,'10025','masculino',NULL,NULL,NULL,NULL),(26,'Yongqiao','Berztiss','Berztiss','1960-07-23',75,1.91,'10026','masculino',NULL,NULL,NULL,NULL),(27,'Divier','Reistad','Reistad','1952-06-29',57,1.6,'10027','femenino',NULL,NULL,NULL,NULL),(28,'Domenick','Tempesti','Tempesti','1963-07-11',62,1.72,'10028','masculino',NULL,NULL,NULL,NULL),(29,'Otmar','Herbst','Herbst','1961-04-24',77,1.6,'10029','masculino',NULL,NULL,NULL,NULL),(30,'Elvis','Demeyer','Demeyer','1958-05-21',93,1.64,'10030','masculino',NULL,NULL,NULL,NULL),(31,'Karsten','Joslin','Joslin','1953-07-28',95,1.52,'10031','masculino',NULL,NULL,NULL,NULL),(32,'Jeong','Reistad','Reistad','1961-02-26',84,1.6,'10032','femenino',NULL,NULL,NULL,NULL),(33,'Arif','Merlo','Merlo','1954-09-13',92,1.77,'10033','masculino',NULL,NULL,NULL,NULL),(34,'Bader','Swan','Swan','1957-04-04',69,1.56,'10034','masculino',NULL,NULL,NULL,NULL),(35,'Alain','Chappelet','Chappelet','1956-06-06',57,1.55,'10035','masculino',NULL,NULL,NULL,NULL),(36,'Adamantios','Portugali','Portugali','1961-09-01',62,1.99,'10036','masculino',NULL,NULL,NULL,NULL),(37,'Pradeep','Makrucki','Makrucki','1954-05-30',60,1.75,'10037','masculino',NULL,NULL,NULL,NULL),(38,'Huan','Lortz','Lortz','1954-10-01',97,1.88,'10038','masculino',NULL,NULL,NULL,NULL),(39,'Alejandro','Brender','Brender','1959-10-01',92,1.78,'10039','masculino',NULL,NULL,NULL,NULL),(40,'Weiyi','Meriste','Meriste','1959-09-13',97,1.84,'10040','femenino',NULL,NULL,NULL,NULL),(41,'Uri','Lenart','Lenart','1959-08-27',80,1.9,'10041','femenino',NULL,NULL,NULL,NULL),(42,'Magy','Stamatiou','Stamatiou','1956-02-26',69,1.91,'10042','femenino',NULL,NULL,NULL,NULL),(43,'Yishay','Tzvieli','Tzvieli','1960-09-19',65,1.95,'10043','masculino',NULL,NULL,NULL,NULL),(44,'Mingsen','Casley','Casley','1961-09-21',90,1.8,'10044','femenino',NULL,NULL,NULL,NULL),(45,'Moss','Shanbhogue','Shanbhogue','1957-08-14',90,1.97,'10045','masculino',NULL,NULL,NULL,NULL),(46,'Lucien','Rosenbaum','Rosenbaum','1960-07-23',85,1.53,'10046','masculino',NULL,NULL,NULL,NULL),(47,'Zvonko','Nyanchama','Nyanchama','1952-06-29',78,1.65,'10047','masculino',NULL,NULL,NULL,NULL),(48,'Florian','Syrotiuk','Syrotiuk','1963-07-11',76,1.58,'10048','masculino',NULL,NULL,NULL,NULL),(49,'Basil','Tramer','Tramer','1961-04-24',99,1.55,'10049','femenino',NULL,NULL,NULL,NULL),(50,'Yinghua','Dredge','Dredge','1958-05-21',78,1.54,'10050','masculino',NULL,NULL,NULL,NULL),(51,'Hidefumi','Caine','Caine','1953-07-28',54,1.84,'10051','masculino',NULL,NULL,NULL,NULL),(52,'Heping','Nitsch','Nitsch','1961-02-26',85,1.59,'10052','masculino',NULL,NULL,NULL,NULL),(53,'Sanjiv','Zschoche','Zschoche','1954-09-13',52,1.53,'10053','femenino',NULL,NULL,NULL,NULL),(54,'Mayumi','Schueller','Schueller','1957-04-04',75,1.72,'10054','masculino',NULL,NULL,NULL,NULL),(55,'Georgy','Dredge','Dredge','1956-06-06',97,1.61,'10055','masculino',NULL,NULL,NULL,NULL),(56,'Brendon','Bernini','Bernini','1961-09-01',91,1.63,'10056','femenino',NULL,NULL,NULL,NULL),(57,'Ebbe','Callaway','Callaway','1954-05-30',91,1.96,'10057','femenino',NULL,NULL,NULL,NULL),(58,'Berhard','McFarlin','McFarlin','1954-10-01',99,1.96,'10058',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_pacientes`
--

DROP TABLE IF EXISTS `registro_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_pacientes` (
  `registro_paciente_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `cuentas_pacientes_id` int DEFAULT NULL,
  `registro_por_empleado_id` int DEFAULT NULL,
  `fecha_admision` date NOT NULL,
  `condicion_medica` text NOT NULL,
  `otros` text,
  PRIMARY KEY (`registro_paciente_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `cuentas_pacientes_id` (`cuentas_pacientes_id`),
  KEY `registro_por_empleado_id` (`registro_por_empleado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_pacientes`
--

LOCK TABLES `registro_pacientes` WRITE;
/*!40000 ALTER TABLE `registro_pacientes` DISABLE KEYS */;
INSERT INTO `registro_pacientes` VALUES (1,1,1,1,'2017-04-08','Abdominal Aortic Aneurysm ','null'),(2,2,2,2,'2017-04-09','Abdominal Cramps (Heat Cramps) ','null'),(3,3,3,3,'2017-04-10','Abdominal Hernia (Hernia Overview) ','null'),(4,4,4,4,'2017-04-12','Bacterial Vaginosis (Causes, Symptoms, Treatment) ','null'),(5,5,5,5,'2017-04-12','Bad Breath ','null'),(6,6,6,6,'2017-04-14','Bad Cholesterol Test (Cholesterol Test) ','null'),(7,7,7,7,'2017-04-15','Baker Cyst ','null'),(8,8,8,8,'2017-04-15','Farting (Intestinal Gas (Belching, Bloating, Flatulence)) ','null'),(9,9,9,9,'2017-04-16','Fast Heart Beat (Palpitations Overview) ','null'),(10,10,10,10,'2017-04-17','Fatigue ','null'),(11,11,11,11,'2017-04-18','Fatigue From Cancer (Cancer Fatigue ','null'),(12,12,12,12,'2017-04-19','Lambliasis (Giardia Lamblia) ','null'),(13,13,13,13,'2017-04-20','Lambliosis (Giardia Lamblia) ','null'),(14,14,14,14,'2017-04-22','Landau-Kleffner Syndrome ','null'),(15,15,15,15,'2017-04-22','Lap Band Surgery (Gastric Banding) ','null'),(16,16,16,16,'2017-04-24','Laparoscopic Liver Biopsy (Liver Biopsy) ','null'),(17,17,17,17,'2017-04-24','Omega-3 Fatty Acids ','null'),(18,18,18,18,'2017-04-25','Onchocerciasis ','null'),(19,19,19,19,'2017-04-27','Onychocryptosis (Ingrown Toenail) ','null'),(20,20,20,20,'2017-04-28','Scarlatina) ','null'),(21,21,21,21,'2017-04-28','Scars ','null'),(22,22,22,22,'2017-04-30','Schatzki Ring ','null'),(23,23,23,23,'2017-05-01','Scheuermann\'s Kyphosis (Kyphosis) ','null'),(24,24,24,24,'2017-05-01','Schistosoma guineensis (Schistosomiasis) ','null'),(25,25,25,25,'2017-05-02','Schistosoma haematobium (Schistosomiasis) ','null'),(26,26,26,26,'2017-05-04','Schistosoma japonicum (Schistosomiasis) ','null'),(27,27,27,27,'2017-05-04','Tachycardia (Heart Rhythm Disorders) ','null'),(28,28,28,28,'2017-05-06','Tachycardia, Paroxysmal Atrial (Paroxysmal Supraventricular Tachycardia (PSVT)) ','null'),(29,29,29,29,'2017-05-07','Tachycardia, Paroxysmal Supraventricular (Paroxysmal Supraventricular Tachycardia (PSVT)) ','null'),(30,30,30,30,'2017-05-07','Tailbone Pain (Coccydynia) ','null'),(31,31,31,1,'2017-05-09','Tailor\'s Bunion (Bunions) ','null'),(32,32,32,2,'2017-05-10','Takayasu Arteritis (Takayasu Disease) ','null'),(33,33,33,3,'2017-05-10','Takayasu Disease ','null'),(34,34,34,4,'2017-05-11','Taking Dental Medications ','null'),(35,35,35,5,'2017-05-13','Tarry Stools (Stool Color Changes) ','null'),(36,36,36,6,'2017-05-14','Abdominal Aortic Aneurysm ','null'),(37,37,37,7,'2017-05-14','Abdominal Cramps (Heat Cramps) ','null'),(38,38,38,8,'2017-05-15','Abdominal Hernia (Hernia Overview) ','null'),(39,39,39,9,'2017-05-16','Bacterial Vaginosis (Causes, Symptoms, Treatment) ','null'),(40,40,40,10,'2017-05-18','Bad Breath ','null'),(41,41,41,11,'2017-05-18','Bad Cholesterol Test (Cholesterol Test) ','null'),(42,42,42,12,'2017-05-20','Baker Cyst ','null'),(43,43,43,13,'2017-05-21','Farting (Intestinal Gas (Belching, Bloating, Flatulence)) ','null'),(44,44,44,14,'2017-05-22','Fast Heart Beat (Palpitations Overview) ','null'),(45,45,45,15,'2017-05-23','Fatigue ','null'),(46,46,46,16,'2017-05-23','Fatigue From Cancer (Cancer Fatigue ','null'),(47,47,47,17,'2017-05-25','Lambliasis (Giardia Lamblia) ','null'),(48,48,48,18,'2017-05-25','Lambliosis (Giardia Lamblia) ','null'),(49,49,49,19,'2017-05-27','Landau-Kleffner Syndrome ','null'),(50,50,50,20,'2017-05-28','Lap Band Surgery (Gastric Banding) ','null'),(51,51,51,21,'2017-05-29','Laparoscopic Liver Biopsy (Liver Biopsy) ','null'),(52,52,52,22,'2017-05-29','Omega-3 Fatty Acids ','null'),(53,53,53,23,'2017-05-31','Onchocerciasis ','null'),(54,54,54,24,'2017-05-31','Onychocryptosis (Ingrown Toenail) ','null'),(55,55,55,25,'2017-06-01','Scarlatina) ','null'),(56,56,56,26,'2017-06-02','Scars ','null'),(57,57,57,27,'2017-06-04','Schatzki Ring ','null'),(58,58,58,28,'2017-06-05','Scheuermann\'s Kyphosis (Kyphosis) ','null');
/*!40000 ALTER TABLE `registro_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_cascada_10` AFTER UPDATE ON `registro_pacientes` FOR EACH ROW BEGIN
    UPDATE pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_cascada_11` AFTER UPDATE ON `registro_pacientes` FOR EACH ROW BEGIN
    UPDATE cuentas_pacientes SET cuentas_pacientes_id = NEW.cuentas_pacientes_id WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_cascada_12` AFTER UPDATE ON `registro_pacientes` FOR EACH ROW BEGIN
    UPDATE empleados SET empleados_id = NEW.registro_por_empleado_id WHERE empleados_id = OLD.registro_por_empleado_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrado_cascada_10` BEFORE DELETE ON `registro_pacientes` FOR EACH ROW BEGIN
    DELETE FROM pacientes WHERE paciente_id = OLD.paciente_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrado_cascada_11` BEFORE DELETE ON `registro_pacientes` FOR EACH ROW BEGIN
    DELETE FROM cuentas_pacientes WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrado_cascada_12` BEFORE DELETE ON `registro_pacientes` FOR EACH ROW BEGIN
    DELETE FROM empleados WHERE empleados_id = OLD.registro_por_empleado_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'hospital'
--

--
-- Dumping routines for database 'hospital'
--
/*!50003 DROP FUNCTION IF EXISTS `generar_nss` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `generar_nss`(id int) RETURNS varchar(100) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
begin
-- Variables
  declare numero_oficina int;
  declare año_nacimiento varchar(100);
  
  declare inscribio_trabajador int;
  declare año_sum int;
  declare año_actual int;
    
-- Variables para el verificador del NSS
  declare suma int;
  declare x int;
  declare digito int;
  declare codigo_verificador int;
  -- --------------------------------------------
  declare ultimo_consecutivo int;
  declare num_consecutivo int;
  -- -----------------------------------------------
  
  -- VARIABLE PRINCIPAL PARA LA GENERACION DEL NSS
  declare nss varchar(100);
  declare nss_temp varchar(100);
  
--  1: ----------------------------------------
-- FLOOR es solo devolver valores interos y el RAND ES UNA FUNCION DE NUMERO ALTEARIO DEL 0 AL 100
  set numero_oficina = floor(rand() * 101);
  
  if numero_oficina < 10 then
     set nss = concat("0", numero_oficina);
     set nss_temp = concat("0", numero_oficina);
  else
     set nss = concat(numero_oficina);
     set nss_temp = concat(numero_oficina);
  end if;

-- 2  ---------------------------------------------------------------------------------------

  select year(fecha_nacimiento) into inscribio_trabajador from empleados where empleados_id = id;

  set año_sum = inscribio_trabajador + 15;
  set año_actual = year(current_date);
  
  set inscribio_trabajador = año_sum + floor(rand() * (año_actual - año_sum + 1));
  set inscribio_trabajador = inscribio_trabajador % 100;
    
  set nss = concat(nss, "-", inscribio_trabajador);
  set nss_temp = concat(nss_temp, inscribio_trabajador);

--   3 --------------------------------------------------------------------------------------
  select right(year(fecha_nacimiento), 2) into año_nacimiento from empleados where empleados_id = id;
  set nss = concat(nss, "-", año_nacimiento);
  set nss_temp = concat(nss_temp, año_nacimiento);

-- 8449: Cada vez que agregue un nuevo paciente, y genere el NSS, tome el ÚLTIMO valor de la tabla CONSECUTIVOS, súmele 1 para generar el NSS 

  select consecutivo into num_consecutivo from consecutivos order by consecutivo desc limit 1;
  set nss = concat(nss, "-", num_consecutivo + 1);
  set nss_temp = concat(nss_temp, num_consecutivo + 1);
  update consecutivos set consecutivo = consecutivo + 1;
    
-- 5 ------------------------------------------------------------------

  set suma = 0;
  set x = 1;
  
  while x <= 10 do
    set digito = cast(substring(nss_temp, x, 1) as unsigned);
    
    set digito = digito * (2 - (x % 2));
    
    if digito >= 10 then
      set digito = digito - 9;
    end if;
    
    set suma = suma + digito;
    set x = x + 1;
  end while;
  set codigo_verificador = (10 - (suma % 10)) % 10;
  
  set nss = concat(nss, "-", codigo_verificador);
  
  
  -- RETORNA TODO EL NSS GENERADO EXITOSAMENTE :)
  return nss;
  
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACTUALIZAR_PAGOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ACTUALIZAR_PAGOS`(IN paciente_id INT)
BEGIN
    SELECT 'EFECTIVO' AS TIPO_PAGO, COALESCE(SUM(cpd.costo_total), 0) AS MONTO
    FROM cuentas_pacientes cp
    LEFT JOIN cuentas_pacientes_detalles cpd ON cp.cuentas_pacientes_id = cpd.cuentas_pacientes_id
    LEFT JOIN formas_pago_pacientes fpp ON cp.forma_pago_pac_id = fpp.forma_pago_pac_id
    LEFT JOIN formas_pago fp ON fpp.forma_pago_id = fp.forma_pago_id
    WHERE cp.paciente_id = paciente_id AND fp.forma_pago = 'EFECTIVO'
    UNION ALL
    SELECT 'CHEQUE' AS TIPO_PAGO, COALESCE(SUM(cpd.costo_total), 0) AS MONTO
    FROM cuentas_pacientes cp
    LEFT JOIN cuentas_pacientes_detalles cpd ON cp.cuentas_pacientes_id = cpd.cuentas_pacientes_id
    LEFT JOIN formas_pago_pacientes fpp ON cp.forma_pago_pac_id = fpp.forma_pago_pac_id
    LEFT JOIN formas_pago fp ON fpp.forma_pago_id = fp.forma_pago_id
    WHERE cp.paciente_id = paciente_id AND fp.forma_pago = 'CHEQUE'
    UNION ALL
    SELECT 'TARJETA CRÉDITO' AS TIPO_PAGO, COALESCE(SUM(cpd.costo_total), 0) AS MONTO
    FROM cuentas_pacientes cp
    LEFT JOIN cuentas_pacientes_detalles cpd ON cp.cuentas_pacientes_id = cpd.cuentas_pacientes_id
    LEFT JOIN formas_pago_pacientes fpp ON cp.forma_pago_pac_id = fpp.forma_pago_pac_id
    LEFT JOIN formas_pago fp ON fpp.forma_pago_id = fp.forma_pago_id
    WHERE cp.paciente_id = paciente_id AND fp.forma_pago = 'TARJETA CRÉDITO'
    UNION ALL
    SELECT 'TARJETA DÉBITO' AS TIPO_PAGO, COALESCE(SUM(cpd.costo_total), 0) AS MONTO
    FROM cuentas_pacientes cp
    LEFT JOIN cuentas_pacientes_detalles cpd ON cp.cuentas_pacientes_id = cpd.cuentas_pacientes_id
    LEFT JOIN formas_pago_pacientes fpp ON cp.forma_pago_pac_id = fpp.forma_pago_pac_id
    LEFT JOIN formas_pago fp ON fpp.forma_pago_id = fp.forma_pago_id
    WHERE cp.paciente_id = paciente_id AND fp.forma_pago = 'TARJETA DE DÉBITO'
    UNION ALL
    SELECT 'SIN PAGO' AS TIPO_PAGO, COALESCE(SUM(cpd.costo_total), 0) AS MONTO
    FROM cuentas_pacientes cp
    LEFT JOIN cuentas_pacientes_detalles cpd ON cp.cuentas_pacientes_id = cpd.cuentas_pacientes_id
	LEFT JOIN formas_pago_pacientes fpp ON cp.forma_pago_pac_id = fpp.forma_pago_pac_id
        LEFT JOIN formas_pago fp ON fpp.forma_pago_id = fp.forma_pago_id
    WHERE cp.paciente_id = paciente_id AND fp.forma_pago = 'SEGURO';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28 17:16:48
