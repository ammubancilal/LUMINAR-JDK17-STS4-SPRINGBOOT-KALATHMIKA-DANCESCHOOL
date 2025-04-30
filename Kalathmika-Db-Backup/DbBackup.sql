-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: kalathmika
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `class_dayof_week` varchar(255) DEFAULT NULL,
  `class_start_time` varchar(255) DEFAULT NULL,
  `class_end_time` varchar(255) DEFAULT NULL,
  `class_location` varchar(255) DEFAULT NULL,
  `class_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'Bharathanatyam adavu class','Wednesday','4.00 PM','7.00 PM','Kalathmika Auditorium1','The Session Includes Adavu practises for Students'),(3,'Item- Bharathanatyam','Thursday','4.00 PM','6.00 PM','Kalathamika Auditorium 3','Bharathanatyam- item practise'),(4,'Mohiniyattam-basics','Monday','4.00 PM','6.00 PM','Kalathamika Auditorium 2','Session includes mohiniyattam basics');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danceforms`
--

DROP TABLE IF EXISTS `danceforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danceforms` (
  `dance_id` int NOT NULL AUTO_INCREMENT,
  `dance_name` varchar(255) NOT NULL,
  `dance_desc` varchar(255) DEFAULT NULL,
  `dance_origin_state` varchar(255) NOT NULL,
  `dance_created_at` datetime(6) NOT NULL,
  `dance_updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`dance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danceforms`
--

LOCK TABLES `danceforms` WRITE;
/*!40000 ALTER TABLE `danceforms` DISABLE KEYS */;
INSERT INTO `danceforms` VALUES (1,'BharathaNatyam','Classical Indian Dance\r\nOriginally performed by devadasis (temple dancers) as an offering to deities, Bharathanatyam evolved from a form of ritual worship into a respected art form presented on modern stages.','Tamil Nadu TN','2025-04-23 21:07:06.000000','2025-04-26 15:08:07.002091'),(2,'KUCHIPPUDI','It blends graceful movements, dramatic storytelling, and expressive facial gestures success','Andhra Pradesh(AP)','2025-04-24 11:08:54.680440','2025-04-24 21:22:34.568536'),(6,'Mohiniyattam','The name Mohiniyattam comes from \"Mohini\" (the enchanting female form of Lord Vishnu) ','Kerala','2025-04-25 21:10:43.641886','2025-04-25 21:10:43.641886');
/*!40000 ALTER TABLE `danceforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) NOT NULL,
  `event_date` varchar(255) NOT NULL,
  `event_location` varchar(255) NOT NULL,
  `event_desc` varchar(255) NOT NULL,
  `event_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (8,'Kalathmika Youth Festival','2025-04-11','Ernakulam','Bharathanatyam Performance by seniour students\r\n','2025-04-26 14:17:12','2025-04-29 10:43:32'),(10,'Kalathmika Anniversary','2025-04-07','Aluva','All Types of dances','2025-04-26 14:17:44','2025-04-26 14:17:57'),(14,'Kids festival','2025-04-08','Elamkulam','kids','2025-04-26 21:48:05','2025-04-26 21:48:25'),(15,'Nrithyodaya festival','2025-05-08','Panangad,sri Ganapathi Auditorium','Bharathanatyam Performance By seniours','2025-04-30 11:30:22','2025-04-30 11:30:22'),(16,'kids arangettam ','2025-04-17','Changampuzha Park, Edappally','Kids bharathanatyam Arangettam','2025-04-30 11:32:49','2025-04-30 11:32:49');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `mem_id` int NOT NULL AUTO_INCREMENT,
  `mem_first_name` varchar(255) DEFAULT NULL,
  `mem_last_name` varchar(255) DEFAULT NULL,
  `mem_address` varchar(255) NOT NULL,
  `mem_phone_number` varchar(255) DEFAULT NULL,
  `mem_email_id` varchar(255) DEFAULT NULL,
  `mem_gender` varchar(255) NOT NULL,
  PRIMARY KEY (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Deepa','Anand','Vettukattil house,Aluva','8547919266','deepa@gmail..com','female'),(2,'Jeenu',NULL,'jeenu villa','9744883863','jeeenu@gmail.com','Female'),(3,'Arpitha',NULL,'Arpitha Nivas','9744883863','arpitha@gmail.com','Female'),(4,'maria',NULL,'Maria nivas','9744883863','maria@gmail.com','Female'),(5,'keerthana','raju','Keerthana Nivas','9744883863','keerthana@gmail.com','Female'),(6,'Dhwani ','sasi','Dhwani nivas','9744883863','dhwani@gmail.com','Female'),(7,'Aradhya','Bancilal','Sukrutham House,NAD , NOchima P O , 683563','9961144446','aradhya@gmail.com','Female'),(8,'Malavika','menon','malavika nivas, aluva','9961144446','malavika@gmail.com','Female'),(9,'Anju','CS','Anju Villa, Thykoodam,Ernakulam','9973423545','anju@gmail.com','Female');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `stu_id` int NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(255) NOT NULL,
  `stu_dob` varchar(255) NOT NULL,
  `stu_gender` varchar(255) NOT NULL,
  `stu_parent_name` varchar(255) NOT NULL,
  `stu_contact_number` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_address` varchar(255) NOT NULL,
  `stu_dateof_join` varchar(255) NOT NULL,
  `stu_dance_form` varchar(255) NOT NULL,
  `stu_level` varchar(255) NOT NULL,
  `mem_id` int DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  UNIQUE KEY `stu_name_UNIQUE` (`stu_name`),
  UNIQUE KEY `stu_email_UNIQUE` (`stu_email`),
  KEY `fk_memid_idx` (`mem_id`),
  CONSTRAINT `fk_memid` FOREIGN KEY (`mem_id`) REFERENCES `members` (`mem_id`),
  CONSTRAINT `FKrn5hsnjgla94976yyle1pd62v` FOREIGN KEY (`mem_id`) REFERENCES `users` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (20,'Maria Jose','2025-04-08','Female','Jose','9744883863','maria@gmail.com','Maria nivas','2025-04-01','Bharatanatyam','Beginner',4),(21,'Keerthana Raju','2025-04-02','Female','Raju','9744883863','keerthana@gmail.com','Keerthana Nivas','2025-04-10','Bharatanatyam','Beginner',5),(22,'dhwani sasi','2022-06-29','Female','Sasi KS','9744883863','dhwani@gmail.com','Dhwani nivas','2025-04-07','Bharatanatyam','Beginner',6),(23,'Aradhya Bancilal Ks','2019-05-05','Female','Bancilal Sugathan','9961144446','aradhya@gmail.com','Sukrutham House,NAD , NOchima P O , 683563','2025-02-27','Bharatanatyam','Beginner',7),(24,'Malavika menon','2014-07-08','Female','menon','9961144446','malavika@gmail.com','malavika nivas, aluva','2025-04-02','Kuchipudi','Intermediate',8),(25,'Anju CS','2010-07-01','Female','Sajeevan','9973423545','anju@gmail.com','Anju Villa, Thykoodam,Ernakulam','2025-04-02','Bharatanatyam','Beginner',9);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackfees`
--

DROP TABLE IF EXISTS `trackfees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackfees` (
  `fee_id` int NOT NULL AUTO_INCREMENT,
  `stu_id` int NOT NULL,
  `fee_month` varchar(255) DEFAULT NULL,
  `fee_year` varchar(255) DEFAULT NULL,
  `fee_amount_paid` int NOT NULL,
  `fee_payment_date` varchar(255) DEFAULT NULL,
  `fee_payment_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fee_id`),
  KEY `FK_stu_id_idx` (`stu_id`),
  CONSTRAINT `FK_stu_id` FOREIGN KEY (`stu_id`) REFERENCES `students` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackfees`
