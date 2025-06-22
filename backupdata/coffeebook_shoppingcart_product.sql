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
-- Table structure for table `shoppingcart_product`
--

DROP TABLE IF EXISTS `shoppingcart_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppingcart_product` (
  `ProductId` int(11) NOT NULL,
  `ShoppingCartId` int(11) NOT NULL,
  `TilteSize` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Small',
  `Count` int(11) NOT NULL DEFAULT '0',
  `CreatedDate` datetime NOT NULL DEFAULT '2021-12-30 18:45:13',
  PRIMARY KEY (`ShoppingCartId`,`ProductId`),
  KEY `IX_ShoppingCart_Product_ProductId` (`ProductId`),
  CONSTRAINT `FK_ShoppingCart_Product_Product_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ShoppingCart_Product_ShoppingCart_ShoppingCartId` FOREIGN KEY (`ShoppingCartId`) REFERENCES `shoppingcart` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart_product`
--

LOCK TABLES `shoppingcart_product` WRITE;
/*!40000 ALTER TABLE `shoppingcart_product` DISABLE KEYS */;
INSERT INTO `shoppingcart_product` VALUES (1,1,NULL,0,'0001-01-01 00:00:00'),(2,1,NULL,0,'0001-01-01 00:00:00'),(1,2,NULL,0,'0001-01-01 00:00:00'),(3,2,NULL,0,'0001-01-01 00:00:00'),(2,3,NULL,0,'0001-01-01 00:00:00'),(3,3,NULL,0,'0001-01-01 00:00:00'),(1,4,NULL,0,'0001-01-01 00:00:00'),(4,4,NULL,0,'0001-01-01 00:00:00'),(2,5,NULL,1,'2025-06-02 12:30:24'),(3,5,NULL,1,'2025-06-02 12:30:24'),(2,6,NULL,1,'2025-06-02 12:30:29'),(3,6,NULL,1,'2025-06-02 12:30:29'),(2,7,NULL,1,'2025-06-02 12:30:33'),(3,7,NULL,1,'2025-06-02 12:30:33'),(2,8,NULL,1,'2025-06-02 12:31:08'),(3,8,NULL,1,'2025-06-02 12:31:08'),(2,9,NULL,2,'2025-06-02 12:31:26'),(3,9,NULL,2,'2025-06-02 12:31:26'),(2,10,NULL,2,'2025-06-02 12:31:33'),(3,10,NULL,2,'2025-06-02 12:31:33'),(2,11,NULL,2,'2025-06-02 12:31:36'),(3,11,NULL,2,'2025-06-02 12:31:36'),(2,12,NULL,2,'2025-06-02 12:31:38'),(3,12,NULL,2,'2025-06-02 12:31:38'),(2,13,NULL,2,'2025-06-02 12:39:59'),(3,13,NULL,2,'2025-06-02 12:39:59'),(2,14,NULL,1,'2025-06-04 09:19:50'),(3,14,NULL,1,'2025-06-04 09:19:50'),(2,15,NULL,1,'2025-06-04 09:45:13'),(3,15,NULL,1,'2025-06-04 09:45:13'),(3,16,NULL,1,'2025-06-04 09:47:07'),(4,16,NULL,1,'2025-06-04 09:47:07'),(3,17,NULL,1,'2025-06-04 09:50:47'),(4,17,NULL,1,'2025-06-04 09:50:47');
/*!40000 ALTER TABLE `shoppingcart_product` ENABLE KEYS */;
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
