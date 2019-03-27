-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: uittravell
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
INSERT INTO `area` VALUES (1,'Miền bắc'),(2,'Miền trung'),(3,'Miền nam');
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
  PRIMARY KEY (`ID_CMT`)
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
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `image` (
  `ID_IMAGES` int(10) NOT NULL AUTO_INCREMENT,
  `URL` varchar(100) DEFAULT NULL,
  `ID_TOUR_INFO` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID_IMAGES`),
  KEY `fk_imageTour_tourInfo_idx` (`ID_TOUR_INFO`),
  CONSTRAINT `FK14i49rdavpgrqyp9gqvgmkno9` FOREIGN KEY (`ID_TOUR_INFO`) REFERENCES `tour_information` (`ID_TOUR_INFO`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'https://transviet.com.vn/Images/GallerySGN/MB002.05/van-mieu-quoc-tu-giam.jpg',1),(2,'https://transviet.com.vn/Images/GallerySGN/MB002.05/deo-o-quy-ho.jpg',1),(3,'https://transviet.com.vn/Images/GallerySGN/MB002.05/vinhhalong-du-lich-mien-bac-transviet-1.jpg',1),(4,'https://transviet.com.vn/Images/GallerySGN/MB002.05/ho-hoan-kiem.jpg',1),(5,'https://transviet.com.vn/Images/GallerySGN/MB002.05/vinh-ha-long.jpg',1),(6,'https://transviet.com.vn/Images/GallerySGN/MB001.04/ha-long-bay.jpg',2),(7,'https://transviet.com.vn/Images/GallerySGN/MB001.04/chua1cot-du-lich-mien-bac-transviet-1.jpg',2),(8,'https://transviet.com.vn/Images/GallerySGN/MB001.05/vinh-ha-long.jpg',3),(9,'https://transviet.com.vn/Images/GallerySGN/MB001.05/van-mieu-quoc-tu-giam.jpg',3),(10,'https://transviet.com.vn/Images/GallerySGN/MB001.05/chinh-phuc-dinh-fansipan.jpg',3),(11,'https://transviet.com.vn/Images/GallerySGN/PT001.02/kham-pha-thanh-pho-bien-phan-thiet.jpg',4),(12,'https://transviet.com.vn/Images/GallerySGN/PT001.02/lau-dai-ruou-vang-rd.jpg',4),(13,'https://transviet.com.vn/Images/GallerySGN/PT001.02/du-lich-phan-thiet-mui-ne.jpg',4),(14,'https://transviet.com.vn/Images/GallerySGN/PT001.02/truong-duc-thanh-phan-thiet.jpg',4),(15,'https://transviet.com.vn/Images/GallerySGN/DL001.04/ho-xuan-huong-da-lat.jpg',5),(16,'https://transviet.com.vn/Images/GallerySGN/DL001.04/Nha-tho-Domaine-De-Marie.jpg',5),(17,'https://transviet.com.vn/Images/GallerySGN/DL001.04/thien-vien-truc-lam-da-lat.jpg',5),(18,'https://transviet.com.vn/Images/GallerySGN/DL001.04/langbiang-du-lich-da-lat.jpg',5),(19,'https://transviet.com.vn/Images/GallerySGN/PR001.03/doi-cat-nam-cuong.jpg',6),(20,'https://transviet.com.vn/Images/GallerySGN/PR001.03/du-lich-vinh-vinh-hy.jpg',6),(21,'https://transviet.com.vn/Images/GallerySGN/PR001.03/Vuon-nho-Ba-Moi.jpg',6),(22,'https://transviet.com.vn/Images/GallerySGN/PR001.03/thap-Poklong-Giarai.jpg',6),(24,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/bai-sao-phu-quoc5.jpg',11),(25,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/9609748610_e961372fce_b.jpg',11),(26,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/biet-thu-sunset-sanato-phu-quoc.jpg',11),(27,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/nhatuphuquoc2.jpg',11),(28,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/316.jpg',11);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
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
  CONSTRAINT `FKlxm31q5g7sb5cvll4a32q2oo1` FOREIGN KEY (`ID_TOUR`) REFERENCES `tour` (`ID_TOUR`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tour`
--

LOCK TABLES `order_tour` WRITE;
/*!40000 ALTER TABLE `order_tour` DISABLE KEYS */;
INSERT INTO `order_tour` VALUES (1,1,'Duy ',123,'Long Thành',1,NULL),(2,1,'Anh',456,'HCM',1,NULL),(3,1,'Vũ',1236565,'HCM',1,NULL),(4,2,'Ngọc',3343434,'Đồng Nai',1,NULL),(5,2,'Vũ Anh',12341414,'Long Thành',1,NULL),(6,3,'Katakana',12345678,'HCM',1,NULL),(7,4,'Hiragana',975543411,'Hà Nội',1,NULL),(8,4,'Shikawa',121414141,'Japan',1,NULL),(9,5,'Ronaldo',121143141,'Bồ đào nha',1,NULL),(10,6,'Lionel Messi',12344114,'HCM',1,NULL);
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
  CONSTRAINT `FKoxkraa4nqbi5yk6tpc7v3qja9` FOREIGN KEY (`ID_AREA`) REFERENCES `area` (`ID_AREA`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'Điện Biên',1),(2,'Hòa Bình',1),(3,'Lai Châu',1),(4,'Lào Cai',1),(5,'Sơn La',1),(6,'Yên Bái',1),(7,'Bắc Giang',1),(8,'Bắc Kạn',1),(9,'Cao Bằng',1),(10,'Hà Giang',1),(11,'Lạng Sơn',1),(12,'Phú Thọ',1),(13,'Quảng Ninh',1),(14,'Thái Nguyên',1),(15,'Tuyên Quang',1),(16,'Bắc Ninh',1),(17,'Hà Nam',1),(18,'Thành phố Hà Nội',1),(19,'Hải Dương',1),(20,'Thành phố Hải Phòng',1),(21,'Hưng Yên',1),(22,'Nam Định',1),(23,'Ninh Bình',1),(24,'Thái Bình',1),(25,'Vĩnh Phúc',1),(26,'Hà Tĩnh',2),(27,'Nghệ An',2),(28,'Quảng Bình',2),(29,'Quảng Trị',2),(30,'Thanh Hóa',2),(31,'Thừa Thiên Huế',2),(32,'Bình Định',2),(33,'Bình Thuận',2),(34,'Thành phố Đà Nẵng',2),(35,'Khánh Hòa',2),(36,'Ninh Thuận',2),(37,'Phú Yên',2),(38,'Quảng Nam',2),(39,'Quảng Ngãi',2),(40,'Đắk Lắk',2),(41,'Đắk Nông',2),(42,'Gia Lai',2),(43,'Kon Tum',2),(44,'Lâm Đồng',2),(45,'Bà Rịa Vũng Tàu',3),(46,'Bình Dương',3),(47,'Bình Phước',3),(48,'Đồng Nai',3),(49,'TP Hồ Chí Minh',3),(50,'Tây Ninh',3),(51,'An Giang',3),(52,'Bạc Liêu',3),(53,'Bến Tre',3),(54,'Cà Mau',3),(55,'Cần Thơ',3),(56,'Đồng Tháp',3),(57,'Hậu Giang',3),(58,'Kiên Giang',3),(59,'Long An',3),(60,'Sóc Trăng',3),(61,'Tiền Giang',3),(62,'Trà Vinh',3),(63,'Vĩnh Long',3);
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
  `IMAGE` mediumtext NOT NULL,
  `ID_TOUR_INFO` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID_TOUR`),
  KEY `fk_tour_tourInfor_idx` (`ID_TOUR_INFO`),
  CONSTRAINT `FKdovw2l4ohmjslg2fkerbk5pc9` FOREIGN KEY (`ID_TOUR_INFO`) REFERENCES `tour_information` (`ID_TOUR_INFO`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'SA PA - HÀ NỘI - HẠ LONG','https://transviet.com.vn/Images/GallerySGN/MB002.05/chinh-phuc-dinh-fansipan.jpg',1),(2,'HẠ LONG - NINH BÌNH - HÀ NỘI','https://transviet.com.vn/Images/GallerySGN/MB001.04/vinhhalong-du-lich-mien-bac-transviet-1.jpg',2),(3,'SA PA - HÀ NỘI - HẠ LONG','https://transviet.com.vn/Images/GallerySGN/MB001.05/ho-hoan-kiem.jpg',3),(4,'Phan Thiết - Mũi Né','https://transviet.com.vn/Images/GallerySGN/PT001.02/doi-cat-bay.jpg',4),(5,'ĐÀ LẠT','https://transviet.com.vn/Images/GallerySGN/DL001.04/ga-da-lat.jpg',5),(6,'VĨNH HY - NINH CHỬ','https://transviet.com.vn/Images/GallerySGN/PR001.03/dao-binh-hung.jpg',6),(7,'Phú Quốc','https://transviet.com.vn/Images/GalleryHAN/PQ15.04/280ef947e00fb8b33471a2a169c7ffd9.jpg',11);
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_information`
--

DROP TABLE IF EXISTS `tour_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tour_information` (
  `ID_TOUR_INFO` int(10) NOT NULL AUTO_INCREMENT,
  `TITLE` mediumtext,
  `DETAIL` longtext,
  `PRICE` double DEFAULT NULL,
  `STATUS` tinyint(1) DEFAULT NULL,
  `ID_PROVINCE` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID_TOUR_INFO`),
  KEY `Fk_tourInfo_province_idx` (`ID_PROVINCE`),
  CONSTRAINT `FK6b5e2a7jtgtlrfab4r40ivdvx` FOREIGN KEY (`ID_PROVINCE`) REFERENCES `province` (`ID_PROVINCE`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_information`
--

LOCK TABLES `tour_information` WRITE;
/*!40000 ALTER TABLE `tour_information` DISABLE KEYS */;
INSERT INTO `tour_information` VALUES (1,'Tour du lịch SA PA - HÀ NỘI - HẠ LONG 5 ngày 4 đêm ','- Chạm tay cửa khẩu biên giới Việt - Trung “Lào Cai – Hà Khẩu”\r\n- Tự do chinh phục “Nóc nhà Đông Dương” Fansipan\r\n- Ngắm đỉnh Hàm Rồng hùng vỹ giữa mây trời\r\n- Tham quan thủ đô Hà Nội cổ kính\r\n- Du thuyền ngắm Vịnh Hạ Long – kỳ quan thiên nhiên của Thế Giới',9000000,1,4),(2,'Tour du lịch HẠ LONG - NINH BÌNH - HÀ NỘI 5 ngày 4 đêm ','	\r\nHẠ LONG - NINH BÌNH - HÀ NỘI\r\n4 Ngày 3 Ðêm\r\nKhởi hành từ: TP.HCM\r\nPhương tiện: VIETJET AVIATION\r\n(MB001.04) Hà Nội – Yên Tử – Hạ Long – Tràng An – Bái Đính\r\nChùa Một Cột\r\nVịnh Hạ Long\r\nVịnh Hạ Long\r\nMIỀN BẮC\r\n- Du thuyền ngắm Vịnh Hạ Long – kỳ quan thiên nhiên của Thế Giới\r\n- Viếng thăm Chùa Bái Đính – ngôi chùa có nhiều kỷ lục nhất Việt Nam\r\n- Khám phá vẻ đẹp non nước hữu tình Tràng An\r\n- Tham quan thủ đô Hà Nội cổ kính',7000000,1,13),(3,'Tour du lịch SA PA - HÀ NỘI - HẠ LONG 5 ngày 4 đêm ','- Chạm tay cửa khẩu biên giới Việt - Trung “Lào Cai – Hà Khẩu”\r\n- Tự do chinh phục “Nóc nhà Đông Dương” Fansipan\r\n- Ngắm đỉnh Hàm Rồng hùng vỹ giữa mây trời\r\n- Tham quan thủ đô Hà Nội cổ kính\r\n- Du thuyền ngắm Vịnh Hạ Long – kỳ quan thiên nhiên của Thế Giới',6500000,1,4),(4,'KHÁM PHÁ THÀNH PHỐ BIỂN PHAN THIẾT 2 Ngày 1 đêm','Tự do vui chơi và trải nghiệm cảm giác thú vị với trò chơi trượt cát tại Đồi Cát Bay.\r\n- Tham quan Trường Dục Thanh – Nơi dạy học ngày xưa của Người Thầy giáo Nguyễn Tất Thành.\r\n- Tự do khám phá ẩm thực Bình Thuận tại khu vục làng chài.\r\n- Tự do thưởng thức chương trình Làng Chài Nhạc Nước – Show diễn về làng chài trên sân khấu nhạc nước đầu tiên và duy nhất tại Việt Nam.',1500000,1,33),(5,'Du Lịch ĐÀ LẠT - THÀNH PHỐ NGÀN HOA','Viếng thăm Thiền Viện Trúc Lâm\r\n- Ghé thăm các vườn rau sạch, vườn hoa nổi tiếng ở Đà Lạt\r\n- Chinh phục đỉnh Langbiang huyền thoại\r\n- Tham gia chương trình giao lưu văn hóa cồng chiêng Tây Nguyên\r\n- Thưởng thức đại tiệc lẩu buffet rau, nấm và hải sản',3000000,1,44),(6,'Du Lịch KHÁM PHÁ VĨNH HY - NINH CHỬ 2 ngày 1 đêm','Tham quan vườn nho Ba Mọi trĩu quả.\r\n- Khám phá Tháp Poklong Giarai cổ kính của người Chăm.\r\n- Trải nghiệm tại Đồi cát Nam Cương với hai màu trắng hồng hiếm có.\r\n- Hòa mình với thiên nhiên tại Vịnh Vĩnh Hy - 1 trong 10 Vịnh đẹp nhất Việt Nam.\r\n- Chiêm ngưỡng và khám phá Hòn ngọc giữa Vịnh Cam Ranh - Đảo Bình Hưng.',2500000,1,36),(11,'KHÁM PHÁ PHÚ QUỐC SIÊU KHUYẾN MẠI','Đẹp',2000000,1,58);
/*!40000 ALTER TABLE `tour_information` ENABLE KEYS */;
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

-- Dump completed on 2019-03-27 18:45:09
