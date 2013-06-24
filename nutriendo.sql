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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escuelas`
--

LOCK TABLES `escuelas` WRITE;
/*!40000 ALTER TABLE `escuelas` DISABLE KEYS */;
INSERT INTO `escuelas` VALUES (1,733,'Agrotécnica Benito Owen',4,2,1,'2013-04-18 15:36:03','2013-04-18 15:36:03'),(2,793,'Amaya',1,2,2,'2013-05-03 15:24:36','2013-05-06 13:11:16');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_equipamientos`
--

LOCK TABLES `inventario_equipamientos` WRITE;
/*!40000 ALTER TABLE `inventario_equipamientos` DISABLE KEYS */;
INSERT INTO `inventario_equipamientos` VALUES (1,1,'2013-04-18','2013-04-18 15:36:03','2013-04-18 15:36:03'),(2,2,'2013-05-03','2013-05-03 15:24:36','2013-05-03 15:24:36');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_menajes`
--

LOCK TABLES `inventario_menajes` WRITE;
/*!40000 ALTER TABLE `inventario_menajes` DISABLE KEYS */;
INSERT INTO `inventario_menajes` VALUES (1,1,'2013-04-18','2013-04-18 15:36:03','2013-04-18 15:36:03'),(2,2,'2013-05-03','2013-05-03 15:24:36','2013-05-03 15:24:36');
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
INSERT INTO `jornadas` VALUES (1,'COMPLETA','2013-04-18 15:35:06','2013-04-18 15:35:06'),(2,'MEDIA JORNADA','2013-04-18 15:35:13','2013-04-18 15:35:13');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidads`
--

LOCK TABLES `localidads` WRITE;
/*!40000 ALTER TABLE `localidads` DISABLE KEYS */;
INSERT INTO `localidads` VALUES (1,'Trelew',4,'2013-04-18 15:33:08','2013-04-18 15:33:08'),(2,'Puerto Madryn',2,'2013-04-18 15:33:23','2013-04-18 15:33:23'),(3,'Gaiman',4,'2013-04-18 15:33:33','2013-04-18 15:33:33'),(4,'Bryn Gwyn',4,'2013-04-18 15:33:41','2013-04-18 15:33:41'),(5,'Sarminento',5,'2013-04-18 15:33:56','2013-04-18 15:33:56'),(6,'Comodoro Rivadavia',6,'2013-04-18 15:34:09','2013-04-18 15:34:09'),(7,'Esquel',3,'2013-04-18 15:34:20','2013-04-18 15:34:20'),(8,'Lago Puelo',1,'2013-04-18 15:34:29','2013-04-18 15:34:29'),(9,'Las Golondrinas',1,'2013-04-18 15:34:40','2013-04-18 15:34:40');
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
INSERT INTO `nivels` VALUES (1,'PRIMARIO','2013-04-18 15:31:48','2013-04-18 15:31:48'),(2,'SECUNDARIO','2013-04-18 15:31:55','2013-04-18 15:31:55');
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
INSERT INTO `regions` VALUES (1,'Región I','2013-04-18 15:32:16','2013-04-18 15:32:16'),(2,'Región II','2013-04-18 15:32:18','2013-04-18 15:32:18'),(3,'Región III','2013-04-18 15:32:22','2013-04-18 15:32:22'),(4,'Región IV','2013-04-18 15:32:24','2013-04-18 15:32:24'),(5,'Región V','2013-04-18 15:32:27','2013-04-18 15:32:27'),(6,'Región VI','2013-04-18 15:32:30','2013-04-18 15:32:30');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renglon_inventario_equipamientos`
--

LOCK TABLES `renglon_inventario_equipamientos` WRITE;
/*!40000 ALTER TABLE `renglon_inventario_equipamientos` DISABLE KEYS */;
INSERT INTO `renglon_inventario_equipamientos` VALUES (32,NULL,'2',1,1,3,NULL,'2013-05-03 11:50:58','2013-05-03 11:50:58'),(33,NULL,'3',1,1,4,NULL,'2013-05-03 11:51:07','2013-05-03 11:51:07'),(34,NULL,'3',1,1,5,NULL,'2013-05-03 11:51:17','2013-05-03 11:51:17'),(35,NULL,'2',1,1,6,NULL,'2013-05-03 11:51:27','2013-05-03 11:51:27'),(36,NULL,'2',1,1,7,NULL,'2013-05-03 11:51:36','2013-05-03 11:51:36'),(37,NULL,'2',1,1,8,NULL,'2013-05-03 11:51:44','2013-05-03 11:51:44'),(38,NULL,'1',1,2,1,NULL,'2013-05-03 15:26:32','2013-05-03 15:26:32'),(39,NULL,'1',1,2,2,NULL,'2013-05-03 15:26:37','2013-05-03 15:26:37'),(40,NULL,'2',1,2,3,NULL,'2013-05-03 15:26:46','2013-05-03 15:26:46'),(41,NULL,'2',1,2,4,NULL,'2013-05-03 15:26:54','2013-05-03 15:26:54'),(42,NULL,'2',1,2,5,NULL,'2013-05-03 15:27:00','2013-05-03 15:27:00'),(43,NULL,'1',1,2,6,NULL,'2013-05-03 15:27:06','2013-05-03 15:27:06'),(44,NULL,'1',1,2,7,NULL,'2013-05-03 15:27:16','2013-05-03 15:27:16'),(45,NULL,'1',1,2,8,NULL,'2013-05-03 15:27:23','2013-05-03 15:27:23'),(46,NULL,'1',1,1,4,NULL,'2013-05-06 11:19:59','2013-05-06 11:19:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renglon_inventario_menajes`
--

