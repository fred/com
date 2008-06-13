-- MySQL dump 10.11
--
-- Host: localhost    Database: comizu
-- ------------------------------------------------------
-- Server version	5.0.51a-log

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
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `link_title` varchar(255) default NULL,
  `menu_order` int(11) default '10',
  `permalink` varchar(255) default NULL,
  `body` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','home',1,'home','<p>\r\nComizu is a VSAT Installations and Maintenance Service Provider focused to give assistance on the Emerging Markets around the world.\r\n</p>\r\n\r\n<p>\r\nBased in Bangkok (Thailand) we managed to hire and train local partners on different locations in Asia and Africa to respond to your requirements with the most effective cost - benefit solution.\r\n</p>','2008-06-13 16:09:01','2008-06-13 16:10:41'),(2,'Profile','Profile',2,'profile','<p>\r\nComizu started on 1997 installing VSAT Systems for Satellite Companies in Argentina.\r\n</p>\r\n\r\n<p>\r\nOn 2004 we were hired to help a US Company installing and commissioning 140 sites for a UN dependency customer all around Africa and Asia.\r\n</p>\r\n\r\n<p>\r\nFrom that time on; and during all these years working abroad we learned how to build a VSAT Installers network, finding the best local technicians Training them and providing them with all the necessary tools and Equipments to perform an end to end Satellite Earth Station installation on site.\r\n</p>\r\n\r\n<p>\r\nWe apply all our expertise and know-how not only in technical matters but on  specialized human resources as well to guarantee our customers, offering the most updated developments and high quality technology in telecommunications.\r\nFurthermore, we are always focused to provide with the best technical solution at the lowest prices keeping an eye on expenses, advising prospects which is the most suitable implementation regarding their growing policies to get the best chance.\r\n</p>','2008-06-13 15:48:24','2008-06-13 15:48:24'),(3,'Mission','Mission',3,'mission','<p>\r\nOur concern is to provide an end to end solution for your Company. \r\nWe have all the technical and human resources ready to be used as soon \r\nas we get to an agreement.\r\n</p>\r\n\r\n<p>\r\nClear goals to achieve the best results in Telecommunications implementations are our must.\r\nOur goal is to become the best Company as a VSAT Service Provider abroad, handling our work quality efficiently.\r\n</p>','2008-06-13 15:51:01','2008-06-13 15:51:01'),(5,'Services','Services',5,'services','Services','2008-06-13 15:59:35','2008-06-13 15:59:35');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2008-06-13 16:11:02
