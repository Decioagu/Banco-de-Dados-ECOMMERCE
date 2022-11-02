CREATE DATABASE  IF NOT EXISTS `e_commerce` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `e_commerce`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: e_commerce
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cliente_pj`
--

DROP TABLE IF EXISTS `cliente_pj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_pj` (
  `id_cliente_pj` int NOT NULL AUTO_INCREMENT,
  `razao_social_cliente_pj` varchar(120) NOT NULL,
  `cnpj` varchar(18) NOT NULL,
  `site` varchar(180) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `e_mail` varchar(60) NOT NULL,
  `id_endereco_fk` int NOT NULL,
  PRIMARY KEY (`id_cliente_pj`),
  UNIQUE KEY `cnpj` (`cnpj`),
  UNIQUE KEY `site` (`site`),
  UNIQUE KEY `telefone` (`telefone`),
  UNIQUE KEY `e_mail` (`e_mail`),
  KEY `id_endereco_fk` (`id_endereco_fk`),
  CONSTRAINT `cliente_pj_ibfk_1` FOREIGN KEY (`id_endereco_fk`) REFERENCES `endereco` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_pj`
--

LOCK TABLES `cliente_pj` WRITE;
/*!40000 ALTER TABLE `cliente_pj` DISABLE KEYS */;
INSERT INTO `cliente_pj` VALUES (1,'Eletrônica Ita','32.667.144/0001-02','https://www.eletronicaita.com.br/','(11) 3267-6666','eletronicaita@gmail.com',20),(2,'Eletrônica KCL','12.118.671/0001-02','https://www.eletronkcl.com.br/','(31) 3364-6940','eletronkcl@hotmail.com.br',19),(3,'Festa & CIA','62.877.447/0001-07','https://www.festaecia.com.br/','(21) 4242-3345','festaecia@gmail.com',18),(4,'Casa Maite','10.555.762/0001-02','https://www.casamaite.com.br/','(21) 99678-3240','casamaite@gmail.com',17),(5,'Zé Ruela Parafusos','12.444.832/0001-02','https://www.zeruelaparafuso.com.br/','21 3278-4233','zrp@gmail.com',16),(6,'Eletrônica Olé','42.788.321/0001-24','https://www.eletronicaole.com.br/','(21) 3364-6940','eletronicaole@hotmail.com.br',8);
/*!40000 ALTER TABLE `cliente_pj` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02 12:21:43
