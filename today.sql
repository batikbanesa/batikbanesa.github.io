-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: banesa
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Ekonomi','2021-10-29 07:02:43'),(2,'Medium','2021-10-29 07:02:43'),(3,'Premium','2021-10-29 07:02:43');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `media_id` int NOT NULL AUTO_INCREMENT,
  `media_title` varchar(45) DEFAULT NULL,
  `media_desc` text,
  `media_link` text,
  `media_seen` int DEFAULT '1',
  `media_thumb` text,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (5,'jawapos','Irma Russanti, Dosen Unesa Berinovasi Batik Berpewarna Tanah','https://www.jawapos.com/features/21/06/2017/irma-russanti-dosen-unesa-berinovasi-batik-berpewarna-tanah/',3,'1.png','2021-11-02 05:30:01'),(6,'unesa','Irma Russanti, Dosen PKK Pemilik 10 HaKI','https://www.unesa.ac.id/irma-russanti-dosen-pkk-pemilik-10-haki',1,'2.png','2021-11-02 05:30:01'),(7,'Google Play Books','Exploration Of Soil Batik','https://play.google.com/store/books/details/Exploration_Of_Soil_Batik?id=hDHTDwAAQBAJ&gl=US',1,'3.png','2021-11-02 05:30:01'),(8,'Google Play Books','Desain Kebaya Sunda','https://www.google.co.id/books/edition/Desain_Kebaya_Sunda/emmMDwAAQBAJ?hl=en&gbpv=0',1,'4.png','2021-11-02 05:30:01'),(9,'Google Play Books','Eksplorasi Batik Tanah','https://www.google.co.id/books/edition/Eksplorasi_Batik_Tanah/MbKLDwAAQBAJ?hl=en&sa=X&ved=2ahUKEwj9scrRyeTzAhUYfH0KHThADZ0QiqUDegQIBhAC',1,'5.png','2021-11-02 05:30:01'),(10,'Google Play Books','Sejarah Perkembangan Kebaya Sunda','https://www.google.co.id/books/edition/Sejarah_Perkembangan_Kebaya_Sunda/Im-LDwAAQBAJ?hl=en&sa=X&ved=2ahUKEwif8eLnyeTzAhUCgUsFHW-EDX0QiqUDegQIBRAH',1,'6.png','2021-11-02 05:30:01'),(11,'Google Play Books','History of The Development of Kebaya Sunda','https://www.google.co.id/books/edition/History_of_The_Development_of_Kebaya_Sun/pOS3DwAAQBAJ?hl=en&gbpv=0',1,'7.png','2021-11-02 05:30:01'),(12,'jawapos','Usaha Irma Russanti Ciptakan Kreasi Batik dengan Pewarna Tanah','https://www.jawapos.com/surabaya/02/11/2021/usaha-irma-russanti-ciptakan-kreasi-batik-dengan-pewarna-tanah/',2,'8.png','2021-11-02 05:30:01');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_table`
--

DROP TABLE IF EXISTS `new_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_table` (
  `visitor_id` int NOT NULL AUTO_INCREMENT,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_table`
--

