-- MySQL dump 10.13  Distrib 8.0.29, for macos12.2 (x86_64)
--
-- Host: localhost    Database: memorizer
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Memory`
--

DROP TABLE IF EXISTS `Memory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Memory` (
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `memory_id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int unsigned NOT NULL,
  `created_for` int unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` blob,
  `photo` blob,
  `privacy` tinyint DEFAULT '1',
  PRIMARY KEY (`memory_id`),
  UNIQUE KEY `MemoryId_UNIQUE` (`memory_id`),
  KEY `createdBy_idx` (`created_by`),
  KEY `createdFor_idx` (`created_for`),
  CONSTRAINT `createdBy` FOREIGN KEY (`created_by`) REFERENCES `User` (`user_id`),
  CONSTRAINT `createdFor` FOREIGN KEY (`created_for`) REFERENCES `User` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Memory`
--

LOCK TABLES `Memory` WRITE;
/*!40000 ALTER TABLE `Memory` DISABLE KEYS */;
INSERT INTO `Memory` VALUES ('2022-07-05 12:38:54','2022-07-05 12:38:54',1,1,2,'Hello',_binary 'abcded',NULL,1),('2022-07-05 12:39:04','2022-07-05 12:39:04',2,1,2,'Bye',_binary 'abcsdvjbadvded',NULL,1),('2022-07-05 12:39:20','2022-07-05 12:39:20',3,1,4,'no',_binary 'wkjbvw vw mf we wf',NULL,0),('2022-07-05 12:39:31','2022-07-05 12:39:31',4,2,4,'JBjksbfvds',_binary 'wkjbvw vw advljbnqvjbnmf we wf',NULL,0),('2022-07-05 12:39:45','2022-07-05 12:39:45',5,2,3,'Name',_binary 'WE  weff f we wf',NULL,0),('2022-07-05 12:39:55','2022-07-05 12:39:55',6,2,1,'Name ef lnkjbd ',_binary 'WE   wfwe fweff f we wf',NULL,1),('2022-07-05 12:40:07','2022-07-05 12:40:07',7,3,1,'YYWLJFcm',_binary 'kqjdwe e fweff f we wf',NULL,1),('2022-07-05 12:40:20','2022-07-05 12:40:20',8,3,4,'psdkfp wf','',NULL,1);
/*!40000 ALTER TABLE `Memory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` char(10) NOT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(1024) NOT NULL,
  `profile_pic` blob,
  `default_memory_privacy` tinyint DEFAULT '0',
  `email_verified` tinyint DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UserId_UNIQUE` (`user_id`),
  UNIQUE KEY `Email_UNIQUE` (`email`),
  UNIQUE KEY `ContactNo_UNIQUE` (`contact_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('2022-07-05 12:16:16','2022-07-05 12:16:16',1,'Shivang','Mangal','shivangmangal@gmail.com','9876543210','1999-06-16','welcome1',NULL,0,0),('2022-07-05 12:17:31','2022-07-05 12:17:31',2,'Ashutosh','Singh','ashu@gmail.com','8876543210','1998-03-21','welcome2',NULL,0,0),('2022-07-05 12:18:01','2022-07-05 12:18:01',3,'Adarsh','Patel','adarshpatel@gmail.com','8876543219','1999-10-25','welcome3',NULL,0,0),('2022-07-05 12:18:39','2022-07-05 12:18:39',4,'Saksham','Agrawal','sakshamagr@gmail.com','8876773219','1998-08-09','welcome4',NULL,0,0),('2022-07-05 06:46:16','2022-07-05 06:46:16',5,'Mandeep','Singh','mandeep@gmail.com','9898989898','1999-11-11','welcome5',_binary 'ihwbdv',0,0);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-05 18:30:47
