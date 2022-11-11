CREATE DATABASE  IF NOT EXISTS `db_teste_wk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_teste_wk`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: db_teste_wk
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `Cli_codigo` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Cidade` varchar(70) NOT NULL,
  `UF` varchar(2) NOT NULL,
  PRIMARY KEY (`Cli_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'JOSÉ MARIA PEREIRA','PORTAL DO SUL','SP'),(2,'CARLOS ANDRÉ DA CUNHA','SOROCABA','SP'),(3,'ANTONIO CARLOS MAGALHÃES','PELOTAS','SC'),(4,'TEREZA CRISTINA DA SILVA','BELÉM','PA'),(5,'ANDRÉ SILVA SANTOS','CASTANHAL','PA'),(6,'FELIPE COSTA','PONTA PORÃ','MS'),(7,'CARLA COSTA FREITAS','RECIFE','PE'),(8,'MARIA DAS DORES DO PARTO','TREMEMBÉ','SP'),(9,'Paulo Freire','CAMPINAS','SP'),(10,'JOAQUIM JOSE MEIRA','ITUMBIARA','GO'),(11,'CLÁUDIO VIEIRA','BELÉM','PA'),(12,'CLÁUDIA VIANA','SALVADOR','BA'),(13,'MARIO MARTINS','BELO HORIZONTE','MG'),(14,'ANTONIA FARIAS','MANAUS','AM'),(15,'Enzo Cardoso','SOROCABA','SP'),(16,'Valentina Souza','RECIFE','PE'),(17,'Emilly Farias','AGUAS LINDAS','AL'),(18,'João Felipe Jesus','JOÃO PESSOA','PB'),(19,'João Oliveira','VITORIA','ES'),(20,'João Guilherme Gomes','RIO DE JANEIRO','RJ'),(21,'Davi Lucca Mendes','PARATI','RJ'),(22,'Bernardo Almeida','MACAPA','AP'),(23,'Emilly Aragão','BOA VISTA','AC'),(24,'Isadora Cardoso','CUIABÁ','MT'),(25,'Luiz Otávio Viana','BRASILIA','DF'),(26,'Isabella Castro','SANTA ISABEL','PA'),(27,'Renan Viana','ILHÉUS','BA'),(28,'Thiago Ribeiro','UBERABA','MG'),(29,'Otávio Rocha','MACEIÓ','AL'),(30,'Nicolas Fernandes','ARACAJU','SE'),(31,'Manuela Pereira','SÃO LUIS','MA'),(32,'Catarina Nascimento','CANELAS','RS'),(33,'Clarice da Costa','GRAMADO','RS'),(34,'Maria Vitória Viana','NATAL','RN');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_pedido`
--

DROP TABLE IF EXISTS `item_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_pedido` (
  `Id_item` int NOT NULL AUTO_INCREMENT,
  `Num_pedido` int NOT NULL,
  `Prod_codigo` int NOT NULL,
  `Quantidade` decimal(15,4) NOT NULL,
  `Vl_unitario` decimal(15,4) NOT NULL,
  `Vl_total` decimal(18,2) NOT NULL,
  PRIMARY KEY (`Id_item`),
  KEY `FK_Num_pedido` (`Num_pedido`),
  KEY `FK_Prod_codigo` (`Prod_codigo`),
  CONSTRAINT `FK_Num_pedido` FOREIGN KEY (`Num_pedido`) REFERENCES `pedidos` (`Num_pedido`),
  CONSTRAINT `FK_Prod_codigo` FOREIGN KEY (`Prod_codigo`) REFERENCES `produtos` (`Prod_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_pedido`
--

LOCK TABLES `item_pedido` WRITE;
/*!40000 ALTER TABLE `item_pedido` DISABLE KEYS */;
INSERT INTO `item_pedido` VALUES (1,1,5,10.0000,3.8500,38.50),(2,1,3,20.0000,10.2000,204.00),(9,2,10,10.0000,23.5000,235.00),(10,2,23,35.0000,7.5500,264.25),(11,2,2,50.0000,9.5000,475.00),(12,2,15,50.0000,4.5000,225.00),(17,1,26,10.0000,68.8500,688.50),(19,2,25,15.0000,120.0000,1800.00),(23,6,16,10.0000,15.9000,159.00),(24,6,31,100.0000,105.2500,10525.00),(25,6,29,10.0000,17.5500,175.50),(26,7,15,20.0000,11.5000,230.00),(27,7,16,50.0000,22.8500,1142.50),(28,8,31,100.0000,99.9900,9999.00),(29,8,30,10.0000,256.3500,2563.50),(30,9,7,5.0000,1980.0000,9900.00),(31,9,40,10.0000,119.5000,1195.00),(32,8,22,200.0000,2.5900,518.00),(33,10,33,50.0000,99.5000,4975.00),(34,10,34,50.0000,36.9900,1849.50),(35,10,35,50.0000,19.9000,995.00),(36,10,32,50.0000,110.0000,5500.00),(37,11,40,5.0000,126.3500,631.75),(38,11,26,2.0000,250.0000,500.00),(39,11,25,1.0000,399.9900,399.99),(40,10,11,1.0000,1500.0000,1500.00),(41,10,12,12.0000,5.3600,64.32),(42,9,39,8.0000,175.8000,1406.40),(43,12,36,10.0000,689.9000,6899.00),(44,12,25,10.0000,299.0000,2990.00),(46,10,25,52.0000,55.6000,2891.20),(47,10,25,2.0000,600.0000,1200.00),(48,13,2,50.0000,9.3500,467.50),(49,13,4,5.0000,136.0000,680.00);
/*!40000 ALTER TABLE `item_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `Num_pedido` int NOT NULL,
  `Data_emissao` datetime NOT NULL,
  `Cli_codigo` int NOT NULL,
  `Vl_total` decimal(18,2) NOT NULL,
  PRIMARY KEY (`Num_pedido`),
  KEY `FK_Cli_codigo` (`Cli_codigo`),
  CONSTRAINT `FK_Cli_codigo` FOREIGN KEY (`Cli_codigo`) REFERENCES `clientes` (`Cli_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2022-11-08 10:15:40',10,931.00),(2,'2022-11-08 18:43:22',17,2999.25),(6,'2022-11-09 16:55:55',13,10859.50),(7,'2022-11-09 17:44:40',9,1372.50),(8,'2022-11-09 20:26:12',18,13080.50),(9,'2022-11-09 21:35:17',10,12501.40),(10,'2022-11-09 22:28:10',20,18975.02),(11,'2022-11-09 23:25:57',26,1531.74),(12,'2022-11-10 09:53:43',13,9889.00),(13,'2022-11-10 10:25:02',30,1147.50);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `Prod_codigo` int NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(140) NOT NULL,
  `preco` decimal(15,4) NOT NULL,
  PRIMARY KEY (`Prod_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Cadeira',373.5000),(2,'Lampada',5.8000),(3,'Monitor',465.6000),(4,'Teclado',96.0000),(5,'Mouse',110.7000),(6,'Papel A4',12.7000),(7,'Smartphone',4816.6000),(8,'Televisão',3647.0000),(9,'Geladeira',3696.0000),(10,'Fogão',4030.3000),(11,'Máquina de Lavar',3060.7000),(12,'Colher',48.0000),(13,'Garfo',45.0000),(14,'Faca',44.1000),(15,'Copo',43.1000),(16,'Toalha de mesa',185.2000),(17,'Toalha de banho',125.4000),(18,'Cabide',4.9000),(19,'Papel de seda',23.5000),(20,'Caneta',13.7000),(21,'Lápis',8.8000),(22,'Borracha',20.5000),(23,'Apontador',37.2000),(24,'Caderno',57.8000),(25,'Mochila',57.8000),(26,'Pen-drive',104.9000),(27,'HD externo',530.3000),(28,'Pilhas AAA',40.1000),(29,'Bateria',35.2000),(30,'Relógio',611.7000),(31,'Bermuda',112.7000),(32,'Calça',148.0000),(33,'Camisa',135.2000),(34,'Boné',188.2000),(35,'Óculos',944.1000),(36,'Impressora',1997.0000),(37,'NoteBook',2199.0000),(38,'Lapiseira',12.7000),(39,'Quadro',134.3000),(40,'Fone de ouvido',176.4000);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-11  9:12:46
