-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: scrum
-- ------------------------------------------------------
-- Server version	9.0.0

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
-- Table structure for table `sprints`
--

DROP TABLE IF EXISTS `sprints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sprints` (
  `ID` int NOT NULL,
  `TEAM` varchar(45) DEFAULT NULL,
  `GOAL` varchar(45) DEFAULT NULL,
  `POINTSCOMITTED` varchar(45) DEFAULT NULL,
  `POINTSSDELIVERED` varchar(45) DEFAULT NULL,
  `POINTSADDED` varchar(45) DEFAULT NULL,
  `INTROSPECTIVE` int DEFAULT NULL,
  `PLANNING` int DEFAULT NULL,
  `DEMO` int DEFAULT NULL,
  `WEEKLYRELEASE` int DEFAULT NULL,
  `AUTOMATION` int DEFAULT NULL,
  `SHRP` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprints`
--

LOCK TABLES `sprints` WRITE;
/*!40000 ALTER TABLE `sprints` DISABLE KEYS */;
INSERT INTO `sprints` VALUES (1,'ALPHA','Test Prod Bugs','30','11','8',0,1,1,1,1,0),(2,'ALPHA','Upgrade to Java 17','27','13','0',0,1,0,1,1,0),(3,'ALPHA','Fix Pros issue on Position','32','9','7',1,1,1,0,0,0),(4,'HELIUM','Posiyion Changes as per Regulatory','29','12','6',1,1,1,1,1,1),(5,'HELIUM','Design the Cloud Strategy','31','11','0',0,1,0,0,0,0),(6,'HELIUM','Documet the NFR\'s E2E','34','12','1',0,0,1,0,0,0),(7,'RADON','T+1 Settlement Chages','30','12','3',1,1,1,1,1,1);
/*!40000 ALTER TABLE `sprints` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-06 23:15:25
