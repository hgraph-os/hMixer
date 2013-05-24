-- MySQL dump 10.13  Distrib 5.1.66, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hmixer
-- ------------------------------------------------------
-- Server version	5.1.66-0+squeeze1

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
-- Table structure for table `age_ranges`
--

DROP TABLE IF EXISTS `age_ranges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `age_ranges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age_min` int(11) DEFAULT NULL,
  `age_max` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `age_ranges`
--

LOCK TABLES `age_ranges` WRITE;
/*!40000 ALTER TABLE `age_ranges` DISABLE KEYS */;
INSERT INTO `age_ranges` VALUES (1,'everyone',0,1000,'2013-02-18 15:00:11','2013-02-18 15:00:13');
/*!40000 ALTER TABLE `age_ranges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributions`
--

DROP TABLE IF EXISTS `contributions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contributions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submission_id` int(11) DEFAULT NULL,
  `metric_id` int(11) DEFAULT NULL,
  `healthy_min` decimal(10,0) DEFAULT NULL,
  `healthy_max` decimal(10,0) DEFAULT NULL,
  `total_min` decimal(10,0) DEFAULT NULL,
  `total_max` decimal(10,0) DEFAULT NULL,
  `score_weight` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `demographic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_contributions_on_submission_id` (`submission_id`),
  KEY `index_contributions_on_metric_id` (`metric_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1840 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributions`
--

LOCK TABLES `contributions` WRITE;
/*!40000 ALTER TABLE `contributions` DISABLE KEYS */;
INSERT INTO `contributions` VALUES (1,1,1,'37','46','0','80',10,'2013-04-04 16:08:41','2013-05-21 16:30:56',1),(2,1,1,'24','33','0','80',10,'2013-04-04 16:08:41','2013-05-21 16:30:56',2),(3,1,2,'183','223','50','500',5,'2013-05-21 11:32:49','2013-05-21 16:30:56',2),(4,1,2,'261','299','50','500',5,'2013-05-21 11:32:49','2013-05-21 16:30:56',1),(5,1,3,'26','41','0','60',5,'2013-02-12 01:35:57','2013-05-21 16:30:56',1),(6,1,3,'32','47','0','60',5,'2013-02-12 01:35:57','2013-05-21 16:30:56',2),(7,1,4,'7','9','0','18',5,'2013-02-12 01:35:57','2013-05-21 16:30:56',1),(8,1,4,'6','8','0','18',5,'2013-02-12 01:35:57','2013-05-21 16:30:56',2),(9,1,5,'5','8','0','10',3,'2013-04-04 15:54:29','2013-05-21 16:30:56',2),(10,1,5,'5','8','0','10',3,'2013-04-04 15:54:29','2013-05-21 16:30:56',1),(11,1,6,'349','505','0','600',3,'2013-02-12 01:35:57','2013-05-21 16:30:56',2),(12,1,6,'277','425','0','600',3,'2013-02-12 01:35:57','2013-05-21 16:30:56',1),(13,1,7,'80','111','0','160',10,'2013-02-12 01:35:57','2013-05-21 16:30:56',1),(14,1,7,'73','104','0','160',10,'2013-02-12 01:35:57','2013-05-21 16:30:56',2),(15,1,8,'64','91','0','130',4,'2013-02-12 01:35:57','2013-05-21 16:30:56',1),(16,1,8,'69','96','0','130',4,'2013-02-12 01:35:57','2013-05-21 16:30:56',2),(17,1,9,'75','113','0','160',10,'2013-04-04 15:56:31','2013-05-21 16:30:56',2),(18,1,9,'76','114','0','160',10,'2013-04-04 15:56:31','2013-05-21 16:30:56',1),(19,1,10,'120','168','50','230',5,'2013-04-04 15:58:01','2013-05-21 16:30:56',1),(20,1,10,'108','157','50','230',5,'2013-04-04 15:58:01','2013-05-21 16:30:56',2),(21,1,11,'72','102','35','140',5,'2013-04-04 15:59:02','2013-05-21 16:30:56',2),(22,1,11,'72','102','35','140',5,'2013-04-04 15:59:02','2013-05-21 16:30:56',1),(23,1,12,'2','4','0','20',5,'2013-04-04 16:00:29','2013-05-21 15:53:41',2),(24,1,12,'2','4','0','20',5,'2013-04-04 16:00:29','2013-04-15 21:35:44',1),(25,1,13,'0','1','0','10',5,'2013-04-04 16:00:29','2013-04-15 21:08:16',2),(26,1,13,'0','1','0','10',5,'2013-04-04 16:00:29','2013-04-15 21:08:16',1),(27,1,14,'1','4','0','10',3,'2013-04-04 15:54:29','2013-04-15 21:35:44',1),(28,1,14,'1','4','0','10',3,'2013-04-04 15:54:29','2013-05-21 15:53:41',2),(1784,31,1,'46','55','0','80',10,'2013-05-21 15:53:41','2013-05-21 15:56:29',1),(1785,31,2,'170','210','50','500',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',1),(1786,31,3,'35','50','0','60',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',1),(1787,31,4,'5','7','0','18',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',1),(1788,31,5,'6','9','0','10',3,'2013-05-21 15:53:41','2013-05-21 15:53:41',1),(1789,31,6,'366','522','0','600',3,'2013-05-21 15:53:41','2013-05-21 15:53:41',1),(1790,31,7,'64','95','0','160',10,'2013-05-21 15:53:41','2013-05-21 15:53:41',1),(1791,31,8,'75','102','0','130',4,'2013-05-21 15:53:41','2013-05-21 15:53:41',1),(1792,31,9,'61','100','0','160',10,'2013-05-21 15:53:41','2013-05-21 15:53:41',1),(1793,31,10,'99','148','50','230',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',1),(1794,31,11,'65','95','35','140',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',1),(1795,31,12,'2','4','0','20',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',1),(1796,31,13,'0','1','0','10',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',1),(1797,31,14,'1','4','0','10',3,'2013-05-21 15:53:41','2013-05-21 15:53:41',1),(1798,31,1,'18','27','0','80',10,'2013-05-21 15:53:41','2013-05-21 15:56:29',2),(1799,31,2,'170','210','50','500',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',2),(1800,31,3,'35','50','0','60',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',2),(1801,31,4,'5','7','0','18',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',2),(1802,31,5,'6','9','0','10',3,'2013-05-21 15:53:41','2013-05-21 15:53:41',2),(1803,31,6,'366','522','0','600',3,'2013-05-21 15:53:41','2013-05-21 15:53:41',2),(1804,31,7,'64','95','0','160',10,'2013-05-21 15:53:41','2013-05-21 15:53:41',2),(1805,31,8,'75','102','0','130',4,'2013-05-21 15:53:41','2013-05-21 15:53:41',2),(1806,31,9,'61','100','0','160',10,'2013-05-21 15:53:41','2013-05-21 15:53:41',2),(1807,31,10,'99','148','50','230',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',2),(1808,31,11,'65','95','35','140',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',2),(1809,31,12,'2','4','0','20',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',2),(1810,31,13,'0','1','0','10',5,'2013-05-21 15:53:41','2013-05-21 15:53:41',2),(1811,31,14,'1','4','0','10',3,'2013-05-21 15:53:41','2013-05-21 15:53:41',2),(1812,32,1,'27','36','0','80',10,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1813,32,2,'328','368','50','500',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1814,32,3,'15','30','0','60',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1815,32,4,'9','11','0','18',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1816,32,5,'4','7','0','10',3,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1817,32,6,'142','298','0','600',3,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1818,32,7,'94','125','0','160',10,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1819,32,8,'52','79','0','130',4,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1820,32,9,'89','128','0','160',10,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1821,32,10,'138','187','50','230',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1822,32,11,'80','110','35','140',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1823,32,12,'3','5','0','20',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1824,32,13,'1','2','0','10',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1825,32,14,'2','5','0','10',3,'2013-05-21 16:30:56','2013-05-21 16:30:56',1),(1826,32,1,'30','39','0','80',10,'2013-05-21 16:30:56','2013-05-21 16:30:56',2),(1827,32,2,'197','237','50','500',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',2),(1828,32,3,'30','45','0','60',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',2),(1829,32,4,'7','9','0','18',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',2),(1830,32,5,'4','7','0','10',3,'2013-05-21 16:30:56','2013-05-21 16:30:56',2),(1831,32,6,'332','488','0','600',3,'2013-05-21 16:30:56','2013-05-21 16:30:56',2),(1832,32,7,'82','113','0','160',10,'2013-05-21 16:30:56','2013-05-21 16:30:56',2),(1833,32,8,'63','90','0','130',4,'2013-05-21 16:30:56','2013-05-21 16:30:56',2),(1834,32,9,'87','126','0','160',10,'2013-05-21 16:30:56','2013-05-21 16:30:56',2),(1835,32,10,'118','167','50','230',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',2),(1836,32,11,'79','109','35','140',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',2),(1837,32,12,'3','5','0','20',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',2),(1838,32,13,'0','1','0','10',5,'2013-05-21 16:30:56','2013-05-21 16:30:56',2),(1839,32,14,'1','4','0','10',3,'2013-05-21 16:30:56','2013-05-21 16:30:56',2);
/*!40000 ALTER TABLE `contributions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demographics`
--

DROP TABLE IF EXISTS `demographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demographics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `age_ranges_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demographics`
--

