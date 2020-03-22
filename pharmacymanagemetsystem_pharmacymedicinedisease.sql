-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pharmacymanagemetsystem
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `pharmacymedicinedisease`
--

DROP TABLE IF EXISTS `pharmacymedicinedisease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pharmacymedicinedisease` (
  `M_Id` int(11) NOT NULL,
  `M_Disease1` varchar(45) DEFAULT NULL,
  `M_Disease2` varchar(45) DEFAULT NULL,
  `M_Disease3` varchar(45) DEFAULT NULL,
  `M_Disease4` varchar(45) DEFAULT NULL,
  KEY `M_Id_idx` (`M_Id`),
  CONSTRAINT `Symptoms to medicine` FOREIGN KEY (`M_Id`) REFERENCES `pharmacymedicine` (`M_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacymedicinedisease`
--

LOCK TABLES `pharmacymedicinedisease` WRITE;
/*!40000 ALTER TABLE `pharmacymedicinedisease` DISABLE KEYS */;
INSERT INTO `pharmacymedicinedisease` VALUES (1,'Fever','Pain','Inflammation',NULL),(2,'UTI ','Genital Infection','Bacterial Diarrhoeas',NULL),(3,'Allergy','Asthma',NULL,NULL),(4,'HyperTension',NULL,NULL,NULL),(5,'FungalInfections',NULL,NULL,NULL),(6,'BirdFlu','SwineFlu','AntiViral',NULL),(7,'PepticUlcer',NULL,NULL,NULL),(8,'Inflammation','Pain',NULL,NULL),(9,'Pnumonias','Bronchitis','OtitisMedia','Tuberculosis'),(10,'Pnumonias','Meningitis','SAE',NULL),(11,'MAC in AIDS','Urethritis','Sinusitis','OtitisMedia');
/*!40000 ALTER TABLE `pharmacymedicinedisease` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-06 15:13:55