LOCK TABLES `renglon_inventario_menajes` WRITE;
/*!40000 ALTER TABLE `renglon_inventario_menajes` DISABLE KEYS */;
INSERT INTO `renglon_inventario_menajes` VALUES (7,NULL,NULL,1,NULL,1,'2013-05-03 14:35:33','2013-05-03 14:57:29',12),(9,NULL,NULL,18,NULL,1,'2013-05-03 14:35:46','2013-05-03 14:57:22',12),(10,NULL,NULL,22,NULL,1,'2013-05-03 14:57:17','2013-05-06 11:14:28',3),(11,NULL,NULL,17,NULL,1,'2013-05-03 14:57:36','2013-05-03 14:57:36',6),(12,NULL,NULL,13,NULL,1,'2013-05-03 15:07:07','2013-05-03 15:07:07',12),(13,NULL,NULL,1,NULL,2,'2013-05-03 15:24:47','2013-05-03 15:24:47',20),(14,NULL,NULL,2,NULL,2,'2013-05-03 15:25:02','2013-05-03 15:25:02',20),(15,NULL,NULL,3,NULL,2,'2013-05-03 15:25:16','2013-05-03 15:25:16',20),(16,NULL,NULL,4,NULL,2,'2013-05-03 15:25:25','2013-05-03 15:25:25',20),(17,NULL,NULL,13,NULL,2,'2013-05-03 15:25:46','2013-05-03 15:25:46',20),(18,NULL,NULL,15,NULL,2,'2013-05-03 15:25:57','2013-05-03 15:25:57',20),(19,NULL,NULL,17,NULL,2,'2013-05-03 15:26:12','2013-05-03 15:26:12',20),(20,NULL,NULL,21,NULL,2,'2013-05-03 15:26:24','2013-05-03 15:26:24',2),(21,NULL,NULL,19,NULL,1,'2013-05-06 11:14:45','2013-05-06 11:14:45',5),(22,NULL,NULL,3,NULL,2,'2013-05-06 11:40:10','2013-05-06 11:40:10',20);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','2013-04-18 15:36:53','2013-04-18 15:36:53'),(2,'nutriendo','2013-06-24 12:09:41','2013-06-24 12:09:41'),(3,'delegado','2013-06-24 12:09:53','2013-06-24 12:09:53'),(4,'bienes','2013-06-24 12:10:03','2013-06-24 12:10:03'),(5,'compras','2013-06-24 12:10:14','2013-06-24 12:10:14'),(6,'subsecretario','2013-06-24 12:10:24','2013-06-24 12:10:24');
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
INSERT INTO `schema_migrations` VALUES ('20120201182115'),('20120224180650'),('20120224181028'),('20120302182538'),('20120410182942'),('20130416113817'),('20130416113845'),('20130416113900'),('20130416114406'),('20130416114517'),('20130416115320'),('20130416115336'),('20130417122201'),('20130417122227'),('20130417122407'),('20130417122428'),('20130503134333'),('20130503141700');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_equipamientos`
--

LOCK TABLES `tipo_de_equipamientos` WRITE;
/*!40000 ALTER TABLE `tipo_de_equipamientos` DISABLE KEYS */;
INSERT INTO `tipo_de_equipamientos` VALUES (1,'Heladera   c/freezer ','no cargada','2013-04-18 15:54:03','2013-04-18 15:54:03'),(2,'Freezer, capacidad 250 litros','no cargada','2013-04-18 15:54:03','2013-04-18 15:54:03'),(3,'Procesadora  de alimentos Industrial','no cargada','2013-04-18 15:54:03','2013-04-18 15:54:03'),(4,'Procesadora familiar','no cargada','2013-04-18 15:54:03','2013-04-18 15:54:03'),(5,'Licuadora familiar','no cargada','2013-04-18 15:54:03','2013-04-18 15:54:03'),(6,'Cocina Industrial ','no cargada','2013-04-18 15:54:04','2013-04-18 15:54:04'),(7,'Picadora de carne','no cargada','2013-04-18 15:54:04','2013-04-18 15:54:04'),(8,'Amasadora','no cargada','2013-04-18 15:54:05','2013-04-18 15:54:05');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_menajes`
--

