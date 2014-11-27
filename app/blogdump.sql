-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (108,'a:4:{i:0;a:2:{s:6:\"leader\";s:6:\"藤村\";s:7:\"members\";a:4:{i:0;s:6:\"佐藤\";i:1;s:6:\"折田\";i:2;s:6:\"市川\";i:3;s:6:\"ウィ\";}}i:1;a:2:{s:6:\"leader\";s:6:\"松井\";s:7:\"members\";a:4:{i:0;s:6:\"松浦\";i:1;s:12:\"テッテッ\";i:2;s:6:\"稲守\";i:3;s:9:\"ヒェウ\";}}i:2;a:2:{s:6:\"leader\";s:6:\"片野\";s:7:\"members\";a:4:{i:0;s:6:\"塚元\";i:1;s:6:\"片山\";i:2;s:6:\"野田\";i:3;s:0:\"\";}}i:3;a:2:{s:6:\"leader\";s:6:\"山邉\";s:7:\"members\";a:4:{i:0;s:3:\"劉\";i:1;s:6:\"宮尾\";i:2;s:9:\"ニック\";i:3;s:0:\"\";}}}','2014-11-26 07:14:11','2014-11-26 07:14:11'),(109,'a:4:{i:0;a:2:{s:6:\"leader\";s:6:\"山邉\";s:7:\"members\";a:4:{i:0;s:6:\"塚元\";i:1;s:6:\"折田\";i:2;s:6:\"片山\";i:3;s:9:\"ヒェウ\";}}i:1;a:2:{s:6:\"leader\";s:6:\"藤村\";s:7:\"members\";a:4:{i:0;s:6:\"佐藤\";i:1;s:12:\"テッテッ\";i:2;s:3:\"劉\";i:3;s:9:\"ニック\";}}i:2;a:2:{s:6:\"leader\";s:6:\"松井\";s:7:\"members\";a:4:{i:0;s:6:\"稲守\";i:1;s:6:\"市川\";i:2;s:6:\"ウィ\";i:3;s:0:\"\";}}i:3;a:2:{s:6:\"leader\";s:6:\"片野\";s:7:\"members\";a:4:{i:0;s:6:\"宮尾\";i:1;s:6:\"野田\";i:2;s:6:\"松浦\";i:3;s:0:\"\";}}}','2014-11-26 10:13:35','2014-11-26 10:13:35');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `create` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES (1,'InitMigrations','Migrations','2014-11-27 05:03:21'),(2,'ConvertVersionToClassNames','Migrations','2014-11-27 05:03:21'),(3,'IncreaseClassNameLength','Migrations','2014-11-27 05:03:21'),(4,'CreatePosts','app','2014-11-27 05:03:21');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (8,'片野',1,'2014-11-05 01:35:40','2014-11-26 07:10:29',1),(9,'松井',1,'2014-11-05 01:35:51','2014-11-26 07:10:40',1),(10,'稲守',1,'2014-11-05 01:36:04','2014-11-26 07:10:52',0),(11,'ニック',1,'2014-11-05 01:36:18','2014-11-26 07:11:08',0),(12,'片山',1,'2014-11-05 01:36:26','2014-11-26 07:11:13',0),(13,'藤村',1,'2014-11-05 01:36:57','2014-11-26 07:11:28',1),(14,'塚元',1,'2014-11-05 01:37:17','2014-11-26 07:11:38',0),(15,'折田',1,'2014-11-05 01:37:26','2014-11-26 07:11:47',0),(16,'山邉',1,'2014-11-05 01:37:34','2014-11-26 07:12:05',1),(17,'松浦',1,'2014-11-05 01:37:40','2014-11-26 07:12:15',0),(18,'佐藤',1,'2014-11-05 01:37:49','2014-11-26 07:12:24',0),(19,'テッテッ',1,'2014-11-05 01:37:56','2014-11-26 07:12:35',0),(20,'野田',1,'2014-11-05 01:38:03','2014-11-26 07:12:51',0),(21,'ウィ',1,'2014-11-05 01:38:09','2014-11-26 07:13:07',0),(22,'宮尾',1,'2014-11-05 01:38:18','2014-11-26 07:13:16',0),(23,'市川',1,'2014-11-05 01:38:24','2014-11-26 07:13:24',0),(24,'ヒェウ',1,'2014-11-05 01:38:31','2014-11-26 07:13:34',0),(25,'劉',1,'2014-11-05 01:38:39','2014-11-26 07:13:56',0),(26,'李',0,'2014-11-05 04:59:05','2014-11-26 07:14:02',0),(27,'zhang',0,'2014-11-05 08:52:49','2014-11-07 03:14:33',0),(28,'wang',0,'2014-11-05 08:53:02','2014-11-07 03:14:38',0),(29,'lili',0,'2014-11-05 08:53:47','2014-11-07 03:14:44',0),(30,'lidandan',0,'2014-11-05 08:54:59','2014-11-05 09:37:20',0);
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

-- Dump completed on 2014-11-27 11:09:02