LOCK TABLES `new_table` WRITE;
/*!40000 ALTER TABLE `new_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci,
  `product_category` int DEFAULT '1',
  `product_img` text COLLATE utf8mb4_unicode_ci,
  `product_stock` int DEFAULT '1',
  `product_seen` int DEFAULT '1',
  `product_price` int DEFAULT '0',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_id_UNIQUE` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Banesa Indigo Med','2 Warna Alam',2,'1.jpg',1,0,0,'2021-10-31 13:26:21'),(2,'Banesa Mix Med','4 Warna Alam',2,'617c2ed64295e.jpg',1,0,0,'2021-10-29 17:26:46'),(3,'Banesa Sintex Eco','Sintetis Berpola',2,'617c2ecbabdbd.jpg',1,0,0,'2021-10-29 17:26:35'),(4,'Banesa Sulam Med','Full Tanah Sulam',2,'617c2ebddfebb.jpg',1,0,0,'2021-10-29 17:26:21'),(5,'Banesa Sintex Geo','Sintetis Full Motif Geo',2,'617c2ea371022.jpg',1,0,0,'2021-10-29 17:25:55'),(6,'Banesa Mahon Med','2 Warna Alam',2,'617c2e95a778c.jpg',1,0,0,'2021-10-29 17:25:41'),(7,'Banesa Sintex Fish','Sintesis Berpola',2,'617c2e8591094.jpg',1,0,0,'2021-10-29 17:25:25'),(8,'Banesa Sintex Full','Mix Sintetis Full Pola',2,'617c2e745296b.jpg',1,0,0,'2021-10-29 17:25:08'),(9,'Banesa Mix Alam','4 Warna Alam',2,'617c2e1f99039.jpg',1,0,0,'2021-10-29 17:23:43'),(10,'Banesa Mix Sintex','Full Color Motif Segitiga',2,'617c2def02643.jpg',1,0,0,'2021-10-29 17:22:55'),(11,'Banesa Mix Sintex','Full Color Motif Madura',2,'617c2dd4edc8f.jpg',1,0,0,'2021-10-29 17:22:28'),(12,'Banesa Sintex Bunga Geo','Motif Bunga Geometris',2,'617c2daf1df17.jpg',1,0,0,'2021-10-29 17:21:51'),(13,'Banesa Mix Sintex Teratai','Motif Bunga Teratai',2,'617c2d858acf0.jpg',1,0,0,'2021-10-29 17:21:09'),(14,'Banesa Motif Unesa','Motif Unesa',1,'617c2d6b877d6.jpg',1,0,0,'2021-10-30 07:36:54'),(15,'Banesa Sintex Merak','Motif Merak',2,'617c2d59314e5.jpg',1,0,0,'2021-10-29 17:20:25'),(16,'Banesa Sintex Mega','Motif Mega Mendung',2,'617c2d4ab7c7f.jpg',1,0,0,'2021-10-29 17:20:10'),(17,'Banesa Sintex Kupang','Motif Kupang Merah',2,'617c2d3e43463.jpg',1,0,0,'2021-10-29 17:19:58'),(18,'Banesa Sintex Kupang Biru','Motif Kupang Merah Biru',2,'617c2d291fc93.jpg',1,0,0,'2021-10-29 17:19:37'),(19,'Banesa Ikan Lawasan','Motif Ikan Lawasan',2,'617c2d0bebd2f.jpg',1,0,10000,'2021-11-02 06:31:26'),(21,'Banesa Sintex Tertai','Motif Teratai Daun Hijau',2,'617c2cd32a240.jpg',1,0,0,'2021-10-29 17:18:11'),(22,'Banesa Putian','Putian Motif Kuno',2,'617c2cbc9a7e8.jpg',1,0,0,'2021-10-29 17:17:48'),(23,'Banesa Mix Sintex','Motif Daun Merak',2,'617c2c0d861c1.jpg',1,0,0,'2021-10-30 07:38:10'),(24,'Banesa Mix Alam','Mix 4 Warna',2,'617c2bbd484d6.jpg',1,0,0,'2021-10-29 17:13:33'),(25,'Banesa Motif Indigo','Kombinasi Indigo Pada Motif',2,'617c2baddcc40.jpg',1,0,0,'2021-10-29 17:13:17');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `users_id` int NOT NULL AUTO_INCREMENT,
  `users_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (36,'Seriusman Waruwu','serius','$2y$10$9dmWC2WkHRdMETnrSkDUmO7VXIasvNgG65UXR3KHisLtjgFa.2yla','2021-10-29 12:22:26');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor` (
  `visitor_id` int NOT NULL AUTO_INCREMENT,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-02 14:26:12
