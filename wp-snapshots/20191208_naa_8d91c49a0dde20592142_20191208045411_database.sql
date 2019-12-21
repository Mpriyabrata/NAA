/* DUPLICATOR-LITE (MYSQL-DUMP BUILD MODE) MYSQL SCRIPT CREATED ON : 2019-12-08 04:55:09 */

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_Aalb_Asin_Response` (
  `asin` varchar(10) NOT NULL,
  `marketplace` varchar(5) NOT NULL,
  `item_lookup_response` text,
  `last_updated_time` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `last_access_time` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`asin`,`marketplace`),
  KEY `index_last_updated_time` (`last_updated_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_Aalb_Asin_Response` WRITE;
/*!40000 ALTER TABLE `wp_Aalb_Asin_Response` DISABLE KEYS */;
mysqldump: Couldn't execute 'SELECT COLUMN_NAME,                       JSON_EXTRACT(HISTOGRAM, '$."number-of-buckets-specified"')                FROM information_schema.COLUMN_STATISTICS                WHERE SCHEMA_NAME = 'notesandall' AND TABLE_NAME = 'wp_Aalb_Asin_Response';': Unknown table 'COLUMN_STATISTICS' in information_schema (1109)
/*!40000 ALTER TABLE `wp_Aalb_Asin_Response` ENABLE KEYS */;
UNLOCK TABLES;


/* Duplicator WordPress Timestamp: 2019-12-08 04:55:09*/
/* DUPLICATOR_MYSQLDUMP_EOF */
