-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: nutriendo
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.1

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
-- Table structure for table `escuelas`
--

DROP TABLE IF EXISTS `escuelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escuelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localidad_id` int(11) DEFAULT NULL,
  `nivel_id` int(11) DEFAULT NULL,
  `jornada_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escuelas`
--

LOCK TABLES `escuelas` WRITE;
/*!40000 ALTER TABLE `escuelas` DISABLE KEYS */;
INSERT INTO `escuelas` VALUES (6,733,'Bryn Gwyn',3,2,2,'2013-04-17 14:11:51','2013-05-06 14:38:40');
/*!40000 ALTER TABLE `escuelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_equipamientos`
--

DROP TABLE IF EXISTS `inventario_equipamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario_equipamientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `escuela_id` int(11) DEFAULT NULL,
  `ultima_modificacion` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_equipamientos`
--

LOCK TABLES `inventario_equipamientos` WRITE;
/*!40000 ALTER TABLE `inventario_equipamientos` DISABLE KEYS */;
INSERT INTO `inventario_equipamientos` VALUES (5,6,'2013-04-17','2013-04-17 14:11:51','2013-04-17 14:11:51');
/*!40000 ALTER TABLE `inventario_equipamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_menajes`
--

DROP TABLE IF EXISTS `inventario_menajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario_menajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `escuela_id` int(11) DEFAULT NULL,
  `ultima_modificacion` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_menajes`
--

LOCK TABLES `inventario_menajes` WRITE;
/*!40000 ALTER TABLE `inventario_menajes` DISABLE KEYS */;
INSERT INTO `inventario_menajes` VALUES (3,6,'2013-04-17','2013-04-17 14:11:51','2013-04-17 14:11:51');
/*!40000 ALTER TABLE `inventario_menajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jornadas`
--

DROP TABLE IF EXISTS `jornadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jornadas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornadas`
--

LOCK TABLES `jornadas` WRITE;
/*!40000 ALTER TABLE `jornadas` DISABLE KEYS */;
INSERT INTO `jornadas` VALUES (1,'MEDIA','2013-04-16 15:27:26','2013-04-16 15:27:26'),(2,'COMPLETA','2013-04-16 15:27:32','2013-04-16 15:27:32');
/*!40000 ALTER TABLE `jornadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidads`
--

DROP TABLE IF EXISTS `localidads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localidads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidads`
--

LOCK TABLES `localidads` WRITE;
/*!40000 ALTER TABLE `localidads` DISABLE KEYS */;
INSERT INTO `localidads` VALUES (1,'Trelew',4,'2013-04-16 13:24:51','2013-04-16 13:24:51'),(2,'Rawson',4,'2013-04-16 13:38:03','2013-04-16 13:38:03'),(3,'Gaiman',4,'2013-04-16 15:30:00','2013-04-16 15:30:00');
/*!40000 ALTER TABLE `localidads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivels`
--

DROP TABLE IF EXISTS `nivels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivels`
--

LOCK TABLES `nivels` WRITE;
/*!40000 ALTER TABLE `nivels` DISABLE KEYS */;
INSERT INTO `nivels` VALUES (1,'PRIMARIO','2013-04-16 15:28:00','2013-04-16 15:28:00'),(2,'SECUNDARIO','2013-04-16 15:28:05','2013-04-16 15:28:05');
/*!40000 ALTER TABLE `nivels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Región I','2013-04-16 13:17:40','2013-04-16 13:17:40'),(2,'Región II','2013-04-16 13:17:51','2013-04-16 13:17:51'),(3,'Región III','2013-04-16 13:17:54','2013-04-16 13:17:54'),(4,'Región IV','2013-04-16 13:17:58','2013-04-16 13:17:58'),(5,'Región V','2013-04-16 13:18:01','2013-04-16 13:18:01'),(6,'Región VI','2013-04-16 13:18:05','2013-04-16 13:18:05');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renglon_inventario_equipamientos`
--

DROP TABLE IF EXISTS `renglon_inventario_equipamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renglon_inventario_equipamientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_de_alta` date DEFAULT NULL,
  `cantidad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `inventario_equipamiento_id` int(11) DEFAULT NULL,
  `tipo_de_equipamiento_id` int(11) DEFAULT NULL,
  `quien_modifica` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renglon_inventario_equipamientos`
--

LOCK TABLES `renglon_inventario_equipamientos` WRITE;
/*!40000 ALTER TABLE `renglon_inventario_equipamientos` DISABLE KEYS */;
INSERT INTO `renglon_inventario_equipamientos` VALUES (1,NULL,'12',1,5,1,NULL,'2013-05-06 13:07:16','2013-05-06 13:07:16');
/*!40000 ALTER TABLE `renglon_inventario_equipamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renglon_inventario_menajes`
--

DROP TABLE IF EXISTS `renglon_inventario_menajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renglon_inventario_menajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `quien_modifica` int(11) DEFAULT NULL,
  `tipo_de_menaje_id` int(11) DEFAULT NULL,
  `fecha_de_alta` date DEFAULT NULL,
  `inventario_menaje_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renglon_inventario_menajes`
--

LOCK TABLES `renglon_inventario_menajes` WRITE;
/*!40000 ALTER TABLE `renglon_inventario_menajes` DISABLE KEYS */;
INSERT INTO `renglon_inventario_menajes` VALUES (1,NULL,NULL,1,NULL,3,'2013-05-06 13:06:44','2013-05-06 13:06:44',20),(2,NULL,NULL,1,NULL,3,'2013-05-07 11:58:11','2013-05-07 11:58:11',11);
/*!40000 ALTER TABLE `renglon_inventario_menajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `regulator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conduct` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_roles`
--

DROP TABLE IF EXISTS `role_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_roles`
--

LOCK TABLES `role_roles` WRITE;
/*!40000 ALTER TABLE `role_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','2013-04-16 12:21:57','2013-04-16 12:21:57'),(2,'nutriendo','2013-05-06 13:23:18','2013-05-06 13:23:18'),(4,'delegado','2013-05-08 16:00:59','2013-05-08 16:00:59'),(5,'subsecretario','2013-05-09 13:20:41','2013-05-09 13:20:41'),(7,'bienes','2013-05-09 13:22:22','2013-05-09 13:22:22');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120201182115'),('20120224180650'),('20120224181028'),('20120302182538'),('20120410182942'),('20130416113817'),('20130416113845'),('20130416113900'),('20130416114406'),('20130416114517'),('20130416114632'),('20130416114702'),('20130416115133'),('20130416115215'),('20130416115320'),('20130416115336'),('20130417122201'),('20130417122227'),('20130417122407'),('20130417122428'),('20130503134333'),('20130503141700');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_equipamientos`
--

DROP TABLE IF EXISTS `tipo_de_equipamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_de_equipamientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_equipamientos`
--

LOCK TABLES `tipo_de_equipamientos` WRITE;
/*!40000 ALTER TABLE `tipo_de_equipamientos` DISABLE KEYS */;
INSERT INTO `tipo_de_equipamientos` VALUES (1,'Equipamiento 1','','2013-05-06 13:06:26','2013-05-06 13:06:26');
/*!40000 ALTER TABLE `tipo_de_equipamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_menajes`
--

DROP TABLE IF EXISTS `tipo_de_menajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_de_menajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_menajes`
--

LOCK TABLES `tipo_de_menajes` WRITE;
/*!40000 ALTER TABLE `tipo_de_menajes` DISABLE KEYS */;
INSERT INTO `tipo_de_menajes` VALUES (1,'Menaje 1','','2013-05-06 13:06:14','2013-05-06 13:06:14');
/*!40000 ALTER TABLE `tipo_de_menajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1,1,'2013-05-06 11:11:55','2013-05-06 11:11:55'),(2,2,2,'2013-05-06 13:41:30','2013-05-06 13:41:30'),(3,3,3,'2013-05-08 15:26:04','2013-05-08 15:26:04'),(4,3,4,'2013-05-08 16:01:16','2013-05-08 16:01:16'),(5,4,6,'2013-05-09 13:21:18','2013-05-09 13:21:18'),(6,4,7,'2013-05-09 13:22:43','2013-05-09 13:22:43');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'pelly87@hotmail.com','$2a$10$pfT1YweUT8UMIAkZaUrm6et3jxc.deS2L2cvRVGdAGvp/s6DBxR9y',NULL,NULL,NULL,16,'2013-05-09 11:54:43','2013-05-08 15:39:05','127.0.0.1','127.0.0.1','2013-04-16 12:21:33','2013-05-09 11:54:43'),(2,'nutriendo@gmail.com','$2a$10$.qfYnkJ7agEllxlp7ZGAp.YGNr7OxII3N1ZS3Vnal.gS68nSjwT7C',NULL,NULL,NULL,5,'2013-05-08 16:29:41','2013-05-08 15:37:15','127.0.0.1','127.0.0.1','2013-05-06 13:41:30','2013-05-08 16:29:41'),(3,'delegado@gmail.com','$2a$10$eVlNBQP9nFanFRaZPWMgue42cbk3AJ0QCmY1g1fHctmIQo8xMgCHe',NULL,NULL,NULL,9,'2013-05-09 11:55:14','2013-05-08 16:01:45','127.0.0.1','127.0.0.1','2013-05-08 15:26:04','2013-05-09 11:55:14'),(4,'bienes@gmail.com','$2a$10$KTwdtghvm5CpetkB0sWE7uG3rRtYt2sXoGkHU42SfWBETC7WfiC2O',NULL,NULL,NULL,2,'2013-05-09 13:22:51','2013-05-09 13:21:38','127.0.0.1','127.0.0.1','2013-05-09 13:21:18','2013-05-09 13:22:51');
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

-- Dump completed on 2013-05-09 11:57:53
