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
-- Table structure for table `compra_fornecedor_produto_estoque`
--

DROP TABLE IF EXISTS `compra_fornecedor_produto_estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_fornecedor_produto_estoque` (
  `id_compra_fornecedor_produto_estoque` int NOT NULL AUTO_INCREMENT,
  `data_pedido_compra` date NOT NULL,
  `data_entrega_compra` date NOT NULL DEFAULT '0000-00-00',
  `quatidade_produto_compra` int unsigned NOT NULL,
  `valor_unitario_compra` decimal(10,2) unsigned NOT NULL,
  `id_fornecedor_fk` int NOT NULL,
  `id_comprador_fk` int NOT NULL,
  `id_produto_estoque_fk` int NOT NULL,
  PRIMARY KEY (`id_compra_fornecedor_produto_estoque`),
  KEY `id_fornecedor_fk` (`id_fornecedor_fk`),
  KEY `id_comprador_fk` (`id_comprador_fk`),
  KEY `id_produto_estoque_fk` (`id_produto_estoque_fk`),
  CONSTRAINT `compra_fornecedor_produto_estoque_ibfk_1` FOREIGN KEY (`id_fornecedor_fk`) REFERENCES `fornecedor` (`id_fornecedor`),
  CONSTRAINT `compra_fornecedor_produto_estoque_ibfk_2` FOREIGN KEY (`id_comprador_fk`) REFERENCES `comprador` (`id_comprador`),
  CONSTRAINT `compra_fornecedor_produto_estoque_ibfk_3` FOREIGN KEY (`id_produto_estoque_fk`) REFERENCES `produto_estoque` (`id_produto_estoque`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_fornecedor_produto_estoque`
--

LOCK TABLES `compra_fornecedor_produto_estoque` WRITE;
/*!40000 ALTER TABLE `compra_fornecedor_produto_estoque` DISABLE KEYS */;
INSERT INTO `compra_fornecedor_produto_estoque` VALUES (1,'2022-04-13','2022-04-29',50,380.20,4,4,8),(2,'2022-11-03','0000-00-00',25,1250.00,3,1,4),(3,'2022-11-25','0000-00-00',30,420.00,4,10,7);
/*!40000 ALTER TABLE `compra_fornecedor_produto_estoque` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02 12:21:47
