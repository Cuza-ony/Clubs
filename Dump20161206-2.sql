-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: final
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
  `bio` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` VALUES (1,'Alumni and Associates of Family, Career and Community Leaders of America','Academic',NULL),(2,'African American Choral Ensemble - AACE','Arts and Design',NULL),(3,'The Agency','Arts and Design',NULL),(4,'American society of Interior Designers - ASID','Arts and Design',NULL),(5,'Knit and Crochet at UGA','Arts and Design','This group is for UGA students to socialize while knitting and crocheting.  Come learn, share techniques, visit yarn stores with us, and use our craft in a service project each semester.  '),(6,'UGAnime','Arts and Design',NULL),(7,'Pamoja Dance Company','Arts and Design',NULL),(8,'Cheerleading','Club Sports',NULL),(9,'Baseball','Club Sports',NULL),(10,'Equestrian Team','Club Sports',NULL),(11,'Rowing','Club Sports','The purpose of this organization shall be to advance the skill and interest of all University of Georgia students, faculty members, and staff members pursuing the sport of rowing.  This shall be accomplished through conditioning and intercollegiate, regional, national, and international competition under the affiliation and governments of the United States Rowing Association and the University of Georgia Recreational Sports Division.'),(12,'BasketBall','Club Sports',NULL),(13,'Tennis','Club Sports',NULL),(14,'Soccor','Club Sports',NULL),(15,'Gymnastics','Club Sports',NULL),(16,'Softball','Club Sports',NULL),(17,'Lacrosse','Club Sports',NULL),(18,'Association of Environmental and Engineering Geologists - AEG','Environment and Sustainability',NULL),(19,'Campus Kitchen','Environment and Sustainability',NULL),(20,'Environmental Health Science Club','Environment and Sustainability','Up to a quarter of all preventable illnesses could be eliminated through environmental health practices. According to the WHO, up to 13 million deaths (including 4 million children) per year could be prevented by controlling environmental exposures, especially in the developing world. Even in developed countries, environmental exposures are related to significant morbidity attributed to poor air quality (especially in urban areas) and exposure to chemical and microbiological contaminants through food and water. Environmental health professionals and research in environmental health are critically needed.'),(21,'African Student Union - ASU','Cultural and Ethnic','The African Student Union is an organization committed to educating the community about Africa through many different ways. Through community service projects, educational programs, our social activities and our Annual African Night, we are raising awareness of African cultures and affairs here at the University of Georgia and in the Athens community.'),(22,'Asian American Student Association','Cultural and Ethnic',NULL),(23,'Black Affairs Council - BAC','Cultural and Ethnic',NULL),(24,'Association of Latino Professionals for America - ALPFA','Cultural and Ethnic',NULL),(25,'Filipino Student Association - FSA','Cultural and Ethnic',NULL),(26,'Navigators - Navs','Faith','Since 1933, The Navigators has been introducing Jesus to those who don\'t know Him and helping those who do know Jesus deepen their relationship with Him. We train others to continue this discipleship process where they live, work, and play. Today, Navigators serve in more than 100 countries.'),(27,'Muslim Student Association - MSA','Faith',NULL),(28,'Baha\'i Association at UGA','Faith',NULL),(29,'A Date to Remember','Gender and Sexuality and Romance',NULL),(30,'Free the Girls','Gender and Sexuality and Romance',NULL),(31,'Lambda Alliance','Gender and Sexuality and Romance',NULL),(32,'Lesbian, Gay, Bisexual and Transgender Resource Center (LGBT)','Gender and Sexuality and Romance','The mission of the LGBT Resource Center is to create an inclusive and sustainable space of self-discovery for the LGBT community within the University of Georgia. We support and affirm every student inclusive of sexual orientation, gender, gender identity, and expression. The LGBT Resource Center serves as a space by which all members of the University of Georgia community can engage and explore issues associated with sexual and gender identities. This mission is achieved by our commitment to an intersectional social justice framework, leadership development, and equity.'),(33,'Ambassadors for Global Awareness','Global Issues',NULL),(34,'AdClub','Media','AdClub is a The University of Georgia’s chapter of the American Advertising Federation.  Since 1954, AdClub has given exceptional, driven students a place to express themselves creatively, meet industry leaders, and give back to their local community. '),(35,'American Marketing Association','Media',NULL),(36,'infUSion Magazine','Media',NULL),(37,'CURE','Medical and Pre Medical',NULL),(38,'Pre-Veterinary Medicine Club at UGA','Medical and Pre Medical',NULL),(39,'Student Veterans Association','Military',NULL),(40,'American Constitution Society','Political Engagement',NULL),(41,'College Republicans','Political Engagement',NULL),(42,'Model African Union','Political Engagement',NULL),(43,'Law Democrats','Political Engagement','The University of Georgia School of Law is regarded as one of the nation\'s top law schools. Our school offers the Juris Doctor degree (J.D.) , the Master of Laws degree (LL.M.), and the Master in the Study of Law degree (M.S.L.) and features a welcoming community in a charming locale.  The challenging curriculum and experienced professors dedicated to teaching the theoretical foundations of law and providing hands-on experience make Georgia Law an excellent place for your legal studies.'),(44,'Undocumented Student Alliance','Political Engagement',NULL),(45,'Sigma Alpha Lambda','Social Sororities and Fraternities',NULL),(46,'Minorities in Tech - MiT','Technology and Engineering','The MIT degree program is designed to produce the much needed but relatively scarce set of IT professionals with strong technical and business skills. The graduates of this unique program have an in-depth understanding of the business implications of Internet technologies, specialize in developing Web based software solutions, and also have numerous hours of project management experience. They are highly motivated professionals who can hit the ground running in a variety of roles ranging from enterprise application developers to e-commerce solution architects and project managers.'),(47,'Association for Computing Machinery - ACM','Technology and Engineering',NULL),(48,'Institute of Electrical and Electronic Engineers - IEEE','Technology and Engineering','The Institute of Electrical and Electronics Engineers (IEEE) Student Branch at the University of Georgia (UGA) was recently established in 2013 to uphold the mission of IEEE of fostering technological excellence and furthering the professional development of students. IEEE UGA strives to accomplish this goal by providing students with opportunities to gain hands-on experiences that exceed the classroom, as well as opportunities to network with professional corporates and other IEEE members and student branches. Through opportunities to work on projects, attend conferences and competitions, and interact with professionals in our desired fields, IEEE UGA is aiming to aid the development of outstanding engineers who will make positive impacts for the benefit of humanity.'),(49,'Aviation Club ','Wilderness and Great Outdoors',NULL),(50,'Outdoor Adventure Club','Wilderness and Great Outdoors','This is a student organization dedicated to planning and participating in affordable outdoor activities. This includes camping, rock climbing, canoeing, hiking, caving, scuba diving, skiing/snowboarding and just about any other outdoor activity.');
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
  `title` varchar(200) DEFAULT NULL,
  `Month` varchar(200) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `club_id` int(11) NOT NULL,
  `location` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `club_id_idx` (`club_id`),
  CONSTRAINT `club_id` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
INSERT INTO `meetings` VALUES (1,'ASU KickBack','Feb',10,2017,21,'Myers Quad','Food, Fun and Dance. Come out and get to meet people both new and old!','5pm'),(2,'Africa Nite','Mar',23,2017,21,'Fine Arts','A night of culture rooted in African Traditions. Come out and enjoy a play, food, and dance.','8pm'),(3,'Africa Nite Auditions','Jan',27,2017,21,'Tate Grand Hall	','If you would like to dance during Africa Nite, come out to audition and learn new moves. Begins at 8! Please be ontime.','8pm'),(4,'Software Meeting','Jan - May',9,2017,48,'Boyd 328','Meeting weekly on Mondays to develop a project for a competition','6pm'),(5,'Game Dev','Mar',10,2017,48,'Boyd 207','Every monday for the month of march, will be teaching about game development','5pm'),(6,'Navs Devotional and Study','Jan - Mar',10,2017,26,'PJ North Aud.','Every tuesday nite starting Jan. 10, join us for fellowship, Bible Study and Snacks!','730pm'),(7,'MLK Retreat','Jan',13,2017,26,'TBA','MLK Retreat for MLK weekend(13-15)','8am'),(8,'LGBT Information Session','Feb ',20,2017,32,'Memorial Hall','Learn about issues LGBT community faces and how you can get involved','5pm'),(9,'Blue v Red Mock Debate','Mar',15,2017,43,'Journalism 5th Floor','Debate between Dem. and Reb. ','7pm'),(10,'Blue v Red Mock Debate Try-outs','Feb ',1,2017,43,'Journalism','If you like to participate in the upcoming debate, come out to audition! Please show up on time','7pm'),(11,'Blue v Red - Practice','Feb ',15,2017,43,'Journalism','Practice for the upcoming debate. This is a closed practice. Only those participating may show!','7pm'),(12,'PWC Informal','Mar',17,2017,46,'MLC 238','Learn out what opportunities PWC has','530pm'),(13,'Interview Speed Rounds','Feb',16,2017,46,'MLC TBA','Best Practices to get impress at your interview and land any job!','6pm'),(14,'TryOuts','Jan',27,2017,11,'TBA','Try out to join our rowing Team','7pm'),(15,'Ramsey Arms Workout','Feb',10,2017,11,'Ramsey - Upstairs','We all know how important strong arms for rowing. This practice is optional, but highly encouraged to build arm strength. We will be upstairs using the rowing machines. Hope to see you there!','7pm'),(16,'Saving Our Planet','May ',1,2017,20,'TBA','Discussing Global Warming around the world, its effects and what we can do about it','6pm'),(17,'Earth Day ','Apr',22,2017,20,'MLC TBA','Will be showing a film about our Earth! Film is TBA','6pm'),(18,'Knit-a-thon','Apr',6,2017,5,'Myers','All day (or as long as you can stay) knit-a-thon. Who ever knits the most will win a prize! ','12pm'),(19,'AdClub Information','Jan ',20,2017,34,'Journalism','Learn more about our club','6pm'),(20,'AdClub - Advertise and Media','Apr',8,2017,34,'Journalism','Where is media and advertisment going in today\'s digital world? Come join the discussion','6pm'),(21,'Camp Out','Mar',11,2017,50,'TBA','Got what it takes to sleep with nature! Come join us for our annual camp nite and enjoy the great outdoors!','7pm');
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
INSERT INTO `student_club` VALUES (1,2,'Navigators - Navs',26),(2,2,'African Student Union - ASU',21),(3,1,'Navigators - Navs',26);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_interest`
--

