-- MySQL dump 10.16  Distrib 10.2.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: dbs
-- ------------------------------------------------------
-- Server version	10.2.25-MariaDB

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
-- Table structure for table `emo`
--

DROP TABLE IF EXISTS `emo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emo` (
  `empno` int(11) DEFAULT NULL,
  `empname` varchar(10) DEFAULT NULL,
  `sal` int(11) DEFAULT NULL,
  KEY `e_new_index` (`empname`,`sal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emo`
--

LOCK TABLES `emo` WRITE;
/*!40000 ALTER TABLE `emo` DISABLE KEYS */;
/*!40000 ALTER TABLE `emo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
  `empno` int(10) NOT NULL,
  `ename` varchar(10) DEFAULT NULL,
  `job` varchar(10) DEFAULT NULL,
  `mgr` varchar(10) DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `sal` int(20) DEFAULT NULL,
  `comm` int(10) DEFAULT NULL,
  `deptno` int(10) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (7369,'SMITH','CLERK ','7902 ','0000-00-00',NULL,NULL,NULL);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `patientid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `dateofbirth` date NOT NULL,
  `lastvisitdate` date NOT NULL,
  `nextvisitdate` date DEFAULT NULL,
  PRIMARY KEY (`patientid`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1001,'ah teck','1991-12-31','2012-01-20',NULL),(1002,'kumar','2011-10-29','2012-09-20',NULL),(1003,'ali','2011-01-09','2019-08-05','2020-02-05');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productcode` char(3) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(7,2) NOT NULL DEFAULT 99999.99,
  `supplierid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`productID`),
  KEY `sfk` (`supplierid`),
  CONSTRAINT `sf` FOREIGN KEY (`supplierid`) REFERENCES `suppliers` (`supplierid`) ON UPDATE CASCADE,
  CONSTRAINT `sfk` FOREIGN KEY (`supplierid`) REFERENCES `suppliers` (`supplierid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1001,'pen','pen red',5000,1.23,501),(1002,'pen','pen blue',8000,1.25,502),(1003,'pen','scale camlin',2000,1.25,501),(1006,'pnc','pen red',3000,2.32,502),(1007,'esr','pen green',2890,0.98,503),(1009,'shp','shrpnr blue',6000,1.56,502);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_suppliers`
--

DROP TABLE IF EXISTS `products_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_suppliers` (
  `prodid` int(11) DEFAULT NULL,
  `suppid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_suppliers`
--

LOCK TABLES `products_suppliers` WRITE;
/*!40000 ALTER TABLE `products_suppliers` DISABLE KEYS */;
INSERT INTO `products_suppliers` VALUES (1002,503);
/*!40000 ALTER TABLE `products_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `second_view`
--

DROP TABLE IF EXISTS `second_view`;
/*!50001 DROP VIEW IF EXISTS `second_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `second_view` (
  `suppliers name` tinyint NOT NULL,
  `product name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `second_view1`
--

DROP TABLE IF EXISTS `second_view1`;
/*!50001 DROP VIEW IF EXISTS `second_view1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `second_view1` (
  `suppliers name` tinyint NOT NULL,
  `product name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `second_view2`
--

DROP TABLE IF EXISTS `second_view2`;
/*!50001 DROP VIEW IF EXISTS `second_view2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `second_view2` (
  `suppliers name` tinyint NOT NULL,
  `product name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `second_view3`
--

DROP TABLE IF EXISTS `second_view3`;
/*!50001 DROP VIEW IF EXISTS `second_view3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `second_view3` (
  `supplier name` tinyint NOT NULL,
  `product name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `second_view4`
--

DROP TABLE IF EXISTS `second_view4`;
/*!50001 DROP VIEW IF EXISTS `second_view4`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `second_view4` (
  `supplier name` tinyint NOT NULL,
  `product name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `regno` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL DEFAULT '',
  `degree` varchar(10) NOT NULL DEFAULT '',
  `college` varchar(20) DEFAULT NULL,
  `cgpa` decimal(4,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`regno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('1505145','kavya','BE','VNR',9.60,'1997-09-11'),('1505154','shirisha','BE','CBIT',9.80,'1997-12-16'),('1505178','anya','BE','GNITS',9.50,'1998-08-15'),('1505189','keerthi','BE','CBIT',9.60,'1998-12-04');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `supplier_view`
--

DROP TABLE IF EXISTS `supplier_view`;
/*!50001 DROP VIEW IF EXISTS `supplier_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `supplier_view` (
  `supplier name` tinyint NOT NULL,
  `product name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `supplierid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `phone` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`supplierid`)
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (501,'ms traders','6768988'),(502,'xyz company','45332223'),(503,'qq corp','54321234'),(505,'ash corp','23456789');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `y`
--

DROP TABLE IF EXISTS `y`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `y` (
  `y` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `y`
--

LOCK TABLES `y` WRITE;
/*!40000 ALTER TABLE `y` DISABLE KEYS */;
/*!40000 ALTER TABLE `y` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `second_view`
--

/*!50001 DROP TABLE IF EXISTS `second_view`*/;
/*!50001 DROP VIEW IF EXISTS `second_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `second_view` AS select 'suppliers name' AS `suppliers name`,'product name' AS `product name` from `supplier_view` where 'suppliers name' = 'xyz traders' */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `second_view1`
--

/*!50001 DROP TABLE IF EXISTS `second_view1`*/;
/*!50001 DROP VIEW IF EXISTS `second_view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `second_view1` AS select 'suppliers name' AS `suppliers name`,'product name' AS `product name` from `supplier_view` where 'suppliers name' = 'ms traders' */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `second_view2`
--

/*!50001 DROP TABLE IF EXISTS `second_view2`*/;
/*!50001 DROP VIEW IF EXISTS `second_view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `second_view2` AS select 'suppliers name' AS `suppliers name`,'product name' AS `product name` from `supplier_view` where 'supplier name' = 'ms traders' */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `second_view3`
--

/*!50001 DROP TABLE IF EXISTS `second_view3`*/;
/*!50001 DROP VIEW IF EXISTS `second_view3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `second_view3` AS select 'supplier name' AS `supplier name`,'product name' AS `product name` from `supplier_view` where 'supplier name' = 'ms traders' */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `second_view4`
--

/*!50001 DROP TABLE IF EXISTS `second_view4`*/;
/*!50001 DROP VIEW IF EXISTS `second_view4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `second_view4` AS select `supplier_view`.`supplier name` AS `supplier name`,`supplier_view`.`product name` AS `product name` from `supplier_view` where `supplier_view`.`supplier name` = 'ms traders' */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `supplier_view`
--

/*!50001 DROP TABLE IF EXISTS `supplier_view`*/;
/*!50001 DROP VIEW IF EXISTS `supplier_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `supplier_view` AS select `suppliers`.`name` AS `supplier name`,`product`.`name` AS `product name` from (`product` join `suppliers` on(`suppliers`.`supplierid` = `product`.`supplierid`)) */;
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

-- Dump completed on 2019-08-07 10:17:12
