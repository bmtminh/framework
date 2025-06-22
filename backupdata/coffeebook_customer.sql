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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Avata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `City` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gender` int(11) DEFAULT NULL,
  `Role` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_Customer_Email` (`Email`),
  UNIQUE KEY `IX_Customer_Phone` (`Phone`),
  UNIQUE KEY `IX_Customer_Username` (`Username`),
  UNIQUE KEY `IX_Customer_Username_Email_Phone` (`Username`,`Email`,`Phone`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'khachhang1','$2a$11$GYyUntsBHT2GOqMAIUiJL.Zka6JOWYXpkHG06ByF.kImpUPh19rW2','minhbmt26072004@gmail.com','0898784168','Trần Bình Minh','','KTX khu A','Hồ Chí Minh','Việt Nam',1,'Customer'),(2,'khachhang2','$2a$11$GYyUntsBHT2GOqMAIUiJL.Zka6JOWYXpkHG06ByF.kImpUPh19rW2','khachhang2@gmail.com','0898784169','Phạm Quốc Khánh','','KTX khu A','Hồ Chí Minh','Việt Nam',1,'Customer'),(3,'khachhang3','$2a$11$GYyUntsBHT2GOqMAIUiJL.Zka6JOWYXpkHG06ByF.kImpUPh19rW2','khachhang3@gmail.com','0898784167','Nguyễn Trương Đình Giang','','KTX khu A','Hồ Chí Minh','Việt Nam',1,'Customer'),(4,'khachhang4','$2a$11$GYyUntsBHT2GOqMAIUiJL.Zka6JOWYXpkHG06ByF.kImpUPh19rW2','khachhang4@gmail.com','0898784166','Phạm Văn Quang Huy','','KTX khu A','Hồ Chí Minh','Việt Nam',1,'Customer'),(5,'test','$2a$11$8eVoFwm2ISUDIJ0UYY5z1eqhhcRkRdJ.3qrpEEJq5dVa86ynIfSMO','test@gmail.com','123456778','khachhangtest',NULL,NULL,NULL,NULL,NULL,'Customer');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
