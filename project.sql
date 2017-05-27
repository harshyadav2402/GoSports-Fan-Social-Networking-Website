-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access` (
  `username` varchar(15) NOT NULL,
  `login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logout` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`username`,`login`),
  CONSTRAINT `access_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO `access` VALUES ('ansal78','2017-01-20 23:06:14','2017-01-21 01:22:23'),('ansal78','2017-04-17 04:33:00','2017-04-17 04:33:00'),('hgn2ns','2017-02-26 15:16:12','2017-02-26 15:56:17'),('hgn2ns','2017-03-17 19:16:17','2017-03-17 23:22:53'),('hy1217','2017-04-19 23:23:41','0000-00-00 00:00:00'),('jayemhat','2017-02-22 22:16:14','2017-02-23 01:50:50'),('jayemhat','2017-04-16 21:14:20','0000-00-00 00:00:00'),('jayemhat','2017-04-16 21:20:56','0000-00-00 00:00:00'),('jayemhat','2017-04-17 03:43:50','0000-00-00 00:00:00'),('jayemhat','2017-04-17 03:47:16','0000-00-00 00:00:00'),('jayemhat','2017-04-17 03:49:37','0000-00-00 00:00:00'),('jayemhat','2017-04-17 03:51:57','0000-00-00 00:00:00'),('jayemhat','2017-04-17 03:55:15','0000-00-00 00:00:00'),('jayemhat','2017-04-17 03:55:48','0000-00-00 00:00:00'),('jayemhat','2017-04-17 03:58:08','0000-00-00 00:00:00'),('jayemhat','2017-04-17 04:00:02','0000-00-00 00:00:00'),('jayemhat','2017-04-17 04:00:42','0000-00-00 00:00:00'),('jayemhat','2017-04-17 04:01:30','0000-00-00 00:00:00'),('jayemhat','2017-04-17 04:02:20','0000-00-00 00:00:00'),('jayemhat','2017-04-17 04:22:54','0000-00-00 00:00:00'),('jayemhat','2017-04-17 04:35:28','0000-00-00 00:00:00'),('jayemhat','2017-04-17 04:38:44','0000-00-00 00:00:00'),('jayemhat','2017-04-17 04:40:10','0000-00-00 00:00:00'),('jayemhat','2017-04-18 00:36:17','0000-00-00 00:00:00'),('jayemhat','2017-04-18 02:47:13','0000-00-00 00:00:00'),('jayemhat','2017-04-18 04:13:13','0000-00-00 00:00:00'),('jayemhat','2017-04-18 04:38:12','0000-00-00 00:00:00'),('jayemhat','2017-04-18 05:07:07','0000-00-00 00:00:00'),('jayemhat','2017-04-18 05:12:58','0000-00-00 00:00:00'),('jayemhat','2017-04-18 08:38:51','0000-00-00 00:00:00'),('jayemhat','2017-04-18 09:03:43','0000-00-00 00:00:00'),('jayemhat','2017-04-18 09:08:31','0000-00-00 00:00:00'),('jayemhat','2017-04-19 23:20:05','0000-00-00 00:00:00'),('jayemhat','2017-04-19 23:45:54','0000-00-00 00:00:00'),('jayemhat','2017-04-20 00:28:14','0000-00-00 00:00:00'),('jayemhat','2017-04-20 00:41:23','0000-00-00 00:00:00'),('jayemhat','2017-04-20 00:49:45','0000-00-00 00:00:00'),('jayemhat','2017-04-20 00:56:42','0000-00-00 00:00:00'),('jayemhat','2017-04-20 01:25:54','0000-00-00 00:00:00'),('jayemhat','2017-04-20 02:21:57','0000-00-00 00:00:00'),('jayemhat','2017-04-21 02:52:57','0000-00-00 00:00:00'),('jayemhat','2017-04-21 07:31:13','0000-00-00 00:00:00'),('jpp257','2017-01-04 00:36:14','2017-01-04 03:50:13'),('kjds65','2017-03-03 00:16:14','2017-03-03 00:52:13'),('ndd656','2017-02-03 00:16:14','2017-02-03 00:52:13'),('ndd656','2017-02-16 00:16:14','2017-02-16 03:15:13'),('smn767','2017-03-10 20:25:23','2017-03-10 21:15:14'),('smn767','2017-03-14 23:16:14','2017-03-15 02:12:23');
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `commenter` varchar(15) NOT NULL,
  `commented_on` varchar(15) NOT NULL,
  `body` varchar(200) DEFAULT NULL,
  `time_comment` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`commenter`,`commented_on`,`time_comment`),
  KEY `commented_on` (`commented_on`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`commenter`) REFERENCES `users` (`username`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`commented_on`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES ('ansal78','gvg668','Lets play this week...','2017-03-10 17:18:55'),('gogi892','jpp257','Did you watch yesterdays cricket match??','2017-03-22 20:09:05'),('gvg668','ansal78','How are you?','2017-02-27 15:09:08'),('hgn2ns','gvg668','Are you free on Tuesday evening to play?','2017-03-21 00:21:53'),('jayemhat','ansal78','Looking nice in this pic..','2017-03-16 02:15:13'),('jayemhat','gogi892','Where did you take this pic??','2017-03-16 20:09:05'),('jayemhat','jpp257','Lets meet this weekend for match','2017-03-21 03:22:05'),('jpp257','jayemhat','Which jersey are you wearing?','2017-02-02 21:09:05'),('kjds65','gvg668','Nice pic..!!','2017-03-22 20:09:05'),('ndd656','hgn2ns','Your profile looks interesting!!! Nice work..!','2017-02-10 15:19:09');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_diary`
--

DROP TABLE IF EXISTS `comments_diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_diary` (
  `entry_id` int(11) NOT NULL,
  `author` varchar(15) NOT NULL,
  `commenter` varchar(15) NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`entry_id`,`author`,`commenter`,`comment_time`),
  KEY `commenter` (`commenter`),
  KEY `author` (`author`),
  CONSTRAINT `comments_diary_ibfk_1` FOREIGN KEY (`commenter`) REFERENCES `users` (`username`),
  CONSTRAINT `comments_diary_ibfk_2` FOREIGN KEY (`entry_id`) REFERENCES `diary` (`entry_id`),
  CONSTRAINT `comments_diary_ibfk_3` FOREIGN KEY (`author`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_diary`
--

LOCK TABLES `comments_diary` WRITE;
/*!40000 ALTER TABLE `comments_diary` DISABLE KEYS */;
INSERT INTO `comments_diary` VALUES (1,'jayemhat','ansal78','2017-03-25 05:12:02','Hello'),(2,'ansal78','gvg668','2017-03-22 15:12:13','Hope is all Arsenal has got...'),(2,'ansal78','jayemhat','2017-02-22 23:10:23','Me too!!'),(3,'smn767','ansal78','2017-03-10 22:10:22','Yeah..Its a Red Hot season..!!'),(3,'smn767','jayemhat','2017-03-11 00:05:13','Its the best season'),(5,'ndd656','hgn2ns','2017-02-03 02:04:00','I play, lets plan and meet!!'),(5,'ndd656','hy1217','2017-02-03 00:39:24','I play sometimes'),(8,'smn767','jayemhat','2017-03-26 05:12:02','Count me in!!'),(10,'jpp257','jayemhat','2017-03-12 06:12:02','In!!'),(10,'jpp257','ndd656','2017-03-13 05:25:12','Me too2');
/*!40000 ALTER TABLE `comments_diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diary`
--

DROP TABLE IF EXISTS `diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diary` (
  `entry_id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `posted_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `privacy` int(11) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` blob,
  `video` longblob,
  PRIMARY KEY (`entry_id`),
  KEY `username` (`username`),
  CONSTRAINT `diary_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diary`
--

LOCK TABLES `diary` WRITE;
/*!40000 ALTER TABLE `diary` DISABLE KEYS */;
INSERT INTO `diary` VALUES (1,'jayemhat','This is my first post!!','2017-02-22 22:50:14',1,'NYC','Test','',''),(2,'ansal78','I hope Arsenal wins Champions League this time!!','2017-01-20 23:46:12',1,'Florida','Arsenal','',''),(3,'smn767','Barclays Premier League is getting exciting with every match...','2017-03-10 20:29:23',2,'NYC','BPL','',''),(4,'jayemhat','Come on India!! Go for it!','2017-02-22 22:55:14',3,'Mumbai','GO INDIA..!','',''),(5,'ndd656','Any tennis fans over here??','2017-02-03 00:29:14',1,'NYC','Wanna play?','',''),(6,'gogi892','I miss playing soccer!! Lets meet and plan','2017-02-03 15:29:22',1,'NYC','Play Play Play!!!','',''),(7,'hgn2ns','Guys check out this link, ICC World Cup Schedule https://www.google.com/url?sa=FQjCNH','2017-03-13 21:28:22',1,'Mumbai','World Cup is Back...','',''),(8,'smn767','I have formed a group of BPL Soccer fans and we are meeting this weekend at a local Sports Cafe. Anyone care to join us?','2017-03-25 15:18:28',2,'NYC','Arsenal vs City','',''),(9,'kjds65','I think I am the only one here interested in playing Badminton','2017-03-22 14:28:28',2,'Jersey','Match?','',''),(10,'jpp257','We are playing Cricket in Central park this weekend. Comment if you waanna join us...','2017-03-10 14:09:28',1,'NYC','Join us','',''),(11,'jayemhat','sdadasdada','2017-04-21 03:15:53',2,'New York','Test Post',NULL,NULL),(12,'jayemhat','sdadasdsnmsabsdajh','2017-04-21 03:35:37',3,'New York','tetstetsttsw',NULL,NULL),(13,'jayemhat','masdjasdjsd','2017-04-21 03:35:50',1,'New York','testffdasdyhj',NULL,NULL),(14,'jayemhat','Manchester City for the Title Race!!! 10 points behind Chelsea with around 8 matches left to play, Pep has some new strategies in mind! I hope they win the League! #MCFC','2017-04-21 03:47:09',1,'New York','English Premier League',NULL,NULL);
/*!40000 ALTER TABLE `diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `username` varchar(15) NOT NULL,
  `friend_id` varchar(15) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `request_sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action taken` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `privacy` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`,`friend_id`),
  KEY `fk_friend` (`friend_id`),
  CONSTRAINT `fk_friend` FOREIGN KEY (`friend_id`) REFERENCES `users` (`username`),
  CONSTRAINT `friendship` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES ('ansal78','gvg668',2,'2017-02-15 19:15:13','2017-02-20 15:19:31',3),('gogi892','ansal78',2,'2017-03-31 06:55:57','2017-03-31 06:56:07',2),('gogi892','jayemhat',2,'2017-03-31 06:54:49','2017-03-31 06:54:49',1),('gvg668','smn767',2,'2017-03-26 18:47:47','2017-03-28 18:47:54',1),('hgn2ns','gvg668',2,'2017-03-16 02:15:13','2017-03-31 14:17:31',1),('hgn2ns','ndd656',2,'2017-03-31 00:27:01','2017-04-01 00:27:05',1),('jayemhat','ansal78',2,'2017-03-11 00:05:13','2017-03-16 00:15:31',1),('jayemhat','gvg668',2,'2017-03-15 23:05:13','2017-03-16 00:15:31',1),('jayemhat','hgn2ns',2,'2017-03-31 06:52:30','2017-03-31 06:52:30',2),('ndd656','jayemhat',1,'2017-03-21 20:17:23',NULL,1),('ndd656','smn767',3,'2017-03-31 07:35:40','2017-03-31 07:35:40',2);
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `friends_diary`
--

DROP TABLE IF EXISTS `friends_diary`;
/*!50001 DROP VIEW IF EXISTS `friends_diary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `friends_diary` AS SELECT 
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `entry_id`,
 1 AS `username`,
 1 AS `title`,
 1 AS `description`,
 1 AS `posted_on`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `friends_diary_self`
--

DROP TABLE IF EXISTS `friends_diary_self`;
/*!50001 DROP VIEW IF EXISTS `friends_diary_self`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `friends_diary_self` AS SELECT 
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `entry_id`,
 1 AS `username`,
 1 AS `title`,
 1 AS `description`,
 1 AS `posted_on`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `username` varchar(15) NOT NULL,
  `profile_image` blob,
  PRIMARY KEY (`username`),
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `username` varchar(15) NOT NULL,
  `entry_id` int(11) NOT NULL,
  PRIMARY KEY (`username`,`entry_id`),
  KEY `entry_id` (`entry_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`entry_id`) REFERENCES `diary` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES ('hy1217',1),('jayemhat',2),('jpp257',2),('jayemhat',3),('ansal78',4),('gogi892',4),('gogi892',5),('hy1217',5),('kjds65',5),('hy1217',6);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `city` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `city` (`city`,`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('Miami','United States','Florida','Celestien Ave',7302,'Beach'),('Boston','United States','Massachusetts','Buffalo Ave',45211,'Boston25'),('Brooklyn','United States','New York','Avenue S',11223,'NYC'),('Mumbai','India','Mumbai','CST Marg',400093,'VT'),('Manhattan','United States','New York','Grove Street',10712,'WSQ');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `my_friends`
--

DROP TABLE IF EXISTS `my_friends`;
/*!50001 DROP VIEW IF EXISTS `my_friends`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `my_friends` AS SELECT 
 1 AS `username`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `username` varchar(15) NOT NULL,
  `profile` varchar(500) DEFAULT NULL,
  `time_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`),
  CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES ('ansal78','I am a sports enthusiast. And I am currently planning an Intramural event in college','2017-03-30 19:31:33'),('gogi892','Interested in playing and watching Soccer plus Cricket','2017-02-28 21:17:14'),('gvg668','I am not into Sports too much. But I love playing Soccer and Cricket','2017-02-05 15:20:14'),('hgn2ns','Started working as an assistant referee at Intramurals','2017-03-03 19:18:24'),('hy1217','This is your default profile!!',NULL),('jayemhat','I like playing Soccer. Arsenal is my favourite team','2017-02-26 01:17:14'),('jpp257','This is your default profile!!',NULL),('kjds65','This is your default profile!!',NULL),('ndd656','I played Tennis at national level. Mail me if you want to play sometime.','2017-02-26 01:17:14'),('smn767','Only Soccer...play watch play repeat','2017-03-02 03:25:14');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_url`
--

DROP TABLE IF EXISTS `user_url`;
/*!50001 DROP VIEW IF EXISTS `user_url`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_url` AS SELECT 
 1 AS `username`,
 1 AS `URL`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `Interests` varchar(100) DEFAULT NULL,
  `privacy` int(11) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `photo` longblob,
  PRIMARY KEY (`username`),
  KEY `city` (`city`,`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Anuja','Salunkhe','ansal78','ansals23',25,'Orlando','ansalunk@yahoo.com','Soccer, Cricket',3,'United States',NULL,NULL),('Anuja','Salunkhe','ansal9990','Anuja11',26,'Nebbi','anuja@gmail.com','Soccer',1,'Uganda','Northern Region',NULL),('sda','ds','dasdsd','dfsd',22,'Iballe','fsdfs@fdsfs','dsdas',1,'Albania','Shkoder',NULL),('sada','dsd','ddsv','dfdsf',22,'Gjellerup Kirkeby','jay@gmail.com','D',1,'Denmark','Central Jutland',''),('Saurabh','Gokhale','gogi892','gokhal213',26,'New Jersey','gogi@gmail.com','Cricket, Soccer',3,'United States',NULL,NULL),('Gaurang','Gatlewar','gvg668','gaugau123',22,'Boston','gvg556@gmail.com','Soccer, Cricket',2,'United States',NULL,NULL),('Hari','Nair','hgn2ns','hgnan123',27,'Mumbai','hn565@gmail.com','Chess',1,'India',NULL,NULL),('Harsh','Yadav','hy1217','harsh123',23,'New York','harsh.yadav@gmail.com','Cricket',3,'United States',NULL,NULL),('Jayesh','Mhatre','jayemhat','jayesh123',25,'New York','jayesh@gmail.com','Soccer, Cricket, Tennis',2,'United States','New York',''),('Jayesh','Mhatre','jayemhat26','F@bregas',25,'New York','jkm437@nyu.edu','3472089620',1,'United States',NULL,NULL),('Jayesh','Mhatre','jayes','jayesh',26,'Hoefn','jayeshmhatre@gmail.com','Soccer',NULL,'Iceland','East',NULL),('Jayesh','Mhatre','jhjhajs','F@bregas',32,'Davyd-Haradok','jayesh@gmail.com','Soccer',2,'Belarus','Brest',NULL),('Jayesh','Patil','jpp257','jaypaty23',20,'Arizona','jppatil@hotmail.com','Cricket, Squash, Badminton',1,'United States',NULL,NULL),('Kshitija','Deshmukh','kjds65','kjd1563s',22,'Philadelphia','kshitje128@gmail.com','Badminton',1,'United States',NULL,NULL),('Nitish','Dabbas','ndd656','niti78ds',24,'Delhi','ndabbas@hotmail.com','Cricket, Badminton, Tennis',1,'India',NULL,NULL),('Ja','Mh','sadad','gsdhda',22,'Herat','ja@gmail.com','s',1,'Angola','Herat','[tmp_name]'),('Jssy','sa','sdad','sdd',22,'Lezhe','ds@gmail.com','ss',1,'Albania','Lezhe','[tmp_name]'),('ds','dfsdf','sfs','dfdsf',33,'Fushe-Muhurr','dfsf@gmail.com','S',1,'Albania','Diber',''),('Shyam','Nair','smn767','shyamj123',22,'New York','smn767@gmail.com','Soccer',2,'United States',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'project'
--

--
-- Dumping routines for database 'project'
--
/*!50003 DROP FUNCTION IF EXISTS `accept_friend_request` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `accept_friend_request`(_username varchar(15), _friend_id varchar(15), _status integer, _privacy integer) RETURNS int(11)
begin
update friends set status=_status and request_accepted=now() and privacy=_privacy where username=_username and friend_id=_friend_id;
return 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `add_comment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `add_comment`(username varchar(15), commenter varchar(15), body varchar(200)) RETURNS int(11)
begin
insert into comments values (commenter, username, body, now());
return 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `default_user_profile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `default_user_profile`(_username varchar(15)) RETURNS int(11)
begin
insert into profile (username, profile) values (_username, 'This is your default profile!!');
return 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `delete_diaryentry` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `delete_diaryentry`(_username varchar(15), _entry_id integer) RETURNS int(11)
begin
delete from diary where _username=username and entry_id=_entry_id;
return 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `delete_friendship_request` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `delete_friendship_request`(_username varchar(15), _friend_id varchar(15)) RETURNS int(11)
begin
delete from friends where _username=username and friend_id=_friend_id;
return 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `dislike` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `dislike`(_username varchar(15), _entry_id integer) RETURNS int(11)
begin
delete from likes where username=_username and entry_id=_entry_id;
return 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `input_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `input_login`(_username varchar(15)) RETURNS int(11)
begin
insert into access (username, login) values (_username, now());
return 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `insert_diary_entry` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `insert_diary_entry`(_username varchar(15), title varchar(100), description varchar(200), privacy integer, tagline varchar(50), location varchar(20)) RETURNS int(11)
begin
insert into diary (username, title, description, posted_on, privacy, tagline, location) values (_username, title, description, now(), privacy, tagline, location);
return 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `insert_user_profile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `insert_user_profile`(_username varchar(15), _body character varying(500)) RETURNS int(11)
begin
insert into profile values (_username, _body, now());
return 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `set_logout_time` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `set_logout_time`(_username varchar(15)) RETURNS int(11)
begin
update access set logout=now() where username=_username;
return 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `update_user_profile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `update_user_profile`(_username varchar(15), _body character varying(500)) RETURNS int(11)
begin
update profile set body=_body and time_updated=now() where username=_username;
return 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkLogin`(IN _username VARCHAR(15), IN _password VARCHAR(15))
BEGIN
DECLARE countresult INT DEFAULT 0;
SET @countresult = (SELECT COUNT(*) FROM users WHERE username = _username and password = _password);
IF (@countresult > 0) THEN
    SELECT firstname, lastname, emailid FROM users WHERE username = _username;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `friendcount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `friendcount`(IN `_username` INT)
BEGIN
SELECT COUNT(*) FROM friends WHERE username = _username or friend_id=_username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `friendshipStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `friendshipStatus`(IN `user_1` INT, IN `user_2` INT)
BEGIN
SELECT status FROM friends WHERE (username = user_id_1 and friend_id = user_id_2) or (username = user_id_2 and friend_id = user_id_1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `likecount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `likecount`(IN `_entry_id` INT)
BEGIN
SELECT COUNT(*) FROM likes WHERE entry_id = _entry_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `friends_diary`
--

/*!50001 DROP VIEW IF EXISTS `friends_diary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `friends_diary` AS select `u`.`FirstName` AS `FirstName`,`u`.`LastName` AS `LastName`,`d`.`entry_id` AS `entry_id`,`d`.`username` AS `username`,`d`.`title` AS `title`,`d`.`description` AS `description`,`d`.`posted_on` AS `posted_on` from ((`users` `u` join `diary` `d` on((`u`.`username` = `d`.`username`))) join `friends` `f` on((`d`.`username` = `f`.`friend_id`))) where (`f`.`username` = 'jayemhat') union all select `u`.`FirstName` AS `FirstName`,`u`.`LastName` AS `LastName`,`d`.`entry_id` AS `entry_id`,`d`.`username` AS `username`,`d`.`title` AS `title`,`d`.`description` AS `description`,`d`.`posted_on` AS `posted_on` from ((`users` `u` join `diary` `d` on((`u`.`username` = `d`.`username`))) join `friends` `f` on((`d`.`username` = `f`.`username`))) where (`f`.`friend_id` = 'jayemhat') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `friends_diary_self`
--

/*!50001 DROP VIEW IF EXISTS `friends_diary_self`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `friends_diary_self` AS select `u`.`FirstName` AS `FirstName`,`u`.`LastName` AS `LastName`,`d`.`entry_id` AS `entry_id`,`d`.`username` AS `username`,`d`.`title` AS `title`,`d`.`description` AS `description`,`d`.`posted_on` AS `posted_on` from ((`users` `u` join `diary` `d` on((`u`.`username` = `d`.`username`))) join `friends` `f` on((`d`.`username` = `f`.`friend_id`))) where (`f`.`username` = 'jayemhat') union all select `u`.`FirstName` AS `FirstName`,`u`.`LastName` AS `LastName`,`d`.`entry_id` AS `entry_id`,`d`.`username` AS `username`,`d`.`title` AS `title`,`d`.`description` AS `description`,`d`.`posted_on` AS `posted_on` from ((`users` `u` join `diary` `d` on((`u`.`username` = `d`.`username`))) join `friends` `f` on((`d`.`username` = `f`.`username`))) where (`f`.`friend_id` = 'jayemhat') union all select `u`.`FirstName` AS `FirstName`,`u`.`LastName` AS `LastName`,`d`.`entry_id` AS `entry_id`,`d`.`username` AS `username`,`d`.`title` AS `title`,`d`.`description` AS `description`,`d`.`posted_on` AS `posted_on` from (`users` `u` join `diary` `d` on((`u`.`username` = `d`.`username`))) where (`d`.`username` = 'jayemhat') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `my_friends`
--

/*!50001 DROP VIEW IF EXISTS `my_friends`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `my_friends` AS select `u`.`username` AS `username` from (`users` `u` join `friends` `f` on((`u`.`username` = `f`.`friend_id`))) where ((`f`.`username` = 'jayemhat') and (`f`.`status` = '2')) union all select `u`.`username` AS `username` from (`users` `u` join `friends` `f` on((`u`.`username` = `f`.`username`))) where ((`f`.`friend_id` = 'jayemhat') and (`f`.`status` = '2')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_url`
--

/*!50001 DROP VIEW IF EXISTS `user_url`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_url` AS (select `users`.`username` AS `username`,('http://gosport.com/' + `users`.`username`) AS `URL` from `users`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-22 15:17:07
