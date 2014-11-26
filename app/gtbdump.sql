-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: gtb
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cake_sessions`
--

DROP TABLE IF EXISTS `cake_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cake_sessions` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cake_sessions`
--

LOCK TABLES `cake_sessions` WRITE;
/*!40000 ALTER TABLE `cake_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cake_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `leader` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'片野',1,'2014-11-05 01:35:40','2014-11-05 05:29:40',1),(9,'松井',1,'2014-11-05 01:35:51','2014-11-05 05:29:45',1),(10,'稲守',1,'2014-11-05 01:36:04','2014-11-05 05:29:49',0),(11,'ニック',1,'2014-11-05 01:36:18','2014-11-05 09:45:12',0),(12,'片山',1,'2014-11-05 01:36:26','2014-11-05 05:29:56',0),(13,'藤村',1,'2014-11-05 01:36:57','2014-11-05 05:30:04',1),(14,'塚元',1,'2014-11-05 01:37:17','2014-11-05 05:30:10',0),(15,'折田',1,'2014-11-05 01:37:26','2014-11-05 05:30:17',0),(16,'山邉',1,'2014-11-05 01:37:34','2014-11-05 09:45:19',1),(17,'松浦',1,'2014-11-05 01:37:40','2014-11-05 05:30:24',0),(18,'佐藤',1,'2014-11-05 01:37:49','2014-11-05 05:31:10',0),(19,'テッテッ',1,'2014-11-05 01:37:56','2014-11-05 05:31:05',0),(20,'野田',1,'2014-11-05 01:38:03','2014-11-05 05:30:58',0),(21,'ウィ',1,'2014-11-05 01:38:09','2014-11-05 05:30:56',0),(22,'宮尾',1,'2014-11-05 01:38:18','2014-11-05 05:30:50',0),(23,'市川',1,'2014-11-05 01:38:24','2014-11-05 05:30:47',0),(24,'ヒェウ',1,'2014-11-05 01:38:31','2014-11-05 05:30:43',0),(25,'劉',1,'2014-11-05 01:38:39','2014-11-05 05:30:40',0),(26,'李',0,'2014-11-05 04:59:05','2014-11-12 00:55:12',0),(27,'zhang',0,'2014-11-05 08:52:49','2014-11-07 03:14:33',0),(28,'wang',0,'2014-11-05 08:53:02','2014-11-07 03:14:38',0),(29,'lili',0,'2014-11-05 08:53:47','2014-11-07 03:14:44',0),(30,'lidandan',0,'2014-11-05 08:54:59','2014-11-05 09:37:20',0);
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

-- Dump completed on 2014-11-26 15:26:21
