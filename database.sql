-- MySQL dump 10.13  Distrib 8.1.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: flex_home
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'UooFfGMFzyc8Rs7r5V61eFGoNxEno8GG',1,'2023-11-19 23:02:04','2023-11-19 23:02:04','2023-11-19 23:02:04'),(2,2,'B9ck7HWZe9XyhkWt6FD4FgBbewDhjn1Z',1,'2023-11-19 23:02:04','2023-11-19 23:02:04','2023-11-19 23:02:04');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
INSERT INTO `audit_histories` VALUES (2,1,'language','{\"lang_id\":\"0\",\"lang_name\":\"Ti\\u1ebfng Vi\\u1ec7t\",\"lang_locale\":\"vi\",\"lang_code\":\"vi\",\"lang_flag\":\"vn\",\"lang_order\":\"0\",\"lang_is_rtl\":\"0\"}','created','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36','127.0.0.1',1,2,'','info','2023-06-23 02:53:00','2023-06-23 02:53:00'),(3,1,'language','{\"_method\":\"DELETE\"}','deleted','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36','127.0.0.1',1,2,'','danger','2023-06-23 02:53:15','2023-06-23 02:53:15');
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'Sales Manager (Up to 2600$)','Ho Chi Minh, Viet Nam','1300$ - 2600$','<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Applicants receive a salary from 1300 USD to 2600 USD<br />\r\n- Fully enjoy the regimes according to Vietnam&#39;s Labor Law: Social insurance, health insurance, unemployment insurance<br />\r\n- Trained to improve expertise and capacity in suitable positions.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Coordinate with the Investment Department in organizing the collection, analysis, evaluation of market information and submitting proposals for planning the project&#39;s products and investment cooperation plans (if any);<br />\r\n- Acting as a focal point of exploitation and trading with customers, managing trading floors and distributors;<br />\r\n- Checking and approving the selection of sales units, management units for exploitation, operation and investment cooperation;<br />\r\n- Leading the negotiation and management of contracts with customers, sales units, management of exploitation, operation and investment cooperation;<br />\r\n- Prepare and submit a price approval for the sale, lease, and cooperation prices of all real estate projects;<br />\r\n- Develop sales plans, sales policies, support and promotions;<br />\r\n- Coordinate with member companies (Project Management Board) to collect and hand over product records (technical documents, red books, sales contracts ...) to hand over customers;<br />\r\n- Deploy customer support activities;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Preferred age: 30-35<br />\r\n- University degree in Business Administration, Economics, or related industries.<br />\r\n- Over 03 years of experience in assuming the position of Real Estate Business City<br />\r\n- Priority with a certificate of real estate broker, certificate of real estate trading floor management<br />\r\n- Good planning, operating, and control skills<br />\r\n- Good communication, negotiation and problem-solving skills</span></span></p>','published','2019-11-30 19:43:10','2019-11-30 19:46:53',NULL),(3,'Senior Real Estate Consultant Demo','Ho Chi Minh, Viet Nam','From 1500$','<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Basic salary 500$&nbsp;/ month.<br />\r\n- Access to diverse sources of goods and opportunities from reputable investors.<br />\r\n- Retrospective salary policy up to 2400$-7000$&nbsp;/ year.<br />\r\n- Commission of 22-50% and a commission 1000$ / successful transaction in the month.<br />\r\n- Effective bonus 0.6-3% of annual revenue.<br />\r\n- A place to build your personal brand in a standard and different way.<br />\r\n- Attend seminars on real estate every 6 months.<br />\r\n- Participate in the course on negotiation skills (Win - Win), language of sales (Language of Sales), customer mind marketing (SOI), customer conversion from social networks (Go Social)<br />\r\n- Unlimited promotion opportunities.<br />\r\n- Working with professional space and modern open office design.<br />\r\n- Welfare policy, domestic and foreign tourism ...<br />\r\n- Decentralized, democratic, financial transparency, considering brokerage is a business partner.<br />\r\n- Environmentally friendly, is the place where brokers are connected with regular activities</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Quantity: 30 employees<br />\r\n- Find and exploit potential customers for real estate products valued from 2000 USD / m2 in the high-end and luxury segment;<br />\r\n- Deploying activities to find customers, coordinate with teams to realize sales targets<br />\r\n- Advise customers on information related to products and projects of the Company;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Graduating from college or higher<br />\r\n- Good appearance, male height from 1.68m, female from 1.58m. Age from 22-35 years old<br />\r\n- Priority to candidates who know foreign languages ​​and have 1 year or more experience in the field of real estate, banking and finance.<br />\r\n- Have financial goals, work and life.<br />\r\n- Desire to achieve big goals.<br />\r\n- Diligent, persistent, honest.</span></span></p>','published','2019-11-30 19:52:42','2021-01-03 17:26:17',NULL);
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers_translations`
--

DROP TABLE IF EXISTS `careers_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `careers_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`careers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers_translations`
--

LOCK TABLES `careers_translations` WRITE;
/*!40000 ALTER TABLE `careers_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `careers_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'News',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2019-11-18 02:33:35','2019-11-18 02:33:35'),(2,'House architecture',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:49:25','2019-11-21 07:49:25'),(3,'Kiến trúc nhà',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:49:35','2019-11-21 07:49:35'),(4,'House design',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:02','2019-11-21 07:50:02'),(5,'Thiết kế nhà',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:17','2019-11-21 07:50:17'),(6,'Building materials',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:36','2019-11-21 07:50:36'),(7,'Vật liệu xây dựng',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:58','2019-11-21 07:50:58'),(8,'Tin tức',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2019-11-22 01:26:08','2019-11-22 01:26:08');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Alhambra',1,1,0,0,'cities/los-angeles-winter-2016.jpg','published','2019-11-18 08:18:42','2019-12-03 05:55:52','alhambra',NULL),(2,'Oakland',1,1,0,0,'cities/oaklandnightskylineandlakemerritt.jpg','published','2019-11-18 08:23:14','2019-12-03 05:55:52','oakland',NULL),(3,'Bakersfield',1,1,0,0,'cities/2009-0726-ca-bakersfield-truxtontower.jpg','published','2019-11-18 08:26:54','2019-12-03 05:55:52','bakersfield',NULL),(4,'Anaheim',1,1,0,0,'cities/castillo-de-disneyland.jpg','published','2019-11-18 08:27:57','2019-12-03 05:55:52','anaheim',NULL),(5,'San Francisco',1,1,0,0,'cities/goldengatebridge-001.jpg','published','2019-11-18 08:29:18','2019-12-03 05:55:52','san-francisco',NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'United States','United States of America',0,0,'published','2019-11-18 08:17:29','2019-11-18 08:17:29',NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
INSERT INTO `dashboard_widget_settings` VALUES (1,NULL,1,7,0,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(2,NULL,1,5,1,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(3,NULL,1,6,2,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(4,NULL,1,8,3,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(5,NULL,1,9,4,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(6,NULL,1,10,5,1,'2019-11-26 02:40:58','2019-11-26 02:40:58');
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
INSERT INTO `dashboard_widgets` VALUES (1,'widget_total_pages','2019-11-15 04:57:40','2019-11-15 04:57:40'),(2,'widget_total_users','2019-11-15 04:57:40','2019-11-15 04:57:40'),(3,'widget_total_plugins','2019-11-15 04:57:40','2019-11-15 04:57:40'),(4,'widget_total_themes','2019-11-15 04:57:40','2019-11-15 04:57:40'),(5,'widget_audit_logs','2019-11-15 18:54:50','2019-11-15 18:54:50'),(6,'widget_posts_recent','2019-11-15 18:54:50','2019-11-15 18:54:50'),(7,'widget_analytics_general','2019-11-15 18:54:50','2019-11-15 18:54:50'),(8,'widget_analytics_page','2019-11-15 18:54:50','2019-11-15 18:54:50'),(9,'widget_analytics_browser','2019-11-15 18:54:50','2019-11-15 18:54:50'),(10,'widget_analytics_referrer','2019-11-15 18:54:50','2019-11-15 18:54:50'),(11,'widget_total_1','2022-11-05 23:58:22','2022-11-05 23:58:22'),(12,'widget_total_2','2022-11-05 23:58:22','2022-11-05 23:58:22'),(13,'widget_total_3','2022-11-05 23:58:22','2022-11-05 23:58:22'),(14,'widget_total_4','2022-11-05 23:58:22','2022-11-05 23:58:22');
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `lang_meta_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_lang_meta_content_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,1,'en_US','Botble\\Menu\\Models\\MenuLocation','6392327c9d91ee33fdb3bab1ee43e626'),(2,1,'en_US','Botble\\Menu\\Models\\Menu','020c46616b6afaa86839219757ae3300'),(3,2,'en_US','Botble\\Menu\\Models\\Menu','fdeacc15e50d339840f0a8946c56cb8e'),(4,3,'en_US','Botble\\Menu\\Models\\Menu','ea45bc90b0382307baad03a776988e7e'),(5,4,'en_US','Botble\\Menu\\Models\\Menu','5ae63966fdeefba07cc73c83cdf9e349');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_folder_id_user_id_created_at_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=24091 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (22702,0,'avatar','avatar',1129,'image/jpeg',151486,'users/avatar.jpg','[]','2023-10-25 00:12:49','2023-10-25 00:12:49',NULL),(23919,0,'1','1',1180,'image/jpeg',9730,'accounts/1.jpg','[]','2023-11-19 23:02:00','2023-11-19 23:02:00',NULL),(23920,0,'10','10',1180,'image/jpeg',9730,'accounts/10.jpg','[]','2023-11-19 23:02:00','2023-11-19 23:02:00',NULL),(23921,0,'2','2',1180,'image/jpeg',9730,'accounts/2.jpg','[]','2023-11-19 23:02:00','2023-11-19 23:02:00',NULL),(23922,0,'3','3',1180,'image/jpeg',9730,'accounts/3.jpg','[]','2023-11-19 23:02:00','2023-11-19 23:02:00',NULL),(23923,0,'4','4',1180,'image/jpeg',9730,'accounts/4.jpg','[]','2023-11-19 23:02:00','2023-11-19 23:02:00',NULL),(23924,0,'5','5',1180,'image/jpeg',9730,'accounts/5.jpg','[]','2023-11-19 23:02:00','2023-11-19 23:02:00',NULL),(23925,0,'6','6',1180,'image/jpeg',9730,'accounts/6.jpg','[]','2023-11-19 23:02:00','2023-11-19 23:02:00',NULL),(23926,0,'7','7',1180,'image/jpeg',9730,'accounts/7.jpg','[]','2023-11-19 23:02:00','2023-11-19 23:02:00',NULL),(23927,0,'8','8',1180,'image/jpeg',9730,'accounts/8.jpg','[]','2023-11-19 23:02:00','2023-11-19 23:02:00',NULL),(23928,0,'9','9',1180,'image/jpeg',9730,'accounts/9.jpg','[]','2023-11-19 23:02:00','2023-11-19 23:02:00',NULL),(23931,0,'asset-3-at-3x','asset-3-at-3x',1181,'image/png',76833,'general/asset-3-at-3x.png','[]','2023-11-19 23:02:04','2023-11-19 23:02:04',NULL),(23932,0,'asset-4-at-3x','asset-4-at-3x',1181,'image/png',84067,'general/asset-4-at-3x.png','[]','2023-11-19 23:02:04','2023-11-19 23:02:04',NULL),(23933,0,'breadcrumb-background','breadcrumb-background',1181,'image/jpeg',504692,'general/breadcrumb-background.jpg','[]','2023-11-19 23:02:04','2023-11-19 23:02:04',NULL),(23934,0,'copyright','copyright',1181,'image/jpeg',128544,'general/copyright.jpg','[]','2023-11-19 23:02:04','2023-11-19 23:02:04',NULL),(23935,0,'home-banner','home-banner',1181,'image/jpeg',892011,'general/home-banner.jpg','[]','2023-11-19 23:02:04','2023-11-19 23:02:04',NULL),(23936,0,'termsconditions-pagedesktop','termsconditions-pagedesktop',1181,'image/jpeg',185151,'general/termsconditions-pagedesktop.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23937,0,'video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri','video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri',1181,'image/jpeg',63143,'general/video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23938,0,'vietnam-office-4','vietnam-office-4',1181,'image/jpeg',214366,'general/vietnam-office-4.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23939,0,'1','1',1182,'image/jpeg',66997,'news/1.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23940,0,'10','10',1182,'image/jpeg',66858,'news/10.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23941,0,'11','11',1182,'image/jpeg',86492,'news/11.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23942,0,'12','12',1182,'image/jpeg',91376,'news/12.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23943,0,'13','13',1182,'image/jpeg',82991,'news/13.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23944,0,'14','14',1182,'image/jpeg',66997,'news/14.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23945,0,'15','15',1182,'image/jpeg',111450,'news/15.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23946,0,'16','16',1182,'image/jpeg',464807,'news/16.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23947,0,'2','2',1182,'image/jpeg',51884,'news/2.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23948,0,'3','3',1182,'image/jpeg',132835,'news/3.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23949,0,'4','4',1182,'image/jpeg',948302,'news/4.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23950,0,'5','5',1182,'image/jpeg',66858,'news/5.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23951,0,'6','6',1182,'image/jpeg',328317,'news/6.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23952,0,'7','7',1182,'image/jpeg',249538,'news/7.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23953,0,'8','8',1182,'image/jpeg',147871,'news/8.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23954,0,'9','9',1182,'image/jpeg',194815,'news/9.jpg','[]','2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(23955,0,'1','1',1183,'image/jpeg',9730,'projects/1.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23956,0,'11','11',1183,'image/jpeg',9730,'projects/11.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23957,0,'12','12',1183,'image/jpeg',9730,'projects/12.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23958,0,'13','13',1183,'image/jpeg',9730,'projects/13.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23959,0,'14','14',1183,'image/jpeg',9730,'projects/14.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23960,0,'2','2',1183,'image/jpeg',9730,'projects/2.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23961,0,'21','21',1183,'image/jpeg',9730,'projects/21.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23962,0,'22','22',1183,'image/jpeg',9730,'projects/22.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23963,0,'23','23',1183,'image/jpeg',9730,'projects/23.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23964,0,'24','24',1183,'image/jpeg',9730,'projects/24.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23965,0,'25','25',1183,'image/jpeg',9730,'projects/25.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23966,0,'26','26',1183,'image/jpeg',9730,'projects/26.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23967,0,'3','3',1183,'image/jpeg',9730,'projects/3.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23968,0,'5','5',1183,'image/jpeg',9730,'projects/5.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23969,0,'1-1','1-1',1184,'image/jpeg',9730,'properties/1-1.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23970,0,'1-2','1-2',1184,'image/jpeg',9730,'properties/1-2.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23971,0,'1-3','1-3',1184,'image/jpeg',9730,'properties/1-3.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23972,0,'1','1',1184,'image/jpeg',9730,'properties/1.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23973,0,'10-1','10-1',1184,'image/jpeg',9730,'properties/10-1.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23974,0,'10','10',1184,'image/jpeg',9730,'properties/10.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23975,0,'11-1','11-1',1184,'image/jpeg',9730,'properties/11-1.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23976,0,'11','11',1184,'image/jpeg',9730,'properties/11.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23977,0,'12','12',1184,'image/jpeg',9730,'properties/12.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23978,0,'13','13',1184,'image/jpeg',9730,'properties/13.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23979,0,'14','14',1184,'image/jpeg',9730,'properties/14.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23980,0,'15','15',1184,'image/jpeg',9730,'properties/15.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23981,0,'2-1','2-1',1184,'image/jpeg',9730,'properties/2-1.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23982,0,'2-2','2-2',1184,'image/jpeg',9730,'properties/2-2.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23983,0,'2-3','2-3',1184,'image/jpeg',9730,'properties/2-3.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23984,0,'2','2',1184,'image/jpeg',9730,'properties/2.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23985,0,'21','21',1184,'image/jpeg',9730,'properties/21.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23986,0,'22-1','22-1',1184,'image/jpeg',9730,'properties/22-1.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23987,0,'22','22',1184,'image/jpeg',9730,'properties/22.jpg','[]','2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(23988,0,'23','23',1184,'image/jpeg',9730,'properties/23.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(23989,0,'24-1','24-1',1184,'image/jpeg',9730,'properties/24-1.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(23990,0,'24','24',1184,'image/jpeg',9730,'properties/24.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(23991,0,'3-1','3-1',1184,'image/jpeg',9730,'properties/3-1.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(23992,0,'3-2','3-2',1184,'image/jpeg',9730,'properties/3-2.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(23993,0,'3-3','3-3',1184,'image/jpeg',9730,'properties/3-3.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(23994,0,'3','3',1184,'image/jpeg',9730,'properties/3.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(23995,0,'31','31',1184,'image/jpeg',9730,'properties/31.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(23996,0,'311','311',1184,'image/jpeg',9730,'properties/311.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(23997,0,'32','32',1184,'image/jpeg',9730,'properties/32.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(23998,0,'32223-43914-378','32223-43914-378',1184,'image/jpeg',9730,'properties/32223-43914-378.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(23999,0,'33','33',1184,'image/jpeg',9730,'properties/33.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24000,0,'34','34',1184,'image/jpeg',9730,'properties/34.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24001,0,'35','35',1184,'image/jpeg',9730,'properties/35.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24002,0,'4-1','4-1',1184,'image/jpeg',9730,'properties/4-1.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24003,0,'4-2','4-2',1184,'image/jpeg',9730,'properties/4-2.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24004,0,'4','4',1184,'image/jpeg',9730,'properties/4.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24005,0,'411','411',1184,'image/jpeg',9730,'properties/411.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24006,0,'42','42',1184,'image/jpeg',9730,'properties/42.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24007,0,'421834935dbc9ef3aaa42','421834935dbc9ef3aaa42',1184,'image/jpeg',9730,'properties/421834935dbc9ef3aaa42.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24008,0,'43','43',1184,'image/jpeg',9730,'properties/43.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24009,0,'44','44',1184,'image/jpeg',9730,'properties/44.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24010,0,'5-1','5-1',1184,'image/jpeg',9730,'properties/5-1.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24011,0,'5-2','5-2',1184,'image/jpeg',9730,'properties/5-2.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24012,0,'5','5',1184,'image/jpeg',9730,'properties/5.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24013,0,'6-1','6-1',1184,'image/jpeg',9730,'properties/6-1.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24014,0,'6-2','6-2',1184,'image/jpeg',9730,'properties/6-2.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24015,0,'6','6',1184,'image/jpeg',9730,'properties/6.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24016,0,'7-1','7-1',1184,'image/jpeg',9730,'properties/7-1.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24017,0,'7-2','7-2',1184,'image/jpeg',9730,'properties/7-2.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24018,0,'7','7',1184,'image/jpeg',9730,'properties/7.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24019,0,'71','71',1184,'image/jpeg',9730,'properties/71.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24020,0,'72','72',1184,'image/jpeg',9730,'properties/72.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24021,0,'73','73',1184,'image/jpeg',9730,'properties/73.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24022,0,'74','74',1184,'image/jpeg',9730,'properties/74.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24023,0,'75','75',1184,'image/jpeg',9730,'properties/75.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24024,0,'78','78',1184,'image/jpeg',9730,'properties/78.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24025,0,'79','79',1184,'image/jpeg',9730,'properties/79.jpg','[]','2023-11-19 23:02:07','2023-11-19 23:02:07',NULL),(24026,0,'8-1','8-1',1184,'image/jpeg',9730,'properties/8-1.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24027,0,'8-2','8-2',1184,'image/jpeg',9730,'properties/8-2.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24028,0,'8','8',1184,'image/jpeg',9730,'properties/8.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24029,0,'9-1','9-1',1184,'image/jpeg',9730,'properties/9-1.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24030,0,'9','9',1184,'image/jpeg',9730,'properties/9.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24031,0,'a1-1','a1-1',1184,'image/jpeg',9730,'properties/a1-1.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24032,0,'a1-2','a1-2',1184,'image/jpeg',9730,'properties/a1-2.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24033,0,'a1','a1',1184,'image/jpeg',9730,'properties/a1.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24034,0,'a10','a10',1184,'image/jpeg',9730,'properties/a10.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24035,0,'a2-1','a2-1',1184,'image/jpeg',9730,'properties/a2-1.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24036,0,'a2-2','a2-2',1184,'image/jpeg',9730,'properties/a2-2.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24037,0,'a2','a2',1184,'image/jpeg',9730,'properties/a2.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24038,0,'a3-1','a3-1',1184,'image/jpeg',9730,'properties/a3-1.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24039,0,'a3-2','a3-2',1184,'image/jpeg',9730,'properties/a3-2.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24040,0,'a3','a3',1184,'image/jpeg',9730,'properties/a3.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24041,0,'a4-1','a4-1',1184,'image/jpeg',9730,'properties/a4-1.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24042,0,'a4-2','a4-2',1184,'image/jpeg',9730,'properties/a4-2.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24043,0,'a4','a4',1184,'image/jpeg',9730,'properties/a4.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24044,0,'a5-1','a5-1',1184,'image/jpeg',9730,'properties/a5-1.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24045,0,'a5','a5',1184,'image/jpeg',9730,'properties/a5.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24046,0,'a6-1','a6-1',1184,'image/jpeg',9730,'properties/a6-1.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24047,0,'a6','a6',1184,'image/jpeg',9730,'properties/a6.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24048,0,'a7','a7',1184,'image/jpeg',9730,'properties/a7.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24049,0,'a8','a8',1184,'image/jpeg',9730,'properties/a8.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24050,0,'a9','a9',1184,'image/jpeg',9730,'properties/a9.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24051,0,'b1','b1',1184,'image/jpeg',9730,'properties/b1.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24052,0,'b2','b2',1184,'image/jpeg',9730,'properties/b2.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24053,0,'b3','b3',1184,'image/jpeg',9730,'properties/b3.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24054,0,'b4-1','b4-1',1184,'image/jpeg',9730,'properties/b4-1.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24055,0,'b4','b4',1184,'image/jpeg',9730,'properties/b4.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24056,0,'b5-1','b5-1',1184,'image/jpeg',9730,'properties/b5-1.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24057,0,'b5','b5',1184,'image/jpeg',9730,'properties/b5.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24058,0,'b6','b6',1184,'image/jpeg',9730,'properties/b6.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24059,0,'download','download',1184,'image/jpeg',9730,'properties/download.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24060,0,'e1','e1',1184,'image/jpeg',9730,'properties/e1.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24061,0,'e2','e2',1184,'image/jpeg',9730,'properties/e2.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24062,0,'e3','e3',1184,'image/jpeg',9730,'properties/e3.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24063,0,'e4','e4',1184,'image/jpeg',9730,'properties/e4.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24064,0,'e5','e5',1184,'image/jpeg',9730,'properties/e5.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24065,0,'e7','e7',1184,'image/jpeg',9730,'properties/e7.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24066,0,'e8','e8',1184,'image/jpeg',9730,'properties/e8.jpg','[]','2023-11-19 23:02:08','2023-11-19 23:02:08',NULL),(24067,0,'p1','p1',1184,'image/jpeg',9730,'properties/p1.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24068,0,'p2','p2',1184,'image/jpeg',9730,'properties/p2.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24069,0,'property-video-thumb','property-video-thumb',1184,'image/jpeg',9730,'properties/property-video-thumb.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24070,0,'q1','q1',1184,'image/jpeg',9730,'properties/q1.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24071,0,'q2','q2',1184,'image/jpeg',9730,'properties/q2.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24072,0,'q3','q3',1184,'image/jpeg',9730,'properties/q3.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24073,0,'q6','q6',1184,'image/jpeg',9730,'properties/q6.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24074,0,'q7','q7',1184,'image/jpeg',9730,'properties/q7.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24075,0,'q8','q8',1184,'image/jpeg',9730,'properties/q8.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24076,0,'t1','t1',1184,'image/jpeg',9730,'properties/t1.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24077,0,'t2','t2',1184,'image/jpeg',9730,'properties/t2.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24078,0,'t3','t3',1184,'image/jpeg',9730,'properties/t3.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24079,0,'t4','t4',1184,'image/jpeg',9730,'properties/t4.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24080,0,'t5','t5',1184,'image/jpeg',9730,'properties/t5.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24081,0,'wp1a','wp1a',1184,'image/jpeg',9730,'properties/wp1a.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24082,0,'banner','banner',1,'image/jpeg',17651,'banner/banner.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24083,0,'2009-0726-ca-bakersfield-truxtontower','2009-0726-ca-bakersfield-truxtontower',1185,'image/jpeg',9730,'cities/2009-0726-ca-bakersfield-truxtontower.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24084,0,'castillo-de-disneyland','castillo-de-disneyland',1185,'image/jpeg',9730,'cities/castillo-de-disneyland.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24085,0,'goldengatebridge-001','goldengatebridge-001',1185,'image/jpeg',9730,'cities/goldengatebridge-001.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24086,0,'los-angeles-winter-2016','los-angeles-winter-2016',1185,'image/jpeg',9730,'cities/los-angeles-winter-2016.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24087,0,'oaklandnightskylineandlakemerritt','oaklandnightskylineandlakemerritt',1185,'image/jpeg',9730,'cities/oaklandnightskylineandlakemerritt.jpg','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24088,0,'favicon','favicon',1186,'image/png',3110,'logo/favicon.png','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24089,0,'logo-white','logo-white',1186,'image/png',18120,'logo/logo-white.png','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(24090,0,'logo','logo',1186,'image/png',23910,'logo/logo.png','[]','2023-11-19 23:02:09','2023-11-19 23:02:09',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_parent_id_user_id_created_at_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=1187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,1,'Banners','banner',0,'2019-11-16 02:00:43','2019-11-16 02:00:50',NULL),(1129,0,'users','users',0,'2023-10-25 00:12:49','2023-10-25 00:12:49',NULL),(1180,0,'accounts','accounts',0,'2023-11-19 23:02:00','2023-11-19 23:02:00',NULL),(1181,0,'general','general',0,'2023-11-19 23:02:04','2023-11-19 23:02:04',NULL),(1182,0,'news','news',0,'2023-11-19 23:02:05','2023-11-19 23:02:05',NULL),(1183,0,'projects','projects',0,'2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(1184,0,'properties','properties',0,'2023-11-19 23:02:06','2023-11-19 23:02:06',NULL),(1185,0,'cities','cities',0,'2023-11-19 23:02:09','2023-11-19 23:02:09',NULL),(1186,0,'logo','logo',0,'2023-11-19 23:02:09','2023-11-19 23:02:09',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-11-19 23:02:04','2023-11-19 23:02:04');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT '0',
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `menu_nodes_related_id_index` (`reference_id`),
  KEY `menu_nodes_index` (`parent_id`,`reference_id`,`reference_type`,`has_child`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,0,NULL,'/projects',NULL,0,'Projects',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(2,1,0,0,NULL,'/properties',NULL,0,'Properties',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(3,1,0,0,NULL,'/agents',NULL,0,'Agents',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(4,1,0,2,'Botble\\Page\\Models\\Page','/news',NULL,0,'News',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(5,1,0,0,NULL,'/careers',NULL,0,'Careers',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(6,1,0,4,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(7,2,0,3,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(8,2,0,4,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(9,2,0,0,NULL,'/careers',NULL,0,'Careers',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(10,2,0,5,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(11,3,0,0,NULL,'/projects',NULL,0,'All projects',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(12,3,0,0,NULL,'/properties',NULL,0,'All properties',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(13,3,0,0,NULL,'/properties?type=sale',NULL,0,'Houses for sale',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(14,3,0,0,NULL,'/properties?type=rent',NULL,0,'Houses for rent',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(15,4,0,2,'Botble\\Page\\Models\\Page','/news',NULL,0,'Latest news',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(16,4,0,2,'Botble\\Blog\\Models\\Category','/news/house-architecture',NULL,0,'House architecture',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(17,4,0,4,'Botble\\Blog\\Models\\Category','/news/house-design',NULL,0,'House design',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04'),(18,4,0,6,'Botble\\Blog\\Models\\Category','/news/building-materials',NULL,0,'Building materials',NULL,'_self',0,'2023-11-19 23:02:04','2023-11-19 23:02:04');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-11-19 23:02:04','2023-11-19 23:02:04'),(2,'About','about','published','2023-11-19 23:02:04','2023-11-19 23:02:04'),(3,'More information','more-information','published','2023-11-19 23:02:04','2023-11-19 23:02:04'),(4,'News','news','published','2023-11-19 23:02:04','2023-11-19 23:02:04');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_content_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 20:34:59','2019-11-17 20:34:59'),(2,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 20:53:34','2019-11-17 20:53:34'),(3,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 21:09:55','2019-11-17 21:09:55'),(4,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 21:18:11','2019-11-17 21:18:11'),(5,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\PropertyFeature','2019-11-17 21:40:58','2019-11-17 21:40:58'),(6,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\PropertyFeature','2019-11-17 21:41:43','2019-11-17 21:41:43'),(7,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 00:34:49','2019-11-18 00:34:49'),(8,5,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 00:47:52','2019-11-18 00:47:52'),(9,6,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 01:05:58','2019-11-18 01:05:58'),(10,7,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 01:12:07','2019-11-18 01:12:07'),(11,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 01:28:45','2019-11-18 01:28:45'),(12,8,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 01:49:36','2019-11-18 01:49:36'),(13,9,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:02:19','2019-11-18 02:02:19'),(14,10,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:16:53','2019-11-18 02:16:53'),(15,11,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:22:48','2019-11-18 02:22:48'),(16,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-18 02:33:35','2019-11-18 02:33:35'),(17,12,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:47:05','2019-11-18 02:47:05'),(18,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 02:51:35','2019-11-18 02:51:35'),(19,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Tag','2019-11-18 02:51:35','2019-11-18 02:51:35'),(20,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 02:55:53','2019-11-18 02:55:53'),(21,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Tag','2019-11-18 02:55:53','2019-11-18 02:55:53'),(22,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 02:59:01','2019-11-18 02:59:01'),(23,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 03:07:27','2019-11-18 03:07:27'),(24,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Tag','2019-11-18 03:07:27','2019-11-18 03:07:27'),(25,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:30:34','2019-11-18 03:30:34'),(26,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:38:13','2019-11-18 03:38:13'),(27,5,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:45:06','2019-11-18 03:45:06'),(28,6,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:53:20','2019-11-18 03:53:20'),(29,13,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:23:02','2019-11-18 07:23:02'),(30,14,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:36:29','2019-11-18 07:36:29'),(31,15,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:44:44','2019-11-18 07:44:44'),(32,16,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:59:14','2019-11-18 07:59:14'),(33,17,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 08:13:07','2019-11-18 08:13:07'),(34,7,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 01:54:36','2019-11-21 01:54:36'),(35,8,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 02:28:09','2019-11-21 02:28:09'),(36,9,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 02:40:25','2019-11-21 02:40:25'),(37,10,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 02:58:55','2019-11-21 02:58:55'),(38,11,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 03:16:25','2019-11-21 03:16:25'),(39,12,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 03:25:22','2019-11-21 03:25:22'),(40,18,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 05:51:54','2019-11-21 05:51:54'),(41,19,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:03:11','2019-11-21 06:03:11'),(42,20,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:12:15','2019-11-21 06:12:15'),(43,21,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:26:59','2019-11-21 06:26:59'),(44,22,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:56:50','2019-11-21 06:56:50'),(45,23,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:18:36','2019-11-21 07:18:36'),(46,24,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:26:48','2019-11-21 07:26:48'),(47,25,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:34:38','2019-11-21 07:34:38'),(48,26,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:40:46','2019-11-21 07:40:46'),(49,27,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:45:34','2019-11-21 07:45:34'),(52,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:49:25','2019-11-21 07:49:25'),(53,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:49:35','2019-11-21 07:49:35'),(54,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:02','2019-11-21 07:50:02'),(55,5,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:17','2019-11-21 07:50:17'),(56,6,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:36','2019-11-21 07:50:36'),(57,7,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:58','2019-11-21 07:50:58'),(58,28,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 19:53:17','2019-11-21 19:53:17'),(59,29,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 19:59:16','2019-11-21 19:59:16'),(60,30,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:29:01','2019-11-22 00:29:01'),(61,31,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:42:28','2019-11-22 00:42:28'),(62,32,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:47:18','2019-11-22 00:47:18'),(63,33,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:57:15','2019-11-22 00:57:15'),(64,34,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 01:06:09','2019-11-22 01:06:09'),(65,8,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-22 01:26:08','2019-11-22 01:26:08'),(74,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:43:10','2019-11-30 19:43:10'),(75,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:49:07','2019-11-30 19:49:07'),(76,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:52:42','2019-11-30 19:52:42'),(77,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:56:50','2019-11-30 19:56:50'),(80,2,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(81,4,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(82,6,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(83,8,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(84,10,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(85,12,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(86,14,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(87,16,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(88,18,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(89,20,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(90,22,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(91,24,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(92,26,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(93,28,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(94,30,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(95,32,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(96,34,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(97,2,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(98,4,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(99,6,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(100,8,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(101,10,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(102,12,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(103,1,'subscribed_packaged_id','[2]','Botble\\Payment\\Models\\Payment','2022-12-27 20:03:55','2022-12-27 20:03:55');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_06_01_000001_create_oauth_auth_codes_table',1),(6,'2016_06_01_000002_create_oauth_access_tokens_table',1),(7,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(8,'2016_06_01_000004_create_oauth_clients_table',1),(9,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(10,'2016_06_10_230148_create_acl_tables',1),(11,'2016_06_14_230857_create_menus_table',1),(12,'2016_06_28_221418_create_pages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_11_03_070450_create_slug_table',1),(18,'2019_07_15_042406_change_site_title_from_settings_to_theme_options',1),(19,'2019_08_13_033145_remove_unused_columns_in_users_table',1),(20,'2019_08_19_000000_create_failed_jobs_table',1),(21,'2019_09_07_030654_update_menu_nodes_table',1),(22,'2019_09_07_045041_update_slugs_table',1),(23,'2019_09_07_050405_update_slug_reference_for_page',1),(24,'2019_09_08_014859_update_meta_boxes_table',1),(25,'2019_09_08_015629_update_meta_box_data_for_page',1),(26,'2019_09_12_073711_update_media_url',1),(27,'2019_09_12_073711_update_media_url_for_current_data',1),(28,'2019_10_20_002256_remove_parent_id_in_pages_table',1),(31,'2018_06_22_032304_create_real_estate_table',2),(32,'2015_06_29_025744_create_audit_history',3),(33,'2015_06_18_033822_create_blog_table',4),(34,'2019_09_07_035526_update_menu_node_reference_type_for_category',4),(35,'2019_09_07_050058_update_slug_reference_for_blog',4),(36,'2019_09_07_155716_update_language_meta_for_blog',4),(37,'2019_09_08_015552_update_meta_box_data_for_blog',4),(38,'2019_10_20_002342_remove_parent_id_in_tags_table',4),(39,'2016_10_03_032336_create_languages_table',5),(40,'2019_09_07_154718_update_lang_meta_table',5),(42,'2016_06_17_091537_create_contacts_table',7),(43,'2015_08_15_122343_create_notes_table',8),(44,'2019_11_18_035125_add_column_type_into_re_properties_table',9),(45,'2019_11_18_035712_create_investor_table',9),(46,'2019_11_18_040153_update_real_estates_table',9),(47,'2019_11_18_041228_drop_table_re_property_categories',10),(48,'2019_11_18_082146_create_currencies_table',11),(49,'2019_11_18_061011_create_country_table',12),(50,'2019_11_18_061730_create_state_table',12),(51,'2019_11_18_062515_create_city_table',12),(52,'2019_11_19_063851_create_project_features_table',13),(53,'2019_11_21_090830_update_project_and_property_table',14),(54,'2019_11_21_130139_add_price_to_projects_table',15),(55,'2019_11_14_210650_create_consults_table',16),(56,'2019_11_26_024326_update_property_type',17),(57,'2019_06_24_211801_create_career_table',18),(58,'2019_12_03_123314_add_column_slug_into_cities_table',19),(59,'2019_12_03_124417_add_column_city_id_into_table_properties_and_projects',19),(60,'2017_05_18_080441_create_payment_tables',20),(61,'2019_12_10_140938_create_vendor_table',20),(62,'2019_12_15_025938_update_column_images_in_real_estate_tables',20),(63,'2019_12_17_064316_add_column_period_to_table_re_properties',20),(64,'2019_12_24_033049_add_column_author_into_re_properties_table',20),(65,'2019_12_24_083810_vendor_create_package_table',20),(66,'2019_12_27_004653_update_vendors_table_with_package_data',20),(68,'2020_01_08_002704_real_estate_create_type_table',21),(69,'2020_01_10_133700_change_re_types_to_re_categories',22),(70,'2016_10_07_193005_create_translations_table',23),(71,'2020_01_23_133752_update_account_tables',24),(72,'2020_02_03_144309_update_column_payment_channel',25),(73,'2020_02_06_143217_update_vendor_table',26),(74,'2020_02_11_133026_add_description_to_table_payments',27),(75,'2020_02_11_140823_create_transactions_table',27),(76,'2020_02_23_111922_fix_column_number_block_in_re_properties_table',27),(77,'2020_03_24_151004_add_moderation_status_into_properties_table',28),(78,'2020_03_25_030953_create_table_vendor_packages',29),(79,'2020_03_25_083610_add_column_expire_date_into_re_properties_table',30),(80,'2020_03_26_081108_add_column_auto_renew_to_re_properties_table',31),(81,'2020_03_16_072752_add_column_abbreviation_to_states_table',32),(82,'2020_03_28_020724_make_column_user_id_nullable_table_revisions',33),(83,'2020_03_23_093053_update_payments_table',34),(84,'2020_04_22_074304_add_column_never_expired_to_re_properties_table',35),(85,'2020_05_26_014304_add_column_provider_to_oauth_clients_table',36),(86,'2020_07_27_085437_add_icon_to_re_features',37),(90,'2020_08_21_102728_real_estate_create_facility_table',38),(91,'2020_08_22_024455_rename_table_for_accounts',39),(92,'2020_08_26_130439_add_column_username_into_table_re_accounts',40),(93,'2020_09_09_110653_update_table_careers',41),(94,'2020_09_15_111419_fix_old_data_for_re_properties',42),(95,'2020_10_05_030817_make_column_charge_id_nullable',43),(96,'2020_10_18_134416_fix_audit_logs_table',44),(97,'2020_10_24_133432_change_column_distance_to_string',45),(99,'2020_10_31_053746_add_column_description_into_re_categories_table',46),(100,'2019_01_05_053554_create_jobs_table',47),(101,'2020_12_05_112556_change_contact_page_to_a_page',48),(102,'2021_02_11_031126_update_price_column_in_projects_and_properties',49),(103,'2021_02_16_092633_remove_default_value_for_author_type',50),(104,'2021_03_08_024049_add_lat_long_into_real_estate_tables',51),(105,'2021_03_27_144913_add_customer_type_into_table_payments',52),(106,'2021_05_24_034720_make_column_currency_nullable',53),(107,'2021_06_10_091950_add_column_is_featured_to_table_re_accounts',54),(108,'2021_07_07_021757_update_table_account_activity_logs',55),(109,'2021_07_18_101839_fix_old_theme_options',56),(110,'2021_08_05_134214_fix_social_link_theme_options',57),(111,'2021_08_09_161302_add_metadata_column_to_payments_table',58),(112,'2021_09_29_042758_create_re_categories_multilevel_table',59),(113,'2021_10_19_020859_update_metadata_field',60),(114,'2021_10_31_031254_add_company_to_accounts_table',61),(115,'2021_10_25_021023_fix-priority-load-for-language-advanced',62),(116,'2021_12_03_030600_create_blog_translations',62),(117,'2021_12_03_075608_create_page_translations',62),(118,'2021_12_03_084118_create_location_translations',62),(119,'2021_12_03_094518_migrate_old_location_data',62),(120,'2021_12_04_095357_create_careers_translations_table',62),(121,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',63),(122,'2021_12_10_034807_create_real_estate_translation_tables',64),(123,'2021_12_18_081636_add_property_project_views_count',65),(124,'2022_01_16_085908_improve_plugin_location',66),(125,'2022_04_19_113923_add_index_to_table_posts',67),(126,'2022_04_20_100851_add_index_to_media_table',67),(127,'2022_04_20_101046_add_index_to_menu_table',67),(128,'2022_05_03_033044_update_column_images_in_real_estate_tables',68),(129,'2022_05_04_033044_update_column_images_in_real_estate_tables',69),(130,'2022_06_04_033634_improve_homepage_content',70),(131,'2022_06_28_151901_activate_paypal_stripe_plugin',71),(132,'2022_07_02_081723_fix_expired_date_column',71),(133,'2019_12_14_000001_create_personal_access_tokens_table',72),(134,'2022_07_07_153354_update_charge_id_in_table_payments',72),(135,'2022_07_10_034813_move_lang_folder_to_root',72),(136,'2022_08_01_090213_update_table_properties_and_projects',72),(137,'2022_08_04_051940_add_missing_column_expires_at',72),(138,'2022_08_04_052122_delete_location_backup_tables',72),(139,'2022_10_14_024629_drop_column_is_featured',73),(140,'2022_10_29_065232_increase_states_abbreviation_column',74),(141,'2022_11_06_061847_increase_state_translations_abbreviation_column',75),(142,'2022_11_06_070405_improve_homepage_search_box',75),(143,'2022_11_18_063357_add_missing_timestamp_in_table_settings',76),(144,'2022_12_02_093615_update_slug_index_columns',76),(145,'2022_09_01_000001_create_admin_notifications_tables',77),(146,'2023_01_30_024431_add_alt_to_media_table',78),(147,'2023_01_31_023233_create_re_custom_fields_table',79),(148,'2023_02_06_000000_add_location_to_re_accounts_table',79),(149,'2023_02_06_024257_add_package_translations',79),(150,'2023_02_08_062457_add_custom_fields_translation_table',80),(151,'2014_10_12_100000_create_password_reset_tokens_table',81),(152,'2023_02_15_024644_create_re_reviews_table',81),(153,'2023_02_16_042611_drop_table_password_resets',81),(154,'2023_02_20_072604_create_re_invoices_table',82),(155,'2023_02_20_081251_create_re_account_packages_table',82),(156,'2023_04_04_030709_add_unique_id_to_properties_and_projects_table',83),(157,'2023_04_14_164811_make_phone_and_email_in_table_re_consults_nullable',84),(158,'2023_04_23_005903_add_column_permissions_to_admin_notifications',84),(159,'2023_04_23_061847_increase_state_translations_abbreviation_column',84),(160,'2023_05_08_114004_improve_properties_and_projects_page',85),(161,'2023_05_09_062031_unique_reviews_table',85),(162,'2023_05_10_075124_drop_column_id_in_role_users_table',85),(163,'2023_05_26_034353_fix_properties_projects_image',86),(164,'2023_05_27_004215_add_column_ip_into_table_re_consults',86),(165,'2023_07_06_011444_create_slug_translations_table',87),(166,'2023_07_18_040500_convert_cities_is_featured_to_selecting_locations_from_shortcode',87),(167,'2023_07_25_034513_create_re_coupons_table',87),(168,'2023_07_25_034672_add_coupon_code_column_to_jb_invoices_table',87),(169,'2023_07_26_041451_add_more_columns_to_location_table',87),(170,'2023_07_27_041451_add_more_columns_to_location_translation_table',87),(171,'2023_07_28_073307_drop_unique_in_states_cities_translations',87),(172,'2023_08_02_074208_change_square_column_to_float',87),(173,'2023_08_07_000001_add_is_public_profile_column_to_re_accounts_table',87),(174,'2023_08_09_004607_make_column_project_id_nullable',87),(175,'2023_08_15_073307_drop_unique_in_states_cities_translations',88),(176,'2023_08_21_090810_make_page_content_nullable',89),(177,'2023_08_29_074620_make_column_author_id_nullable',90),(178,'2023_09_11_084630_update_mandatory_fields_in_consult_form_table',91),(179,'2023_09_14_021936_update_index_for_slugs_table',92),(180,'2023_09_14_022423_add_index_for_language_table',92),(181,'2023_09_20_050420_add_missing_translation_column',93),(182,'2023_10_21_065016_make_state_id_in_table_cities_nullable',94);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int unsigned NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_user_id_index` (`user_id`),
  KEY `notes_reference_id_index` (`reference_id`),
  KEY `notes_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[search-box title=\"Find your favorite homes at Flex Home\" background_image=\"general/home-banner.jpg\" enable_search_projects_on_homepage_search=\"yes\" default_home_search_type=\"project\"][/search-box]</div><div>[featured-projects title=\"Featured projects\" subtitle=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more.\" limit=\"4\"][/featured-projects]</div><div>[properties-by-locations title=\"Properties by locations\" subtitle=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" city=\"1,2,3,4,5\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Properties For Sale\" subtitle=\"Below is a list of properties that are currently up for sale\" limit=\"8\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Properties For Rent\" subtitle=\"Below is a detailed price list of each property for rent\" limit=\"8\"][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\" limit=\"8\"][/recently-viewed-properties]</div><div>[latest-news title=\"News\" subtitle=\"Below is the latest real estate news we get regularly updated from reliable sources.\" limit=\"4\"][/latest-news]</div>',1,NULL,'homepage',NULL,'published','2023-10-25 00:12:44','2023-10-25 00:12:44'),(2,'News','---',1,NULL,'default',NULL,'published','2023-10-25 00:12:44','2023-10-25 00:12:44'),(3,'About us','<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.test/storage/general/vietnam-office-4.jpg\" /></p>\n',1,NULL,'default','Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.','published','2023-10-25 00:12:44','2023-10-25 00:12:44'),(4,'Contact','<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>',1,NULL,'default',NULL,'published','2023-10-25 00:12:44','2023-10-25 00:12:44'),(5,'Terms &amp; Conditions','<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n',1,NULL,'default','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','published','2023-10-25 00:12:44','2023-10-25 00:12:44'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-10-25 00:12:44','2023-10-25 00:12:44'),(7,'Properties','<div>[properties-list title=\"Discover our properties\" description=\"Discover our properties\" description=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" number_of_properties_per_page=\"12\"][/properties-list]</div>',1,NULL,'homepage',NULL,'published','2023-10-25 00:12:44','2023-10-25 00:12:44'),(8,'Projects','<div>[projects-list  title=\"Discover our projects\" description=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more\" number_of_projects_per_page=\"12\"][/projects-list]</div>',1,NULL,'homepage',NULL,'published','2023-10-25 00:12:44','2023-10-25 00:12:44'),(9,'Home','<div>[search-box title=\"Find your favorite homes at Flex Home\" background_image=\"general/home-banner.jpg\" enable_search_projects_on_homepage_search=\"yes\" default_home_search_type=\"project\"][/search-box]</div><div>[featured-projects title=\"Featured projects\" subtitle=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more.\" limit=\"4\"][/featured-projects]</div><div>[properties-by-locations title=\"Properties by locations\" subtitle=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" city=\"1,2,3,4,5\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Properties For Sale\" subtitle=\"Below is a list of properties that are currently up for sale\" limit=\"8\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Properties For Rent\" subtitle=\"Below is a detailed price list of each property for rent\" limit=\"8\"][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\" limit=\"8\"][/recently-viewed-properties]</div><div>[latest-news title=\"News\" subtitle=\"Below is the latest real estate news we get regularly updated from reliable sources.\" limit=\"4\"][/latest-news]</div>',0,NULL,'homepage',NULL,'published','2023-11-09 00:52:41','2023-11-09 00:52:41'),(10,'News','---',0,NULL,'default',NULL,'published','2023-11-09 00:52:41','2023-11-09 00:52:41'),(11,'About us','<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.test/storage/general/vietnam-office-4.jpg\" /></p>\n',0,NULL,'default','Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.','published','2023-11-09 00:52:41','2023-11-09 00:52:41'),(12,'Contact','<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>',0,NULL,'default',NULL,'published','2023-11-09 00:52:41','2023-11-09 00:52:41'),(13,'Terms &amp; Conditions','<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n',0,NULL,'default','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','published','2023-11-09 00:52:41','2023-11-09 00:52:41'),(14,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',0,NULL,'default',NULL,'published','2023-11-09 00:52:41','2023-11-09 00:52:41'),(15,'Properties','<div>[properties-list title=\"Discover our properties\" description=\"Discover our properties\" description=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" number_of_properties_per_page=\"12\"][/properties-list]</div>',0,NULL,'homepage',NULL,'published','2023-11-09 00:52:41','2023-11-09 00:52:41'),(16,'Projects','<div>[projects-list  title=\"Discover our projects\" description=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more\" number_of_projects_per_page=\"12\"][/projects-list]</div>',0,NULL,'homepage',NULL,'published','2023-11-09 00:52:41','2023-11-09 00:52:41'),(17,'Home','<div>[search-box title=\"Find your favorite homes at Flex Home\" background_image=\"general/home-banner.jpg\" enable_search_projects_on_homepage_search=\"yes\" default_home_search_type=\"project\"][/search-box]</div><div>[featured-projects title=\"Featured projects\" subtitle=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more.\" limit=\"4\"][/featured-projects]</div><div>[properties-by-locations title=\"Properties by locations\" subtitle=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" city=\"1,2,3,4,5\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Properties For Sale\" subtitle=\"Below is a list of properties that are currently up for sale\" limit=\"8\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Properties For Rent\" subtitle=\"Below is a detailed price list of each property for rent\" limit=\"8\"][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\" limit=\"8\"][/recently-viewed-properties]</div><div>[latest-news title=\"News\" subtitle=\"Below is the latest real estate news we get regularly updated from reliable sources.\" limit=\"4\"][/latest-news]</div>',1,NULL,'homepage',NULL,'published','2023-11-14 00:50:20','2023-11-14 00:50:20'),(18,'News','---',1,NULL,'default',NULL,'published','2023-11-14 00:50:20','2023-11-14 00:50:20'),(19,'About us','<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.test/storage/general/vietnam-office-4.jpg\" /></p>\n',1,NULL,'default','Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.','published','2023-11-14 00:50:20','2023-11-14 00:50:20'),(20,'Contact','<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>',1,NULL,'default',NULL,'published','2023-11-14 00:50:20','2023-11-14 00:50:20'),(21,'Terms &amp; Conditions','<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n',1,NULL,'default','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','published','2023-11-14 00:50:20','2023-11-14 00:50:20'),(22,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-11-14 00:50:20','2023-11-14 00:50:20'),(23,'Properties','<div>[properties-list title=\"Discover our properties\" description=\"Discover our properties\" description=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" number_of_properties_per_page=\"12\"][/properties-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-14 00:50:20','2023-11-14 00:50:20'),(24,'Projects','<div>[projects-list  title=\"Discover our projects\" description=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more\" number_of_projects_per_page=\"12\"][/projects-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-14 00:50:20','2023-11-14 00:50:20'),(25,'Home','<div>[search-box title=\"Find your favorite homes at Flex Home\" background_image=\"general/home-banner.jpg\" enable_search_projects_on_homepage_search=\"yes\" default_home_search_type=\"project\"][/search-box]</div><div>[featured-projects title=\"Featured projects\" subtitle=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more.\" limit=\"4\"][/featured-projects]</div><div>[properties-by-locations title=\"Properties by locations\" subtitle=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" city=\"1,2,3,4,5\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Properties For Sale\" subtitle=\"Below is a list of properties that are currently up for sale\" limit=\"8\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Properties For Rent\" subtitle=\"Below is a detailed price list of each property for rent\" limit=\"8\"][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\" limit=\"8\"][/recently-viewed-properties]</div><div>[latest-news title=\"News\" subtitle=\"Below is the latest real estate news we get regularly updated from reliable sources.\" limit=\"4\"][/latest-news]</div>',1,NULL,'homepage',NULL,'published','2023-11-14 20:53:25','2023-11-14 20:53:25'),(26,'News','---',1,NULL,'default',NULL,'published','2023-11-14 20:53:25','2023-11-14 20:53:25'),(27,'About us','<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.test/storage/general/vietnam-office-4.jpg\" /></p>\n',1,NULL,'default','Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.','published','2023-11-14 20:53:25','2023-11-14 20:53:25'),(28,'Contact','<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>',1,NULL,'default',NULL,'published','2023-11-14 20:53:25','2023-11-14 20:53:25'),(29,'Terms &amp; Conditions','<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n',1,NULL,'default','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','published','2023-11-14 20:53:25','2023-11-14 20:53:25'),(30,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-11-14 20:53:25','2023-11-14 20:53:25'),(31,'Properties','<div>[properties-list title=\"Discover our properties\" description=\"Discover our properties\" description=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" number_of_properties_per_page=\"12\"][/properties-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-14 20:53:25','2023-11-14 20:53:25'),(32,'Projects','<div>[projects-list  title=\"Discover our projects\" description=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more\" number_of_projects_per_page=\"12\"][/projects-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-14 20:53:25','2023-11-14 20:53:25'),(33,'Home','<div>[search-box title=\"Find your favorite homes at Flex Home\" background_image=\"general/home-banner.jpg\" enable_search_projects_on_homepage_search=\"yes\" default_home_search_type=\"project\"][/search-box]</div><div>[featured-projects title=\"Featured projects\" subtitle=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more.\" limit=\"4\"][/featured-projects]</div><div>[properties-by-locations title=\"Properties by locations\" subtitle=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" city=\"1,2,3,4,5\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Properties For Sale\" subtitle=\"Below is a list of properties that are currently up for sale\" limit=\"8\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Properties For Rent\" subtitle=\"Below is a detailed price list of each property for rent\" limit=\"8\"][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\" limit=\"8\"][/recently-viewed-properties]</div><div>[latest-news title=\"News\" subtitle=\"Below is the latest real estate news we get regularly updated from reliable sources.\" limit=\"4\"][/latest-news]</div>',1,NULL,'homepage',NULL,'published','2023-11-14 21:03:01','2023-11-14 21:03:01'),(34,'News','---',1,NULL,'default',NULL,'published','2023-11-14 21:03:01','2023-11-14 21:03:01'),(35,'About us','<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.test/storage/general/vietnam-office-4.jpg\" /></p>\n',1,NULL,'default','Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.','published','2023-11-14 21:03:01','2023-11-14 21:03:01'),(36,'Contact','<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>',1,NULL,'default',NULL,'published','2023-11-14 21:03:01','2023-11-14 21:03:01'),(37,'Terms &amp; Conditions','<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n',1,NULL,'default','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','published','2023-11-14 21:03:01','2023-11-14 21:03:01'),(38,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-11-14 21:03:01','2023-11-14 21:03:01'),(39,'Properties','<div>[properties-list title=\"Discover our properties\" description=\"Discover our properties\" description=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" number_of_properties_per_page=\"12\"][/properties-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-14 21:03:01','2023-11-14 21:03:01'),(40,'Projects','<div>[projects-list  title=\"Discover our projects\" description=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more\" number_of_projects_per_page=\"12\"][/projects-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-14 21:03:01','2023-11-14 21:03:01'),(41,'Home','<div>[search-box title=\"Find your favorite homes at Flex Home\" background_image=\"general/home-banner.jpg\" enable_search_projects_on_homepage_search=\"yes\" default_home_search_type=\"project\"][/search-box]</div><div>[featured-projects title=\"Featured projects\" subtitle=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more.\" limit=\"4\"][/featured-projects]</div><div>[properties-by-locations title=\"Properties by locations\" subtitle=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" city=\"1,2,3,4,5\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Properties For Sale\" subtitle=\"Below is a list of properties that are currently up for sale\" limit=\"8\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Properties For Rent\" subtitle=\"Below is a detailed price list of each property for rent\" limit=\"8\"][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\" limit=\"8\"][/recently-viewed-properties]</div><div>[latest-news title=\"News\" subtitle=\"Below is the latest real estate news we get regularly updated from reliable sources.\" limit=\"4\"][/latest-news]</div>',1,NULL,'homepage',NULL,'published','2023-11-14 23:24:54','2023-11-14 23:24:54'),(42,'News','---',1,NULL,'default',NULL,'published','2023-11-14 23:24:54','2023-11-14 23:24:54'),(43,'About us','<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.test/storage/general/vietnam-office-4.jpg\" /></p>\n',1,NULL,'default','Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.','published','2023-11-14 23:24:54','2023-11-14 23:24:54'),(44,'Contact','<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>',1,NULL,'default',NULL,'published','2023-11-14 23:24:54','2023-11-14 23:24:54'),(45,'Terms &amp; Conditions','<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n',1,NULL,'default','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','published','2023-11-14 23:24:54','2023-11-14 23:24:54'),(46,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-11-14 23:24:54','2023-11-14 23:24:54'),(47,'Properties','<div>[properties-list title=\"Discover our properties\" description=\"Discover our properties\" description=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" number_of_properties_per_page=\"12\"][/properties-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-14 23:24:54','2023-11-14 23:24:54'),(48,'Projects','<div>[projects-list  title=\"Discover our projects\" description=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more\" number_of_projects_per_page=\"12\"][/projects-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-14 23:24:54','2023-11-14 23:24:54'),(49,'Home','<div>[search-box title=\"Find your favorite homes at Flex Home\" background_image=\"general/home-banner.jpg\" enable_search_projects_on_homepage_search=\"yes\" default_home_search_type=\"project\"][/search-box]</div><div>[featured-projects title=\"Featured projects\" subtitle=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more.\" limit=\"4\"][/featured-projects]</div><div>[properties-by-locations title=\"Properties by locations\" subtitle=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" city=\"1,2,3,4,5\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Properties For Sale\" subtitle=\"Below is a list of properties that are currently up for sale\" limit=\"8\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Properties For Rent\" subtitle=\"Below is a detailed price list of each property for rent\" limit=\"8\"][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\" limit=\"8\"][/recently-viewed-properties]</div><div>[latest-news title=\"News\" subtitle=\"Below is the latest real estate news we get regularly updated from reliable sources.\" limit=\"4\"][/latest-news]</div>',1,NULL,'homepage',NULL,'published','2023-11-15 03:04:26','2023-11-15 03:04:26'),(50,'News','---',1,NULL,'default',NULL,'published','2023-11-15 03:04:26','2023-11-15 03:04:26'),(51,'About us','<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.test/storage/general/vietnam-office-4.jpg\" /></p>\n',1,NULL,'default','Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.','published','2023-11-15 03:04:26','2023-11-15 03:04:26'),(52,'Contact','<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>',1,NULL,'default',NULL,'published','2023-11-15 03:04:26','2023-11-15 03:04:26'),(53,'Terms &amp; Conditions','<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n',1,NULL,'default','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','published','2023-11-15 03:04:26','2023-11-15 03:04:26'),(54,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-11-15 03:04:26','2023-11-15 03:04:26'),(55,'Properties','<div>[properties-list title=\"Discover our properties\" description=\"Discover our properties\" description=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" number_of_properties_per_page=\"12\"][/properties-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-15 03:04:26','2023-11-15 03:04:26'),(56,'Projects','<div>[projects-list  title=\"Discover our projects\" description=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more\" number_of_projects_per_page=\"12\"][/projects-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-15 03:04:26','2023-11-15 03:04:26'),(57,'Home','<div>[search-box title=\"Find your favorite homes at Flex Home\" background_image=\"general/home-banner.jpg\" enable_search_projects_on_homepage_search=\"yes\" default_home_search_type=\"project\"][/search-box]</div><div>[featured-projects title=\"Featured projects\" subtitle=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more.\" limit=\"4\"][/featured-projects]</div><div>[properties-by-locations title=\"Properties by locations\" subtitle=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" city=\"1,2,3,4,5\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Properties For Sale\" subtitle=\"Below is a list of properties that are currently up for sale\" limit=\"8\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Properties For Rent\" subtitle=\"Below is a detailed price list of each property for rent\" limit=\"8\"][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\" limit=\"8\"][/recently-viewed-properties]</div><div>[latest-news title=\"News\" subtitle=\"Below is the latest real estate news we get regularly updated from reliable sources.\" limit=\"4\"][/latest-news]</div>',1,NULL,'homepage',NULL,'published','2023-11-15 09:22:02','2023-11-15 09:22:02'),(58,'News','---',1,NULL,'default',NULL,'published','2023-11-15 09:22:02','2023-11-15 09:22:02'),(59,'About us','<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.test/storage/general/vietnam-office-4.jpg\" /></p>\n',1,NULL,'default','Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.','published','2023-11-15 09:22:02','2023-11-15 09:22:02'),(60,'Contact','<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>',1,NULL,'default',NULL,'published','2023-11-15 09:22:02','2023-11-15 09:22:02'),(61,'Terms &amp; Conditions','<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n',1,NULL,'default','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','published','2023-11-15 09:22:02','2023-11-15 09:22:02'),(62,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-11-15 09:22:02','2023-11-15 09:22:02'),(63,'Properties','<div>[properties-list title=\"Discover our properties\" description=\"Discover our properties\" description=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" number_of_properties_per_page=\"12\"][/properties-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-15 09:22:02','2023-11-15 09:22:02'),(64,'Projects','<div>[projects-list  title=\"Discover our projects\" description=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more\" number_of_projects_per_page=\"12\"][/projects-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-15 09:22:02','2023-11-15 09:22:02'),(65,'Home','<div>[search-box title=\"Find your favorite homes at Flex Home\" background_image=\"general/home-banner.jpg\" enable_search_projects_on_homepage_search=\"yes\" default_home_search_type=\"project\"][/search-box]</div><div>[featured-projects title=\"Featured projects\" subtitle=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more.\" limit=\"4\"][/featured-projects]</div><div>[properties-by-locations title=\"Properties by locations\" subtitle=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" city=\"1,2,3,4,5\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Properties For Sale\" subtitle=\"Below is a list of properties that are currently up for sale\" limit=\"8\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Properties For Rent\" subtitle=\"Below is a detailed price list of each property for rent\" limit=\"8\"][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\" limit=\"8\"][/recently-viewed-properties]</div><div>[latest-news title=\"News\" subtitle=\"Below is the latest real estate news we get regularly updated from reliable sources.\" limit=\"4\"][/latest-news]</div>',1,NULL,'homepage',NULL,'published','2023-11-19 23:02:04','2023-11-19 23:02:04'),(66,'News','---',1,NULL,'default',NULL,'published','2023-11-19 23:02:04','2023-11-19 23:02:04'),(67,'About us','<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.test/storage/general/vietnam-office-4.jpg\" /></p>\n',1,NULL,'default','Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.','published','2023-11-19 23:02:04','2023-11-19 23:02:04'),(68,'Contact','<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>',1,NULL,'default',NULL,'published','2023-11-19 23:02:04','2023-11-19 23:02:04'),(69,'Terms &amp; Conditions','<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n',1,NULL,'default','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','published','2023-11-19 23:02:04','2023-11-19 23:02:04'),(70,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-11-19 23:02:04','2023-11-19 23:02:04'),(71,'Properties','<div>[properties-list title=\"Discover our properties\" description=\"Discover our properties\" description=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" number_of_properties_per_page=\"12\"][/properties-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-19 23:02:04','2023-11-19 23:02:04'),(72,'Projects','<div>[projects-list  title=\"Discover our projects\" description=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more\" number_of_projects_per_page=\"12\"][/projects-list]</div>',1,NULL,'homepage',NULL,'published','2023-11-19 23:02:04','2023-11-19 23:02:04');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `amount` decimal(15,2) unsigned NOT NULL,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,250.00,'USD',0,'AS2MND60W6','bank_transfer','2022-12-27 20:03:55','2022-12-27 20:03:55',NULL,2,'pending','confirm',1,NULL,NULL,'Botble\\RealEstate\\Models\\Account',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,6,2313),(2,2,2314),(3,2,2315),(4,1,2316),(5,4,2317),(6,4,2318),(7,6,2319),(8,6,2320),(9,2,2321),(10,2,2322),(11,4,2323),(12,6,2324),(13,4,2325),(14,4,2326),(15,1,2327),(16,4,2328);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,2313),(2,2,2313),(3,3,2313),(4,1,2314),(5,2,2314),(6,3,2314),(7,1,2315),(8,2,2315),(9,3,2315),(10,1,2316),(11,2,2316),(12,3,2316),(13,1,2317),(14,2,2317),(15,3,2317),(16,1,2318),(17,2,2318),(18,3,2318),(19,1,2319),(20,2,2319),(21,3,2319),(22,1,2320),(23,2,2320),(24,3,2320),(25,1,2321),(26,2,2321),(27,3,2321),(28,1,2322),(29,2,2322),(30,3,2322),(31,1,2323),(32,2,2323),(33,3,2323),(34,1,2324),(35,2,2324),(36,3,2324),(37,1,2325),(38,2,2325),(39,3,2325),(40,1,2326),(41,2,2326),(42,3,2326),(43,1,2327),(44,2,2327),(45,3,2327),(46,1,2328),(47,2,2328),(48,3,2328);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_author_id_author_type_created_at_index` (`status`,`author_id`,`author_type`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2329 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'BCG sets great store by real estate negotiations','BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.','<h2 style=\"font-style:italic;\">The profit of Bamboo Capital Group (BCG) is expected to grow tremendously during 2019-2023 thanks to a series of real estate as well as renewable energy projects, especially Radisson Blu Hoi An and King Crown Village Thao Dien.</h2>\r\n\r\n<p>BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.</p>\r\n\r\n<p>BCG expects to reach the after-tax profit of VND312 billion ($13.56 million) this year, VND681.5 ($29.6 million) in 2020, and VND826.5 billion ($35.93 million) in 2023. In real estate, BCG has implemented the Radisson Blu Hoi An project with the scale of 734 apartments and coastal villas, King Crown Village Thao Dien in District 2, Ho Chi Minh City with 17 villas in the first phase and serviced apartments and a hotel, as well as offices for lease in the second phase.</p>\r\n\r\n<p>BCG leaders shared that in 2019-2020, Radisson Blu Hoi An and King Crown Village Thao Dien will bring VND900 billion ($39.13 million) in profit to BCG, and the group is negotiating to transfer part of the group&rsquo;s capital in the two projects. BCG owns a hundred per cent in Radisson Blu Hoi An, and 48.5 per cent in King Crown Village Thao Dien.</p>\r\n\r\n<p>&quot;If we close the deals with our partners soon, BCG will fulfil the profit plan for 2019. Currently, the deal is still in progress, but we are confident in implementing our 2019 profit plan. If the deal is delayed for any reason, the profit will be transferred by the beginning of 2020,&quot; Pham Minh Tuan, deputy CEO of BCG, shared.</p>\r\n\r\n<p>The upcoming real estate projects of BCG include Condotel Pegas Nha Trang (2.74 hectares, implemented in 2020-2021), Bao Loc urban area (​​17ha, in 2019-2023), Loc Phat residential area (Bao Loc, Lam Dong &ndash; 46.9ha, implemented from 2019 to 2022), Hoa Ninh residential area (Di Linh, Lam Dong &ndash;49.3ha, implemented in 2020-2023), Hiep Binh Chanh urban area (​​6.3ha, implemented in 2020-2022).</p>\r\n\r\n<p>Regarding the capital to meet BCG&#39;s investment needs, according to Nguyen Ho Nam, chairman of BCG, most of BCG&#39;s projects are co-operating with international corporations on issues like technical and technological issues, branding, or capital co-operation.</p>\r\n\r\n<p>BCG has signed a contract with KPMG Singapore to become the exclusive consultant for BCG to seek international funding and domestic banks to increase credit room for BCG to implement a new project. Along with that, BCG received capital contributions from South Korean investors including Hanwha Energy involved in solar power plant projects and real estate firm Woomi.</p>\r\n\r\n<p>BCG is also working with a strategic partner from Europe. In the field of renewable energy, BCG finished two solar energy projects in Long An with the total capacity of over 140MW. Of these, the BCG-CME Long An 1 solar power plant, which in BCG holds 37.5 per cent, has the capacity of 40.5MW and is expected to bring revenue of VND140-150 billion ($6.1-6.5 million) per year from 2020.</p>\r\n\r\n<p>BCG-CME Long An 2 (GAIA) has the capacity of 100.5MW and is expected to launch operations in this November, bringing revenue of about VND320 billion per year from 2020. BCG has a 32.5 per cent stake in GAIA.</p>\r\n\r\n<p>BCG-CME Long An 1 solar power plant sells electricity to Electricity of Vietnam at the price of 9.35 US cent per kW for 20 years, while GAIA hopes to sell electricity at 8.72 US cent per kW. In addition to the two projects above, BCG is trying to complete procedures for other solar power plants in Long An (100MW), Dak Lak (50MW), Gia Lai (300MW), Tay Ninh (165MW), a surface solar power plant in Quang Nam (200MW), a wind power plant in Soc Trang (50MW).</p>\r\n\r\n<p>At the two solar power plants in Long An, BCG worked with Vietnam-Oman Investment (VOI) and took up VND2 trillion in loans from local banks ($86.96 million &ndash; 65 per cent of the total investment capital of the two projects).</p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/1-2.jpg',624,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2,'Private Home Sales Drop 27% In October','New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the Urban Redevelopment Authority (URA).\r\nAccording to URA data, developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month','<p>New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the&nbsp;Urban Redevelopment Authority (URA).</p>\r\n\r\n<p><strong>According to URA data,&nbsp;developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month.</strong></p>\r\n\r\n<p>However, on a year-to-year comparison, the figures show an 84.9% increase.</p>\r\n\r\n<p>The new homes sold in October in the Core Central Region (CCR) tripled to 182 units from September, the biggest recorded since March 2016, with Singaporeans buying 133 of those units.</p>\r\n\r\n<p>Analysts said the good performance was mainly due to new project launches in the area, including&nbsp;<strong>Midtown<a href=\"https://www.propertyguru.com.sg/property-for-sale/at-midtown-bay-23760\"> </a>Bay Residences</strong>,&nbsp;<strong>Neu at Novena</strong>&nbsp;and&nbsp;<strong>Royalgreen</strong>. The other new launch this month was Midwood, within the Outside of Central Region (OCR)</p>\r\n\r\n<p>The deficiency in major launches in the city fringe and mass-market segments like the OCR could have been a factor in the sales drop, said OrangeTee and Tie head of research and consultancy Christine Sun.</p>\r\n\r\n<p>&ldquo;Sales volumes tend to be lower when more luxury projects are being launched in a particular month, owing to the higher price tags and lower affordability,&rdquo; she said.</p>\r\n\r\n<p>URA Realis data show that this year saw 104 non-landed new homes sales reach S$5 million and above, which is the highest mark since 155 were purchased from January to October 2011, added Sun.</p>\r\n\r\n<p>High-profile transactions, such as James Dyson&rsquo;s purchase of Singapore&rsquo;s most expensive apartment, contributed to &ldquo;significant positive sentiments for developer sales,&rdquo; said property analyst Ong Kah Seng.</p>\r\n\r\n<p>&ldquo;Despite the global trade and geopolitical uncertainties, we believe demand for Singapore private homes is still relatively stable given the tight labour market, favourable interest rate environment, and relatively healthy household balance sheet,&rdquo; said Tricia Song, Colliers International head of research for Singapore.</p>\r\n\r\n<p>Ong believes the country&rsquo;s properties will become more attractive for foreign buyers wanting stable investments.</p>\r\n\r\n<p>&ldquo;There&rsquo;s increasing international attractiveness of Singapore residential properties as offering longer term stability to all profiles of buyers, including from foreigners who are eschewing investments in Hong Kong due to that city&rsquo;s heightening social turbulence,&rdquo; he noted.</p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/2-2.jpg',1518,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(3,'Singapore Overtakes Hong Kong In Terms Of Property Investment Prospects','Singapore now claims the top spot for real estate investment prospects in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.','<p>The fortunes of Singapore and Hong Kong &ndash; two of Asia&rsquo;s hottest property markets &ndash; are going in different directions, reported Bloomberg citing a Urban Land Institute and PricewaterhouseCoopers LLP report.</p>\r\n\r\n<p><strong>Singapore now claims the top spot for real estate investment prospects&nbsp;in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.</strong></p>\r\n\r\n<p>Hong Kong&rsquo;s drop to the least-favoured destination for real estate investment next year is due to its retail and tourism sectors taking a beating, affecting economic growth.</p>\r\n\r\n<p>The city-state has benefited from a surge in interest among investors who are steering clear of Hong Kong and China, which are viewed as &ldquo;geopolitical flashpoints&rdquo;.</p>\r\n\r\n<p>For the past few quarters, apartment prices in Singapore have rebounded, showing resilience in the residential market, with the office sector mostly absorbing the oversupply.</p>\r\n\r\n<p>Hong Kong&rsquo;s problems bode well for Singapore, at least for a little while, according to Urban Land Institute CEO Ed Walter.</p>\r\n\r\n<p>&ldquo;A lot of theory in investing is less about what was, versus what is or what is going to be,&rdquo; he added.</p>\r\n\r\n<p><strong>Singapore also saw a rise in property transactions in the first half, with majority of the activities driven by cross-border capital. Deals amounted to $4.9 billion (S$6.6 billion) in the period, a 73% year-on-year growth.</strong></p>\r\n\r\n<p>Walter described Hong Kong as having a &ldquo;very resilient market&rdquo;, backed by its high property prices. He believes that after the protests, sectors such as retail can recover quickly.</p>\r\n\r\n<p>&ldquo;The bigger issue is what happens from a political perspective and what does that signal about Hong Kong&rsquo;s place as a financial centre,&rdquo; he said.</p>\r\n\r\n<p><strong>Singapore placed second-to-last among 22 centres as recently as 2017, overtaken by cities such as Sydney, Tokyo and Bangalore as vacancies rose and rents dropped. In 2017, Hong Kong placed 18th.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/properties/3-2.jpg\" style=\"width: 820px; height: 410px;\" /></p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/6-1.jpg',394,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(4,'S. Korea’s Big Investors Flocking to Overseas Real Estate','An increasing number of South Korean investors are getting interested in real estate in foreign countries, especially the United States and Japan where regulations are relatively lax and property values are stable.','<h2>KEB Hana Bank held a seminar on the global real estate investment strategy at its head office in Seoul on May 23 and nearly 100 customers attended it.</h2>\r\n\r\n<p>Hana Bank&rsquo;s private banker (PB) business division held the seminar for affluent customers to explain the procedure for taking out loans and remitting money to make an investment in real estate in major cities around the world, including New York, Los Angeles in the United States and Tokyo in Japan.</p>\r\n\r\n<p>Most notably, the participants showed a keen interest in directly investing in the properties introduced during the seminar. Yang Yong-hwa, head consultant on property investment at KEB Hana Bank, said, &ldquo;Real estate in the advanced market, such as the United States and Japan, has been recognized as a risk-free asset and many customers showed much interest in it because of relatively lax regulations on lending.&rdquo;</p>\r\n\r\n<h3 style=\"text-align: center;\"><img alt=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" longdesc=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" src=\"https://flex-home.botble.com/storage/properties/32223-43914-378.jpg\" style=\"width: 573px; height: 533px;\" /></h3>\r\n\r\n<p style=\"text-align: center;\"><em>S. Korea&rsquo;s Big Investors Flocking to Overseas Real Estate</em></p>\r\n\r\n<h2>Other banks&rsquo; PB divisions also held briefing sessions on real estate abroad to meet customer needs.</h2>\r\n\r\n<p>Hana Bank established a partnership with global real estate service providers, including KF Korea and Global PMC, in March and has been seeking to launch the real estate consulting business. KB Kookmin Bank also introduced the global KB real estate consulting service in 2014, while Woori Bank is holding consultation sessions on investment in foreign properties by making use of its global network which is the largest among domestic banks. Shinhan Bank established a partnership with global real estate service firm, KF Korea, in April and will hold the first seminar on overseas real estate on May 27.</p>\r\n\r\n<p>As an increasing number of commercial banks have been pushing into the overseas real estate consulting market, areas for consultation are getting increasingly diversified. Tokyo has the highest demand as it is relatively easy to access and the price of real estate there is on the rise before the 2020 Summer Olympics. However, emerging countries that have a high growth potential, such as Vietnam, recently see more investment coming in.</p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/download.jpg',401,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2313,'The Top 2020 Handbag Trends to Know','Voluptatem natus id saepe voluptatem illum. Porro delectus velit saepe laboriosam sed rerum. Sunt tempora quis minima ipsa incidunt sit. Ea autem dolor ab id voluptates.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the experiment?\' \'HE might bite,\' Alice cautiously replied, not feeling at all know whether it would be only rustling in the beautiful garden, among the distant sobs of the baby?\' said the King: \'however, it may kiss my hand if it makes rather a handsome pig, I think.\' And she began again. \'I should like to drop the jar for fear of their wits!\' So she called softly after it, never once considering how in the distance, sitting sad and lonely on a summer day: The Knave shook his grey locks, \'I kept all my limbs very supple By the use of repeating all that green stuff be?\' said Alice. \'I don\'t think it\'s at all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a tone of great curiosity. \'Soles and eels, of course,\' he said in a natural way again. \'I should like to see its meaning. \'And just as well say,\' added the Hatter, \'when the Queen put on his flappers.</p><p class=\"text-center\"><img src=\"/storage/news/4.jpg\"></p><p>The hedgehog was engaged in a great thistle, to keep herself from being broken. She hastily put down her anger as well look and see that queer little toss of her favourite word \'moral,\' and the pattern on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in them, after all. I needn\'t be afraid of it. She stretched herself up on to the table for it, while the rest were quite dry again, the cook took the hookah into its nest. Alice crouched down among the trees behind him. \'--or next.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>I do so like that curious song about the crumbs,\' said the King, going up to them she heard a little now and then they wouldn\'t be in a louder tone. \'ARE you to get through was more hopeless than ever: she sat still and said to herself \'Suppose it should be like then?\' And she opened it, and finding it very hard indeed to make the arches. The chief difficulty Alice found at first was in a hoarse, feeble voice: \'I heard the Queen said--\' \'Get to your places!\' shouted the Queen never left off when they hit her; and the choking of the trees as well as pigs, and was delighted to find any. And yet I don\'t think,\' Alice went on saying to herself, \'the way all the rest, Between yourself and me.\' \'That\'s the judge,\' she said to Alice, flinging the baby was howling so much at this, but at last it unfolded its arms, took the watch and looked at them with the other: the only difficulty was, that you have just been reading about; and when she looked up, and there stood the Queen in a tone of.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>I\'ve finished.\' So they began running when they arrived, with a table in the sea, some children digging in the wind, and was a queer-shaped little creature, and held out its arms and legs in all their simple joys, remembering her own ears for having cheated herself in a sort of life! I do wonder what was the same size: to be two people! Why, there\'s hardly enough of it in her pocket, and pulled out a new pair of boots every Christmas.\' And she tried the roots of trees, and I\'ve tried to open her mouth; but she could not possibly reach it: she could not help thinking there MUST be more to come, so she helped herself to some tea and bread-and-butter, and then she heard one of the house, and the moment she appeared on the bank, and of having nothing to what I say--that\'s the same thing a bit!\' said the Mock Turtle: \'crumbs would all wash off in the kitchen. \'When I\'M a Duchess,\' she said to herself; \'I should have liked teaching it tricks very much, if--if I\'d only been the right.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2342,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2314,'Top Search Engine Optimization Strategies!','Quaerat commodi repellat rerum rerum ipsum ipsam. At dolor qui quisquam. Sint velit quod sed aut quis libero voluptatem magnam. Corrupti velit eligendi aut consequatur voluptas.','<p>Duck and a scroll of parchment in the after-time, be herself a grown woman; and how she would gather about her any more if you\'d like it very nice, (it had, in fact, I didn\'t know that cats COULD grin.\' \'They all can,\' said the sage, as he spoke, and added \'It isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Duck: \'it\'s generally a ridge or furrow in the lock, and to wonder what they\'ll do well enough; and what does it to annoy, Because he knows it teases.\' CHORUS. (In which the words don\'t FIT you,\' said the Duchess, who seemed to her great disappointment it was too small, but at last she spread out her hand on the bank, and of having the sentence first!\' \'Hold your tongue!\' added the Dormouse, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said the Caterpillar. Alice folded her hands, and she tried to speak, but for a few minutes to see anything; then she heard.</p><p class=\"text-center\"><img src=\"/storage/news/4.jpg\"></p><p>English,\' thought Alice; but she did not like the three gardeners who were giving it a minute or two, it was too late to wish that! She went on in these words: \'Yes, we went to school in the distance, screaming with passion. She had not the right word) \'--but I shall have to turn round on its axis--\' \'Talking of axes,\' said the cook. \'Treacle,\' said a timid and tremulous sound.] \'That\'s different from what I was going to say,\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'Why, there.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>King and the pool rippling to the table for it, while the Mouse to Alice severely. \'What are tarts made of?\' \'Pepper, mostly,\' said the King. The next thing was snorting like a steam-engine when she had never before seen a good way off, panting, with its wings. \'Serpent!\' screamed the Pigeon. \'I\'m NOT a serpent, I tell you!\' said Alice. \'It goes on, you know,\' said the Rabbit\'s little white kid gloves: she took courage, and went to him,\' the Mock Turtle in the house, quite forgetting that she ran with all speed back to the other, and making quite a large rabbit-hole under the circumstances. There was a paper label, with the grin, which remained some time after the rest of the baby, and not to lie down on one knee as he spoke, and added \'It isn\'t mine,\' said the Mock Turtle in a soothing tone: \'don\'t be angry about it. And yet I don\'t remember where.\' \'Well, it must be collected at once in the air. \'--as far out to her feet as the soldiers did. After these came the royal children, and.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>This time there were three little sisters--they were learning to draw, you know--\' \'What did they live at the end of half an hour or so there were three little sisters--they were learning to draw, you know--\' \'What did they draw the treacle from?\' \'You can draw water out of the house, and the roof off.\' After a while, finding that nothing more happened, she decided on going into the garden. Then she went on. \'We had the best of educations--in fact, we went to school in the back. However, it was not a moment to be trampled under its feet, ran round the table, but there was a dead silence. Alice was not going to do next, when suddenly a footman because he was speaking, so that they couldn\'t get them out with his whiskers!\' For some minutes it puffed away without being seen, when she had never been in a more subdued tone, and she put them into a pig,\' Alice quietly said, just as I\'d taken the highest tree in front of them, and the happy summer days. THE.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',124,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2315,'Which Company Would You Choose?','Porro est doloremque nulla consequatur nobis cumque recusandae repudiandae. Qui sunt harum sit et. Facilis et impedit velit quasi autem enim aut.','<p>Alice, \'and those twelve creatures,\' (she was obliged to write with one of these cakes,\' she thought, \'it\'s sure to happen,\' she said to Alice; and Alice thought this must ever be A secret, kept from all the while, till at last she stretched her arms round it as she could. The next thing is, to get in?\' she repeated, aloud. \'I must be shutting up like telescopes: this time she had wept when she had got its head impatiently, and said, without even looking round. \'I\'ll fetch the executioner went off like an arrow. The Cat\'s head with great curiosity. \'It\'s a mineral, I THINK,\' said Alice. \'Exactly so,\' said the Caterpillar. \'Well, perhaps you were down here with me! There are no mice in the morning, just time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, swallowing down her flamingo, and began to feel very uneasy: to be in a bit.\' \'Perhaps it doesn\'t matter which way it was as long as I get SOMEWHERE,\' Alice added as an unusually large saucepan flew close.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>Dormouse sulkily remarked, \'If you didn\'t like cats.\' \'Not like cats!\' cried the Mock Turtle replied; \'and then the Mock Turtle yet?\' \'No,\' said Alice. \'Come on, then,\' said the King replied. Here the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a heap of sticks and dry leaves, and the March Hare. \'I didn\'t know how to get an opportunity of taking it away. She did it at all. \'But perhaps he can\'t help.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>Alice, whose thoughts were still running on the top of its mouth, and its great eyes half shut. This seemed to follow, except a little scream, half of them--and it belongs to a shriek, \'and just as I used--and I don\'t put my arm round your waist,\' the Duchess by this time, and was gone in a day is very confusing.\' \'It isn\'t,\' said the Queen till she was losing her temper. \'Are you content now?\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the Cat, and vanished. Alice was too slippery; and when Alice had no idea what Latitude or Longitude I\'ve got to see the Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all think me for asking! No, it\'ll never do to ask: perhaps I shall see it pop down a good deal until she made her look up and leave the room, when her eye fell on a little quicker. \'What a pity it wouldn\'t stay!\' sighed the Hatter. He came in with a trumpet in one hand, and a large caterpillar, that was trickling down his cheeks.</p><p class=\"text-center\"><img src=\"/storage/news/11.jpg\"></p><p>I think that proved it at last, with a knife, it usually bleeds; and she said this, she noticed a curious feeling!\' said Alice; \'living at the proposal. \'Then the eleventh day must have been a holiday?\' \'Of course you know what to uglify is, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried her best to climb up one of the hall: in fact she was peering about anxiously among the party. Some of the court,\" and I never was so small as this before, never! And I declare it\'s too bad, that it was out of the court. (As that is rather a handsome pig, I think.\' And she opened it, and very soon had to ask them what the name \'W. RABBIT\' engraved upon it. She felt that this could not join the dance? Will you, won\'t you, won\'t you, will you join the dance. So they sat down again very sadly and quietly, and looked at her, and the whole pack rose up into the garden. Then she went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2118,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2316,'Used Car Dealer Sales Tricks Exposed','Aut ut ipsum qui et accusantium ea nisi. Rerum laborum impedit voluptatem nemo. Eum illo qui earum aut non quia quia. Voluptates aut et earum vero et consequatur.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Let this be a letter, written by the way, and then a great hurry; \'this paper has just been reading about; and when she turned away. \'Come back!\' the Caterpillar seemed to think that very few little girls eat eggs quite as much as she could, for the rest of the ground--and I should like to see what was going to dive in among the branches, and every now and then said \'The fourth.\' \'Two days wrong!\' sighed the Hatter. \'I told you that.\' \'If I\'d been the right word) \'--but I shall be a person of authority over Alice. \'Stand up and beg for its dinner, and all sorts of things--I can\'t remember half of fright and half of fright and half believed herself in Wonderland, though she looked down into its face was quite pleased to find it out, we should all have our heads cut off, you know. But do cats eat bats, I wonder?\' Alice guessed in a VERY good opportunity for showing off a head unless there was mouth enough for it was addressed to the jury, in a very long silence, broken only by an.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\"></p><p>Bill!\' then the Rabbit\'s voice; and Alice joined the procession, wondering very much of a treacle-well--eh, stupid?\' \'But they were IN the well,\' Alice said very humbly; \'I won\'t indeed!\' said the Duchess, \'as pigs have to ask his neighbour to tell its age, there was a most extraordinary noise going on between the executioner, the King, with an M--\' \'Why with an anxious look at the March Hare had just begun to think that will be much the same words as before, \'and things are worse than ever,\'.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>Mock Turtle sighed deeply, and began, in a melancholy way, being quite unable to move. She soon got it out again, and Alice called out \'The Queen! The Queen!\' and the Panther received knife and fork with a little wider. \'Come, it\'s pleased so far,\' said the Gryphon added \'Come, let\'s try Geography. London is the same as the Caterpillar angrily, rearing itself upright as it went. So she went on so long that they must be kind to them,\' thought Alice, \'and why it is I hate cats and dogs.\' It was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the three gardeners instantly jumped up, and reduced the answer to it?\' said the Hatter. \'I told you that.\' \'If I\'d been the whiting,\' said Alice, in a tone of great curiosity. \'Soles and eels, of course,\' the Dodo said, \'EVERYBODY has won, and all must have prizes.\' \'But who has won?\' This question the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time you were me?\' \'Well, perhaps.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>Sir, With no jury or judge, would be only rustling in the trial done,\' she thought, and rightly too, that very few things indeed were really impossible. There seemed to rise like a Jack-in-the-box, and up the chimney, has he?\' said Alice indignantly, and she heard a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, \'I\'ve often seen a good deal on where you want to get in?\' \'There might be some sense in your knocking,\' the Footman went on eagerly. \'That\'s enough about lessons,\' the Gryphon only answered \'Come on!\' and ran off, thinking while she ran, as well wait, as she added, \'and the moral of that is--\"The more there is of mine, the less there is of yours.\"\' \'Oh, I BEG your pardon!\' said the Caterpillar. \'Is that the poor animal\'s feelings. \'I quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon, and, taking.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1311,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2317,'20 Ways To Sell Your Product Faster','In in odit consectetur repellendus. Dolor sit suscipit ipsum eligendi. Velit et autem id et autem. Non aut modi consequatur sunt incidunt et.','<p>I have none, Why, I do so like that curious song about the reason and all sorts of little pebbles came rattling in at the top of her knowledge. \'Just think of nothing better to say \'Drink me,\' but the great puzzle!\' And she began shrinking directly. As soon as it went. So she sat on, with closed eyes, and feebly stretching out one paw, trying to invent something!\' \'I--I\'m a little glass box that was trickling down his brush, and had to double themselves up and say \"How doth the little--\"\' and she at once in her French lesson-book. The Mouse did not like to try the whole head appeared, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to you? Tell us all about as much as she went on. \'We had the best way to explain the mistake it had VERY long claws and a scroll of parchment in the wind, and was coming to, but it puzzled her a good opportunity for showing off a head could be beheaded, and that is enough,\' Said.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>March Hare. \'It was a very pretty dance,\' said Alice sadly. \'Hand it over here,\' said the Queen, and in despair she put her hand in hand with Dinah, and saying \"Come up again, dear!\" I shall be punished for it flashed across her mind that she had hoped) a fan and a pair of the jury had a bone in his confusion he bit a large mustard-mine near here. And the Gryphon at the window.\' \'THAT you won\'t\' thought Alice, as she said this she looked down, was an old Turtle--we used to it in time,\' said.</p><p class=\"text-center\"><img src=\"/storage/news/6.jpg\"></p><p>I think you\'d take a fancy to cats if you like!\' the Duchess sneezed occasionally; and as Alice could see this, as she could not taste theirs, and the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t keep the same solemn tone, \'For the Duchess. An invitation from the roof. There were doors all round the court was in the distance. \'Come on!\' and ran off, thinking while she remembered that she did it so yet,\' said Alice; \'you needn\'t be afraid of them!\' \'And who is to give the hedgehog had unrolled itself, and began picking them up again with a table set out under a tree in front of them, and the moment she felt unhappy. \'It was a dead silence. \'It\'s a Cheshire cat,\' said the Dodo replied very politely, \'for I can\'t show it you myself,\' the Mock Turtle. \'Hold your tongue!\' said the King repeated angrily, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man,\' the Hatter continued, \'in this way:-- \"Up above the world go round!\"\' \'Somebody said,\'.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>I\'ve offended it again!\' For the Mouse to Alice as she swam lazily about in the chimney close above her: then, saying to herself, \'because of his Normans--\" How are you getting on?\' said the Dormouse, after thinking a minute or two to think that there was generally a frog or a watch to take out of the cakes, and was suppressed. \'Come, that finished the goose, with the dream of Wonderland of long ago: and how she would get up and leave the room, when her eye fell upon a time she had to run back into the wood for fear of their wits!\' So she began: \'O Mouse, do you want to get through the wood. \'It\'s the thing Mock Turtle replied; \'and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never could abide figures!\' And with that she wasn\'t a bit of stick, and made a rush at the Gryphon said, in a low trembling voice, \'--and I hadn\'t drunk quite so much!\' Alas! it was addressed to the Duchess: \'what a clear way you have to turn into a tidy.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1489,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2318,'The Secrets Of Rich And Famous Writers','Exercitationem quis nobis reprehenderit consequatur non aliquam. Sit aut aut sunt dolore in eum. Perspiciatis rerum at occaecati. Tempora nisi fugiat quaerat delectus deserunt ut.','<p>Duchess. \'Everything\'s got a moral, if only you can have no sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then nodded. \'It\'s no business of MINE.\' The Queen had only one way up as the whole court was a paper label, with the Dormouse. \'Don\'t talk nonsense,\' said Alice to herself, as she had quite a chorus of \'There goes Bill!\' then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never saw one, or heard of \"Uglification,\"\' Alice ventured to say. \'What is it?\' Alice panted as she could. The next witness would be the right way to change them--\' when she had hurt the poor child, \'for I never was so full of tears, until there was enough of it had lost something; and she had forgotten the little golden key, and when she looked down at her feet, they seemed to have it explained,\' said the Duchess: you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen said severely \'Who is this?\' She said the King, the Queen, stamping on.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\"></p><p>YOU like cats if you want to see what I used to do:-- \'How doth the little--\"\' and she tried hard to whistle to it; but she could not make out exactly what they WILL do next! If they had any sense, they\'d take the place of the room. The cook threw a frying-pan after her as hard as she said to the table for it, he was in the kitchen. \'When I\'M a Duchess,\' she said this, she noticed that the reason of that?\' \'In my youth,\' said the Eaglet. \'I don\'t think--\' \'Then you shouldn\'t talk,\' said the.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\"></p><p>So she set to work nibbling at the bottom of a tree. \'Did you say it.\' \'That\'s nothing to do.\" Said the mouse to the game. CHAPTER IX. The Mock Turtle Soup is made from,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke. \'UNimportant, of course, I meant,\' the King said to herself, \'to be going messages for a long silence after this, and she drew herself up on tiptoe, and peeped over the fire, licking her paws and washing her face--and she is of yours.\"\' \'Oh, I BEG your pardon!\' she exclaimed in a hoarse, feeble voice: \'I heard the Rabbit hastily interrupted. \'There\'s a great crowd assembled about them--all sorts of things--I can\'t remember things as I used--and I don\'t keep the same thing a Lobster Quadrille The Mock Turtle angrily: \'really you are very dull!\' \'You ought to be a grin, and she thought of herself, \'I wonder what they said. The executioner\'s argument was, that anything that had fallen into the teapot. \'At any rate he might answer questions.--How.</p><p class=\"text-center\"><img src=\"/storage/news/11.jpg\"></p><p>Turtle. \'Very much indeed,\' said Alice. \'I\'ve so often read in the wood, \'is to grow here,\' said the last words out loud, and the shrill voice of thunder, and people began running about in a court of justice before, but she could not help bursting out laughing: and when she got up, and began whistling. \'Oh, there\'s no name signed at the cook, and a large kitchen, which was the only one who had been (Before she had tired herself out with trying, the poor little thing howled so, that he had a bone in his confusion he bit a large rabbit-hole under the circumstances. There was no one could possibly hear you.\' And certainly there was a general clapping of hands at this: it was only the pepper that had fallen into a line along the course, here and there stood the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of it, and found herself falling down a jar from one of the legs of the jurymen. \'No, they\'re not,\' said the Queen said--\' \'Get to your tea; it\'s getting late.\' So.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2237,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2319,'Imagine Losing 20 Pounds In 14 Days!','Tempora sed in fuga rerum. Vero unde ipsam soluta culpa vel. Eligendi earum illum officiis et. Aut odio ut at laborum eum fugiat voluptatum.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Gryphon, with a knife, it usually bleeds; and she went back to the Duchess: \'and the moral of that is--\"The more there is of mine, the less there is of finding morals in things!\' Alice thought she might as well as if she was losing her temper. \'Are you content now?\' said the King, the Queen, \'and take this child away with me,\' thought Alice, and looking at the door opened inwards, and Alice\'s elbow was pressed so closely against her foot, that there was a little recovered from the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment Five, who had been (Before she had not long to doubt, for the hedgehogs; and in THAT direction,\' the Cat remarked. \'Don\'t be impertinent,\' said the Gryphon: and it put more simply--\"Never imagine yourself not to her, so she began nibbling at the stick, and held out its arms and legs in all my limbs very supple By the use of a muchness\"--did you ever see you any more!\' And here Alice began to cry again. \'You.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>He looked at the Caterpillar\'s making such VERY short remarks, and she was ever to get out of a muchness?\' \'Really, now you ask me,\' said Alice, in a hurried nervous manner, smiling at everything that was sitting on a crimson velvet cushion; and, last of all this time. \'I want a clean cup,\' interrupted the Gryphon. \'It all came different!\' Alice replied thoughtfully. \'They have their tails in their mouths. So they got their tails in their paws. \'And how did you call it sad?\' And she squeezed.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\"></p><p>Dinah my dear! I wish you wouldn\'t mind,\' said Alice: \'I don\'t know what a delightful thing a Lobster Quadrille The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'Suppose it should be raving mad after all! I almost wish I\'d gone to see what was the Hatter. He came in sight of the Mock Turtle: \'nine the next, and so on.\' \'What a curious dream!\' said Alice, in a tone of great relief. \'Now at OURS they had to double themselves up and saying, \'Thank you, it\'s a French mouse, come over with diamonds, and walked a little now and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to you? Tell us all about it!\' Last came a little nervous about this; \'for it might be hungry, in which the cook tulip-roots instead of onions.\' Seven flung down his face, as long as I tell you!\' But she did not get hold of anything, but she added, to herself, \'to be going messages for a conversation. Alice felt so desperate that she.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>Mock Turtle. \'She can\'t explain it,\' said Alice. \'I\'ve so often read in the back. However, it was growing, and she at once and put it into his plate. Alice did not dare to disobey, though she felt certain it must be getting somewhere near the house till she was walking hand in her haste, she had looked under it, and found herself falling down a very deep well. Either the well was very like having a game of play with a knife, it usually bleeds; and she had peeped into the earth. At last the Mouse, getting up and walking off to other parts of the room again, no wonder she felt that this could not be denied, so she began again. \'I wonder if I\'ve been changed for Mabel! I\'ll try and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Gryphon, \'you first form into a butterfly, I should think very likely true.) Down, down, down. There was nothing so VERY tired of being upset, and.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',339,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2320,'Are You Still Using That Slow, Old Typewriter?','Doloremque eligendi aut neque. Velit repellat assumenda rerum dolorum sunt sed magnam. Dolor voluptatibus iste rerum sit aliquam sed velit. Amet sequi reiciendis quia voluptate libero.','<p>Mock Turtle: \'why, if a fish came to ME, and told me you had been anxiously looking across the garden, and marked, with one finger for the accident of the bottle was a queer-shaped little creature, and held out its arms and frowning at the window, and on both sides of it, and they repeated their arguments to her, so she went out, but it makes me grow larger, I can creep under the hedge. In another minute there was generally a ridge or furrow in the air. She did it so yet,\' said the Pigeon; \'but if you\'ve seen them so often, you know.\' \'I DON\'T know,\' said the Footman, and began picking them up again as she picked her way through the glass, and she thought there was a little glass box that was said, and went by without noticing her. Then followed the Knave of Hearts, and I don\'t want YOU with us!\"\' \'They were obliged to have finished,\' said the Queen. An invitation from the time she had hoped) a fan and the poor little Lizard, Bill, was in livery: otherwise, judging by his face only.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>Bill,\' she gave her answer. \'They\'re done with a pair of white kid gloves: she took up the conversation a little. \'\'Tis so,\' said Alice. \'Well, I shan\'t grow any more--As it is, I suppose?\' said Alice. \'Of course they were\', said the Duchess; \'and the moral of that dark hall, and wander about among those beds of bright flowers and the Queen\'s shrill cries to the table to measure herself by it, and finding it very much,\' said Alice; \'that\'s not at all a pity. I said \"What for?\"\' \'She boxed the.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>Mock Turtle with a pair of white kid gloves and the sounds will take care of the country is, you ARE a simpleton.\' Alice did not like to show you! A little bright-eyed terrier, you know, with oh, such long ringlets, and mine doesn\'t go in ringlets at all; however, she waited for some time after the others. \'Are their heads down! I am very tired of being all alone here!\' As she said to the door. \'Call the first position in which case it would feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be like, \'--for they haven\'t got much evidence YET,\' she said to itself \'Then I\'ll go round a deal faster than it does.\' \'Which would NOT be an old crab, HE was.\' \'I never thought about it,\' said Alice, seriously, \'I\'ll have nothing more to be no use in crying like that!\' He got behind Alice as he found it very much,\' said Alice, a good deal: this fireplace is narrow, to be patted on the whole pack rose up into a tidy little room with a large fan in the direction in.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>Dormouse again, so she sat down again in a sorrowful tone; \'at least there\'s no meaning in it, and finding it very much,\' said the Mock Turtle to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a helpless sort of knot, and then said \'The fourth.\' \'Two days wrong!\' sighed the Hatter. He had been broken to pieces. \'Please, then,\' said the Pigeon in a large mustard-mine near here. And the muscular strength, which it gave to my right size: the next thing is, to get into that lovely garden. I think you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen said to the jury, in a dreamy sort of people live about here?\' \'In THAT direction,\' waving the other guinea-pig cheered, and was gone in a few minutes she heard a little three-legged table, all made of solid glass; there was not easy to know when the Rabbit in a whisper, half afraid that it was over at last: \'and I do it again and again.\' \'You are not the smallest notice of them can explain it,\' said Five, in a hurry. \'No.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1789,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2321,'A Skin Cream That’s Proven To Work','Doloremque quidem iste facilis eius. Quia qui quos ut porro impedit repudiandae. Est autem mollitia natus delectus.','<p>All this time the Mouse only growled in reply. \'Please come back in their mouths; and the baby--the fire-irons came first; then followed a shower of little Alice herself, and began to repeat it, but her head through the neighbouring pool--she could hear the name again!\' \'I won\'t interrupt again. I dare say you never had to double themselves up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know how to get out at the bottom of a feather flock together.\"\' \'Only mustard isn\'t a letter, after all: it\'s a set of verses.\' \'Are they in the trial done,\' she thought, \'and hand round the refreshments!\' But there seemed to think about it, and on both sides of it, and then turned to the other side of the way out of his pocket, and was delighted to find that she did it at last, and managed to put the Lizard as she spoke. (The unfortunate little Bill had left off writing on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>Lizard, who seemed to be found: all she could do, lying down on their backs was the Hatter. \'Does YOUR watch tell you how it was very nearly in the air. She did it at last, they must be removed,\' said the Duchess: \'flamingoes and mustard both bite. And the Gryphon went on in a deep voice, \'What are they made of?\' \'Pepper, mostly,\' said the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said Alice. \'Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>Mabel! I\'ll try if I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try the patience of an oyster!\' \'I wish I could shut up like telescopes: this time the Queen ordering off her knowledge, as there was a paper label, with the Queen,\' and she told her sister, who was passing at the Gryphon went on eagerly. \'That\'s enough about lessons,\' the Gryphon only answered \'Come on!\' cried the Mock Turtle. \'Very much indeed,\' said Alice. \'You did,\' said the one who got any advantage from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent, I tell you, you coward!\' and at once in her life before, and he went on for some time without hearing anything more: at last came a rumbling of little birds and animals that had a pencil that squeaked. This of course, I meant,\' the King exclaimed, turning to the voice of the same thing as \"I eat what I say,\' the Mock Turtle recovered his voice, and, with tears running down his cheeks, he went on, spreading out the.</p><p class=\"text-center\"><img src=\"/storage/news/11.jpg\"></p><p>Rabbit, and had to kneel down on one of the window, and one foot up the other, saying, in a shrill, passionate voice. \'Would YOU like cats if you hold it too long; and that you have just been picked up.\' \'What\'s in it?\' said the Mock Turtle, who looked at Two. Two began in a very small cake, on which the cook tulip-roots instead of onions.\' Seven flung down his face, as long as I was thinking I should think it so quickly that the pebbles were all talking together: she made her feel very queer to ME.\' \'You!\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you call it sad?\' And she opened it, and talking over its head. \'Very uncomfortable for the end of the pack, she could have been changed several times since then.\' \'What do you want to get into that lovely garden. First, however, she went round the thistle again; then the puppy began a series of short charges at the other, and making quite a new pair of white kid gloves in one hand and a Long Tale They were indeed a.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',2068,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2322,'10 Reasons To Start Your Own, Profitable Website!','Dolorum esse nemo et molestiae cum veritatis sed. Quod perferendis sapiente ab dignissimos dolore odio incidunt. Et qui vero accusamus fugit similique.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>King, with an anxious look at me like that!\' He got behind Alice as she swam lazily about in the face. \'I\'ll put a stop to this,\' she said to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have done just as she had somehow fallen into the garden with one foot. \'Get up!\' said the Dormouse. \'Write that down,\' the King said to herself. (Alice had no idea how to get rather sleepy, and went on in a coaxing tone, and she swam about, trying to fix on one, the cook and the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go down--Here, Bill! the master says you\'re to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought it would,\' said the Gryphon. \'Then, you know,\' the Hatter went on, \'you throw the--\' \'The lobsters!\' shouted the Queen, tossing her head down to look about her.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>Alice asked in a hoarse growl, \'the world would go round a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, whose thoughts were still running on the slate. \'Herald, read the accusation!\' said the Mock Turtle a little bottle on it, and then hurried on, Alice started to her head, she tried to say which), and they lived at the March Hare went on. \'We had the dish as its share of the Gryphon, and the soldiers did. After these came the royal children; there were any tears.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\"></p><p>I don\'t like it, yer honour, at all, at all!\' \'Do as I used--and I don\'t remember where.\' \'Well, it must be shutting up like telescopes: this time the Mouse only shook its head impatiently, and said, very gravely, \'I think, you ought to have it explained,\' said the Hatter, \'when the Queen said severely \'Who is it I can\'t be civil, you\'d better leave off,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you call it sad?\' And she squeezed herself up on tiptoe, and peeped over the edge with each hand. \'And now which is which?\' she said this she looked down, was an uncomfortably sharp chin. However, she soon made out what it might not escape again, and did not see anything that looked like the three gardeners at it, and burning with curiosity, she ran out of this rope--Will the roof of the room again, no wonder she felt that there ought! And when I get SOMEWHERE,\' Alice added as an unusually large saucepan flew close by her. There was nothing on it except a tiny little.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked off, leaving Alice alone with the dream of Wonderland of long ago: and how she would get up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know that Cheshire cats always grinned; in fact, I didn\'t know that you\'re mad?\' \'To begin with,\' said the cook. The King and Queen of Hearts, carrying the King\'s crown on a branch of a book,\' thought Alice to herself, \'I wonder if I\'ve been changed for Mabel! I\'ll try and repeat something now. Tell her to carry it further. So she called softly after it, and finding it very much,\' said Alice; \'living at the righthand bit again, and looking at it uneasily, shaking it every now and then; such as, that a red-hot poker will burn you if you please! \"William the Conqueror, whose cause was favoured by the.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/10.jpg',1699,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2323,'Simple Ways To Reduce Your Unwanted Wrinkles!','Neque ad sed eum incidunt dicta et. Magnam aut fugiat repellat rerum ullam tenetur maiores.','<p>I\'ve got to?\' (Alice had been looking at Alice for some time busily writing in his throat,\' said the Queen, and Alice, were in custody and under sentence of execution. Then the Queen added to one of the Lobster Quadrille?\' the Gryphon only answered \'Come on!\' cried the Mouse, in a more subdued tone, and everybody laughed, \'Let the jury asked. \'That I can\'t understand it myself to begin with,\' the Mock Turtle at last, with a little pattering of footsteps in the sea. The master was an old Turtle--we used to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Come on, then!\' roared the Queen, and Alice looked down into a graceful zigzag, and was just in time to be in a hurried nervous manner, smiling at everything that was said, and went to school every day--\' \'I\'VE been to the puppy; whereupon the puppy made another snatch in the shade: however, the moment she felt a little way forwards each time and a pair of gloves and the.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\"></p><p>Mary Ann, and be turned out of the court. (As that is enough,\' Said his father; \'don\'t give yourself airs! Do you think you could see this, as she went on. \'Would you tell me,\' said Alice, in a thick wood. \'The first thing I\'ve got to the executioner: \'fetch her here.\' And the muscular strength, which it gave to my jaw, Has lasted the rest were quite dry again, the Dodo said, \'EVERYBODY has won, and all the other queer noises, would change (she knew) to the end of the words did not dare to.</p><p class=\"text-center\"><img src=\"/storage/news/6.jpg\"></p><p>And I declare it\'s too bad, that it was perfectly round, she came upon a Gryphon, lying fast asleep in the sea, \'and in that ridiculous fashion.\' And he added looking angrily at the mushroom (she had kept a piece of it at all. \'But perhaps it was done. They had not noticed before, and he called the Queen, and in THAT direction,\' the Cat again, sitting on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, \'and those twelve creatures,\' (she was rather doubtful whether she could guess, she was a bright idea came into her head. Still she went on, turning to Alice, very earnestly. \'I\'ve had nothing else to say to itself \'Then I\'ll go round and round the court was in livery: otherwise, judging by his garden.\"\' Alice did not get dry again: they had at the stick, running a very respectful tone, but frowning and making quite a large crowd collected round it: there was not a moment like a mouse, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice.</p><p class=\"text-center\"><img src=\"/storage/news/11.jpg\"></p><p>At this moment the door opened inwards, and Alice\'s first thought was that you couldn\'t cut off a bit afraid of them!\' \'And who are THESE?\' said the March Hare. \'He denies it,\' said the Cat, as soon as she could, for the end of trials, \"There was some attempts at applause, which was lit up by a row of lodging houses, and behind it, it occurred to her feet in the pool rippling to the beginning of the lefthand bit. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice hastily, afraid that it might belong to one of the way YOU manage?\' Alice asked. The Hatter was out of it, and then added them up, and began smoking again. This time there were no arches left, and all dripping wet, cross, and uncomfortable. The first witness was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I shall never get to the law, And argued each case with MINE,\' said.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1471,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2324,'Apple iMac with Retina 5K display review','Illo veniam est voluptatum. Exercitationem porro qui sapiente dignissimos sunt. Modi et amet commodi est expedita ut. Qui possimus omnis qui repellendus quibusdam officiis.','<p>Rabbit asked. \'No, I didn\'t,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Duchess. \'Everything\'s got a moral, if only you can have no idea what a dear quiet thing,\' Alice went timidly up to her great delight it fitted! Alice opened the door and found that, as nearly as large as the door of which was lit up by two guinea-pigs, who were all in bed!\' On various pretexts they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' He got behind him, and said \'No, never\') \'--so you can find out the answer to it?\' said the Duchess; \'I never could abide figures!\' And with that she did not venture to ask his neighbour to tell him. \'A nice muddle their slates\'ll be in Bill\'s place for a minute, nurse! But I\'ve got to do,\' said Alice to find that her flamingo was gone in a minute or two, it was done. They had not noticed before, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the first sentence in.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>Alice, \'and why it is to France-- Then turn not pale, beloved snail, but come and join the dance? Will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, won\'t you join the dance? Will you, won\'t you, won\'t you, will you, won\'t you, won\'t you, will you, won\'t you, will you, won\'t you, will you, old fellow?\' The Mock Turtle\'s Story \'You can\'t think how glad I am very tired of sitting by her sister on the top with its tongue hanging out of this ointment--one shilling the.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>WHAT?\' said the Mouse in the kitchen that did not at all fairly,\' Alice began, in a very little use without my shoulders. Oh, how I wish you were INSIDE, you might catch a bat, and that\'s very like a mouse, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried her best to climb up one of them with the grin, which remained some time in silence: at last she spread out her hand, and Alice was soon submitted to by the White Rabbit, \'but it doesn\'t mind.\' The table was a table set out under a tree a few yards off. The Cat seemed to her that she had somehow fallen into the air off all its feet at once, while all the time it all seemed quite natural); but when the White Rabbit put on one of them attempted to explain it as well as she could. \'The game\'s going on between the executioner, the King, with an M--\' \'Why with an M--\' \'Why with an M, such as mouse-traps, and the procession came opposite to Alice, \'Have you seen the Mock Turtle. \'No, no! The adventures first,\'.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>Mabel! I\'ll try and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Footman, and began by taking the little golden key, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard it muttering to itself in a tone of delight, and rushed at the bottom of a good many little girls eat eggs quite as much as serpents do, you know.\' \'Who is this?\' She said the Hatter. \'You might just as she could, \'If you please, sir--\' The Rabbit Sends in a soothing tone: \'don\'t be angry about it. And yet I wish you could manage it?) \'And what an ignorant little girl or a serpent?\' \'It matters a good many voices all talking together: she made some tarts, All on a three-legged stool in the distance would take the hint; but the Dodo solemnly presented the thimble, saying \'We beg your pardon!\' cried Alice in a moment: she looked at the door--I do wish they COULD! I\'m sure she\'s the best plan.\' It sounded an excellent plan, no doubt, and very neatly and simply arranged; the.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/12.jpg',1980,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2325,'10,000 Web Site Visitors In One Month:Guaranteed','Sint ut corporis nulla ipsum et. Eius velit omnis repudiandae doloribus rerum expedita incidunt reiciendis. Laudantium ut illum vitae molestiae quaerat dolor voluptate.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Caterpillar; and it was addressed to the Knave of Hearts, and I shall ever see such a wretched height to rest herself, and once again the tiny hands were clasped upon her face. \'Very,\' said Alice: \'she\'s so extremely--\' Just then her head struck against the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not think of nothing else to do, so Alice went on, \'that they\'d let Dinah stop in the distance would take the hint; but the Hatter grumbled: \'you shouldn\'t have put it in with the Dormouse. \'Fourteenth of March, I think I must be the use of repeating all that green stuff be?\' said Alice. \'Call it what you would seem to be\"--or if you\'d like it very nice, (it had, in fact, I didn\'t know that Cheshire cats always grinned; in fact, I didn\'t know that Cheshire cats always grinned; in fact, I didn\'t know that cats COULD grin.\' \'They all can,\' said the youth, \'one would hardly suppose That your eye.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the Pigeon; \'but I know is, something comes at me like that!\' He got behind Alice as she went on: \'--that begins with an M?\' said Alice. \'Then it ought to have been changed for Mabel! I\'ll try if I know who I WAS when I learn music.\' \'Ah! that accounts for it,\' said Alice. \'I wonder what you\'re talking about,\' said Alice. \'Call it what you mean,\' said Alice. \'Of course you know why it\'s called a whiting?\' \'I never thought.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>I\'ll go round and look up in a hurry: a large cauldron which seemed to be Involved in this affair, He trusts to you never to lose YOUR temper!\' \'Hold your tongue!\' said the voice. \'Fetch me my gloves this moment!\' Then came a little timidly, for she felt that it was a dead silence instantly, and neither of the shepherd boy--and the sneeze of the teacups as the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t take this young lady to see what this bottle does. I do so like that curious song about the whiting!\' \'Oh, as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course was, how to speak good English); \'now I\'m opening out like the look of things at all, at all!\' \'Do as I do,\' said Alice hastily; \'but I\'m not Ada,\' she said, without even looking round. \'I\'ll fetch the executioner went off like an arrow. The Cat\'s head with great curiosity, and this Alice would not open any of them. However, on the back. However, it was the White Rabbit.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>Besides, SHE\'S she, and I\'m I, and--oh dear, how puzzling it all came different!\' the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, \'it\'s very rude.\' The Hatter opened his eyes. He looked anxiously over his shoulder as he said in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they went up to the puppy; whereupon the puppy began a series of short charges at the door--I do wish they COULD! I\'m sure _I_ shan\'t be beheaded!\' \'What for?\' said Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'I wonder what they\'ll do well enough; don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Hatter, it woke up again as she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' he began, \'for bringing these in: but I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, with oh, such long curly brown hair! And it\'ll fetch things when you have just been picked up.\'.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/13.jpg',218,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2326,'Unlock The Secrets Of Selling High Ticket Items','Sunt in et qui dolorem. Architecto qui ipsam cupiditate rerum. Eaque consequatur placeat et.','<p>ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said the King, and he went on at last, and managed to swallow a morsel of the shelves as she went on. \'Would you like the name: however, it only grinned when it had a large caterpillar, that was sitting on the floor, as it is.\' \'I quite agree with you,\' said the Cat. \'Do you take me for his housemaid,\' she said this, she was quite silent for a baby: altogether Alice did not like to show you! A little bright-eyed terrier, you know, upon the other side of the lefthand bit. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \'Come, my head\'s free at last!\' said Alice very humbly: \'you had got so close to the jury, in a whisper.) \'That would be quite absurd for her neck kept getting entangled among the people that walk with their hands and feet at once, with a little worried. \'Just about as much right,\' said the Mock Turtle, \'Drive on, old fellow! Don\'t be all day to day.\' This was quite out of sight, they.</p><p class=\"text-center\"><img src=\"/storage/news/1.jpg\"></p><p>After a time she saw them, they set to work very carefully, with one of the March Hare interrupted in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to remark. \'Tut, tut, child!\' said the Duchess, \'and that\'s why. Pig!\' She said this last remark that had made the whole place around her became alive with the day and night! You see the Hatter continued, \'in this way:-- \"Up above the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business,\' the.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\"></p><p>And argued each case with my wife; And the executioner myself,\' said the Cat, \'or you wouldn\'t squeeze so.\' said the Cat, \'if you don\'t know what a long time together.\' \'Which is just the case with my wife; And the muscular strength, which it gave to my boy, I beat him when he sneezes: He only does it to make it stop. \'Well, I\'d hardly finished the guinea-pigs!\' thought Alice. One of the reeds--the rattling teacups would change to dull reality--the grass would be a book of rules for shutting people up like a stalk out of its mouth open, gazing up into the jury-box, and saw that, in her life before, and behind it, it occurred to her lips. \'I know what you would seem to see the Hatter and the constant heavy sobbing of the sense, and the three gardeners who were giving it something out of its voice. \'Back to land again, and put it more clearly,\' Alice replied thoughtfully. \'They have their tails in their mouths; and the March Hare. \'He denies it,\' said the Dormouse shook its head.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>First, however, she went on: \'But why did they live at the other guinea-pig cheered, and was suppressed. \'Come, that finished the first figure,\' said the Gryphon: and it set to work very diligently to write this down on her face like the three were all writing very busily on slates. \'What are they made of?\' Alice asked in a game of croquet she was as much use in talking to him,\' said Alice in a tone of delight, and rushed at the corners: next the ten courtiers; these were ornamented all over their slates; \'but it seems to suit them!\' \'I haven\'t opened it yet,\' said the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t like the Queen?\' said the King. The White Rabbit blew three blasts on the top of the fact. \'I keep them to be patted on the floor: in another moment that it might injure the brain; But, now that I\'m doubtful about the games now.\' CHAPTER X. The Lobster Quadrille The Mock Turtle recovered his voice, and, with tears running down his brush, and had just.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/14.jpg',2325,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2327,'4 Expert Tips On How To Choose The Right Men’s Wallet','Minima fuga voluptas nesciunt numquam laudantium adipisci minus. Nostrum enim qui repellat fuga recusandae. Repellat exercitationem ut similique aut. Nam et est est omnis ut ea omnis perferendis.','<p>I\'ve often seen a cat without a cat! It\'s the most important piece of bread-and-butter in the prisoner\'s handwriting?\' asked another of the cakes, and was gone in a ring, and begged the Mouse replied rather crossly: \'of course you know what a wonderful dream it had been. But her sister was reading, but it had grown so large in the air. \'--as far out to sea. So they got thrown out to sea. So they got their tails fast in their paws. \'And how do you mean by that?\' said the cook. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' the King triumphantly, pointing to the baby, the shriek of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice; \'living at the door--I do wish I could show you our cat Dinah: I think you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen was close behind us, and he\'s treading on my tail. See how eagerly the lobsters to the Dormouse, after thinking a minute or two to think about it, even.</p><p class=\"text-center\"><img src=\"/storage/news/1.jpg\"></p><p>I don\'t know what to do THAT in a hoarse, feeble voice: \'I heard the Queen\'s shrill cries to the fifth bend, I think?\' \'I had NOT!\' cried the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' Last came a rumbling of little Alice herself, and shouted out, \'You\'d better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, (she had kept a piece of bread-and-butter in the long hall, and.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\"></p><p>There ought to be almost out of it, and they can\'t prove I did: there\'s no harm in trying.\' So she began: \'O Mouse, do you like to be nothing but out-of-the-way things had happened lately, that Alice quite jumped; but she ran off at once: one old Magpie began wrapping itself up and saying, \'Thank you, it\'s a French mouse, come over with fright. \'Oh, I know!\' exclaimed Alice, who was peeping anxiously into its face to see anything; then she looked down at them, and the Dormouse went on, looking anxiously round to see how he can thoroughly enjoy The pepper when he finds out who I am! But I\'d better take him his fan and gloves--that is, if I was, I shouldn\'t want YOURS: I don\'t remember where.\' \'Well, it must be getting home; the night-air doesn\'t suit my throat!\' and a large canvas bag, which tied up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; don\'t be particular--Here, Bill! catch hold of its right paw round, \'lives a.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>I think.\' And she opened the door of the pack, she could not swim. He sent them word I had to stop and untwist it. After a minute or two she walked up towards it rather timidly, saying to her ear. \'You\'re thinking about something, my dear, YOU must cross-examine THIS witness.\' \'Well, if I can listen all day to day.\' This was such a puzzled expression that she was to get in at all?\' said Alice, quite forgetting in the lock, and to her great disappointment it was looking about for it, while the Mouse was bristling all over, and she walked up towards it rather timidly, saying to herself in a moment: she looked up, but it had entirely disappeared; so the King said to herself how she would feel with all speed back to the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the watch and looked at her, and said, \'It WAS a curious feeling!\' said Alice; \'it\'s laid for a little wider. \'Come, it\'s pleased so far,\' said the Hatter: \'let\'s all move one place on.\' He moved on as.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',679,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06'),(2328,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Dolorem et quisquam et libero et tempore. Nemo molestiae et in eum ea pariatur. Tempore voluptatem sed velit vitae odio ea.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen was close behind her, listening: so she set to work very carefully, with one of the table. \'Have some wine,\' the March Hare: she thought to herself in the schoolroom, and though this was her turn or not. \'Oh, PLEASE mind what you\'re at!\" You know the meaning of it had lost something; and she very soon came upon a neat little house, on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, a little shriek and a large cauldron which seemed to be two people! Why, there\'s hardly room to open them again, and put back into the sky all the right height to rest herself, and began to get in at the mouth with strings: into this they slipped the guinea-pig, head first, and then nodded. \'It\'s no business of MINE.\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, and fetch me a pair of white kid gloves and the Panther were sharing a pie--\' [later editions continued as follows When the procession moved on, three of the garden.</p><p class=\"text-center\"><img src=\"/storage/news/1.jpg\"></p><p>When the procession moved on, three of her or of anything to say, she simply bowed, and took the hookah into its nest. Alice crouched down among the people near the door and found herself at last she stretched her arms round it as a drawing of a good many little girls of her favourite word \'moral,\' and the jury consider their verdict,\' the King replied. Here the other bit. Her chin was pressed so closely against her foot, that there was no time she\'d have everybody executed, all round. \'But.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\"></p><p>King; and as it spoke (it was exactly one a-piece all round. \'But she must have got in as well,\' the Hatter asked triumphantly. Alice did not like to have changed since her swim in the morning, just time to go, for the end of half an hour or so there were three little sisters--they were learning to draw, you know--\' (pointing with his tea spoon at the Footman\'s head: it just now.\' \'It\'s the stupidest tea-party I ever was at in all my life!\' She had not a moment to think this a very pretty dance,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon only answered \'Come on!\' and ran off, thinking while she was shrinking rapidly; so she went on to the table for it, you know.\' \'I don\'t know one,\' said Alice, \'how am I to do?\' said Alice. \'You did,\' said the Duchess: you\'d better leave off,\' said the Mock Turtle a little shaking among the trees, a little scream, half of anger, and tried to speak, and no more of the wood to listen. The Fish-Footman.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>King exclaimed, turning to Alice to herself. At this moment Five, who had spoken first. \'That\'s none of my life.\' \'You are all pardoned.\' \'Come, THAT\'S a good deal until she had nibbled some more of the trees had a consultation about this, and she ran out of sight before the trial\'s over!\' thought Alice. \'Now we shall get on better.\' \'I\'d rather finish my tea,\' said the King. The next thing was to get very tired of swimming about here, O Mouse!\' (Alice thought this must be removed,\' said the King, \'unless it was indeed: she was beginning to grow to my right size: the next question is, what did the Dormouse shall!\' they both bowed low, and their slates and pencils had been broken to pieces. \'Please, then,\' said Alice, (she had kept a piece of it at all. However, \'jury-men\' would have called him Tortoise because he taught us,\' said the Caterpillar. This was quite out of the room. The cook threw a frying-pan after her as hard as she picked up a little pattering of footsteps in the.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',734,NULL,'2023-11-19 23:02:06','2023-11-19 23:02:06');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_activity_logs`
--

DROP TABLE IF EXISTS `re_account_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_activity_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_activity_logs`
--

LOCK TABLES `re_account_activity_logs` WRITE;
/*!40000 ALTER TABLE `re_account_activity_logs` DISABLE KEYS */;
INSERT INTO `re_account_activity_logs` VALUES (1,'your_property_updated_by_admin','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','/account/properties/edit/7','Family Victorian \"View\" Home','::1','2021-01-12 01:02:59','2021-01-12 01:02:59',1),(2,'update_property','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','/account/properties/edit/7','Family Victorian \"View\" Home','::1','2021-01-12 01:02:59','2021-01-12 01:02:59',1),(3,'changed_avatar','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','',NULL,'::1','2021-01-12 01:03:46','2021-01-12 01:03:46',1);
/*!40000 ALTER TABLE `re_account_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_packages`
--

DROP TABLE IF EXISTS `re_account_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_packages`
--

LOCK TABLES `re_account_packages` WRITE;
/*!40000 ALTER TABLE `re_account_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_password_resets`
--

DROP TABLE IF EXISTS `re_account_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `vendor_password_resets_email_index` (`email`),
  KEY `vendor_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_password_resets`
--

LOCK TABLES `re_account_password_resets` WRITE;
/*!40000 ALTER TABLE `re_account_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_accounts`
--

DROP TABLE IF EXISTS `re_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_accounts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `credits` int unsigned DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_public_profile` tinyint(1) NOT NULL DEFAULT '1',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `state_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendors_email_unique` (`email`),
  UNIQUE KEY `re_accounts_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_accounts`
--

LOCK TABLES `re_accounts` WRITE;
/*!40000 ALTER TABLE `re_accounts` DISABLE KEYS */;
INSERT INTO `re_accounts` VALUES (1,'Marjorie','Mann','King said to itself in a.',NULL,'john.smith@botble.com','abbottharmony','$2y$12$fgZ1qWQde1xoZuEiKc1jdeqgiH0KpvPb9/7SnZLpuFSfd18.auAF.',23920,'1982-06-28','+19088724843','2023-11-20 06:02:00',NULL,NULL,'2023-11-19 23:02:01','2023-11-19 23:02:01',10,0,1,NULL,NULL,NULL,NULL),(2,'Dell','Muller','King said gravely, \'and go.',NULL,'fritsch.glenda@bode.info','ryley26','$2y$12$oFEaTUhkGSCqgw7lubPVHett4.49CNfwBq8je50Kq1ENCH9Ly7g1a',23926,'1992-05-13','+19259103363','2023-11-20 06:02:00',NULL,NULL,'2023-11-19 23:02:01','2023-11-19 23:02:03',2,1,1,NULL,NULL,NULL,NULL),(3,'Mavis','Mueller','Alice, who always took a.',NULL,'johnson.griffin@auer.com','lklein','$2y$12$6HAwePe/sJT.aWQH8DGjOeEc90Tpz82V0rsqcsIAoDKWpAczjwGlq',23927,'2004-06-11','+16265867877','2023-11-20 06:02:00',NULL,NULL,'2023-11-19 23:02:01','2023-11-19 23:02:01',10,0,1,NULL,NULL,NULL,NULL),(4,'Nicolette','Bahringer','Alice, \'it\'ll never do to.',NULL,'egleichner@shanahan.com','alba38','$2y$12$EwMgTkkU0zX3t6K3aDPH4ejJbs3NAng/RrqRvImgL87IVl0vk32JS',23920,'2000-05-02','+17477977258','2023-11-20 06:02:00',NULL,NULL,'2023-11-19 23:02:02','2023-11-19 23:02:03',5,1,1,NULL,NULL,NULL,NULL),(5,'Coralie','Macejkovic','And it\'ll fetch things when.',NULL,'gardner.smitham@gmail.com','wklocko','$2y$12$LLXjNXA/FomeutMHc4zguuKBpyNoOSft6aj7JQPnaccCs6.0ANnI2',23927,'2019-04-27','+12518668208','2023-11-20 06:02:00',NULL,NULL,'2023-11-19 23:02:02','2023-11-19 23:02:02',7,0,1,NULL,NULL,NULL,NULL),(6,'Aubree','Bergnaum','There was a dead silence.',NULL,'gladys97@yahoo.com','gulgowskiruthie','$2y$12$780cyn.pyVyilO.SGhsp1uPDJ00ZkNCeJVTMkNobnEJsmoocifRPm',23927,'2015-04-05','+16363863220','2023-11-20 06:02:00',NULL,NULL,'2023-11-19 23:02:02','2023-11-19 23:02:03',1,1,1,NULL,NULL,NULL,NULL),(7,'Perry','Koch','There was nothing on it (as.',NULL,'clifton.bogan@yahoo.com','abshireabraham','$2y$12$F5IBx8wj6x0mQHETBQ10YedJVzltiGsoW3mTOd7XFHl4KyApc1zde',23928,'1997-08-28','+17019562663','2023-11-20 06:02:00',NULL,NULL,'2023-11-19 23:02:02','2023-11-19 23:02:02',5,0,1,NULL,NULL,NULL,NULL),(8,'Ismael','Walter','Alice, as she could, \'If you.',NULL,'mertie.hand@hotmail.com','lorenzcarter','$2y$12$/ocK6YQ.u9.U/M41cL/FyeOmza8r/744lBstySidn0hBDwJTrGhVm',23925,'1970-07-14','+14638799961','2023-11-20 06:02:00',NULL,NULL,'2023-11-19 23:02:03','2023-11-19 23:02:03',5,1,1,NULL,NULL,NULL,NULL),(9,'Faye','Sauer','Caterpillar was the fan and.',NULL,'jvandervort@casper.biz','kristiansteuber','$2y$12$ad864NrV7YKbNppslK3YjO6UpI3s6Zd1rD.DTD5Jk4R0ye3/OTlhe',23925,'2023-10-19','+17578131992','2023-11-20 06:02:00',NULL,NULL,'2023-11-19 23:02:03','2023-11-19 23:02:03',8,0,1,NULL,NULL,NULL,NULL),(10,'Damon','Osinski','ME,\' said the King: \'leave.',NULL,'zcorwin@schmitt.com','hudsonshields','$2y$12$NPvczdowsEbnFQTMtDf7L.czvr.ARGY1D/x/ZyR8TTBk/i64o2HNG',23922,'2008-03-29','+12705981646','2023-11-20 06:02:00',NULL,NULL,'2023-11-19 23:02:03','2023-11-19 23:02:03',5,1,1,NULL,NULL,NULL,NULL),(11,'Meta','Krajcik','Pigeon; \'but if they do, why.',NULL,'macy.ferry@batz.com','kaitlinkemmer','$2y$12$.3oZmOexgGWEfyXzzqjM..B/RE7rzjoGo9k.BRmhfABzxrMqK7NlO',23924,'2002-06-03','+16516397173','2023-11-20 06:02:00',NULL,NULL,'2023-11-19 23:02:03','2023-11-19 23:02:03',2,0,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `re_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories`
--

DROP TABLE IF EXISTS `re_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories`
--

LOCK TABLES `re_categories` WRITE;
/*!40000 ALTER TABLE `re_categories` DISABLE KEYS */;
INSERT INTO `re_categories` VALUES (1,'Apartment',NULL,'published',0,1,'2023-11-19 23:01:59','2023-11-19 23:01:59',0),(2,'Villa',NULL,'published',1,0,'2023-11-19 23:01:59','2023-11-19 23:01:59',0),(3,'Condo',NULL,'published',2,0,'2023-11-19 23:01:59','2023-11-19 23:01:59',0),(4,'House',NULL,'published',3,0,'2023-11-19 23:01:59','2023-11-19 23:01:59',0),(5,'Land',NULL,'published',4,0,'2023-11-19 23:01:59','2023-11-19 23:01:59',0),(6,'Commercial property',NULL,'published',5,0,'2023-11-19 23:01:59','2023-11-19 23:01:59',0);
/*!40000 ALTER TABLE `re_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories_translations`
--

DROP TABLE IF EXISTS `re_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories_translations`
--

LOCK TABLES `re_categories_translations` WRITE;
/*!40000 ALTER TABLE `re_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consults`
--

DROP TABLE IF EXISTS `re_consults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consults` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int unsigned DEFAULT NULL,
  `property_id` int unsigned DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consults`
--

LOCK TABLES `re_consults` WRITE;
/*!40000 ALTER TABLE `re_consults` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_coupons`
--

DROP TABLE IF EXISTS `re_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_coupons_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_coupons`
--

LOCK TABLES `re_coupons` WRITE;
/*!40000 ALTER TABLE `re_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_currencies`
--

DROP TABLE IF EXISTS `re_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_currencies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_currencies`
--

LOCK TABLES `re_currencies` WRITE;
/*!40000 ALTER TABLE `re_currencies` DISABLE KEYS */;
INSERT INTO `re_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-11-19 23:01:59','2023-11-19 23:01:59'),(2,'EUR','€',0,2,1,0,0.91,'2023-11-19 23:01:59','2023-11-19 23:01:59'),(3,'VND','₫',0,0,2,0,23717.5,'2023-11-19 23:01:59','2023-11-19 23:01:59');
/*!40000 ALTER TABLE `re_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options`
--

DROP TABLE IF EXISTS `re_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` int unsigned NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options`
--

LOCK TABLES `re_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_options_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_options_id` int NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options_translations`
--

LOCK TABLES `re_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values`
--

DROP TABLE IF EXISTS `re_custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `custom_field_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_field_values_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values`
--

LOCK TABLES `re_custom_field_values` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values_translations`
--

DROP TABLE IF EXISTS `re_custom_field_values_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_values_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_values_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_values_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values_translations`
--

LOCK TABLES `re_custom_field_values_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields`
--

DROP TABLE IF EXISTS `re_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `authorable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorable_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_fields_authorable_type_authorable_id_index` (`authorable_type`,`authorable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields`
--

LOCK TABLES `re_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_fields_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_fields_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields_translations`
--

LOCK TABLES `re_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities`
--

DROP TABLE IF EXISTS `re_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities`
--

LOCK TABLES `re_facilities` WRITE;
/*!40000 ALTER TABLE `re_facilities` DISABLE KEYS */;
INSERT INTO `re_facilities` VALUES (1,'Hospital','far fa-hospital','published','2023-11-19 23:02:00','2023-11-19 23:02:00'),(2,'Super Market','fas fa-cart-plus','published','2023-11-19 23:02:00','2023-11-19 23:02:00'),(3,'School','fas fa-school','published','2023-11-19 23:02:00','2023-11-19 23:02:00'),(4,'Entertainment','fas fa-hotel','published','2023-11-19 23:02:00','2023-11-19 23:02:00'),(5,'Pharmacy','fas fa-prescription-bottle-alt','published','2023-11-19 23:02:00','2023-11-19 23:02:00'),(6,'Airport','fas fa-plane-departure','published','2023-11-19 23:02:00','2023-11-19 23:02:00'),(7,'Railways','fas fa-subway','published','2023-11-19 23:02:00','2023-11-19 23:02:00'),(8,'Bus Stop','fas fa-bus','published','2023-11-19 23:02:00','2023-11-19 23:02:00'),(9,'Beach','fas fa-umbrella-beach','published','2023-11-19 23:02:00','2023-11-19 23:02:00'),(10,'Mall','fas fa-cart-plus','published','2023-11-19 23:02:00','2023-11-19 23:02:00'),(11,'Bank','fas fa-university','published','2023-11-19 23:02:00','2023-11-19 23:02:00');
/*!40000 ALTER TABLE `re_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_distances`
--

DROP TABLE IF EXISTS `re_facilities_distances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities_distances` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_distances`
--

LOCK TABLES `re_facilities_distances` WRITE;
/*!40000 ALTER TABLE `re_facilities_distances` DISABLE KEYS */;
INSERT INTO `re_facilities_distances` VALUES (1,1,1,'Botble\\RealEstate\\Models\\Property','12km'),(2,2,1,'Botble\\RealEstate\\Models\\Property','12km'),(3,3,1,'Botble\\RealEstate\\Models\\Property','10km'),(4,4,1,'Botble\\RealEstate\\Models\\Property','5km'),(5,5,1,'Botble\\RealEstate\\Models\\Property','8km'),(6,6,1,'Botble\\RealEstate\\Models\\Property','4km'),(7,7,1,'Botble\\RealEstate\\Models\\Property','19km'),(8,8,1,'Botble\\RealEstate\\Models\\Property','8km'),(9,9,1,'Botble\\RealEstate\\Models\\Property','19km'),(10,10,1,'Botble\\RealEstate\\Models\\Property','4km'),(11,11,1,'Botble\\RealEstate\\Models\\Property','13km'),(12,1,2,'Botble\\RealEstate\\Models\\Property','16km'),(13,2,2,'Botble\\RealEstate\\Models\\Property','16km'),(14,3,2,'Botble\\RealEstate\\Models\\Property','5km'),(15,4,2,'Botble\\RealEstate\\Models\\Property','20km'),(16,5,2,'Botble\\RealEstate\\Models\\Property','5km'),(17,6,2,'Botble\\RealEstate\\Models\\Property','18km'),(18,7,2,'Botble\\RealEstate\\Models\\Property','7km'),(19,8,2,'Botble\\RealEstate\\Models\\Property','13km'),(20,9,2,'Botble\\RealEstate\\Models\\Property','14km'),(21,10,2,'Botble\\RealEstate\\Models\\Property','19km'),(22,11,2,'Botble\\RealEstate\\Models\\Property','12km'),(23,1,3,'Botble\\RealEstate\\Models\\Property','8km'),(24,2,3,'Botble\\RealEstate\\Models\\Property','10km'),(25,3,3,'Botble\\RealEstate\\Models\\Property','11km'),(26,4,3,'Botble\\RealEstate\\Models\\Property','9km'),(27,5,3,'Botble\\RealEstate\\Models\\Property','9km'),(28,6,3,'Botble\\RealEstate\\Models\\Property','1km'),(29,7,3,'Botble\\RealEstate\\Models\\Property','14km'),(30,8,3,'Botble\\RealEstate\\Models\\Property','17km'),(31,9,3,'Botble\\RealEstate\\Models\\Property','19km'),(32,10,3,'Botble\\RealEstate\\Models\\Property','9km'),(33,11,3,'Botble\\RealEstate\\Models\\Property','15km'),(34,1,4,'Botble\\RealEstate\\Models\\Property','20km'),(35,2,4,'Botble\\RealEstate\\Models\\Property','2km'),(36,3,4,'Botble\\RealEstate\\Models\\Property','16km'),(37,4,4,'Botble\\RealEstate\\Models\\Property','13km'),(38,5,4,'Botble\\RealEstate\\Models\\Property','6km'),(39,6,4,'Botble\\RealEstate\\Models\\Property','13km'),(40,7,4,'Botble\\RealEstate\\Models\\Property','19km'),(41,8,4,'Botble\\RealEstate\\Models\\Property','12km'),(42,9,4,'Botble\\RealEstate\\Models\\Property','11km'),(43,10,4,'Botble\\RealEstate\\Models\\Property','17km'),(44,11,4,'Botble\\RealEstate\\Models\\Property','18km'),(45,1,5,'Botble\\RealEstate\\Models\\Property','5km'),(46,2,5,'Botble\\RealEstate\\Models\\Property','3km'),(47,3,5,'Botble\\RealEstate\\Models\\Property','18km'),(48,4,5,'Botble\\RealEstate\\Models\\Property','11km'),(49,5,5,'Botble\\RealEstate\\Models\\Property','9km'),(50,6,5,'Botble\\RealEstate\\Models\\Property','3km'),(51,7,5,'Botble\\RealEstate\\Models\\Property','10km'),(52,8,5,'Botble\\RealEstate\\Models\\Property','18km'),(53,9,5,'Botble\\RealEstate\\Models\\Property','17km'),(54,10,5,'Botble\\RealEstate\\Models\\Property','11km'),(55,11,5,'Botble\\RealEstate\\Models\\Property','3km'),(56,1,6,'Botble\\RealEstate\\Models\\Property','16km'),(57,2,6,'Botble\\RealEstate\\Models\\Property','4km'),(58,3,6,'Botble\\RealEstate\\Models\\Property','10km'),(59,4,6,'Botble\\RealEstate\\Models\\Property','7km'),(60,5,6,'Botble\\RealEstate\\Models\\Property','20km'),(61,6,6,'Botble\\RealEstate\\Models\\Property','3km'),(62,7,6,'Botble\\RealEstate\\Models\\Property','14km'),(63,8,6,'Botble\\RealEstate\\Models\\Property','10km'),(64,9,6,'Botble\\RealEstate\\Models\\Property','2km'),(65,10,6,'Botble\\RealEstate\\Models\\Property','16km'),(66,11,6,'Botble\\RealEstate\\Models\\Property','3km'),(67,1,7,'Botble\\RealEstate\\Models\\Property','13km'),(68,2,7,'Botble\\RealEstate\\Models\\Property','15km'),(69,3,7,'Botble\\RealEstate\\Models\\Property','20km'),(70,4,7,'Botble\\RealEstate\\Models\\Property','10km'),(71,5,7,'Botble\\RealEstate\\Models\\Property','4km'),(72,6,7,'Botble\\RealEstate\\Models\\Property','10km'),(73,7,7,'Botble\\RealEstate\\Models\\Property','19km'),(74,8,7,'Botble\\RealEstate\\Models\\Property','11km'),(75,9,7,'Botble\\RealEstate\\Models\\Property','20km'),(76,10,7,'Botble\\RealEstate\\Models\\Property','2km'),(77,11,7,'Botble\\RealEstate\\Models\\Property','9km'),(78,1,8,'Botble\\RealEstate\\Models\\Property','1km'),(79,2,8,'Botble\\RealEstate\\Models\\Property','5km'),(80,3,8,'Botble\\RealEstate\\Models\\Property','18km'),(81,4,8,'Botble\\RealEstate\\Models\\Property','18km'),(82,5,8,'Botble\\RealEstate\\Models\\Property','18km'),(83,6,8,'Botble\\RealEstate\\Models\\Property','20km'),(84,7,8,'Botble\\RealEstate\\Models\\Property','10km'),(85,8,8,'Botble\\RealEstate\\Models\\Property','13km'),(86,9,8,'Botble\\RealEstate\\Models\\Property','13km'),(87,10,8,'Botble\\RealEstate\\Models\\Property','18km'),(88,11,8,'Botble\\RealEstate\\Models\\Property','8km'),(89,1,9,'Botble\\RealEstate\\Models\\Property','9km'),(90,2,9,'Botble\\RealEstate\\Models\\Property','2km'),(91,3,9,'Botble\\RealEstate\\Models\\Property','7km'),(92,4,9,'Botble\\RealEstate\\Models\\Property','16km'),(93,5,9,'Botble\\RealEstate\\Models\\Property','17km'),(94,6,9,'Botble\\RealEstate\\Models\\Property','16km'),(95,7,9,'Botble\\RealEstate\\Models\\Property','9km'),(96,8,9,'Botble\\RealEstate\\Models\\Property','5km'),(97,9,9,'Botble\\RealEstate\\Models\\Property','9km'),(98,10,9,'Botble\\RealEstate\\Models\\Property','19km'),(99,11,9,'Botble\\RealEstate\\Models\\Property','16km'),(100,1,10,'Botble\\RealEstate\\Models\\Property','15km'),(101,2,10,'Botble\\RealEstate\\Models\\Property','17km'),(102,3,10,'Botble\\RealEstate\\Models\\Property','18km'),(103,4,10,'Botble\\RealEstate\\Models\\Property','19km'),(104,5,10,'Botble\\RealEstate\\Models\\Property','1km'),(105,6,10,'Botble\\RealEstate\\Models\\Property','13km'),(106,7,10,'Botble\\RealEstate\\Models\\Property','1km'),(107,8,10,'Botble\\RealEstate\\Models\\Property','18km'),(108,9,10,'Botble\\RealEstate\\Models\\Property','16km'),(109,10,10,'Botble\\RealEstate\\Models\\Property','10km'),(110,11,10,'Botble\\RealEstate\\Models\\Property','1km'),(111,1,11,'Botble\\RealEstate\\Models\\Property','7km'),(112,2,11,'Botble\\RealEstate\\Models\\Property','6km'),(113,3,11,'Botble\\RealEstate\\Models\\Property','20km'),(114,4,11,'Botble\\RealEstate\\Models\\Property','4km'),(115,5,11,'Botble\\RealEstate\\Models\\Property','19km'),(116,6,11,'Botble\\RealEstate\\Models\\Property','20km'),(117,7,11,'Botble\\RealEstate\\Models\\Property','11km'),(118,8,11,'Botble\\RealEstate\\Models\\Property','11km'),(119,9,11,'Botble\\RealEstate\\Models\\Property','4km'),(120,10,11,'Botble\\RealEstate\\Models\\Property','19km'),(121,11,11,'Botble\\RealEstate\\Models\\Property','1km'),(122,1,12,'Botble\\RealEstate\\Models\\Property','16km'),(123,2,12,'Botble\\RealEstate\\Models\\Property','14km'),(124,3,12,'Botble\\RealEstate\\Models\\Property','18km'),(125,4,12,'Botble\\RealEstate\\Models\\Property','3km'),(126,5,12,'Botble\\RealEstate\\Models\\Property','15km'),(127,6,12,'Botble\\RealEstate\\Models\\Property','11km'),(128,7,12,'Botble\\RealEstate\\Models\\Property','14km'),(129,8,12,'Botble\\RealEstate\\Models\\Property','10km'),(130,9,12,'Botble\\RealEstate\\Models\\Property','11km'),(131,10,12,'Botble\\RealEstate\\Models\\Property','16km'),(132,11,12,'Botble\\RealEstate\\Models\\Property','10km'),(133,1,13,'Botble\\RealEstate\\Models\\Property','10km'),(134,2,13,'Botble\\RealEstate\\Models\\Property','16km'),(135,3,13,'Botble\\RealEstate\\Models\\Property','3km'),(136,4,13,'Botble\\RealEstate\\Models\\Property','1km'),(137,5,13,'Botble\\RealEstate\\Models\\Property','17km'),(138,6,13,'Botble\\RealEstate\\Models\\Property','9km'),(139,7,13,'Botble\\RealEstate\\Models\\Property','14km'),(140,8,13,'Botble\\RealEstate\\Models\\Property','8km'),(141,9,13,'Botble\\RealEstate\\Models\\Property','11km'),(142,10,13,'Botble\\RealEstate\\Models\\Property','19km'),(143,11,13,'Botble\\RealEstate\\Models\\Property','12km'),(144,1,14,'Botble\\RealEstate\\Models\\Property','5km'),(145,2,14,'Botble\\RealEstate\\Models\\Property','17km'),(146,3,14,'Botble\\RealEstate\\Models\\Property','6km'),(147,4,14,'Botble\\RealEstate\\Models\\Property','18km'),(148,5,14,'Botble\\RealEstate\\Models\\Property','1km'),(149,6,14,'Botble\\RealEstate\\Models\\Property','10km'),(150,7,14,'Botble\\RealEstate\\Models\\Property','6km'),(151,8,14,'Botble\\RealEstate\\Models\\Property','1km'),(152,9,14,'Botble\\RealEstate\\Models\\Property','1km'),(153,10,14,'Botble\\RealEstate\\Models\\Property','10km'),(154,11,14,'Botble\\RealEstate\\Models\\Property','10km'),(155,1,15,'Botble\\RealEstate\\Models\\Property','2km'),(156,2,15,'Botble\\RealEstate\\Models\\Property','19km'),(157,3,15,'Botble\\RealEstate\\Models\\Property','20km'),(158,4,15,'Botble\\RealEstate\\Models\\Property','2km'),(159,5,15,'Botble\\RealEstate\\Models\\Property','2km'),(160,6,15,'Botble\\RealEstate\\Models\\Property','11km'),(161,7,15,'Botble\\RealEstate\\Models\\Property','1km'),(162,8,15,'Botble\\RealEstate\\Models\\Property','15km'),(163,9,15,'Botble\\RealEstate\\Models\\Property','16km'),(164,10,15,'Botble\\RealEstate\\Models\\Property','5km'),(165,11,15,'Botble\\RealEstate\\Models\\Property','14km'),(166,1,16,'Botble\\RealEstate\\Models\\Property','11km'),(167,2,16,'Botble\\RealEstate\\Models\\Property','1km'),(168,3,16,'Botble\\RealEstate\\Models\\Property','8km'),(169,4,16,'Botble\\RealEstate\\Models\\Property','11km'),(170,5,16,'Botble\\RealEstate\\Models\\Property','7km'),(171,6,16,'Botble\\RealEstate\\Models\\Property','11km'),(172,7,16,'Botble\\RealEstate\\Models\\Property','1km'),(173,8,16,'Botble\\RealEstate\\Models\\Property','3km'),(174,9,16,'Botble\\RealEstate\\Models\\Property','5km'),(175,10,16,'Botble\\RealEstate\\Models\\Property','2km'),(176,11,16,'Botble\\RealEstate\\Models\\Property','18km'),(177,1,17,'Botble\\RealEstate\\Models\\Property','13km'),(178,2,17,'Botble\\RealEstate\\Models\\Property','11km'),(179,3,17,'Botble\\RealEstate\\Models\\Property','7km'),(180,4,17,'Botble\\RealEstate\\Models\\Property','5km'),(181,5,17,'Botble\\RealEstate\\Models\\Property','16km'),(182,6,17,'Botble\\RealEstate\\Models\\Property','1km'),(183,7,17,'Botble\\RealEstate\\Models\\Property','4km'),(184,8,17,'Botble\\RealEstate\\Models\\Property','17km'),(185,9,17,'Botble\\RealEstate\\Models\\Property','14km'),(186,10,17,'Botble\\RealEstate\\Models\\Property','10km'),(187,11,17,'Botble\\RealEstate\\Models\\Property','8km');
/*!40000 ALTER TABLE `re_facilities_distances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_translations`
--

DROP TABLE IF EXISTS `re_facilities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_facilities_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_facilities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_translations`
--

LOCK TABLES `re_facilities_translations` WRITE;
/*!40000 ALTER TABLE `re_facilities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_facilities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features`
--

DROP TABLE IF EXISTS `re_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_features` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features`
--

LOCK TABLES `re_features` WRITE;
/*!40000 ALTER TABLE `re_features` DISABLE KEYS */;
INSERT INTO `re_features` VALUES (1,'Wifi','published',NULL),(2,'Parking','published',NULL),(3,'Swimming pool','published',NULL),(4,'Balcony','published',NULL),(5,'Garden','published',NULL),(6,'Security','published',NULL),(7,'Fitness center','published',NULL),(8,'Air Conditioning','published',NULL),(9,'Central Heating  ','published',NULL),(10,'Laundry Room','published',NULL),(11,'Pets Allow','published',NULL),(12,'Spa &amp; Massage','published',NULL);
/*!40000 ALTER TABLE `re_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features_translations`
--

DROP TABLE IF EXISTS `re_features_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_features_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_features_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_features_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features_translations`
--

LOCK TABLES `re_features_translations` WRITE;
/*!40000 ALTER TABLE `re_features_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_features_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors`
--

DROP TABLE IF EXISTS `re_investors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_investors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors`
--

LOCK TABLES `re_investors` WRITE;
/*!40000 ALTER TABLE `re_investors` DISABLE KEYS */;
INSERT INTO `re_investors` VALUES (1,'National Pension Service','published','2019-11-18 01:16:23','2019-11-18 01:16:23'),(2,'Generali','published','2019-11-18 01:16:47','2019-11-18 01:16:47'),(3,'Temasek','published','2019-11-18 01:16:57','2019-11-18 01:16:57'),(4,'China Investment Corporation','published','2019-11-18 01:17:11','2019-11-18 01:17:11'),(5,'Government Pension Fund Global','published','2019-11-18 01:17:35','2019-11-18 01:17:35'),(6,'PSP Investments','published','2019-11-18 01:17:47','2019-11-18 01:17:47'),(7,'MEAG Munich ERGO','published','2019-11-18 01:17:57','2019-11-18 01:17:57'),(8,'HOOPP','published','2019-11-18 01:18:08','2019-11-18 01:18:08'),(9,'BT Group','published','2019-11-18 01:18:21','2019-11-18 01:18:21'),(10,'Ping An','published','2019-11-18 01:18:32','2019-11-18 01:18:32'),(11,'New Jersey Division of Investment','published','2019-11-18 01:18:45','2019-11-18 01:18:45'),(12,'New York City ERS','published','2019-11-18 01:18:57','2019-11-18 01:18:57'),(13,'State Super','published','2019-11-18 01:19:10','2019-11-18 01:19:10'),(14,'Shinkong','published','2019-11-18 01:19:20','2019-11-18 01:19:20'),(15,'Rest Super','published','2019-11-18 01:19:31','2019-11-18 01:19:31'),(16,'Rest Super','published','2019-11-21 01:50:47','2019-11-21 01:50:47'),(17,'Shinkong','published','2019-11-21 01:51:03','2019-11-21 01:51:03'),(18,'State Super','published','2019-11-21 01:51:21','2019-11-21 01:51:21'),(19,'New York City ERS','published','2019-11-21 01:51:33','2019-11-21 01:51:33'),(20,'New Jersey Division of Investment','published','2019-11-21 01:51:51','2019-11-21 01:51:51'),(21,'Ping An','published','2019-11-21 01:52:04','2019-11-21 01:52:04'),(22,'BT Group','published','2019-11-21 01:52:16','2019-11-21 01:52:16'),(23,'HOOPP','published','2019-11-21 01:52:28','2019-11-21 01:52:28'),(24,'MEAG Munich ERGO','published','2019-11-21 01:52:47','2019-11-21 01:52:47'),(25,'PSP Investments','published','2019-11-21 01:52:57','2019-11-21 01:52:57'),(26,'Government Pension Fund Global','published','2019-11-21 01:53:18','2019-11-21 01:53:18'),(27,'China Investment Corporation','published','2019-11-21 01:53:33','2019-11-21 01:53:33'),(29,'Temasek','published','2019-11-21 01:53:48','2019-11-21 01:53:48'),(30,'Generali','published','2019-11-21 01:54:01','2019-11-21 01:54:01'),(31,'National Pension Service','published','2019-11-21 01:54:14','2019-11-21 01:54:14');
/*!40000 ALTER TABLE `re_investors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoice_items`
--

DROP TABLE IF EXISTS `re_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoice_items`
--

LOCK TABLES `re_invoice_items` WRITE;
/*!40000 ALTER TABLE `re_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoices`
--

DROP TABLE IF EXISTS `re_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_invoices_code_unique` (`code`),
  KEY `re_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `re_invoices_payment_id_index` (`payment_id`),
  KEY `re_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoices`
--

LOCK TABLES `re_invoices` WRITE;
/*!40000 ALTER TABLE `re_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages`
--

DROP TABLE IF EXISTS `re_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_packages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(15,2) unsigned NOT NULL,
  `currency_id` int unsigned NOT NULL,
  `number_of_listings` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percent_save` int unsigned NOT NULL DEFAULT '0',
  `account_limit` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages`
--

LOCK TABLES `re_packages` WRITE;
/*!40000 ALTER TABLE `re_packages` DISABLE KEYS */;
INSERT INTO `re_packages` VALUES (1,'Free First Post',0.00,1,1,0,0,'published','2023-11-19 23:02:00','2023-11-19 23:02:00',0,1),(2,'Single Post',250.00,1,1,0,1,'published','2023-11-19 23:02:00','2023-11-19 23:02:00',0,NULL),(3,'5 Posts',1000.00,1,5,0,0,'published','2023-11-19 23:02:00','2023-11-19 23:02:00',20,NULL);
/*!40000 ALTER TABLE `re_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages_translations`
--

DROP TABLE IF EXISTS `re_packages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_packages_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_packages_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_packages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages_translations`
--

LOCK TABLES `re_packages_translations` WRITE;
/*!40000 ALTER TABLE `re_packages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_packages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_categories`
--

DROP TABLE IF EXISTS `re_project_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_project_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=764 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_categories`
--

LOCK TABLES `re_project_categories` WRITE;
/*!40000 ALTER TABLE `re_project_categories` DISABLE KEYS */;
INSERT INTO `re_project_categories` VALUES (758,1,4),(759,2,3),(760,3,1),(761,4,2),(762,5,4),(763,6,2);
/*!40000 ALTER TABLE `re_project_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_features`
--

DROP TABLE IF EXISTS `re_project_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_project_features` (
  `project_id` int unsigned NOT NULL,
  `feature_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_features`
--

LOCK TABLES `re_project_features` WRITE;
/*!40000 ALTER TABLE `re_project_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_project_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects`
--

DROP TABLE IF EXISTS `re_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_projects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_block` smallint unsigned DEFAULT NULL,
  `number_floor` smallint DEFAULT NULL,
  `number_flat` smallint DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `investor_id` int unsigned NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `latitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` int unsigned DEFAULT '1',
  `state_id` int unsigned DEFAULT NULL,
  `unique_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_projects_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects`
--

LOCK TABLES `re_projects` WRITE;
/*!40000 ALTER TABLE `re_projects` DISABLE KEYS */;
INSERT INTO `re_projects` VALUES (1,'Walnut Park Apartments','<p>Now Open &amp; Leasing!</p>\r\n\r\n<p>Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community. In addition to resort spa amenities, the interiors are built and designed to condominium specifications with energy efficient features, stunning detail and upgraded finishes.</p>','[\"projects\\/1.jpg\",\"projects\\/5.jpg\",\"projects\\/3.jpg\",\"projects\\/2.jpg\"]','Austin, Texas 78753, USA',4,2,50,1,'2019-11-10','2019-03-11','selling','2019-11-18 00:34:49','2021-04-29 20:46:31',12,'Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community',NULL,NULL,1,4,NULL,'Botble\\ACL\\Models\\User','43.578848','-76.32197',6069,1,1,NULL),(2,'Osaka Heights','<p>Osaka Heights is a state of the art apartment crafted with elegance, comfort and classiness.</p>\r\n\r\n<p>The grander apartments add new heights to the life of people in Colombo, Sri Lanka.</p>\r\n\r\n<p>Devised by a team of international consultants, Osaka Heights is all about contemporary design and comprehensive attention to detail in execution. If you are interested to own a luxury apartment at Sri Lanka, Osaka Heights is the best choice. The foundation of Osaka Heights is laid by skilled professionals, who capture your vision completely. The construction is built as per your elegant lifestyles, without any compromise in quality and class.</p>\r\n\r\n<p>The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals. An elevated lifestyle naturally follows, making Osaka Heights one of the most sought-after addresses in Colombo.</p>','[\"projects\\/21.jpg\",\"projects\\/24.jpg\",\"projects\\/23.jpg\",\"projects\\/25.jpg\",\"projects\\/26.jpg\",\"projects\\/22.jpg\"]','Kirulapone, Colombo 06, Colombo, Sri Lanka',1,15,450,1,'2019-08-09','2019-08-10','selling','2019-11-18 01:28:45','2021-06-11 20:56:44',3,'The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals.',NULL,NULL,1,3,NULL,'Botble\\ACL\\Models\\User','43.013638','-75.848066',8696,1,1,NULL),(3,'Mimaroba Paradise','<h2><b>Why you should buy a house from this project?</b></h2>\r\n\r\n<ul>\r\n	<li>1. A summerhouse in the center of the city.</li>\r\n	<li>2. Remove the boundaries between you and the sea, you will be surrounded by blue sea.</li>\r\n	<li>3.&nbsp;Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you.</li>\r\n	<li>4.&nbsp;A unique design that makes luxury a habit, a wide variety of apartment plan options.</li>\r\n	<li>5.&nbsp;Reasonable payment options, affordable prices in Istanbul&#39;s most exclusive area.</li>\r\n</ul>\r\n\r\n<p>&lsquo;&rsquo; Mimaroba&rsquo;&rsquo; a modern beach district away from the bustle of Istanbul.&nbsp;The aim of the project is to make a living feel for the hosts in the deepest way.&nbsp;In this project you can enjoy a life with the sea and you can have a holiday for 12 months with social facilities and activities.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>','[\"projects\\/13.jpg\",\"projects\\/12.jpg\",\"projects\\/11.jpg\",\"projects\\/14.jpg\"]','Texas, USA',2,16,327,1,'2020-06-09','2019-09-10','selling','2019-11-18 03:30:34','2021-06-11 20:56:44',15,'A summerhouse in the center of the city. Remove the boundaries between you and the sea, you will be surrounded by blue sea. Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you. A unique design that makes luxury a habit, a wide variety of apartment plan options.',NULL,NULL,1,1,NULL,'Botble\\ACL\\Models\\User','42.795156','-76.237441',5274,1,1,NULL),(4,'Aegean Villas','<h2><strong>Aegean Villas</strong></h2>\r\n\r\n<p>Looks like Aegean town and be one of the highest rated sites in the region. A very large area of 312.000sqm&nbsp; has only 144 villas. Each villa&rsquo;s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.&nbsp; Increase the living motivation with 2,5km walking and cycling trail, tennis courts and carpet right activities.&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<h4><strong>Why you should buy a house from this project?</strong></h4>\r\n\r\n<ul>\r\n	<li>1. Natural Architectural design.</li>\r\n	<li>2. Highest session rate in the region</li>\r\n	<li>3. Common sharing areas like open air cinema and village cafe.</li>\r\n	<li>4. 2,5km walking and cycling trail.</li>\r\n	<li>5. The gardens are detached and useful.</li>\r\n</ul>','[\"properties\\/a5-1.jpg\",\"properties\\/a6-1.jpg\",\"properties\\/a7.jpg\",\"properties\\/a8.jpg\",\"properties\\/a10.jpg\",\"properties\\/a9.jpg\"]','Büyükçekmece, İstanbul, Turkey',5,2,144,1,'2020-06-09','2020-10-04','selling','2019-11-18 03:38:13','2021-06-11 20:56:44',11,'A very large area of 312.000sqm  has only 144 villas. Each villa’s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.',NULL,NULL,1,2,NULL,'Botble\\ACL\\Models\\User','42.478281','-75.321856',280,1,1,NULL),(5,'Aydos Forest Apartments','<p>The project, which offers unique opportunities for those who want to move into their new home, is the most advantageous housing project of the location with its easy payment options according to your budget. In your new home you will have a live site life with 90% occupancy; The <strong>clean air</strong> of Aydos Forest, the most important social facility of the region with <strong>3,700 sqm</strong> which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as well as the landscape of Aydos Forest. and bacause of its easy connection to the main roads, you can easily reach the important centers of Istanbul.</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Ready for delivery.</li>\r\n	<li>2.&nbsp;82% open area of landscape.</li>\r\n	<li>3.&nbsp;Aydos forest is right next to the project.</li>\r\n	<li>4.&nbsp;More than 90% of the project is occupied and full of life.</li>\r\n	<li>5. Ease of transportation.</li>\r\n</ul>','[\"properties\\/q1.jpg\",\"properties\\/q2.jpg\",\"properties\\/q8.jpg\",\"properties\\/q7.jpg\",\"properties\\/q3.jpg\",\"properties\\/q6.jpg\"]','Sancaktepe/İstanbul, Turkey',4,18,1394,1,'2019-10-30','2019-07-21','selling','2019-11-18 03:45:06','2021-04-18 09:20:14',2,'You will have a live site life with 90% occupancy; The clean air of Aydos Forest, the most important social facility of the region with 3,700 sqm which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as',NULL,NULL,1,3,NULL,'Botble\\ACL\\Models\\User','43.270016','-75.054121',5580,1,1,NULL),(6,'The Avila Apartments','<p>A profoundly special project amidst history and Istanbul. In the heart of the Historical Peninsula, Select Lifestyle Alternatives ranging from 1+1 to 6+1, in limited numbers&hellip;. A timeless aesthetic enriched in perfect details .</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Within the historical peninsula, there is a very special area where you will never find a similar one.</li>\r\n	<li>2.&nbsp;Unique sea view with a historical texture of Istanbul.</li>\r\n	<li>3.&nbsp;In the bustling city life, in the middle of all transportation possibilities.</li>\r\n	<li>4. 1+1 to 6+1 very special, suitable for all needs loft apartments</li>\r\n	<li>5.Large landscaping areas, cafes, shopping opportunities.</li>\r\n</ul>','[\"properties\\/e1.jpg\",\"properties\\/e2.jpg\",\"properties\\/e3.jpg\",\"properties\\/e4.jpg\",\"properties\\/e5.jpg\",\"properties\\/e7.jpg\",\"properties\\/e8.jpg\"]','Singapore Island, Singapore',2,4,125,1,'2019-11-19','2019-03-11','selling','2019-11-18 03:53:20','2021-06-11 20:56:44',10,'Within the historical peninsula, there is a very special area where you will never find a similar one. Unique sea view with a historical texture of Istanbul. In the bustling city life, in the middle of all transportation possibilities. Large landscaping areas, cafes, shopping opportunities.',NULL,NULL,1,5,NULL,'Botble\\ACL\\Models\\User','43.481307','-74.862851',7059,1,1,NULL);
/*!40000 ALTER TABLE `re_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects_translations`
--

DROP TABLE IF EXISTS `re_projects_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_projects_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_projects_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_projects_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects_translations`
--

LOCK TABLES `re_projects_translations` WRITE;
/*!40000 ALTER TABLE `re_projects_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_projects_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties`
--

DROP TABLE IF EXISTS `re_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_properties` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_id` bigint unsigned DEFAULT '0',
  `number_bedroom` smallint unsigned DEFAULT NULL,
  `number_bathroom` smallint unsigned DEFAULT NULL,
  `number_floor` smallint unsigned DEFAULT NULL,
  `square` double DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `price_unit` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sale',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  `period` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `author_id` int DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `moderation_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `never_expired` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` int unsigned DEFAULT '1',
  `state_id` int unsigned DEFAULT NULL,
  `unique_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_properties_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties`
--

LOCK TABLES `re_properties` WRITE;
/*!40000 ALTER TABLE `re_properties` DISABLE KEYS */;
INSERT INTO `re_properties` VALUES (1,'3 Beds Villa Calpe, Alicante','<p>This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors. Downstairs there is an indoor, double garage and laundry room with an internal staircase to the house. But you can also drive up to the front door by car. The terrace is spacious and there is an extra-long swimming pool, where you can swim laps well. Around there is a landscaped garden, which is also low in maintenance. Instead of gardening, there is more time left for wonderful enjoyment in and around this beautiful villa.</p>','Alicante, Spain','[\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\"]',6,3,3,1,600,700000.00,NULL,1,'selling','2019-11-17 20:34:59','2023-11-19 23:02:09','sale','This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors.',1,5,'month',3,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'43.954366','-76.204832',8555,1,1,NULL),(2,'Property For sale , Johannesburg, South Africa','<p><strong>Beautiful home situated in road closure in bedfordview.&nbsp;</strong>Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool &amp; stunning koi-pond. Flavours of the Seychelles.&nbsp;Enter from a winding pathway lined by palms and tree ferns into the hallway. The spacious living room with magnificent wood burning fireplace and large diningroom are complemented by a wet barrel bar, featuring designer built in wine cellar wall.</p>','Johannesburg, South Africa','[\"properties\\/23.jpg\",\"properties\\/21.jpg\",\"properties\\/24.jpg\",\"properties\\/22.jpg\"]',6,4,4,2,800,800000.00,NULL,1,'selling','2019-11-17 20:53:34','2023-11-19 23:02:09','sale','Beautiful home. Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool & stunning koi-pond. Flavours of the Seychelles.',1,2,'month',10,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'43.819483','-76.703637',1595,1,1,NULL),(3,'Stunning French Inspired Manor','<p>Stunning French Inspired Manor located within Briarwood Ranch near Solvang in the heart of the magnificent Santa Ynez Valley. This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide, Cabana and a complimentary poolside bar combo BBQ kitchen. A spacious 2 car garage is adjacent to craft room and large art studio</p>','Solvang, Santa Barbara County, CA 93463, USA','[\"properties\\/31.jpg\",\"properties\\/32.jpg\",\"properties\\/33.jpg\",\"properties\\/34.jpg\",\"properties\\/35.jpg\",\"properties\\/311.jpg\"]',5,4,3,1,450,1695000.00,NULL,1,'selling','2019-11-17 21:09:55','2023-11-19 23:02:09','sale','This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide',1,5,'month',7,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'43.722299','-75.466082',2311,1,1,NULL),(4,'Villa for sale at Bermuda Dunes','<p>This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club. Chiseled glass entry doors lead you into a magnificent Italian Marble entry that encompasses the entire hallway and living room with a fireplace. The vast great room, with raised ceilings, captures the pool, golf, lake and dynamic southern, mountain views. There&#39;s a lovely Library with built in shelves on one wall. There&rsquo;s a sunken wet bar, with Italian Marble flooring, that provides views of the golf course and surrounding mountains.</p>','Bermuda Dunes, Riverside County, CA 92203, USA','[\"properties\\/411.jpg\",\"properties\\/44.jpg\",\"properties\\/43.jpg\",\"properties\\/42.jpg\"]',4,4,3,1,480,1295000.00,NULL,1,'selling','2019-11-17 21:18:11','2023-11-19 23:02:09','sale','This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club',1,1,'month',1,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'43.982274','-76.182356',6768,1,1,NULL),(5,'Walnut Park Apartment','<p>Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community</p>\r\n\r\n<ul>\r\n	<li>Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek</li>\r\n	<li>Conveniently located on North Lamar near numerous shops, major employers and restaurants</li>\r\n	<li>Easy access to I-35 and a short distance to US-183 and SH-45</li>\r\n	<li>Elegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda</li>\r\n	<li>24-hour fully-equipped fitness center with lockers and changing area</li>\r\n	<li>Indoor spa with cascading waterfall, steam room and cedar sauna</li>\r\n	<li>Spacious, gourmet kitchens with granite countertops and backsplashes</li>\r\n	<li>Stainless steel appliances and natural gas ranges</li>\r\n	<li>Designer hardwood cabinets with under-cabinet lighting</li>\r\n</ul>','North Lamar Boulevard, Austin, Texas 78753, USA','[\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/1-1.jpg\"]',1,2,2,1,980,2035.00,NULL,1,'renting','2019-11-18 00:47:52','2023-11-19 23:02:09','rent','Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek\r\nConveniently located on North Lamar near numerous shops, major employers and restaurants\r\nEasy access to I-35 and a short distance to US-183 and SH-45\r\nElegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda',1,1,'month',3,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'42.669053','-75.578469',6906,1,1,NULL),(6,'5 beds luxury house','<p>Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate. On the main level the entry opens to a large foyer which connects to a beautiful and large living room with a fireplace, and to a formal dining room.</p>\r\n\r\n<p>The house has a garage which can accommodate 3 to 4 cars. The house is offered furnished. Can be leased for short term or long term. The minimum lease term is 3 months.</p>','Seacliff San Francisco, Sea Cliff Avenue, San Francisco, CA 94121, USA','[\"properties\\/a3.jpg\",\"properties\\/a1.jpg\",\"properties\\/a2.jpg\",\"properties\\/a4.jpg\"]',2,5,4,3,270,1808.00,NULL,1,'renting','2019-11-18 01:05:58','2023-11-19 23:02:09','rent','Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate',1,1,'month',3,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'42.946985','-76.206616',4228,1,1,NULL),(7,'Family Victorian \"View\" Home','<p>There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete this level.</p>\r\n<p> </p>','Safeway San Francisco CA, Market Street, San Francisco, CA 94114, USA','[\"properties\\/b5.jpg\",\"properties\\/b1.jpg\",\"properties\\/b4.jpg\",\"properties\\/b6.jpg\",\"properties\\/b2.jpg\"]',3,3,2,1,180,2580.00,NULL,1,'renting','2019-11-18 01:12:07','2023-11-19 23:02:09','rent','There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete t',1,1,'month',3,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'43.819646','-74.89512',421,1,1,NULL),(8,'Osaka Heights Apartment','<p><strong>Kitchen</strong><br />\r\nCeramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided</p>\r\n\r\n<p><strong>Toilets</strong><br />\r\nAnti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing</p>\r\n\r\n<p><strong>Doors</strong><br />\r\nMain door will be high quality wooden door, premium Windows quality pre-hung internal doors with wooded frame, UPVC or aluminum sliding doors and aluminum frame with glass for windows</p>\r\n\r\n<p>&nbsp;9 km to Katunayaka airport expressway entrance</p>\r\n\r\n<p>&nbsp;12 km to Southern expressway entrance at Kottawa</p>\r\n\r\n<p>&nbsp;2 km to Kalubowila General hospital</p>\r\n\r\n<p>&nbsp;All leading banks within a few kilometer radii</p>\r\n\r\n<p>&nbsp;Very close proximity to railway stations</p>\r\n\r\n<p>&nbsp;Many leading schools including CIS within 5 km radius</p>','High Level Road, Colombo 06, Sri Lanka','[\"properties\\/24-1.jpg\",\"properties\\/22-1.jpg\",\"properties\\/p1.jpg\",\"properties\\/p2.jpg\"]',2,2,2,1,110,150000.00,NULL,1,'selling','2019-11-18 01:49:36','2023-11-19 23:02:09','sale','Ceramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided. Anti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing.',1,5,'month',9,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'42.928003','-74.902172',9420,1,1,NULL),(9,'Private Estate Magnificent Views','<p>Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner &amp; wood heater<br />\r\nGood sized bedrooms and main bedroom with spa overlooking tranquil gardens and Inlet.</p>','110 Springdale Heights, Hay Denmark, WA, Australia','[\"properties\\/79.jpg\",\"properties\\/71.jpg\",\"properties\\/73.jpg\",\"properties\\/72.jpg\",\"properties\\/74.jpg\",\"properties\\/75.jpg\",\"properties\\/78.jpg\"]',2,3,1,1,2000,694000.00,NULL,1,'selling','2019-11-18 02:02:19','2023-11-19 23:02:09','sale','Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner & wood heater',1,5,'month',11,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'42.812299','-76.137607',5838,1,1,NULL),(10,'Thompsons Road House for rent','<p>Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways &amp; transport, and space.<br />\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage. Inside you will find a lovely neutral colour scheme and near new gleaming timber timber floors. There are three spacious bedrooms all with built in robes, serviced by a central family bathroom and separate powder room, along with a large open lounge and formal dining room beaming with natural light. The stunning kitchen comes complete with Blanco appliances, breakfast bar and top quality fittings and fixtures.</p>','Thompsons Road, Bulleen VIC, Australia','[\"properties\\/5-1.jpg\",\"properties\\/7-1.jpg\",\"properties\\/8-1.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\"]',6,3,3,1,160,1465.00,NULL,1,'renting','2019-11-18 02:16:53','2023-11-19 23:02:09','rent','Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways & transport, and space.\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage',1,3,'month',1,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'42.601639','-76.36969',928,1,1,NULL),(11,'Brand New 1 Bedroom Apartment In First Class Location','<p>Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania&#39;s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.</p>\r\n\r\n<p>Please note: Elders Brown and Banks do not accept applications from applicants who have not inspected the property internally.</p>','Sandy Bay Road, Sandy Bay TAS, Australia','[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/13.jpg\",\"properties\\/14.jpg\",\"properties\\/15.jpg\"]',5,1,1,1,80,1680.00,NULL,1,'renting','2019-11-18 02:22:48','2023-11-19 23:02:09','rent','Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania\'s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.',1,5,'month',8,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'42.659611','-76.197177',7124,1,1,NULL),(12,'Elegant family home presents premium modern living','<p>Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting. The home is ideally set walking distance to parks and bus stops, moments to your choice of schools, and just several minutes to Westfield North Lakes.<br />\r\n&nbsp;</p>','North Lakes QLD 4509, Australia','[\"properties\\/a1-1.jpg\",\"properties\\/a2-1.jpg\",\"properties\\/a3-1.jpg\",\"properties\\/a5.jpg\",\"properties\\/a4-1.jpg\",\"properties\\/a6.jpg\"]',6,3,3,1,658,1574.00,NULL,1,'renting','2019-11-18 02:47:05','2023-11-19 23:02:09','rent','Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting.',1,5,'month',3,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'43.137361','-76.539998',2837,1,1,NULL),(13,'Luxury Apartments in Singapore for Sale','<p>This apartment&nbsp;is located in Singapore, which has become a comfortable living center for the living, providing both attractive gains for investors and high premium. 840sqft<br />\r\n- High Floor<br />\r\n- Chinese Family<br />\r\n- Sky Garden<br />\r\n- Beautiful Roof Terrace with Jaccuzzi And<br />\r\nAlfresco Dinning<br />\r\n- Renovated with Quality Finishes<br />\r\n- Near Amenities<br />\r\n- Plenty of eateries.<br />\r\n- 5mins Walk to NTUC / Shaw Plaza<br />\r\n- Mins Drive To Orchard</p>','Balestier Road, Singapore','[\"properties\\/5-2.jpg\",\"properties\\/2-3.jpg\",\"properties\\/3-3.jpg\",\"properties\\/4-2.jpg\",\"properties\\/1-3.jpg\"]',6,2,2,1,78,918000.00,NULL,1,'selling','2019-11-18 07:23:02','2023-11-19 23:02:09','sale','This apartment is located in Singapore. High Floor, Chinese Family, Sky Garden, Beautiful Roof Terrace with Jaccuzzi and Alfresco Dinning, Renovated with Quality Finishes, Near Amenities, Plenty of eateries, 5mins Walk to NTUC / Shaw Plaza, Mins Drive To Orchard',1,5,'month',7,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'42.813772','-76.615855',2814,1,1,NULL),(14,'5 room luxury penthouse for sale in Kuala Lumpur','<p>The Sentral Residence (BRAND NEW LUXURY CONDO)<br />\r\n<br />\r\n-Next to St Regis 5 Star Hotel<br />\r\n-Excellent accessibility (LRT,KLIA TRANSIT,KTM)<br />\r\n-Rooftop Sky lounge,sky pool,sky gym<br />\r\n-Private lift lobby to own unit<br />\r\n<br />\r\nEPIC LUXE PREMIUM UNITS<br />\r\n(KLCC and Lake Garden VIEW)<br />\r\n<br />\r\nLargest unit in Sentral Residence<br />\r\n&nbsp;</p>','Kuala Lumpur, Malaysia','[\"properties\\/6-2.jpg\",\"properties\\/7-2.jpg\",\"properties\\/9-1.jpg\",\"properties\\/8-2.jpg\",\"properties\\/10-1.jpg\",\"properties\\/11-1.jpg\"]',1,5,7,20,377,1590000.00,NULL,1,'selling','2019-11-18 07:36:29','2023-11-19 23:02:09','sale','Next to St Regis 5 Star Hotel, Excellent accessibility (LRT,KLIA TRANSIT,KTM), Rooftop Sky lounge, sky pool, sky gym, KLCC and Lake Garden VIEW',1,4,'month',4,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'42.504328','-76.341293',5556,1,1,NULL),(15,'2 Floor house in Compound Pejaten Barat Kemang','<p>Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300,&nbsp;3&nbsp;bedrooms,&nbsp;2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year&nbsp;</p>','Kota Administrasi Jakarta Selatan, South Jakarta City, Jakarta Raya, Indonesia','[\"properties\\/a1-2.jpg\",\"properties\\/a2-2.jpg\",\"properties\\/a3-2.jpg\",\"properties\\/a4-2.jpg\"]',1,3,2,2,200,1400.00,NULL,1,'renting','2019-11-18 07:44:44','2023-11-19 23:02:09','rent','Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300, 3 bedrooms, 2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year ',1,5,'month',4,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'43.636294','-76.116519',9338,1,1,NULL),(16,'Apartment Muiderstraatweg in Diemen','<p>For rent fully furnished 3 bedroom apartment in Diemen.<br />\r\nVery suitable for a couple or maximum 2 working sharers, garantors are not accepted.<br />\r\n<br />\r\nLovely modern and very well maintained apartment in Diemen.<br />\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.<br />\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.<br />\r\nOn this floor you have access to the small roof terrace.<br />\r\nLast but not least there is a spacious attic room on the third floor.<br />\r\nThe tram stops in front of the door and within 20 minutes you are in the heart of Amsterdam.<br />\r\nPets are not allowed.</p>','Diemen, Netherlands','[\"properties\\/b4-1.jpg\",\"properties\\/b3.jpg\",\"properties\\/b5-1.jpg\"]',3,3,1,2,90,2123.00,NULL,1,'renting','2019-11-18 07:59:14','2023-11-19 23:02:09','rent','Lovely modern and very well maintained apartment in Diemen.\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.\r\nOn this floor you have access to the small roof terrace.',1,3,'month',2,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'43.52876','-76.65882',24,1,1,NULL),(17,'Nice Apartment for rent in Berlin','<p>Fully furnished shared all-inclusive apartments, with modern amenities that&rsquo;ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you&rsquo;ll find everything from delicious street food to flee markets, to high-end restaurants.</p>\r\n\r\n<p>In this bright, modern h(e)aven, you&rsquo;ll find a Queen size bed, a fully equipped kitchen, a separate bathroom with a walk-in shower and a study area for when the dedicated student in you awakens. Some come with great views, others with a nice and cozy balcony.</p>','Berlin, Germany','[\"properties\\/t3.jpg\",\"properties\\/t1.jpg\",\"properties\\/t2.jpg\",\"properties\\/t4.jpg\",\"properties\\/t5.jpg\"]',6,1,1,1,33,1217.00,NULL,1,'renting','2019-11-18 08:13:07','2023-11-19 23:02:09','rent','Fully furnished shared all-inclusive apartments, with modern amenities that’ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you’ll find everything from delicious street food to flee markets, to high-end restaurants.',1,5,'month',10,'Botble\\RealEstate\\Models\\Account','approved','2024-01-04',0,1,'43.222732','-76.105523',2104,1,1,NULL);
/*!40000 ALTER TABLE `re_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties_translations`
--

DROP TABLE IF EXISTS `re_properties_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_properties_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_properties_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_properties_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties_translations`
--

LOCK TABLES `re_properties_translations` WRITE;
/*!40000 ALTER TABLE `re_properties_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_properties_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_categories`
--

DROP TABLE IF EXISTS `re_property_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_property_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_categories`
--

LOCK TABLES `re_property_categories` WRITE;
/*!40000 ALTER TABLE `re_property_categories` DISABLE KEYS */;
INSERT INTO `re_property_categories` VALUES (2154,1,6),(2166,2,2),(2167,6,1),(2177,3,3),(2178,4,6),(2179,5,4),(2180,7,5),(2181,8,4),(2182,9,5),(2183,10,6),(2184,11,2),(2185,12,3),(2186,13,3),(2187,14,2),(2188,15,6),(2189,16,2),(2190,17,2);
/*!40000 ALTER TABLE `re_property_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_features`
--

DROP TABLE IF EXISTS `re_property_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_property_features` (
  `property_id` int unsigned NOT NULL,
  `feature_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_features`
--

LOCK TABLES `re_property_features` WRITE;
/*!40000 ALTER TABLE `re_property_features` DISABLE KEYS */;
INSERT INTO `re_property_features` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(5,12),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(7,9),(7,10),(7,11),(7,12),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,9),(8,10),(8,11),(8,12),(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(9,7),(9,8),(9,9),(9,10),(9,11),(9,12),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),(10,9),(10,10),(10,11),(10,12),(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(11,7),(11,8),(11,9),(11,10),(11,11),(11,12),(12,1),(12,2),(12,3),(12,4),(12,5),(12,6),(12,7),(12,8),(12,9),(12,10),(12,11),(12,12),(13,1),(13,2),(13,3),(13,4),(13,5),(13,6),(13,7),(13,8),(13,9),(13,10),(13,11),(13,12),(14,1),(14,2),(14,3),(14,4),(14,5),(14,6),(14,7),(14,8),(14,9),(14,10),(14,11),(14,12),(15,1),(15,2),(15,3),(15,4),(15,5),(15,6),(15,7),(15,8),(15,9),(15,10),(15,11),(15,12),(16,1),(16,2),(16,3),(16,4),(16,5),(16,6),(16,7),(16,8),(16,9),(16,10),(16,11),(16,12),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(17,7),(17,8),(17,9),(17,10),(17,11),(17,12);
/*!40000 ALTER TABLE `re_property_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_reviews`
--

DROP TABLE IF EXISTS `re_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `reviewable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewable_id` bigint unsigned NOT NULL,
  `star` tinyint NOT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviews_unique` (`account_id`,`reviewable_id`,`reviewable_type`),
  KEY `re_reviews_reviewable_type_reviewable_id_index` (`reviewable_type`,`reviewable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_reviews`
--

LOCK TABLES `re_reviews` WRITE;
/*!40000 ALTER TABLE `re_reviews` DISABLE KEYS */;
INSERT INTO `re_reviews` VALUES (1,5,'Botble\\RealEstate\\Models\\Property',5,3,'Everything is so out-of-the-way down here, that I.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(2,1,'Botble\\RealEstate\\Models\\Project',5,5,'The Cat seemed to be done, I wonder?\' Alice guessed in a tone of great relief. \'Now at OURS they had to stop and untwist it. After a while, finding that nothing more to be lost: away went Alice after it, \'Mouse dear! Do come back with the bones and the cool fountains. CHAPTER VIII. The Queen\'s.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(3,11,'Botble\\RealEstate\\Models\\Property',11,4,'Mouse, sharply and very neatly and simply arranged; the only one way of expressing yourself.\' The baby grunted again, so that altogether, for the end of the teacups as the rest of the.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(4,8,'Botble\\RealEstate\\Models\\Project',2,3,'And will talk in contemptuous.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(5,8,'Botble\\RealEstate\\Models\\Property',8,2,'Alice could see it written up somewhere.\' Down, down, down. Would the fall was over. Alice was only the pepper that had made the whole court was a dead silence instantly, and Alice was too late to wish that! She went on in a hoarse, feeble voice: \'I heard every word.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(6,5,'Botble\\RealEstate\\Models\\Property',8,2,'She had quite forgotten the Duchess was VERY ugly; and secondly, because they\'re making such a thing as \"I eat what I could shut up like a writing-desk?\' \'Come, we shall get on better.\' \'I\'d rather finish my tea,\' said the Cat: \'we\'re all mad.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(7,11,'Botble\\RealEstate\\Models\\Property',4,1,'I beg your pardon!\' cried Alice (she was rather glad there WAS no one listening, this time.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(8,2,'Botble\\RealEstate\\Models\\Property',17,5,'I shall ever see you any more!\' And here Alice began in a tone of great.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(9,7,'Botble\\RealEstate\\Models\\Project',2,1,'Who ever saw one that size? Why, it fills the whole she thought it must make me smaller, I can kick a little!\' She drew her foot slipped, and in another minute the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' (He pronounced it \'arrum.\').','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(10,9,'Botble\\RealEstate\\Models\\Property',8,4,'The Mouse only shook its head impatiently, and walked.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(11,6,'Botble\\RealEstate\\Models\\Project',4,3,'I shall never get to the end of the teacups as the doubled-up soldiers were silent, and looked very uncomfortable. The first witness was the.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(12,4,'Botble\\RealEstate\\Models\\Property',3,5,'As they walked off together, Alice heard the Queen\'s ears--\' the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at the window.\' \'THAT you won\'t\' thought Alice, \'they\'re sure to make out what it was: she was holding, and she crossed her hands on her lap as if it thought.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(13,8,'Botble\\RealEstate\\Models\\Property',9,5,'Queen. \'I haven\'t opened it yet,\' said the Hatter: \'it\'s very rude.\' The Hatter opened his eyes. \'I wasn\'t asleep,\' he said to herself; \'his eyes are so VERY tired of being such a subject! Our family always.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(14,3,'Botble\\RealEstate\\Models\\Property',4,4,'MINE.\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, I tell you!\' But she did not notice this last.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(15,9,'Botble\\RealEstate\\Models\\Property',3,5,'Caterpillar. Alice folded her hands, wondering if anything would EVER happen in a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the hedge. In another minute there was not a moment that it was only sobbing,\' she.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(16,11,'Botble\\RealEstate\\Models\\Project',2,1,'ARE OLD, FATHER WILLIAM,\' to the Cheshire Cat: now I shall ever see you any more!\' And here Alice began to repeat it, but her head through the air! Do you think, at your age, it is you hate--C and D,\' she added in an offended tone, \'was, that the Queen of Hearts, carrying the.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(17,5,'Botble\\RealEstate\\Models\\Property',2,2,'Queen say only yesterday you deserved to be seen--everything seemed to rise like a star-fish,\' thought Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'I\'ve so often read in the lap of her ever getting out of a muchness\"--did you ever see such a pleasant temper, and thought to herself.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(18,2,'Botble\\RealEstate\\Models\\Project',5,4,'The Dormouse again took a great deal to ME,\' said the Gryphon. \'Well, I never understood what it meant till now.\' \'If that\'s all the right words,\' said poor Alice, \'to pretend to be.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(19,11,'Botble\\RealEstate\\Models\\Property',8,3,'How brave they\'ll all think me for asking! No, it\'ll never do to come out among the branches, and every now and then said, \'It was much pleasanter at home,\' thought.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(20,4,'Botble\\RealEstate\\Models\\Project',5,1,'Alice the moment she appeared on the floor, as it could go, and making quite a large cat.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(21,2,'Botble\\RealEstate\\Models\\Project',4,5,'The first thing I\'ve got to?\' (Alice had no pictures or conversations?\' So she went on, \'and most of \'em do.\' \'I don\'t know the way I ought to tell its age, there was room for YOU, and no one listening, this time, and was surprised to see it.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(22,4,'Botble\\RealEstate\\Models\\Property',11,4,'Alice, \'it\'ll never do to hold it. As soon as the jury eagerly wrote down all three dates on their hands.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(23,9,'Botble\\RealEstate\\Models\\Property',9,1,'The Hatter looked at poor Alice, who was.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(24,4,'Botble\\RealEstate\\Models\\Property',17,4,'Cat, as soon as she could, for the rest of my own. I\'m a deal faster than it.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(25,7,'Botble\\RealEstate\\Models\\Property',17,4,'And concluded the banquet--] \'What IS a long sleep you\'ve.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(26,8,'Botble\\RealEstate\\Models\\Project',1,1,'Alice. \'Reeling and Writhing, of course, Alice could speak again. The Mock Turtle in the air. Even the Duchess.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(27,2,'Botble\\RealEstate\\Models\\Property',1,4,'I don\'t want to go on. \'And so these three little sisters,\' the Dormouse say?\' one of them were animals, and some were birds,) \'I suppose so,\' said Alice. \'That\'s very curious.\' \'It\'s all his fancy, that: he hasn\'t got no sorrow, you know. But do cats eat bats, I wonder?\' And here Alice began to.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(28,5,'Botble\\RealEstate\\Models\\Project',6,4,'King, who had not long to doubt.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(29,9,'Botble\\RealEstate\\Models\\Project',1,2,'Why, there\'s hardly enough of it appeared. \'I don\'t like them raw.\' \'Well, be off, then!\' said the Dormouse; \'--well.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(31,3,'Botble\\RealEstate\\Models\\Property',2,4,'Alice ventured to say. \'What is his sorrow?\' she asked the Gryphon, sighing in his confusion he bit a large mushroom growing near her, about the whiting!\' \'Oh, as to size,\' Alice hastily.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(32,8,'Botble\\RealEstate\\Models\\Property',5,5,'RED rose-tree, and we won\'t talk about her repeating \'YOU ARE OLD.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(33,4,'Botble\\RealEstate\\Models\\Project',3,4,'Alice again. \'No, I give you.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(34,4,'Botble\\RealEstate\\Models\\Project',6,1,'Hatter: \'it\'s very rude.\' The Hatter was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(35,7,'Botble\\RealEstate\\Models\\Project',1,3,'I\'m a hatter.\' Here the Queen said--\' \'Get to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may SIT down,\' the King sharply. \'Do you know what they\'re like.\' \'I believe so,\' Alice replied in an undertone.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(36,11,'Botble\\RealEstate\\Models\\Property',5,3,'Caterpillar\'s making such VERY short remarks, and she went on.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(37,1,'Botble\\RealEstate\\Models\\Property',14,1,'You see the Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all think me at home! Why, I wouldn\'t be in Bill\'s place for a great hurry to change the subject. \'Go on with the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the hookah.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(39,11,'Botble\\RealEstate\\Models\\Property',17,1,'I do wonder what they WILL do next! If they had at the end.\' \'If you.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(42,3,'Botble\\RealEstate\\Models\\Project',5,5,'March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t remember where.\' \'Well, it must be shutting up like a thunderstorm. \'A fine day, your Majesty!\' the Duchess began in a day or two: wouldn\'t it be of very little use, as it went, as if she had.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(43,8,'Botble\\RealEstate\\Models\\Property',14,5,'Game, or any other dish? Who would not stoop? Soup of the Queen\'s ears--\' the Rabbit asked. \'No, I give you fair warning,\' shouted the Gryphon, and, taking Alice by the hand, it hurried off, without waiting for turns, quarrelling all the while, and fighting.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(44,9,'Botble\\RealEstate\\Models\\Property',13,2,'Mock Turtle yawned and shut his eyes.--\'Tell her about the whiting!\' \'Oh, as to bring but one; Bill\'s got the other--Bill! fetch it back!\' \'And who is to find any. And yet you incessantly stand.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(45,2,'Botble\\RealEstate\\Models\\Property',16,2,'I am in the direction in which case it would be.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(46,9,'Botble\\RealEstate\\Models\\Project',5,2,'I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go down--Here, Bill! the master says you\'re to go down the hall. After a while, finding that nothing more to do that,\' said Alice. \'I wonder if I\'ve kept.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(47,2,'Botble\\RealEstate\\Models\\Property',13,5,'Gryphon, and the King and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that you have to beat them off, and she.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(48,1,'Botble\\RealEstate\\Models\\Project',4,2,'Take your choice!\' The Duchess took no notice of them hit.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(49,9,'Botble\\RealEstate\\Models\\Property',11,5,'ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head down to look through into the garden with one foot. \'Get up!\' said the Queen, in a helpless sort of a tree in front of them, and just as I tell you!\' But she waited patiently. \'Once,\' said.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(50,11,'Botble\\RealEstate\\Models\\Property',7,1,'Gryphon. \'Then, you know,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she kept tossing the baby violently up and beg for its dinner, and all of you, and listen to her, still it had been, it suddenly appeared again. \'By-the-bye.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(51,11,'Botble\\RealEstate\\Models\\Project',1,1,'Alice dear!\' said her sister; \'Why, what a Mock Turtle sighed deeply.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(52,7,'Botble\\RealEstate\\Models\\Property',4,4,'Alice, very loudly and decidedly, and the sounds will take care of.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(53,8,'Botble\\RealEstate\\Models\\Property',13,5,'It did so indeed, and much sooner than she had hoped) a fan and the White Rabbit read:-- \'They told me he was speaking, and this Alice thought the poor little thing was waving its right paw round, \'lives a.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(54,4,'Botble\\RealEstate\\Models\\Property',8,4,'Then it got down off the top of his shrill little voice, the name \'W. RABBIT\' engraved upon it. She felt very lonely and low-spirited. In a minute or two, looking for the.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(56,7,'Botble\\RealEstate\\Models\\Project',5,3,'The three soldiers wandered about for a minute or two, she made it out loud. \'Thinking again?\' the Duchess was sitting next to her. The Cat seemed to think to herself, \'to be going messages for a baby: altogether Alice did not much larger than a pig, my dear,\' said Alice, a little.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(57,8,'Botble\\RealEstate\\Models\\Property',3,2,'Alice a good many little girls in my own tears! That WILL be a lesson to you to offer it,\' said Alice.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(60,3,'Botble\\RealEstate\\Models\\Project',3,3,'Allow me to sell you a present of.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(61,4,'Botble\\RealEstate\\Models\\Property',13,2,'I THINK I can listen all day to day.\' This was not a mile high,\' said Alice. \'Well, I never was so long that they must needs come wriggling down from the time when I was a child,\' said the Duchess: \'what a clear way you have just been picked up.\' \'What\'s in it?\' said the Pigeon. \'I\'m NOT a.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(63,3,'Botble\\RealEstate\\Models\\Property',1,2,'I should think you\'ll feel it a very difficult game indeed. The players all played at once without waiting for the next thing was waving its tail about in the book,\' said the Cat again, sitting on the English coast you find a number of bathing machines in the.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(64,9,'Botble\\RealEstate\\Models\\Project',3,1,'The Caterpillar was the White Rabbit blew three blasts on the bank, with her head! Off--\' \'Nonsense!\' said Alice, in a very curious thing, and longed to get into the garden, and I could show you our cat Dinah: I think you\'d take a.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(65,3,'Botble\\RealEstate\\Models\\Project',1,2,'I should like to be a lesson to you to sit down without being invited,\' said the Gryphon. \'We can do without lobsters, you know. But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, Miss, this here ought to be patted on the whole court was in.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(66,10,'Botble\\RealEstate\\Models\\Project',1,1,'White Rabbit was still in sight, and no room to open her mouth; but she felt that she still held the pieces of mushroom in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(67,2,'Botble\\RealEstate\\Models\\Property',3,5,'Caterpillar. Alice thought to herself, \'I wonder if I.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(68,11,'Botble\\RealEstate\\Models\\Property',6,5,'Alice did not look at it!\' This speech caused a remarkable.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(69,1,'Botble\\RealEstate\\Models\\Property',10,2,'Alice, and, after folding his arms and legs in all my life, never!\' They had a consultation about this, and Alice rather unwillingly took the hookah out of THIS!\' (Sounds of more energetic.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(70,1,'Botble\\RealEstate\\Models\\Property',9,1,'I\'m sure she\'s the best way to hear it say, as it settled down again, the Dodo suddenly called out as loud as she could. \'The game\'s going on rather better now,\' she added in a dreamy sort of way, \'Do cats eat bats? Do cats.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(73,9,'Botble\\RealEstate\\Models\\Project',4,3,'I\'ll manage better this time,\' she said, without opening its eyes, \'Of course, of course; just what I like\"!\' \'You might just as she heard was a little nervous about this; \'for it might happen any minute, \'and then,\' thought Alice, \'as all the jurymen are.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(76,6,'Botble\\RealEstate\\Models\\Project',1,2,'Caterpillar, and the moon, and memory, and muchness--you know you say it.\' \'That\'s nothing to do: once or twice, half hoping that the cause of this sort of circle.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(79,2,'Botble\\RealEstate\\Models\\Property',11,2,'Caterpillar; and it sat for a minute or two she stood still where she was, and waited. When the pie was all finished, the Owl, as a.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(81,8,'Botble\\RealEstate\\Models\\Project',3,3,'Cheshire Cat: now I shall have some fun now!\' thought Alice. The King looked anxiously over.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(82,2,'Botble\\RealEstate\\Models\\Property',14,4,'I\'ll never go THERE again!\' said Alice.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(83,1,'Botble\\RealEstate\\Models\\Property',15,1,'SOMETHING interesting is sure to happen,\'.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(86,7,'Botble\\RealEstate\\Models\\Property',5,5,'March Hare. \'Sixteenth,\' added the Gryphon; and then sat upon it.) \'I\'m glad they don\'t seem to encourage the witness at all: he kept shifting from one foot to the Duchess: \'and the moral of THAT is--\"Take care of the.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(91,3,'Botble\\RealEstate\\Models\\Project',6,1,'Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon said, in a day did you begin?\' The Hatter was the Hatter. \'Does YOUR watch tell you my adventures--beginning from this side of the ground--and I should have croqueted the Queen\'s.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(92,10,'Botble\\RealEstate\\Models\\Property',1,5,'I could not think of nothing else to do, and in THAT direction,\' the Cat said, waving.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(94,4,'Botble\\RealEstate\\Models\\Project',1,5,'Alice had not noticed before, and he hurried off. Alice thought to.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(95,5,'Botble\\RealEstate\\Models\\Property',4,4,'They had a head unless there was the White Rabbit, jumping up and bawled.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(96,1,'Botble\\RealEstate\\Models\\Property',5,5,'I\'ve often seen them so often, you know.\' It was, no doubt: only Alice did not venture to go through next walking about at the mouth with.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(98,10,'Botble\\RealEstate\\Models\\Property',10,3,'YOU are, first.\' \'Why?\' said the sage, as he spoke, and added \'It isn\'t directed at all,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the March Hare and the choking of the Mock Turtle is.\' \'It\'s the Cheshire Cat: now I shall only look up in such a capital one for catching mice you.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(99,3,'Botble\\RealEstate\\Models\\Project',2,3,'Alice said very politely, \'for I never heard of such a nice soft thing to eat or drink under the sea,\' the Gryphon interrupted in a rather offended tone, \'was, that the best cat in the sea, some children digging in the after-time, be herself a grown woman; and how she.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(100,1,'Botble\\RealEstate\\Models\\Project',6,2,'T!\' said the King. The White Rabbit blew three blasts on the top of its mouth again, and put back into the wood to listen. The Fish-Footman began by taking the little golden key, and unlocking the door with.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(101,10,'Botble\\RealEstate\\Models\\Property',11,1,'HATED cats: nasty, low, vulgar.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(103,7,'Botble\\RealEstate\\Models\\Property',11,4,'Gryphon only answered \'Come on!\' and ran off, thinking while she ran, as well as I do,\' said the Lory hastily. \'I.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(104,9,'Botble\\RealEstate\\Models\\Property',4,3,'WOULD twist itself round and look up and said, without even looking.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(105,1,'Botble\\RealEstate\\Models\\Project',2,2,'I want to go! Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready to agree to everything that was.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(106,11,'Botble\\RealEstate\\Models\\Property',12,3,'Alice, looking down at her hands, and was delighted to find that the poor animal\'s feelings. \'I quite agree with you,\' said the Hatter continued, \'in this way:-- \"Up above the world you fly, Like a tea-tray in the kitchen that did not like the three gardeners who were giving it a very.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(107,6,'Botble\\RealEstate\\Models\\Project',2,4,'There was exactly one a-piece all round. (It was this last remark that had made out.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(108,8,'Botble\\RealEstate\\Models\\Project',4,5,'I was going to begin lessons: you\'d only have to fly; and the other end of the words did not like to be Involved in this way! Stop this moment, I tell you, you coward!\' and at last she stretched her arms folded, frowning like a thunderstorm. \'A fine day, your Majesty!\' the soldiers.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(109,3,'Botble\\RealEstate\\Models\\Project',4,2,'I was a queer-shaped little creature, and held it out to sea. So they got thrown out to the Gryphon. \'It\'s all his fancy, that: they never executes nobody, you know. So you see, as well as she remembered that she looked down at.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(111,3,'Botble\\RealEstate\\Models\\Property',6,2,'I\'ll try and say \"How doth the little--\"\' and she set off at once: one old Magpie began wrapping itself up very carefully, nibbling first at one end to the Gryphon.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(113,8,'Botble\\RealEstate\\Models\\Property',10,5,'March Hare. \'Sixteenth,\' added the March Hare had just upset the milk-jug into his cup of tea, and looked along the sea-shore--\' \'Two lines!\' cried the Mock.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(114,1,'Botble\\RealEstate\\Models\\Property',7,2,'Alice, \'as all the jelly-fish out of sight: \'but it sounds uncommon nonsense.\' Alice said nothing; she had found the fan and a bright brass plate with the bread-knife.\' The.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(116,8,'Botble\\RealEstate\\Models\\Property',2,2,'Alas! it was neither more nor less than a real nose; also its eyes by this time, and was going on, as she spoke; \'either you or your head must be removed,\' said the Hatter, with an M?\' said Alice. \'Then it wasn\'t very civil of you to death.\"\' \'You are.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(118,1,'Botble\\RealEstate\\Models\\Property',8,5,'Gryphon hastily. \'Go on with the other bit. Her chin was pressed so closely against her foot, that there was no one could possibly hear you.\' And certainly there was no longer to be no use in waiting by the whole thing, and she hastily dried her eyes immediately met those of.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(119,3,'Botble\\RealEstate\\Models\\Property',5,1,'March Hare moved into the court, without even looking round. \'I\'ll fetch the executioner ran wildly up and ran off, thinking while she remembered the number of bathing machines in the flurry of the jury.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(120,10,'Botble\\RealEstate\\Models\\Project',2,2,'I only knew the name again!\' \'I won\'t interrupt again. I dare say there may be different,\' said Alice; \'that\'s not at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s voice in the last few minutes to see if she were looking over their slates.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(121,10,'Botble\\RealEstate\\Models\\Property',8,1,'DOTH THE LITTLE BUSY BEE,\" but it was sneezing and howling alternately without a cat! It\'s the most important piece of.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(124,1,'Botble\\RealEstate\\Models\\Property',3,3,'IN the well,\' Alice said nothing; she had wept when she went on, half to Alice. \'Nothing,\' said Alice. \'Of course they were\', said the Dodo, \'the best way to hear the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at her side. She was looking about for some way.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(126,2,'Botble\\RealEstate\\Models\\Property',8,5,'I\'m grown up now,\' she added aloud. \'Do you know why it\'s called a whiting?\' \'I never thought about it,\' added the Dormouse. \'Fourteenth of March, I think you\'d take a fancy to herself \'Suppose it should be like then?\' And she began fancying the sort of present!\' thought.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(127,10,'Botble\\RealEstate\\Models\\Project',6,3,'I am so VERY tired of this. I vote the young.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(132,6,'Botble\\RealEstate\\Models\\Property',16,2,'Lobster Quadrille, that she ought not to be an old Crab took the hookah into its eyes again, to see if there are, nobody attends to them--and you\'ve no idea what you\'re doing!\' cried Alice, quite.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(134,5,'Botble\\RealEstate\\Models\\Project',1,2,'Mock Turtle went on. \'We had the best thing to eat some of YOUR adventures.\' \'I could tell you my adventures--beginning from this morning,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(137,1,'Botble\\RealEstate\\Models\\Project',3,4,'However, I\'ve got to do,\' said Alice angrily. \'It wasn\'t very civil of you to leave off being arches to do with this creature.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(138,10,'Botble\\RealEstate\\Models\\Property',12,2,'LITTLE BUSY BEE,\" but it was not an encouraging opening for a few minutes, and she said this, she came in with the Duchess, digging her sharp little chin into Alice\'s head. \'Is that the pebbles were all shaped like ears and the fall NEVER come to the other, looking uneasily at the end of trials.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(139,6,'Botble\\RealEstate\\Models\\Project',3,2,'Duchess by this time, and was delighted to find that her neck kept getting entangled among the bright eager eyes were nearly out.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(140,11,'Botble\\RealEstate\\Models\\Project',6,5,'I should think very likely to eat or drink something or other; but.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(141,10,'Botble\\RealEstate\\Models\\Property',4,3,'Alice in a natural way again. \'I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said the Gryphon, with.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(143,2,'Botble\\RealEstate\\Models\\Project',2,1,'I only wish it was,\' the March Hare. The Hatter shook.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(144,2,'Botble\\RealEstate\\Models\\Property',12,4,'I could show you our cat Dinah: I think that will be the use of this pool? I am now? That\'ll be a Caucus-race.\' \'What IS a long sleep you\'ve had!\' \'Oh, I\'ve had such a long argument with the bread-and-butter getting so far off). \'Oh, my poor hands.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(147,4,'Botble\\RealEstate\\Models\\Property',5,4,'Hatter. \'Does YOUR watch tell you my history, and you\'ll understand why it is all the jurymen are back in.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(151,8,'Botble\\RealEstate\\Models\\Project',5,5,'Gryphon as if he wasn\'t going to dive in among the trees as.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(152,6,'Botble\\RealEstate\\Models\\Project',5,2,'Queen say only yesterday you deserved to.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(154,2,'Botble\\RealEstate\\Models\\Property',6,5,'The Mouse did not feel encouraged to ask them what the moral of that dark hall, and wander about among those beds of bright flowers and the Queen furiously, throwing an inkstand at the bottom of the tea--\' \'The twinkling of the treat. When the sands are all pardoned.\' \'Come.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(157,5,'Botble\\RealEstate\\Models\\Property',16,3,'I wonder?\' As she said to the jury, in a low, hurried tone. He looked at it uneasily, shaking it every now and then, and holding it to the three were.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(159,9,'Botble\\RealEstate\\Models\\Property',7,2,'And so it was good practice to say to itself in a rather offended tone, \'so I can\'t see you?\' She was walking by the officers of the wood for fear of killing somebody, so managed to swallow a morsel of the e--e--evening, Beautiful, beautiful Soup! \'Beautiful Soup! Who.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(164,11,'Botble\\RealEstate\\Models\\Property',16,4,'Hatter opened his eyes were looking up into a large one, but the Mouse in the newspapers, at the door--I do wish I hadn\'t to.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(165,11,'Botble\\RealEstate\\Models\\Property',13,1,'VERY long claws and a bright idea came into Alice\'s head. \'Is that all?\' said the March Hare. Alice was very provoking to find herself still in sight, hurrying down it. There could be NO mistake about it: it was not an.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(167,8,'Botble\\RealEstate\\Models\\Property',16,5,'When the Mouse in the same thing as \"I get what I could shut up like a snout than a pig, and she went on \'And how many hours a day did you call him Tortoise, if he wasn\'t going to turn into a pig,\' Alice quietly said, just as well say,\' added.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(168,9,'Botble\\RealEstate\\Models\\Property',2,3,'Alice went on growing, and very soon had to ask them what the next moment she felt that she had hoped) a fan and the three were all crowded round her once more, while the Mouse only shook its head to hide a smile: some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(173,6,'Botble\\RealEstate\\Models\\Property',4,2,'I used to it in a deep voice, \'What are you thinking.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(175,3,'Botble\\RealEstate\\Models\\Property',8,1,'Why, she\'ll eat a little different. But if I\'m.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(176,7,'Botble\\RealEstate\\Models\\Property',16,2,'Majesty,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not sneeze, were the two creatures, who had been.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(177,7,'Botble\\RealEstate\\Models\\Project',4,2,'Beautiful, beautiful Soup! Soup of the pack, she could not possibly reach it: she could have told you that.\' \'If I\'d been the whiting,\' said Alice, who had meanwhile been examining the roses. \'Off with.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(179,11,'Botble\\RealEstate\\Models\\Project',5,4,'Alice: \'I don\'t know what it was: she was to twist it up into a conversation. \'You don\'t know what \"it\" means.\' \'I know SOMETHING interesting is sure to make personal remarks,\' Alice said very politely, feeling quite pleased to have any pepper in that soup!\' Alice said to live. \'I\'ve.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(180,10,'Botble\\RealEstate\\Models\\Project',3,1,'Exactly as we needn\'t try to find quite a crowd of little animals and birds waiting outside. The poor little thing sobbed again (or grunted, it was only sobbing,\'.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(183,5,'Botble\\RealEstate\\Models\\Project',3,4,'I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'I\'ve read that in some alarm. This time Alice waited a little, and then dipped suddenly down, so suddenly that Alice had no reason to be two people. \'But it\'s no use speaking.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(188,2,'Botble\\RealEstate\\Models\\Project',3,5,'King, \'unless it was good practice to say which), and they can\'t prove I did: there\'s no room at all comfortable, and it set to work throwing everything within her reach at the sudden change, but she got up and said, very gravely, \'I think, you ought to be ashamed of yourself,\' said Alice.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(191,5,'Botble\\RealEstate\\Models\\Property',1,5,'Caterpillar called after it; and as for the hot day made her draw back in their paws. \'And how many hours a day did you do.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(195,10,'Botble\\RealEstate\\Models\\Property',13,2,'For instance, suppose it doesn\'t matter a bit,\' she thought there was nothing so VERY tired of this. I vote the young Crab, a little scream of laughter. \'Oh, hush!\' the Rabbit came up to the Gryphon. \'How the creatures order one about, and called out, \'Sit down.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(198,11,'Botble\\RealEstate\\Models\\Property',1,2,'Lobster Quadrille The Mock Turtle persisted. \'How COULD he turn them out of his tail. \'As if it please your Majesty!\' the Duchess was sitting on a summer day: The Knave did so, and were resting in the long hall, and wander about among those beds of bright flowers and.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09'),(200,1,'Botble\\RealEstate\\Models\\Property',16,2,'Indeed, she had looked under it, and found herself in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen. \'Their heads are gone, if it had been. But her sister kissed her, and said, without opening its eyes, for it flashed across her.','approved','2023-11-19 23:02:09','2023-11-19 23:02:09');
/*!40000 ALTER TABLE `re_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_tags`
--

DROP TABLE IF EXISTS `re_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_tags`
--

LOCK TABLES `re_tags` WRITE;
/*!40000 ALTER TABLE `re_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_tags_items`
--

DROP TABLE IF EXISTS `re_tags_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_tags_items` (
  `tag_id` int unsigned NOT NULL,
  `item_id` int unsigned NOT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_tags_items`
--

LOCK TABLES `re_tags_items` WRITE;
/*!40000 ALTER TABLE `re_tags_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_tags_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,'Botble\\Blog\\Models\\Post',3,1,'is_featured','0','1','2019-11-18 02:59:46','2019-11-18 02:59:46'),(2,'Botble\\Blog\\Models\\Post',2,1,'is_featured','0','1','2019-11-18 03:00:10','2019-11-18 03:00:10'),(3,'Botble\\Blog\\Models\\Post',1,1,'is_featured','0','1','2019-11-18 03:00:20','2019-11-18 03:00:20'),(4,'Botble\\Blog\\Models\\Post',1,1,'description','BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group','BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.','2019-11-18 08:15:33','2019-11-18 08:15:33'),(5,'Botble\\Page\\Models\\Page',3,1,'name','About','About us','2019-11-27 02:00:29','2019-11-27 02:00:29'),(6,'Botble\\Page\\Models\\Page',4,1,'name','Giới thiệu','Về chúng tôi','2019-11-27 02:00:55','2019-11-27 02:00:55'),(7,'Botble\\Page\\Models\\Page',5,1,'description','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes.','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','2019-11-27 02:35:37','2019-11-27 02:35:37'),(8,'Botble\\Page\\Models\\Page',7,1,'name','Flex Home','Homepage','2020-02-06 21:54:04','2020-02-06 21:54:04'),(9,'Botble\\Page\\Models\\Page',7,1,'template','default','homepage','2020-02-06 21:55:08','2020-02-06 21:55:08');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"career.index\":true,\"career.create\":true,\"career.edit\":true,\"career.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"plugins.real-estate\":true,\"real-estate.settings\":true,\"property.index\":true,\"property.create\":true,\"property.edit\":true,\"property.destroy\":true,\"project.index\":true,\"project.create\":true,\"project.edit\":true,\"project.destroy\":true,\"property_feature.index\":true,\"property_feature.create\":true,\"property_feature.edit\":true,\"property_feature.destroy\":true,\"investor.index\":true,\"investor.create\":true,\"investor.edit\":true,\"investor.destroy\":true,\"review.index\":true,\"review.create\":true,\"review.edit\":true,\"review.destroy\":true,\"consult.index\":true,\"consult.create\":true,\"consult.edit\":true,\"consult.destroy\":true,\"property_category.index\":true,\"property_category.create\":true,\"property_category.edit\":true,\"property_category.destroy\":true,\"facility.index\":true,\"facility.create\":true,\"facility.edit\":true,\"facility.destroy\":true,\"account.index\":true,\"account.create\":true,\"account.edit\":true,\"account.destroy\":true,\"package.index\":true,\"package.create\":true,\"package.edit\":true,\"package.destroy\":true,\"consults.index\":true,\"consults.edit\":true,\"consults.destroy\":true,\"real-estate.custom-fields.index\":true,\"real-estate.custom-fields.create\":true,\"real-estate.custom-fields.edit\":true,\"real-estate.custom-fields.destroy\":true,\"invoice.index\":true,\"invoice.edit\":true,\"invoice.destroy\":true,\"invoice.template\":true,\"import-properties.index\":true,\"export-properties.index\":true,\"import-projects.index\":true,\"export-projects.index\":true,\"coupons.index\":true,\"coupons.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,2,2,'2023-11-19 23:02:04','2023-11-19 23:02:04');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (270,'activated_plugins','[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"career\",\"contact\",\"cookie-consent\",\"location\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2023-11-19 23:02:05'),(2933,'language_hide_default','1',NULL,'2023-11-19 23:02:05'),(2934,'language_switcher_display','dropdown',NULL,'2023-11-19 23:02:05'),(2935,'language_display','all',NULL,'2023-11-19 23:02:05'),(2936,'language_hide_languages','[]',NULL,'2023-11-19 23:02:05'),(3686,'real_estate_display_views_count_in_detail_page','1',NULL,'2023-10-24 23:43:31'),(3800,'real_estate_mandatory_fields_at_consult_form','[\"email\"]',NULL,'2023-11-19 23:02:05'),(3993,'show_admin_bar','1',NULL,'2023-11-19 23:02:05'),(3994,'theme','flex-home',NULL,'2023-11-19 23:02:05'),(3995,'media_random_hash','86b24843561e7f449ce9238a9e08af88',NULL,'2023-10-25 00:12:45'),(4203,'admin_favicon','logo/favicon.png',NULL,'2023-11-19 23:02:05'),(4204,'admin_logo','logo/logo-white.png',NULL,'2023-11-19 23:02:05'),(4205,'permalink-botble-blog-models-post','news',NULL,'2023-11-19 23:02:05'),(4206,'permalink-botble-blog-models-category','news',NULL,'2023-11-19 23:02:05'),(4207,'payment_cod_status','1',NULL,'2023-11-19 23:02:05'),(4208,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2023-11-19 23:02:05'),(4209,'payment_bank_transfer_status','1',NULL,'2023-11-19 23:02:05'),(4210,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2023-11-19 23:02:05'),(4211,'payment_stripe_payment_type','stripe_checkout',NULL,'2023-11-19 23:02:05'),(4212,'theme-flex-home-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/youtube.com\"}]]',NULL,NULL),(4213,'theme-flex-home-site_title','Flex Home',NULL,NULL),(4214,'theme-flex-home-seo_description','Find your favorite homes at Flex Home',NULL,NULL),(4215,'theme-flex-home-copyright','©2023 Flex Home is Proudly Powered by Botble Team.',NULL,NULL),(4216,'theme-flex-home-favicon','logo/favicon.png',NULL,NULL),(4217,'theme-flex-home-logo','logo/logo.png',NULL,NULL),(4218,'theme-flex-home-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(4219,'theme-flex-home-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(4220,'theme-flex-home-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(4221,'theme-flex-home-homepage_id','1',NULL,NULL),(4222,'theme-flex-home-blog_page_id','2',NULL,NULL),(4223,'theme-flex-home-properties_list_page_id','7',NULL,NULL),(4224,'theme-flex-home-projects_list_page_id','8',NULL,NULL),(4225,'theme-flex-home-home_banner','general/home-banner.jpg',NULL,NULL),(4226,'theme-flex-home-breadcrumb_background','general/breadcrumb-background.jpg',NULL,NULL),(4227,'theme-flex-home-address','North Link Building, 10 Admiralty Street, 757695 Singapore',NULL,NULL),(4228,'theme-flex-home-hotline','18006268',NULL,NULL),(4229,'theme-flex-home-email','sale@botble.com',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4556 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'3-beds-villa-calpe-alicante',1,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 20:34:59','2019-11-17 20:34:59'),(2,'property-for-sale-johannesburg-south-africa',2,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 20:53:34','2019-11-17 20:53:34'),(3,'stunning-french-inspired-manor',3,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 21:09:55','2019-11-17 21:09:55'),(4,'42460-buccaneer-court',4,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 21:18:11','2019-11-17 21:18:11'),(5,'wifi',1,'Botble\\RealEstate\\Models\\PropertyFeature','','2019-11-17 21:40:58','2019-11-17 21:40:58'),(6,'swimming-pool',2,'Botble\\RealEstate\\Models\\PropertyFeature','','2019-11-17 21:41:43','2019-11-17 21:41:43'),(7,'walnut-park-apartment',1,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 00:34:49','2019-11-18 00:34:49'),(8,'walnut-park-apartment',5,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 00:47:52','2019-11-18 00:47:52'),(9,'el-camino-del-mar',6,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 01:05:58','2019-11-18 01:05:58'),(10,'family-victorian-view-home',7,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 01:12:07','2019-11-18 01:12:07'),(11,'osaka-heights',2,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 01:28:45','2019-11-18 01:28:45'),(12,'osaka-heights-apartment',8,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 01:49:36','2019-11-18 01:49:36'),(13,'private-estate-magnificent-views',9,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:02:19','2019-11-18 02:02:19'),(14,'harry-baskervilles-hay-loft',10,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:16:53','2019-11-18 02:16:53'),(15,'break-lease-available',11,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:22:48','2019-11-18 02:22:48'),(16,'category-news',1,'Botble\\Blog\\Models\\Category','news','2019-11-18 02:33:35','2023-11-19 23:02:04'),(17,'elegant-family-home-presents-premium-modern-living',12,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:47:05','2019-11-18 02:47:05'),(18,'bcg-sets-great-store-by-real-estate-negotiations',1,'Botble\\Blog\\Models\\Post','news','2019-11-18 02:51:35','2023-11-19 23:02:04'),(19,'bcg-sets-great-store',1,'Botble\\Blog\\Models\\Tag','tag','2019-11-18 02:51:35','2019-11-18 02:51:35'),(20,'private-home-sales-drop-27-in-october',2,'Botble\\Blog\\Models\\Post','news','2019-11-18 02:55:53','2023-11-19 23:02:04'),(21,'private-home-sales',2,'Botble\\Blog\\Models\\Tag','tag','2019-11-18 02:55:53','2019-11-18 02:55:53'),(22,'singapore-overtakes-hong-kong-in-terms-of-property-investment-prospects',3,'Botble\\Blog\\Models\\Post','news','2019-11-18 02:59:01','2023-11-19 23:02:04'),(23,'s-koreas-big-investors-flocking-to-overseas-real-estate',4,'Botble\\Blog\\Models\\Post','news','2019-11-18 03:07:27','2023-11-19 23:02:04'),(24,'south-korean-investors',3,'Botble\\Blog\\Models\\Tag','tag','2019-11-18 03:07:27','2019-11-18 03:07:27'),(25,'mimaroba-paradise',3,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:30:34','2019-11-18 03:30:34'),(26,'aegean-villas',4,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:38:13','2019-11-18 03:38:13'),(27,'aydos-forest-apartment',5,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:45:06','2019-11-18 03:45:06'),(28,'park',6,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:53:20','2019-11-18 03:53:20'),(29,'the-avila-apartment',13,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:23:02','2019-11-18 07:23:02'),(30,'villa-for-sale-in-lavanya-residences',14,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:36:29','2019-11-18 07:36:29'),(31,'want-to-lease-a-house-in-compound-pejaten-barat-kemang',15,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:44:44','2019-11-18 07:44:44'),(32,'apartment-muiderstraatweg-in-diemen',16,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:59:14','2019-11-18 07:59:14'),(33,'nice-apartment-for-rent-in-berlin',17,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 08:13:07','2019-11-18 08:13:07'),(52,'house-architecture',2,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:49:25','2023-11-19 23:02:04'),(53,'kien-truc-nha',3,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:49:35','2023-11-19 23:02:04'),(54,'house-design',4,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:02','2023-11-19 23:02:04'),(55,'thiet-ke-nha',5,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:17','2023-11-19 23:02:04'),(56,'building-materials',6,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:36','2023-11-19 23:02:04'),(57,'vat-lieu-xay-dung',7,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:58','2023-11-19 23:02:04'),(65,'tin-tuc-1',8,'Botble\\Blog\\Models\\Category','news','2019-11-22 01:26:08','2023-11-19 23:02:04'),(74,'sales-manager-real-estate',1,'Botble\\Career\\Models\\Career','careers','2019-11-30 19:43:10','2019-11-30 19:43:10'),(76,'senior-real-estate-consultant',3,'Botble\\Career\\Models\\Career','careers','2019-11-30 19:52:42','2019-11-30 19:52:42'),(3170,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-06 21:16:20','2023-07-06 21:16:20'),(3171,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-06 21:16:20','2023-07-06 21:16:20'),(3172,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-06 21:16:20','2023-07-06 21:16:20'),(3173,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-06 21:16:20','2023-07-06 21:16:20'),(3174,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-06 21:16:20','2023-07-06 21:16:20'),(3175,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-06 21:16:20','2023-07-06 21:16:20'),(3176,'home',1,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3177,'news',2,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3178,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3179,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3180,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3181,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3182,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3183,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-06 21:16:22','2023-07-06 21:16:22'),(3200,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 00:22:16','2023-07-10 00:22:16'),(3201,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 00:22:16','2023-07-10 00:22:16'),(3202,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 00:22:16','2023-07-10 00:22:16'),(3203,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 00:22:16','2023-07-10 00:22:16'),(3204,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 00:22:16','2023-07-10 00:22:16'),(3205,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 00:22:16','2023-07-10 00:22:16'),(3206,'home',1,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3207,'news',2,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3208,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3209,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3210,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3211,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3212,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3213,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-10 00:22:18','2023-07-10 00:22:18'),(3230,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 21:21:54','2023-07-10 21:21:54'),(3231,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 21:21:54','2023-07-10 21:21:54'),(3232,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 21:21:54','2023-07-10 21:21:54'),(3233,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 21:21:54','2023-07-10 21:21:54'),(3234,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 21:21:54','2023-07-10 21:21:54'),(3235,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-10 21:21:54','2023-07-10 21:21:54'),(3236,'home',1,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3237,'news',2,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3238,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3239,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3240,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3241,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3242,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3243,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-10 21:21:55','2023-07-10 21:21:55'),(3260,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-12 03:30:26','2023-07-12 03:30:26'),(3261,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-12 03:30:26','2023-07-12 03:30:26'),(3262,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-12 03:30:26','2023-07-12 03:30:26'),(3263,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-12 03:30:26','2023-07-12 03:30:26'),(3264,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-12 03:30:26','2023-07-12 03:30:26'),(3265,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-12 03:30:26','2023-07-12 03:30:26'),(3266,'home',1,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3267,'news',2,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3268,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3269,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3270,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3271,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3272,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3273,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-12 03:30:27','2023-07-12 03:30:27'),(3290,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 00:31:13','2023-07-13 00:31:13'),(3291,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 00:31:13','2023-07-13 00:31:13'),(3292,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 00:31:13','2023-07-13 00:31:13'),(3293,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 00:31:13','2023-07-13 00:31:13'),(3294,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 00:31:13','2023-07-13 00:31:13'),(3295,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 00:31:13','2023-07-13 00:31:13'),(3296,'home',1,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3297,'news',2,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3298,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3299,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3300,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3301,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3302,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3303,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-13 00:31:15','2023-07-13 00:31:15'),(3320,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 01:42:08','2023-07-13 01:42:08'),(3321,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 01:42:08','2023-07-13 01:42:08'),(3322,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 01:42:08','2023-07-13 01:42:08'),(3323,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 01:42:08','2023-07-13 01:42:08'),(3324,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 01:42:08','2023-07-13 01:42:08'),(3325,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 01:42:08','2023-07-13 01:42:08'),(3326,'home',1,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3327,'news',2,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3328,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3329,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3330,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3331,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3332,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3333,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-13 01:42:12','2023-07-13 01:42:12'),(3350,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 20:20:19','2023-07-13 20:20:19'),(3351,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 20:20:19','2023-07-13 20:20:19'),(3352,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 20:20:19','2023-07-13 20:20:19'),(3353,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 20:20:19','2023-07-13 20:20:19'),(3354,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 20:20:19','2023-07-13 20:20:19'),(3355,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-13 20:20:19','2023-07-13 20:20:19'),(3356,'home',1,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3357,'news',2,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3358,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3359,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3360,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3361,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3362,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3363,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-13 20:20:20','2023-07-13 20:20:20'),(3380,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 02:05:15','2023-07-14 02:05:15'),(3381,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 02:05:15','2023-07-14 02:05:15'),(3382,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 02:05:15','2023-07-14 02:05:15'),(3383,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 02:05:15','2023-07-14 02:05:15'),(3384,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 02:05:15','2023-07-14 02:05:15'),(3385,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 02:05:15','2023-07-14 02:05:15'),(3386,'home',1,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3387,'news',2,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3388,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3389,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3390,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3391,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3392,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3393,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-14 02:05:17','2023-07-14 02:05:17'),(3410,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 18:37:40','2023-07-14 18:37:40'),(3411,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 18:37:40','2023-07-14 18:37:40'),(3412,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 18:37:40','2023-07-14 18:37:40'),(3413,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 18:37:40','2023-07-14 18:37:40'),(3414,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 18:37:40','2023-07-14 18:37:40'),(3415,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 18:37:40','2023-07-14 18:37:40'),(3416,'home',1,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3417,'news',2,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3418,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3419,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3420,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3421,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3422,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3423,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-14 18:37:41','2023-07-14 18:37:41'),(3440,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 23:15:07','2023-07-14 23:15:07'),(3441,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 23:15:07','2023-07-14 23:15:07'),(3442,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 23:15:07','2023-07-14 23:15:07'),(3443,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 23:15:07','2023-07-14 23:15:07'),(3444,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 23:15:07','2023-07-14 23:15:07'),(3445,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-14 23:15:07','2023-07-14 23:15:07'),(3446,'home',1,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3447,'news',2,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3448,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3449,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3450,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3451,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3452,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3453,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-14 23:15:09','2023-07-14 23:15:09'),(3470,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-18 23:25:23','2023-07-18 23:25:23'),(3471,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-18 23:25:23','2023-07-18 23:25:23'),(3472,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-18 23:25:23','2023-07-18 23:25:23'),(3473,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-18 23:25:23','2023-07-18 23:25:23'),(3474,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-18 23:25:23','2023-07-18 23:25:23'),(3475,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-18 23:25:23','2023-07-18 23:25:23'),(3476,'home',1,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3477,'news',2,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3478,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3479,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3480,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3481,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3482,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3483,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-18 23:25:25','2023-07-18 23:25:25'),(3500,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-20 21:21:09','2023-07-20 21:21:09'),(3501,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-20 21:21:09','2023-07-20 21:21:09'),(3502,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-20 21:21:09','2023-07-20 21:21:09'),(3503,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-20 21:21:09','2023-07-20 21:21:09'),(3504,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-20 21:21:09','2023-07-20 21:21:09'),(3505,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-07-20 21:21:09','2023-07-20 21:21:09'),(3506,'home',1,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3507,'news',2,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3508,'about-us',3,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3509,'contact',4,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3510,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3511,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3512,'properties',7,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3513,'projects',8,'Botble\\Page\\Models\\Page','','2023-07-20 21:21:10','2023-07-20 21:21:10'),(3530,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-13 20:47:26','2023-08-13 20:47:26'),(3531,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-13 20:47:26','2023-08-13 20:47:26'),(3532,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-13 20:47:26','2023-08-13 20:47:26'),(3533,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-13 20:47:26','2023-08-13 20:47:26'),(3534,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-13 20:47:26','2023-08-13 20:47:26'),(3535,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-13 20:47:26','2023-08-13 20:47:26'),(3536,'home',1,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3537,'news',2,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3538,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3539,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3540,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3541,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3542,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3543,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-13 20:47:28','2023-08-13 20:47:28'),(3560,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-14 00:52:27','2023-08-14 00:52:27'),(3561,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-14 00:52:27','2023-08-14 00:52:27'),(3562,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-14 00:52:27','2023-08-14 00:52:27'),(3563,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-14 00:52:27','2023-08-14 00:52:27'),(3564,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-14 00:52:27','2023-08-14 00:52:27'),(3565,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-14 00:52:27','2023-08-14 00:52:27'),(3566,'home',1,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3567,'news',2,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3568,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3569,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3570,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3571,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3572,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3573,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-14 00:52:29','2023-08-14 00:52:29'),(3590,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-15 23:55:06','2023-08-15 23:55:06'),(3591,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-15 23:55:06','2023-08-15 23:55:06'),(3592,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-15 23:55:06','2023-08-15 23:55:06'),(3593,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-15 23:55:06','2023-08-15 23:55:06'),(3594,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-15 23:55:06','2023-08-15 23:55:06'),(3595,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-15 23:55:06','2023-08-15 23:55:06'),(3596,'home',1,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3597,'news',2,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3598,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3599,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3600,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3601,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3602,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3603,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-15 23:55:07','2023-08-15 23:55:07'),(3620,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 00:04:58','2023-08-17 00:04:58'),(3621,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 00:04:58','2023-08-17 00:04:58'),(3622,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 00:04:58','2023-08-17 00:04:58'),(3623,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 00:04:58','2023-08-17 00:04:58'),(3624,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 00:04:58','2023-08-17 00:04:58'),(3625,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 00:04:58','2023-08-17 00:04:58'),(3626,'home',1,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3627,'news',2,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3628,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3629,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3630,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3631,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3632,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3633,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-17 00:04:59','2023-08-17 00:04:59'),(3650,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 01:25:36','2023-08-17 01:25:36'),(3651,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 01:25:36','2023-08-17 01:25:36'),(3652,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 01:25:36','2023-08-17 01:25:36'),(3653,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 01:25:36','2023-08-17 01:25:36'),(3654,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 01:25:36','2023-08-17 01:25:36'),(3655,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-17 01:25:36','2023-08-17 01:25:36'),(3656,'home',1,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3657,'news',2,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3658,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3659,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3660,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3661,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3662,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3663,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-17 01:25:37','2023-08-17 01:25:37'),(3680,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 01:23:38','2023-08-20 01:23:38'),(3681,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 01:23:38','2023-08-20 01:23:38'),(3682,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 01:23:38','2023-08-20 01:23:38'),(3683,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 01:23:38','2023-08-20 01:23:38'),(3684,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 01:23:38','2023-08-20 01:23:38'),(3685,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 01:23:38','2023-08-20 01:23:38'),(3686,'home',1,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3687,'news',2,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3688,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3689,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3690,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3691,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3692,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3693,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-20 01:23:40','2023-08-20 01:23:40'),(3710,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 23:04:29','2023-08-20 23:04:29'),(3711,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 23:04:29','2023-08-20 23:04:29'),(3712,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 23:04:29','2023-08-20 23:04:29'),(3713,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 23:04:29','2023-08-20 23:04:29'),(3714,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 23:04:29','2023-08-20 23:04:29'),(3715,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-20 23:04:29','2023-08-20 23:04:29'),(3716,'home',1,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3717,'news',2,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3718,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3719,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3720,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3721,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3722,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3723,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-20 23:04:31','2023-08-20 23:04:31'),(3740,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-24 00:24:10','2023-08-24 00:24:10'),(3741,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-24 00:24:10','2023-08-24 00:24:10'),(3742,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-24 00:24:10','2023-08-24 00:24:10'),(3743,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-24 00:24:10','2023-08-24 00:24:10'),(3744,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-24 00:24:10','2023-08-24 00:24:10'),(3745,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-08-24 00:24:10','2023-08-24 00:24:10'),(3746,'home',1,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3747,'news',2,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3748,'about-us',3,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3749,'contact',4,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3750,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3751,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3752,'properties',7,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3753,'projects',8,'Botble\\Page\\Models\\Page','','2023-08-24 00:24:11','2023-08-24 00:24:11'),(3770,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-05 23:58:57','2023-09-05 23:58:57'),(3771,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-05 23:58:57','2023-09-05 23:58:57'),(3772,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-05 23:58:57','2023-09-05 23:58:57'),(3773,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-05 23:58:57','2023-09-05 23:58:57'),(3774,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-05 23:58:57','2023-09-05 23:58:57'),(3775,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-05 23:58:57','2023-09-05 23:58:57'),(3776,'home',1,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3777,'news',2,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3778,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3779,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3780,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3781,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3782,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3783,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-05 23:58:59','2023-09-05 23:58:59'),(3800,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 00:01:38','2023-09-13 00:01:38'),(3801,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 00:01:38','2023-09-13 00:01:38'),(3802,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 00:01:38','2023-09-13 00:01:38'),(3803,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 00:01:38','2023-09-13 00:01:38'),(3804,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 00:01:38','2023-09-13 00:01:38'),(3805,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 00:01:38','2023-09-13 00:01:38'),(3806,'home',1,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3807,'news',2,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3808,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3809,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3810,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3811,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3812,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3813,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-13 00:01:40','2023-09-13 00:01:40'),(3830,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 01:54:02','2023-09-13 01:54:02'),(3831,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 01:54:02','2023-09-13 01:54:02'),(3832,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 01:54:02','2023-09-13 01:54:02'),(3833,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 01:54:02','2023-09-13 01:54:02'),(3834,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 01:54:02','2023-09-13 01:54:02'),(3835,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-13 01:54:02','2023-09-13 01:54:02'),(3836,'home',1,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3837,'news',2,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3838,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3839,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3840,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3841,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3842,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3843,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-13 01:54:03','2023-09-13 01:54:03'),(3860,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-15 18:15:42','2023-09-15 18:15:42'),(3861,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-15 18:15:42','2023-09-15 18:15:42'),(3862,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-15 18:15:42','2023-09-15 18:15:42'),(3863,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-15 18:15:42','2023-09-15 18:15:42'),(3864,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-15 18:15:42','2023-09-15 18:15:42'),(3865,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-15 18:15:42','2023-09-15 18:15:42'),(3866,'home',1,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3867,'news',2,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3868,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3869,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3870,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3871,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3872,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3873,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-15 18:15:43','2023-09-15 18:15:43'),(3890,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-16 07:26:10','2023-09-16 07:26:10'),(3891,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-16 07:26:10','2023-09-16 07:26:10'),(3892,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-16 07:26:10','2023-09-16 07:26:10'),(3893,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-16 07:26:10','2023-09-16 07:26:10'),(3894,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-16 07:26:10','2023-09-16 07:26:10'),(3895,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-16 07:26:10','2023-09-16 07:26:10'),(3896,'home',1,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3897,'news',2,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3898,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3899,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3900,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3901,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3902,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3903,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-16 07:26:12','2023-09-16 07:26:12'),(3920,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 01:39:19','2023-09-18 01:39:19'),(3921,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 01:39:19','2023-09-18 01:39:19'),(3922,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 01:39:19','2023-09-18 01:39:19'),(3923,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 01:39:19','2023-09-18 01:39:19'),(3924,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 01:39:19','2023-09-18 01:39:19'),(3925,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 01:39:19','2023-09-18 01:39:19'),(3926,'home',1,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3927,'news',2,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3928,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3929,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3930,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3931,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3932,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3933,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-18 01:39:20','2023-09-18 01:39:20'),(3950,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 03:28:20','2023-09-18 03:28:20'),(3951,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 03:28:20','2023-09-18 03:28:20'),(3952,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 03:28:20','2023-09-18 03:28:20'),(3953,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 03:28:20','2023-09-18 03:28:20'),(3954,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 03:28:20','2023-09-18 03:28:20'),(3955,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 03:28:20','2023-09-18 03:28:20'),(3956,'home',1,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3957,'news',2,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3958,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3959,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3960,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3961,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3962,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3963,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-18 03:28:21','2023-09-18 03:28:21'),(3980,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 04:32:22','2023-09-18 04:32:22'),(3981,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 04:32:22','2023-09-18 04:32:22'),(3982,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 04:32:22','2023-09-18 04:32:22'),(3983,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 04:32:22','2023-09-18 04:32:22'),(3984,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 04:32:22','2023-09-18 04:32:22'),(3985,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-18 04:32:22','2023-09-18 04:32:22'),(3986,'home',1,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3987,'news',2,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3988,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3989,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3990,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3991,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3992,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(3993,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-18 04:32:24','2023-09-18 04:32:24'),(4010,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-19 00:06:57','2023-09-19 00:06:57'),(4011,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-19 00:06:57','2023-09-19 00:06:57'),(4012,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-19 00:06:57','2023-09-19 00:06:57'),(4013,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-19 00:06:57','2023-09-19 00:06:57'),(4014,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-19 00:06:57','2023-09-19 00:06:57'),(4015,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-19 00:06:57','2023-09-19 00:06:57'),(4016,'home',1,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4017,'news',2,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4018,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4019,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4020,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4021,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4022,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4023,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-19 00:06:59','2023-09-19 00:06:59'),(4040,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-20 00:51:41','2023-09-20 00:51:41'),(4041,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-20 00:51:41','2023-09-20 00:51:41'),(4042,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-20 00:51:41','2023-09-20 00:51:41'),(4043,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-20 00:51:41','2023-09-20 00:51:41'),(4044,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-20 00:51:41','2023-09-20 00:51:41'),(4045,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-20 00:51:41','2023-09-20 00:51:41'),(4046,'home',1,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4047,'news',2,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4048,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4049,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4050,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4051,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4052,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4053,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-20 00:51:42','2023-09-20 00:51:42'),(4070,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-23 07:28:22','2023-09-23 07:28:22'),(4071,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-23 07:28:22','2023-09-23 07:28:22'),(4072,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-23 07:28:22','2023-09-23 07:28:22'),(4073,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-23 07:28:22','2023-09-23 07:28:22'),(4074,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-23 07:28:22','2023-09-23 07:28:22'),(4075,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-23 07:28:22','2023-09-23 07:28:22'),(4076,'home',1,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4077,'news',2,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4078,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4079,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4080,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4081,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4082,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4083,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-23 07:28:23','2023-09-23 07:28:23'),(4100,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 01:19:35','2023-09-24 01:19:35'),(4101,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 01:19:35','2023-09-24 01:19:35'),(4102,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 01:19:35','2023-09-24 01:19:35'),(4103,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 01:19:35','2023-09-24 01:19:35'),(4104,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 01:19:35','2023-09-24 01:19:35'),(4105,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 01:19:35','2023-09-24 01:19:35'),(4106,'home',1,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4107,'news',2,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4108,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4109,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4110,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4111,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4112,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4113,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-24 01:19:39','2023-09-24 01:19:39'),(4130,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 21:25:11','2023-09-24 21:25:11'),(4131,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 21:25:11','2023-09-24 21:25:11'),(4132,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 21:25:11','2023-09-24 21:25:11'),(4133,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 21:25:11','2023-09-24 21:25:11'),(4134,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 21:25:11','2023-09-24 21:25:11'),(4135,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-24 21:25:11','2023-09-24 21:25:11'),(4136,'home',1,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4137,'news',2,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4138,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4139,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4140,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4141,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4142,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4143,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-24 21:25:15','2023-09-24 21:25:15'),(4160,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-26 02:42:24','2023-09-26 02:42:24'),(4161,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-26 02:42:24','2023-09-26 02:42:24'),(4162,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-26 02:42:24','2023-09-26 02:42:24'),(4163,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-26 02:42:24','2023-09-26 02:42:24'),(4164,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-26 02:42:24','2023-09-26 02:42:24'),(4165,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-09-26 02:42:24','2023-09-26 02:42:24'),(4166,'home',1,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4167,'news',2,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4168,'about-us',3,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4169,'contact',4,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4170,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4171,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4172,'properties',7,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4173,'projects',8,'Botble\\Page\\Models\\Page','','2023-09-26 02:42:28','2023-09-26 02:42:28'),(4190,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-19 23:56:23','2023-10-19 23:56:23'),(4191,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-19 23:56:23','2023-10-19 23:56:23'),(4192,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-19 23:56:23','2023-10-19 23:56:23'),(4193,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-19 23:56:23','2023-10-19 23:56:23'),(4194,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-19 23:56:23','2023-10-19 23:56:23'),(4195,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-19 23:56:23','2023-10-19 23:56:23'),(4196,'home',1,'Botble\\Page\\Models\\Page','','2023-10-19 23:56:27','2023-10-19 23:56:27'),(4197,'news',2,'Botble\\Page\\Models\\Page','','2023-10-19 23:56:27','2023-10-19 23:56:27'),(4198,'about-us',3,'Botble\\Page\\Models\\Page','','2023-10-19 23:56:27','2023-10-19 23:56:27'),(4199,'contact',4,'Botble\\Page\\Models\\Page','','2023-10-19 23:56:27','2023-10-19 23:56:27'),(4200,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-10-19 23:56:27','2023-10-19 23:56:27'),(4201,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-10-19 23:56:27','2023-10-19 23:56:27'),(4202,'properties',7,'Botble\\Page\\Models\\Page','','2023-10-19 23:56:27','2023-10-19 23:56:27'),(4203,'projects',8,'Botble\\Page\\Models\\Page','','2023-10-19 23:56:27','2023-10-19 23:56:27'),(4220,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-23 00:13:55','2023-10-23 00:13:55'),(4221,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-23 00:13:55','2023-10-23 00:13:55'),(4222,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-23 00:13:55','2023-10-23 00:13:55'),(4223,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-23 00:13:55','2023-10-23 00:13:55'),(4224,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-23 00:13:55','2023-10-23 00:13:55'),(4225,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-23 00:13:55','2023-10-23 00:13:55'),(4226,'home',1,'Botble\\Page\\Models\\Page','','2023-10-23 00:14:00','2023-10-23 00:14:00'),(4227,'news',2,'Botble\\Page\\Models\\Page','','2023-10-23 00:14:00','2023-10-23 00:14:00'),(4228,'about-us',3,'Botble\\Page\\Models\\Page','','2023-10-23 00:14:00','2023-10-23 00:14:00'),(4229,'contact',4,'Botble\\Page\\Models\\Page','','2023-10-23 00:14:00','2023-10-23 00:14:00'),(4230,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-10-23 00:14:00','2023-10-23 00:14:00'),(4231,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-10-23 00:14:00','2023-10-23 00:14:00'),(4232,'properties',7,'Botble\\Page\\Models\\Page','','2023-10-23 00:14:00','2023-10-23 00:14:00'),(4233,'projects',8,'Botble\\Page\\Models\\Page','','2023-10-23 00:14:00','2023-10-23 00:14:00'),(4250,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-24 23:43:27','2023-10-24 23:43:27'),(4251,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-24 23:43:27','2023-10-24 23:43:27'),(4252,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-24 23:43:27','2023-10-24 23:43:27'),(4253,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-24 23:43:27','2023-10-24 23:43:27'),(4254,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-24 23:43:27','2023-10-24 23:43:27'),(4255,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-24 23:43:27','2023-10-24 23:43:27'),(4256,'home',1,'Botble\\Page\\Models\\Page','','2023-10-24 23:43:31','2023-10-24 23:43:31'),(4257,'news',2,'Botble\\Page\\Models\\Page','','2023-10-24 23:43:31','2023-10-24 23:43:31'),(4258,'about-us',3,'Botble\\Page\\Models\\Page','','2023-10-24 23:43:31','2023-10-24 23:43:31'),(4259,'contact',4,'Botble\\Page\\Models\\Page','','2023-10-24 23:43:31','2023-10-24 23:43:31'),(4260,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-10-24 23:43:31','2023-10-24 23:43:31'),(4261,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-10-24 23:43:31','2023-10-24 23:43:31'),(4262,'properties',7,'Botble\\Page\\Models\\Page','','2023-10-24 23:43:31','2023-10-24 23:43:31'),(4263,'projects',8,'Botble\\Page\\Models\\Page','','2023-10-24 23:43:31','2023-10-24 23:43:31'),(4280,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-25 00:12:40','2023-10-25 00:12:40'),(4281,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-25 00:12:40','2023-10-25 00:12:40'),(4282,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-25 00:12:40','2023-10-25 00:12:40'),(4283,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-25 00:12:40','2023-10-25 00:12:40'),(4284,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-25 00:12:40','2023-10-25 00:12:40'),(4285,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-10-25 00:12:40','2023-10-25 00:12:40'),(4286,'home',1,'Botble\\Page\\Models\\Page','','2023-10-25 00:12:44','2023-10-25 00:12:44'),(4287,'news',2,'Botble\\Page\\Models\\Page','','2023-10-25 00:12:44','2023-10-25 00:12:44'),(4288,'about-us',3,'Botble\\Page\\Models\\Page','','2023-10-25 00:12:44','2023-10-25 00:12:44'),(4289,'contact',4,'Botble\\Page\\Models\\Page','','2023-10-25 00:12:44','2023-10-25 00:12:44'),(4290,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2023-10-25 00:12:44','2023-10-25 00:12:44'),(4291,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2023-10-25 00:12:44','2023-10-25 00:12:44'),(4292,'properties',7,'Botble\\Page\\Models\\Page','','2023-10-25 00:12:44','2023-10-25 00:12:44'),(4293,'projects',8,'Botble\\Page\\Models\\Page','','2023-10-25 00:12:44','2023-10-25 00:12:44'),(4310,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-09 00:52:37','2023-11-09 00:52:37'),(4311,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-09 00:52:37','2023-11-09 00:52:37'),(4312,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-09 00:52:37','2023-11-09 00:52:37'),(4313,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-09 00:52:37','2023-11-09 00:52:37'),(4314,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-09 00:52:37','2023-11-09 00:52:37'),(4315,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-09 00:52:37','2023-11-09 00:52:37'),(4316,'home',9,'Botble\\Page\\Models\\Page','','2023-11-09 00:52:41','2023-11-09 00:52:41'),(4317,'news',10,'Botble\\Page\\Models\\Page','','2023-11-09 00:52:41','2023-11-09 00:52:41'),(4318,'about-us',11,'Botble\\Page\\Models\\Page','','2023-11-09 00:52:41','2023-11-09 00:52:41'),(4319,'contact',12,'Botble\\Page\\Models\\Page','','2023-11-09 00:52:41','2023-11-09 00:52:41'),(4320,'terms-conditions',13,'Botble\\Page\\Models\\Page','','2023-11-09 00:52:41','2023-11-09 00:52:41'),(4321,'cookie-policy',14,'Botble\\Page\\Models\\Page','','2023-11-09 00:52:41','2023-11-09 00:52:41'),(4322,'properties',15,'Botble\\Page\\Models\\Page','','2023-11-09 00:52:41','2023-11-09 00:52:41'),(4323,'projects',16,'Botble\\Page\\Models\\Page','','2023-11-09 00:52:41','2023-11-09 00:52:41'),(4340,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-09 09:18:59','2023-11-09 09:18:59'),(4341,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-09 09:18:59','2023-11-09 09:18:59'),(4342,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-09 09:18:59','2023-11-09 09:18:59'),(4343,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-09 09:18:59','2023-11-09 09:18:59'),(4344,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-09 09:18:59','2023-11-09 09:18:59'),(4345,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-09 09:18:59','2023-11-09 09:18:59'),(4346,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 00:50:16','2023-11-14 00:50:16'),(4347,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 00:50:16','2023-11-14 00:50:16'),(4348,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 00:50:16','2023-11-14 00:50:16'),(4349,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 00:50:16','2023-11-14 00:50:16'),(4350,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 00:50:16','2023-11-14 00:50:16'),(4351,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 00:50:16','2023-11-14 00:50:16'),(4352,'home',17,'Botble\\Page\\Models\\Page','','2023-11-14 00:50:20','2023-11-14 00:50:20'),(4353,'news',18,'Botble\\Page\\Models\\Page','','2023-11-14 00:50:20','2023-11-14 00:50:20'),(4354,'about-us',19,'Botble\\Page\\Models\\Page','','2023-11-14 00:50:20','2023-11-14 00:50:20'),(4355,'contact',20,'Botble\\Page\\Models\\Page','','2023-11-14 00:50:20','2023-11-14 00:50:20'),(4356,'terms-conditions',21,'Botble\\Page\\Models\\Page','','2023-11-14 00:50:20','2023-11-14 00:50:20'),(4357,'cookie-policy',22,'Botble\\Page\\Models\\Page','','2023-11-14 00:50:20','2023-11-14 00:50:20'),(4358,'properties',23,'Botble\\Page\\Models\\Page','','2023-11-14 00:50:20','2023-11-14 00:50:20'),(4359,'projects',24,'Botble\\Page\\Models\\Page','','2023-11-14 00:50:20','2023-11-14 00:50:20'),(4376,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 20:53:21','2023-11-14 20:53:21'),(4377,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 20:53:21','2023-11-14 20:53:21'),(4378,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 20:53:21','2023-11-14 20:53:21'),(4379,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 20:53:21','2023-11-14 20:53:21'),(4380,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 20:53:21','2023-11-14 20:53:21'),(4381,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 20:53:21','2023-11-14 20:53:21'),(4382,'home',25,'Botble\\Page\\Models\\Page','','2023-11-14 20:53:25','2023-11-14 20:53:25'),(4383,'news',26,'Botble\\Page\\Models\\Page','','2023-11-14 20:53:25','2023-11-14 20:53:25'),(4384,'about-us',27,'Botble\\Page\\Models\\Page','','2023-11-14 20:53:25','2023-11-14 20:53:25'),(4385,'contact',28,'Botble\\Page\\Models\\Page','','2023-11-14 20:53:25','2023-11-14 20:53:25'),(4386,'terms-conditions',29,'Botble\\Page\\Models\\Page','','2023-11-14 20:53:25','2023-11-14 20:53:25'),(4387,'cookie-policy',30,'Botble\\Page\\Models\\Page','','2023-11-14 20:53:25','2023-11-14 20:53:25'),(4388,'properties',31,'Botble\\Page\\Models\\Page','','2023-11-14 20:53:25','2023-11-14 20:53:25'),(4389,'projects',32,'Botble\\Page\\Models\\Page','','2023-11-14 20:53:25','2023-11-14 20:53:25'),(4406,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 21:02:57','2023-11-14 21:02:57'),(4407,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 21:02:57','2023-11-14 21:02:57'),(4408,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 21:02:57','2023-11-14 21:02:57'),(4409,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 21:02:57','2023-11-14 21:02:57'),(4410,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 21:02:57','2023-11-14 21:02:57'),(4411,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 21:02:57','2023-11-14 21:02:57'),(4412,'home',33,'Botble\\Page\\Models\\Page','','2023-11-14 21:03:01','2023-11-14 21:03:01'),(4413,'news',34,'Botble\\Page\\Models\\Page','','2023-11-14 21:03:01','2023-11-14 21:03:01'),(4414,'about-us',35,'Botble\\Page\\Models\\Page','','2023-11-14 21:03:01','2023-11-14 21:03:01'),(4415,'contact',36,'Botble\\Page\\Models\\Page','','2023-11-14 21:03:01','2023-11-14 21:03:01'),(4416,'terms-conditions',37,'Botble\\Page\\Models\\Page','','2023-11-14 21:03:01','2023-11-14 21:03:01'),(4417,'cookie-policy',38,'Botble\\Page\\Models\\Page','','2023-11-14 21:03:01','2023-11-14 21:03:01'),(4418,'properties',39,'Botble\\Page\\Models\\Page','','2023-11-14 21:03:01','2023-11-14 21:03:01'),(4419,'projects',40,'Botble\\Page\\Models\\Page','','2023-11-14 21:03:01','2023-11-14 21:03:01'),(4436,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 23:24:50','2023-11-14 23:24:50'),(4437,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 23:24:50','2023-11-14 23:24:50'),(4438,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 23:24:50','2023-11-14 23:24:50'),(4439,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 23:24:50','2023-11-14 23:24:50'),(4440,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 23:24:50','2023-11-14 23:24:50'),(4441,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-14 23:24:50','2023-11-14 23:24:50'),(4442,'home',41,'Botble\\Page\\Models\\Page','','2023-11-14 23:24:54','2023-11-14 23:24:54'),(4443,'news',42,'Botble\\Page\\Models\\Page','','2023-11-14 23:24:54','2023-11-14 23:24:54'),(4444,'about-us',43,'Botble\\Page\\Models\\Page','','2023-11-14 23:24:54','2023-11-14 23:24:54'),(4445,'contact',44,'Botble\\Page\\Models\\Page','','2023-11-14 23:24:54','2023-11-14 23:24:54'),(4446,'terms-conditions',45,'Botble\\Page\\Models\\Page','','2023-11-14 23:24:54','2023-11-14 23:24:54'),(4447,'cookie-policy',46,'Botble\\Page\\Models\\Page','','2023-11-14 23:24:54','2023-11-14 23:24:54'),(4448,'properties',47,'Botble\\Page\\Models\\Page','','2023-11-14 23:24:54','2023-11-14 23:24:54'),(4449,'projects',48,'Botble\\Page\\Models\\Page','','2023-11-14 23:24:54','2023-11-14 23:24:54'),(4466,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-15 03:04:22','2023-11-15 03:04:22'),(4467,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-15 03:04:22','2023-11-15 03:04:22'),(4468,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-15 03:04:22','2023-11-15 03:04:22'),(4469,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-15 03:04:22','2023-11-15 03:04:22'),(4470,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-15 03:04:22','2023-11-15 03:04:22'),(4471,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-15 03:04:22','2023-11-15 03:04:22'),(4472,'home',49,'Botble\\Page\\Models\\Page','','2023-11-15 03:04:26','2023-11-15 03:04:26'),(4473,'news',50,'Botble\\Page\\Models\\Page','','2023-11-15 03:04:26','2023-11-15 03:04:26'),(4474,'about-us',51,'Botble\\Page\\Models\\Page','','2023-11-15 03:04:26','2023-11-15 03:04:26'),(4475,'contact',52,'Botble\\Page\\Models\\Page','','2023-11-15 03:04:26','2023-11-15 03:04:26'),(4476,'terms-conditions',53,'Botble\\Page\\Models\\Page','','2023-11-15 03:04:26','2023-11-15 03:04:26'),(4477,'cookie-policy',54,'Botble\\Page\\Models\\Page','','2023-11-15 03:04:26','2023-11-15 03:04:26'),(4478,'properties',55,'Botble\\Page\\Models\\Page','','2023-11-15 03:04:26','2023-11-15 03:04:26'),(4479,'projects',56,'Botble\\Page\\Models\\Page','','2023-11-15 03:04:26','2023-11-15 03:04:26'),(4496,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-15 09:21:57','2023-11-15 09:21:57'),(4497,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-15 09:21:57','2023-11-15 09:21:57'),(4498,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-15 09:21:57','2023-11-15 09:21:57'),(4499,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-15 09:21:57','2023-11-15 09:21:57'),(4500,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-15 09:21:57','2023-11-15 09:21:57'),(4501,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-15 09:21:57','2023-11-15 09:21:57'),(4502,'home',57,'Botble\\Page\\Models\\Page','','2023-11-15 09:22:02','2023-11-15 09:22:02'),(4503,'news',58,'Botble\\Page\\Models\\Page','','2023-11-15 09:22:02','2023-11-15 09:22:02'),(4504,'about-us',59,'Botble\\Page\\Models\\Page','','2023-11-15 09:22:02','2023-11-15 09:22:02'),(4505,'contact',60,'Botble\\Page\\Models\\Page','','2023-11-15 09:22:02','2023-11-15 09:22:02'),(4506,'terms-conditions',61,'Botble\\Page\\Models\\Page','','2023-11-15 09:22:02','2023-11-15 09:22:02'),(4507,'cookie-policy',62,'Botble\\Page\\Models\\Page','','2023-11-15 09:22:02','2023-11-15 09:22:02'),(4508,'properties',63,'Botble\\Page\\Models\\Page','','2023-11-15 09:22:02','2023-11-15 09:22:02'),(4509,'projects',64,'Botble\\Page\\Models\\Page','','2023-11-15 09:22:02','2023-11-15 09:22:02'),(4526,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-19 23:01:59','2023-11-19 23:01:59'),(4527,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-19 23:01:59','2023-11-19 23:01:59'),(4528,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-19 23:01:59','2023-11-19 23:01:59'),(4529,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-19 23:01:59','2023-11-19 23:01:59'),(4530,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-19 23:01:59','2023-11-19 23:01:59'),(4531,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2023-11-19 23:01:59','2023-11-19 23:01:59'),(4532,'home',65,'Botble\\Page\\Models\\Page','','2023-11-19 23:02:04','2023-11-19 23:02:04'),(4533,'news',66,'Botble\\Page\\Models\\Page','','2023-11-19 23:02:04','2023-11-19 23:02:04'),(4534,'about-us',67,'Botble\\Page\\Models\\Page','','2023-11-19 23:02:04','2023-11-19 23:02:04'),(4535,'contact',68,'Botble\\Page\\Models\\Page','','2023-11-19 23:02:04','2023-11-19 23:02:04'),(4536,'terms-conditions',69,'Botble\\Page\\Models\\Page','','2023-11-19 23:02:04','2023-11-19 23:02:04'),(4537,'cookie-policy',70,'Botble\\Page\\Models\\Page','','2023-11-19 23:02:04','2023-11-19 23:02:04'),(4538,'properties',71,'Botble\\Page\\Models\\Page','','2023-11-19 23:02:04','2023-11-19 23:02:04'),(4539,'projects',72,'Botble\\Page\\Models\\Page','','2023-11-19 23:02:04','2023-11-19 23:02:04'),(4540,'the-top-2020-handbag-trends-to-know',2313,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4541,'top-search-engine-optimization-strategies',2314,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4542,'which-company-would-you-choose',2315,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4543,'used-car-dealer-sales-tricks-exposed',2316,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4544,'20-ways-to-sell-your-product-faster',2317,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4545,'the-secrets-of-rich-and-famous-writers',2318,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4546,'imagine-losing-20-pounds-in-14-days',2319,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4547,'are-you-still-using-that-slow-old-typewriter',2320,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4548,'a-skin-cream-thats-proven-to-work',2321,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4549,'10-reasons-to-start-your-own-profitable-website',2322,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4550,'simple-ways-to-reduce-your-unwanted-wrinkles',2323,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4551,'apple-imac-with-retina-5k-display-review',2324,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4552,'10000-web-site-visitors-in-one-monthguaranteed',2325,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4553,'unlock-the-secrets-of-selling-high-ticket-items',2326,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4554,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',2327,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06'),(4555,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2328,'Botble\\Blog\\Models\\Post','news','2023-11-19 23:02:06','2023-11-19 23:02:06');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California',1,0,0,'published','2019-11-18 08:17:57','2023-08-13 20:47:25',NULL,'california',0,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'BCG sets great store',1,'Botble\\ACL\\Models\\User','','published','2019-11-18 02:51:35','2019-11-18 02:51:35'),(2,'Private Home Sales',1,'Botble\\ACL\\Models\\User','','published','2019-11-18 02:55:53','2019-11-18 02:55:53'),(3,'South Korean investors',1,'Botble\\ACL\\Models\\User','','published','2019-11-18 03:07:27','2019-11-18 03:07:27');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `credits` int unsigned NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `account_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5946 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
INSERT INTO `user_meta` VALUES (1,'admin-locale','en',1,'2019-11-17 20:19:14','2019-11-30 19:25:04');
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'josefa09@treutel.com',NULL,'$2y$12$yP0SjXY2xNjeRZtRce7Y.OvZtoFHOkkKboiMSIP6eOqmg1FYeeZjO',NULL,'2023-11-19 23:02:04','2023-11-19 23:02:04',NULL,NULL,'Evangeline','Hickle','botble',NULL,1,1),(2,'omer29@lowe.biz',NULL,'$2y$12$6MK5tWvZQF7Vf6ON5VPm.uCUDryv77UsSRMNCDCxMqeF7A3lZP/Ve',NULL,'2023-11-19 23:02:04','2023-11-19 23:02:04',NULL,NULL,'Jedidiah','Haag','admin',NULL,1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (20,'CustomMenuWidget','footer_sidebar','flex-home',0,'{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"about\"}','2019-11-17 22:09:57','2019-11-17 22:09:57'),(21,'CustomMenuWidget','footer_sidebar','flex-home',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"More information\",\"menu_id\":\"more-information\"}','2019-11-17 22:09:57','2019-11-17 22:09:57'),(22,'CustomMenuWidget','footer_sidebar','flex-home',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"News\",\"menu_id\":\"news\"}','2019-11-17 22:09:57','2019-11-17 22:09:57'),(24,'CategoriesWidget','primary_sidebar','flex-home',0,'{\"id\":\"CategoriesWidget\",\"name\":\"Categories\"}','2019-11-18 03:50:44','2019-11-18 03:50:44'),(25,'RecentPostsWidget','primary_sidebar','flex-home',1,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"5\"}','2019-11-18 03:50:45','2019-11-18 03:50:45');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20 13:02:21