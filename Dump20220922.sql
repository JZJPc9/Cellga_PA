CREATE DATABASE  IF NOT EXISTS `cellgadb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cellgadb`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: cellgadb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `accesusu`
--

DROP TABLE IF EXISTS `accesusu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accesusu` (
  `Au_id` int NOT NULL,
  `Te_identificador` int DEFAULT NULL,
  `Usu_correo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Au_id`),
  KEY `Te_id_idx` (`Te_identificador`),
  KEY `Usu_id_idx` (`Usu_correo`),
  CONSTRAINT `Te_identificador` FOREIGN KEY (`Te_identificador`) REFERENCES `tabla_equipo` (`Te_id`),
  CONSTRAINT `Usu_correo` FOREIGN KEY (`Usu_correo`) REFERENCES `usuario` (`Usu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesusu`
--

LOCK TABLES `accesusu` WRITE;
/*!40000 ALTER TABLE `accesusu` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesusu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_equipo`
--

DROP TABLE IF EXISTS `tabla_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_equipo` (
  `Te_id` int NOT NULL,
  `Te_tema` varchar(20) DEFAULT NULL,
  `Te_descripcion` varchar(45) DEFAULT NULL,
  `Usu_corr` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Te_id`),
  KEY `Usu_corr_idx` (`Usu_corr`),
  CONSTRAINT `Usu_corr` FOREIGN KEY (`Usu_corr`) REFERENCES `usuario` (`Usu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_equipo`
--

LOCK TABLES `tabla_equipo` WRITE;
/*!40000 ALTER TABLE `tabla_equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabla_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_individual`
--

DROP TABLE IF EXISTS `tabla_individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_individual` (
  `Ti_id` int NOT NULL,
  `Ti_nombre` varchar(45) DEFAULT NULL,
  `Usu_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Ti_id`),
  KEY `Usu_id_idx` (`Usu_id`),
  CONSTRAINT `Usu_id` FOREIGN KEY (`Usu_id`) REFERENCES `usuario` (`Usu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_individual`
--

LOCK TABLES `tabla_individual` WRITE;
/*!40000 ALTER TABLE `tabla_individual` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabla_individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarea_te`
--

DROP TABLE IF EXISTS `tarea_te`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarea_te` (
  `Tare_id` int NOT NULL,
  `Tare_descripcion` varchar(100) DEFAULT NULL,
  `Tare_fechaCrea` date DEFAULT NULL,
  `Tare_fechaExp` date DEFAULT NULL,
  `Te_id` int DEFAULT NULL,
  PRIMARY KEY (`Tare_id`),
  CONSTRAINT `Te_id` FOREIGN KEY (`Tare_id`) REFERENCES `tabla_equipo` (`Te_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarea_te`
--

LOCK TABLES `tarea_te` WRITE;
/*!40000 ALTER TABLE `tarea_te` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarea_te` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarea_ti`
--

DROP TABLE IF EXISTS `tarea_ti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarea_ti` (
  `Tari_id` int NOT NULL,
  `Tari_descripcion` varchar(100) DEFAULT NULL,
  `Tari_fechaCrea` date DEFAULT NULL,
  `Tari_fecha_Exp` varchar(45) DEFAULT NULL,
  `Ti_id` int DEFAULT NULL,
  PRIMARY KEY (`Tari_id`),
  CONSTRAINT `Ti_id` FOREIGN KEY (`Tari_id`) REFERENCES `tabla_individual` (`Ti_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarea_ti`
--

LOCK TABLES `tarea_ti` WRITE;
/*!40000 ALTER TABLE `tarea_ti` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarea_ti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `Usu_id` varchar(45) NOT NULL,
  `Usu_contraseña` varchar(45) DEFAULT NULL,
  `Usu_nombre` tinytext,
  `Usu_fechaReg` date DEFAULT NULL,
  PRIMARY KEY (`Usu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-22 18:46:18
