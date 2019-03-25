-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: uittravel
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `area` (
  `ID_AREA` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_AREA`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Mien Bac'),(2,'Mien Trung'),(3,'Mien Nam');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment` (
  `ID_CMT` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) NOT NULL,
  `CONTENT` longtext,
  `ID_TOUR_INFO` int(10) NOT NULL,
  PRIMARY KEY (`ID_CMT`),
  KEY `Fk_Comment_Tour_idx` (`ID_TOUR_INFO`),
  CONSTRAINT `Fk_Comment_Tour` FOREIGN KEY (`ID_TOUR_INFO`) REFERENCES `tour_infomation` (`ID_TOUR_INFO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_tour`
--

DROP TABLE IF EXISTS `order_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_tour` (
  `ID_ORDER` int(10) NOT NULL AUTO_INCREMENT,
  `ID_TOUR` int(10) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `PHONE` int(10) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `PASSENGERS` int(2) NOT NULL,
  `DECRIPTION` longtext,
  PRIMARY KEY (`ID_ORDER`),
  KEY `Fk_orderTour_TOur_idx` (`ID_TOUR`),
  CONSTRAINT `Fk_orderTour_TOur` FOREIGN KEY (`ID_TOUR`) REFERENCES `tour` (`ID_TOUR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tour`
--

LOCK TABLES `order_tour` WRITE;
/*!40000 ALTER TABLE `order_tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `province` (
  `ID_PROVINCE` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) NOT NULL,
  `ID_AREA` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID_PROVINCE`),
  KEY `fk_province_area_idx` (`ID_AREA`),
  CONSTRAINT `fk_province_area` FOREIGN KEY (`ID_AREA`) REFERENCES `area` (`ID_AREA`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'Ho Chi Minh',NULL),(2,'Dong Nai',NULL),(3,'Ha Noi',NULL),(4,'Da Nang',NULL);
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `ID_ROLE` int(10) NOT NULL AUTO_INCREMENT,
  `ROLE` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_ROLE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'manager'),(3,'employee');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tour` (
  `ID_TOUR` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `IMAGE` varchar(100) NOT NULL,
  `ID_TOUR_INFO` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID_TOUR`),
  KEY `fk_tour_tourInfor_idx` (`ID_TOUR_INFO`),
  CONSTRAINT `FKon3ig93q0ipji8yv6btwv0w7l` FOREIGN KEY (`ID_TOUR_INFO`) REFERENCES `tour_infomation` (`ID_TOUR_INFO`),
  CONSTRAINT `fk_tour_tourInfor` FOREIGN KEY (`ID_TOUR_INFO`) REFERENCES `tour_infomation` (`ID_TOUR_INFO`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (313,'Vịnh Hạ Long','a',13);
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_infomation`
--

DROP TABLE IF EXISTS `tour_infomation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tour_infomation` (
  `ID_TOUR_INFO` int(10) NOT NULL AUTO_INCREMENT,
  `DETAIL` longtext,
  `IMAGE_FULL` varchar(100) DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  `STATUS` tinyint(1) DEFAULT NULL,
  `ID_PROVINCE` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID_TOUR_INFO`),
  KEY `Fk_tourInfo_province_idx` (`ID_PROVINCE`),
  CONSTRAINT `FKjity69apuql0dbunw7xut547u` FOREIGN KEY (`ID_PROVINCE`) REFERENCES `province` (`ID_PROVINCE`),
  CONSTRAINT `Fk_tourInfo_province` FOREIGN KEY (`ID_PROVINCE`) REFERENCES `province` (`ID_PROVINCE`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_infomation`
--

LOCK TABLES `tour_infomation` WRITE;
/*!40000 ALTER TABLE `tour_infomation` DISABLE KEYS */;
INSERT INTO `tour_infomation` VALUES (13,'a','a',1,1,1);
/*!40000 ALTER TABLE `tour_infomation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `ID_USER` int(10) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(45) NOT NULL,
  `PASSWORD` tinytext NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `PHONE` int(10) DEFAULT NULL,
  `STATUS` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (15,'manager','$2a$10$InUw3bCC7kmuTBQT4XH0/.mAT2AfWk2rgDR47REIktE4XUEB0pDf2','manager','manager@gmail.com',112231223,1),(16,'admin','$2a$10$qScUuVHLPkWOljnHfzGQIu4neToPDCR1jVmbvOwvDLFIdgFJzAEZy','admin','admin@gmail.com',784387306,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_role` (
  `user_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_idx` (`role_id`),
  CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`ID_ROLE`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (16,1),(15,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-25 20:06:02