LOCK TABLES `demographics` WRITE;
/*!40000 ALTER TABLE `demographics` DISABLE KEYS */;
INSERT INTO `demographics` VALUES (1,'male','2013-02-18 14:59:36','2013-02-18 14:59:37',1),(2,'female','2013-02-18 14:59:50','2013-02-18 14:59:52',1);
/*!40000 ALTER TABLE `demographics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics`
--

LOCK TABLES `metrics` WRITE;
/*!40000 ALTER TABLE `metrics` DISABLE KEYS */;
INSERT INTO `metrics` VALUES (1,'Waist Circumference','inches','2013-02-12 01:35:57','2013-02-12 01:35:57'),(2,'Weight','lbs','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Exercise','hours/week','2013-02-12 01:32:54','2013-02-12 01:32:54'),(4,'Sleep','hours/night','2013-02-12 01:30:13','2013-02-12 01:30:13'),(5,'Happiness','happiness scale','2013-02-12 01:32:54','2013-02-12 01:32:54'),(6,'Triglycerides','mg/dl','2013-02-12 01:30:13','2013-02-12 01:30:13'),(7,'LDL','mg/dl','2013-02-12 01:30:13','2013-02-12 01:30:13'),(8,'HDL','mg/dl','2013-02-12 01:30:13','2013-02-12 01:30:13'),(9,'Glucose','mg/dl','2013-02-12 01:32:54','2013-02-12 01:32:54'),(10,'Blood Pressure Systolic','mm/Hg','2013-02-12 01:32:54','2013-02-12 01:32:54'),(11,'Blood Pressure Diastolic','mm/Hg','2013-02-12 01:35:57','2013-02-12 01:35:57'),(12,'Alcohol','drinks/week','2013-02-12 01:35:57','2013-02-12 01:35:57'),(13,'Smoking','cigarettes/day','2013-02-12 01:35:57','2013-02-12 01:35:57'),(14,'Pain','pain scale','2013-04-04 15:12:57','2013-04-04 15:12:59');
/*!40000 ALTER TABLE `metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130211214156'),('20130211214221'),('20130211214319'),('20130211215510'),('20130211223441'),('20130212003231'),('20130212003901'),('20130213190849'),('20130213191346'),('20130213192205'),('20130213192911'),('20130214222723');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `message` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_submissions_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
INSERT INTO `submissions` VALUES (1,1,'Average data of all doctors','2013-02-12 01:35:57','2013-02-26 23:00:20'),(31,25,'imedia','2013-05-21 15:53:41','2013-05-21 15:53:41'),(32,26,'Second Test','2013-05-21 16:30:56','2013-05-21 16:30:56');
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Default','default','2013-02-12 01:30:13','2013-02-26 22:19:59','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(25,'imedia','imedia@test.com','2013-05-21 15:53:41','2013-05-21 15:53:41','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(26,'Test 2','imedia2@imedia.com','2013-05-21 16:30:56','2013-05-21 16:30:56','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2013-05-24 11:24:28
