-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: club
-- ------------------------------------------------------
-- Server version	5.7.15

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
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clubs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `tag` varchar(45) COLLATE utf8_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` VALUES (1,'Alumni and Associates of Family, Career and Community Leaders of America','Academic'),(2,'African American Choral Ensemble - AACE','Arts and Design'),(3,'The Agency','Arts and Design'),(4,'American society of Interior Designers - ASID','Arts and Design'),(5,'Knit and Crochet at UGA','Arts and Design'),(6,'UGAnime','Arts and Design'),(7,'Pamoja Dance Company','Arts and Design'),(8,'Cheerleading','Club Sports'),(9,'Baseball','Club Sports'),(10,'Equestrian Team','Club Sports'),(11,'Rowing','Club Sports'),(12,'BasketBall','Club Sports'),(13,'Tennis','Club Sports'),(14,'Soccor','Club Sports'),(15,'Gymnastics','Club Sports'),(16,'Softball','Club Sports'),(17,'Lacrosse','Club Sports'),(18,'Association of Environmental and Engineering Geologists - AEG','Environment and Sustainability'),(19,'Campus Kitchen','Environment and Sustainability'),(20,'Environmental Health Science Club','Environment and Sustainability'),(21,'African Student Union - ASU','Cultural and Ethnic'),(22,'Asian American Student Association','Cultural and Ethnic'),(23,'Black Affairs Council - BAC','Cultural and Ethnic'),(24,'Association of Latino Professionals for America - ALPFA','Cultural and Ethnic'),(25,'Filipino Student Association - FSA','Cultural and Ethnic'),(26,'Navigators - Navs','Faith'),(27,'Muslim Student Association - MSA','Faith'),(28,'Baha\'i Association at UGA','Faith'),(29,'A Date to Remember','Gender and Sexuality and Romance'),(30,'Free the Girls','Gender and Sexuality and Romance'),(31,'Lambda Alliance','Gender and Sexuality and Romance'),(32,'Lesbian, Gay, Bisexual and Transgender Resource Center (LGBT)','Gender and Sexuality and Romance'),(33,'Ambassadors for Global Awareness','Global Issues'),(34,'AdClub','Media'),(35,'American Marketing Association','Media'),(36,'infUSion Magazine','Media'),(37,'CURE','Medical and Pre Medical'),(38,'Pre-Veterinary Medicine Club at UGA','Medical and Pre Medical'),(39,'Student Veterans Association','Military'),(40,'American Constitution Society','Political Engagement'),(41,'College Republicans','Political Engagement'),(42,'Model African Union','Political Engagement'),(43,'Law Democrats','Political Engagement'),(44,'Undocumented Student Alliance','Political Engagement'),(45,'Sigma Alpha Lambda','Social Sororities and Fraternities'),(46,'Minorities in Tech - MiT','Technology and Engineering'),(47,'Association for Computing Machinery - ACM','Technology and Engineering'),(48,'Institute of Electrical and Electronic Engineers - IEEE','Technology and Engineering'),(49,'Aviation Club ','Wilderness and Great Outdoors'),(50,'Outdoor Adventure Club','Wilderness and Great Outdoors');
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `Month` varchar(45) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `club_id` int(11) NOT NULL,
  `location` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `club_id_idx` (`club_id`),
  CONSTRAINT `club_id` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_club`
--

DROP TABLE IF EXISTS `student_club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_club` (
  `key` int(11) NOT NULL,
  `id_student` int(11) DEFAULT NULL,
  `club` varchar(150) DEFAULT NULL,
  `id_club` int(11) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_club`
--

LOCK TABLES `student_club` WRITE;
/*!40000 ALTER TABLE `student_club` DISABLE KEYS */;
INSERT INTO `student_club` VALUES (1,2,'Navigators - Navs',26),(2,2,'African Student Union - ASU',21);
/*!40000 ALTER TABLE `student_club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_interest`
--

DROP TABLE IF EXISTS `student_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_interest` (
  `key` int(11) NOT NULL AUTO_INCREMENT,
  `id_student` int(11) DEFAULT NULL,
  `interest` varchar(45) DEFAULT NULL,
  `id_interest` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_interest`
--

LOCK TABLES `student_interest` WRITE;
/*!40000 ALTER TABLE `student_interest` DISABLE KEYS */;
INSERT INTO `student_interest` VALUES (1,2,'Arts and Design','2'),(2,2,'Cultural and Ethnic','5'),(3,2,'Faith','6'),(4,2,'Technology and Engineering','14');
/*!40000 ALTER TABLE `student_interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'John','Smith','M','Sophomore'),(2,'Hannah','Adams','F','Freshman'),(3,'Bob','Johnson','M','Senior'),(16,'Tom','Smith','M','Freshman'),(17,'Mickey','Smith','null','Sophomore'),(18,'','','null','Freshman'),(19,'Tom','a','M','null'),(20,'k','l','M','null'),(21,'Ta','A','M','Freshman'),(22,'a','a','M',''),(23,'','a','M','Sophomore'),(24,'','j','null',''),(25,'','h','null',''),(26,'Tom','l','M','Sophomore'),(27,'Tom','','M','Sophomore'),(28,'','','null',''),(29,'Tamami','Lillis','Female','Sophomore'),(30,'Ta','t','g','a'),(31,'','','',''),(32,'','','',''),(33,'a','','',''),(34,'','','',''),(35,'ta','','','');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Academic'),(2,'Arts and Design'),(3,'Club Sports'),(4,'Environmental and Sustainability'),(5,'Cultural and Ethnic'),(6,'Faith'),(7,'Gender and Sexuality and Romance'),(8,'Global Issues'),(9,'Media'),(10,'Medical and Pre Medical'),(11,'Military'),(12,'Political Engagement'),(13,'Social Sororities and Fraternities'),(14,'Technology and Engineering'),(15,'Wilderness and Great Outdoors');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  CONSTRAINT `student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'js123','12ABC12'),(2,'rara','12ABC12'),(3,'baba','12ABC12'),(16,'tom123','smith123'),(17,'sdf','abc13'),(18,'',''),(19,'a','a'),(20,'l','l'),(21,'tom123','abc13'),(22,'a','a'),(23,'a','a'),(24,'js123','a'),(25,'',''),(26,'tom123','abc13'),(27,'tom123','abc13'),(29,'tlillis','12ABC'),(30,'th','324'),(33,'',''),(35,'','');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-03 13:27:08
