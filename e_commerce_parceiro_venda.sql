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
-- Table structure for table `parceiro_venda`
--

DROP TABLE IF EXISTS `parceiro_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parceiro_venda` (
  `id_parceiro_venda` int NOT NULL AUTO_INCREMENT,
  `razao_social_parceiro_vendas` varchar(100) NOT NULL,
  `cnpj` varchar(18) NOT NULL,
  `e_mail` varchar(60) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `site` varchar(180) NOT NULL,
  `id_endereco_fk` int NOT NULL,
  PRIMARY KEY (`id_parceiro_venda`),
  UNIQUE KEY `cnpj` (`cnpj`),
  UNIQUE KEY `e_mail` (`e_mail`),
  UNIQUE KEY `telefone` (`telefone`),
  UNIQUE KEY `site` (`site`),
  KEY `id_endereco_fk` (`id_endereco_fk`),
  CONSTRAINT `parceiro_venda_ibfk_1` FOREIGN KEY (`id_endereco_fk`) REFERENCES `endereco` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parceiro_venda`
--

LOCK TABLES `parceiro_venda` WRITE;
/*!40000 ALTER TABLE `parceiro_venda` DISABLE KEYS */;
INSERT INTO `parceiro_venda` VALUES (1,'Manuel Festa','22.877.123/0001-62','manuelfesta@gmail.com','21 3267-6666','https://www.manuelfesta.com.br/',7),(2,'Eletrônica Olé','42.788.321/0001-24','eletronicaole@hotmail.com.br','(21) 3364-6940','https://www.eletronicaole.com.br/',8),(3,'Artesanal Móveis','66.177.463/0001-67','artesanalmoveis@gmail.com','(21) 4242-3345','https://www.artesanalmoveis.com.br/',6),(4,'Informática Zema','10.266.642/0001-01','informaticazema@gmail.com','(21) 99678-3240','https://www.informaticazema.com.br/',10),(5,'Eletro Murilo','11.453.876/0001-02','eletromurilo@gmail.com','21 3278-4233','https://www.eletromurilo.com.br/',9);
/*!40000 ALTER TABLE `parceiro_venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02 12:21:45
