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
  `ID_TOUR_INFO` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID_CMT`),
  KEY `FKsmpxp11rlpflqirn39iwchdji` (`ID_TOUR_INFO`),
  CONSTRAINT `FKsmpxp11rlpflqirn39iwchdji` FOREIGN KEY (`ID_TOUR_INFO`) REFERENCES `tour_information` (`ID_TOUR_INFO`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (27,'Duy Anh','Đây là một khu du lịch đẹp và sang trọng , tôi đã trải nghiệm ở đây và cả thấy rất thích . Cho 5 sao nhé ',5);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'1','1','1',1,'1');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `image` (
  `ID_IMAGES` int(10) NOT NULL AUTO_INCREMENT,
  `URL` mediumtext,
  `ID_TOUR_INFO` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID_IMAGES`),
  KEY `fk_imageTour_tourInfo_idx` (`ID_TOUR_INFO`),
  CONSTRAINT `FK14i49rdavpgrqyp9gqvgmkno9` FOREIGN KEY (`ID_TOUR_INFO`) REFERENCES `tour_information` (`ID_TOUR_INFO`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'https://transviet.com.vn/Images/GallerySGN/MB002.05/van-mieu-quoc-tu-giam.jpg',1),(2,'https://transviet.com.vn/Images/GallerySGN/MB002.05/deo-o-quy-ho.jpg',1),(3,'https://transviet.com.vn/Images/GallerySGN/MB002.05/vinhhalong-du-lich-mien-bac-transviet-1.jpg',1),(4,'https://transviet.com.vn/Images/GallerySGN/MB002.05/ho-hoan-kiem.jpg',1),(5,'https://transviet.com.vn/Images/GallerySGN/MB002.05/vinh-ha-long.jpg',1),(6,'https://transviet.com.vn/Images/GallerySGN/MB001.04/ha-long-bay.jpg',2),(7,'https://transviet.com.vn/Images/GallerySGN/MB001.04/chua1cot-du-lich-mien-bac-transviet-1.jpg',2),(8,'https://transviet.com.vn/Images/GallerySGN/MB001.05/vinh-ha-long.jpg',3),(9,'https://transviet.com.vn/Images/GallerySGN/MB001.05/van-mieu-quoc-tu-giam.jpg',3),(10,'https://transviet.com.vn/Images/GallerySGN/MB001.05/chinh-phuc-dinh-fansipan.jpg',3),(11,'https://transviet.com.vn/Images/GallerySGN/PT001.02/kham-pha-thanh-pho-bien-phan-thiet.jpg',4),(12,'https://transviet.com.vn/Images/GallerySGN/PT001.02/lau-dai-ruou-vang-rd.jpg',4),(13,'https://transviet.com.vn/Images/GallerySGN/PT001.02/du-lich-phan-thiet-mui-ne.jpg',4),(14,'https://transviet.com.vn/Images/GallerySGN/PT001.02/truong-duc-thanh-phan-thiet.jpg',4),(15,'https://transviet.com.vn/Images/GallerySGN/DL001.04/ho-xuan-huong-da-lat.jpg',5),(16,'https://transviet.com.vn/Images/GallerySGN/DL001.04/Nha-tho-Domaine-De-Marie.jpg',5),(17,'https://transviet.com.vn/Images/GallerySGN/DL001.04/thien-vien-truc-lam-da-lat.jpg',5),(18,'https://transviet.com.vn/Images/GallerySGN/DL001.04/langbiang-du-lich-da-lat.jpg',5),(19,'https://transviet.com.vn/Images/GallerySGN/PR001.03/doi-cat-nam-cuong.jpg',6),(20,'https://transviet.com.vn/Images/GallerySGN/PR001.03/du-lich-vinh-vinh-hy.jpg',6),(21,'https://transviet.com.vn/Images/GallerySGN/PR001.03/Vuon-nho-Ba-Moi.jpg',6),(22,'https://transviet.com.vn/Images/GallerySGN/PR001.03/thap-Poklong-Giarai.jpg',6),(24,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/bai-sao-phu-quoc5.jpg',11),(25,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/9609748610_e961372fce_b.jpg',11),(26,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/biet-thu-sunset-sanato-phu-quoc.jpg',11),(27,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/nhatuphuquoc2.jpg',11),(28,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/316.jpg',11),(96,'https://banahills.sunworld.vn/wp-content/uploads/2018/08/a3-1-768x379.jpg',30),(97,'https://banahills.sunworld.vn/wp-content/uploads/2018/08/lam-mua-lam-gio-tai-viet-nam-chua-du-cau-vang-tiep-tuc-chinh-phuc-the-gioi-1206-768x432.jpg',30),(98,'https://banahills.sunworld.vn/wp-content/uploads/2018/08/cap-treo-07-1-768x489.jpg',30),(99,'https://banahills.sunworld.vn/wp-content/uploads/2018/08/2c-768x512.jpg',30),(100,'https://banahills.sunworld.vn/wp-content/uploads/2018/08/cap-treo-01-1-768x508.jpg',30),(101,'https://dranahotel.com/upload/anh%20Thohtn/(1)Garuda-Valley-1.jpg',31),(102,'https://dranahotel.com/upload/anh%20Thohtn/Happy-Choo-Choo-005.jpg',31),(103,'https://dranahotel.com/upload/anh%20Thohtn/(1)Carousel-001.jpg',31),(104,'https://dranahotel.com/upload/anh%20Thohtn/(1)Treehouse-playland-001.jpg',31),(105,'https://dranahotel.com/upload/anh%20Thohtn/Dino-Island-002.jpg',31),(106,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/bai-bien-my-khe-da-nang3.png',32),(107,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/nha-hang-hai-san-san-ho-da-nang1.png',32),(108,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/bai-bien-my-khe-da-nang2.png',32),(109,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/bai-tam-my-khe-da-nang1.png',32),(110,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/nha-hang-syrena-da-nang1.png',32),(111,'http://nuithantai.vn/Content/UserFiles/Images/About/C43A2725.JPG',33),(112,'http://nuithantai.vn/Content/UserFiles/Images/About/th%C3%A1p%20Onsen%201.jpg',33),(113,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/toan-canh-cau-rong-vo-cung-hoanh-trang.png',34),(114,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/c-r-e1505464506291.jpg',34),(115,'http://www.geoholidayclub.org/wp-content/uploads/2018/02/Hu%E1%BA%BF-%C4%91i-%C4%90%C3%A0-N%E1%BA%B5ng-bao-nhi%C3%AAu-km.jpg',34),(116,'https://www.tuannguyentravel.com/data/images/cau-rong%281%29.jpg',34),(117,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/Cau-rong-da-nang-buoi-chieu-ta.png',34),(118,'http://www.dulichdanang.biz.vn/_/rsrc/1486448714514/diem-du-lich/cau-tinh-yeu-da-nang/cau-tinh-yeu-danang.jpg',35),(119,'http://www.dulichdanang.biz.vn/_/rsrc/1486448631044/diem-du-lich/cau-tinh-yeu-da-nang/cau-tinh-yeu-da-nang.jpg',35),(120,'http://www.dulichdanang.biz.vn/_/rsrc/1486450139513/diem-du-lich/cau-tinh-yeu-da-nang/cau-tinh-yeu-da-nang3.jpg',35),(121,'http://www.dulichdanang.biz.vn/_/rsrc/1486449087327/diem-du-lich/cau-tinh-yeu-da-nang/cautinhyeudanang.jpg',35),(122,'http://www.dulichdanang.biz.vn/_/rsrc/1486449963961/diem-du-lich/cau-tinh-yeu-da-nang/cau-tinh-yeu-da-nang2.jpg',35),(123,'https://cdn3.ivivu.com/2016/02/dao-cu-lao-cham-ivivu-5.jpg',36),(124,'https://cdn3.ivivu.com/2016/02/dao-cu-lao-cham-ivivu-4.jpg',36),(125,'https://cdn3.ivivu.com/2016/02/dao-cu-lao-cham-ivivu-1.jpg',36),(126,'https://cdn3.ivivu.com/2016/02/dao-cu-lao-cham-ivivu-2-1024x571.jpg',36),(127,'https://cdn3.ivivu.com/2016/02/dao-cu-lao-cham-ivivu-6.jpg',36);
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
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_ORDER`),
  KEY `Fk_orderTour_TOur_idx` (`ID_TOUR`),
  CONSTRAINT `FKlxm31q5g7sb5cvll4a32q2oo1` FOREIGN KEY (`ID_TOUR`) REFERENCES `tour` (`ID_TOUR`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tour`
--

LOCK TABLES `order_tour` WRITE;
/*!40000 ALTER TABLE `order_tour` DISABLE KEYS */;
INSERT INTO `order_tour` VALUES (1,1,'Duy ',123,'Long Thành',1,NULL,1),(2,1,'Anh',456,'HCM',1,NULL,1),(3,1,'Vũ',1236565,'HCM',1,NULL,0),(4,2,'Ngọc',3343434,'Đồng Nai',1,NULL,1),(5,2,'Vũ Anh',12341414,'Long Thành',1,NULL,0),(6,3,'Katakana',12345678,'HCM',1,NULL,0),(7,4,'Hiragana',975543411,'Hà Nội',1,NULL,0),(8,4,'Shikawa',121414141,'Japan',1,NULL,0),(9,5,'Ronaldo',121143141,'Bồ đào nha',1,NULL,0),(10,6,'Lionel Messi',12344114,'HCM',1,NULL,0),(13,3,'1',1,'1',1,'1',0),(14,5,'1',1,'11',1,'11',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'Sapa - Hà Nội - Hạ Long','https://transviet.com.vn/Images/GallerySGN/MB002.05/chinh-phuc-dinh-fansipan.jpg',1),(2,'Hạ Long - Ninh Bình - Hà Nội','https://transviet.com.vn/Images/GallerySGN/MB001.04/vinhhalong-du-lich-mien-bac-transviet-1.jpg',2),(3,'Sapa - Hà Nội - Hạ Long','https://transviet.com.vn/Images/GallerySGN/MB001.05/ho-hoan-kiem.jpg',3),(4,'Phan Thiết - Mũi Né','https://transviet.com.vn/Images/GallerySGN/PT001.02/doi-cat-bay.jpg',4),(5,'Đà Lạt','https://transviet.com.vn/Images/GallerySGN/DL001.04/ga-da-lat.jpg',5),(6,'Vĩnh Hy - Ninh Chữ','https://transviet.com.vn/Images/GallerySGN/PR001.03/dao-binh-hung.jpg',6),(7,'Phú Quốc','https://transviet.com.vn/Images/GalleryHAN/PQ15.04/280ef947e00fb8b33471a2a169c7ffd9.jpg',11),(23,'Bà Nà Hills','https://danangaz.com/wp-content/uploads/2018/09/1-min-768x497.jpg',30),(24,'Asian Park','https://danangaz.com/wp-content/uploads/2018/09/2-min.jpg',31),(25,'Bãi Biển Mỹ Khê','https://danangaz.com/wp-content/uploads/2018/09/3-min-768x512.jpg',32),(26,' Suối khoáng nóng núi Thần Tài','https://danangaz.com/wp-content/uploads/2018/09/4-min-747x420.jpg',33),(27,'Cầu Rồng','https://danangaz.com/wp-content/uploads/2018/09/5-min-768x383.jpg',34),(28,'Cầu Tình Yêu','https://danangaz.com/wp-content/uploads/2018/09/6-min.jpg',35),(29,'Cù Lao Chàm','https://danangaz.com/wp-content/uploads/2018/09/7-min.jpg',36);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_information`
--

LOCK TABLES `tour_information` WRITE;
/*!40000 ALTER TABLE `tour_information` DISABLE KEYS */;
INSERT INTO `tour_information` VALUES (1,'Tour du lịch HẠ LONG - NINH BÌNH - HÀ NỘI 5 ngày 4 đêm ','Viếng thăm Thiền Viện Trúc Lâm',9000000,1,4),(2,'Tour du lịch HẠ LONG - NINH BÌNH - HÀ NỘI 5 ngày 4 đêm ','	\r\nHẠ LONG - NINH BÌNH - HÀ NỘI\r\n4 Ngày 3 Ðêm\r\nKhởi hành từ: TP.HCM\r\nPhương tiện: VIETJET AVIATION\r\n(MB001.04) Hà Nội – Yên Tử – Hạ Long – Tràng An – Bái Đính\r\nChùa Một Cột\r\nVịnh Hạ Long\r\nVịnh Hạ Long\r\nMIỀN BẮC\r\n- Du thuyền ngắm Vịnh Hạ Long – kỳ quan thiên nhiên của Thế Giới\r\n- Viếng thăm Chùa Bái Đính – ngôi chùa có nhiều kỷ lục nhất Việt Nam\r\n- Khám phá vẻ đẹp non nước hữu tình Tràng An\r\n- Tham quan thủ đô Hà Nội cổ kính',7000000,1,13),(3,'Tour du lịch SA PA - HÀ NỘI - HẠ LONG 5 ngày 4 đêm ','- Chạm tay cửa khẩu biên giới Việt - Trung “Lào Cai – Hà Khẩu”\r\n- Tự do chinh phục “Nóc nhà Đông Dương” Fansipan\r\n- Ngắm đỉnh Hàm Rồng hùng vỹ giữa mây trời\r\n- Tham quan thủ đô Hà Nội cổ kính\r\n- Du thuyền ngắm Vịnh Hạ Long – kỳ quan thiên nhiên của Thế Giới',6500000,1,4),(4,'KHÁM PHÁ THÀNH PHỐ BIỂN PHAN THIẾT 2 Ngày 1 đêm','Tự do vui chơi và trải nghiệm cảm giác thú vị với trò chơi trượt cát tại Đồi Cát Bay.\r\n- Tham quan Trường Dục Thanh – Nơi dạy học ngày xưa của Người Thầy giáo Nguyễn Tất Thành.\r\n- Tự do khám phá ẩm thực Bình Thuận tại khu vục làng chài.\r\n- Tự do thưởng thức chương trình Làng Chài Nhạc Nước – Show diễn về làng chài trên sân khấu nhạc nước đầu tiên và duy nhất tại Việt Nam.',1500000,1,33),(5,'Du Lịch ĐÀ LẠT - THÀNH PHỐ NGÀN HOA','Viếng thăm Thiền Viện Trúc Lâm\r\n- Ghé thăm các vườn rau sạch, vườn hoa nổi tiếng ở Đà Lạt\r\n- Chinh phục đỉnh Langbiang huyền thoại\r\n- Tham gia chương trình giao lưu văn hóa cồng chiêng Tây Nguyên\r\n- Thưởng thức đại tiệc lẩu buffet rau, nấm và hải sản',3000000,1,44),(6,'Du Lịch KHÁM PHÁ VĨNH HY - NINH CHỬ 2 ngày 1 đêm','Tham quan vườn nho Ba Mọi trĩu quả.\r\n- Khám phá Tháp Poklong Giarai cổ kính của người Chăm.\r\n- Trải nghiệm tại Đồi cát Nam Cương với hai màu trắng hồng hiếm có.\r\n- Hòa mình với thiên nhiên tại Vịnh Vĩnh Hy - 1 trong 10 Vịnh đẹp nhất Việt Nam.\r\n- Chiêm ngưỡng và khám phá Hòn ngọc giữa Vịnh Cam Ranh - Đảo Bình Hưng.',2500000,1,36),(11,'KHÁM PHÁ PHÚ QUỐC SIÊU KHUYẾN MẠI','Đẹp',2000000,1,58),(30,'Bà Nà Hills – địa điểm du lịch Đà Nẵng','Là địa điểm du lịch mà bất cứ ai đến du lịch Đà Nẵng cũng đi ít nhất 1 lần. Tọa lạc trên đỉnh núi cao vời vợi Bà Nà hút hồn du khách với cảnh đẹp như tiên cảnh và cáp treo dài nhất thế giới. Đây cũng được xem là một trong những địa điểm nổi bật nhất Đà Nẵng.',750000,1,34),(31,'Asian Park – địa điểm giải trí ở Đà Nẵng','Đến với Asian Park bạn sẽ khám phá thế giới vui chơi muôn màu muôn vẻ với các trò chơi cảm giác mạnh hay trò chơi vui nhộn. Bên cạnh đó bạn còn được chìm đắm trong không gian văn hóa đậm bản sắc châu Á. Chắc chắn du khách sẽ được trải nghiệm cảm giác vui chơi thoải mái ở đây.',15000000,1,34),(32,'Bãi Biển Mỹ Khê – địa điểm du lịch đẹp ở Đà Nẵng','Được mệnh danh là một trong 6 bãi biển đẹp nhất hành tinh nên không thật thiếu sót khi không nhắc đến bãi biển Mỹ Khê. Biển xanh cát vàng mang vẻ đẹp trong trẻo thu hút đông đảo du khách. Chính vì thế khu vực ở đây tập trung rất nhiều nhà hàng khách sạn nhằm phục vụ lượng khách đến Đà Nẵng hàng năm.',5500000,1,34),(33,'Suối khoáng nóng núi Thần Tài – khu du lịch Đà Nẵng','Đây là địa điểm du lịch kết hợp nghỉ dưỡng còn khá mới nhưng nhanh chóng thu hút du khách đến đây. Đến suối khoáng nóng Thần Tài bạn được trải nghiệm không gian nghỉ dưỡng thoải mái với chất lượng dịch vụ đẳng cấp. Tắm suối khoáng ở đây giúp du khách có tinh thần sảng khoái, đầu óc thư giãn.',3000000,1,34),(34,'Cầu Rồng – địa điểm du lịch Đà Nẵng','Đà Nẵng nổi tiếng là thành phố của những cây cầu. Bên cạnh biểu tượng lâu đời của thành phố là cầu sông Hàn thì cầu Rồng cũng nổi tiếng chẳng kém. Con rồng khổng lồ màu vàng rực chuyển màu liên tục khi đêm đến vắt ngang qua dòng sông Hàn thơ mộng gây ấn tượng trong lòng du khách.',350000,1,34),(35,'Cầu Tình Yêu – địa điểm đi chơi Đà Nẵng','Lại là địa điểm đẹp rất thu hút các cặp đôi đến đây để check in hay móc khóa tình yêu vào cây cầu như minh chứng cho 1 tình yêu đẹp đẽ. Hình ảnh trái tim nối đuôi nhau từ đầu cầu đến cuối cầu rất đẹp.',6000000,1,34),(36,'Cù Lao Chàm – địa điểm du lịch khi đến Đà Nẵng','Du lịch Cù Lao Chàm là địa điểm du lịch Đà Nẵng hấp dẫn du khách. Nơi đây được ví là hòn ngọc giữa biển, mang nét đẹp đặc trưng. Đến Cù Lao Chàm, bạn có thể đi đến các địa điểm như chùa Hải Tạng, nhà bảo tàng, giếng cổ Chăm, chợ Tân Hiệp, miếu tổ nghề Yến. Ngoài ra bạn còn được thưởng thức các đặc sản nơi đây như mực một nắng, cua đá, ốc vú nàng… Hứa hẹn chuyến đi có nhiều trải nghiệm thú vị.',2500000,1,34);
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

-- Dump completed on 2019-04-16 20:22:55
