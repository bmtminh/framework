-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: coffeebook
-- ------------------------------------------------------
-- Server version	5.7.44-log

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
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StoreName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `LinkGG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `District` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ManagerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_Store_Address` (`Address`),
  UNIQUE KEY `IX_Store_Phone` (`Phone`),
  UNIQUE KEY `IX_Store_ManagerId` (`ManagerId`),
  CONSTRAINT `FK_Store_Manager_ManagerId` FOREIGN KEY (`ManagerId`) REFERENCES `manager` (`Id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'HCM Trần Quang Khải','Quán café và sách tọa lạc tại Quận 1 ở Thành phồ Hồ Chí Minh, Việt Nam','180 Trần Quang Khải, Quận 1, Hồ Chí Minh','Việt Nam','00000000001','https://lh5.googleusercontent.com/p/AF1QipNrmu9PP94S52FOmcYEJgRfx-ryY-V96JNSVLhL=w408-h291-k-no','https://goo.gl/maps/ftFGRq9FNoJy6p887','1',1),(2,'HCM Nguyễn Thái Bình','Quán café và sách tọa lạc tại Quận 1 ở Thành phồ Hồ Chí Minh, Việt Nam','141 Nguyễn Thái Bình, Quận 1, Hồ Chí Minh','Việt Nam','00000000002','https://lh5.googleusercontent.com/p/AF1QipPtXSa8-F-grDLfbTWBytLwupn9cuJ5oCTuWd3F=w408-h291-k-no','https://goo.gl/maps/WWzyyXyiUDGP875c8','1',2),(3,'HCM The Hub - Điện Biên Phủ','Quán café và sách tọa lạc tại Quận Bình Thạnh ở Thành phồ Hồ Chí Minh, Việt Nam','195/10 Điện Biên Phủ, Phường 15, Quận Bình Thạnh, Tp.HCM','Việt Nam','00000000003','https://file.hstatic.net/1000075078/file/_dsc7394_756ced0f2a8d4e189d4b3b7f3b15dc68.jpeg','https://goo.gl/maps/anBoZoESsXUPefXT7','Bình Thạnh',3),(4,'HCM Nguyễn Gia Trí (Đường D2)','Quán café và sách tọa lạc tại Quận Bình Thạnh ở Thành phồ Hồ Chí Minh, Việt Nam','157 Nguyễn Gia Trí, Phường 25, Bình Thạnh, Thành phố Hồ Chí Minh, Vietnam','Việt Nam','00000000004','https://diendankinhte.vn/wp-content/uploads/2018/04/coffee.jpg','https://goo.gl/maps/XZ8hhmUKDJYw3BqU6','Bình Thạnh',4),(5,'HCM Nguyễn Xí','Quán café và sách tọa lạc tại Quận Bình Thạnh ở Thành phồ Hồ Chí Minh, Việt Nam','184 Nguyễn Xí, Phường 26, Bình Thạnh, Thành phố Hồ Chí Minh','Việt Nam','00000000005','https://file.hstatic.net/1000075078/file/hcm-nguyen-xi1_b8bb3a5f3381470e90405508724a7a16.jpg','https://goo.gl/maps/s7ZiN5WVHFEU11c46','Bình Thạnh',NULL),(6,'HCM Phan Văn Trị','Quán café và sách tọa lạc tại Quận Bình Thạnh ở Thành phồ Hồ Chí Minh, Việt Nam','190 Phan Văn Trị, Phường 11, Bình Thạnh, Thành phố Hồ Chí Minh, Vietnam','Việt Nam','00000000006','https://file.hstatic.net/1000075078/file/hcm-phan-van-tri-31_dea2c72cc4e24431abceee9b11a67ba2.jpg','https://goo.gl/maps/xcrHU7rT2hxaB3LR9','Bình Thạnh',NULL),(7,'HCM Cao Thắng','Quán café và sách tọa lạc tại Quận 10 ở Thành phố Hồ Chí Minh, Việt Nam','175B Cao Thắng, Phường 12, Quận 10, Hồ Chí Minh','Việt Nam','00000000007','https://file.hstatic.net/1000075078/file/hcm-cao-thang-21_8fba3187121f4a1da8306a144c1d509e.jpg','https://goo.gl/maps/WkzbFYqBoLQ96LPm9','10',NULL),(8,'HCM Sư Vạn Hạnh','Quán café và sách tọa lạc tại Quận 10 ở Thành phố Hồ Chí Minh, Việt Nam','798 Sư Vạn Hạnh, Phường 12, Quận 10, Hồ Chí Minh','Việt Nam','00000000008','https://file.hstatic.net/1000075078/file/hcm-su-van-hanh1_dc98609ed5264bbd941fff58c28e2ea6.jpg','https://goo.gl/maps/dvMsEA3Q1FKyU7Qr6','10',NULL),(9,'HCM Nguyễn Duy Trinh','Quán café và sách tọa lạc tại Quận 2 ở Thành phố Thủ Đức, Việt Nam','670 Nguyễn Duy Trinh, Bình Trưng Đông, Quận 2, Thành phố Thủ Đức','Việt Nam','00000000009','https://file.hstatic.net/1000075078/file/hcm-nguyen-duy-trinh1_dd549b9380cd461989e27b53dd7954c1.jpg','https://goo.gl/maps/vVSMkvj1AneVZeWL7','2',NULL),(10,'HCM Hoàng Diệu','Quán café và sách tọa lạc tại Quận Thư Đức ở Thành phố Thủ Đức, Việt Nam','66E Hoàng Diệu 2, P.Linh Trung, Thủ Đức, Hồ Chí Minh','Việt Nam','00000000010','https://file.hstatic.net/1000075078/file/hcm-hoang-dieu-21_d400dc36e41e4bbabbb442bbe15f9d99.jpg','https://goo.gl/maps/HSi4jDTYMuQ1dZYg6','2',NULL);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-22 15:06:33
