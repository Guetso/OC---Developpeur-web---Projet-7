-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: groupomania
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `idUSERS` int NOT NULL,
  `idMESSAGES` int NOT NULL,
  PRIMARY KEY (`idUSERS`,`idMESSAGES`),
  KEY `fk_LIKES_MESSAGES_idx` (`idMESSAGES`),
  KEY `fk_LIKES_USERS_idx` (`idUSERS`),
  CONSTRAINT `fk_LIKES_MESSAGES` FOREIGN KEY (`idMESSAGES`) REFERENCES `messages` (`idMESSAGES`) ON DELETE CASCADE,
  CONSTRAINT `fk_LIKES_USERS` FOREIGN KEY (`idUSERS`) REFERENCES `users` (`idUSERS`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `idMESSAGES` int NOT NULL AUTO_INCREMENT,
  `idUSERS` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `attachment` varchar(120) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message_parent` int DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`idMESSAGES`),
  UNIQUE KEY `idMESSAGES_UNIQUE` (`idMESSAGES`),
  KEY `fk_MESSAGES_USERS_idx` (`idUSERS`),
  KEY `fk_MESSAGES_MESSAGES_idx` (`message_parent`),
  CONSTRAINT `fk_MESSAGES_MESSAGES` FOREIGN KEY (`message_parent`) REFERENCES `messages` (`idMESSAGES`) ON DELETE CASCADE,
  CONSTRAINT `fk_MESSAGES_USERS` FOREIGN KEY (`idUSERS`) REFERENCES `users` (`idUSERS`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1057 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUSERS` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `bio` text,
  `isAdmin` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`idUSERS`),
  UNIQUE KEY `idUSERS_UNIQUE` (`idUSERS`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-10 11:46:25
