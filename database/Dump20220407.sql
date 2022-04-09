-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: industriaV1
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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileable_id` int unsigned NOT NULL,
  `fileable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (19,'tumblr_niusrhlibd1sgw7hlo1_400_1646714581.gif',71,'App\\Models\\Post','2022-03-08 07:43:01','2022-03-08 07:43:01'),(20,'sh3qeOKz_400x400_1646716144.jpg',80,'App\\Models\\Post','2022-03-08 08:09:04','2022-03-08 08:09:04'),(21,'tumblr_niusrhlibd1sgw7hlo1_400_1646716160.gif',79,'App\\Models\\Post','2022-03-08 08:09:20','2022-03-08 08:09:20'),(22,'sh3qeOKz_400x400_1646716170.jpg',78,'App\\Models\\Post','2022-03-08 08:09:30','2022-03-08 08:09:30'),(23,'sh3qeOKz_400x400_1646716182.jpg',70,'App\\Models\\Post','2022-03-08 08:09:42','2022-03-08 08:09:42'),(24,'tumblr_niusrhlibd1sgw7hlo1_400_1646716199.gif',69,'App\\Models\\Post','2022-03-08 08:09:59','2022-03-08 08:09:59'),(25,'tumblr_niusrhlibd1sgw7hlo1_400_1646716965.gif',83,'App\\Models\\Post','2022-03-08 08:22:45','2022-03-08 08:22:45');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followings`
--

DROP TABLE IF EXISTS `followings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `follower_id` bigint unsigned NOT NULL,
  `followed_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followings`
--

