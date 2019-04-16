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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (27,'Duy Anh','Đây là một khu du lịch đẹp và sang trọng , tôi đã trải nghiệm ở đây và cả thấy rất thích . Cho 5 sao nhé ',5),(28,'Duy Anh ','Nơi này rất đẹp',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'https://transviet.com.vn/Images/GallerySGN/MB002.05/van-mieu-quoc-tu-giam.jpg',1),(2,'https://transviet.com.vn/Images/GallerySGN/MB002.05/deo-o-quy-ho.jpg',1),(3,'https://transviet.com.vn/Images/GallerySGN/MB002.05/vinhhalong-du-lich-mien-bac-transviet-1.jpg',1),(4,'https://transviet.com.vn/Images/GallerySGN/MB002.05/ho-hoan-kiem.jpg',1),(5,'https://transviet.com.vn/Images/GallerySGN/MB002.05/vinh-ha-long.jpg',1),(6,'https://transviet.com.vn/Images/GallerySGN/MB001.04/ha-long-bay.jpg',2),(7,'https://transviet.com.vn/Images/GallerySGN/MB001.04/chua1cot-du-lich-mien-bac-transviet-1.jpg',2),(8,'https://transviet.com.vn/Images/GallerySGN/MB001.05/vinh-ha-long.jpg',3),(9,'https://transviet.com.vn/Images/GallerySGN/MB001.05/van-mieu-quoc-tu-giam.jpg',3),(10,'https://transviet.com.vn/Images/GallerySGN/MB001.05/chinh-phuc-dinh-fansipan.jpg',3),(11,'https://transviet.com.vn/Images/GallerySGN/PT001.02/kham-pha-thanh-pho-bien-phan-thiet.jpg',4),(12,'https://transviet.com.vn/Images/GallerySGN/PT001.02/lau-dai-ruou-vang-rd.jpg',4),(13,'https://transviet.com.vn/Images/GallerySGN/PT001.02/du-lich-phan-thiet-mui-ne.jpg',4),(14,'https://transviet.com.vn/Images/GallerySGN/PT001.02/truong-duc-thanh-phan-thiet.jpg',4),(15,'https://transviet.com.vn/Images/GallerySGN/DL001.04/ho-xuan-huong-da-lat.jpg',5),(16,'https://transviet.com.vn/Images/GallerySGN/DL001.04/Nha-tho-Domaine-De-Marie.jpg',5),(17,'https://transviet.com.vn/Images/GallerySGN/DL001.04/thien-vien-truc-lam-da-lat.jpg',5),(18,'https://transviet.com.vn/Images/GallerySGN/DL001.04/langbiang-du-lich-da-lat.jpg',5),(19,'https://transviet.com.vn/Images/GallerySGN/PR001.03/doi-cat-nam-cuong.jpg',6),(20,'https://transviet.com.vn/Images/GallerySGN/PR001.03/du-lich-vinh-vinh-hy.jpg',6),(21,'https://transviet.com.vn/Images/GallerySGN/PR001.03/Vuon-nho-Ba-Moi.jpg',6),(22,'https://transviet.com.vn/Images/GallerySGN/PR001.03/thap-Poklong-Giarai.jpg',6),(24,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/bai-sao-phu-quoc5.jpg',11),(25,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/9609748610_e961372fce_b.jpg',11),(26,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/biet-thu-sunset-sanato-phu-quoc.jpg',11),(27,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/nhatuphuquoc2.jpg',11),(28,'https://transviet.com.vn/Images/GalleryHAN/PQ15.04/316.jpg',11),(96,'https://banahills.sunworld.vn/wp-content/uploads/2018/08/a3-1-768x379.jpg',30),(97,'https://banahills.sunworld.vn/wp-content/uploads/2018/08/lam-mua-lam-gio-tai-viet-nam-chua-du-cau-vang-tiep-tuc-chinh-phuc-the-gioi-1206-768x432.jpg',30),(98,'https://banahills.sunworld.vn/wp-content/uploads/2018/08/cap-treo-07-1-768x489.jpg',30),(99,'https://banahills.sunworld.vn/wp-content/uploads/2018/08/2c-768x512.jpg',30),(100,'https://banahills.sunworld.vn/wp-content/uploads/2018/08/cap-treo-01-1-768x508.jpg',30),(101,'https://dranahotel.com/upload/anh%20Thohtn/(1)Garuda-Valley-1.jpg',31),(102,'https://dranahotel.com/upload/anh%20Thohtn/Happy-Choo-Choo-005.jpg',31),(103,'https://dranahotel.com/upload/anh%20Thohtn/(1)Carousel-001.jpg',31),(104,'https://dranahotel.com/upload/anh%20Thohtn/(1)Treehouse-playland-001.jpg',31),(105,'https://dranahotel.com/upload/anh%20Thohtn/Dino-Island-002.jpg',31),(106,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/bai-bien-my-khe-da-nang3.png',32),(107,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/nha-hang-hai-san-san-ho-da-nang1.png',32),(108,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/bai-bien-my-khe-da-nang2.png',32),(109,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/bai-tam-my-khe-da-nang1.png',32),(110,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/nha-hang-syrena-da-nang1.png',32),(111,'http://nuithantai.vn/Content/UserFiles/Images/About/C43A2725.JPG',33),(112,'http://nuithantai.vn/Content/UserFiles/Images/About/th%C3%A1p%20Onsen%201.jpg',33),(113,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/toan-canh-cau-rong-vo-cung-hoanh-trang.png',34),(114,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/c-r-e1505464506291.jpg',34),(115,'http://www.geoholidayclub.org/wp-content/uploads/2018/02/Hu%E1%BA%BF-%C4%91i-%C4%90%C3%A0-N%E1%BA%B5ng-bao-nhi%C3%AAu-km.jpg',34),(116,'https://www.tuannguyentravel.com/data/images/cau-rong%281%29.jpg',34),(117,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/Cau-rong-da-nang-buoi-chieu-ta.png',34),(118,'http://www.dulichdanang.biz.vn/_/rsrc/1486448714514/diem-du-lich/cau-tinh-yeu-da-nang/cau-tinh-yeu-danang.jpg',35),(119,'http://www.dulichdanang.biz.vn/_/rsrc/1486448631044/diem-du-lich/cau-tinh-yeu-da-nang/cau-tinh-yeu-da-nang.jpg',35),(120,'http://www.dulichdanang.biz.vn/_/rsrc/1486450139513/diem-du-lich/cau-tinh-yeu-da-nang/cau-tinh-yeu-da-nang3.jpg',35),(121,'http://www.dulichdanang.biz.vn/_/rsrc/1486449087327/diem-du-lich/cau-tinh-yeu-da-nang/cautinhyeudanang.jpg',35),(122,'http://www.dulichdanang.biz.vn/_/rsrc/1486449963961/diem-du-lich/cau-tinh-yeu-da-nang/cau-tinh-yeu-da-nang2.jpg',35),(123,'https://cdn3.ivivu.com/2016/02/dao-cu-lao-cham-ivivu-5.jpg',36),(124,'https://cdn3.ivivu.com/2016/02/dao-cu-lao-cham-ivivu-4.jpg',36),(125,'https://cdn3.ivivu.com/2016/02/dao-cu-lao-cham-ivivu-1.jpg',36),(126,'https://cdn3.ivivu.com/2016/02/dao-cu-lao-cham-ivivu-2-1024x571.jpg',36),(127,'https://cdn3.ivivu.com/2016/02/dao-cu-lao-cham-ivivu-6.jpg',36),(128,'https://i-dulich.vnecdn.net/2016/01/06/1-1452078497_680x0.jpg',37),(129,'https://i-dulich.vnecdn.net/2016/01/06/3-1452078498_680x0.jpg',37),(130,'http://tuoidep.net/app/webroot/js/kcfinder/upload/images/da-lat/rung-ta-nang.jpg',37),(131,'https://i-dulich.vnecdn.net/2016/01/06/2-1452078498_680x0.jpg',37),(132,'https://i-dulich.vnecdn.net/2016/01/06/4-1452078498_680x0.jpg',37),(133,'https://mytourcdn.com/upload_images/Image/Location/10_3_2015/9-du-lich-ho-dai-ninh-lam-dong-mytour-3.jpg',38),(134,'https://mytourcdn.com/upload_images/Image/Location/10_3_2015/9-du-lich-ho-dai-ninh-lam-dong-mytour-4.jpg',38),(135,'https://mytourcdn.com/upload_images/Image/Location/10_3_2015/9-du-lich-ho-dai-ninh-lam-dong-mytour-6.jpg',38),(136,'https://mytourcdn.com/upload_images/Image/Location/10_3_2015/9-du-lich-ho-dai-ninh-lam-dong-mytour-2.jpg',38),(137,'https://mytourcdn.com/upload_images/Image/Location/10_3_2015/9-du-lich-ho-dai-ninh-lam-dong-mytour-5.jpg',38),(143,'https://i-dulich.vnecdn.net/2016/01/06/2-1452078498_680x0.jpg',40),(144,'https://i-dulich.vnecdn.net/2016/01/06/4-1452078498_680x0.jpg',40),(145,'http://tuoidep.net/app/webroot/js/kcfinder/upload/images/da-lat/rung-ta-nang.jpg',40),(146,'https://i-dulich.vnecdn.net/2016/01/06/1-1452078497_680x0.jpg',40),(147,'https://i-dulich.vnecdn.net/2016/01/06/3-1452078498_680x0.jpg',40),(148,'https://mytourcdn.com/upload_images/Image/Location/10_3_2015/9-du-lich-ho-dai-ninh-lam-dong-mytour-4.jpg',41),(149,'https://mytourcdn.com/upload_images/Image/Location/10_3_2015/9-du-lich-ho-dai-ninh-lam-dong-mytour-6.jpg',41),(150,'https://mytourcdn.com/upload_images/Image/Location/10_3_2015/9-du-lich-ho-dai-ninh-lam-dong-mytour-2.jpg',41),(151,'https://mytourcdn.com/upload_images/Image/Location/10_3_2015/9-du-lich-ho-dai-ninh-lam-dong-mytour-5.jpg',41),(152,'https://mytourcdn.com/upload_images/Image/Location/10_3_2015/9-du-lich-ho-dai-ninh-lam-dong-mytour-3.jpg',41),(153,'https://mytourcdn.com/upload_images/Image/Quang%20Dia%20Danh/491/vbb1392695589.jpg',42),(154,'https://mytourcdn.com/upload_images/Image/Quang%20Dia%20Danh/491/DSCN1918.jpg',42),(155,'https://mytourcdn.com/upload_images/Image/Quang%20Dia%20Danh/491/IMG_5845.jpg',42),(156,'https://mytourcdn.com/upload_images/Image/Ninh/@%20List%202/15%20Th%C3%A1c%20Jraiblian/1.jpg',42),(157,'https://mytourcdn.com/upload_images/Image/Quang%20Dia%20Danh/491/10769_1302267619.jpg',42),(158,'http://tuoidep.net/app/webroot/js/kcfinder/upload/images/da-lat/lang-ga-lam-dong.jpg',43),(159,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/21-3.jpg',44),(160,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/4-2-768x511.jpg',45),(161,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/4-2-768x511.jpg',45),(162,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/6-3.jpg',46),(163,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/5-3.jpg',46),(164,'http://www.viettouring.vn/images/stories/Vietnamtravel/LAICHAU/dulichlaichaudulich2.jpg',47),(165,'http://www.viettouring.vn/images/stories/Vietnamtravel/LAICHAU/du-lich-den-ong-hoang-bay.jpg',47),(166,'http://www.viettouring.vn/images/stories/Vietnamtravel/LAICHAU/sinsuoi%20ho.jpg',47),(167,'http://maichautourist.com/assets/uploads/tours/doi%20che%20moc%20chau%202.jpg',47),(168,'http://www.viettouring.vn/images/stories/Vietnamtravel/LAICHAU/dongthienduon.jpg',47),(169,'https://didauchoigi.com/wp-content/uploads/2018/11/Kham-pha-ve-dep-cua-Tam-DuongLai-Chau_6.jpg',48),(170,'https://didauchoigi.com/wp-content/uploads/2018/11/Kham-pha-ve-dep-cua-Tam-DuongLai-Chau_7.jpg',48),(171,'https://didauchoigi.com/wp-content/uploads/2018/11/Kham-pha-ve-dep-cua-Tam-DuongLai-Chau_2.jpg',48),(172,'https://didauchoigi.com/wp-content/uploads/2018/11/Kham-pha-ve-dep-cua-Tam-DuongLai-Chau_1.jpg',48),(173,'https://mytourcdn.com/upload_images/Image/Quang%20Dia%20Danh/3/4434600449_59e6894188_b.jpg',49),(174,'https://mytourcdn.com/upload_images/Image/Quang%20Dia%20Danh/3/Th%C3%A1c%20Hi%C3%AAu.jpg',49),(175,'https://mytourcdn.com/upload_images/Image/Quang%20Dia%20Danh/3/anh%20bia.jpg',49),(176,'https://mytourcdn.com/upload_images/Image/Quang%20Dia%20Danh/3/90795548.jpg',49),(177,'https://mytourcdn.com/upload_images/Image/Quang%20Dia%20Danh/3/images670735_15475_thac_tac_tinh_5063.jpg',49),(178,'http://media.dulich24.com.vn/diemden/dong-tien-son-lai-chau-5576/dong-tien-son-lai-chau-1.jpg',50),(179,'http://media.dulich24.com.vn/diemden/dong-tien-son-lai-chau-5576/dong-tien-son-lai-chau-2.jpg',50),(180,'http://media.dulich24.com.vn/diemden/dong-tien-son-lai-chau-5576/dong-tien-son-lai-chau-8.gif',50),(181,'http://media.dulich24.com.vn/diemden/dong-tien-son-lai-chau-5576/dong-tien-son-lai-chau-5.jpg',50),(182,'http://media.dulich24.com.vn/diemden/dong-tien-son-lai-chau-5576/dong-tien-son-lai-chau-9.jpg',50),(183,'https://dailytravelvietnam.com/vi/images/2016/02/con-quy-ben-tre-3.jpg',51),(184,'https://www.khamphadisan.com/wp-content/uploads/2017/09/con-quy-ben-tre-khamphadisan-3.jpg',51),(185,'https://dailytravelvietnam.com/vi/images/2016/02/con-quy-ben-tre.jpg',51),(186,'https://bazantravel.com/cdn/medias/uploads/29/29007-con-quy-ben-tre-670x446.jpg',51),(187,'http://image.tintucmientay.com.vn/news/2014/20140827/fckimage/3889_330con-phung-1.jpg',51),(188,'https://farm5.staticflickr.com/4532/26601967779_a8744bcc39_b.jpg',52),(189,'https://media.foody.vn/res/g7/67643/prof/s/foody-mobile-gia-trang-resort-du-lich-sinh-thai-tp-hcm.jpg',52),(190,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf37zSya8gsWBL71pyRvPyNwlnWCkISUqtIhYlQ8s120woPreD',52),(191,'https://images.foody.vn/res/g22/212519/prof/s576x330/foody-mobile-hmb-s-jpg-337-635917561419066093.jpg',52),(192,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/08/conphung.jpg',52),(193,'https://viettravelo.com/wp-content/uploads/2018/02/27868015_408045239609549_8973156303851036882_n.jpg',53),(194,'https://viettravelo.com/wp-content/uploads/2018/02/27750563_408045162942890_2049616602119481587_n.jpg',53),(195,'https://viettravelo.com/wp-content/uploads/2018/02/27858149_408045109609562_6021951356044332187_n.jpg',53),(196,'https://viettravelo.com/wp-content/uploads/2018/02/27750704_408045132942893_1842270839038790791_n-1.jpg',53),(197,'https://viettravelo.com/wp-content/uploads/2018/02/27752276_408045266276213_2771750425614053816_n.jpg',53),(198,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/10/thoai-mai-vat-hoa-qua-tai-vuon-trai-cay.png',54),(199,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2018/03/nhieu-du-khac-nuoc-ngoai-toi-tham-quan-vuon-trai-cay-Cai-Mon.png',54),(200,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/10/fytdrdstrststest-e1508321715175.jpg',54),(201,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2018/03/thu-hoach-trai-cay-tai-Cai-Mon-768x566.png',54),(202,'https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2018/03/mua-trai-cay-tai-vuon-ve-lam-qua.png',54),(203,'https://wiki-travel.com.vn/Uploads/picture/anhthuy1202-181405111439-ben-tau-cao-toc-di-dat-mui.jpg',55),(204,'http://media.tinmoitruong.vn/public/media/media/picture/02/rung%20ca%20mau%202.gif',55),(205,'https://vtv1.mediacdn.vn/zoom/700_438/2017/du-lich-ca-mau-rung-duoc-nam-can-1-1494472921242.jpg',55),(206,'https://wiki-travel.com.vn/Uploads/picture/anhthuy1202-195131035133-du-lich-dat-mui-ca-mau.jpg',55),(207,'http://dulichcamau.info/gallery/du-lich-sinh-thai-mui-ca-mau.jpg',55),(208,'https://media.gody.vn/images/ca-mau/hon-khoai/12-2016/20161227083613-hon-khoai-gody%20(11).jpg',56),(209,'https://media.gody.vn/images/ca-mau/hon-khoai/12-2016/20161227083613-hon-khoai-gody%20(9).jpg',56),(210,'https://media.gody.vn/images/ca-mau/hon-khoai/12-2016/20161227083613-hon-khoai-gody%20(14).jpg',56),(211,'https://media.gody.vn/images/ca-mau/hon-khoai/12-2016/20161227083611-hon-khoai-gody%20(1).jpg',56),(212,'https://media.gody.vn/images/ca-mau/hon-khoai/12-2016/20161227083612-hon-khoai-gody%20(7).jpg',56),(213,'https://media.gody.vn/images/ca-mau/cho-noi-ca-mau/12-2016/20161226100231-cho-noi-ca-mau-gody%20(4).jpg',57),(214,'https://media.gody.vn/images/ca-mau/cho-noi-ca-mau/12-2016/20161226100230-cho-noi-ca-mau-gody%20(1).jpg',57),(215,'https://media.gody.vn/images/ca-mau/cho-noi-ca-mau/12-2016/20161226100231-cho-noi-ca-mau-gody%20(3).jpg',57),(216,'https://media.gody.vn/images/ca-mau/cho-noi-ca-mau/12-2016/20161226100231-cho-noi-ca-mau-gody%20(2).jpg',57),(217,'https://savitour.vn/admincp/du-lich/HINHANH/573124643.jpg',58),(218,'https://www.dulichvietnam.com.vn/data/u-minh-thuong.jpg',58),(219,'http://vuitour.com/profiles/vuitourcom/uploads/attach/post/images/rung%20u%20minh.jpg',58),(220,'http://phuongnam.reatimes.vn/media/uploaded/14/2019/02/24/thumbnailimage-reatimes-1551018969_thumb_500.jpeg',58),(221,'https://dulichfun.com/wp-content/uploads/2017/12/Kinh-nghiem-di-du-lich-rung-quoc-gia-U-Minh-Ha-Ca-Mau.jpg',58);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tour`
--

LOCK TABLES `order_tour` WRITE;
/*!40000 ALTER TABLE `order_tour` DISABLE KEYS */;
INSERT INTO `order_tour` VALUES (1,1,'Duy ',123,'Long Thành',1,NULL,1),(2,1,'Anh',456,'HCM',1,NULL,1),(3,1,'Vũ',1236565,'HCM',1,NULL,0),(4,2,'Ngọc',3343434,'Đồng Nai',1,NULL,1),(5,2,'Vũ Anh',12341414,'Long Thành',1,NULL,0),(6,3,'Katakana',12345678,'HCM',1,NULL,0),(7,4,'Hiragana',975543411,'Hà Nội',1,NULL,0),(8,4,'Shikawa',121414141,'Japan',1,NULL,0),(9,5,'Ronaldo',121143141,'Bồ đào nha',1,NULL,0),(10,6,'Lionel Messi',12344114,'HCM',1,NULL,0),(13,3,'1',1,'1',1,'1',0),(14,5,'1',1,'11',1,'11',0),(15,36,'Duy Anh ',123456789,'Long Thanh',2,'2',0),(16,38,'Duy Anh',12345678,'Ho Chi Minh',3,'',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'Sapa - Hà Nội - Hạ Long','https://transviet.com.vn/Images/GallerySGN/MB002.05/chinh-phuc-dinh-fansipan.jpg',1),(2,'Hạ Long - Ninh Bình - Hà Nội','https://transviet.com.vn/Images/GallerySGN/MB001.04/vinhhalong-du-lich-mien-bac-transviet-1.jpg',2),(3,'Sapa - Hà Nội - Hạ Long','https://transviet.com.vn/Images/GallerySGN/MB001.05/ho-hoan-kiem.jpg',3),(4,'Phan Thiết - Mũi Né','https://transviet.com.vn/Images/GallerySGN/PT001.02/doi-cat-bay.jpg',4),(5,'Đà Lạt','https://transviet.com.vn/Images/GallerySGN/DL001.04/ga-da-lat.jpg',5),(6,'Vĩnh Hy - Ninh Chữ','https://transviet.com.vn/Images/GallerySGN/PR001.03/dao-binh-hung.jpg',6),(7,'Phú Quốc','https://transviet.com.vn/Images/GalleryHAN/PQ15.04/280ef947e00fb8b33471a2a169c7ffd9.jpg',11),(23,'Bà Nà Hills','https://danangaz.com/wp-content/uploads/2018/09/1-min-768x497.jpg',30),(24,'Asian Park','https://danangaz.com/wp-content/uploads/2018/09/2-min.jpg',31),(25,'Bãi Biển Mỹ Khê','https://danangaz.com/wp-content/uploads/2018/09/3-min-768x512.jpg',32),(26,' Suối khoáng nóng núi Thần Tài','https://danangaz.com/wp-content/uploads/2018/09/4-min-747x420.jpg',33),(27,'Cầu Rồng','https://danangaz.com/wp-content/uploads/2018/09/5-min-768x383.jpg',34),(28,'Cầu Tình Yêu','https://danangaz.com/wp-content/uploads/2018/09/6-min.jpg',35),(29,'Cù Lao Chàm','https://danangaz.com/wp-content/uploads/2018/09/7-min.jpg',36),(30,'Đồi cỏ và rừng Tà Năng','http://tuoidep.net/app/webroot/js/kcfinder/upload/images/da-lat/cung-duong-ta-nang.jpg',37),(31,'Hồ Đại Ninh','https://mytourcdn.com/upload_images/Image/Location/10_3_2015/9-du-lich-ho-dai-ninh-lam-dong-mytour-1.jpg',38),(32,'Đồi cỏ và rừng Tà Năng','http://tuoidep.net/app/webroot/js/kcfinder/upload/images/da-lat/cung-duong-ta-nang.jpg',40),(33,'Hồ Đại Ninh','https://mytourcdn.com/upload_images/Image/Location/10_3_2015/9-du-lich-ho-dai-ninh-lam-dong-mytour-1.jpg',41),(34,'Thác Jraiblian','https://www.dalattrip.com/dulich/media/2012/09/Bao-Dai-Waterfall.jpg',42),(35,'Làng K\'Long','http://tuoidep.net/app/webroot/js/kcfinder/upload/images/da-lat/lang-klong.jpg',43),(36,'Tượng chúa Giêsu Kito Vua','https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/1-3-768x432.jpg',44),(37,'Biển Long Hải','https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/3-4.jpg',45),(38,'Hải đăng vũng tàu','https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/07/6-3.jpg',46),(39,'Lai Châu','http://www.viettouring.vn/images/stories/Vietnamtravel/LAICHAU/deo-o-quy-ho-tay-bac1.jpg',47),(40,'Tam Đường','https://didauchoigi.com/wp-content/uploads/2018/11/Kham-pha-ve-dep-cua-Tam-DuongLai-Chau_4.jpg',48),(41,'Thác Tác Tình','https://mytourcdn.com/upload_images/Image/Quang%20Dia%20Danh/3/44063764-12.jpg',49),(42,'Động Tiên Sơn','http://media.dulich24.com.vn/diemden/dong-tien-son-lai-chau-5576/dong-tien-son-lai-chau-3.jpeg',50),(43,'Cồn Quy','https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/08/Con-Quy.jpg',51),(44,'Cồn Phụng','https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/08/Con-Phung-1.jpg',52),(45,'Làng hoa cảnh chợ Lách','https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/08/lang-hoa-canh-cho-lach-vntrip.jpg',53),(46,'Vườn trái cây Cái Mơn','https://vntrip.cdn.vccloud.vn/cam-nang/wp-content/uploads/2017/08/Vuon-trai-cay-Cai-Mon.jpg',54),(47,'Mũi Cà Mau','https://thichdi.com/wp-content/uploads/2016/03/dia-diem-du-lich-ca-mau.jpg',55),(48,'Hòn Khoai','https://thichdi.com/wp-content/uploads/2016/03/dia-diem-du-lich-ca-mau-2.jpg',56),(49,'Chợ nổi Cà Mau','https://thichdi.com/wp-content/uploads/2016/03/dia-diem-du-lich-ca-mau-6.jpg',57),(50,'Rừng quốc gia U Minh hạ','https://dulichfun.com/wp-content/uploads/2017/12/Huong-dan-di-tham-quan-vui-choi-o-rung-quoc-gia-U-Minh-Ha-Ca-Mau.jpg',58);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_information`
--

LOCK TABLES `tour_information` WRITE;
/*!40000 ALTER TABLE `tour_information` DISABLE KEYS */;
INSERT INTO `tour_information` VALUES (1,'Tour du lịch HẠ LONG - NINH BÌNH - HÀ NỘI 5 ngày 4 đêm ','Viếng thăm Thiền Viện Trúc Lâm',9000000,1,4),(2,'Tour du lịch HẠ LONG - NINH BÌNH - HÀ NỘI 5 ngày 4 đêm ','	\r\nHẠ LONG - NINH BÌNH - HÀ NỘI\r\n4 Ngày 3 Ðêm\r\nKhởi hành từ: TP.HCM\r\nPhương tiện: VIETJET AVIATION\r\n(MB001.04) Hà Nội – Yên Tử – Hạ Long – Tràng An – Bái Đính\r\nChùa Một Cột\r\nVịnh Hạ Long\r\nVịnh Hạ Long\r\nMIỀN BẮC\r\n- Du thuyền ngắm Vịnh Hạ Long – kỳ quan thiên nhiên của Thế Giới\r\n- Viếng thăm Chùa Bái Đính – ngôi chùa có nhiều kỷ lục nhất Việt Nam\r\n- Khám phá vẻ đẹp non nước hữu tình Tràng An\r\n- Tham quan thủ đô Hà Nội cổ kính',7000000,1,13),(3,'Tour du lịch SA PA - HÀ NỘI - HẠ LONG 5 ngày 4 đêm ','- Chạm tay cửa khẩu biên giới Việt - Trung “Lào Cai – Hà Khẩu”\r\n- Tự do chinh phục “Nóc nhà Đông Dương” Fansipan\r\n- Ngắm đỉnh Hàm Rồng hùng vỹ giữa mây trời\r\n- Tham quan thủ đô Hà Nội cổ kính\r\n- Du thuyền ngắm Vịnh Hạ Long – kỳ quan thiên nhiên của Thế Giới',6500000,1,4),(4,'KHÁM PHÁ THÀNH PHỐ BIỂN PHAN THIẾT 2 Ngày 1 đêm','Tự do vui chơi và trải nghiệm cảm giác thú vị với trò chơi trượt cát tại Đồi Cát Bay.\r\n- Tham quan Trường Dục Thanh – Nơi dạy học ngày xưa của Người Thầy giáo Nguyễn Tất Thành.\r\n- Tự do khám phá ẩm thực Bình Thuận tại khu vục làng chài.\r\n- Tự do thưởng thức chương trình Làng Chài Nhạc Nước – Show diễn về làng chài trên sân khấu nhạc nước đầu tiên và duy nhất tại Việt Nam.',1500000,1,33),(5,'Du Lịch ĐÀ LẠT - THÀNH PHỐ NGÀN HOA','Viếng thăm Thiền Viện Trúc Lâm\r\n- Ghé thăm các vườn rau sạch, vườn hoa nổi tiếng ở Đà Lạt\r\n- Chinh phục đỉnh Langbiang huyền thoại\r\n- Tham gia chương trình giao lưu văn hóa cồng chiêng Tây Nguyên\r\n- Thưởng thức đại tiệc lẩu buffet rau, nấm và hải sản',3000000,1,44),(6,'Du Lịch KHÁM PHÁ VĨNH HY - NINH CHỬ 2 ngày 1 đêm','Tham quan vườn nho Ba Mọi trĩu quả.\r\n- Khám phá Tháp Poklong Giarai cổ kính của người Chăm.\r\n- Trải nghiệm tại Đồi cát Nam Cương với hai màu trắng hồng hiếm có.\r\n- Hòa mình với thiên nhiên tại Vịnh Vĩnh Hy - 1 trong 10 Vịnh đẹp nhất Việt Nam.\r\n- Chiêm ngưỡng và khám phá Hòn ngọc giữa Vịnh Cam Ranh - Đảo Bình Hưng.',2500000,1,36),(11,'KHÁM PHÁ PHÚ QUỐC SIÊU KHUYẾN MẠI','Đẹp',2000000,1,58),(30,'Bà Nà Hills – địa điểm du lịch Đà Nẵng','Là địa điểm du lịch mà bất cứ ai đến du lịch Đà Nẵng cũng đi ít nhất 1 lần. Tọa lạc trên đỉnh núi cao vời vợi Bà Nà hút hồn du khách với cảnh đẹp như tiên cảnh và cáp treo dài nhất thế giới. Đây cũng được xem là một trong những địa điểm nổi bật nhất Đà Nẵng.',750000,1,34),(31,'Asian Park – địa điểm giải trí ở Đà Nẵng','Đến với Asian Park bạn sẽ khám phá thế giới vui chơi muôn màu muôn vẻ với các trò chơi cảm giác mạnh hay trò chơi vui nhộn. Bên cạnh đó bạn còn được chìm đắm trong không gian văn hóa đậm bản sắc châu Á. Chắc chắn du khách sẽ được trải nghiệm cảm giác vui chơi thoải mái ở đây.',15000000,1,34),(32,'Bãi Biển Mỹ Khê – địa điểm du lịch đẹp ở Đà Nẵng','Được mệnh danh là một trong 6 bãi biển đẹp nhất hành tinh nên không thật thiếu sót khi không nhắc đến bãi biển Mỹ Khê. Biển xanh cát vàng mang vẻ đẹp trong trẻo thu hút đông đảo du khách. Chính vì thế khu vực ở đây tập trung rất nhiều nhà hàng khách sạn nhằm phục vụ lượng khách đến Đà Nẵng hàng năm.',5500000,1,34),(33,'Suối khoáng nóng núi Thần Tài – khu du lịch Đà Nẵng','Đây là địa điểm du lịch kết hợp nghỉ dưỡng còn khá mới nhưng nhanh chóng thu hút du khách đến đây. Đến suối khoáng nóng Thần Tài bạn được trải nghiệm không gian nghỉ dưỡng thoải mái với chất lượng dịch vụ đẳng cấp. Tắm suối khoáng ở đây giúp du khách có tinh thần sảng khoái, đầu óc thư giãn.',3000000,1,34),(34,'Cầu Rồng – địa điểm du lịch Đà Nẵng','Đà Nẵng nổi tiếng là thành phố của những cây cầu. Bên cạnh biểu tượng lâu đời của thành phố là cầu sông Hàn thì cầu Rồng cũng nổi tiếng chẳng kém. Con rồng khổng lồ màu vàng rực chuyển màu liên tục khi đêm đến vắt ngang qua dòng sông Hàn thơ mộng gây ấn tượng trong lòng du khách.',350000,1,34),(35,'Cầu Tình Yêu – địa điểm đi chơi Đà Nẵng','Lại là địa điểm đẹp rất thu hút các cặp đôi đến đây để check in hay móc khóa tình yêu vào cây cầu như minh chứng cho 1 tình yêu đẹp đẽ. Hình ảnh trái tim nối đuôi nhau từ đầu cầu đến cuối cầu rất đẹp.',6000000,1,34),(36,'Cù Lao Chàm – địa điểm du lịch khi đến Đà Nẵng','Du lịch Cù Lao Chàm là địa điểm du lịch Đà Nẵng hấp dẫn du khách. Nơi đây được ví là hòn ngọc giữa biển, mang nét đẹp đặc trưng. Đến Cù Lao Chàm, bạn có thể đi đến các địa điểm như chùa Hải Tạng, nhà bảo tàng, giếng cổ Chăm, chợ Tân Hiệp, miếu tổ nghề Yến. Ngoài ra bạn còn được thưởng thức các đặc sản nơi đây như mực một nắng, cua đá, ốc vú nàng… Hứa hẹn chuyến đi có nhiều trải nghiệm thú vị.',2500000,1,34),(37,'Đồi cỏ và rừng Tà Năng','Khu rừng Tà Năng thuộc huyện Đức Trọng, tỉnh Lâm Đồng, cách TP HCM hơn 300 km. Đến Tà Năng bạn sẽ được chiêm ngưỡng những đồi cỏ bao la, sự trùng điệp, hùng vĩ của núi đồi. Tà Năng là điểm du lịch thích hợp cho các bạn thích đi phượt bởi địa thế nơi đây khá phức tạp, cung đường đi khá dài. Trước khi lên đường chinh phục Tà Năng, các bạn cần chuẩn bị đầy đủ đồ đạc, dụng cụ cũng như sức khỏe tốt để đảm bảo có một chuyến đi an toàn, thuận lợi.',4000000,1,44),(38,'Hồ Đại Ninh','Hồ Đại Ninh thuộc xã Ninh Gia, huyện Đức Trọng (Lâm Đồng) trong dự án hồ thủy điện Đại Ninh thuộc khu vực sông Đồng Nai để cung cấp nước về cho Bình Thuận. Là dự án lớn nằm trên cả 3 tỉnh nhưng có lẽ chỉ với không khí lạnh của cao nguyên, hồ Đại Ninh ở Đức Trọng mới được xem là tuyệt tác. Hồ Đại Ninh cách thành phố ngàn hoa Đà Lạt chừng 50km theo hướng về Bảo Lộc, cạnh quốc lộ 20. Nằm giữa vùng đất sương mù của xứ sở cao nguyên đầy gió lạnh, hồ Đại Ninh được ví như nàng tiên kiều diễm mang nhiều nét đẹp huyền bí đầy mê hoặc với những ai thích khám phá.',2500000,1,44),(40,'Đồi cỏ và rừng Tà Năng','Khu rừng Tà Năng thuộc huyện Đức Trọng, tỉnh Lâm Đồng, cách TP HCM hơn 300 km. Đến Tà Năng bạn sẽ được chiêm ngưỡng những đồi cỏ bao la, sự trùng điệp, hùng vĩ của núi đồi. Tà Năng là điểm du lịch thích hợp cho các bạn thích đi phượt bởi địa thế nơi đây khá phức tạp, cung đường đi khá dài. Trước khi lên đường chinh phục Tà Năng, các bạn cần chuẩn bị đầy đủ đồ đạc, dụng cụ cũng như sức khỏe tốt để đảm bảo có một chuyến đi an toàn, thuận lợi.',4000000,1,44),(41,'Hồ Đại Ninh','Hồ Đại Ninh thuộc xã Ninh Gia, huyện Đức Trọng (Lâm Đồng) trong dự án hồ thủy điện Đại Ninh thuộc khu vực sông Đồng Nai để cung cấp nước về cho Bình Thuận. Là dự án lớn nằm trên cả 3 tỉnh nhưng có lẽ chỉ với không khí lạnh của cao nguyên, hồ Đại Ninh ở Đức Trọng mới được xem là tuyệt tác. Hồ Đại Ninh cách thành phố ngàn hoa Đà Lạt chừng 50km theo hướng về Bảo Lộc, cạnh quốc lộ 20. Nằm giữa vùng đất sương mù của xứ sở cao nguyên đầy gió lạnh, hồ Đại Ninh được ví như nàng tiên kiều diễm mang nhiều nét đẹp huyền bí đầy mê hoặc với những ai thích khám phá.',2500000,1,44),(42,'Thác Jraiblian','Ẩn mình giữa núi rừng Tà In thanh vắng là một thác nước cao hùng vĩ. Thác có một vẻ đẹp vừa huyền bí vừa mơ màng. Ai đã một lần đi qua chắc khó quên những ấn tượng về dòng thác cũng như vẻ đẹp hoang dã của nó giữa núi rừng hùng vĩ. Từ vách đá cao chừng 70m, một dòng nước lớn chia làm ba nhánh đổ thẳng xuống lòng suối sâu; những tia nước đuổi nhau, phóng nhanh như tên bắn, bụi nước bốc mù mịt cả một vùng thật là huyền ảo. Ở xa chừng hai, ba cây số ta cũng đã nghe thấy tiếng nước reo ì ầm. Trải dài dưới chân thác là một bãi đá rộng, có nhiều tảng đá lớn gợi nên sự tưởng tượng lý thú cho du khách khi có dịp \"dừng chân lãng du\". Tương truyền thì đó chính là xác của các loài cầm thú, chim muông và có cả con người bị chết hóa đá khi tụ tập ở đây để nghe âm thanh huyền diệu phát ra từ lưỡi con cá sấu. Tương phản với sự mạnh mẽ của dòng thác, cảnh vật ven bờ rất nên thơ. Bên phải thác, trên vách đá cheo leo một cây si già buông những cánh tay dài xuống thác như thể đang đùa vui với dòng nước. Rồi những cành cây, dây leo mềm mại bò trên vách đá. Đây đó, thỉnh thoảng xuất hiện những chùm phong lan trắng muốt từ các cành cây rũ xuống điểm trang.\n\n \n\n ',1500000,1,44),(43,'Làng K\'Long','Làng Gà là nơi định cư chủ yếu của các gia đình người K’Ho trên núi rừng Tây nguyên. Làng K’Long còn rất nhiều ngôi nhà gỗ cũ kỹ tạo được ấn tượng đẹp cho du khách. Đây chính là sản phẩm du lịch đặc trưng làm cho khách phải nhớ khi nhắc đến Đà Lạt, nhắc đến làng K’Long.Ruộng rẫy của người K’Ho là sản phẩm du lịch đặc trưng thứ hai đối với du khách khi đặt chân đến đây. Phía sau dãy nhà nằm cặp hai bên đường xuyên qua làng là những khu đất bậc thang trên nền đất đỏ bazan trồng hoa màu cây cối xanh tốt, đậm chất Tây Nguyên.',3000000,1,44),(44,'Tượng chúa Giêsu Kito Vua','Tượng Chúa Kitô Vua – Biểu tượng của thành phố biển, là một bức tượng Chúa Giêsu được đặt trên đỉnh Núi Nhỏ của thành phố Vũng Tàu. Tượng có chiều cao 32 mét, chiều dài hai cánh tay là 18,4 mét, đặt trên bệ khối chạm hình Chúa và 12 tông đồ. Bên trong tượng là cầu thang xoắn ốc gồm 133 bậc, chạy từ bệ lên cổ tượng. Để lên tượng, bạn phải leo 1.000 bậc thang cao 500m và thành quả là du khách sẽ được chiêm ngưỡng cả thành phố từ trên cao với nếp nhà xinh, với bãi biển trong xanh bên triền cát trắng mịn,… hãy cảm nhận làn gió từ biển Đông thổi vào khi đứng trên cánh tay Chúa.\n',750000,1,45),(45,'Biển Long Hải','Là điểm đến không thể bỏ qua khi tới du lịch Vũng Tàu bởi bức tranh thiên nhiên hoang sơ tuyệt đẹp sẽ níu chân du khách. Khí hậu ở Long Hải mát mẻ quanh năm nên bạn có thể tới bất cứ khi nào. Nước biển ở đây trong xanh và bao quanh biển là những dải núi hay rừng hoa anh đào khoe sắc. Đặc biệt, biển Long Hải rất sẵn hải sản tươi ngon giá rẻ.',1200000,1,45),(46,'Hải đăng vũng tàu','Được xem như một trong những biểu tượng của thành phố biển Vũng Tàu. Kiến trúc ngọn hải đăng cổ xưa nhất Việt Nam và Đông Nam Á này là một tháp hình trụ cao 18 m, đường kính 3 m và được sơn màu trắng. Bên trong ngọn hải đăng có cầu thang dẫn đến gần đỉnh để ngắm toàn cảnh thành phố Vũng Tàu. Du khách có thể di chuyển bằng ô tô, xe máy hoặc thả bộ trên con đường mòn lên núi.',2300000,1,45),(47,'Tour Du lịch Lai Châu 3 ngày 2 đêm','Lai Châu nằm cách thủ đô Hà Nội 450 km về phía tây bắc, có toạ độ địa lý từ 21o51 phút đến 22o49 phút vĩ độ Bắc và 102o19 phút đến 103o59 phút kinh độ Đông. phía bắc giáp tỉnh Vân Nam - Trung Quốc; phía đông giáp với tỉnh Lào Cai, Yên Bái, Sơn La; phía tây và phía nam giáp với tỉnh Điện Biên. Lai Châu có 273 km đường biên giới với cửa khẩu quốc gia Ma Lù Thàng và nhiều lối mở trên tuyến biên giới Việt – Trung trực tiếp giao lưu với các lục địa rộng lớn phía tây nam Trung Quốc; được gắn với khu vực tam giác kinh tế Hà Nội – Hải Phòng – Quảng Ninh bằng các tuyến Quốc lộ 4D, Quốc lộ 70, Quốc lộ 32 và đường thuỷ sông Đà. Lai Châu có tiềm năng để phát triển dịch vụ – thương mại, xuất nhập khẩu và du lịch',2950000,1,3),(48,'Du lịch tam đường - lai châu','Huyện Tam Đường có 14 đơn vị hành chính trực thuộc gồm các xã: Sùng Phài, Nùng Nàng, Bản Giang, Bản Hon, Thèn Xin, Tả Lèng, Hồ Thầu, Giang Ma, Bình Lư, Sơn Bình, Nà Tăm, Bản Bo, Khun Há và thị trấn Tam Đường.Vị trí Tam Đường:Phía Đông giáp tỉnh Lào Cai; Tây và Nam giáp huyện Sìn Hồ; Bắc giáp huyện Phong Thổ.\n\n2. BẠN NÊN ĐẾN TAM ĐƯỜNG VÀO THỜI GIAN NÀO?\n\nNhư chúng tôi đã giới thiệu ở bài Lai Châu – Vẻ đẹp tiềm ẩn (P1), vì mang đặc trưng của khí hậu Tây Bắc nên thời gian thích hợp đến Tam Đường nói riêng và Lai Châu nói chung cũng tương tự như khoảng thời gian thích hợp để đến Tây Bắc.\n\n3. ĐẾN TAM ĐƯỜNG BẠN CẦN CHUẨN BỊ NHỮNG GÌ?\n\nĐến Tam Đường, chủ yếu bạn khám phá cảnh núi rừng và các bản làng mang đậm tính dân tộc, vì thế bạn cần phải chuẩn bị đầy đủ những dụng cụ thiết yếu khi đi phượt để đảm bảo sức khỏe cho một chuyến phượt ý nghĩa.\n\n2. BẠN NÊN ĐẾN TAM ĐƯỜNG VÀO THỜI GIAN NÀO?\n\nNhư chúng tôi đã giới thiệu ở bài Lai Châu – Vẻ đẹp tiềm ẩn (P1), vì mang đặc trưng của khí hậu Tây Bắc nên thời gian thích hợp đến Tam Đường nói riêng và Lai Châu nói chung cũng tương tự như khoảng thời gian thích hợp để đến Tây Bắc.\n\n3. ĐẾN TAM ĐƯỜNG BẠN CẦN CHUẨN BỊ NHỮNG GÌ?\n\nĐến Tam Đường, chủ yếu bạn khám phá cảnh núi rừng và các bản làng mang đậm tính dân tộc, vì thế bạn cần phải chuẩn bị đầy đủ những dụng cụ thiết yếu khi đi phượt để đảm bảo sức khỏe cho một chuyến phượt ý nghĩa.',1500000,1,3),(49,'Du lịch thác tác tình','Thác Tác Tình còn có tên gọi khác là thác Tắc Tình hay theo cách gọi thân thương của người dân nơi đây là thác Tình, nằm rên địa phận Xã Bình Lư, Huyện Tam Đường, Lai Châu. Đây là một trong những thắng cảnh hấp dẫn của tỉnh Lai Châu, thu hút được nhiều du khách thích khám phá vẻ đẹp của thiên nhiên.Thác Tác Tình nằm giữa một vùng núi non trùng điệp, nhìn từ xa thác giống như một dải lụa mềm mại đang thả mình trong không gian bao la của núi rừng hùng vĩ. Không biết từ khi nào cuộc sống của người Dao và cư dân địa phương đã gắn bó chặt chẽ với thác, nguồn nước trong mát vẫn không ngừng chảy theo năm tháng của thác chính là mạch sống cho quá trình sản xuất nông nghiệp và sinh hoạt của bà con nơi đây.Thác Tác Tình đẹp là vậy nhưng ít ai biết được đằng sau vẻ đẹp mê hồn ấy là một câu chuyện tình buồn. Truyện kể lại rằng: Xưa kia, từ lâu lắm rồi không ai còn nhớ vào thời gian nào, tại một bản người dân tộc Dao dưới chân thác có một nàng Lở Lan xinh đẹp, vẻ đẹp của nàng được ví như những đóa Lan rừng. Nàng đem lòng yêu một chàng trai trong bản, cả hai thương nhau và quấn quýt như con hươu, con nai trên rừng bên nhau sớm tối. Nhưng hạnh phúc không được bao lâu thì tai hoạ đã ập xuống đầu hai người, tình yêu của họ đã gặp nhiều trắc trở, chông gai vì bị kẻ gian âm mưu hãm hại, chia cách để không thể nên duyên chồng vợ. Để giữ trọn tình yêu thủy chung của mình và lời thề ước giữa hai người, nàng Lở Lan đã trầm mình xuồng dòng thác. Cảm phục trước hành động của cô gái trẻ, người dân nơi đây đã đặt tên Tác Tình cho ngọn thác để tưởng nhớ đến cô cùng với mong ước tác hợp cho chuyện tình của hai người.',1300000,1,3),(50,'Du lịch Động tiên sơn','Động Tiên Sơn\nĐộng Tiên Sơn nằm trên địa bàn huyện Tam Đường, tỉnh Lai Châu với 36 cung động kỳ ảo, nằm trong truyền thuyết về 99 ngọn núi và 99 hồ nước của đồng bào Lự (Tây Bắc) là biểu tượng cho vẻ đẹp tự nhiên của rừng núi nơi đây.Lai Châu có phong cảnh thiên nhiên hữu tình, giàu tiềm năng du lịch. Nơi đây còn có những bản làng dân tộc với nhiều phong tục tập quán vẫn nguyên sơ như bản Sìn Hồ. Các thắng cảnh của tỉnh là suối Mường Lai, hang Tiên Sơn. Nằm kề đường 4D — con đường nối liền Thị xã Lào Cai, Sa Pa, Thị xã Lai Châu với Điện Biên Phủ. Khu vực động có cảnh đẹp hùng vĩ của dãy Hoàng Liên Sơn, với đỉnh Phan Xi Păng nổi tiếng quanh năm ẩn hiện trong mây trắng, hợp cảnh cùng dòng Nậm Giê uốn lượn quanh co luẩn khuất trong những dãy núi.Động thuộc địa phận xã Bình Lư, huyện Tam Đường cách Sa Pa 50 Km. Động có tên xưa gọi là động Đán Đón, hiểu theo nghĩa phổ thông là động Đá Trắng, ngày nay người ta thường gọi là động Tiên Sơn hoặc động Bình Lư. Động gồm 49 khoang (49 cung) nối tiếp nhau chạy dài thông qua hai sườn núi, càng vào sâu các cung càng lớn.Động Tiên Sơn gắn liền với truyền thuyết về 99 ngọn núi và 99 hồ nước trong xanh phẳng lặng của đồng bào Lự nơi đây. Truyền thuyết kể rằng, 99 ngọn núi chính là biểu tượng cho 99 chàng trai khỏe mạnh, cường tráng còn 99 hồ nước trong xanh chính là hình ảnh của 99 người con gái cần cù, xinh đẹp. Những ngọn núi và hồ nước nối tiếp nhau tạo nên bức tường thành ôm giữ một vùng đất đai trù phú, phì nhiêu.',1900000,1,3),(51,'Khám phá Cồn Quy - Bến Tre','Nằm dọc theo con sông Tiền và cách trung tâm thành phố Bến Tre 23km là Cồn Quy. Đây là một trong những điểm đến nổi tiếng nhất khi nhắc đến Bến Tre bởi không gian sông nước hữu tình và những làn điệu đờn ca tài tử Nam Bộ ngọt ngào. Đến với Cồn Quy, bạn được sống trong một không gian yên bình, chưa hề xuất hiện dấu tích đô thị hóa, khí hậu vô cùng ôn hòa.Ngoài ra, du khách cũng được thưởng thức trái cây cực ngon ngay tại những khu vườn nhãn, vườn cam, vườn bưởi,… được uống tách trà mật ong khói bốc lên nhẹ nhàng và thưởng thức giai điệu đờn ca tài tử đã được UNESCO công nhận là Di sản văn hóa Phi vật thể của nhân loại.Ngồi trên những chiếc thuyền lênh đênh sông nước ngắm nhìn cây cối trù phú, xanh tươi và yên bình ở miền Tây là một trong những trải nghiệm mà có lẽ ai cũng muốn thử một lần trong đời. Cồn Quy chắc chắn là một trong những dấu ấn mạnh mẽ nhất còn đọng lại trong tâm trí bạn sau khi rời Bến Tre.Đến Cồn Quy, du khách sẽ tận hưởng một không gian sông nước hữu tình, thơ mộng và ấm áp. Du thuyền trên sông, đến các điểm du lịch trên cồn như: Hồng Vân, Cồn Quy, Tân Cồn Quy,… thưởng thức trái cây tại vườn, uống tách trà mật ong thơm lừng và thưởng thức đờn ca tài tử Nam Bộ, một loại hình nghệ thuật dân gian đã được UNESCO vinh danh là di sản văn hóa phi vật thể đại diện của nhân loại.\n\nMuốn đến cồn Quy, du khách phải thuê tàu du lịch xuôi theo dòng sông Tiền khoảng 30 phút là đến. Cồn Quy quyến rũ du khách bởi vẻ đẹp nguyên sơ vùng sông nước Nam Bộ, nơi mà chưa có một dấu tích nào của cuộc sống thành thị, thiên nhiên trong lành, khí hậu ôn hòa và mát mẻ. Đến cồn Quy, du khách sẽ bắt gặp hình ảnh bạt ngàn những vườn nhãn, rồi có những vườn cam, vườn bưởi, vườn sa-pô-chê,… Sau những cơn mưa đầu mùa, cồn Quy lại càng đẹp hơn, cây cối xanh tốt hơn. Người ta cảm nhận được sự dịu mát và sức sống mãnh liệt trên cồn.',2000000,1,53),(52,'Du lịch Cồn Phụng','Được bình chọn là khu du lịch tiêu biểu ở Đồng bằng sông Cửu Long, Cồn Phụng được thiết kế theo lối kiến trúc mở và hòa mình vào thiên nhiên. Cồn Phụng được ví như một ốc đảo xanh nổi trên Sông Tiền mà đến đây bạn sẽ được khám phá cuộc sống miệt vườn dân dã của người dân nơi đây.Ngoài ra, bạn cũng có thể trải nghiệm thú vui câu cá, be mương bắt cá, chèo thuyền, tắm sông, đi xe ngựa, tham quan những miệt vườn trái cây và chiêm ngưỡng sức hút dân dã của miền đất Tứ Linh. Bên cạnh đó, Cồn Phụng còn sở hữu khu di tích Đạo Dừa rộng khoảng 1.500 m² cũng là địa điểm được nhiều du khách đến tham quan.Ban đầu, người dân chủ yếu đầu tư xây dựng điểm đón khách chỉ là những ngôi nhà sàn nhỏ bằng tre lá đơn sơ, quy mô nhỏ nên số lượng khách còn ít, khoảng vài chục khách nước ngoài trong ngày. Sau khi cầu Rạch Miễu được thông thương, phá thế ốc đảo của Bến Tre thì số lượng khách du lịch đến với Bến Tre nhiều hơn.\n\nNgười dân thấy được tiềm năng để phát triển du lịch nên đầu tư cơ bản hơn, xây dựng nhà hàng thủy tạ ven sông với sức chứa hàng trăm khách mỗi ngày, chất lượng dịch vụ không ngừng được nâng cao, phong cách phục vụ chuyên nghiệp hơn, giá cả cũng phù hợp không xảy ra trình trạng chặt chém du khách.\n\n\n \nDu khách quốc tế thích khám phá cồn Quy, vì nơi đây có nhiều điều hấp dẫn, trải nghiệm cuộc sống nông thôn yên bình, không ồn ào như ở thành thị, có sông nước, vườn trái cây và người dân thì chất phác, thật thà.\n\nĐến Cồn Quy, du khách sẽ tận hưởng một không gian sông nước hữu tình, thơ mộng và ấm áp. Du thuyền trên sông, đến các điểm du lịch trên cồn như: Hồng Vân, Cồn Quy, Tân Cồn Quy,… thưởng thức trái cây tại vườn, uống tách trà mật ong thơm lừng và thưởng thức đờn ca tài tử Nam Bộ, một loại hình nghệ thuật dân gian đã được UNESCO vinh danh là di sản văn hóa phi vật thể đại diện của nhân loại.\n\nMuốn đến cồn Quy, du khách phải thuê tàu du lịch xuôi theo dòng sông Tiền khoảng 30 phút là đến. Cồn Quy quyến rũ du khách bởi vẻ đẹp nguyên sơ vùng sông nước Nam Bộ, nơi mà chưa có một dấu tích nào của cuộc sống thành thị, thiên nhiên trong lành, khí hậu ôn hòa và mát mẻ. Đến cồn Quy, du khách sẽ bắt gặp hình ảnh bạt ngàn những vườn nhãn, rồi có những vườn cam, vườn bưởi, vườn sa-pô-chê,… Sau những cơn mưa đầu mùa, cồn Quy lại càng đẹp hơn, cây cối xanh tốt hơn. Người ta cảm nhận được sự dịu mát và sức sống mãnh liệt trên cồn.',1500000,1,53),(53,'Làng hoa cảnh chợ Lách','Làng hoa cảnh chợ Lách là nơi tập hợp rất nhiều chậu hoa cảnh, cây bonsai đẹp, được tạo dáng tỉ mỉ và chăm sóc kĩ càng. Vào những dịp Tết đến, nơi đây thu hút đông đảo du khách thập phương tập trung về, vừa là để chiễm ngưỡng vẻ đẹp rực rỡ của làng hoa, vừa là để chọn cho nhà mình những chậu hoa xinh tươi, rực rỡ nhất về bày trong nhà vào dịp xuân sang.Nơi đây có nhiều nghệ nhân nổi tiếng trong việc tạo hình, uốn cây cảnh. Chứng kiến những chậu cây hoa cảnh đã được tỉa tót và tạo hình cẩn thận, bạn sẽ thấy bất ngờ với tay nghề điêu luyện của những người nghệ dân nơi đây.Bình thường trong năm người dân ở đây họ sẽ trồng cây giống, cây kiểng. Nhưng mỗi dịp đến đến xuân về thì người dân làng Cái Mơn sẽ ươm các loại hoa để phục vụ hoa dịp tết cho các nơi.',1000000,1,53),(54,'Vườn Trái Cây cái mơn','Vườn Cái Mơn là một làng quê đậm hơi thở Nam Bộ với những con đường bao phủ bởi những rặng cây xanh trĩu quả ngọt. Cái tên Cái Mơn có nguồn gốc khá thú vị, từ Cái có nghĩa là con rạch lớn, Mơn là từ nói chệch đi của Mum, nghĩa là mật ong trong tiếng Khmer. Sở dĩ có cái tên như vậy bởi khu vực này từ xưa đến nay đều là vùng đất trồng được rất nhiều trái cây quả ngọt, thu hút lớn lượng ong mật đến.Bạn sẽ có những trải nghiệm khó quên khi đến với Cái Mơn, được thỏa sức ăn trái cây tươi trong những khu vườn, danh sách các loại quả được trồng ở đây sẽ cuốn hút vị giác bạn ngay lập tức như quýt, chôm chôm, cam, sầu riêng, bưởi, roi…Rời khỏi vườn cây Cái Mơn, vị ngọt tươi của những loại quả vẫn như còn đọng lại trên đầu lưỡi, bạn sẽ nhớ mãi dù đã rời Bến Tre một thời gian dài.Cái Mơn được xem là xứ sở của “cây lành trái ngọt” nổi tiếng của huyện Chợ Lách, Bến Tre. Mỗi năm vào ngày 5/5 âm lịch – Tết Đoan Ngọ, tại đây thưởng tổ chức các hoạt động lễ hội trái cây thu hút đông đảo du khách trong và ngoài tỉnh tới tham quan.Đến với miệt vườn Cái Mơn, du khách sẽ bị hấp dẫn và lôi cuốn ngay từ những cát nhìn đầu tiên từ lúc bước chân vào vườn. Những chùm trái cây chín đỏ xum xuê, oằn cả cành dường như muốn “lấn chiếm” cả không gian của những chiếc lá. Thật không sai khi nói đây là vựa trái cây lớn nhất của tỉnh Bến Tre nói riêng và miền Tây Nam Bộ nói chung.',500000,1,53),(55,'Du lịch Mũi Cà mau','Mũi Cà Mau thuộc địa phận huyện Ngọc Hiển, cách thành phố Cà Mau khoảng 100 cây số. Đây là nơi duy nhất trên đất liền ở Việt Nam có thể thấy được mặt trời mọc ở biển Đông và lặn ở biển Tây. Mũi Cà Mau là điểm du lịch nổi tiếng hất của Cà Mau thu hút đông đảo du khách tìm đến. - Mùa mưa Cà Mau bắt đầu từ khoảng tháng 5 - tháng 11, lúc này giao thông đi lại khá trắc trở bởi lượng nước sông dâng cao và tốc độ dòng chảy lớn. Tuy nhiên mùa này vẫn có cơ số du khách lựa chọn đến, để trải nghiệm cuộc sống Cà Mau mùa nước nổi và thưởng thức vô vàn đặc sản địa phương. \n\n- Mùa khô Cà Mau bắt đầu từ tháng 12 - tháng 4 năm sau, khoảng thời gian này nắng nóng có thể lên tới 38 độ, không khí vừa khô hanh mà kênh nương, ruộng đồng cũng khô hạn và nứt nẻ. Dù thế nhưng thời điểm này vẫn thu hút khách du lịch ghé thăm, bởi các hoạt động sinh hoạt dân dã độc báo của dân địa phương: tát dìa bắt cá, ăn ong, bắt chuột... và thưởng thức cả những món ăn đặc sản nức tiếng. \n\nThế nên mới nói du khách có thể đến Đất Mũi - Cà Mau bất cứ thời điểm nào trong năm, tùy theo hoạt động trải nghiệm mà bạn muốn tham gia là gì thôi.',1000000,1,54),(56,'Du lịch hòn khoai','Hòn Khoai là một trong những hòn đảo đẹp nhất ở Cà Mau. Hòn Khoai là đảo lớn nhất, xung quanh có 5 đảo nhỏ xinh xắn. Du khách đến với Hòn Khoai sẽ bị lôi cuốn bởi vẻ đẹp nên thơ, hoang dã với những viên đá cuội tròn giống như trứng ngỗng, cùng thảm rừng nguyên sinh có hệ động, thực vật phong phú. Hiện nay, trên đỉnh cao nhất của Hòn Khoai vẫn còn một cây hải đăng do người Pháp xây dựng từ cuối thế kỷ 19. Từ trên ngọn hải đăng, du khách có thể nhìn được cảnh đẹp của 5 hòn đảo vệ tinh xung quanh qua kính viễn vọng khi được các chiến sĩ biên phòng cho phép. Tham quan Hòn Khoai, tàu chở các du khách sẽ ghé Bãi Nhỏ, từ đó đi thuyền con vào bờ khoảng 50m. Điểm đặc biệt nhất của đảo này là những bãi đá trứng rất đẹp mắt, mẹ thiên nhiên còn ưu ái nơi đây rợp bóng cây phong ba, phi lao vi vu theo gió rợp mát. Vì đảo ít cư dân sinh sống nên chỉ có vài ba quán tạp hóa nhỏ, chủ yếu là các lính biên phòng canh giữ biển đảo. Chính vì điều đó mà Hòn Khoai vẫn giữ được nét đẹp hoang sơ vốn có của một điểm du lịch biển. Công trình nổi bật nhất có lẽ là ngọn hải đăng 100 năm tuổi - nơi bạn không thể bỏ qua khi đến Hòn Khoai. Ngọn tháp này nằm trên đỉnh cao nhất của Hòn Khoai, được thực dân Pháp xây dựng vào 1920 , đây được xem là một trong những công trình đèn biển có mặt sớm nhất của hải phận Việt Nam.  Theo cầu thang xoắn ốc lên ngọn hải đăng, không gian mở ra xanh biếc, mây trời lộng gió khơi xa... Trên đây còn có kính viễn vọng, cho bạn ngắm nhìn các hòn đảo vây quanh, hay hướng về mũi Cà Mau để một lần được chiêm ngưỡng từ xa mũi đất thiêng liêng của tận cùng Tổ quốc, mà không dễ gì thấy được nếu không ra đến đảo Hòn Khoai.',1200000,1,54),(57,'Du Lịch Chợ Nổi Cà Mau','Chợ nổi Cà Mau hoạt động tấp nập nhất là vào lúc 2 - 3 giờ sáng, một chuyến tham quan chợ nổi vào lúc 4 giờ sáng khi trời còn tờ mờ nắng chưa lên cũng là một trải nghiệm thú vị bạn nên thử đấy. Hãy đi và cảm nhận không chợ nổi tấp nập người buôn kẻ bán, góp phần tạo điều kiện cho cuộc sống ở nông thôn và thành thị ngày một xích lại gần nhau hơn. Tại đây bạn có thể thưởng thức nhiều loại trái cây, có thể mua về những loại trái cây yêu thích hay mua về làm quà. Bạn có thể nhờ người gọt ngay tại chỗ và thưởng thức luôn trái cây bạn đã mua. Bên cạnh đó, chợ nổi làm điểm thu hút rất nhiều khách đến ăn vặt, ăn hàng ngay trong thành phố.\n\nGiống như các ngôi chợ nổi khác, chợ nổi Cà Mau bán đủ các loại mặt hàng từ thực phẩm, nhu yếu phẩm, trái cây cho đến mua bán sỉ các loại nông sản tươi và rau trái miệt vườn cho thương lái. Nếu có dịp bạn đừng bỏ lỡ một lần đến với ngôi chợ đặc biệt trên sông Gành Hào này. Nắng, gió, sông nước và sự bình dị, chân thành của người dân nơi đây, hòa quyện vào sắc mắc của những sản vật đậm chất miệt vườn sông nước, chắc chắn sẽ để lại trong bạn dấu ấn khó phai. Bạn cũng có thể ghé qua đây vào buổi chiều tối, khi ấy chợ nổi đã lắng lại, sự im lặng lãng mạn, chỉ nghe tiếng gió và tiếng nước khe khẽ vỗ vào mạn thuyền. Những chiếc ghe khi sáng còn tấp nập buôn bán giờ đã trở thành những căn nhà nổi bồng bềnh vương vấn khói cơm chiều. Một vài đứa trẻ ngồi vắt vẻ câu cá trên sông, bức tranh đặc trưng cho sông nước Cà Mau cũng từ đó mà hiện lên một các rõ nét nhất.',1200000,1,54),(58,'Du lịch Rừng Quốc Gia U Minh Hạ','Có hai mùa để bạn đến rừng quốc gia U Minh Hạ đó là mùa mưa hoặc mùa khô (mùa mưa là từ tháng 11-4, mùa khô từ tháng 5 – tháng 10). Mùa mưa ở rừng U Minh Hạ cũng là lúc nước dâng cao, bạn có thể dễ dàng di chuyển bằng thuyền qua rừng ngập mặn này. Mùa khô đi du lịch rừng U Minh Hạ thì thời tiết thuận lợi hơn do trời nắng, không mưa nên đi lại cũng dễ dàng. Do vậy với mỗi một kiểu thời tiết thì bạn sẽ có những trải nghiệm du lịch U Minh Hạ khác nhau. Nhưng theo kinh nghiệm du lịch U Minh Hạ thì bạn nên tới đây vào mùa khô nhé.\nCó hai cách để đi du lịch rừng U Minh Hạ từ Sài Gòn đó là xe máy và xe khách, mình sẽ liệt kê chi tiết hai con đường này cho mọi người dưới đây:\n\n – Hướng dẫn đi xe máy tới U Minh Hạ : Các bạn đi theo QL1A – qua cầu Cà Mau – Ngô Quyền – Võ Văn Kiệt – theo biển chỉ dẫn tới rừng U Minh Hạ (nếu không biết thì bạn hỏi người dân)\nĐi thuyền tham quan rừng đước: Nhóm mình đi vào đầu tháng 10, may mắn là dịch vụ tham quan vườn quốc gia bằng thuyền vẫn hoạt động nên mới có được trải nghiệm du lịch thực thụ. Mình nghe nói có rất nhiều nhóm đi du lịch rừng U Minh Hạ vào đúng mùa nước lên hoặc trời hanh khô quá nên hình thức du lịch này không hoạt động. Nếu muốn chắc mọi người nên gọi điện hỏi trước khi đi nhé.\nTham quan rừng: Rừng U minh Hạ không có gì đặc sắc cho lắm, vào đây thì toàn là cây thôi các bạn ạ. Nói chung đi thuyền tham quan rừng U Minh Hạ một vòng thì coi như hết rồi, tham quan xong đi ăn món cá lóc nướng trui với lẩu rau rừng rồi về.',2000000,1,54);
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

-- Dump completed on 2019-04-16 22:15:24
