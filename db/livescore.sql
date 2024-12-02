-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: livescore
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `fixtures`
--

DROP TABLE IF EXISTS `fixtures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fixtures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `home_team_id` int unsigned NOT NULL,
  `away_team_id` int unsigned NOT NULL,
  `match_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_team_id` (`home_team_id`),
  KEY `away_team_id` (`away_team_id`),
  CONSTRAINT `fixtures_ibfk_1` FOREIGN KEY (`home_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fixtures_ibfk_2` FOREIGN KEY (`away_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixtures`
--

LOCK TABLES `fixtures` WRITE;
/*!40000 ALTER TABLE `fixtures` DISABLE KEYS */;
INSERT INTO `fixtures` VALUES (1,1,2,'2024-12-05 15:00:00'),(2,3,4,'2024-12-06 18:00:00'),(3,2,1,'2024-12-10 20:00:00');
/*!40000 ALTER TABLE `fixtures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(45) DEFAULT NULL,
  `start_time` varchar(45) DEFAULT NULL,
  `end_time` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,'2024-12-02','15:00:00','17:00:00',NULL),(2,'2024-12-02','13:00:00','15:00:00',NULL),(3,'2024-12-03','15:00:00','17:00:00',NULL),(4,'2024-12-03','13:00:00','15:00:00',NULL),(5,'2024-12-04','15:00:00','17:00:00',NULL),(6,'2024-12-04','13:00:00','15:00:00',NULL),(7,'2024-12-05','15:00:00','17:00:00',NULL),(8,'2024-12-05','13:00:00','15:00:00',NULL),(9,'2024-12-06','15:00:00','17:00:00',NULL),(10,'2024-12-06','13:00:00','15:00:00',NULL),(11,'2024-12-09','15:00:00','17:00:00',NULL),(12,'2024-12-09','13:00:00','15:00:00',NULL),(13,'2024-12-10','15:00:00','17:00:00',NULL),(14,'2024-12-10','13:00:00','15:00:00',NULL),(15,'2024-12-11','15:00:00','17:00:00',NULL),(16,'2024-12-11','13:00:00','15:00:00',NULL),(17,'2024-12-12','15:00:00','17:00:00',NULL),(18,'2024-12-12','13:00:00','15:00:00',NULL),(19,'2024-12-13','15:00:00','17:00:00',NULL),(20,'2024-12-13','13:00:00','15:00:00',NULL),(21,'2024-12-16','15:00:00','17:00:00',NULL),(22,'2024-12-16','13:00:00','15:00:00',NULL),(23,'2024-12-17','15:00:00','17:00:00',NULL),(24,'2024-12-17','13:00:00','15:00:00',NULL),(25,'2024-12-18','15:00:00','17:00:00',NULL),(26,'2024-12-18','13:00:00','15:00:00',NULL),(27,'2024-12-19','15:00:00','17:00:00',NULL),(28,'2024-12-19','13:00:00','15:00:00',NULL),(29,'2024-12-20','15:00:00','17:00:00',NULL),(30,'2024-12-20','13:00:00','15:00:00',NULL),(31,'2024-12-23','15:00:00','17:00:00',NULL),(32,'2024-12-23','13:00:00','15:00:00',NULL),(33,'2024-12-24','15:00:00','17:00:00',NULL),(34,'2024-12-24','13:00:00','15:00:00',NULL),(35,'2024-12-25','15:00:00','17:00:00',NULL),(36,'2024-12-25','13:00:00','15:00:00',NULL),(37,'2024-12-26','15:00:00','17:00:00',NULL),(38,'2024-12-26','13:00:00','15:00:00',NULL),(39,'2024-12-27','15:00:00','17:00:00',NULL),(40,'2024-12-27','13:00:00','15:00:00',NULL),(41,'2024-12-30','15:00:00','17:00:00',NULL),(42,'2024-12-30','13:00:00','15:00:00',NULL),(43,'2024-12-31','15:00:00','17:00:00',NULL),(44,'2024-12-31','13:00:00','15:00:00',NULL),(64,'2024-12-02','15:00:00','17:00:00',NULL),(65,'2024-12-02','13:00:00','15:00:00',NULL),(66,'2024-12-03','15:00:00','17:00:00',NULL),(67,'2024-12-03','13:00:00','15:00:00',NULL),(68,'2024-12-04','15:00:00','17:00:00',NULL),(69,'2024-12-04','13:00:00','15:00:00',NULL),(70,'2024-12-05','15:00:00','17:00:00',NULL),(71,'2024-12-05','13:00:00','15:00:00',NULL),(72,'2024-12-06','15:00:00','17:00:00',NULL),(73,'2024-12-06','13:00:00','15:00:00',NULL),(74,'2024-12-09','15:00:00','17:00:00',NULL),(75,'2024-12-09','13:00:00','15:00:00',NULL),(76,'2024-12-10','15:00:00','17:00:00',NULL),(77,'2024-12-10','13:00:00','15:00:00',NULL),(78,'2024-12-11','15:00:00','17:00:00',NULL),(79,'2024-12-11','13:00:00','15:00:00',NULL),(80,'2024-12-12','15:00:00','17:00:00',NULL),(81,'2024-12-12','13:00:00','15:00:00',NULL),(82,'2024-12-13','15:00:00','17:00:00',NULL),(83,'2024-12-13','13:00:00','15:00:00',NULL),(84,'2024-12-16','15:00:00','17:00:00',NULL),(85,'2024-12-16','13:00:00','15:00:00',NULL),(86,'2024-12-17','15:00:00','17:00:00',NULL),(87,'2024-12-17','13:00:00','15:00:00',NULL),(88,'2024-12-18','15:00:00','17:00:00',NULL),(89,'2024-12-18','13:00:00','15:00:00',NULL),(90,'2024-12-19','15:00:00','17:00:00',NULL),(91,'2024-12-19','13:00:00','15:00:00',NULL),(92,'2024-12-20','15:00:00','17:00:00',NULL),(93,'2024-12-20','13:00:00','15:00:00',NULL),(94,'2024-12-23','15:00:00','17:00:00',NULL),(95,'2024-12-23','13:00:00','15:00:00',NULL),(96,'2024-12-24','15:00:00','17:00:00',NULL),(97,'2024-12-24','13:00:00','15:00:00',NULL),(98,'2024-12-25','15:00:00','17:00:00',NULL),(99,'2024-12-25','13:00:00','15:00:00',NULL),(100,'2024-12-26','15:00:00','17:00:00',NULL),(101,'2024-12-26','13:00:00','15:00:00',NULL),(102,'2024-12-27','15:00:00','17:00:00',NULL),(103,'2024-12-27','13:00:00','15:00:00',NULL),(104,'2024-12-30','15:00:00','17:00:00',NULL),(105,'2024-12-30','13:00:00','15:00:00',NULL),(106,'2024-12-31','15:00:00','17:00:00',NULL),(107,'2024-12-31','13:00:00','15:00:00',NULL),(127,'2024-12-02','15:00:00','17:00:00',NULL),(128,'2024-12-02','13:00:00','15:00:00',NULL),(129,'2024-12-03','15:00:00','17:00:00',NULL),(130,'2024-12-03','13:00:00','15:00:00',NULL),(131,'2024-12-04','15:00:00','17:00:00',NULL),(132,'2024-12-04','13:00:00','15:00:00',NULL),(133,'2024-12-05','15:00:00','17:00:00',NULL),(134,'2024-12-05','13:00:00','15:00:00',NULL),(135,'2024-12-06','15:00:00','17:00:00',NULL),(136,'2024-12-06','13:00:00','15:00:00',NULL),(137,'2024-12-09','15:00:00','17:00:00',NULL),(138,'2024-12-09','13:00:00','15:00:00',NULL),(139,'2024-12-10','15:00:00','17:00:00',NULL),(140,'2024-12-10','13:00:00','15:00:00',NULL),(141,'2024-12-11','15:00:00','17:00:00',NULL),(142,'2024-12-11','13:00:00','15:00:00',NULL),(143,'2024-12-12','15:00:00','17:00:00',NULL),(144,'2024-12-12','13:00:00','15:00:00',NULL),(145,'2024-12-13','15:00:00','17:00:00',NULL),(146,'2024-12-13','13:00:00','15:00:00',NULL),(147,'2024-12-16','15:00:00','17:00:00',NULL),(148,'2024-12-16','13:00:00','15:00:00',NULL),(149,'2024-12-17','15:00:00','17:00:00',NULL),(150,'2024-12-17','13:00:00','15:00:00',NULL),(151,'2024-12-18','15:00:00','17:00:00',NULL),(152,'2024-12-18','13:00:00','15:00:00',NULL),(153,'2024-12-19','15:00:00','17:00:00',NULL),(154,'2024-12-19','13:00:00','15:00:00',NULL),(155,'2024-12-20','15:00:00','17:00:00',NULL),(156,'2024-12-20','13:00:00','15:00:00',NULL),(157,'2024-12-23','15:00:00','17:00:00',NULL),(158,'2024-12-23','13:00:00','15:00:00',NULL),(159,'2024-12-24','15:00:00','17:00:00',NULL),(160,'2024-12-24','13:00:00','15:00:00',NULL),(161,'2024-12-25','15:00:00','17:00:00',NULL),(162,'2024-12-25','13:00:00','15:00:00',NULL),(163,'2024-12-26','15:00:00','17:00:00',NULL),(164,'2024-12-26','13:00:00','15:00:00',NULL),(165,'2024-12-27','15:00:00','17:00:00',NULL),(166,'2024-12-27','13:00:00','15:00:00',NULL),(167,'2024-12-30','15:00:00','17:00:00',NULL),(168,'2024-12-30','13:00:00','15:00:00',NULL),(169,'2024-12-31','15:00:00','17:00:00',NULL),(170,'2024-12-31','13:00:00','15:00:00',NULL);
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scores` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fixture_id` int NOT NULL,
  `team_id` int unsigned NOT NULL,
  `player_name` varchar(255) DEFAULT NULL,
  `event_type` enum('goal','penalty','free_kick','own_goal','yellow_card','red_card','substitution') NOT NULL,
  `event_time` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fixture_id` (`fixture_id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`fixture_id`) REFERENCES `fixtures` (`id`) ON DELETE CASCADE,
  CONSTRAINT `scores_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores`