LOCK TABLES `followings` WRITE;
/*!40000 ALTER TABLE `followings` DISABLE KEYS */;
INSERT INTO `followings` VALUES (2,10,11,'2022-03-09 12:05:23','2022-03-09 12:05:23'),(38,11,10,'2022-03-27 06:26:39','2022-03-27 06:26:39');
/*!40000 ALTER TABLE `followings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liked_posts`
--

DROP TABLE IF EXISTS `liked_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liked_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=741 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liked_posts`
--

LOCK TABLES `liked_posts` WRITE;
/*!40000 ALTER TABLE `liked_posts` DISABLE KEYS */;
INSERT INTO `liked_posts` VALUES (740,11,144,'2022-03-27 06:29:19','2022-03-27 06:29:19');
/*!40000 ALTER TABLE `liked_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` bigint unsigned DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_02_27_233644_create_sessions_table',1),(7,'2022_02_28_004152_create_posts_table',2),(8,'2022_03_06_170152_create_permission_tables',3),(9,'2022_03_07_022710_create_files_table',4),(10,'0000_00_00_000000_create_websockets_statistics_entries_table',5),(11,'2022_03_09_014056_create_liked_posts_table',6),(12,'2022_03_09_030359_create_notifications_table',7),(13,'2022_03_09_220113_create_followings_table',8),(14,'2022_03_10_033047_create_media_table',9);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('01458474-79e8-44cb-a081-7af6b71b75ea','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":71,\"user_id\":1,\"content\":\"41321\",\"created_at\":\"2022-03-08T02:48:10.000000Z\",\"updated_at\":\"2022-03-08T02:48:10.000000Z\",\"title\":\"asdad\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:42:35','2022-03-10 03:42:30','2022-03-10 03:42:35'),('021970bc-b6d8-4aff-bfd9-018c0a886857','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-11 03:52:34','2022-03-27 03:28:21'),('02241877-1ee3-4c42-a7ed-d929385c636d','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":79,\"user_id\":1,\"content\":\"asd123\",\"created_at\":\"2022-03-08T05:06:46.000000Z\",\"updated_at\":\"2022-03-08T05:06:46.000000Z\",\"title\":\"Sas\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:43:18','2022-03-10 03:43:03','2022-03-10 03:43:18'),('036d79e3-558f-4c59-9c4a-173532b2468f','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":9,\"user_id\":8,\"content\":\"tere post 1\",\"created_at\":\"2022-03-06T20:46:47.000000Z\",\"updated_at\":\"2022-03-06T20:46:47.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-27 03:01:12','2022-03-27 03:28:21'),('045fda90-b3c7-4a70-bea0-77ab197466cb','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 10:59:52','2022-03-27 03:28:21'),('14089c4d-e8ee-4b48-a8b9-11b813608c6b','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 11:02:14','2022-03-27 03:28:21'),('16373e69-aa68-4627-aad9-8c6cfee23544','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":123,\"user_id\":1,\"content\":\"sdfsfd sdfsdfsd\",\"created_at\":\"2022-03-10T16:44:46.000000Z\",\"updated_at\":\"2022-03-10T16:44:46.000000Z\",\"title\":null,\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\"}}}','2022-03-11 04:55:19','2022-03-11 04:55:11','2022-03-11 04:55:19'),('229c8225-0d66-4bd3-80fe-d3346a4305ab','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:43','2022-03-27 03:28:39','2022-03-27 03:28:43'),('26299b97-afb8-4f0d-bcf3-c69ce0bdd6eb','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":79,\"user_id\":1,\"content\":\"asd123\",\"created_at\":\"2022-03-08T05:06:46.000000Z\",\"updated_at\":\"2022-03-08T05:06:46.000000Z\",\"title\":\"Sas\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:43:18','2022-03-10 03:42:59','2022-03-10 03:43:18'),('272a7192-3e8f-4eaf-bac4-7259de64e7aa','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":9,\"user_id\":8,\"content\":\"tere post 1\",\"created_at\":\"2022-03-06T20:46:47.000000Z\",\"updated_at\":\"2022-03-06T20:46:47.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 21:21:30','2022-03-27 03:28:21'),('2c9bb407-9e3a-4029-9747-f788d9166cc6','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 22:22:20','2022-03-27 03:28:21'),('2db2edf7-bf56-4607-bc10-316b538c46f2','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":79,\"user_id\":1,\"content\":\"asd123\",\"created_at\":\"2022-03-08T05:06:46.000000Z\",\"updated_at\":\"2022-03-08T05:06:46.000000Z\",\"title\":\"Sas\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:43:18','2022-03-10 03:42:51','2022-03-10 03:43:18'),('2f0332f7-cdf0-468a-838c-eeeb61c629f2','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":80,\"user_id\":1,\"content\":\"asdx\",\"created_at\":\"2022-03-08T05:06:49.000000Z\",\"updated_at\":\"2022-03-08T05:09:12.000000Z\",\"title\":\"xssx\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:42:35','2022-03-10 03:42:19','2022-03-10 03:42:35'),('364de7a8-8a63-4df1-8f1b-8aa27e338271','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":89,\"user_id\":8,\"content\":\"asdad\",\"created_at\":\"2022-03-08T06:08:51.000000Z\",\"updated_at\":\"2022-03-08T06:08:51.000000Z\",\"title\":\"sad\",\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-10 03:57:36','2022-03-10 03:57:30','2022-03-10 03:57:36'),('401261e0-f869-4540-a91d-7ef575c7943c','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 21:13:25','2022-03-27 03:28:21'),('410ad75d-cdd9-4df8-a3af-b58d2e5dd28b','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":28,\"user_id\":8,\"content\":\"tere post 2\",\"created_at\":\"2022-03-06T22:54:20.000000Z\",\"updated_at\":\"2022-03-06T22:54:20.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-10 10:01:49','2022-03-10 10:01:02','2022-03-10 10:01:49'),('4131a722-d944-49e7-a9af-59abca5f3087','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":79,\"user_id\":1,\"content\":\"asd123\",\"created_at\":\"2022-03-08T05:06:46.000000Z\",\"updated_at\":\"2022-03-08T05:06:46.000000Z\",\"title\":\"Sas\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:43:18','2022-03-10 03:43:09','2022-03-10 03:43:18'),('4356e67d-9e9d-4812-a93e-9077c75f672c','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":87,\"user_id\":8,\"content\":\"asd\",\"created_at\":\"2022-03-08T06:00:19.000000Z\",\"updated_at\":\"2022-03-08T06:00:19.000000Z\",\"title\":\"asd\",\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 21:20:51','2022-03-27 03:28:21'),('44805fa9-84ce-4a73-a49a-584b2d166a11','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":123,\"user_id\":1,\"content\":\"sdfsfd sdfsdfsd\",\"created_at\":\"2022-03-10T16:44:46.000000Z\",\"updated_at\":\"2022-03-10T16:44:46.000000Z\",\"title\":null,\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\"}}}','2022-03-11 04:55:07','2022-03-11 04:54:25','2022-03-11 04:55:07'),('4d851ab5-09ca-4fd0-bb1d-5d8ec3544355','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":111,\"user_id\":8,\"content\":\"Tererasd\",\"created_at\":\"2022-03-10T07:02:07.000000Z\",\"updated_at\":\"2022-03-10T07:02:07.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-11 03:50:46','2022-03-27 03:28:21'),('4fc79462-5192-4831-a33f-53417b3609b2','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":78,\"user_id\":1,\"content\":\"<\",\"created_at\":\"2022-03-08T05:06:38.000000Z\",\"updated_at\":\"2022-03-08T05:09:30.000000Z\",\"title\":\"asdasd\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:42:35','2022-03-10 03:42:28','2022-03-10 03:42:35'),('52972eb8-c5d8-4d1f-b863-f6e9bc4581d0','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":111,\"user_id\":8,\"content\":\"Tererasd\",\"created_at\":\"2022-03-10T07:02:07.000000Z\",\"updated_at\":\"2022-03-10T07:02:07.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-27 02:00:20','2022-03-27 03:28:21'),('5d7b685e-94c3-4b34-9fe7-00ba2c2a8a13','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":111,\"user_id\":8,\"content\":\"Tererasd\",\"created_at\":\"2022-03-10T07:02:07.000000Z\",\"updated_at\":\"2022-03-10T07:02:07.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 21:16:43','2022-03-27 03:28:21'),('656dd859-03da-44cf-9dcb-4f3041dc6622','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 21:16:19','2022-03-27 03:28:21'),('666bad46-a1bb-4c49-b030-9512237953a2','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":79,\"user_id\":1,\"content\":\"asd123\",\"created_at\":\"2022-03-08T05:06:46.000000Z\",\"updated_at\":\"2022-03-08T05:06:46.000000Z\",\"title\":\"Sas\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:43:18','2022-03-10 03:43:01','2022-03-10 03:43:18'),('67cb57ee-0ad4-4dfa-9b89-2554f9adb775','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":28,\"user_id\":8,\"content\":\"tere post 2\",\"created_at\":\"2022-03-06T22:54:20.000000Z\",\"updated_at\":\"2022-03-06T22:54:20.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 21:41:11','2022-03-27 03:28:21'),('6909c7d4-dea3-4634-b619-b32b627a0d44','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-27 03:23:36','2022-03-27 03:28:21'),('876e2539-dd69-4d8e-bd0d-69c567893a50','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-27 03:25:42','2022-03-27 03:28:21'),('87975bff-0589-495c-9d25-95b74dfb2aa8','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-10 10:03:01','2022-03-10 10:02:55','2022-03-10 10:03:01'),('9a908ac6-8160-42c0-bacb-ed01d671a4c4','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 22:22:13','2022-03-27 03:28:21'),('9e1b4a23-1e71-4b0d-93c2-98d9867bfc88','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":111,\"user_id\":8,\"content\":\"Tererasd\",\"created_at\":\"2022-03-10T07:02:07.000000Z\",\"updated_at\":\"2022-03-10T07:02:07.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 21:20:40','2022-03-27 03:28:21'),('a817f3aa-f8f5-49b1-9bef-1f1e9f5801f1','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":111,\"user_id\":8,\"content\":\"Tererasd\",\"created_at\":\"2022-03-10T07:02:07.000000Z\",\"updated_at\":\"2022-03-10T07:02:07.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 21:17:25','2022-03-27 03:28:21'),('a9248a26-b791-40a4-b829-f593f9d2cfe6','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-27 03:24:08','2022-03-27 03:28:21'),('adc00e71-408a-4757-b64e-45ca2bc8218b','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-27 03:24:11','2022-03-27 03:28:21'),('aeecbd1d-b333-4c33-8bf7-eb8e9c15359d','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":79,\"user_id\":1,\"content\":\"asd123\",\"created_at\":\"2022-03-08T05:06:46.000000Z\",\"updated_at\":\"2022-03-08T05:06:46.000000Z\",\"title\":\"Sas\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:43:18','2022-03-10 03:42:53','2022-03-10 03:43:18'),('b5dabb42-f7aa-487b-9f0c-e99ddb9b766d','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 22:23:36','2022-03-27 03:28:21'),('b6875b87-a05d-428d-993b-2f0d1b13d48a','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":79,\"user_id\":1,\"content\":\"asd123\",\"created_at\":\"2022-03-08T05:06:46.000000Z\",\"updated_at\":\"2022-03-08T05:06:46.000000Z\",\"title\":\"Sas\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:42:35','2022-03-10 03:42:16','2022-03-10 03:42:35'),('b828934a-d7f8-4854-a855-5dacd7345674','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":111,\"user_id\":8,\"content\":\"Tererasd\",\"created_at\":\"2022-03-10T07:02:07.000000Z\",\"updated_at\":\"2022-03-10T07:02:07.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-10 10:02:40','2022-03-10 10:02:37','2022-03-10 10:02:40'),('bad45abe-aead-4265-b178-24d33e2da437','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":111,\"user_id\":8,\"content\":\"Tererasd\",\"created_at\":\"2022-03-10T07:02:07.000000Z\",\"updated_at\":\"2022-03-10T07:02:07.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 21:20:36','2022-03-27 03:28:21'),('bcffb10d-7dc6-415f-b686-2beb9c339718','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":79,\"user_id\":1,\"content\":\"asd123\",\"created_at\":\"2022-03-08T05:06:46.000000Z\",\"updated_at\":\"2022-03-08T05:06:46.000000Z\",\"title\":\"Sas\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:43:18','2022-03-10 03:42:56','2022-03-10 03:43:18'),('bef6935e-62d8-4c1f-bfdf-4541c0a34c76','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":111,\"user_id\":8,\"content\":\"Tererasd\",\"created_at\":\"2022-03-10T07:02:07.000000Z\",\"updated_at\":\"2022-03-10T07:02:07.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-27 03:18:51','2022-03-27 03:28:21'),('c1f21952-aa64-42a4-9cba-2f9b6f3bc878','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":88,\"user_id\":8,\"content\":\"asd\",\"created_at\":\"2022-03-08T06:07:11.000000Z\",\"updated_at\":\"2022-03-08T06:07:11.000000Z\",\"title\":\"asd\",\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-27 03:22:57','2022-03-27 03:28:21'),('c2673098-f905-4c81-b2ab-61b5604baee3','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":111,\"user_id\":8,\"content\":\"Tererasd\",\"created_at\":\"2022-03-10T07:02:07.000000Z\",\"updated_at\":\"2022-03-10T07:02:07.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 21:16:40','2022-03-27 03:28:21'),('c823af51-efdc-4cd3-b0f3-c5e19876061f','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-11 03:52:20','2022-03-27 03:28:21'),('caa4cec3-1348-418d-969b-8b1035cd2fee','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":79,\"user_id\":1,\"content\":\"asd123\",\"created_at\":\"2022-03-08T05:06:46.000000Z\",\"updated_at\":\"2022-03-08T05:06:46.000000Z\",\"title\":\"Sas\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:43:18','2022-03-10 03:43:07','2022-03-10 03:43:18'),('cd8ebd25-fa27-441e-9aa8-b92bb8653be0','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-27 03:23:49','2022-03-27 03:28:21'),('cda6820b-ff30-4b38-90b1-b971f1f18609','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":111,\"user_id\":8,\"content\":\"Tererasd\",\"created_at\":\"2022-03-10T07:02:07.000000Z\",\"updated_at\":\"2022-03-10T07:02:07.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 21:17:23','2022-03-27 03:28:21'),('d8c54b58-96b1-442a-a1ea-aa529765ff1a','App\\Notifications\\LikedPostNotification','App\\Models\\User',11,'{\"user\":{\"id\":10,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-27T02:08:13.000000Z\",\"updated_at\":\"2022-03-27T02:08:13.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=G&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":133,\"user_id\":11,\"content\":\"sdsdf\",\"created_at\":\"2022-03-27T02:21:18.000000Z\",\"updated_at\":\"2022-03-27T02:21:18.000000Z\",\"title\":null,\"user\":{\"id\":11,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-27T02:13:23.000000Z\",\"updated_at\":\"2022-03-27T02:13:23.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 05:23:01','2022-03-27 05:21:42','2022-03-27 05:23:01'),('dc3369d5-da1b-429b-b667-e637c581fa62','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":122,\"user_id\":1,\"content\":\"asdasda   https:\\/\\/www.infobae.com\\/ sasdasdasd\",\"created_at\":\"2022-03-10T15:50:07.000000Z\",\"updated_at\":\"2022-03-10T15:50:07.000000Z\",\"title\":null,\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\"}}}','2022-03-11 04:55:07','2022-03-11 04:54:32','2022-03-11 04:55:07'),('dd1bb765-d28b-4a30-9171-f5429350dc17','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":122,\"user_id\":1,\"content\":\"asdasda   https:\\/\\/www.infobae.com\\/ sasdasdasd\",\"created_at\":\"2022-03-10T15:50:07.000000Z\",\"updated_at\":\"2022-03-10T15:50:07.000000Z\",\"title\":null,\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\"}}}','2022-03-11 04:55:07','2022-03-11 04:54:39','2022-03-11 04:55:07'),('e0c1367d-5023-46dd-bc59-0637d56b54d7','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-27 03:23:46','2022-03-27 03:28:21'),('e15b05df-059e-40b9-8553-78d000aef4a7','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 10:59:48','2022-03-27 03:28:21'),('e6c80d66-febb-42d0-8b34-f511cf96f609','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-27 03:23:44','2022-03-27 03:28:21'),('ef4fe4a1-f3c5-48ed-b1cc-2f1f52f21c97','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":111,\"user_id\":8,\"content\":\"Tererasd\",\"created_at\":\"2022-03-10T07:02:07.000000Z\",\"updated_at\":\"2022-03-10T07:02:07.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 21:16:12','2022-03-27 03:28:21'),('f0705d0c-bb01-4a97-9c54-cefd3f88290c','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":81,\"user_id\":1,\"content\":\"Blah blah realizamos tu bllah en tal blah y con blah de ante blah\",\"created_at\":\"2022-03-08T05:19:32.000000Z\",\"updated_at\":\"2022-03-08T05:19:32.000000Z\",\"title\":\"Bocha es un pene\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:42:35','2022-03-10 03:42:25','2022-03-10 03:42:35'),('f1425515-a3fc-499f-94e0-b1b66c027336','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":88,\"user_id\":8,\"content\":\"asd\",\"created_at\":\"2022-03-08T06:07:11.000000Z\",\"updated_at\":\"2022-03-08T06:07:11.000000Z\",\"title\":\"asd\",\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-27 03:23:02','2022-03-27 03:28:21'),('f4432f75-9739-49c1-9257-1b2b711dc4fb','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":112,\"user_id\":8,\"content\":\"Tere 2\",\"created_at\":\"2022-03-10T07:02:49.000000Z\",\"updated_at\":\"2022-03-10T07:02:49.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-27 03:28:21','2022-03-10 22:22:17','2022-03-27 03:28:21'),('f8295263-4e37-429d-91f7-f1a201b47e58','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":79,\"user_id\":1,\"content\":\"asd123\",\"created_at\":\"2022-03-08T05:06:46.000000Z\",\"updated_at\":\"2022-03-08T05:06:46.000000Z\",\"title\":\"Sas\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:42:35','2022-03-10 03:42:21','2022-03-10 03:42:35'),('f97559ba-854b-4f32-bb60-a52f7c8df9ad','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":80,\"user_id\":1,\"content\":\"asdx\",\"created_at\":\"2022-03-08T05:06:49.000000Z\",\"updated_at\":\"2022-03-08T05:09:12.000000Z\",\"title\":\"xssx\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:42:35','2022-03-10 03:42:13','2022-03-10 03:42:35'),('fb4b7dbd-89ad-44fe-a9db-9becd8746a44','App\\Notifications\\LikedPostNotification','App\\Models\\User',8,'{\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-10T02:54:32.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/Yqm5pVgtV0HoMkYLCrtekwozXUK78fnr83MhGWSr.jpg\",\"roles\":[{\"id\":1,\"name\":\"admin\",\"guard_name\":\"web\",\"created_at\":\"2022-03-06T17:10:39.000000Z\",\"updated_at\":\"2022-03-06T17:10:39.000000Z\",\"pivot\":{\"model_id\":1,\"role_id\":1,\"model_type\":\"App\\\\Models\\\\User\"}}]},\"post\":{\"id\":111,\"user_id\":8,\"content\":\"Tererasd\",\"created_at\":\"2022-03-10T07:02:07.000000Z\",\"updated_at\":\"2022-03-10T07:02:07.000000Z\",\"title\":null,\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\"}}}','2022-03-10 10:02:40','2022-03-10 10:02:16','2022-03-10 10:02:40'),('fe4f7e72-041b-45c4-8a7c-49d317fc829c','App\\Notifications\\LikedPostNotification','App\\Models\\User',1,'{\"user\":{\"id\":8,\"name\":\"tere\",\"email\":\"tere@tere.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-03-06T18:58:27.000000Z\",\"updated_at\":\"2022-03-06T18:58:27.000000Z\",\"username\":\"tere\",\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=t&color=7F9CF5&background=EBF4FF\",\"roles\":[]},\"post\":{\"id\":79,\"user_id\":1,\"content\":\"asd123\",\"created_at\":\"2022-03-08T05:06:46.000000Z\",\"updated_at\":\"2022-03-08T05:06:46.000000Z\",\"title\":\"Sas\",\"user\":{\"id\":1,\"name\":\"Guido\",\"email\":\"guidoaimar@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":\"profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\",\"created_at\":\"2022-02-27T23:43:45.000000Z\",\"updated_at\":\"2022-03-02T07:29:01.000000Z\",\"username\":\"ayguid\",\"profile_photo_url\":\"\\/storage\\/profile-photos\\/fqPziv3XMQhUoNBMByCKNdQo7tyNQc70MHmzxA0Y.jpg\"}}}','2022-03-10 03:43:18','2022-03-10 03:43:11','2022-03-10 03:43:18');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (144,11,'TERE 1','2022-03-27 06:29:15','2022-03-27 06:29:15',NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','web','2022-03-06 20:10:39','2022-03-06 20:10:39');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('hFnTrGQdqtHbkriYUkn24exJWGUddoYwxxQkx9BC',10,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:98.0) Gecko/20100101 Firefox/98.0','YTo2OntzOjY6Il90b2tlbiI7czo0MDoicTZ3c3pHTFd2OEhZMXFJeWVpM1lnb0NFUXd3cTRFOXFiT1pPdXhtciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTA7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRaTmcubDFzcWIvVno4S3pjWnBLcTguTkRqR3M3eGw0WGg5ZThXRTdtaVFyRDBBVDVvOFNaUyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkWk5nLmwxc3FiL1Z6OEt6Y1pwS3E4Lk5EakdzN3hsNFhoOWU4V0U3bWlRckQwQVQ1bzhTWlMiO30=',1648349328),('Ipoorwmjy1IXvAGX3fzd38KwEzZ5niMZDVsZLwdF',11,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:98.0) Gecko/20100101 Firefox/98.0','YTo2OntzOjY6Il90b2tlbiI7czo0MDoia0t0Z3hzaGdUQTQ2SklTZmtFUFJFbWFQUlg1OVd6VmxrUU9KU1BZNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9heWd1aWQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJE5yOGxXdHRzTVJWVEM4YlhYZlVkTGVMbnc3TnU4U2dYSWdFTEV0eUozaExTb3h4b1VDSHoyIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCROcjhsV3R0c01SVlRDOGJYWGZVZExlTG53N051OFNnWElnRUxFdHlKM2hMU294eG9VQ0h6MiI7fQ==',1648351763);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'Guido','guidoaimar@gmail.com',NULL,'$2y$10$ZNg.l1sqb/Vz8KzcZpKq8.NDjGs7xl4Xh9e8WE7miQrD0AT5o8SZS',NULL,NULL,NULL,NULL,NULL,'2022-03-27 05:08:13','2022-03-27 05:08:13','ayguid'),(11,'tere','tere@tere.com',NULL,'$2y$10$Nr8lWttsMRVTC8bXXfUdLeLnw7Nu8SgXIgELEtyJ3hLSoxxoUCHz2',NULL,NULL,NULL,NULL,NULL,'2022-03-27 05:13:23','2022-03-27 05:13:23','tere');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-07 16:44:26
