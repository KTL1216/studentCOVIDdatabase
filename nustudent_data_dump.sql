-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: nustudent
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `clubtype`
--

DROP TABLE IF EXISTS `clubtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubtype` (
  `typeofclub` varchar(64) NOT NULL,
  `weeklyfrequency` int DEFAULT NULL,
  `inperson` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`typeofclub`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubtype`
--

LOCK TABLES `clubtype` WRITE;
/*!40000 ALTER TABLE `clubtype` DISABLE KEYS */;
INSERT INTO `clubtype` VALUES ('Educational',2,'no'),('Social',1,'yes'),('Sports',3,'yes');
/*!40000 ALTER TABLE `clubtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dininghall`
--

DROP TABLE IF EXISTS `dininghall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dininghall` (
  `dininghallname` varchar(64) NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`dininghallname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dininghall`
--

LOCK TABLES `dininghall` WRITE;
/*!40000 ALTER TABLE `dininghall` DISABLE KEYS */;
INSERT INTO `dininghall` VALUES ('International Village',260),('Self cooking',2),('Stetson East',210);
/*!40000 ALTER TABLE `dininghall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym`
--

DROP TABLE IF EXISTS `gym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gym` (
  `gymname` varchar(64) NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`gymname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym`
--

LOCK TABLES `gym` WRITE;
/*!40000 ALTER TABLE `gym` DISABLE KEYS */;
INSERT INTO `gym` VALUES ('Do not go to gym',0),('Marino',170),('SquashBusters',110);
/*!40000 ALTER TABLE `gym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homestate`
--

DROP TABLE IF EXISTS `homestate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homestate` (
  `nameofstate` varchar(64) NOT NULL,
  `totalcovidcases` int NOT NULL,
  `population` int NOT NULL,
  PRIMARY KEY (`nameofstate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homestate`
--

LOCK TABLES `homestate` WRITE;
/*!40000 ALTER TABLE `homestate` DISABLE KEYS */;
INSERT INTO `homestate` VALUES ('Alabama',552000,4921532),('Alaska',65390,582328),('Arizona',65390,731158),('Arkansas',333000,3030522),('California',3720000,39368078),('Colorado',492000,5807719),('Connecticut',329000,3557006),('Delaware',101000,986809),('Florida',2170000,21733312),('Georgia',1060000,10710017),('Hawaii',31715,1407006),('Idaho',185000,1826913),('Illinois',1310000,12587530),('Indiana',711000,6754953),('Iowa',360000,3163561),('Kansas',308000,2913805),('Kentucky',441000,4477251),('Louisiana',452000,4645318),('Maine',57285,1350141),('Maryland',436000,6055802),('Massachusetts',673000,6893574),('Michigan',873000,9966555),('Minnesota',556000,5657342),('Mississippi',309000,2966786),('Missouri',589000,6151548),('Montana',107000,1080577),('Nebraska',216000,1937552),('Nevada',310000,3138259),('New Hampshire',91586,1366275),('New Jersey',979000,8882371),('New Mexico',195000,2106319),('New York',2000000,19336776),('North Carolina',950000,10600823),('North Dakota',106000,765309),('Ohio',1050000,11693217),('Oklahoma',445000,3980783),('Oregon',175000,4241507),('Other',0,0),('Pennsylvania',1110000,12783254),('Rhode Island',144000,1057125),('South Carolina',569000,5218040),('South Dakota',121000,892717),('Tennessee',816000,6886834),('Texas',2850000,29360759),('Utah',393000,3249879),('Vermont',22016,623347),('Virginia',646000,8590563),('Washington',387000,7693612),('West Virginia',149000,1784787),('Wisconsin',652000,5832655),('Wyoming',57267,582328);
/*!40000 ALTER TABLE `homestate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `housing`
--

DROP TABLE IF EXISTS `housing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `housing` (
  `housingname` varchar(64) NOT NULL,
  `roomsize` int NOT NULL,
  PRIMARY KEY (`housingname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housing`
--

LOCK TABLES `housing` WRITE;
/*!40000 ALTER TABLE `housing` DISABLE KEYS */;
INSERT INTO `housing` VALUES ('Dorm Double',2),('Dorm Single',1),('Dorm Suite',4),('LP Double',2),('LP Single',1),('LP Suite',4),('Off Campus Double',2),('Off Campus Single',1),('Off Campus Suite',4);
/*!40000 ALTER TABLE `housing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `nameofmajor` varchar(64) NOT NULL,
  `college` varchar(64) NOT NULL,
  PRIMARY KEY (`nameofmajor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES ('Arts, Media, and Design','College of Arts'),('Business','D’Amore-McKim'),('Computer Science','Khoury'),('Engineering','CoE'),('Health Science','Bouve'),('Law','School of Law'),('Science','College of Science'),('Social Science and Humanities','College of Social Sciences and Humanities');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `nuid` int NOT NULL,
  `studentname` varchar(64) NOT NULL,
  `housing` varchar(64) NOT NULL,
  `state` varchar(64) NOT NULL,
  `major` varchar(64) NOT NULL,
  `dining` varchar(64) DEFAULT NULL,
  `club` varchar(64) DEFAULT NULL,
  `gym` varchar(64) DEFAULT NULL,
  `covidDate` date NOT NULL,
  `contact` varchar(64) NOT NULL,
  PRIMARY KEY (`nuid`),
  KEY `student_housingname_fk1` (`housing`),
  KEY `student_homestate_fk1` (`state`),
  KEY `student_major_fk1` (`major`),
  KEY `student_dininghallpref_fk1` (`dining`),
  KEY `student_clubtype_fk1` (`club`),
  KEY `student_gympref_fk1` (`gym`),
  CONSTRAINT `student_clubtype_fk1` FOREIGN KEY (`club`) REFERENCES `clubtype` (`typeofclub`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_dininghallpref_fk1` FOREIGN KEY (`dining`) REFERENCES `dininghall` (`dininghallname`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_gympref_fk1` FOREIGN KEY (`gym`) REFERENCES `gym` (`gymname`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_homestate_fk1` FOREIGN KEY (`state`) REFERENCES `homestate` (`nameofstate`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_housingname_fk1` FOREIGN KEY (`housing`) REFERENCES `housing` (`housingname`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_major_fk1` FOREIGN KEY (`major`) REFERENCES `major` (`nameofmajor`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1111,'test3','Off Campus Double','Hawaii','Arts, Media, and Design','International Village','Sports','Do not go to gym','2021-04-07','No'),(1234,'test2','LP Double','Alabama','Business','Stetson East','Educational','SquashBusters','2021-04-16','Yes'),(3124,'test1','Dorm Double','California','Computer Science','Self cooking','Social','Marino','2021-04-18','No');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'nustudent'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 21:08:52