--

LOCK TABLES `trackfees` WRITE;
/*!40000 ALTER TABLE `trackfees` DISABLE KEYS */;
INSERT INTO `trackfees` VALUES (17,23,'January','2025',750,'2025-01-08','paid'),(18,23,'February','2025',750,'2025-02-13','paid'),(19,23,'March','2025',750,'2025-03-12','paid'),(20,24,'January','2025',750,'2025-04-09','paid'),(21,24,'March','2025',750,'2025-04-01','paid'),(22,25,'January','2025',750,'2025-04-16','paid'),(23,25,'February','2025',500,'2025-04-18','partial'),(24,21,'May','2025',500,'2025-04-24','partial'),(25,22,'May','2025',600,'2025-04-10','partial'),(26,20,'April','2025',750,'2025-04-17','paid');
/*!40000 ALTER TABLE `trackfees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `mem_id` int NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_memid_idx` (`mem_id`),
  CONSTRAINT `FK` FOREIGN KEY (`mem_id`) REFERENCES `members` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'deepa','deepa1985','admin'),(4,4,'maria','mariajose','Student'),(5,5,'keerthana','raju','Student'),(6,6,'dhwani','dhwani2022','Student'),(7,7,'aradhya','aradhya2019','Student'),(8,8,'malavika','malu123','Student'),(9,9,'anju','anjucs','Student');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 17:14:28