LOCK TABLES `tipo_de_menajes` WRITE;
/*!40000 ALTER TABLE `tipo_de_menajes` DISABLE KEYS */;
INSERT INTO `tipo_de_menajes` VALUES (1,'Cuchillo','no cargada','2013-04-18 15:52:44','2013-04-18 15:52:44'),(2,'Tenedor','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(3,'Cuchara','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(4,'Cucharita','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(5,'Cuchillo p/ pan','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(6,'Cuchillo p/ carne','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(7,'Cuchara de madera grande','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(8,'Taza tipo jarro de vidrio o cerámica','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(9,'Taza de plástico','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(10,'Jarra plástica','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(11,'Vaso de vidrio','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(12,'Vaso de plástico','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(13,'Plato hondo de vidrio','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(14,'Plato hondo de plástico','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(15,'Plato playo de vidrio','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(16,'Plato playo de plástico','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(17,'Plato postre de vidrio','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(18,'Plato postre de plástico','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(19,'Cucharón','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(20,'Espumadera','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(21,'Olla  Nº 40','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(22,'Olla  Nº 28 ','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(23,'Colapasta N° 40 ','no cargada','2013-04-18 15:52:45','2013-04-18 15:52:45'),(24,'Asadera rectangulares  p / horno','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(25,'Pava N° 18  ','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(26,'Pava N° 22 ','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(27,'Compoteras de vidrio ','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(28,'Compotera de plástico','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(29,'Tabla para picar verdura  o carne ','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(30,'Ensaladera  plástica','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(31,'Panera plástica  22 cm ','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(32,'Bowl hermético rectangular  x 1,10 litros ','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(33,'Bowl hermético rectangular x 5 litros ','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(34,'Palo de amasar','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(35,'Destapador','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(36,'Abrelata','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(37,'Pelapapa','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(38,'Rallador ','no cargada','2013-04-18 15:52:46','2013-04-18 15:52:46'),(39,'Colador de alambre  grande','no cargada','2013-04-18 15:52:47','2013-04-18 15:52:47');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1,1,'2013-04-18 15:37:20','2013-04-18 15:37:20'),(2,3,1,'2013-06-24 12:07:47','2013-06-24 12:07:47');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'juan.ca.rom@gmail.com','$2a$10$AXOaPYfGIiAkKdC2v5ZsnOwnnNOECxSNlTmiiPhVu6HAfc97A6gKK',NULL,NULL,NULL,5,'2013-06-24 12:07:29','2013-05-02 15:34:38','127.0.0.1','127.0.0.1','2013-04-18 15:37:20','2013-06-24 12:07:29'),(2,'prueba@gmail.com','$2a$10$5AKVJM.TXWfb19xrpOLAPOXyqgZ3Ay7jPc96VUGDL0GfF5xkFYJd.',NULL,NULL,NULL,1,'2013-06-24 12:02:44','2013-06-24 12:02:44','127.0.0.1','127.0.0.1','2013-06-24 12:02:44','2013-06-24 12:02:44'),(3,'pelly87@hotmail.com','$2a$10$PHy7UyPvgKlOiBuCVhM.HunYTmXUF5gUUpplRG0AEHVO/Su/yYtFm',NULL,NULL,NULL,2,'2013-06-24 12:07:56','2013-06-24 12:05:33','127.0.0.1','127.0.0.1','2013-06-24 12:05:33','2013-06-24 12:07:56');
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

-- Dump completed on 2013-06-24  9:12:44