LOCK TABLES `student_interest` WRITE;
/*!40000 ALTER TABLE `student_interest` DISABLE KEYS */;
INSERT INTO `student_interest` VALUES (1,2,'Arts and Design','2'),(2,2,'Cultural and Ethnic','5'),(3,2,'Faith','6'),(4,2,'Technology and Engineering','14'),(6,1,'Arts and Design','2'),(7,1,'Faith','6');
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
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (53,'tags','gs','gsfgdfg','ga','gs'),(54,'jhg','','','',''),(55,'xvl','jlj','jklj','kljkl','klj'),(56,'kldj','klj','klj','lkj','jlk'),(57,'dsfkj','klj','lkj','lj','klj'),(58,'sdfl','kj','lkj','lkj','lk'),(59,'sdf','kj','lkj','lkj','jl'),(60,'sd','lk','jlk','jlk','kjl'),(61,'sdflkj','lkj','lj','lj',';'),(62,'sfd','lkj','jkl','lkk','lkj'),(63,'sd','klj','jlksdklfjlksdjfkl','lkjkl','l'),(64,'sdfj','hkjh','hk','khkj','klj'),(65,'sdfkl','jlk','lkjsdfljl','jkljlsjkldfjlkjslkdfjlk','sdfkl'),(66,'sdfkl','jkl','jkl','lk','sdfjkh'),(67,'sdf','jhkjshfdkj','kjhsdfkjhkh','kjhfkjsdhkhskhjf','sdhfk'),(68,'kldl','klsjdfl','kjslkj','lksjdfl','kjhdkjf'),(69,'sdf','khsfldk','ksldfjlsjdfkljsdkl','lsdfjlkjlka','KLFJ'),(70,'sdf','ksdf','skldfjl','fsd;kkldsfl','lfkjlksj'),(71,'sdf','sdf','fdsq','sf','f'),(72,'','sdf','fdsq','sf','f'),(73,'sdf','klm','klk','l','kl'),(74,'sdfkl','kllkk`jlk`j','kljlk','klj','jkl'),(75,'sdfk','j','kjh','jkh','jh'),(76,'wklefjlkjlkjkl``','klj','jlk','lkjkl','lkj'),(77,'sdf','kljlk','jlk','jlk','kjl'),(78,'fsdjk','kj','hkjhkj','hkj','kjh'),(79,'sdfs','sdf','fff','f','f'),(80,'sdkfjh','sjdfh','u;lmsnkff','lsfndj','lfk;'),(81,'sdf','f','f','f','f'),(82,'sdf','f','f','f','f'),(83,'sdf','fs','','fs','sdf'),(84,'jksdfh','sljf','nfl','lskjfl','jfl'),(85,'sdf','','sadf','asdf','asdf');
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
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (36,'Freshman','sdfasdfasfdasfd'),(37,'tlillis','aiden'),(38,'f','f'),(39,'f','f'),(40,'f','f'),(41,'f','f'),(42,'tamammama','lalla'),(43,'sfd','f'),(44,'fkj','lkjl'),(45,'ldfk','klsdfk'),(46,'a','a'),(47,'a','a'),(48,'lwjflj','lfjl'),(49,'tagaga`','sf'),(50,'was','not '),(51,'I ','was '),(52,'safs','slkdf'),(53,'fsf','fsgf'),(54,'',''),(55,'klj','lkj'),(56,'kljkl','l'),(57,'lj','lkjkl'),(58,'lkj','lj'),(59,'lkjl','jl'),(60,'jl','kjl'),(61,'lkjdsd',';k;'),(62,'jlj','lj'),(63,'jlksdfkjsdlf','j'),(64,'jhkj','h'),(65,'jlfjl','jkqflkjsljfl'),(66,'jlsdfkjsldkfkl','skdf'),(67,'kjsdhfkj','hksjfhkhskajfh'),(68,'lllllllllllll','kjadhfj'),(69,'lksdjfklsdfjlksdjfl','lksdjflkjsl'),(70,'ksflk','jlfkj'),(71,'fw','f'),(72,'fws',''),(73,'lk','l'),(74,'jlk','jlk'),(75,'kjh','kj'),(76,'jlkjlkj','lkj'),(77,'jlkj','lkjl'),(78,'hkjhkjhkjhkjkhkjhk','jh'),(79,'fffff','f'),(80,';kafj',';qklds;f'),(81,'fsdf','f'),(82,'l',''),(83,'lsa',''),(84,'jflk','jflk'),(85,'sadf','sadf');
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

-- Dump completed on 2016-12-06 10:58:53
