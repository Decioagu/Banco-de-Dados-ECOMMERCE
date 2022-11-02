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
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(100) CHARACTER SET ucs2 COLLATE ucs2_general_ci NOT NULL,
  `categoria_produto` enum('Sem definição','Eletro domestico','Eletrônico','Móvel','Brinquedo','Informática') NOT NULL DEFAULT 'Sem definição',
  `descricoa_produto` text,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Forno Elétrico','Eletro domestico','Forno Elétrico de Bancada Sapore Preto 44 litros 220V'),(2,'Microondas','Eletro domestico','Lg Microondas 30L Ms3097Ar Preto 127V'),(3,'Fogão','Eletro domestico','Fogão Cooktop Fischer 4Q FIT LINE Gás Mesa Vidro Preto BIVOLT'),(4,'Smart TV','Eletrônico','Smart TV LED 32\" HD AOC ROKU TV FHD 32S5195/78G, Wi-Fi, 3 HDMI, 1 USB, Wifi, Conversor Digital'),(5,'Smartphone','Eletrônico','Smartphone Xiaomi Redmi 9i Sport 64GB 4GB RAM Tela 6.53'),(6,'Cadeira','Móvel','Cadeira Gamer Roxtor Legend Carbon'),(7,'Mesa','Móvel','Mesa para Escritório Studio 900 Caemmun Louro Freijo/metalic Sued'),(8,'LEGO','Brinquedo','LEGO Animais Selvagens do Mundo 10975 Brinquedo de construção; set da vida selvagem para crianças e pré-escolares com mais de 2 anos (142 peças)'),(9,'Bingo','Brinquedo','Bingo dos Animais, Multicor, Toyster'),(10,'Notebook','Informática','Notebook Gamer Acer Nitro 5 AN517-52-77KZ Intel Core i7 Windows 11 Home 8GB'),(11,'Mouse','Informática','Mouse Classic Box Óptico Full Black USB - MO300'),(12,'Moldura','Sem definição','Moldura Quadro A4 (21x30) Em Madeira Com Vidro (Branco)');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
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
