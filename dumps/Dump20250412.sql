-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: corinthians
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `jogadores`
--

DROP TABLE IF EXISTS `jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogadores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(300) NOT NULL,
  `Sobrenome` varchar(300) NOT NULL,
  `Posição` varchar(300) NOT NULL,
  `Data_de_nascimento` date DEFAULT NULL,
  `País_de_nascimento` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogadores`
--

LOCK TABLES `jogadores` WRITE;
/*!40000 ALTER TABLE `jogadores` DISABLE KEYS */;
INSERT INTO `jogadores` VALUES (1,'Hugo','De Souza Nogueira','Goleiro','1999-01-31','Brasil'),(2,'André','Ramalho Silva','Zagueiro','1992-02-16','Brasil'),(3,'Gustavo','Henrique Vernes','Zagueiro','1993-03-24','Brasil'),(4,'Matheus Lima','Beltrão de Amorim','Lateral Esquerdo','1999-03-24','Brasil'),(5,'Diego José','Palacios Espinoza','Lateral Esquerdo','1999-07-12','Equador'),(6,'Fagner','Conserva Lemos','Lateral Direito','1989-06-11','Brasil'),(7,'Félix Eduardo','Torres Caicedo','Zagueiro','1997-01-11','Equador'),(8,'Carlos','De Menezes Júnior','Zagueiro','1996-05-25','Brasil'),(9,'Rodrigo','Garro','Meio-Campista','1998-01-04','Argentina'),(10,'Alex Paulo','Menezes Santana','Meio-Campista','1995-05-13','Brasil'),(11,'José Andrés','Martínez','Meio-Campista','1994-08-07','Venezuela'),(12,'Igor Caique','Coronado','Meio-Campista','1992-08-18','Brasil'),(13,'Pedro Henrique','Pereira da Silva','Atacante','2000-11-02','Brasil'),(14,'Héctor','Hernández Marrero','Atacante','1995-09-14','Espanha'),(15,'Memphis','Depay','Atacante','1994-02-13','Países Baixos'),(16,'André Martín','Carrillo Díaz','Atacante','1991-06-14','Peru'),(17,'Talles Magno','Bacelar Martins','Atacante','2002-06-26','Brasil'),(18,'Yuri','Alberto Monteiro da Silva','Atacante','2001-03-18','Brasil');
/*!40000 ALTER TABLE `jogadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patrocinadores`
--

DROP TABLE IF EXISTS `patrocinadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patrocinadores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Empresa` varchar(500) NOT NULL,
  `TEMPO_DE_CONTRATO` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patrocinadores`
--

LOCK TABLES `patrocinadores` WRITE;
/*!40000 ALTER TABLE `patrocinadores` DISABLE KEYS */;
INSERT INTO `patrocinadores` VALUES (1,'Esportes da sorte','2027-07-01'),(2,'BMG','2026-12-01'),(3,'PixBet','2025-12-01'),(4,'Ezze Seguros',NULL),(5,'Area','2025-12-01');
/*!40000 ALTER TABLE `patrocinadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situação_contratual`
--

DROP TABLE IF EXISTS `situação_contratual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `situação_contratual` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Tipo_de_contrato` varchar(500) DEFAULT NULL,
  `TEMPO_DE_CONTRATO` date DEFAULT NULL,
  `jogadores_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jogadores_id` (`jogadores_id`),
  CONSTRAINT `situação_contratual_ibfk_1` FOREIGN KEY (`jogadores_id`) REFERENCES `jogadores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situação_contratual`
--

LOCK TABLES `situação_contratual` WRITE;
/*!40000 ALTER TABLE `situação_contratual` DISABLE KEYS */;
INSERT INTO `situação_contratual` VALUES (1,'Definitivo','2028-12-31',1),(2,'Definitivo','2026-12-31',2),(3,'Definitivo','2025-12-31',3),(4,'Definitivo','2025-12-31',4),(5,'Definitivo','2027-12-31',5),(6,'Definitivo',NULL,6),(7,'Definitivo','2028-12-31',7),(8,'Empréstimo','2024-12-31',8),(9,'Definitivo','2028-12-31',9),(10,'Definitivo','2027-12-31',10),(11,'Definitivo','2029-06-30',11),(12,'Definitivo','2026-02-28',12),(13,'Definitivo','2025-12-31',13),(14,'Definitivo','2026-12-31',14),(15,'Definitivo','2026-12-31',15),(16,'Definitivo','2026-12-31',16),(17,'Empréstimo','2025-07-31',17),(18,'Definitivo','2027-12-31',18);
/*!40000 ALTER TABLE `situação_contratual` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-12 12:08:53
