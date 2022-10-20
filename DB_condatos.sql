CREATE DATABASE  IF NOT EXISTS `cellgadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
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
-- Table structure for table `accesousu`
--

DROP TABLE IF EXISTS `accesousu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accesousu` (
  `Au_id` int NOT NULL AUTO_INCREMENT,
  `Ro_id` int DEFAULT NULL,
  `Usu_id` varchar(45) DEFAULT NULL,
  `Te_id` int DEFAULT NULL,
  PRIMARY KEY (`Au_id`),
  KEY `Ro_id` (`Ro_id`),
  KEY `Usu_id` (`Usu_id`),
  KEY `Te_id` (`Te_id`),
  CONSTRAINT `accesousu_ibfk_1` FOREIGN KEY (`Ro_id`) REFERENCES `rol` (`Ro_id`),
  CONSTRAINT `accesousu_ibfk_2` FOREIGN KEY (`Usu_id`) REFERENCES `usuario` (`Usu_id`),
  CONSTRAINT `accesousu_ibfk_3` FOREIGN KEY (`Te_id`) REFERENCES `tabla_equipo` (`Te_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesousu`
--

LOCK TABLES `accesousu` WRITE;
/*!40000 ALTER TABLE `accesousu` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesousu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `Ro_id` int NOT NULL AUTO_INCREMENT,
  `Ro_nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Ro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_equipo`
--

DROP TABLE IF EXISTS `tabla_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_equipo` (
  `Te_id` int NOT NULL AUTO_INCREMENT,
  `Te_tema` varchar(100) DEFAULT NULL,
  `Te_descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Te_id`)
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
  `Ti_id` int NOT NULL AUTO_INCREMENT,
  `Ti_nombre` varchar(100) DEFAULT NULL,
  `Usu_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Ti_id`),
  KEY `Usu_id` (`Usu_id`),
  CONSTRAINT `tabla_individual_ibfk_1` FOREIGN KEY (`Usu_id`) REFERENCES `usuario` (`Usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_individual`
--

LOCK TABLES `tabla_individual` WRITE;
/*!40000 ALTER TABLE `tabla_individual` DISABLE KEYS */;
INSERT INTO `tabla_individual` VALUES (1,'Tabla de juan','Jimenez.zea'),(2,'Tabla de jimenez','juan@gmail.com'),(3,'','null'),(4,'','nicolas@gmail.com'),(5,'','Heranndez'),(6,'','sssssss');
/*!40000 ALTER TABLE `tabla_individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarea_te`
--

DROP TABLE IF EXISTS `tarea_te`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarea_te` (
  `Tare_id` int NOT NULL AUTO_INCREMENT,
  `Tare_tema` varchar(100) DEFAULT NULL,
  `Tare_descripcion` varchar(500) DEFAULT NULL,
  `Tare_fechaCrea` datetime DEFAULT NULL,
  `Tare_fechaExp` datetime DEFAULT NULL,
  `Te_id` int DEFAULT NULL,
  PRIMARY KEY (`Tare_id`),
  KEY `Te_id` (`Te_id`),
  CONSTRAINT `tarea_te_ibfk_1` FOREIGN KEY (`Te_id`) REFERENCES `tabla_equipo` (`Te_id`)
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
  `Tari_id` int NOT NULL AUTO_INCREMENT,
  `Tari_tema` varchar(100) DEFAULT NULL,
  `Tari_descripcion` varchar(500) DEFAULT NULL,
  `Tari_fechaCrea` datetime DEFAULT NULL,
  `tari_fechaExp` datetime DEFAULT NULL,
  `Ti_id` int DEFAULT NULL,
  PRIMARY KEY (`Tari_id`),
  KEY `Ti_id` (`Ti_id`),
  CONSTRAINT `tarea_ti_ibfk_1` FOREIGN KEY (`Ti_id`) REFERENCES `tabla_individual` (`Ti_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarea_ti`
--

LOCK TABLES `tarea_ti` WRITE;
/*!40000 ALTER TABLE `tarea_ti` DISABLE KEYS */;
INSERT INTO `tarea_ti` VALUES (1,'Cellga','Descripcion','2022-10-13 00:00:00','2022-10-13 00:00:00',1),(2,'nn','nn','2022-10-13 20:44:00','2022-10-13 20:44:00',6),(3,'gfsr','123','2022-10-13 20:44:00','2022-10-18 12:55:05',1),(4,'Tema','Descripcion','2022-10-20 15:53:42','2022-10-18 12:55:00',1),(5,'Tema','Ya funciona?','2022-10-20 15:59:40','2022-10-01 15:03:00',1);
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
  `Usu_contraseña` varchar(45) NOT NULL,
  `Usu_nombre` tinytext,
  `Usu_fechaReg` datetime DEFAULT NULL,
  PRIMARY KEY (`Usu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('Heranndez','Angel','nicolas','2022-10-13 20:42:29'),('Jimenez.zea','prueba','juan','2022-10-13 14:30:30'),('juan@gmail.com','11608041211','jimenez','2022-10-13 15:25:48'),('nicolas@gmail.com','NICOLAS','Nicolas','2022-10-13 20:33:16'),('null','null','null','2022-10-13 20:32:59'),('sssssss','123','Niucoola','2022-10-13 20:43:54');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cellgadb'
--

--
-- Dumping routines for database 'cellgadb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-20 18:09:00
