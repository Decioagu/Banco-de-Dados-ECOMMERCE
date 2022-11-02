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
-- Table structure for table `pedido_pagamento_entrega`
--

DROP TABLE IF EXISTS `pedido_pagamento_entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_pagamento_entrega` (
  `id_pedido_pagamento_entrega` int NOT NULL AUTO_INCREMENT,
  `numero_nota_fiscal` varchar(55) NOT NULL,
  `id_tipo_pagamento_fk` int NOT NULL,
  `id_pedido_fk` int NOT NULL,
  PRIMARY KEY (`id_pedido_pagamento_entrega`),
  UNIQUE KEY `numero_nota_fiscal` (`numero_nota_fiscal`),
  KEY `id_tipo_pagamento_fk` (`id_tipo_pagamento_fk`),
  KEY `id_pedido_fk` (`id_pedido_fk`),
  CONSTRAINT `pedido_pagamento_entrega_ibfk_1` FOREIGN KEY (`id_tipo_pagamento_fk`) REFERENCES `tipo_pagamento` (`id_tipo_pagamento`),
  CONSTRAINT `pedido_pagamento_entrega_ibfk_2` FOREIGN KEY (`id_pedido_fk`) REFERENCES `pedido` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_pagamento_entrega`
--

LOCK TABLES `pedido_pagamento_entrega` WRITE;
/*!40000 ALTER TABLE `pedido_pagamento_entrega` DISABLE KEYS */;
INSERT INTO `pedido_pagamento_entrega` VALUES (1,'1111 2222 1111 2222 1111 2222 1111 2222 1111 2222 1111',1,1),(2,'3333 4444 3333 4444 3333 4444 3333 4444 3333 4444 3333',2,2),(3,'5555 6666 5555 6666 5555 6666 5555 6666 5555 6666 5555',3,3),(4,'7777 8888 7777 8888 7777 8888 7777 8888 7777 8888 7777',4,4);
/*!40000 ALTER TABLE `pedido_pagamento_entrega` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02 12:21:54
