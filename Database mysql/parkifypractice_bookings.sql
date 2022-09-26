-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: parkifypractice
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` bigint NOT NULL AUTO_INCREMENT,
  `exit_time` datetime(6) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `slot_number` int DEFAULT NULL,
  `entry_time` datetime(6) DEFAULT NULL,
  `parking_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `v_id` bigint DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `FKdoih7g25klip8p7ucri3lih8q` (`parking_id`),
  KEY `FKorc7gtov90oc7qkrcnya5nikt` (`user_id`),
  KEY `FK7kvryh97oavd4yeb6w24mqik0` (`v_id`),
  CONSTRAINT `FK7kvryh97oavd4yeb6w24mqik0` FOREIGN KEY (`v_id`) REFERENCES `vehicle_details` (`vehicle_id`),
  CONSTRAINT `FKdoih7g25klip8p7ucri3lih8q` FOREIGN KEY (`parking_id`) REFERENCES `parking` (`parking_id`),
  CONSTRAINT `FKorc7gtov90oc7qkrcnya5nikt` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2022-08-11 22:35:10.000000',28,2,'2022-08-10 18:35:10.000000',1,1,1),(2,'2022-08-10 22:35:10.000000',4,1,'2022-08-10 18:35:10.000000',2,1,1),(3,'2022-08-11 22:35:10.000000',2,2,'2022-08-11 20:00:10.000000',1,2,1),(4,'2022-09-11 22:35:10.000000',2,2,'2022-09-11 20:00:10.000000',1,2,1),(5,'2022-09-11 22:35:10.000000',2,1,'2022-09-11 20:00:10.000000',1,2,1),(6,'2022-09-12 22:35:10.000000',2,1,'2022-09-12 20:00:10.000000',1,2,1),(7,'2022-09-12 22:35:10.000000',2,3,'2022-09-12 20:00:10.000000',3,2,1),(8,'2022-09-12 22:35:10.000000',2,4,'2022-09-12 20:00:10.000000',1,2,1);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-17 19:00:20
