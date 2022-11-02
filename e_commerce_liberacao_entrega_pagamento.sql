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
-- Table structure for table `liberacao_entrega_pagamento`
--

DROP TABLE IF EXISTS `liberacao_entrega_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liberacao_entrega_pagamento` (
  `id_liberacao_entrega_pagamento` int NOT NULL AUTO_INCREMENT,
  `liberacao_entrega_mediante_pagamento` enum('Entrega Liberada','Entrega bloqueada') NOT NULL DEFAULT 'Entrega bloqueada',
  `id_entrega_fk` int NOT NULL,
  `id_pedido_pagamento_entrega_fk` int NOT NULL,
  PRIMARY KEY (`id_liberacao_entrega_pagamento`),
  KEY `id_entrega_fk` (`id_entrega_fk`),
  KEY `id_pedido_pagamento_entrega_fk` (`id_pedido_pagamento_entrega_fk`),
  CONSTRAINT `liberacao_entrega_pagamento_ibfk_1` FOREIGN KEY (`id_entrega_fk`) REFERENCES `entrega` (`id_entrega`),
  CONSTRAINT `liberacao_entrega_pagamento_ibfk_2` FOREIGN KEY (`id_pedido_pagamento_entrega_fk`) REFERENCES `pedido_pagamento_entrega` (`id_pedido_pagamento_entrega`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liberacao_entrega_pagamento`
--

LOCK TABLES `liberacao_entrega_pagamento` WRITE;
/*!40000 ALTER TABLE `liberacao_entrega_pagamento` DISABLE KEYS */;
INSERT INTO `liberacao_entrega_pagamento` VALUES (1,'Entrega Liberada',1,1),(2,'Entrega Liberada',1,2),(3,'Entrega bloqueada',1,3),(4,'Entrega Liberada',1,4);
/*!40000 ALTER TABLE `liberacao_entrega_pagamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02 12:21:51
