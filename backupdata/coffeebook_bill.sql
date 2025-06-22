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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) DEFAULT NULL,
  `Validated` int(11) NOT NULL DEFAULT '0',
  `Status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Wait Transaction',
  `TotalPrice` bigint(20) NOT NULL,
  `Address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '15-20 mins',
  `PayBy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CreatedDate` datetime NOT NULL DEFAULT '2021-12-30 18:45:13',
  PRIMARY KEY (`Id`),
  KEY `IX_Bill_CustomerId` (`CustomerId`),
  CONSTRAINT `FK_Bill_Customer_CustomerId` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,1,1,'Đã Thanh Toán',10000000,'KTX  khu A','Trần Bình Minh','0942400722','15-20 phút','Tiền mặt','Để đá riêng','2025-05-19 00:00:00'),(2,1,1,'Đã Thanh Toán',12000000,'KTX  khu A','Trần Bình Minh','0942400722','15-20 phút','Tiền mặt','Để đá riêng','2025-05-21 00:00:00'),(3,1,1,'Đã Thanh Toán',5000000,'KTX  khu A','Trần Bình Minh','0942400722','15-20 phút','Tiền mặt','Để đá riêng','2025-05-21 00:00:00'),(4,1,1,'Đã Thanh Toán',8000000,'KTX  khu A','Trần Bình Minh','0942400722','15-20 phút','Tiền mặt','Để đá riêng','2025-05-22 00:00:00'),(5,1,1,'Đã Thanh Toán',8000000,'KTX  khu A','Trần Bình Minh','0942400722','15-20 phút','Tiền mặt','Để đá riêng','2025-05-23 00:00:00'),(6,1,1,'Đã Thanh Toán',8000000,'KTX  khu A','Trần Bình Minh','0942400722','15-20 phút','Tiền mặt','Để đá riêng','2025-05-24 00:00:00'),(7,1,1,'Đã Thanh Toán',9000000,'KTX  khu A','Trần Bình Minh','0942400722','15-20 phút','Tiền mặt','Để đá riêng','2025-05-26 00:00:00'),(8,1,1,'Đã Thanh Toán',13000000,'KTX  khu A','Trần Bình Minh','0942400722','15-20 phút','Tiền mặt','Để đá riêng','2025-06-27 00:00:00'),(9,1,1,'Đã Thanh Toán',15000000,'KTX  khu A','Trần Bình Minh','0942400722','15-20 phút','Tiền mặt','Để đá riêng','2025-05-28 00:00:00'),(10,1,1,'Đã Thanh Toán',17000000,'KTX  khu A','Trần Bình Minh','0942400722','15-20 phút','Tiền mặt','Để đá riêng','2025-05-29 00:00:00'),(11,1,1,'Đã Thanh Toán',16000000,'KTX  khu A','Trần Bình Minh','0942400722','15-20 phút','Tiền mặt','Để đá riêng','2025-05-30 00:00:00'),(13,1,1,'Đã thanh toán',134000,'KTX khu A','Trần Bình Minh','0898784168','15-20 phút','tienmat','Không','2025-06-02 12:30:29'),(14,1,1,'Đã thanh toán',134000,'KTX khu A','Trần Bình Minh','0898784168','15-20 phút','tienmat','Không','2025-06-02 12:30:33'),(15,1,1,'Đã thanh toán',134000,'157 Nguyễn Gia Trí, Phường 25, Bình Thạnh, Thành phố Hồ Chí Minh, Vietnam','Trần Bình Minh','0898784168','15-20 phút','tienmat','Không','2025-06-02 12:31:08'),(16,1,1,'Đã thanh toán',268000,'157 Nguyễn Gia Trí, Phường 25, Bình Thạnh, Thành phố Hồ Chí Minh, Vietnam','Trần Bình Minh','0898784168','15-20 phút','tienmat','Không','2025-06-02 12:31:26'),(17,1,1,'Đã thanh toán',268000,'157 Nguyễn Gia Trí, Phường 25, Bình Thạnh, Thành phố Hồ Chí Minh, Vietnam','Trần Bình Minh','0898784168','15-20 phút','momo','Không','2025-06-02 12:31:33'),(18,1,1,'Đã thanh toán',268000,'157 Nguyễn Gia Trí, Phường 25, Bình Thạnh, Thành phố Hồ Chí Minh, Vietnam','Trần Bình Minh','0898784168','15-20 phút','zalopay','Không','2025-06-02 12:31:36'),(19,1,1,'Đã thanh toán',268000,'157 Nguyễn Gia Trí, Phường 25, Bình Thạnh, Thành phố Hồ Chí Minh, Vietnam','Trần Bình Minh','0898784168','15-20 phút','shopeepay','Không','2025-06-02 12:31:38'),(20,1,1,'Đã thanh toán',268000,'KTX khu A','Trần Bình Minh','0898784168','15-20 phút','tienmat','Không','2025-06-02 12:39:59'),(21,1,1,'Đã thanh toán',134000,'KTX khu A','Trần Bình Minh','0898784168','15-20 phút','tienmat','Không','2025-06-04 09:19:50'),(22,1,1,'Đã thanh toán',139000,'190 Phan Văn Trị, Phường 11, Bình Thạnh, Thành phố Hồ Chí Minh, Vietnam','Trần Bình Minh','0898784168','15-20 phút','tienmat','Không','2025-06-04 09:45:13'),(23,1,0,'Nhận đơn',170000,'195/10 Điện Biên Phủ, Phường 15, Quận Bình Thạnh, Tp.HCM','Trần Bình Minh','0898784168','15-20 phút','tienmat','Không','2025-06-04 09:47:07'),(24,1,0,'Nhận đơn',160000,'195/10 Điện Biên Phủ, Phường 15, Quận Bình Thạnh, Tp.HCM','Trần Bình Minh','0898784168','15-20 phút','tienmat','Không','2025-06-04 09:50:47');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
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
