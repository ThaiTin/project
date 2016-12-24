-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `Fullname` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Pass_word` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone_Num` varchar(255) NOT NULL,
  `Role_id` int(11) NOT NULL,
  PRIMARY KEY (`User_id`,`Role_id`),
  KEY `fk_account_role1_idx` (`Role_id`),
  CONSTRAINT `fk_account_role1` FOREIGN KEY (`Role_id`) REFERENCES `role` (`Role_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'Vu Tuan Anh','tuananh_admin','4CWWS0CmZterRLIcs1yFXw==','tuananh05253@gmail.com','01697979713',1),(2,'Nguyen Van A','vana','null','vana@gmail.com','987456321',3),(3,'Tester','test','BOprjoJFYM3BIxYeMPVPMQ==','test@gmail.com','012345567899',3),(4,'Nguyen Van A 1','vana1','PqVqWFJvTgDcS4ak/w+Wzw==','vana@gmail.com','01234567899',3),(5,'Tester 1','test1','4CWWS0CmZterRLIcs1yFXw==','test@gmail.com','012345567899',3),(6,'Phan Thanh Nhan','kuruky','BOprjoJFYM3BIxYeMPVPMQ==','wind_of_the_sky_211093@yahoo.com','01234567899',3),(7,'Nguyen Huu Chi','huuchi','YpSVumPChk9KHxeFJxrEHA==','huuchi.a1.qn@gmail.com','016625251325',2),(8,'Mai Thai Duong','thaiduong','BOprjoJFYM3BIxYeMPVPMQ==','duongmt89@gmail.com','01234567899',2),(9,'Truong Phi Hoc','phihoc','BOprjoJFYM3BIxYeMPVPMQ==','truongphihoc@gmail.com','01234567899',1),(11,'thai trung tin','thaitin','I5p0aPxzIUAUmyDmWu0/KQ==','tin.thai2705@gmail.com','123456',1);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career`
--

DROP TABLE IF EXISTS `career`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `career` (
  `daytime` varchar(45) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`daytime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career`
--

LOCK TABLES `career` WRITE;
/*!40000 ALTER TABLE `career` DISABLE KEYS */;
/*!40000 ALTER TABLE `career` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Apartment'),(2,'Independent House'),(3,'Row House'),(4,'Villa'),(5,'Builder Floor'),(6,'Farm House'),(7,'Penhouse');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `range`
--

DROP TABLE IF EXISTS `range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `range` (
  `id_range` int(11) NOT NULL,
  `high` int(11) NOT NULL,
  `low` int(11) NOT NULL,
  PRIMARY KEY (`id_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `range`
--

LOCK TABLES `range` WRITE;
/*!40000 ALTER TABLE `range` DISABLE KEYS */;
INSERT INTO `range` VALUES (1,1000,0),(2,2000,1001),(3,10000,2001),(4,20000,10001),(5,60000,20001);
/*!40000 ALTER TABLE `range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `real_has_picture`
--

DROP TABLE IF EXISTS `real_has_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `real_has_picture` (
  `id_picture` int(11) NOT NULL AUTO_INCREMENT,
  `id_real` int(11) NOT NULL,
  `url` varchar(45) NOT NULL,
  PRIMARY KEY (`id_picture`,`id_real`),
  KEY `fk_Real_has_picture_realEstate1_idx` (`id_real`),
  CONSTRAINT `fk_Real_has_picture_realEstate1` FOREIGN KEY (`id_real`) REFERENCES `realestate` (`id_real`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `real_has_picture`
--

LOCK TABLES `real_has_picture` WRITE;
/*!40000 ALTER TABLE `real_has_picture` DISABLE KEYS */;
INSERT INTO `real_has_picture` VALUES (1,44457,'.\\Database\\49\\1.jpg'),(1,73005,'.\\Database\\2\\1.jpg'),(1,87376,'.\\Database\\16\\1.jpg'),(1,89569,'.\\Database\\15\\1.jpg'),(1,107021,'.\\Database\\5\\1.jpg'),(1,111011,'.\\Database\\3\\1.jpg'),(1,111025,'./Database\\tuananh_admin\\DSC_0136-810x467.jpg'),(2,44457,'.\\Database\\49\\2.jpg'),(2,73005,'.\\Database\\2\\2.jpg'),(2,87376,'\\Database\\16\\2.jpg'),(2,89569,'.\\Database\\15\\2.jpg'),(2,107021,'.\\Database\\5\\2.jpg'),(2,111011,'.\\Database\\3\\2.jpg'),(2,111025,'./Database\\tuananh_admin\\DSC_0137-810x467.jpg'),(3,44457,'.\\Database\\49\\3.jpg'),(3,73005,'.\\Database\\2\\3.jpg'),(3,87376,'.\\Database\\16\\3.jpg'),(3,89569,'.\\Database\\15\\3.jpg'),(3,107021,'.\\Database\\5\\3.jpg'),(3,111011,'.\\Database\\3\\3.jpg'),(3,111025,'./Database\\tuananh_admin\\DSC_0134-810x467.jpg'),(4,44457,'.\\Database\\49\\4.jpg'),(4,73005,'.\\Database\\2\\4.jpg'),(4,87376,'.\\Database\\16\\4.jpg'),(4,89569,'.\\Database\\15\\4.jpg'),(4,107021,'.\\Database\\5\\4.jpg'),(4,111011,'.\\Database\\3\\4.jpg'),(4,111025,'./Database\\tuananh_admin\\DSC_0133-810x467.jpg'),(5,44457,'.\\Database\\49\\5.jpg'),(5,73005,'.\\Database\\2\\5.jpg'),(5,87376,'.\\Database\\16\\5.jpg'),(5,89569,'.\\Database\\15\\5.jpg'),(5,107021,'.\\Database\\5\\5.jpg'),(5,111011,'.\\Database\\3\\5.jpg'),(5,111025,'./Database\\tuananh_admin\\DSC_0137-810x467.jpg');
/*!40000 ALTER TABLE `real_has_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `real_has_room`
--

DROP TABLE IF EXISTS `real_has_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `real_has_room` (
  `id_real` int(11) NOT NULL,
  `id_room_type` int(11) NOT NULL,
  `number_room` int(11) NOT NULL,
  PRIMARY KEY (`id_real`,`id_room_type`),
  KEY `fk_real_has_room_realEstate1_idx` (`id_real`),
  KEY `fk_real_has_room_room_type1_idx` (`id_room_type`),
  CONSTRAINT `fk_real_has_room_realEstate1` FOREIGN KEY (`id_real`) REFERENCES `realestate` (`id_real`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_real_has_room_room_type1` FOREIGN KEY (`id_room_type`) REFERENCES `room_type` (`id_room_type`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `real_has_room`
--

LOCK TABLES `real_has_room` WRITE;
/*!40000 ALTER TABLE `real_has_room` DISABLE KEYS */;
INSERT INTO `real_has_room` VALUES (44457,1,4),(44457,2,3),(73005,1,3),(73005,2,3),(87376,1,3),(87376,2,3),(89569,1,4),(89569,2,4),(107021,1,3),(107021,2,3),(111011,1,4),(111011,2,3),(111025,1,14),(111025,2,12);
/*!40000 ALTER TABLE `real_has_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realestate`
--

DROP TABLE IF EXISTS `realestate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realestate` (
  `id_real` int(11) NOT NULL AUTO_INCREMENT,
  `street` text NOT NULL,
  `wart` text NOT NULL,
  `district` text NOT NULL,
  `price` int(11) NOT NULL,
  `id_range` int(11) NOT NULL,
  `id_transaction_type` int(11) NOT NULL,
  `id_user` varchar(45) NOT NULL,
  `description` longtext NOT NULL,
  `owner_email` text NOT NULL,
  `phone` int(11) NOT NULL,
  `category` varchar(45) NOT NULL,
  `full_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_real`),
  KEY `fk_realEstate_range_type1_idx` (`id_range`),
  KEY `fk_realEstate_transaction_type1_idx` (`id_transaction_type`),
  CONSTRAINT `fk_realEstate_range_type1` FOREIGN KEY (`id_range`) REFERENCES `range` (`id_range`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_realEstate_transaction_type1` FOREIGN KEY (`id_transaction_type`) REFERENCES `transaction_type` (`id_transaction_type`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=111026 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realestate`
--

LOCK TABLES `realestate` WRITE;
/*!40000 ALTER TABLE `realestate` DISABLE KEYS */;
INSERT INTO `realestate` VALUES (44457,'548 Nguyen Trai','8','5',15000,4,1,'3','This is a bright 4 bedroom house with balcony, terrace, partially furnished</br>\r\nLocated in','21323213',0,'4','tin'),(73005,'48 Vinh Hoi','4','4',52000,1,1,'3','his is a beautiful house in West lake area Hanoi, it is in perfect condition, with many nice characters like the high ceiling, fireplace, large windows, timber floor.','tin.thai2705@gmail.com',0,'5','thai'),(87376,'38 Nguyen Thi Dieu','6','3',600,1,2,'4','This spacious house for rent is on a quiet alley on Nguyen Thi Dieu street, about 10 minutes walking to the West Lake. T','23423432',0,'3','hello'),(89569,'168/4 Truong Van Bang','Thanh My','2',15000,1,1,'6','s is a beautiful house for both sale or rent on Truong Van Bang street, the land area is 140 m2, it has a nice front courtyard. There is a spacious living room and dining room, well equipped kitchen, all the rooms are open and light, 04 bedrooms, 04 bathrooms, nice floor, balconies, terrace. The house comes with nice curtains for all the doors and windows,  wardrobes, cabinets, modern bathrooms and shower.','3423432',0,'5','hello'),(107021,'187 Pham Ngu Lao','Pham Ngu Lao','1',1150,1,2,'3','this three bedroom house for rent is located on a quiet lane of Pham Ngu Lao.','21321321',0,'2','hello'),(111011,'584/3 Nguyen Huu Tho','Tan Hung','7',1700,1,2,'4','Rental lovely 4 bedrooms house in perfect location near West lake','21321',0,'4','123456'),(111024,'1 binh long','binh hung hoa','binh tan',23000,5,1,'1','nha dep','ballack.totti@yahoo.com.vn',12345678,'7','Thai Trung Tin'),(111025,'1 binh long','binh hung hoa','binh tan',23000,5,1,'1','nha dep','ballack.totti@yahoo.com.vn',12345678,'7','Thai Trung Tin');
/*!40000 ALTER TABLE `realestate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `Role_ID` int(11) NOT NULL,
  `Role_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Role_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'staff'),(3,'user');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_type` (
  `id_room_type` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id_room_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,'bedroom'),(2,'bathroom');
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_type`
--

DROP TABLE IF EXISTS `transaction_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_type` (
  `id_transaction_type` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_transaction_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_type`
--

LOCK TABLES `transaction_type` WRITE;
/*!40000 ALTER TABLE `transaction_type` DISABLE KEYS */;
INSERT INTO `transaction_type` VALUES (1,'for rent'),(2,'for sale'),(3,'for sale or rent');
/*!40000 ALTER TABLE `transaction_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-19  2:48:42
