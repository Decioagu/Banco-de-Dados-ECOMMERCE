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
-- Table structure for table `produto_estoque`
--

DROP TABLE IF EXISTS `produto_estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_estoque` (
  `id_produto_estoque` int NOT NULL AUTO_INCREMENT,
  `quantidade_produto_estoque` int unsigned NOT NULL,
  `valor_unitário_produto` decimal(10,2) unsigned NOT NULL,
  `data_reposicao_produto` date NOT NULL,
  `id_estoque_fk` int DEFAULT NULL,
  `id_produto_fk` int NOT NULL,
  `id_parceiro_venda_fk` int DEFAULT NULL,
  PRIMARY KEY (`id_produto_estoque`),
  UNIQUE KEY `id_estoque_fk` (`id_estoque_fk`),
  UNIQUE KEY `id_estoque_fk_2` (`id_estoque_fk`),
  KEY `id_produto_fk` (`id_produto_fk`),
  KEY `id_parceiro_venda_fk` (`id_parceiro_venda_fk`),
  CONSTRAINT `produto_estoque_ibfk_1` FOREIGN KEY (`id_estoque_fk`) REFERENCES `estoque` (`id_estoque`),
  CONSTRAINT `produto_estoque_ibfk_2` FOREIGN KEY (`id_produto_fk`) REFERENCES `produto` (`id_produto`),
  CONSTRAINT `produto_estoque_ibfk_3` FOREIGN KEY (`id_parceiro_venda_fk`) REFERENCES `parceiro_venda` (`id_parceiro_venda`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_estoque`
--

LOCK TABLES `produto_estoque` WRITE;
/*!40000 ALTER TABLE `produto_estoque` DISABLE KEYS */;
INSERT INTO `produto_estoque` VALUES (1,8,606.78,'2022-06-20',1,1,NULL),(2,18,589.00,'2022-06-20',2,2,NULL),(3,18,750.00,'2022-06-20',3,3,NULL),(4,2,733.00,'2022-06-20',NULL,3,5),(5,0,1809.00,'2022-06-20',4,4,NULL),(6,2,1378.00,'2022-06-20',5,5,NULL),(7,2,632.00,'2022-06-20',6,6,NULL),(8,2,490.90,'2022-06-20',7,7,NULL),(9,2,182.00,'2022-06-20',8,8,NULL),(10,2,9.00,'2022-06-20',9,9,NULL),(11,52,5149.99,'2022-06-20',10,10,NULL),(12,3,5066.00,'2022-09-03',NULL,10,4),(13,32,18.20,'2022-07-28',11,11,NULL),(14,2,6.00,'2022-06-20',12,12,NULL),(15,223,4.50,'2022-11-23',NULL,12,3);
/*!40000 ALTER TABLE `produto_estoque` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02 12:21:50
