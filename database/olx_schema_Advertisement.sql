-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: olx_schema
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Advertisement`
--

DROP TABLE IF EXISTS `Advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Advertisement` (
  `advt_id` int(100) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `date_of_init` varchar(255) DEFAULT NULL,
  `date_of_exp` varchar(255) DEFAULT NULL,
  `owner_id` varchar(255) DEFAULT NULL,
  `buyer_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`advt_id`),
  KEY `owner_id` (`owner_id`),
  KEY `buyer_id` (`buyer_id`),
  CONSTRAINT `Advertisement_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `Users` (`Nitc_email_id`),
  CONSTRAINT `Advertisement_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `Users` (`Nitc_email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Advertisement`
--

LOCK TABLES `Advertisement` WRITE;
/*!40000 ALTER TABLE `Advertisement` DISABLE KEYS */;
INSERT INTO `Advertisement` VALUES (8,'HP Pavilion','Laptop','2018-10-03','2018-10-13','praj12121998@gmail.com',NULL),(9,'Redmi Note 3','Mobile','2018-10-03','2018-10-13','praj12121998@gmail.com',NULL),(12,'Mocking Bird','Book','2018-10-03','2018-10-13','praj12121998@gmail.com',NULL);
/*!40000 ALTER TABLE `Advertisement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-03  7:29:55
