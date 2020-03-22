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
-- Table structure for table `pharmacymedicine`
--

DROP TABLE IF EXISTS `pharmacymedicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pharmacymedicine` (
  `M_Id` int(11) NOT NULL AUTO_INCREMENT,
  `M_Name` varchar(45) NOT NULL,
  `M_Composition` varchar(45) NOT NULL,
  `M_Quantity` int(11) NOT NULL,
  `M_ExpDate` varchar(45) NOT NULL,
  `M_MfgDate` varchar(45) NOT NULL,
  `M_Rate` varchar(45) NOT NULL,
  PRIMARY KEY (`M_Id`),
  UNIQUE KEY `M_Id_UNIQUE` (`M_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacymedicine`
--

LOCK TABLES `pharmacymedicine` WRITE;
/*!40000 ALTER TABLE `pharmacymedicine` DISABLE KEYS */;
INSERT INTO `pharmacymedicine` VALUES (1,'Crocin','Paracetamol',10,'20/12/2020','10/09/2017','17.00'),(2,'Norflox TZ','Norfloxacin',10,'20/10/2018','09/10/2016','8.50'),(3,'cetrizine','Cetrizine',20,'7/2/2019','17/11/2016','10.00'),(4,'Petresin','Vasopressing',5,'1/1/2020','19/05/2017','14.30'),(5,'Funazole','Fluconazole',12,'22/4/2019','15/01/2018','12.10'),(6,'Tamiflu','Oseltamivir Phosphate',15,'19/10/2018','3/03/2018','5.60'),(7,'Zenetl','Rantidine',30,'30/11/2020','9/01/2018','4.25'),(8,'Dolokind','Paracetamol',25,'2/12/2018','14/02/2018','7.50'),(9,'Moxiflox','Moxifloxacin',11,'10/5/2019','11/10/2017','8.90'),(10,'Mikacin','Amikacin',2,'15/8/2019','31/12/2017','12.30'),(11,'Azithral','Azithromycin',6,'25/11/2018','30/01/2018','10.20');
/*!40000 ALTER TABLE `pharmacymedicine` ENABLE KEYS */;
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