--

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
INSERT INTO `scores` VALUES (1,1,1,'John Doe','goal',25,'2024-12-02 19:20:51','2024-12-02 19:20:51'),(2,1,2,'Jane Smith','penalty',45,'2024-12-02 19:20:51','2024-12-02 19:20:51'),(3,2,3,'Alice Brown','yellow_card',60,'2024-12-02 19:20:51','2024-12-02 19:20:51');
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `venue` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'APR FC',NULL,'Kigali Arena','2024-11-30 13:36:39','2024-11-30 13:36:39'),(2,'Rayon sport',NULL,'Pele Stadium','2024-11-30 13:43:24','2024-11-30 13:43:24'),(3,'APR FC',NULL,'Kigali Stadium',NULL,NULL),(4,'Rayon Sports',NULL,'Nyamirambo Regional Stadium',NULL,NULL),(5,'Police FC',NULL,'Kigali Stadium',NULL,NULL),(6,'AS Kigali',NULL,'Nyamirambo Regional Stadium',NULL,NULL),(7,'Musanze FC',NULL,'Ubworoherane Stadium',NULL,NULL),(8,'SC Kiyovu',NULL,'Nyamirambo Regional Stadium',NULL,NULL),(9,'Etincelles FC',NULL,'Umuganda Stadium',NULL,NULL),(10,'Bugesera FC',NULL,'Nyamata Stadium',NULL,NULL),(11,'Mukura Victory Sports',NULL,'Huye Stadium',NULL,NULL),(12,'Espoir FC',NULL,'Rusizi Stadium',NULL,NULL),(13,'Marine FC',NULL,'Umuganda Stadium',NULL,NULL),(14,'Rutsiro FC',NULL,'Gisenyi Stadium',NULL,NULL),(15,'Gasogi United',NULL,'Kigali Stadium',NULL,NULL),(16,'Sunrise FC',NULL,'Nyagatare Stadium',NULL,NULL),(17,'Etoile de l’Est',NULL,'Ngoma Stadium',NULL,NULL),(18,'Gorilla FC',NULL,'Nyamirambo Regional Stadium',NULL,NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-02 21:28:21
