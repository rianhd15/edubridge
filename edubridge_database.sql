-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: edubridge
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.20.04.1

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
-- Table structure for table `mdl_adminpresets`
--

DROP TABLE IF EXISTS `mdl_adminpresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `comments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `moodleversion` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `moodlerelease` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `iscore` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timeimported` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Table to store presets data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets`
--

LOCK TABLES `mdl_adminpresets` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets` DISABLE KEYS */;
INSERT INTO `mdl_adminpresets` VALUES (1,0,'Starter','Moodle with all of the most popular features, including Assignment, Feedback, Forum, H5P, Quiz and Completion tracking.','https://edubridge.teknix.my.id','','','',1,1702489180,0),(2,0,'Full','All the Starter features plus External (LTI) tool, SCORM, Workshop, Analytics, Badges, Competencies, Learning plans and lots more.','https://edubridge.teknix.my.id','','','',2,1702489180,0);
/*!40000 ALTER TABLE `mdl_adminpresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_app`
--

DROP TABLE IF EXISTS `mdl_adminpresets_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_app` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adminpresetid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `time` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_admiapp_adm_ix` (`adminpresetid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Applied presets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_app`
--

LOCK TABLES `mdl_adminpresets_app` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_adminpresets_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_app_it`
--

DROP TABLE IF EXISTS `mdl_adminpresets_app_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_app_it` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adminpresetapplyid` bigint NOT NULL,
  `configlogid` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_admiappit_con_ix` (`configlogid`),
  KEY `mdl_admiappit_adm_ix` (`adminpresetapplyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Admin presets applied items. To maintain the relation with c';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_app_it`
--

LOCK TABLES `mdl_adminpresets_app_it` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_app_it` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_adminpresets_app_it` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_app_it_a`
--

DROP TABLE IF EXISTS `mdl_adminpresets_app_it_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_app_it_a` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adminpresetapplyid` bigint NOT NULL,
  `configlogid` bigint NOT NULL,
  `itemname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_admiappita_con_ix` (`configlogid`),
  KEY `mdl_admiappita_adm_ix` (`adminpresetapplyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Attributes of the applied items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_app_it_a`
--

LOCK TABLES `mdl_adminpresets_app_it_a` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_app_it_a` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_adminpresets_app_it_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_app_plug`
--

DROP TABLE IF EXISTS `mdl_adminpresets_app_plug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_app_plug` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adminpresetapplyid` bigint NOT NULL,
  `plugin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `value` smallint NOT NULL DEFAULT '0',
  `oldvalue` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_admiappplug_adm_ix` (`adminpresetapplyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Admin presets plugins applied';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_app_plug`
--

LOCK TABLES `mdl_adminpresets_app_plug` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_app_plug` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_adminpresets_app_plug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_it`
--

DROP TABLE IF EXISTS `mdl_adminpresets_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_it` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adminpresetid` bigint NOT NULL,
  `plugin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_admiit_adm_ix` (`adminpresetid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Table to store settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_it`
--

LOCK TABLES `mdl_adminpresets_it` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_it` DISABLE KEYS */;
INSERT INTO `mdl_adminpresets_it` VALUES (1,1,'none','usecomments','0'),(2,1,'none','usetags','0'),(3,1,'none','enablenotes','0'),(4,1,'none','enableblogs','0'),(5,1,'none','enablebadges','0'),(6,1,'none','enableanalytics','0'),(7,1,'core_competency','enabled','0'),(8,1,'core_competency','pushcourseratingstouserplans','0'),(9,1,'tool_dataprivacy','showdataretentionsummary','0'),(10,1,'none','forum_maxattachments','3'),(11,1,'none','guestloginbutton','0'),(12,1,'none','activitychoosertabmode','4'),(13,2,'none','usecomments','1'),(14,2,'none','usetags','1'),(15,2,'none','enablenotes','1'),(16,2,'none','enableblogs','1'),(17,2,'none','enablebadges','1'),(18,2,'none','enableanalytics','1'),(19,2,'core_competency','enabled','1'),(20,2,'core_competency','pushcourseratingstouserplans','1'),(21,2,'tool_dataprivacy','showdataretentionsummary','1'),(22,2,'none','forum_maxattachments','9'),(23,2,'none','guestloginbutton','1'),(24,2,'none','activitychoosertabmode','3');
/*!40000 ALTER TABLE `mdl_adminpresets_it` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_it_a`
--

DROP TABLE IF EXISTS `mdl_adminpresets_it_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_it_a` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `itemid` bigint NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_admiita_ite_ix` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Admin presets items attributes. For settings with attributes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_it_a`
--

LOCK TABLES `mdl_adminpresets_it_a` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_it_a` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_adminpresets_it_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_plug`
--

DROP TABLE IF EXISTS `mdl_adminpresets_plug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_plug` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adminpresetid` bigint NOT NULL,
  `plugin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `enabled` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_admiplug_adm_ix` (`adminpresetid`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Admin presets plugins status, to store information about whe';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_plug`
--

LOCK TABLES `mdl_adminpresets_plug` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_plug` DISABLE KEYS */;
INSERT INTO `mdl_adminpresets_plug` VALUES (1,1,'mod','chat',0),(2,1,'mod','data',0),(3,1,'mod','lti',0),(4,1,'mod','imscp',0),(5,1,'mod','lesson',0),(6,1,'mod','scorm',0),(7,1,'mod','survey',0),(8,1,'mod','wiki',0),(9,1,'mod','workshop',0),(10,1,'availability','grouping',0),(11,1,'availability','profile',0),(12,1,'block','activity_modules',0),(13,1,'block','blog_menu',0),(14,1,'block','blog_tags',0),(15,1,'block','comments',0),(16,1,'block','completionstatus',0),(17,1,'block','course_summary',0),(18,1,'block','course_list',0),(19,1,'block','tag_flickr',0),(20,1,'block','globalsearch',0),(21,1,'block','badges',0),(22,1,'block','lp',0),(23,1,'block','myprofile',0),(24,1,'block','login',0),(25,1,'block','site_main_menu',0),(26,1,'block','mentees',0),(27,1,'block','mnet_hosts',0),(28,1,'block','private_files',0),(29,1,'block','blog_recent',0),(30,1,'block','rss_client',0),(31,1,'block','search_forums',0),(32,1,'block','section_links',0),(33,1,'block','selfcompletion',0),(34,1,'block','social_activities',0),(35,1,'block','tags',0),(36,1,'block','tag_youtube',0),(37,1,'block','feedback',0),(38,1,'block','online_users',0),(39,1,'block','recentlyaccessedcourses',0),(40,1,'block','starredcourses',0),(41,1,'format','social',0),(42,1,'dataformat','json',0),(43,1,'enrol','cohort',0),(44,1,'enrol','guest',0),(45,1,'filter','mathjaxloader',-9999),(46,1,'filter','activitynames',-9999),(47,1,'qbehaviour','adaptivenopenalty',0),(48,1,'qbehaviour','deferredcbm',0),(49,1,'qbehaviour','immediatecbm',0),(50,1,'qtype','calculated',0),(51,1,'qtype','calculatedmulti',0),(52,1,'qtype','calculatedsimple',0),(53,1,'qtype','ddmarker',0),(54,1,'qtype','ddimageortext',0),(55,1,'qtype','multianswer',0),(56,1,'qtype','numerical',0),(57,1,'qtype','randomsamatch',0),(58,1,'repository','local',0),(59,1,'repository','url',0),(60,1,'repository','wikimedia',0),(61,2,'mod','chat',1),(62,2,'mod','data',1),(63,2,'mod','lti',1),(64,2,'mod','imscp',1),(65,2,'mod','lesson',1),(66,2,'mod','scorm',1),(67,2,'mod','survey',1),(68,2,'mod','wiki',1),(69,2,'mod','workshop',1),(70,2,'availability','grouping',1),(71,2,'availability','profile',1),(72,2,'block','activity_modules',1),(73,2,'block','blog_menu',1),(74,2,'block','blog_tags',1),(75,2,'block','comments',1),(76,2,'block','completionstatus',1),(77,2,'block','course_list',1),(78,2,'block','tag_flickr',1),(79,2,'block','globalsearch',1),(80,2,'block','badges',1),(81,2,'block','lp',1),(82,2,'block','myprofile',1),(83,2,'block','login',1),(84,2,'block','site_main_menu',1),(85,2,'block','mentees',1),(86,2,'block','mnet_hosts',1),(87,2,'block','private_files',1),(88,2,'block','blog_recent',1),(89,2,'block','search_forums',1),(90,2,'block','section_links',1),(91,2,'block','social_activities',1),(92,2,'block','tags',1),(93,2,'block','online_users',1),(94,2,'block','recentlyaccessedcourses',1),(95,2,'block','starredcourses',1),(96,2,'format','social',1),(97,2,'dataformat','json',1),(98,2,'enrol','cohort',1),(99,2,'enrol','guest',1),(100,2,'filter','mathjaxloader',1),(101,2,'filter','activitynames',1),(102,2,'qbehaviour','adaptivenopenalty',1),(103,2,'qbehaviour','deferredcbm',1),(104,2,'qbehaviour','immediatecbm',1),(105,2,'qtype','calculated',1),(106,2,'qtype','calculatedmulti',1),(107,2,'qtype','calculatedsimple',1),(108,2,'qtype','ddmarker',1),(109,2,'qtype','ddimageortext',1),(110,2,'qtype','multianswer',1),(111,2,'qtype','numerical',1),(112,2,'qtype','randomsamatch',1),(113,2,'repository','local',1),(114,2,'repository','url',1),(115,2,'repository','wikimedia',1);
/*!40000 ALTER TABLE `mdl_adminpresets_plug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_indicator_calc`
--

DROP TABLE IF EXISTS `mdl_analytics_indicator_calc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_indicator_calc` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `starttime` bigint NOT NULL,
  `endtime` bigint NOT NULL,
  `contextid` bigint NOT NULL,
  `sampleorigin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `sampleid` bigint NOT NULL,
  `indicator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `value` decimal(10,2) DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analindicalc_staendcon_ix` (`starttime`,`endtime`,`contextid`),
  KEY `mdl_analindicalc_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stored indicator calculations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_indicator_calc`
--

LOCK TABLES `mdl_analytics_indicator_calc` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_indicator_calc` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_indicator_calc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_models`
--

DROP TABLE IF EXISTS `mdl_analytics_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_models` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `trained` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(1333) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `indicators` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timesplitting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `predictionsprocessor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `version` bigint NOT NULL,
  `contextids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timecreated` bigint DEFAULT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analmode_enatra_ix` (`enabled`,`trained`),
  KEY `mdl_analmode_use_ix` (`usermodified`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Analytic models.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_models`
--

LOCK TABLES `mdl_analytics_models` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_models` DISABLE KEYS */;
INSERT INTO `mdl_analytics_models` VALUES (1,0,0,NULL,'\\core_course\\analytics\\target\\course_dropout','[\"\\\\core\\\\analytics\\\\indicator\\\\any_access_after_end\",\"\\\\core\\\\analytics\\\\indicator\\\\any_access_before_start\",\"\\\\core\\\\analytics\\\\indicator\\\\any_write_action_in_course\",\"\\\\core\\\\analytics\\\\indicator\\\\read_actions\",\"\\\\core_course\\\\analytics\\\\indicator\\\\completion_enabled\",\"\\\\core_course\\\\analytics\\\\indicator\\\\potential_cognitive_depth\",\"\\\\core_course\\\\analytics\\\\indicator\\\\potential_social_breadth\",\"\\\\mod_assign\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_assign\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_book\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_book\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_chat\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_chat\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_choice\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_choice\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_data\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_data\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_feedback\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_feedback\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_folder\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_folder\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_forum\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_forum\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_glossary\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_glossary\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_imscp\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_imscp\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_label\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_label\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_lesson\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_lesson\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_lti\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_lti\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_page\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_page\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_quiz\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_quiz\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_resource\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_resource\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_scorm\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_scorm\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_survey\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_survey\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_url\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_url\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_wiki\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_wiki\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_workshop\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_workshop\\\\analytics\\\\indicator\\\\social_breadth\"]',NULL,NULL,1702489183,NULL,1702489183,1702489183,0),(2,1,1,NULL,'\\core_course\\analytics\\target\\no_teaching','[\"\\\\core_course\\\\analytics\\\\indicator\\\\no_teacher\",\"\\\\core_course\\\\analytics\\\\indicator\\\\no_student\"]','\\core\\analytics\\time_splitting\\single_range',NULL,1702489183,NULL,1702489183,1702489183,0),(3,1,1,NULL,'\\core_user\\analytics\\target\\upcoming_activities_due','[\"\\\\core_course\\\\analytics\\\\indicator\\\\activities_due\"]','\\core\\analytics\\time_splitting\\upcoming_week',NULL,1702489183,NULL,1702489183,1702489183,0),(4,1,1,NULL,'\\core_course\\analytics\\target\\no_access_since_course_start','[\"\\\\core\\\\analytics\\\\indicator\\\\any_course_access\"]','\\core\\analytics\\time_splitting\\one_month_after_start',NULL,1702489183,NULL,1702489183,1702489183,0),(5,1,1,NULL,'\\core_course\\analytics\\target\\no_recent_accesses','[\"\\\\core\\\\analytics\\\\indicator\\\\any_course_access\"]','\\core\\analytics\\time_splitting\\past_month',NULL,1702489183,NULL,1702489183,1702489183,0);
/*!40000 ALTER TABLE `mdl_analytics_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_models_log`
--

DROP TABLE IF EXISTS `mdl_analytics_models_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_models_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `modelid` bigint NOT NULL,
  `version` bigint NOT NULL,
  `evaluationmode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `indicators` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timesplitting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `score` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `dir` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timecreated` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analmodelog_mod_ix` (`modelid`),
  KEY `mdl_analmodelog_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Analytic models changes during evaluation.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_models_log`
--

LOCK TABLES `mdl_analytics_models_log` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_models_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_models_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_predict_samples`
--

DROP TABLE IF EXISTS `mdl_analytics_predict_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_predict_samples` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `modelid` bigint NOT NULL,
  `analysableid` bigint NOT NULL,
  `timesplitting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `rangeindex` bigint NOT NULL,
  `sampleids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_analpredsamp_modanatimr_ix` (`modelid`,`analysableid`,`timesplitting`,`rangeindex`),
  KEY `mdl_analpredsamp_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Samples already used for predictions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_predict_samples`
--

LOCK TABLES `mdl_analytics_predict_samples` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_predict_samples` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_predict_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_prediction_actions`
--

DROP TABLE IF EXISTS `mdl_analytics_prediction_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_prediction_actions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `predictionid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `actionname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analpredacti_preuseact_ix` (`predictionid`,`userid`,`actionname`),
  KEY `mdl_analpredacti_pre_ix` (`predictionid`),
  KEY `mdl_analpredacti_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Register of user actions over predictions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_prediction_actions`
--

LOCK TABLES `mdl_analytics_prediction_actions` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_prediction_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_prediction_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_predictions`
--

DROP TABLE IF EXISTS `mdl_analytics_predictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_predictions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `modelid` bigint NOT NULL,
  `contextid` bigint NOT NULL,
  `sampleid` bigint NOT NULL,
  `rangeindex` mediumint NOT NULL,
  `prediction` decimal(10,2) NOT NULL,
  `predictionscore` decimal(10,5) NOT NULL,
  `calculations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timestart` bigint DEFAULT NULL,
  `timeend` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analpred_modcon_ix` (`modelid`,`contextid`),
  KEY `mdl_analpred_mod_ix` (`modelid`),
  KEY `mdl_analpred_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Predictions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_predictions`
--

LOCK TABLES `mdl_analytics_predictions` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_predictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_predictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_train_samples`
--

DROP TABLE IF EXISTS `mdl_analytics_train_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_train_samples` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `modelid` bigint NOT NULL,
  `analysableid` bigint NOT NULL,
  `timesplitting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `sampleids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timecreated` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_analtraisamp_modanatim_ix` (`modelid`,`analysableid`,`timesplitting`),
  KEY `mdl_analtraisamp_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Samples used for training';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_train_samples`
--

LOCK TABLES `mdl_analytics_train_samples` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_train_samples` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_train_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_used_analysables`
--

DROP TABLE IF EXISTS `mdl_analytics_used_analysables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_used_analysables` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `modelid` bigint NOT NULL,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `analysableid` bigint NOT NULL,
  `firstanalysis` bigint NOT NULL,
  `timeanalysed` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analusedanal_modact_ix` (`modelid`,`action`),
  KEY `mdl_analusedanal_ana_ix` (`analysableid`),
  KEY `mdl_analusedanal_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='List of analysables used by each model';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_used_analysables`
--

LOCK TABLES `mdl_analytics_used_analysables` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_used_analysables` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_used_analysables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_used_files`
--

DROP TABLE IF EXISTS `mdl_analytics_used_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_used_files` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `modelid` bigint NOT NULL DEFAULT '0',
  `fileid` bigint NOT NULL DEFAULT '0',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `time` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_analusedfile_modactfil_ix` (`modelid`,`action`,`fileid`),
  KEY `mdl_analusedfile_mod_ix` (`modelid`),
  KEY `mdl_analusedfile_fil_ix` (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Files that have already been used for training and predictio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_used_files`
--

LOCK TABLES `mdl_analytics_used_files` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_used_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_used_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign`
--

DROP TABLE IF EXISTS `mdl_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introformat` smallint NOT NULL DEFAULT '0',
  `alwaysshowdescription` tinyint NOT NULL DEFAULT '0',
  `nosubmissions` tinyint NOT NULL DEFAULT '0',
  `submissiondrafts` tinyint NOT NULL DEFAULT '0',
  `sendnotifications` tinyint NOT NULL DEFAULT '0',
  `sendlatenotifications` tinyint NOT NULL DEFAULT '0',
  `duedate` bigint NOT NULL DEFAULT '0',
  `allowsubmissionsfromdate` bigint NOT NULL DEFAULT '0',
  `grade` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `requiresubmissionstatement` tinyint NOT NULL DEFAULT '0',
  `completionsubmit` tinyint NOT NULL DEFAULT '0',
  `cutoffdate` bigint NOT NULL DEFAULT '0',
  `gradingduedate` bigint NOT NULL DEFAULT '0',
  `teamsubmission` tinyint NOT NULL DEFAULT '0',
  `requireallteammemberssubmit` tinyint NOT NULL DEFAULT '0',
  `teamsubmissiongroupingid` bigint NOT NULL DEFAULT '0',
  `blindmarking` tinyint NOT NULL DEFAULT '0',
  `hidegrader` tinyint NOT NULL DEFAULT '0',
  `revealidentities` tinyint NOT NULL DEFAULT '0',
  `attemptreopenmethod` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'none',
  `maxattempts` mediumint NOT NULL DEFAULT '-1',
  `markingworkflow` tinyint NOT NULL DEFAULT '0',
  `markingallocation` tinyint NOT NULL DEFAULT '0',
  `sendstudentnotifications` tinyint NOT NULL DEFAULT '1',
  `preventsubmissionnotingroup` tinyint NOT NULL DEFAULT '0',
  `activity` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `activityformat` smallint NOT NULL DEFAULT '0',
  `timelimit` bigint NOT NULL DEFAULT '0',
  `submissionattachments` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assi_cou_ix` (`course`),
  KEY `mdl_assi_tea_ix` (`teamsubmissiongroupingid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='This table saves information about an instance of mod_assign';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign`
--

LOCK TABLES `mdl_assign` WRITE;
/*!40000 ALTER TABLE `mdl_assign` DISABLE KEYS */;
INSERT INTO `mdl_assign` VALUES (1,3,'UAS - Buku Outline','<p></p><p></p><div id=\"intro\"><div><p>Jika anda memutuskan untuk menulis buku untuk memperoleh nilai dari mata kuliah ini, syaratnya adalah sebagai berikut,</p>\n<ul>\n<li>Pilih salah satu topik yang di bahas dalam mata kuliah ini.</li>\n<li>Minimal buku 100 halaman, lebih di sukai jika 150 halaman atau \nlebih. Ukuran kertas A4.</li>\n<li>Di cover buku harus ada, <strong>nama anda sebagai penulis, nama pengajar kuliah ini, nama dosen pembimbing (kalau ada), nama kampus.</strong></li><li>Nilai hanya akan keluar sesudah ada surat resmi dari penerbit (seperti AndiOffset / Elexmedia), bahwa buku diterima untuk di terbitkan.</li></ul><br></div></div><br><p></p><br><p></p>',1,0,0,0,0,0,0,0,100,1571261852,0,1,0,0,0,0,0,0,0,0,'none',-1,0,0,1,0,NULL,0,0,0),(2,3,'UAS - Buku Halaman 1-50','<p></p><p></p><p>Silahkan upload 50 halaman pertama dari buku anda. Masukan 50 halaman\n pertama tersebut kira2 2 minggu sesudah anda memasukan Outline buku \nanda.</p>\n<p>Jika file terlalu besar untuk di upload, karena e-learning server di batasi max 1Mbyte,</p>\n<ul><li>upload file tersebut ke salah satu situs di Internet atau google drive.</li><li>upload text file berisi URL-nya sebagai penggantinya.</li></ul><br><p></p><br><p></p>',1,0,0,0,0,0,0,0,100,1571261916,0,1,0,0,0,0,0,0,0,0,'none',-1,0,0,1,0,NULL,0,0,0),(3,3,'UAS - Buku Halaman 1-100','<p></p><p></p><p>Silahkan upload 100 halaman pertama dari buku anda. Masukan 100 halaman\n pertama tersebut kira2 4 minggu sesudah anda memasukan Outline buku \nanda.</p>\n<p>Jika file terlalu besar untuk di upload, karena e-learning server di batasi max 1Mbyte,</p>\n<ul><li>upload file tersebut ke salah satu situs di Internet atau google drive.</li><li>upload text file berisi URL-nya sebagai penggantinya.</li></ul><br><p></p><br><p></p>',1,0,0,0,0,0,0,0,100,1571261939,0,1,0,0,0,0,0,0,0,0,'none',-1,0,0,1,0,NULL,0,0,0),(4,3,'UAS - Buku Halaman 1-150 (Final)','<p></p><p></p><p>Silahkan upload 150 halaman dari buku anda. Masukan 150 halaman tersebut kira2 6 minggu sesudah anda memasukan Outline buku \nanda.</p>\n<p>Jika file terlalu besar untuk di upload, karena e-learning server di batasi max 1Mbyte,</p>\n<ul><li>upload file tersebut ke salah satu situs di Internet atau google drive.</li><li>upload text file berisi URL-nya sebagai penggantinya.</li></ul><br><p></p><br><p></p>',1,0,0,0,0,0,0,0,100,1571261964,0,1,0,0,0,0,0,0,0,0,'none',-1,0,0,1,0,NULL,0,0,0),(5,5,'UAS - Buku Outline','<p></p><p></p><div id=\"intro\"><div><p>Jika anda memutuskan untuk menulis buku untuk memperoleh nilai dari mata kuliah ini, syaratnya adalah sebagai berikut,</p>\n<ul>\n<li>Pilih salah satu topik yang di bahas dalam mata kuliah ini.</li>\n<li>Minimal buku&nbsp; 150 halaman A4.</li>\n<li>Di cover buku harus ada, <strong>nama anda sebagai penulis, nama pengajar kuliah ini, nama dosen pembimbing (kalau ada), nama kampus.</strong></li>\n<li>Beri waktu 1 bulan untuk mengurus ISBN.</li>\n<li>Cetak buku menggunakan digital printing setelah memperoleh ISBN.</li>\n</ul>\n<p>Jadwal:</p>\n<ul>\n<li>Pengajar kuliah ini adalah pembimbing buku anda. Anda di persilahkan\n (sebaiknya) menambahkan dosen-dosen lain / calon pembimbing anda \nsebagai penulis ke dua / ke tiga,</li>\n<li>Naskah buku harus selesai kira-kira 1 bulan sebelum <a title=\"UAS\" href=\"http://lms.onnocenter.or.id/moodle/mod/quiz/view.php?id=6073\">UAS</a>, supaya ada waktu untuk menerbitkan.</li>\n<li>Kirimkan draft daftar isi ke pengajar 3-2.5 bulan sebelum waktu <a title=\"UAS\" href=\"http://lms.onnocenter.or.id/moodle/mod/quiz/view.php?id=6073\">UAS</a>.</li>\n<li>Masukan draft bab secara bertahap selama 2 bulan setelah daftar isi di sepakati.</li>\n</ul></div></div><b>YOUTUBE</b><br><ul><li>https://www.youtube.com/watch?v=DFh_Q4kaUWs<br></li></ul><p></p><br><p></p>',1,0,0,0,0,0,0,0,100,1579656374,0,1,0,0,0,0,0,0,0,0,'none',-1,0,0,1,0,NULL,0,0,0),(6,5,'UAS - Buku Halaman 1-50','<p><p></p><p>Silahkan upload 50 halaman pertama dari buku anda. Masukan 50 halaman\n pertama tersebut kira2 2 minggu sesudah anda memasukan Outline buku \nanda.</p>\n<p>Jika file terlalu besar untuk di upload, karena e-learning server di batasi max 1Mbyte,</p>\n<p>- upload file tersebut ke salah satu situs di Internet atau google drive.</p>\n<p>- upload text file berisi URL-nya sebagai penggantinya.</p><br><p></p><br></p>',1,0,0,0,0,0,0,0,100,1569988946,0,1,0,0,0,0,0,0,0,0,'none',-1,0,0,1,0,NULL,0,0,0),(7,5,'UAS - Buku Halaman 1-100','<p><p></p><p>Silahkan upload 100 halaman pertama dari buku anda. Masukan 100 halaman\n pertama tersebut kira2 4 minggu sesudah anda memasukan Outline buku \nanda.</p>\n<p>Jika file terlalu besar untuk di upload, karena e-learning server di batasi max 1Mbyte,</p>\n<p>- upload file tersebut ke salah satu situs di Internet atau google drive.</p>\n<p>- upload text file berisi URL-nya sebagai penggantinya.</p><br><p></p><br></p>',1,0,0,0,0,0,0,0,100,1569988968,0,1,0,0,0,0,0,0,0,0,'none',-1,0,0,1,0,NULL,0,0,0),(8,5,'UAS - Buku Halaman 1-150 (Final)','<p><p></p><p>Silahkan upload 150 halaman dari buku anda. Masukan 150 halaman tersebut kira2 6 minggu sesudah anda memasukan Outline buku \nanda.</p>\n<p>Jika file terlalu besar untuk di upload, karena e-learning server di batasi max 1Mbyte,</p>\n<p>- upload file tersebut ke salah satu situs di Internet atau google drive.</p>\n<p>- upload text file berisi URL-nya sebagai penggantinya.</p><br><p></p><br></p>',1,0,0,0,0,0,0,0,100,1569988982,0,1,0,0,0,0,0,0,0,0,'none',-1,0,0,1,0,NULL,0,0,0);
/*!40000 ALTER TABLE `mdl_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_grades`
--

DROP TABLE IF EXISTS `mdl_assign_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign_grades` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignment` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `grader` bigint NOT NULL DEFAULT '0',
  `grade` decimal(10,5) DEFAULT '0.00000',
  `attemptnumber` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_assigrad_assuseatt_uix` (`assignment`,`userid`,`attemptnumber`),
  KEY `mdl_assigrad_use_ix` (`userid`),
  KEY `mdl_assigrad_att_ix` (`attemptnumber`),
  KEY `mdl_assigrad_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Grading information about a single assignment submission.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_grades`
--

LOCK TABLES `mdl_assign_grades` WRITE;
/*!40000 ALTER TABLE `mdl_assign_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_overrides`
--

DROP TABLE IF EXISTS `mdl_assign_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign_overrides` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignid` bigint NOT NULL DEFAULT '0',
  `groupid` bigint DEFAULT NULL,
  `userid` bigint DEFAULT NULL,
  `sortorder` bigint DEFAULT NULL,
  `allowsubmissionsfromdate` bigint DEFAULT NULL,
  `duedate` bigint DEFAULT NULL,
  `cutoffdate` bigint DEFAULT NULL,
  `timelimit` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_assiover_ass_ix` (`assignid`),
  KEY `mdl_assiover_gro_ix` (`groupid`),
  KEY `mdl_assiover_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='The overrides to assign settings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_overrides`
--

LOCK TABLES `mdl_assign_overrides` WRITE;
/*!40000 ALTER TABLE `mdl_assign_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_plugin_config`
--

DROP TABLE IF EXISTS `mdl_assign_plugin_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign_plugin_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignment` bigint NOT NULL DEFAULT '0',
  `plugin` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `subtype` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `name` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_assiplugconf_plu_ix` (`plugin`),
  KEY `mdl_assiplugconf_sub_ix` (`subtype`),
  KEY `mdl_assiplugconf_nam_ix` (`name`),
  KEY `mdl_assiplugconf_ass_ix` (`assignment`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Config data for an instance of a plugin in an assignment.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_plugin_config`
--

LOCK TABLES `mdl_assign_plugin_config` WRITE;
/*!40000 ALTER TABLE `mdl_assign_plugin_config` DISABLE KEYS */;
INSERT INTO `mdl_assign_plugin_config` VALUES (1,1,'onlinetext','assignsubmission','enabled','0'),(2,1,'file','assignsubmission','enabled','1'),(3,1,'file','assignsubmission','maxfilesubmissions','9'),(4,1,'file','assignsubmission','maxsubmissionsizebytes','0'),(5,1,'file','assignsubmission','filetypeslist',''),(6,1,'comments','assignsubmission','enabled','1'),(7,1,'comments','assignfeedback','enabled','1'),(8,1,'comments','assignfeedback','commentinline','0'),(9,1,'editpdf','assignfeedback','enabled','0'),(10,1,'offline','assignfeedback','enabled','0'),(11,1,'file','assignfeedback','enabled','0'),(12,2,'onlinetext','assignsubmission','enabled','0'),(13,2,'file','assignsubmission','enabled','1'),(14,2,'file','assignsubmission','maxfilesubmissions','9'),(15,2,'file','assignsubmission','maxsubmissionsizebytes','0'),(16,2,'file','assignsubmission','filetypeslist',''),(17,2,'comments','assignsubmission','enabled','1'),(18,2,'comments','assignfeedback','enabled','1'),(19,2,'comments','assignfeedback','commentinline','0'),(20,2,'editpdf','assignfeedback','enabled','0'),(21,2,'offline','assignfeedback','enabled','0'),(22,2,'file','assignfeedback','enabled','0'),(23,3,'onlinetext','assignsubmission','enabled','0'),(24,3,'file','assignsubmission','enabled','1'),(25,3,'file','assignsubmission','maxfilesubmissions','9'),(26,3,'file','assignsubmission','maxsubmissionsizebytes','0'),(27,3,'file','assignsubmission','filetypeslist',''),(28,3,'comments','assignsubmission','enabled','1'),(29,3,'comments','assignfeedback','enabled','1'),(30,3,'comments','assignfeedback','commentinline','0'),(31,3,'editpdf','assignfeedback','enabled','0'),(32,3,'offline','assignfeedback','enabled','0'),(33,3,'file','assignfeedback','enabled','0'),(34,4,'onlinetext','assignsubmission','enabled','0'),(35,4,'file','assignsubmission','enabled','1'),(36,4,'file','assignsubmission','maxfilesubmissions','9'),(37,4,'file','assignsubmission','maxsubmissionsizebytes','0'),(38,4,'file','assignsubmission','filetypeslist',''),(39,4,'comments','assignsubmission','enabled','1'),(40,4,'comments','assignfeedback','enabled','1'),(41,4,'comments','assignfeedback','commentinline','0'),(42,4,'editpdf','assignfeedback','enabled','0'),(43,4,'offline','assignfeedback','enabled','0'),(44,4,'file','assignfeedback','enabled','0'),(45,5,'onlinetext','assignsubmission','enabled','0'),(46,5,'file','assignsubmission','enabled','1'),(47,5,'file','assignsubmission','maxfilesubmissions','6'),(48,5,'file','assignsubmission','maxsubmissionsizebytes','0'),(49,5,'file','assignsubmission','filetypeslist',''),(50,5,'comments','assignsubmission','enabled','1'),(51,5,'comments','assignfeedback','enabled','1'),(52,5,'comments','assignfeedback','commentinline','0'),(53,5,'editpdf','assignfeedback','enabled','0'),(54,5,'offline','assignfeedback','enabled','0'),(55,5,'file','assignfeedback','enabled','0'),(56,6,'onlinetext','assignsubmission','enabled','0'),(57,6,'file','assignsubmission','enabled','1'),(58,6,'file','assignsubmission','maxfilesubmissions','6'),(59,6,'file','assignsubmission','maxsubmissionsizebytes','0'),(60,6,'file','assignsubmission','filetypeslist',''),(61,6,'comments','assignsubmission','enabled','1'),(62,6,'comments','assignfeedback','enabled','1'),(63,6,'comments','assignfeedback','commentinline','0'),(64,6,'editpdf','assignfeedback','enabled','0'),(65,6,'offline','assignfeedback','enabled','0'),(66,6,'file','assignfeedback','enabled','0'),(67,7,'onlinetext','assignsubmission','enabled','0'),(68,7,'file','assignsubmission','enabled','1'),(69,7,'file','assignsubmission','maxfilesubmissions','6'),(70,7,'file','assignsubmission','maxsubmissionsizebytes','0'),(71,7,'file','assignsubmission','filetypeslist',''),(72,7,'comments','assignsubmission','enabled','1'),(73,7,'comments','assignfeedback','enabled','1'),(74,7,'comments','assignfeedback','commentinline','0'),(75,7,'editpdf','assignfeedback','enabled','0'),(76,7,'offline','assignfeedback','enabled','0'),(77,7,'file','assignfeedback','enabled','0'),(78,8,'onlinetext','assignsubmission','enabled','0'),(79,8,'file','assignsubmission','enabled','1'),(80,8,'file','assignsubmission','maxfilesubmissions','9'),(81,8,'file','assignsubmission','maxsubmissionsizebytes','0'),(82,8,'file','assignsubmission','filetypeslist',''),(83,8,'comments','assignsubmission','enabled','1'),(84,8,'comments','assignfeedback','enabled','1'),(85,8,'comments','assignfeedback','commentinline','0'),(86,8,'editpdf','assignfeedback','enabled','0'),(87,8,'offline','assignfeedback','enabled','0'),(88,8,'file','assignfeedback','enabled','0');
/*!40000 ALTER TABLE `mdl_assign_plugin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_submission`
--

DROP TABLE IF EXISTS `mdl_assign_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign_submission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignment` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `timestarted` bigint DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `groupid` bigint NOT NULL DEFAULT '0',
  `attemptnumber` bigint NOT NULL DEFAULT '0',
  `latest` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_assisubm_assusegroatt_uix` (`assignment`,`userid`,`groupid`,`attemptnumber`),
  KEY `mdl_assisubm_use_ix` (`userid`),
  KEY `mdl_assisubm_att_ix` (`attemptnumber`),
  KEY `mdl_assisubm_assusegrolat_ix` (`assignment`,`userid`,`groupid`,`latest`),
  KEY `mdl_assisubm_ass_ix` (`assignment`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about student interactions with';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_submission`
--

LOCK TABLES `mdl_assign_submission` WRITE;
/*!40000 ALTER TABLE `mdl_assign_submission` DISABLE KEYS */;
INSERT INTO `mdl_assign_submission` VALUES (1,1,4,1702493364,1702493364,NULL,'new',0,0,1),(2,2,4,1702493378,1702493378,NULL,'new',0,0,1);
/*!40000 ALTER TABLE `mdl_assign_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_user_flags`
--

DROP TABLE IF EXISTS `mdl_assign_user_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign_user_flags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL DEFAULT '0',
  `assignment` bigint NOT NULL DEFAULT '0',
  `locked` bigint NOT NULL DEFAULT '0',
  `mailed` smallint NOT NULL DEFAULT '0',
  `extensionduedate` bigint NOT NULL DEFAULT '0',
  `workflowstate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `allocatedmarker` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assiuserflag_mai_ix` (`mailed`),
  KEY `mdl_assiuserflag_use_ix` (`userid`),
  KEY `mdl_assiuserflag_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='List of flags that can be set for a single user in a single ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_user_flags`
--

LOCK TABLES `mdl_assign_user_flags` WRITE;
/*!40000 ALTER TABLE `mdl_assign_user_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_user_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_user_mapping`
--

DROP TABLE IF EXISTS `mdl_assign_user_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign_user_mapping` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignment` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assiusermapp_ass_ix` (`assignment`),
  KEY `mdl_assiusermapp_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Map an assignment specific id number to a user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_user_mapping`
--

LOCK TABLES `mdl_assign_user_mapping` WRITE;
/*!40000 ALTER TABLE `mdl_assign_user_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_user_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_comments`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignfeedback_comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignment` bigint NOT NULL DEFAULT '0',
  `grade` bigint NOT NULL DEFAULT '0',
  `commenttext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `commentformat` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assicomm_ass_ix` (`assignment`),
  KEY `mdl_assicomm_gra_ix` (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Text feedback for submitted assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_comments`
--

LOCK TABLES `mdl_assignfeedback_comments` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_annot`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_annot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignfeedback_editpdf_annot` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gradeid` bigint NOT NULL DEFAULT '0',
  `pageno` bigint NOT NULL DEFAULT '0',
  `x` bigint DEFAULT '0',
  `y` bigint DEFAULT '0',
  `endx` bigint DEFAULT '0',
  `endy` bigint DEFAULT '0',
  `path` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'line',
  `colour` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'black',
  `draft` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_assieditanno_grapag_ix` (`gradeid`,`pageno`),
  KEY `mdl_assieditanno_gra_ix` (`gradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='stores annotations added to pdfs submitted by students';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_annot`
--

LOCK TABLES `mdl_assignfeedback_editpdf_annot` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_annot` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_annot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_cmnt`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_cmnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignfeedback_editpdf_cmnt` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gradeid` bigint NOT NULL DEFAULT '0',
  `x` bigint DEFAULT '0',
  `y` bigint DEFAULT '0',
  `width` bigint DEFAULT '120',
  `rawtext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `pageno` bigint NOT NULL DEFAULT '0',
  `colour` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'black',
  `draft` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_assieditcmnt_grapag_ix` (`gradeid`,`pageno`),
  KEY `mdl_assieditcmnt_gra_ix` (`gradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores comments added to pdfs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_cmnt`
--

LOCK TABLES `mdl_assignfeedback_editpdf_cmnt` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_cmnt` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_cmnt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_quick`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_quick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignfeedback_editpdf_quick` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL DEFAULT '0',
  `rawtext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `width` bigint NOT NULL DEFAULT '120',
  `colour` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'yellow',
  PRIMARY KEY (`id`),
  KEY `mdl_assieditquic_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores teacher specified quicklist comments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_quick`
--

LOCK TABLES `mdl_assignfeedback_editpdf_quick` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_quick` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_quick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_rot`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_rot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignfeedback_editpdf_rot` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gradeid` bigint NOT NULL DEFAULT '0',
  `pageno` bigint NOT NULL DEFAULT '0',
  `pathnamehash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `isrotated` tinyint(1) NOT NULL DEFAULT '0',
  `degree` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_assieditrot_grapag_uix` (`gradeid`,`pageno`),
  KEY `mdl_assieditrot_gra_ix` (`gradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores rotation information of a page.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_rot`
--

LOCK TABLES `mdl_assignfeedback_editpdf_rot` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_rot` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_rot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_file`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignfeedback_file` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignment` bigint NOT NULL DEFAULT '0',
  `grade` bigint NOT NULL DEFAULT '0',
  `numfiles` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assifile_ass2_ix` (`assignment`),
  KEY `mdl_assifile_gra_ix` (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores info about the number of files submitted by a student';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_file`
--

LOCK TABLES `mdl_assignfeedback_file` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignsubmission_file`
--

DROP TABLE IF EXISTS `mdl_assignsubmission_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignsubmission_file` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignment` bigint NOT NULL DEFAULT '0',
  `submission` bigint NOT NULL DEFAULT '0',
  `numfiles` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assifile_ass_ix` (`assignment`),
  KEY `mdl_assifile_sub_ix` (`submission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Info about file submissions for assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignsubmission_file`
--

LOCK TABLES `mdl_assignsubmission_file` WRITE;
/*!40000 ALTER TABLE `mdl_assignsubmission_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignsubmission_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignsubmission_onlinetext`
--

DROP TABLE IF EXISTS `mdl_assignsubmission_onlinetext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignsubmission_onlinetext` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignment` bigint NOT NULL DEFAULT '0',
  `submission` bigint NOT NULL DEFAULT '0',
  `onlinetext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `onlineformat` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assionli_ass_ix` (`assignment`),
  KEY `mdl_assionli_sub_ix` (`submission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Info about onlinetext submission';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignsubmission_onlinetext`
--

LOCK TABLES `mdl_assignsubmission_onlinetext` WRITE;
/*!40000 ALTER TABLE `mdl_assignsubmission_onlinetext` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignsubmission_onlinetext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_auth_lti_linked_login`
--

DROP TABLE IF EXISTS `mdl_auth_lti_linked_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_auth_lti_linked_login` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL,
  `issuer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `issuer256` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `sub` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `sub256` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_authltilinklogi_useiss_uix` (`userid`,`issuer256`,`sub256`),
  KEY `mdl_authltilinklogi_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Accounts linked to a users Moodle account.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_auth_lti_linked_login`
--

LOCK TABLES `mdl_auth_lti_linked_login` WRITE;
/*!40000 ALTER TABLE `mdl_auth_lti_linked_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_auth_lti_linked_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_auth_oauth2_linked_login`
--

DROP TABLE IF EXISTS `mdl_auth_oauth2_linked_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_auth_oauth2_linked_login` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `issuerid` bigint NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `email` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `confirmtoken` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `confirmtokenexpires` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_authoautlinklogi_useis_uix` (`userid`,`issuerid`,`username`),
  KEY `mdl_authoautlinklogi_issuse_ix` (`issuerid`,`username`),
  KEY `mdl_authoautlinklogi_use_ix` (`usermodified`),
  KEY `mdl_authoautlinklogi_use2_ix` (`userid`),
  KEY `mdl_authoautlinklogi_iss_ix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Accounts linked to a users Moodle account.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_auth_oauth2_linked_login`
--

LOCK TABLES `mdl_auth_oauth2_linked_login` WRITE;
/*!40000 ALTER TABLE `mdl_auth_oauth2_linked_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_auth_oauth2_linked_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_controllers`
--

DROP TABLE IF EXISTS `mdl_backup_controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_backup_controllers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `operation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'backup',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `itemid` bigint NOT NULL,
  `format` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `interactive` smallint NOT NULL,
  `purpose` smallint NOT NULL,
  `userid` bigint NOT NULL,
  `status` smallint NOT NULL,
  `execution` smallint NOT NULL,
  `executiontime` bigint NOT NULL,
  `checksum` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `progress` decimal(15,14) NOT NULL DEFAULT '0.00000000000000',
  `controller` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backcont_bac_uix` (`backupid`),
  KEY `mdl_backcont_typite_ix` (`type`,`itemid`),
  KEY `mdl_backcont_useite_ix` (`userid`,`itemid`),
  KEY `mdl_backcont_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='To store the backup_controllers as they are used';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_controllers`
--

LOCK TABLES `mdl_backup_controllers` WRITE;
/*!40000 ALTER TABLE `mdl_backup_controllers` DISABLE KEYS */;
INSERT INTO `mdl_backup_controllers` VALUES (1,'80346dc12ff5038063dfdb196707646f','restore','course',3,'moodle2',1,10,2,1000,1,0,'0840f4bc1b360038190d998b89a17ce2',1702492865,1702492965,0.00000000000000,''),(2,'aa31a7fc6925bd8dfc0677e1e9fd78fc','restore','course',4,'moodle2',1,10,2,1000,1,0,'6337932cc6a8b03423d6378f4b2bc922',1702493687,1702493845,0.00000000000000,''),(3,'b2eb59f0a59894bf738777ae6087c16f','restore','course',5,'moodle2',1,10,2,1000,1,0,'3306dcd3663de6f99ae467cdd0ce8690',1702494323,1702494504,0.00000000000000,'');
/*!40000 ALTER TABLE `mdl_backup_controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_courses`
--

DROP TABLE IF EXISTS `mdl_backup_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_backup_courses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `courseid` bigint NOT NULL DEFAULT '0',
  `laststarttime` bigint NOT NULL DEFAULT '0',
  `lastendtime` bigint NOT NULL DEFAULT '0',
  `laststatus` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '5',
  `nextstarttime` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backcour_cou_uix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='To store every course backup status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_courses`
--

LOCK TABLES `mdl_backup_courses` WRITE;
/*!40000 ALTER TABLE `mdl_backup_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_logs`
--

DROP TABLE IF EXISTS `mdl_backup_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_backup_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `loglevel` smallint NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timecreated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backlogs_bacid_uix` (`backupid`,`id`),
  KEY `mdl_backlogs_bac_ix` (`backupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='To store all the logs from backup and restore operations (by';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_logs`
--

LOCK TABLES `mdl_backup_logs` WRITE;
/*!40000 ALTER TABLE `mdl_backup_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge`
--

DROP TABLE IF EXISTS `mdl_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `usercreated` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  `issuername` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `issuerurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `issuercontact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `expiredate` bigint DEFAULT NULL,
  `expireperiod` bigint DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `courseid` bigint DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `messagesubject` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `attachment` tinyint(1) NOT NULL DEFAULT '1',
  `notification` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `nextcron` bigint DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `imageauthorname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `imageauthoremail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `imageauthorurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `imagecaption` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_badg_typ_ix` (`type`),
  KEY `mdl_badg_cou_ix` (`courseid`),
  KEY `mdl_badg_use_ix` (`usermodified`),
  KEY `mdl_badg_use2_ix` (`usercreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines badge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge`
--

LOCK TABLES `mdl_badge` WRITE;
/*!40000 ALTER TABLE `mdl_badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_alignment`
--

DROP TABLE IF EXISTS `mdl_badge_alignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_alignment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `badgeid` bigint NOT NULL DEFAULT '0',
  `targetname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `targeturl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `targetdescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `targetframework` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `targetcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgalig_bad_ix` (`badgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines alignment for badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_alignment`
--

LOCK TABLES `mdl_badge_alignment` WRITE;
/*!40000 ALTER TABLE `mdl_badge_alignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_alignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_backpack`
--

DROP TABLE IF EXISTS `mdl_badge_backpack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_backpack` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL DEFAULT '0',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `backpackuid` bigint NOT NULL,
  `autosync` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `externalbackpackid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgback_useext_uix` (`userid`,`externalbackpackid`),
  KEY `mdl_badgback_use_ix` (`userid`),
  KEY `mdl_badgback_ext_ix` (`externalbackpackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines settings for connecting external backpack';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_backpack`
--

LOCK TABLES `mdl_badge_backpack` WRITE;
/*!40000 ALTER TABLE `mdl_badge_backpack` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_backpack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_backpack_oauth2`
--

DROP TABLE IF EXISTS `mdl_badge_backpack_oauth2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_backpack_oauth2` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usermodified` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL,
  `issuerid` bigint NOT NULL,
  `externalbackpackid` bigint NOT NULL,
  `token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `refreshtoken` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expires` bigint DEFAULT NULL,
  `scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_badgbackoaut_use_ix` (`usermodified`),
  KEY `mdl_badgbackoaut_use2_ix` (`userid`),
  KEY `mdl_badgbackoaut_iss_ix` (`issuerid`),
  KEY `mdl_badgbackoaut_ext_ix` (`externalbackpackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_backpack_oauth2`
--

LOCK TABLES `mdl_badge_backpack_oauth2` WRITE;
/*!40000 ALTER TABLE `mdl_badge_backpack_oauth2` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_backpack_oauth2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_criteria`
--

DROP TABLE IF EXISTS `mdl_badge_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_criteria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `badgeid` bigint NOT NULL DEFAULT '0',
  `criteriatype` bigint DEFAULT NULL,
  `method` tinyint(1) NOT NULL DEFAULT '1',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `descriptionformat` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgcrit_badcri_uix` (`badgeid`,`criteriatype`),
  KEY `mdl_badgcrit_cri_ix` (`criteriatype`),
  KEY `mdl_badgcrit_bad_ix` (`badgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines criteria for issuing badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_criteria`
--

LOCK TABLES `mdl_badge_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_badge_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_criteria_met`
--

DROP TABLE IF EXISTS `mdl_badge_criteria_met`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_criteria_met` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `issuedid` bigint DEFAULT NULL,
  `critid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `datemet` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgcritmet_cri_ix` (`critid`),
  KEY `mdl_badgcritmet_use_ix` (`userid`),
  KEY `mdl_badgcritmet_iss_ix` (`issuedid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines criteria that were met for an issued badge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_criteria_met`
--

LOCK TABLES `mdl_badge_criteria_met` WRITE;
/*!40000 ALTER TABLE `mdl_badge_criteria_met` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_criteria_met` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_criteria_param`
--

DROP TABLE IF EXISTS `mdl_badge_criteria_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_criteria_param` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `critid` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgcritpara_cri_ix` (`critid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines parameters for badges criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_criteria_param`
--

LOCK TABLES `mdl_badge_criteria_param` WRITE;
/*!40000 ALTER TABLE `mdl_badge_criteria_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_criteria_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_endorsement`
--

DROP TABLE IF EXISTS `mdl_badge_endorsement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_endorsement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `badgeid` bigint NOT NULL DEFAULT '0',
  `issuername` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `issuerurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `issueremail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `claimid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `claimcomment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `dateissued` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_badgendo_bad_ix` (`badgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines endorsement for badge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_endorsement`
--

LOCK TABLES `mdl_badge_endorsement` WRITE;
/*!40000 ALTER TABLE `mdl_badge_endorsement` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_endorsement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_external`
--

DROP TABLE IF EXISTS `mdl_badge_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_external` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `backpackid` bigint NOT NULL,
  `collectionid` bigint NOT NULL,
  `entityid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `assertion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_badgexte_bac_ix` (`backpackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Setting for external badges display';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_external`
--

LOCK TABLES `mdl_badge_external` WRITE;
/*!40000 ALTER TABLE `mdl_badge_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_external_backpack`
--

DROP TABLE IF EXISTS `mdl_badge_external_backpack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_external_backpack` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `backpackapiurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `backpackweburl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `apiversion` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1.0',
  `sortorder` bigint NOT NULL DEFAULT '0',
  `oauth2_issuerid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgexteback_bac_uix` (`backpackapiurl`),
  UNIQUE KEY `mdl_badgexteback_bac2_uix` (`backpackweburl`),
  KEY `mdl_badgexteback_oau_ix` (`oauth2_issuerid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines settings for site level backpacks that a user can co';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_external_backpack`
--

LOCK TABLES `mdl_badge_external_backpack` WRITE;
/*!40000 ALTER TABLE `mdl_badge_external_backpack` DISABLE KEYS */;
INSERT INTO `mdl_badge_external_backpack` VALUES (1,'https://api.badgr.io/v2','https://badgr.io','2',1,NULL);
/*!40000 ALTER TABLE `mdl_badge_external_backpack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_external_identifier`
--

DROP TABLE IF EXISTS `mdl_badge_external_identifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_external_identifier` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sitebackpackid` bigint NOT NULL,
  `internalid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `externalid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgexteiden_sitintext_uix` (`sitebackpackid`,`internalid`,`externalid`,`type`),
  KEY `mdl_badgexteiden_sit_ix` (`sitebackpackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Setting for external badges mappings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_external_identifier`
--

LOCK TABLES `mdl_badge_external_identifier` WRITE;
/*!40000 ALTER TABLE `mdl_badge_external_identifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_external_identifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_issued`
--

DROP TABLE IF EXISTS `mdl_badge_issued`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_issued` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `badgeid` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `uniquehash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dateissued` bigint NOT NULL DEFAULT '0',
  `dateexpire` bigint DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `issuernotified` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgissu_baduse_uix` (`badgeid`,`userid`),
  KEY `mdl_badgissu_bad_ix` (`badgeid`),
  KEY `mdl_badgissu_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines issued badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_issued`
--

LOCK TABLES `mdl_badge_issued` WRITE;
/*!40000 ALTER TABLE `mdl_badge_issued` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_issued` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_manual_award`
--

DROP TABLE IF EXISTS `mdl_badge_manual_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_manual_award` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `badgeid` bigint NOT NULL,
  `recipientid` bigint NOT NULL,
  `issuerid` bigint NOT NULL,
  `issuerrole` bigint NOT NULL,
  `datemet` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgmanuawar_bad_ix` (`badgeid`),
  KEY `mdl_badgmanuawar_rec_ix` (`recipientid`),
  KEY `mdl_badgmanuawar_iss_ix` (`issuerid`),
  KEY `mdl_badgmanuawar_iss2_ix` (`issuerrole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Track manual award criteria for badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_manual_award`
--

LOCK TABLES `mdl_badge_manual_award` WRITE;
/*!40000 ALTER TABLE `mdl_badge_manual_award` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_manual_award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_related`
--

DROP TABLE IF EXISTS `mdl_badge_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_related` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `badgeid` bigint NOT NULL DEFAULT '0',
  `relatedbadgeid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgrela_badrel_uix` (`badgeid`,`relatedbadgeid`),
  KEY `mdl_badgrela_bad_ix` (`badgeid`),
  KEY `mdl_badgrela_rel_ix` (`relatedbadgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines badge related for badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_related`
--

LOCK TABLES `mdl_badge_related` WRITE;
/*!40000 ALTER TABLE `mdl_badge_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_bigbluebuttonbn`
--

DROP TABLE IF EXISTS `mdl_bigbluebuttonbn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_bigbluebuttonbn` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` tinyint NOT NULL DEFAULT '0',
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `introformat` smallint NOT NULL DEFAULT '1',
  `meetingid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `moderatorpass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `viewerpass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `wait` tinyint(1) NOT NULL DEFAULT '0',
  `record` tinyint(1) NOT NULL DEFAULT '0',
  `recordallfromstart` tinyint(1) NOT NULL DEFAULT '0',
  `recordhidebutton` tinyint(1) NOT NULL DEFAULT '0',
  `welcome` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `voicebridge` mediumint NOT NULL DEFAULT '0',
  `openingtime` bigint NOT NULL DEFAULT '0',
  `closingtime` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `presentation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `participants` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `userlimit` smallint NOT NULL DEFAULT '0',
  `recordings_html` tinyint(1) NOT NULL DEFAULT '0',
  `recordings_deleted` tinyint(1) NOT NULL DEFAULT '1',
  `recordings_imported` tinyint(1) NOT NULL DEFAULT '0',
  `recordings_preview` tinyint(1) NOT NULL DEFAULT '0',
  `clienttype` tinyint(1) NOT NULL DEFAULT '0',
  `muteonstart` tinyint(1) NOT NULL DEFAULT '0',
  `disablecam` tinyint(1) NOT NULL DEFAULT '0',
  `disablemic` tinyint(1) NOT NULL DEFAULT '0',
  `disableprivatechat` tinyint(1) NOT NULL DEFAULT '0',
  `disablepublicchat` tinyint(1) NOT NULL DEFAULT '0',
  `disablenote` tinyint(1) NOT NULL DEFAULT '0',
  `hideuserlist` tinyint(1) NOT NULL DEFAULT '0',
  `completionattendance` int NOT NULL DEFAULT '0',
  `completionengagementchats` int NOT NULL DEFAULT '0',
  `completionengagementtalks` int NOT NULL DEFAULT '0',
  `completionengagementraisehand` int NOT NULL DEFAULT '0',
  `completionengagementpollvotes` int NOT NULL DEFAULT '0',
  `completionengagementemojis` int NOT NULL DEFAULT '0',
  `guestallowed` tinyint DEFAULT '0',
  `mustapproveuser` tinyint DEFAULT '1',
  `guestlinkuid` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `guestpassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='The bigbluebuttonbn table to store information about a meeti';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_bigbluebuttonbn`
--

LOCK TABLES `mdl_bigbluebuttonbn` WRITE;
/*!40000 ALTER TABLE `mdl_bigbluebuttonbn` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_bigbluebuttonbn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_bigbluebuttonbn_logs`
--

DROP TABLE IF EXISTS `mdl_bigbluebuttonbn_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_bigbluebuttonbn_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `courseid` bigint NOT NULL,
  `bigbluebuttonbnid` bigint NOT NULL,
  `userid` bigint DEFAULT NULL,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `meetingid` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `log` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_bigblogs_cou_ix` (`courseid`),
  KEY `mdl_bigblogs_log_ix` (`log`),
  KEY `mdl_bigblogs_coubiguselog_ix` (`courseid`,`bigbluebuttonbnid`,`userid`,`log`),
  KEY `mdl_bigblogs_uselog_ix` (`userid`,`log`),
  KEY `mdl_bigblogs_coubig_ix` (`courseid`,`bigbluebuttonbnid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='The bigbluebuttonbn table to store meeting activity events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_bigbluebuttonbn_logs`
--

LOCK TABLES `mdl_bigbluebuttonbn_logs` WRITE;
/*!40000 ALTER TABLE `mdl_bigbluebuttonbn_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_bigbluebuttonbn_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_bigbluebuttonbn_recordings`
--

DROP TABLE IF EXISTS `mdl_bigbluebuttonbn_recordings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_bigbluebuttonbn_recordings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `courseid` bigint NOT NULL,
  `bigbluebuttonbnid` bigint NOT NULL,
  `groupid` bigint DEFAULT NULL,
  `recordingid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `headless` tinyint(1) NOT NULL DEFAULT '0',
  `imported` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `importeddata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `usermodified` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_bigbreco_cou_ix` (`courseid`),
  KEY `mdl_bigbreco_rec_ix` (`recordingid`),
  KEY `mdl_bigbreco_big_ix` (`bigbluebuttonbnid`),
  KEY `mdl_bigbreco_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='The bigbluebuttonbn table to store references to recordings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_bigbluebuttonbn_recordings`
--

LOCK TABLES `mdl_bigbluebuttonbn_recordings` WRITE;
/*!40000 ALTER TABLE `mdl_bigbluebuttonbn_recordings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_bigbluebuttonbn_recordings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block`
--

DROP TABLE IF EXISTS `mdl_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_block` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `cron` bigint NOT NULL DEFAULT '0',
  `lastcron` bigint NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_bloc_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='contains all installed blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block`
--

LOCK TABLES `mdl_block` WRITE;
/*!40000 ALTER TABLE `mdl_block` DISABLE KEYS */;
INSERT INTO `mdl_block` VALUES (1,'accessreview',0,0,1),(2,'activity_modules',0,0,1),(3,'activity_results',0,0,1),(4,'admin_bookmarks',0,0,1),(5,'badges',0,0,1),(6,'blog_menu',0,0,1),(7,'blog_recent',0,0,1),(8,'blog_tags',0,0,1),(9,'calendar_month',0,0,1),(10,'calendar_upcoming',0,0,1),(11,'comments',0,0,1),(12,'completionstatus',0,0,1),(13,'course_list',0,0,1),(14,'course_summary',0,0,0),(15,'feedback',0,0,0),(16,'globalsearch',0,0,1),(17,'glossary_random',0,0,1),(18,'html',0,0,1),(19,'login',0,0,1),(20,'lp',0,0,1),(21,'mentees',0,0,1),(22,'mnet_hosts',0,0,1),(23,'myoverview',0,0,1),(24,'myprofile',0,0,1),(25,'navigation',0,0,1),(26,'news_items',0,0,1),(27,'online_users',0,0,1),(28,'private_files',0,0,1),(29,'recent_activity',0,0,1),(30,'recentlyaccessedcourses',0,0,1),(31,'recentlyaccesseditems',0,0,1),(32,'rss_client',0,0,0),(33,'search_forums',0,0,1),(34,'section_links',0,0,1),(35,'selfcompletion',0,0,0),(36,'settings',0,0,1),(37,'site_main_menu',0,0,1),(38,'social_activities',0,0,1),(39,'starredcourses',0,0,1),(40,'tag_flickr',0,0,1),(41,'tag_youtube',0,0,0),(42,'tags',0,0,1),(43,'timeline',0,0,1);
/*!40000 ALTER TABLE `mdl_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_instances`
--

DROP TABLE IF EXISTS `mdl_block_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_block_instances` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blockname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `parentcontextid` bigint NOT NULL,
  `showinsubcontexts` smallint NOT NULL,
  `requiredbytheme` smallint NOT NULL DEFAULT '0',
  `pagetypepattern` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `subpagepattern` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `defaultregion` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `defaultweight` bigint NOT NULL,
  `configdata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blocinst_parshopagsub_ix` (`parentcontextid`,`showinsubcontexts`,`pagetypepattern`,`subpagepattern`),
  KEY `mdl_blocinst_tim_ix` (`timemodified`),
  KEY `mdl_blocinst_blo_ix` (`blockname`),
  KEY `mdl_blocinst_par_ix` (`parentcontextid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='This table stores block instances. The type of block this is';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_instances`
--

LOCK TABLES `mdl_block_instances` WRITE;
/*!40000 ALTER TABLE `mdl_block_instances` DISABLE KEYS */;
INSERT INTO `mdl_block_instances` VALUES (1,'admin_bookmarks',1,0,0,'admin-*',NULL,'side-pre',2,'',1702489228,1702489228),(2,'recentlyaccesseditems',1,0,0,'my-index','2','side-post',0,'',1702489228,1702489228),(3,'timeline',1,0,0,'my-index','2','content',0,'',1702489228,1702489228),(4,'calendar_month',1,0,0,'my-index','2','content',1,'',1702489228,1702489228),(5,'myoverview',1,0,0,'my-index','3','content',0,'',1702489228,1702489228),(6,'recentlyaccesseditems',5,0,0,'my-index','4','side-post',0,'',1702489457,1702489457),(7,'timeline',5,0,0,'my-index','4','content',0,'',1702489457,1702489457),(8,'calendar_month',5,0,0,'my-index','4','content',1,'',1702489457,1702489457),(9,'recentlyaccesseditems',146,0,0,'my-index','6','side-post',0,'',1702493321,1702493321),(10,'timeline',146,0,0,'my-index','6','content',0,'',1702493321,1702493321),(11,'calendar_month',146,0,0,'my-index','6','content',1,'',1702493321,1702493321),(12,'calendar_upcoming',150,0,0,'course-view-*',NULL,'side-post',2,'',1564221081,1564221076),(13,'recent_activity',150,0,0,'course-view-*',NULL,'side-post',3,'',1564221081,1564221076),(14,'news_items',150,0,0,'course-view-*',NULL,'side-post',1,'',1564221081,1564221076),(15,'search_forums',150,0,0,'course-view-*',NULL,'side-post',0,'',1564221081,1564221076),(16,'recent_activity',363,0,0,'course-view-*',NULL,'side-post',3,'',1564221081,1564221076),(17,'search_forums',363,0,0,'course-view-*',NULL,'side-post',0,'',1564221081,1564221076),(18,'calendar_upcoming',363,0,0,'course-view-*',NULL,'side-post',2,'',1564221081,1564221076),(19,'news_items',363,0,0,'course-view-*',NULL,'side-post',1,'',1564221081,1564221076),(20,'recentlyaccesseditems',632,0,0,'my-index','7','side-post',0,'',1702731493,1702731493),(21,'timeline',632,0,0,'my-index','7','content',0,'',1702731493,1702731493),(22,'calendar_month',632,0,0,'my-index','7','content',1,'',1702731493,1702731493),(23,'recentlyaccesseditems',637,0,0,'my-index','9','side-post',0,'',1702731710,1702731710),(24,'timeline',637,0,0,'my-index','9','content',0,'',1702731710,1702731710),(25,'calendar_month',637,0,0,'my-index','9','content',1,'',1702731710,1702731710);
/*!40000 ALTER TABLE `mdl_block_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_positions`
--

DROP TABLE IF EXISTS `mdl_block_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_block_positions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blockinstanceid` bigint NOT NULL,
  `contextid` bigint NOT NULL,
  `pagetype` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `subpage` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `visible` smallint NOT NULL,
  `region` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `weight` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_blocposi_bloconpagsub_uix` (`blockinstanceid`,`contextid`,`pagetype`,`subpage`),
  KEY `mdl_blocposi_blo_ix` (`blockinstanceid`),
  KEY `mdl_blocposi_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the position of a sticky block_instance on a another ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_positions`
--

LOCK TABLES `mdl_block_positions` WRITE;
/*!40000 ALTER TABLE `mdl_block_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_recent_activity`
--

DROP TABLE IF EXISTS `mdl_block_recent_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_block_recent_activity` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `courseid` bigint NOT NULL,
  `cmid` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `action` tinyint(1) NOT NULL,
  `modname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blocreceacti_coutim_ix` (`courseid`,`timecreated`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Recent activity block';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_recent_activity`
--

LOCK TABLES `mdl_block_recent_activity` WRITE;
/*!40000 ALTER TABLE `mdl_block_recent_activity` DISABLE KEYS */;
INSERT INTO `mdl_block_recent_activity` VALUES (1,2,2,1702490648,2,0,NULL),(2,3,19,1702493044,2,1,NULL),(3,4,125,1702493924,2,1,NULL),(4,4,125,1702493946,2,1,NULL),(5,4,125,1702493960,2,1,NULL),(6,4,125,1702494000,2,1,NULL),(7,4,124,1702494115,2,1,NULL),(8,4,124,1702494124,2,1,NULL),(9,5,331,1702494568,2,1,NULL),(10,5,352,1702494599,2,1,NULL),(11,5,363,1702494618,2,1,NULL),(12,5,340,1702496018,2,1,NULL);
/*!40000 ALTER TABLE `mdl_block_recent_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_recentlyaccesseditems`
--

DROP TABLE IF EXISTS `mdl_block_recentlyaccesseditems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_block_recentlyaccesseditems` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `courseid` bigint NOT NULL,
  `cmid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `timeaccess` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_blocrece_usecoucmi_uix` (`userid`,`courseid`,`cmid`),
  KEY `mdl_blocrece_use_ix` (`userid`),
  KEY `mdl_blocrece_cou_ix` (`courseid`),
  KEY `mdl_blocrece_cmi_ix` (`cmid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Most recently accessed items accessed by a user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_recentlyaccesseditems`
--

LOCK TABLES `mdl_block_recentlyaccesseditems` WRITE;
/*!40000 ALTER TABLE `mdl_block_recentlyaccesseditems` DISABLE KEYS */;
INSERT INTO `mdl_block_recentlyaccesseditems` VALUES (16,3,117,4,1702493472),(18,3,112,4,1702493493),(22,4,127,2,1702494255),(23,5,331,2,1702635362),(24,5,352,2,1702494599),(25,5,363,2,1702494618),(26,4,124,4,1702494720),(27,4,125,4,1702494734),(28,4,126,4,1702494749),(29,4,127,4,1702494764),(30,4,128,4,1702494770),(31,4,129,4,1702494775),(32,4,137,4,1702494788),(33,5,340,2,1702496018),(34,2,1,2,1702517011),(35,5,332,2,1702518811),(36,5,334,2,1702518814),(37,2,2,2,1702635343);
/*!40000 ALTER TABLE `mdl_block_recentlyaccesseditems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_rss_client`
--

DROP TABLE IF EXISTS `mdl_block_rss_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_block_rss_client` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL DEFAULT '0',
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `preferredtitle` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shared` tinyint NOT NULL DEFAULT '0',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `skiptime` bigint NOT NULL DEFAULT '0',
  `skipuntil` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Remote news feed information. Contains the news feed id, the';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_rss_client`
--

LOCK TABLES `mdl_block_rss_client` WRITE;
/*!40000 ALTER TABLE `mdl_block_rss_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_rss_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_blog_association`
--

DROP TABLE IF EXISTS `mdl_blog_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_blog_association` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contextid` bigint NOT NULL,
  `blogid` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blogasso_con_ix` (`contextid`),
  KEY `mdl_blogasso_blo_ix` (`blogid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Associations of blog entries with courses and module instanc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_blog_association`
--

LOCK TABLES `mdl_blog_association` WRITE;
/*!40000 ALTER TABLE `mdl_blog_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_blog_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_blog_external`
--

DROP TABLE IF EXISTS `mdl_blog_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_blog_external` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `filtertags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `failedlastsync` tinyint(1) NOT NULL DEFAULT '0',
  `timemodified` bigint DEFAULT NULL,
  `timefetched` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_blogexte_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='External blog links used for RSS copying of blog entries to ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_blog_external`
--

LOCK TABLES `mdl_blog_external` WRITE;
/*!40000 ALTER TABLE `mdl_blog_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_blog_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_book`
--

DROP TABLE IF EXISTS `mdl_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `introformat` smallint NOT NULL DEFAULT '0',
  `numbering` smallint NOT NULL DEFAULT '0',
  `navstyle` smallint NOT NULL DEFAULT '1',
  `customtitles` tinyint NOT NULL DEFAULT '0',
  `revision` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_book_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines book';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_book`
--

LOCK TABLES `mdl_book` WRITE;
/*!40000 ALTER TABLE `mdl_book` DISABLE KEYS */;
INSERT INTO `mdl_book` VALUES (1,2,'Buku IPA 1','',1,1,1,0,0,1702490648,1702490648);
/*!40000 ALTER TABLE `mdl_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_book_chapters`
--

DROP TABLE IF EXISTS `mdl_book_chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_book_chapters` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bookid` bigint NOT NULL DEFAULT '0',
  `pagenum` bigint NOT NULL DEFAULT '0',
  `subchapter` bigint NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contentformat` smallint NOT NULL DEFAULT '0',
  `hidden` tinyint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `importsrc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_bookchap_boo_ix` (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines book_chapters';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_book_chapters`
--

LOCK TABLES `mdl_book_chapters` WRITE;
/*!40000 ALTER TABLE `mdl_book_chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_book_chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_filters`
--

DROP TABLE IF EXISTS `mdl_cache_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_cache_filters` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `version` bigint NOT NULL DEFAULT '0',
  `md5key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `rawtext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_cachfilt_filmd5_ix` (`filter`,`md5key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='For keeping information about cached data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cache_filters`
--

LOCK TABLES `mdl_cache_filters` WRITE;
/*!40000 ALTER TABLE `mdl_cache_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cache_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_flags`
--

DROP TABLE IF EXISTS `mdl_cache_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_cache_flags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flagtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expiry` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_cachflag_fla_ix` (`flagtype`),
  KEY `mdl_cachflag_nam_ix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Cache of time-sensitive flags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cache_flags`
--

LOCK TABLES `mdl_cache_flags` WRITE;
/*!40000 ALTER TABLE `mdl_cache_flags` DISABLE KEYS */;
INSERT INTO `mdl_cache_flags` VALUES (1,'userpreferenceschanged','2',1702730594,'1',1702759394),(2,'userpreferenceschanged','3',1702491305,'1',1702520105),(3,'accesslib/dirtycontexts','/1/16',1702490218,'1',1702519018),(4,'accesslib/dirtyusers','2',1702496000,'1',1702524800),(5,'accesslib/dirtyusers','3',1702496000,'1',1702524800),(6,'userpreferenceschanged','4',1702494667,'1',1702523467),(7,'accesslib/dirtyusers','4',1702495989,'1',1702524789),(8,'userpreferenceschanged','5',1702730072,'1',1702758872),(9,'userpreferenceschanged','6',1702730072,'1',1702758872),(10,'userpreferenceschanged','7',1702730072,'1',1702758872),(11,'userpreferenceschanged','8',1702730072,'1',1702758872),(12,'userpreferenceschanged','9',1702730072,'1',1702758872),(13,'userpreferenceschanged','10',1702730072,'1',1702758872),(14,'userpreferenceschanged','11',1702730072,'1',1702758872),(15,'userpreferenceschanged','12',1702730072,'1',1702758872),(16,'userpreferenceschanged','13',1702730072,'1',1702758872),(17,'userpreferenceschanged','14',1702730072,'1',1702758872),(18,'userpreferenceschanged','15',1702730072,'1',1702758872),(19,'userpreferenceschanged','16',1702730072,'1',1702758872),(20,'userpreferenceschanged','17',1702730072,'1',1702758872),(21,'userpreferenceschanged','18',1702730072,'1',1702758872),(22,'userpreferenceschanged','19',1702730072,'1',1702758872),(23,'userpreferenceschanged','20',1702730072,'1',1702758872),(24,'userpreferenceschanged','21',1702730072,'1',1702758872),(25,'userpreferenceschanged','22',1702730072,'1',1702758872),(26,'userpreferenceschanged','23',1702730072,'1',1702758872),(27,'userpreferenceschanged','24',1702730072,'1',1702758872),(28,'userpreferenceschanged','25',1702730072,'1',1702758872),(29,'userpreferenceschanged','26',1702731142,'1',1702759942),(30,'userpreferenceschanged','27',1702731493,'1',1702760293),(31,'userpreferenceschanged','28',1702731142,'1',1702759942),(32,'userpreferenceschanged','29',1702731142,'1',1702759942),(33,'userpreferenceschanged','30',1702731142,'1',1702759942),(34,'userpreferenceschanged','31',1702731142,'1',1702759942),(35,'userpreferenceschanged','32',1702731709,'1',1702760509),(36,'userpreferenceschanged','33',1702731142,'1',1702759942);
/*!40000 ALTER TABLE `mdl_cache_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_capabilities`
--

DROP TABLE IF EXISTS `mdl_capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_capabilities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `captype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `contextlevel` bigint NOT NULL DEFAULT '0',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `riskbitmask` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_capa_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=722 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='this defines all capabilities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_capabilities`
--

LOCK TABLES `mdl_capabilities` WRITE;
/*!40000 ALTER TABLE `mdl_capabilities` DISABLE KEYS */;
INSERT INTO `mdl_capabilities` VALUES (1,'moodle/site:config','write',10,'moodle',62),(2,'moodle/site:configview','read',10,'moodle',0),(3,'moodle/site:readallmessages','read',10,'moodle',8),(4,'moodle/site:manageallmessaging','write',10,'moodle',8),(5,'moodle/site:deleteanymessage','write',10,'moodle',32),(6,'moodle/site:sendmessage','write',10,'moodle',16),(7,'moodle/site:senderrormessage','write',10,'moodle',16),(8,'moodle/site:deleteownmessage','write',10,'moodle',0),(9,'moodle/site:approvecourse','write',40,'moodle',4),(10,'moodle/backup:backupcourse','write',50,'moodle',28),(11,'moodle/backup:backupsection','write',50,'moodle',28),(12,'moodle/backup:backupactivity','write',70,'moodle',28),(13,'moodle/backup:backuptargetimport','read',50,'moodle',28),(14,'moodle/backup:downloadfile','write',50,'moodle',28),(15,'moodle/backup:configure','write',50,'moodle',28),(16,'moodle/backup:userinfo','read',50,'moodle',8),(17,'moodle/backup:anonymise','read',50,'moodle',8),(18,'moodle/restore:restorecourse','write',50,'moodle',28),(19,'moodle/restore:restoresection','write',50,'moodle',28),(20,'moodle/restore:restoreactivity','write',50,'moodle',28),(21,'moodle/restore:viewautomatedfilearea','write',50,'moodle',28),(22,'moodle/restore:restoretargetimport','write',50,'moodle',28),(23,'moodle/restore:uploadfile','write',50,'moodle',28),(24,'moodle/restore:configure','write',50,'moodle',28),(25,'moodle/restore:rolldates','write',50,'moodle',0),(26,'moodle/restore:userinfo','write',50,'moodle',30),(27,'moodle/restore:createuser','write',10,'moodle',24),(28,'moodle/site:manageblocks','write',80,'moodle',20),(29,'moodle/site:accessallgroups','read',70,'moodle',0),(30,'moodle/site:viewanonymousevents','read',70,'moodle',8),(31,'moodle/site:viewfullnames','read',70,'moodle',0),(32,'moodle/site:viewuseridentity','read',70,'moodle',0),(33,'moodle/site:viewreports','read',50,'moodle',8),(34,'moodle/site:trustcontent','write',70,'moodle',4),(35,'moodle/site:uploadusers','write',10,'moodle',24),(36,'moodle/filter:manage','write',50,'moodle',0),(37,'moodle/user:create','write',10,'moodle',24),(38,'moodle/user:delete','write',10,'moodle',40),(39,'moodle/user:update','write',10,'moodle',24),(40,'moodle/user:viewdetails','read',50,'moodle',0),(41,'moodle/user:viewalldetails','read',30,'moodle',8),(42,'moodle/user:viewlastip','read',30,'moodle',8),(43,'moodle/user:viewhiddendetails','read',50,'moodle',8),(44,'moodle/user:loginas','write',50,'moodle',30),(45,'moodle/user:managesyspages','write',10,'moodle',0),(46,'moodle/user:manageblocks','write',30,'moodle',0),(47,'moodle/user:manageownblocks','write',10,'moodle',0),(48,'moodle/user:manageownfiles','write',10,'moodle',0),(49,'moodle/user:ignoreuserquota','write',10,'moodle',0),(50,'moodle/my:configsyspages','write',10,'moodle',0),(51,'moodle/role:assign','write',50,'moodle',28),(52,'moodle/role:review','read',50,'moodle',8),(53,'moodle/role:override','write',50,'moodle',28),(54,'moodle/role:safeoverride','write',50,'moodle',16),(55,'moodle/role:manage','write',10,'moodle',28),(56,'moodle/role:switchroles','read',50,'moodle',12),(57,'moodle/category:manage','write',40,'moodle',4),(58,'moodle/category:viewcourselist','read',40,'moodle',0),(59,'moodle/category:viewhiddencategories','read',40,'moodle',0),(60,'moodle/cohort:manage','write',40,'moodle',0),(61,'moodle/cohort:assign','write',40,'moodle',0),(62,'moodle/cohort:view','read',50,'moodle',0),(63,'moodle/cohort:configurecustomfields','write',10,'moodle',16),(64,'moodle/group:configurecustomfields','write',10,'moodle',16),(65,'moodle/course:create','write',40,'moodle',4),(66,'moodle/course:creategroupconversations','write',50,'moodle',4),(67,'moodle/course:request','write',40,'moodle',0),(68,'moodle/course:delete','write',50,'moodle',32),(69,'moodle/course:update','write',50,'moodle',4),(70,'moodle/course:view','read',50,'moodle',0),(71,'moodle/course:enrolreview','read',50,'moodle',8),(72,'moodle/course:enrolconfig','write',50,'moodle',8),(73,'moodle/course:reviewotherusers','read',50,'moodle',0),(74,'moodle/course:bulkmessaging','write',50,'moodle',16),(75,'moodle/course:viewhiddenuserfields','read',50,'moodle',8),(76,'moodle/course:viewhiddencourses','read',50,'moodle',0),(77,'moodle/course:visibility','write',50,'moodle',0),(78,'moodle/course:managefiles','write',50,'moodle',4),(79,'moodle/course:ignoreavailabilityrestrictions','read',70,'moodle',0),(80,'moodle/course:ignorefilesizelimits','write',50,'moodle',0),(81,'moodle/course:manageactivities','write',70,'moodle',4),(82,'moodle/course:activityvisibility','write',70,'moodle',0),(83,'moodle/course:viewhiddenactivities','read',70,'moodle',0),(84,'moodle/course:viewparticipants','read',50,'moodle',0),(85,'moodle/course:changefullname','write',50,'moodle',4),(86,'moodle/course:changeshortname','write',50,'moodle',4),(87,'moodle/course:changelockedcustomfields','write',50,'moodle',16),(88,'moodle/course:configurecustomfields','write',10,'moodle',16),(89,'moodle/course:renameroles','write',50,'moodle',0),(90,'moodle/course:changeidnumber','write',50,'moodle',4),(91,'moodle/course:changecategory','write',50,'moodle',4),(92,'moodle/course:changesummary','write',50,'moodle',4),(93,'moodle/course:setforcedlanguage','write',50,'moodle',0),(94,'moodle/site:viewparticipants','read',10,'moodle',0),(95,'moodle/course:isincompletionreports','read',50,'moodle',0),(96,'moodle/course:viewscales','read',50,'moodle',0),(97,'moodle/course:managescales','write',50,'moodle',0),(98,'moodle/course:managegroups','write',50,'moodle',4),(99,'moodle/course:viewhiddengroups','READ',50,'moodle',8),(100,'moodle/course:reset','write',50,'moodle',32),(101,'moodle/course:viewsuspendedusers','read',50,'moodle',0),(102,'moodle/course:tag','write',50,'moodle',16),(103,'moodle/blog:view','read',10,'moodle',0),(104,'moodle/blog:search','read',10,'moodle',0),(105,'moodle/blog:viewdrafts','read',10,'moodle',8),(106,'moodle/blog:create','write',10,'moodle',16),(107,'moodle/blog:manageentries','write',10,'moodle',16),(108,'moodle/blog:manageexternal','write',10,'moodle',16),(109,'moodle/calendar:manageownentries','write',50,'moodle',16),(110,'moodle/calendar:managegroupentries','write',50,'moodle',16),(111,'moodle/calendar:manageentries','write',50,'moodle',16),(112,'moodle/user:editprofile','write',30,'moodle',24),(113,'moodle/user:editownprofile','write',10,'moodle',16),(114,'moodle/user:changeownpassword','write',10,'moodle',0),(115,'moodle/user:readuserposts','read',30,'moodle',0),(116,'moodle/user:readuserblogs','read',30,'moodle',0),(117,'moodle/user:viewuseractivitiesreport','read',30,'moodle',8),(118,'moodle/user:editmessageprofile','write',30,'moodle',16),(119,'moodle/user:editownmessageprofile','write',10,'moodle',0),(120,'moodle/question:managecategory','write',50,'moodle',20),(121,'moodle/question:add','write',50,'moodle',20),(122,'moodle/question:editmine','write',50,'moodle',20),(123,'moodle/question:editall','write',50,'moodle',20),(124,'moodle/question:viewmine','read',50,'moodle',0),(125,'moodle/question:viewall','read',50,'moodle',0),(126,'moodle/question:usemine','read',50,'moodle',0),(127,'moodle/question:useall','read',50,'moodle',0),(128,'moodle/question:movemine','write',50,'moodle',0),(129,'moodle/question:moveall','write',50,'moodle',0),(130,'moodle/question:config','write',10,'moodle',2),(131,'moodle/question:flag','write',50,'moodle',0),(132,'moodle/question:tagmine','write',50,'moodle',0),(133,'moodle/question:tagall','write',50,'moodle',0),(134,'moodle/site:doclinks','read',10,'moodle',0),(135,'moodle/course:sectionvisibility','write',50,'moodle',0),(136,'moodle/course:useremail','write',50,'moodle',0),(137,'moodle/course:viewhiddensections','read',50,'moodle',0),(138,'moodle/course:setcurrentsection','write',50,'moodle',0),(139,'moodle/course:movesections','write',50,'moodle',0),(140,'moodle/site:mnetlogintoremote','read',10,'moodle',0),(141,'moodle/grade:viewall','read',50,'moodle',8),(142,'moodle/grade:view','read',50,'moodle',0),(143,'moodle/grade:viewhidden','read',50,'moodle',8),(144,'moodle/grade:import','write',50,'moodle',12),(145,'moodle/grade:export','read',50,'moodle',8),(146,'moodle/grade:manage','write',50,'moodle',12),(147,'moodle/grade:edit','write',50,'moodle',12),(148,'moodle/grade:managegradingforms','write',50,'moodle',12),(149,'moodle/grade:sharegradingforms','write',10,'moodle',4),(150,'moodle/grade:managesharedforms','write',10,'moodle',4),(151,'moodle/grade:manageoutcomes','write',50,'moodle',0),(152,'moodle/grade:manageletters','write',50,'moodle',0),(153,'moodle/grade:hide','write',50,'moodle',0),(154,'moodle/grade:lock','write',50,'moodle',0),(155,'moodle/grade:unlock','write',50,'moodle',0),(156,'moodle/my:manageblocks','write',10,'moodle',0),(157,'moodle/notes:view','read',50,'moodle',0),(158,'moodle/notes:manage','write',50,'moodle',16),(159,'moodle/tag:manage','write',10,'moodle',16),(160,'moodle/tag:edit','write',10,'moodle',16),(161,'moodle/tag:flag','write',10,'moodle',16),(162,'moodle/tag:editblocks','write',10,'moodle',0),(163,'moodle/block:view','read',80,'moodle',0),(164,'moodle/block:edit','write',80,'moodle',20),(165,'moodle/portfolio:export','read',10,'moodle',0),(166,'moodle/comment:view','read',50,'moodle',0),(167,'moodle/comment:post','write',50,'moodle',24),(168,'moodle/comment:delete','write',50,'moodle',32),(169,'moodle/webservice:createtoken','write',10,'moodle',62),(170,'moodle/webservice:managealltokens','write',10,'moodle',42),(171,'moodle/webservice:createmobiletoken','write',10,'moodle',24),(172,'moodle/rating:view','read',50,'moodle',0),(173,'moodle/rating:viewany','read',50,'moodle',8),(174,'moodle/rating:viewall','read',50,'moodle',8),(175,'moodle/rating:rate','write',50,'moodle',0),(176,'moodle/course:markcomplete','write',50,'moodle',0),(177,'moodle/course:overridecompletion','write',50,'moodle',0),(178,'moodle/badges:manageglobalsettings','write',10,'moodle',34),(179,'moodle/badges:viewbadges','read',50,'moodle',0),(180,'moodle/badges:manageownbadges','write',30,'moodle',0),(181,'moodle/badges:viewotherbadges','read',30,'moodle',0),(182,'moodle/badges:earnbadge','write',50,'moodle',0),(183,'moodle/badges:createbadge','write',50,'moodle',16),(184,'moodle/badges:deletebadge','write',50,'moodle',32),(185,'moodle/badges:configuredetails','write',50,'moodle',16),(186,'moodle/badges:configurecriteria','write',50,'moodle',4),(187,'moodle/badges:configuremessages','write',50,'moodle',16),(188,'moodle/badges:awardbadge','write',50,'moodle',16),(189,'moodle/badges:revokebadge','write',50,'moodle',16),(190,'moodle/badges:viewawarded','read',50,'moodle',8),(191,'moodle/site:forcelanguage','read',10,'moodle',0),(192,'moodle/search:query','read',10,'moodle',0),(193,'moodle/competency:competencymanage','write',40,'moodle',0),(194,'moodle/competency:competencyview','read',40,'moodle',0),(195,'moodle/competency:competencygrade','write',50,'moodle',0),(196,'moodle/competency:coursecompetencymanage','write',50,'moodle',0),(197,'moodle/competency:coursecompetencyconfigure','write',70,'moodle',0),(198,'moodle/competency:coursecompetencygradable','read',50,'moodle',0),(199,'moodle/competency:coursecompetencyview','read',50,'moodle',0),(200,'moodle/competency:evidencedelete','write',30,'moodle',0),(201,'moodle/competency:planmanage','write',30,'moodle',0),(202,'moodle/competency:planmanagedraft','write',30,'moodle',0),(203,'moodle/competency:planmanageown','write',30,'moodle',0),(204,'moodle/competency:planmanageowndraft','write',30,'moodle',0),(205,'moodle/competency:planview','read',30,'moodle',0),(206,'moodle/competency:planviewdraft','read',30,'moodle',0),(207,'moodle/competency:planviewown','read',30,'moodle',0),(208,'moodle/competency:planviewowndraft','read',30,'moodle',0),(209,'moodle/competency:planrequestreview','write',30,'moodle',0),(210,'moodle/competency:planrequestreviewown','write',30,'moodle',0),(211,'moodle/competency:planreview','write',30,'moodle',0),(212,'moodle/competency:plancomment','write',30,'moodle',0),(213,'moodle/competency:plancommentown','write',30,'moodle',0),(214,'moodle/competency:usercompetencyview','read',30,'moodle',0),(215,'moodle/competency:usercompetencyrequestreview','write',30,'moodle',0),(216,'moodle/competency:usercompetencyrequestreviewown','write',30,'moodle',0),(217,'moodle/competency:usercompetencyreview','write',30,'moodle',0),(218,'moodle/competency:usercompetencycomment','write',30,'moodle',0),(219,'moodle/competency:usercompetencycommentown','write',30,'moodle',0),(220,'moodle/competency:templatemanage','write',40,'moodle',0),(221,'moodle/analytics:listinsights','read',50,'moodle',8),(222,'moodle/analytics:managemodels','write',10,'moodle',2),(223,'moodle/competency:templateview','read',40,'moodle',0),(224,'moodle/competency:userevidencemanage','write',30,'moodle',0),(225,'moodle/competency:userevidencemanageown','write',30,'moodle',0),(226,'moodle/competency:userevidenceview','read',30,'moodle',0),(227,'moodle/site:maintenanceaccess','write',10,'moodle',0),(228,'moodle/site:messageanyuser','write',10,'moodle',16),(229,'moodle/site:managecontextlocks','write',70,'moodle',0),(230,'moodle/course:togglecompletion','write',70,'moodle',0),(231,'moodle/analytics:listowninsights','read',10,'moodle',0),(232,'moodle/h5p:setdisplayoptions','write',70,'moodle',0),(233,'moodle/h5p:deploy','write',70,'moodle',4),(234,'moodle/h5p:updatelibraries','write',70,'moodle',4),(235,'moodle/course:recommendactivity','write',10,'moodle',0),(236,'moodle/contentbank:access','read',50,'moodle',0),(237,'moodle/contentbank:upload','write',50,'moodle',16),(238,'moodle/contentbank:deleteanycontent','write',50,'moodle',32),(239,'moodle/contentbank:deleteowncontent','write',50,'moodle',0),(240,'moodle/contentbank:manageanycontent','write',50,'moodle',32),(241,'moodle/contentbank:manageowncontent','write',50,'moodle',0),(242,'moodle/contentbank:useeditor','write',50,'moodle',16),(243,'moodle/contentbank:downloadcontent','read',50,'moodle',0),(244,'moodle/contentbank:copyanycontent','write',50,'moodle',16),(245,'moodle/contentbank:copycontent','write',50,'moodle',16),(246,'moodle/course:downloadcoursecontent','read',50,'moodle',0),(247,'moodle/course:configuredownloadcontent','write',50,'moodle',0),(248,'moodle/payment:manageaccounts','write',50,'moodle',42),(249,'moodle/payment:viewpayments','read',50,'moodle',8),(250,'moodle/contentbank:viewunlistedcontent','read',50,'moodle',0),(251,'moodle/reportbuilder:view','read',10,'moodle',0),(252,'moodle/reportbuilder:edit','write',10,'moodle',0),(253,'moodle/reportbuilder:editall','write',10,'moodle',0),(254,'moodle/reportbuilder:scheduleviewas','read',10,'moodle',0),(255,'moodle/moodlenet:shareactivity','read',50,'moodle',0),(256,'moodle/course:configurecoursecommunication','write',50,'moodle',0),(257,'moodle/moodlenet:sharecourse','read',50,'moodle',0),(258,'mod/assign:view','read',70,'mod_assign',0),(259,'mod/assign:submit','write',70,'mod_assign',0),(260,'mod/assign:grade','write',70,'mod_assign',4),(261,'mod/assign:exportownsubmission','read',70,'mod_assign',0),(262,'mod/assign:addinstance','write',50,'mod_assign',4),(263,'mod/assign:editothersubmission','write',70,'mod_assign',41),(264,'mod/assign:grantextension','write',70,'mod_assign',0),(265,'mod/assign:revealidentities','write',70,'mod_assign',0),(266,'mod/assign:reviewgrades','write',70,'mod_assign',0),(267,'mod/assign:releasegrades','write',70,'mod_assign',0),(268,'mod/assign:managegrades','write',70,'mod_assign',0),(269,'mod/assign:manageallocations','write',70,'mod_assign',0),(270,'mod/assign:viewgrades','read',70,'mod_assign',0),(271,'mod/assign:viewblinddetails','write',70,'mod_assign',8),(272,'mod/assign:receivegradernotifications','read',70,'mod_assign',0),(273,'mod/assign:manageoverrides','write',70,'mod_assign',0),(274,'mod/assign:showhiddengrader','read',70,'mod_assign',0),(275,'mod/assign:viewownsubmissionsummary','read',70,'mod_assign',0),(276,'mod/bigbluebuttonbn:addinstance','write',50,'mod_bigbluebuttonbn',4),(277,'mod/bigbluebuttonbn:addinstancewithmeeting','write',70,'mod_bigbluebuttonbn',0),(278,'mod/bigbluebuttonbn:addinstancewithrecording','write',70,'mod_bigbluebuttonbn',0),(279,'mod/bigbluebuttonbn:join','read',70,'mod_bigbluebuttonbn',0),(280,'mod/bigbluebuttonbn:view','read',70,'mod_bigbluebuttonbn',0),(281,'mod/bigbluebuttonbn:managerecordings','write',70,'mod_bigbluebuttonbn',0),(282,'mod/bigbluebuttonbn:viewallrecordingformats','read',70,'mod_bigbluebuttonbn',0),(283,'mod/bigbluebuttonbn:publishrecordings','write',70,'mod_bigbluebuttonbn',0),(284,'mod/bigbluebuttonbn:unpublishrecordings','write',70,'mod_bigbluebuttonbn',0),(285,'mod/bigbluebuttonbn:protectrecordings','write',70,'mod_bigbluebuttonbn',0),(286,'mod/bigbluebuttonbn:unprotectrecordings','write',70,'mod_bigbluebuttonbn',0),(287,'mod/bigbluebuttonbn:deleterecordings','write',70,'mod_bigbluebuttonbn',0),(288,'mod/bigbluebuttonbn:importrecordings','write',70,'mod_bigbluebuttonbn',0),(289,'mod/book:addinstance','write',50,'mod_book',4),(290,'mod/book:read','read',70,'mod_book',0),(291,'mod/book:viewhiddenchapters','read',70,'mod_book',0),(292,'mod/book:edit','write',70,'mod_book',4),(293,'mod/chat:addinstance','write',50,'mod_chat',4),(294,'mod/chat:chat','write',70,'mod_chat',16),(295,'mod/chat:readlog','read',70,'mod_chat',0),(296,'mod/chat:deletelog','write',70,'mod_chat',0),(297,'mod/chat:exportparticipatedsession','read',70,'mod_chat',8),(298,'mod/chat:exportsession','read',70,'mod_chat',8),(299,'mod/chat:view','read',70,'mod_chat',0),(300,'mod/choice:addinstance','write',50,'mod_choice',4),(301,'mod/choice:choose','write',70,'mod_choice',0),(302,'mod/choice:readresponses','read',70,'mod_choice',0),(303,'mod/choice:deleteresponses','write',70,'mod_choice',0),(304,'mod/choice:downloadresponses','read',70,'mod_choice',0),(305,'mod/choice:view','read',70,'mod_choice',0),(306,'mod/data:addinstance','write',50,'mod_data',4),(307,'mod/data:viewentry','read',70,'mod_data',0),(308,'mod/data:writeentry','write',70,'mod_data',16),(309,'mod/data:comment','write',70,'mod_data',16),(310,'mod/data:rate','write',70,'mod_data',0),(311,'mod/data:viewrating','read',70,'mod_data',0),(312,'mod/data:viewanyrating','read',70,'mod_data',8),(313,'mod/data:viewallratings','read',70,'mod_data',8),(314,'mod/data:approve','write',70,'mod_data',16),(315,'mod/data:manageentries','write',70,'mod_data',16),(316,'mod/data:managecomments','write',70,'mod_data',16),(317,'mod/data:managetemplates','write',70,'mod_data',20),(318,'mod/data:viewalluserpresets','read',70,'mod_data',0),(319,'mod/data:manageuserpresets','write',70,'mod_data',20),(320,'mod/data:exportentry','read',70,'mod_data',8),(321,'mod/data:exportownentry','read',70,'mod_data',0),(322,'mod/data:exportallentries','read',70,'mod_data',8),(323,'mod/data:exportuserinfo','read',70,'mod_data',8),(324,'mod/data:view','read',70,'mod_data',0),(325,'mod/feedback:addinstance','write',50,'mod_feedback',4),(326,'mod/feedback:view','read',70,'mod_feedback',0),(327,'mod/feedback:complete','write',70,'mod_feedback',16),(328,'mod/feedback:viewanalysepage','read',70,'mod_feedback',8),(329,'mod/feedback:deletesubmissions','write',70,'mod_feedback',0),(330,'mod/feedback:mapcourse','write',70,'mod_feedback',0),(331,'mod/feedback:edititems','write',70,'mod_feedback',20),(332,'mod/feedback:createprivatetemplate','write',70,'mod_feedback',16),(333,'mod/feedback:createpublictemplate','write',70,'mod_feedback',16),(334,'mod/feedback:deletetemplate','write',70,'mod_feedback',0),(335,'mod/feedback:viewreports','read',70,'mod_feedback',8),(336,'mod/feedback:receivemail','read',70,'mod_feedback',8),(337,'mod/folder:addinstance','write',50,'mod_folder',4),(338,'mod/folder:view','read',70,'mod_folder',0),(339,'mod/folder:managefiles','write',70,'mod_folder',20),(340,'mod/forum:addinstance','write',50,'mod_forum',4),(341,'mod/forum:viewdiscussion','read',70,'mod_forum',0),(342,'mod/forum:viewhiddentimedposts','read',70,'mod_forum',0),(343,'mod/forum:startdiscussion','write',70,'mod_forum',16),(344,'mod/forum:replypost','write',70,'mod_forum',16),(345,'mod/forum:addnews','write',70,'mod_forum',16),(346,'mod/forum:replynews','write',70,'mod_forum',16),(347,'mod/forum:viewrating','read',70,'mod_forum',0),(348,'mod/forum:viewanyrating','read',70,'mod_forum',8),(349,'mod/forum:viewallratings','read',70,'mod_forum',8),(350,'mod/forum:rate','write',70,'mod_forum',0),(351,'mod/forum:postprivatereply','write',70,'mod_forum',0),(352,'mod/forum:readprivatereplies','read',70,'mod_forum',0),(353,'mod/forum:createattachment','write',70,'mod_forum',16),(354,'mod/forum:deleteownpost','write',70,'mod_forum',0),(355,'mod/forum:deleteanypost','write',70,'mod_forum',0),(356,'mod/forum:splitdiscussions','write',70,'mod_forum',0),(357,'mod/forum:movediscussions','write',70,'mod_forum',0),(358,'mod/forum:pindiscussions','write',70,'mod_forum',0),(359,'mod/forum:editanypost','write',70,'mod_forum',16),(360,'mod/forum:viewqandawithoutposting','read',70,'mod_forum',0),(361,'mod/forum:viewsubscribers','read',70,'mod_forum',0),(362,'mod/forum:managesubscriptions','write',70,'mod_forum',16),(363,'mod/forum:postwithoutthrottling','write',70,'mod_forum',16),(364,'mod/forum:exportdiscussion','read',70,'mod_forum',8),(365,'mod/forum:exportforum','read',70,'mod_forum',8),(366,'mod/forum:exportpost','read',70,'mod_forum',8),(367,'mod/forum:exportownpost','read',70,'mod_forum',8),(368,'mod/forum:addquestion','write',70,'mod_forum',16),(369,'mod/forum:allowforcesubscribe','read',70,'mod_forum',0),(370,'mod/forum:canposttomygroups','write',70,'mod_forum',0),(371,'mod/forum:canoverridediscussionlock','write',70,'mod_forum',0),(372,'mod/forum:canoverridecutoff','write',70,'mod_forum',0),(373,'mod/forum:cantogglefavourite','write',70,'mod_forum',0),(374,'mod/forum:grade','write',70,'mod_forum',0),(375,'mod/forum:canmailnow','write',70,'mod_forum',16),(376,'mod/glossary:addinstance','write',50,'mod_glossary',4),(377,'mod/glossary:view','read',70,'mod_glossary',0),(378,'mod/glossary:write','write',70,'mod_glossary',16),(379,'mod/glossary:manageentries','write',70,'mod_glossary',16),(380,'mod/glossary:managecategories','write',70,'mod_glossary',16),(381,'mod/glossary:comment','write',70,'mod_glossary',16),(382,'mod/glossary:managecomments','write',70,'mod_glossary',16),(383,'mod/glossary:import','write',70,'mod_glossary',16),(384,'mod/glossary:export','read',70,'mod_glossary',0),(385,'mod/glossary:approve','write',70,'mod_glossary',16),(386,'mod/glossary:rate','write',70,'mod_glossary',0),(387,'mod/glossary:viewrating','read',70,'mod_glossary',0),(388,'mod/glossary:viewanyrating','read',70,'mod_glossary',8),(389,'mod/glossary:viewallratings','read',70,'mod_glossary',8),(390,'mod/glossary:exportentry','read',70,'mod_glossary',8),(391,'mod/glossary:exportownentry','read',70,'mod_glossary',0),(392,'mod/h5pactivity:view','read',70,'mod_h5pactivity',0),(393,'mod/h5pactivity:addinstance','write',50,'mod_h5pactivity',0),(394,'mod/h5pactivity:submit','write',70,'mod_h5pactivity',0),(395,'mod/h5pactivity:reviewattempts','read',70,'mod_h5pactivity',0),(396,'mod/imscp:view','read',70,'mod_imscp',0),(397,'mod/imscp:addinstance','write',50,'mod_imscp',4),(398,'mod/label:addinstance','write',50,'mod_label',4),(399,'mod/label:view','read',70,'mod_label',0),(400,'mod/lesson:addinstance','write',50,'mod_lesson',4),(401,'mod/lesson:edit','write',70,'mod_lesson',4),(402,'mod/lesson:grade','write',70,'mod_lesson',20),(403,'mod/lesson:viewreports','read',70,'mod_lesson',8),(404,'mod/lesson:manage','write',70,'mod_lesson',0),(405,'mod/lesson:manageoverrides','write',70,'mod_lesson',0),(406,'mod/lesson:view','read',70,'mod_lesson',0),(407,'mod/lti:view','read',70,'mod_lti',0),(408,'mod/lti:addinstance','write',50,'mod_lti',4),(409,'mod/lti:manage','write',70,'mod_lti',8),(410,'mod/lti:admin','write',70,'mod_lti',8),(411,'mod/lti:addcoursetool','write',50,'mod_lti',0),(412,'mod/lti:addpreconfiguredinstance','write',50,'mod_lti',0),(413,'mod/lti:requesttooladd','write',50,'mod_lti',0),(414,'mod/page:view','read',70,'mod_page',0),(415,'mod/page:addinstance','write',50,'mod_page',4),(416,'mod/quiz:view','read',70,'mod_quiz',0),(417,'mod/quiz:addinstance','write',50,'mod_quiz',4),(418,'mod/quiz:attempt','write',70,'mod_quiz',16),(419,'mod/quiz:reviewmyattempts','read',70,'mod_quiz',0),(420,'mod/quiz:manage','write',70,'mod_quiz',16),(421,'mod/quiz:manageoverrides','write',70,'mod_quiz',0),(422,'mod/quiz:viewoverrides','read',70,'mod_quiz',0),(423,'mod/quiz:preview','write',70,'mod_quiz',0),(424,'mod/quiz:grade','write',70,'mod_quiz',20),(425,'mod/quiz:regrade','write',70,'mod_quiz',16),(426,'mod/quiz:viewreports','read',70,'mod_quiz',8),(427,'mod/quiz:deleteattempts','write',70,'mod_quiz',32),(428,'mod/quiz:reopenattempts','write',70,'mod_quiz',0),(429,'mod/quiz:ignoretimelimits','read',70,'mod_quiz',0),(430,'mod/quiz:emailconfirmsubmission','read',70,'mod_quiz',0),(431,'mod/quiz:emailnotifysubmission','read',70,'mod_quiz',0),(432,'mod/quiz:emailwarnoverdue','read',70,'mod_quiz',0),(433,'mod/quiz:emailnotifyattemptgraded','read',70,'mod_quiz',0),(434,'mod/resource:view','read',70,'mod_resource',0),(435,'mod/resource:addinstance','write',50,'mod_resource',4),(436,'mod/scorm:addinstance','write',50,'mod_scorm',4),(437,'mod/scorm:viewreport','read',70,'mod_scorm',0),(438,'mod/scorm:skipview','read',70,'mod_scorm',0),(439,'mod/scorm:savetrack','write',70,'mod_scorm',0),(440,'mod/scorm:viewscores','read',70,'mod_scorm',0),(441,'mod/scorm:deleteresponses','write',70,'mod_scorm',0),(442,'mod/scorm:deleteownresponses','write',70,'mod_scorm',0),(443,'mod/survey:addinstance','write',50,'mod_survey',4),(444,'mod/survey:participate','read',70,'mod_survey',0),(445,'mod/survey:readresponses','read',70,'mod_survey',0),(446,'mod/survey:download','read',70,'mod_survey',0),(447,'mod/url:view','read',70,'mod_url',0),(448,'mod/url:addinstance','write',50,'mod_url',4),(449,'mod/wiki:addinstance','write',50,'mod_wiki',4),(450,'mod/wiki:viewpage','read',70,'mod_wiki',0),(451,'mod/wiki:editpage','write',70,'mod_wiki',16),(452,'mod/wiki:createpage','write',70,'mod_wiki',16),(453,'mod/wiki:viewcomment','read',70,'mod_wiki',0),(454,'mod/wiki:editcomment','write',70,'mod_wiki',16),(455,'mod/wiki:managecomment','write',70,'mod_wiki',0),(456,'mod/wiki:managefiles','write',70,'mod_wiki',0),(457,'mod/wiki:overridelock','write',70,'mod_wiki',0),(458,'mod/wiki:managewiki','write',70,'mod_wiki',0),(459,'mod/workshop:view','read',70,'mod_workshop',0),(460,'mod/workshop:addinstance','write',50,'mod_workshop',4),(461,'mod/workshop:switchphase','write',70,'mod_workshop',0),(462,'mod/workshop:editdimensions','write',70,'mod_workshop',4),(463,'mod/workshop:submit','write',70,'mod_workshop',0),(464,'mod/workshop:peerassess','write',70,'mod_workshop',0),(465,'mod/workshop:manageexamples','write',70,'mod_workshop',0),(466,'mod/workshop:allocate','write',70,'mod_workshop',0),(467,'mod/workshop:publishsubmissions','write',70,'mod_workshop',0),(468,'mod/workshop:viewauthornames','read',70,'mod_workshop',0),(469,'mod/workshop:viewreviewernames','read',70,'mod_workshop',0),(470,'mod/workshop:viewallsubmissions','read',70,'mod_workshop',0),(471,'mod/workshop:viewpublishedsubmissions','read',70,'mod_workshop',0),(472,'mod/workshop:viewauthorpublished','read',70,'mod_workshop',0),(473,'mod/workshop:viewallassessments','read',70,'mod_workshop',0),(474,'mod/workshop:overridegrades','write',70,'mod_workshop',0),(475,'mod/workshop:ignoredeadlines','write',70,'mod_workshop',0),(476,'mod/workshop:deletesubmissions','write',70,'mod_workshop',0),(477,'mod/workshop:exportsubmissions','read',70,'mod_workshop',0),(478,'auth/oauth2:managelinkedlogins','write',30,'auth_oauth2',0),(479,'communication/matrix:moderator','read',50,'communication_matrix',0),(480,'enrol/category:synchronised','write',10,'enrol_category',0),(481,'enrol/category:config','write',50,'enrol_category',0),(482,'enrol/cohort:config','write',50,'enrol_cohort',0),(483,'enrol/cohort:unenrol','write',50,'enrol_cohort',0),(484,'enrol/database:unenrol','write',50,'enrol_database',0),(485,'enrol/database:config','write',50,'enrol_database',0),(486,'enrol/fee:config','write',50,'enrol_fee',0),(487,'enrol/fee:manage','write',50,'enrol_fee',0),(488,'enrol/fee:unenrol','write',50,'enrol_fee',0),(489,'enrol/fee:unenrolself','write',50,'enrol_fee',0),(490,'enrol/flatfile:manage','write',50,'enrol_flatfile',0),(491,'enrol/flatfile:unenrol','write',50,'enrol_flatfile',0),(492,'enrol/guest:config','write',50,'enrol_guest',0),(493,'enrol/imsenterprise:config','write',50,'enrol_imsenterprise',0),(494,'enrol/ldap:manage','write',50,'enrol_ldap',0),(495,'enrol/lti:config','write',50,'enrol_lti',0),(496,'enrol/lti:unenrol','write',50,'enrol_lti',0),(497,'enrol/manual:config','write',50,'enrol_manual',0),(498,'enrol/manual:enrol','write',50,'enrol_manual',0),(499,'enrol/manual:manage','write',50,'enrol_manual',0),(500,'enrol/manual:unenrol','write',50,'enrol_manual',0),(501,'enrol/manual:unenrolself','write',50,'enrol_manual',0),(502,'enrol/meta:config','write',50,'enrol_meta',0),(503,'enrol/meta:selectaslinked','read',50,'enrol_meta',0),(504,'enrol/meta:unenrol','write',50,'enrol_meta',0),(505,'enrol/mnet:config','write',50,'enrol_mnet',0),(506,'enrol/paypal:config','write',50,'enrol_paypal',0),(507,'enrol/paypal:manage','write',50,'enrol_paypal',0),(508,'enrol/paypal:unenrol','write',50,'enrol_paypal',0),(509,'enrol/paypal:unenrolself','write',50,'enrol_paypal',0),(510,'enrol/self:config','write',50,'enrol_self',0),(511,'enrol/self:manage','write',50,'enrol_self',0),(512,'enrol/self:holdkey','write',50,'enrol_self',0),(513,'enrol/self:unenrolself','write',50,'enrol_self',0),(514,'enrol/self:unenrol','write',50,'enrol_self',0),(515,'enrol/self:enrolself','write',50,'enrol_self',0),(516,'message/airnotifier:managedevice','write',10,'message_airnotifier',0),(517,'block/accessreview:addinstance','write',80,'block_accessreview',0),(518,'block/accessreview:view','read',80,'block_accessreview',0),(519,'block/activity_modules:addinstance','write',80,'block_activity_modules',20),(520,'block/activity_results:addinstance','write',80,'block_activity_results',20),(521,'block/admin_bookmarks:myaddinstance','write',10,'block_admin_bookmarks',0),(522,'block/admin_bookmarks:addinstance','write',80,'block_admin_bookmarks',20),(523,'block/badges:addinstance','read',80,'block_badges',0),(524,'block/badges:myaddinstance','read',10,'block_badges',8),(525,'block/blog_menu:addinstance','write',80,'block_blog_menu',20),(526,'block/blog_recent:addinstance','write',80,'block_blog_recent',20),(527,'block/blog_tags:addinstance','write',80,'block_blog_tags',20),(528,'block/calendar_month:myaddinstance','write',10,'block_calendar_month',0),(529,'block/calendar_month:addinstance','write',80,'block_calendar_month',20),(530,'block/calendar_upcoming:myaddinstance','write',10,'block_calendar_upcoming',0),(531,'block/calendar_upcoming:addinstance','write',80,'block_calendar_upcoming',20),(532,'block/comments:myaddinstance','write',10,'block_comments',0),(533,'block/comments:addinstance','write',80,'block_comments',20),(534,'block/completionstatus:addinstance','write',80,'block_completionstatus',20),(535,'block/course_list:myaddinstance','write',10,'block_course_list',0),(536,'block/course_list:addinstance','write',80,'block_course_list',20),(537,'block/course_summary:addinstance','write',80,'block_course_summary',20),(538,'block/feedback:addinstance','write',80,'block_feedback',20),(539,'block/globalsearch:myaddinstance','write',10,'block_globalsearch',0),(540,'block/globalsearch:addinstance','write',80,'block_globalsearch',0),(541,'block/glossary_random:myaddinstance','write',10,'block_glossary_random',0),(542,'block/glossary_random:addinstance','write',80,'block_glossary_random',20),(543,'block/html:myaddinstance','write',10,'block_html',0),(544,'block/html:addinstance','write',80,'block_html',20),(545,'block/login:addinstance','write',80,'block_login',20),(546,'block/lp:addinstance','write',10,'block_lp',0),(547,'block/lp:myaddinstance','write',10,'block_lp',0),(548,'block/mentees:myaddinstance','write',10,'block_mentees',0),(549,'block/mentees:addinstance','write',80,'block_mentees',20),(550,'block/mnet_hosts:myaddinstance','write',10,'block_mnet_hosts',0),(551,'block/mnet_hosts:addinstance','write',80,'block_mnet_hosts',20),(552,'block/myoverview:myaddinstance','write',10,'block_myoverview',0),(553,'block/myprofile:myaddinstance','write',10,'block_myprofile',0),(554,'block/myprofile:addinstance','write',80,'block_myprofile',20),(555,'block/navigation:myaddinstance','write',10,'block_navigation',0),(556,'block/navigation:addinstance','write',80,'block_navigation',20),(557,'block/news_items:myaddinstance','write',10,'block_news_items',0),(558,'block/news_items:addinstance','write',80,'block_news_items',20),(559,'block/online_users:myaddinstance','write',10,'block_online_users',0),(560,'block/online_users:addinstance','write',80,'block_online_users',20),(561,'block/online_users:viewlist','read',80,'block_online_users',0),(562,'block/private_files:myaddinstance','write',10,'block_private_files',0),(563,'block/private_files:addinstance','write',80,'block_private_files',20),(564,'block/recent_activity:addinstance','write',80,'block_recent_activity',20),(565,'block/recent_activity:viewaddupdatemodule','read',50,'block_recent_activity',0),(566,'block/recent_activity:viewdeletemodule','read',50,'block_recent_activity',0),(567,'block/recentlyaccessedcourses:myaddinstance','write',10,'block_recentlyaccessedcourses',0),(568,'block/recentlyaccesseditems:myaddinstance','write',10,'block_recentlyaccesseditems',0),(569,'block/rss_client:myaddinstance','write',10,'block_rss_client',0),(570,'block/rss_client:addinstance','write',80,'block_rss_client',20),(571,'block/rss_client:manageownfeeds','write',80,'block_rss_client',0),(572,'block/rss_client:manageanyfeeds','write',80,'block_rss_client',16),(573,'block/search_forums:addinstance','write',80,'block_search_forums',20),(574,'block/section_links:addinstance','write',80,'block_section_links',20),(575,'block/selfcompletion:addinstance','write',80,'block_selfcompletion',20),(576,'block/settings:myaddinstance','write',10,'block_settings',0),(577,'block/settings:addinstance','write',80,'block_settings',20),(578,'block/site_main_menu:addinstance','write',80,'block_site_main_menu',20),(579,'block/social_activities:addinstance','write',80,'block_social_activities',20),(580,'block/starredcourses:myaddinstance','write',10,'block_starredcourses',0),(581,'block/tag_flickr:addinstance','write',80,'block_tag_flickr',20),(582,'block/tag_youtube:addinstance','write',80,'block_tag_youtube',20),(583,'block/tags:myaddinstance','write',10,'block_tags',0),(584,'block/tags:addinstance','write',80,'block_tags',20),(585,'block/timeline:myaddinstance','write',10,'block_timeline',0),(586,'report/completion:view','read',50,'report_completion',8),(587,'report/courseoverview:view','read',10,'report_courseoverview',8),(588,'report/log:view','read',50,'report_log',8),(589,'report/log:viewtoday','read',50,'report_log',8),(590,'report/loglive:view','read',50,'report_loglive',8),(591,'report/outline:view','read',50,'report_outline',8),(592,'report/outline:viewuserreport','read',50,'report_outline',8),(593,'report/participation:view','read',50,'report_participation',8),(594,'report/performance:view','read',10,'report_performance',2),(595,'report/progress:view','read',50,'report_progress',8),(596,'report/questioninstances:view','read',10,'report_questioninstances',0),(597,'report/security:view','read',10,'report_security',2),(598,'report/stats:view','read',50,'report_stats',8),(599,'report/status:view','read',10,'report_status',2),(600,'report/usersessions:manageownsessions','write',30,'report_usersessions',0),(601,'gradeexport/ods:view','read',50,'gradeexport_ods',8),(602,'gradeexport/ods:publish','read',50,'gradeexport_ods',8),(603,'gradeexport/txt:view','read',50,'gradeexport_txt',8),(604,'gradeexport/txt:publish','read',50,'gradeexport_txt',8),(605,'gradeexport/xls:view','read',50,'gradeexport_xls',8),(606,'gradeexport/xls:publish','read',50,'gradeexport_xls',8),(607,'gradeexport/xml:view','read',50,'gradeexport_xml',8),(608,'gradeexport/xml:publish','read',50,'gradeexport_xml',8),(609,'gradeimport/csv:view','write',50,'gradeimport_csv',0),(610,'gradeimport/direct:view','write',50,'gradeimport_direct',0),(611,'gradeimport/xml:view','write',50,'gradeimport_xml',0),(612,'gradeimport/xml:publish','write',50,'gradeimport_xml',0),(613,'gradereport/grader:view','read',50,'gradereport_grader',8),(614,'gradereport/history:view','read',50,'gradereport_history',8),(615,'gradereport/outcomes:view','read',50,'gradereport_outcomes',8),(616,'gradereport/overview:view','read',50,'gradereport_overview',8),(617,'gradereport/singleview:view','read',50,'gradereport_singleview',8),(618,'gradereport/summary:view','read',50,'gradereport_summary',8),(619,'gradereport/user:view','read',50,'gradereport_user',8),(620,'webservice/rest:use','read',50,'webservice_rest',0),(621,'webservice/soap:use','read',50,'webservice_soap',0),(622,'repository/areafiles:view','read',70,'repository_areafiles',0),(623,'repository/contentbank:view','read',70,'repository_contentbank',0),(624,'repository/contentbank:accesscoursecontent','read',50,'repository_contentbank',0),(625,'repository/contentbank:accesscoursecategorycontent','read',40,'repository_contentbank',0),(626,'repository/contentbank:accessgeneralcontent','read',40,'repository_contentbank',0),(627,'repository/coursefiles:view','read',70,'repository_coursefiles',0),(628,'repository/dropbox:view','read',70,'repository_dropbox',0),(629,'repository/equella:view','read',70,'repository_equella',0),(630,'repository/filesystem:view','read',70,'repository_filesystem',0),(631,'repository/flickr:view','read',70,'repository_flickr',0),(632,'repository/flickr_public:view','read',70,'repository_flickr_public',0),(633,'repository/googledocs:view','read',70,'repository_googledocs',0),(634,'repository/local:view','read',70,'repository_local',0),(635,'repository/merlot:view','read',70,'repository_merlot',0),(636,'repository/nextcloud:view','read',70,'repository_nextcloud',0),(637,'repository/onedrive:view','read',70,'repository_onedrive',0),(638,'repository/recent:view','read',70,'repository_recent',0),(639,'repository/s3:view','read',70,'repository_s3',0),(640,'repository/upload:view','read',70,'repository_upload',0),(641,'repository/url:view','read',70,'repository_url',0),(642,'repository/user:view','read',70,'repository_user',0),(643,'repository/webdav:view','read',70,'repository_webdav',0),(644,'repository/wikimedia:view','read',70,'repository_wikimedia',0),(645,'repository/youtube:view','read',70,'repository_youtube',0),(646,'moodle/question:commentmine','write',50,'qbank_comment',0),(647,'moodle/question:commentall','write',50,'qbank_comment',0),(648,'qbank/customfields:changelockedcustomfields','write',50,'qbank_customfields',16),(649,'qbank/customfields:configurecustomfields','write',10,'qbank_customfields',16),(650,'qbank/customfields:viewhiddencustomfields','read',50,'qbank_customfields',0),(651,'tool/brickfield:viewcoursetools','read',50,'tool_brickfield',8),(652,'tool/brickfield:viewsystemtools','read',10,'tool_brickfield',2),(653,'tool/customlang:view','read',10,'tool_customlang',2),(654,'tool/customlang:edit','write',10,'tool_customlang',6),(655,'tool/customlang:export','read',10,'tool_customlang',2),(656,'tool/dataprivacy:managedatarequests','write',10,'tool_dataprivacy',60),(657,'tool/dataprivacy:requestdeleteforotheruser','write',10,'tool_dataprivacy',60),(658,'tool/dataprivacy:managedataregistry','write',10,'tool_dataprivacy',60),(659,'tool/dataprivacy:makedatarequestsforchildren','write',30,'tool_dataprivacy',24),(660,'tool/dataprivacy:makedatadeletionrequestsforchildren','write',30,'tool_dataprivacy',24),(661,'tool/dataprivacy:downloadownrequest','read',30,'tool_dataprivacy',0),(662,'tool/dataprivacy:downloadallrequests','read',30,'tool_dataprivacy',8),(663,'tool/dataprivacy:requestdelete','write',30,'tool_dataprivacy',32),(664,'tool/lpmigrate:frameworksmigrate','write',10,'tool_lpmigrate',0),(665,'tool/mfa:mfaaccess','write',30,'tool_mfa',0),(666,'tool/monitor:subscribe','read',50,'tool_monitor',8),(667,'tool/monitor:managerules','write',50,'tool_monitor',4),(668,'tool/monitor:managetool','write',10,'tool_monitor',4),(669,'tool/policy:accept','write',10,'tool_policy',0),(670,'tool/policy:acceptbehalf','write',30,'tool_policy',8),(671,'tool/policy:managedocs','write',10,'tool_policy',0),(672,'tool/policy:viewacceptances','read',10,'tool_policy',0),(673,'tool/recyclebin:deleteitems','write',50,'tool_recyclebin',32),(674,'tool/recyclebin:restoreitems','write',50,'tool_recyclebin',0),(675,'tool/recyclebin:viewitems','read',50,'tool_recyclebin',0),(676,'tool/uploaduser:uploaduserpictures','write',10,'tool_uploaduser',16),(677,'tool/usertours:managetours','write',10,'tool_usertours',4),(678,'contenttype/h5p:access','read',50,'contenttype_h5p',0),(679,'contenttype/h5p:upload','write',50,'contenttype_h5p',16),(680,'contenttype/h5p:useeditor','write',50,'contenttype_h5p',16),(681,'booktool/exportimscp:export','read',70,'booktool_exportimscp',0),(682,'booktool/importhtml:import','write',70,'booktool_importhtml',4),(683,'booktool/print:print','read',70,'booktool_print',0),(684,'forumreport/summary:view','read',70,'forumreport_summary',0),(685,'forumreport/summary:viewall','read',70,'forumreport_summary',8),(686,'quiz/grading:viewstudentnames','read',70,'quiz_grading',0),(687,'quiz/grading:viewidnumber','read',70,'quiz_grading',0),(688,'quiz/statistics:view','read',70,'quiz_statistics',0),(689,'quizaccess/seb:managetemplates','write',10,'quizaccess_seb',0),(690,'quizaccess/seb:bypassseb','read',70,'quizaccess_seb',0),(691,'quizaccess/seb:manage_seb_requiresafeexambrowser','write',70,'quizaccess_seb',0),(692,'quizaccess/seb:manage_seb_templateid','read',70,'quizaccess_seb',0),(693,'quizaccess/seb:manage_filemanager_sebconfigfile','write',70,'quizaccess_seb',0),(694,'quizaccess/seb:manage_seb_showsebdownloadlink','write',70,'quizaccess_seb',0),(695,'quizaccess/seb:manage_seb_allowedbrowserexamkeys','write',70,'quizaccess_seb',0),(696,'quizaccess/seb:manage_seb_linkquitseb','write',70,'quizaccess_seb',0),(697,'quizaccess/seb:manage_seb_userconfirmquit','write',70,'quizaccess_seb',0),(698,'quizaccess/seb:manage_seb_allowuserquitseb','write',70,'quizaccess_seb',0),(699,'quizaccess/seb:manage_seb_quitpassword','write',70,'quizaccess_seb',0),(700,'quizaccess/seb:manage_seb_allowreloadinexam','write',70,'quizaccess_seb',0),(701,'quizaccess/seb:manage_seb_showsebtaskbar','write',70,'quizaccess_seb',0),(702,'quizaccess/seb:manage_seb_showreloadbutton','write',70,'quizaccess_seb',0),(703,'quizaccess/seb:manage_seb_showtime','write',70,'quizaccess_seb',0),(704,'quizaccess/seb:manage_seb_showkeyboardlayout','write',70,'quizaccess_seb',0),(705,'quizaccess/seb:manage_seb_showwificontrol','write',70,'quizaccess_seb',0),(706,'quizaccess/seb:manage_seb_enableaudiocontrol','write',70,'quizaccess_seb',0),(707,'quizaccess/seb:manage_seb_muteonstartup','write',70,'quizaccess_seb',0),(708,'quizaccess/seb:manage_seb_allowspellchecking','write',70,'quizaccess_seb',0),(709,'quizaccess/seb:manage_seb_activateurlfiltering','write',70,'quizaccess_seb',0),(710,'quizaccess/seb:manage_seb_filterembeddedcontent','write',70,'quizaccess_seb',0),(711,'quizaccess/seb:manage_seb_expressionsallowed','write',70,'quizaccess_seb',0),(712,'quizaccess/seb:manage_seb_regexallowed','write',70,'quizaccess_seb',0),(713,'quizaccess/seb:manage_seb_expressionsblocked','write',70,'quizaccess_seb',0),(714,'quizaccess/seb:manage_seb_regexblocked','write',70,'quizaccess_seb',0),(715,'atto/h5p:addembed','write',70,'atto_h5p',0),(716,'atto/recordrtc:recordaudio','write',70,'atto_recordrtc',0),(717,'atto/recordrtc:recordvideo','write',70,'atto_recordrtc',0),(718,'tiny/h5p:addembed','write',70,'tiny_h5p',0),(719,'tiny/recordrtc:recordaudio','write',70,'tiny_recordrtc',0),(720,'tiny/recordrtc:recordvideo','write',70,'tiny_recordrtc',0),(721,'factor/capability:cannotpassfactor','read',10,'factor_capability',0);
/*!40000 ALTER TABLE `mdl_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat`
--

DROP TABLE IF EXISTS `mdl_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_chat` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introformat` smallint NOT NULL DEFAULT '0',
  `keepdays` bigint NOT NULL DEFAULT '0',
  `studentlogs` smallint NOT NULL DEFAULT '0',
  `chattime` bigint NOT NULL DEFAULT '0',
  `schedule` smallint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_chat_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Each of these is a chat room';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat`
--

LOCK TABLES `mdl_chat` WRITE;
/*!40000 ALTER TABLE `mdl_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_messages`
--

DROP TABLE IF EXISTS `mdl_chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_chat_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `chatid` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `groupid` bigint NOT NULL DEFAULT '0',
  `issystem` tinyint(1) NOT NULL DEFAULT '0',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timestamp` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_chatmess_use_ix` (`userid`),
  KEY `mdl_chatmess_gro_ix` (`groupid`),
  KEY `mdl_chatmess_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl_chatmess_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores all the actual chat messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_messages`
--

LOCK TABLES `mdl_chat_messages` WRITE;
/*!40000 ALTER TABLE `mdl_chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_messages_current`
--

DROP TABLE IF EXISTS `mdl_chat_messages_current`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_chat_messages_current` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `chatid` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `groupid` bigint NOT NULL DEFAULT '0',
  `issystem` tinyint(1) NOT NULL DEFAULT '0',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timestamp` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_chatmesscurr_use_ix` (`userid`),
  KEY `mdl_chatmesscurr_gro_ix` (`groupid`),
  KEY `mdl_chatmesscurr_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl_chatmesscurr_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores current session';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_messages_current`
--

LOCK TABLES `mdl_chat_messages_current` WRITE;
/*!40000 ALTER TABLE `mdl_chat_messages_current` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_messages_current` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_users`
--

DROP TABLE IF EXISTS `mdl_chat_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_chat_users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `chatid` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `groupid` bigint NOT NULL DEFAULT '0',
  `version` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `firstping` bigint NOT NULL DEFAULT '0',
  `lastping` bigint NOT NULL DEFAULT '0',
  `lastmessageping` bigint NOT NULL DEFAULT '0',
  `sid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `course` bigint NOT NULL DEFAULT '0',
  `lang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_chatuser_use_ix` (`userid`),
  KEY `mdl_chatuser_las_ix` (`lastping`),
  KEY `mdl_chatuser_gro_ix` (`groupid`),
  KEY `mdl_chatuser_cha_ix` (`chatid`),
  KEY `mdl_chatuser_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Keeps track of which users are in which chat rooms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_users`
--

LOCK TABLES `mdl_chat_users` WRITE;
/*!40000 ALTER TABLE `mdl_chat_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice`
--

DROP TABLE IF EXISTS `mdl_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_choice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introformat` smallint NOT NULL DEFAULT '0',
  `publish` tinyint NOT NULL DEFAULT '0',
  `showresults` tinyint NOT NULL DEFAULT '0',
  `display` smallint NOT NULL DEFAULT '0',
  `allowupdate` tinyint NOT NULL DEFAULT '0',
  `allowmultiple` tinyint NOT NULL DEFAULT '0',
  `showunanswered` tinyint NOT NULL DEFAULT '0',
  `includeinactive` tinyint NOT NULL DEFAULT '1',
  `limitanswers` tinyint NOT NULL DEFAULT '0',
  `timeopen` bigint NOT NULL DEFAULT '0',
  `timeclose` bigint NOT NULL DEFAULT '0',
  `showpreview` tinyint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `completionsubmit` tinyint(1) NOT NULL DEFAULT '0',
  `showavailable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_choi_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Available choices are stored here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice`
--

LOCK TABLES `mdl_choice` WRITE;
/*!40000 ALTER TABLE `mdl_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice_answers`
--

DROP TABLE IF EXISTS `mdl_choice_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_choice_answers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `choiceid` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `optionid` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_choiansw_use_ix` (`userid`),
  KEY `mdl_choiansw_cho_ix` (`choiceid`),
  KEY `mdl_choiansw_opt_ix` (`optionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='choices performed by users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice_answers`
--

LOCK TABLES `mdl_choice_answers` WRITE;
/*!40000 ALTER TABLE `mdl_choice_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice_options`
--

DROP TABLE IF EXISTS `mdl_choice_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_choice_options` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `choiceid` bigint NOT NULL DEFAULT '0',
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `maxanswers` bigint DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_choiopti_cho_ix` (`choiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='available options to choice';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice_options`
--

LOCK TABLES `mdl_choice_options` WRITE;
/*!40000 ALTER TABLE `mdl_choice_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cohort`
--

DROP TABLE IF EXISTS `mdl_cohort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_cohort` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contextid` bigint NOT NULL,
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `descriptionformat` tinyint NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `theme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_coho_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Each record represents one cohort (aka site-wide group).';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cohort`
--

LOCK TABLES `mdl_cohort` WRITE;
/*!40000 ALTER TABLE `mdl_cohort` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cohort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cohort_members`
--

DROP TABLE IF EXISTS `mdl_cohort_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_cohort_members` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cohortid` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `timeadded` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_cohomemb_cohuse_uix` (`cohortid`,`userid`),
  KEY `mdl_cohomemb_coh_ix` (`cohortid`),
  KEY `mdl_cohomemb_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Link a user to a cohort.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cohort_members`
--

LOCK TABLES `mdl_cohort_members` WRITE;
/*!40000 ALTER TABLE `mdl_cohort_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cohort_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_comments`
--

DROP TABLE IF EXISTS `mdl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contextid` bigint NOT NULL,
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `commentarea` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `itemid` bigint NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `format` tinyint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_comm_concomite_ix` (`contextid`,`commentarea`,`itemid`),
  KEY `mdl_comm_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='moodle comments module';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_comments`
--

LOCK TABLES `mdl_comments` WRITE;
/*!40000 ALTER TABLE `mdl_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_communication`
--

DROP TABLE IF EXISTS `mdl_communication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_communication` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contextid` bigint NOT NULL,
  `instanceid` bigint NOT NULL,
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `instancetype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `provider` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `roomname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `avatarfilename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `avatarsynced` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_comm_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Communication records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_communication`
--

LOCK TABLES `mdl_communication` WRITE;
/*!40000 ALTER TABLE `mdl_communication` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_communication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_communication_customlink`
--

DROP TABLE IF EXISTS `mdl_communication_customlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_communication_customlink` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `commid` bigint NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_commcust_com_ix` (`commid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the link associated with a custom link communication ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_communication_customlink`
--

LOCK TABLES `mdl_communication_customlink` WRITE;
/*!40000 ALTER TABLE `mdl_communication_customlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_communication_customlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_communication_user`
--

DROP TABLE IF EXISTS `mdl_communication_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_communication_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `commid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `synced` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_commuser_com_ix` (`commid`),
  KEY `mdl_commuser_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Communication user records mapping';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_communication_user`
--

LOCK TABLES `mdl_communication_user` WRITE;
/*!40000 ALTER TABLE `mdl_communication_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_communication_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency`
--

DROP TABLE IF EXISTS `mdl_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `descriptionformat` smallint NOT NULL DEFAULT '0',
  `idnumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `competencyframeworkid` bigint NOT NULL,
  `parentid` bigint NOT NULL DEFAULT '0',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `sortorder` bigint NOT NULL,
  `ruletype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ruleoutcome` tinyint NOT NULL DEFAULT '0',
  `ruleconfig` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `scaleid` bigint DEFAULT NULL,
  `scaleconfiguration` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_comp_comidn_uix` (`competencyframeworkid`,`idnumber`),
  KEY `mdl_comp_rul_ix` (`ruleoutcome`),
  KEY `mdl_comp_sca_ix` (`scaleid`),
  KEY `mdl_comp_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='This table contains the master record of each competency in ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency`
--

LOCK TABLES `mdl_competency` WRITE;
/*!40000 ALTER TABLE `mdl_competency` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_coursecomp`
--

DROP TABLE IF EXISTS `mdl_competency_coursecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_coursecomp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `courseid` bigint NOT NULL,
  `competencyid` bigint NOT NULL,
  `ruleoutcome` tinyint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  `sortorder` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compcour_coucom_uix` (`courseid`,`competencyid`),
  KEY `mdl_compcour_courul_ix` (`courseid`,`ruleoutcome`),
  KEY `mdl_compcour_cou2_ix` (`courseid`),
  KEY `mdl_compcour_com_ix` (`competencyid`),
  KEY `mdl_compcour_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Link a competency to a course.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_coursecomp`
--

LOCK TABLES `mdl_competency_coursecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_coursecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_coursecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_coursecompsetting`
--

DROP TABLE IF EXISTS `mdl_competency_coursecompsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_coursecompsetting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `courseid` bigint NOT NULL,
  `pushratingstouserplans` tinyint DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compcour_cou_uix` (`courseid`),
  KEY `mdl_compcour_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='This table contains the course specific settings for compete';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_coursecompsetting`
--

LOCK TABLES `mdl_competency_coursecompsetting` WRITE;
/*!40000 ALTER TABLE `mdl_competency_coursecompsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_coursecompsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_evidence`
--

DROP TABLE IF EXISTS `mdl_competency_evidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_evidence` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usercompetencyid` bigint NOT NULL,
  `contextid` bigint NOT NULL,
  `action` tinyint NOT NULL,
  `actionuserid` bigint DEFAULT NULL,
  `descidentifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `desccomponent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `desca` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `grade` bigint DEFAULT NULL,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_compevid_use_ix` (`usercompetencyid`),
  KEY `mdl_compevid_con_ix` (`contextid`),
  KEY `mdl_compevid_act_ix` (`actionuserid`),
  KEY `mdl_compevid_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='The evidence linked to a user competency';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_evidence`
--

LOCK TABLES `mdl_competency_evidence` WRITE;
/*!40000 ALTER TABLE `mdl_competency_evidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_evidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_framework`
--

DROP TABLE IF EXISTS `mdl_competency_framework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_framework` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `contextid` bigint NOT NULL,
  `idnumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `descriptionformat` smallint NOT NULL DEFAULT '0',
  `scaleid` bigint DEFAULT NULL,
  `scaleconfiguration` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `visible` tinyint NOT NULL DEFAULT '1',
  `taxonomies` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compfram_idn_uix` (`idnumber`),
  KEY `mdl_compfram_con_ix` (`contextid`),
  KEY `mdl_compfram_sca_ix` (`scaleid`),
  KEY `mdl_compfram_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='List of competency frameworks.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_framework`
--

LOCK TABLES `mdl_competency_framework` WRITE;
/*!40000 ALTER TABLE `mdl_competency_framework` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_framework` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_modulecomp`
--

DROP TABLE IF EXISTS `mdl_competency_modulecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_modulecomp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cmid` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  `sortorder` bigint NOT NULL,
  `competencyid` bigint NOT NULL,
  `ruleoutcome` tinyint NOT NULL,
  `overridegrade` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compmodu_cmicom_uix` (`cmid`,`competencyid`),
  KEY `mdl_compmodu_cmirul_ix` (`cmid`,`ruleoutcome`),
  KEY `mdl_compmodu_cmi_ix` (`cmid`),
  KEY `mdl_compmodu_com_ix` (`competencyid`),
  KEY `mdl_compmodu_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Link a competency to a module.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_modulecomp`
--

LOCK TABLES `mdl_competency_modulecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_modulecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_modulecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_plan`
--

DROP TABLE IF EXISTS `mdl_competency_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_plan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `descriptionformat` smallint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL,
  `templateid` bigint DEFAULT NULL,
  `origtemplateid` bigint DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `duedate` bigint DEFAULT '0',
  `reviewerid` bigint DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL DEFAULT '0',
  `usermodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_compplan_usesta_ix` (`userid`,`status`),
  KEY `mdl_compplan_tem_ix` (`templateid`),
  KEY `mdl_compplan_stadue_ix` (`status`,`duedate`),
  KEY `mdl_compplan_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Learning plans';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_plan`
--

LOCK TABLES `mdl_competency_plan` WRITE;
/*!40000 ALTER TABLE `mdl_competency_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_plancomp`
--

DROP TABLE IF EXISTS `mdl_competency_plancomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_plancomp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `planid` bigint NOT NULL,
  `competencyid` bigint NOT NULL,
  `sortorder` bigint DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint DEFAULT NULL,
  `usermodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compplan_placom_uix` (`planid`,`competencyid`),
  KEY `mdl_compplan_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Plan competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_plancomp`
--

LOCK TABLES `mdl_competency_plancomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_plancomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_plancomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_relatedcomp`
--

DROP TABLE IF EXISTS `mdl_competency_relatedcomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_relatedcomp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `competencyid` bigint NOT NULL,
  `relatedcompetencyid` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint DEFAULT NULL,
  `usermodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_comprela_com_ix` (`competencyid`),
  KEY `mdl_comprela_rel_ix` (`relatedcompetencyid`),
  KEY `mdl_comprela_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Related competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_relatedcomp`
--

LOCK TABLES `mdl_competency_relatedcomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_relatedcomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_relatedcomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_template`
--

DROP TABLE IF EXISTS `mdl_competency_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_template` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `contextid` bigint NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `descriptionformat` smallint NOT NULL DEFAULT '0',
  `visible` tinyint NOT NULL DEFAULT '1',
  `duedate` bigint DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_comptemp_con_ix` (`contextid`),
  KEY `mdl_comptemp_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Learning plan templates.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_template`
--

LOCK TABLES `mdl_competency_template` WRITE;
/*!40000 ALTER TABLE `mdl_competency_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_templatecohort`
--

DROP TABLE IF EXISTS `mdl_competency_templatecohort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_templatecohort` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `templateid` bigint NOT NULL,
  `cohortid` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_comptemp_temcoh_uix` (`templateid`,`cohortid`),
  KEY `mdl_comptemp_tem2_ix` (`templateid`),
  KEY `mdl_comptemp_use3_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_templatecohort`
--

LOCK TABLES `mdl_competency_templatecohort` WRITE;
/*!40000 ALTER TABLE `mdl_competency_templatecohort` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_templatecohort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_templatecomp`
--

DROP TABLE IF EXISTS `mdl_competency_templatecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_templatecomp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `templateid` bigint NOT NULL,
  `competencyid` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  `sortorder` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_comptemp_tem_ix` (`templateid`),
  KEY `mdl_comptemp_com_ix` (`competencyid`),
  KEY `mdl_comptemp_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Link a competency to a learning plan template.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_templatecomp`
--

LOCK TABLES `mdl_competency_templatecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_templatecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_templatecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_usercomp`
--

DROP TABLE IF EXISTS `mdl_competency_usercomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_usercomp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL,
  `competencyid` bigint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `reviewerid` bigint DEFAULT NULL,
  `proficiency` tinyint DEFAULT NULL,
  `grade` bigint DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint DEFAULT NULL,
  `usermodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecom_uix` (`userid`,`competencyid`),
  KEY `mdl_compuser_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='User competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_usercomp`
--

LOCK TABLES `mdl_competency_usercomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_usercomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_usercomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_usercompcourse`
--

DROP TABLE IF EXISTS `mdl_competency_usercompcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_usercompcourse` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL,
  `courseid` bigint NOT NULL,
  `competencyid` bigint NOT NULL,
  `proficiency` tinyint DEFAULT NULL,
  `grade` bigint DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint DEFAULT NULL,
  `usermodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecoucom_uix` (`userid`,`courseid`,`competencyid`),
  KEY `mdl_compuser_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='User competencies in a course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_usercompcourse`
--

LOCK TABLES `mdl_competency_usercompcourse` WRITE;
/*!40000 ALTER TABLE `mdl_competency_usercompcourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_usercompcourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_usercompplan`
--

DROP TABLE IF EXISTS `mdl_competency_usercompplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_usercompplan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL,
  `competencyid` bigint NOT NULL,
  `planid` bigint NOT NULL,
  `proficiency` tinyint DEFAULT NULL,
  `grade` bigint DEFAULT NULL,
  `sortorder` bigint DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint DEFAULT NULL,
  `usermodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecompla_uix` (`userid`,`competencyid`,`planid`),
  KEY `mdl_compuser_use3_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='User competencies plans';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_usercompplan`
--

LOCK TABLES `mdl_competency_usercompplan` WRITE;
/*!40000 ALTER TABLE `mdl_competency_usercompplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_usercompplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_userevidence`
--

DROP TABLE IF EXISTS `mdl_competency_userevidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_userevidence` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descriptionformat` tinyint(1) NOT NULL,
  `url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_compuser_use4_ix` (`userid`),
  KEY `mdl_compuser_use5_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='The evidence of prior learning';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_userevidence`
--

LOCK TABLES `mdl_competency_userevidence` WRITE;
/*!40000 ALTER TABLE `mdl_competency_userevidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_userevidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_userevidencecomp`
--

DROP TABLE IF EXISTS `mdl_competency_userevidencecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_userevidencecomp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userevidenceid` bigint NOT NULL,
  `competencyid` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `usermodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecom2_uix` (`userevidenceid`,`competencyid`),
  KEY `mdl_compuser_use6_ix` (`userevidenceid`),
  KEY `mdl_compuser_use7_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Relationship between user evidence and competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_userevidencecomp`
--

LOCK TABLES `mdl_competency_userevidencecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_userevidencecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_userevidencecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config`
--

DROP TABLE IF EXISTS `mdl_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_conf_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=582 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Moodle configuration variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config`
--

LOCK TABLES `mdl_config` WRITE;
/*!40000 ALTER TABLE `mdl_config` DISABLE KEYS */;
INSERT INTO `mdl_config` VALUES (2,'rolesactive','1'),(3,'auth','email'),(4,'enrol_plugins_enabled','manual,guest,self,cohort'),(5,'theme','academi'),(6,'filter_multilang_converted','1'),(7,'siteidentifier','rwKBcGgIB9K0EvnS86dJafX9IgI4Hh6Aedubridge.teknix.my.id'),(8,'backup_version','2023100900'),(9,'backup_release','4.3'),(10,'mnet_dispatcher_mode','off'),(11,'sessiontimeout','28800'),(12,'stringfilters',''),(13,'filterall','0'),(14,'texteditors','tiny,atto,tinymce,textarea'),(15,'antiviruses',''),(16,'media_plugins_sortorder','videojs,youtube'),(17,'upgrade_extracreditweightsstepignored','1'),(18,'upgrade_calculatedgradeitemsignored','1'),(19,'upgrade_letterboundarycourses','1'),(20,'mnet_localhost_id','1'),(21,'mnet_all_hosts_id','2'),(22,'siteguest','1'),(23,'siteadmins','2,32,26'),(24,'themerev','1702495533'),(25,'jsrev','1702495214'),(26,'templaterev','1702495214'),(27,'gdversion','2'),(28,'licenses','unknown,allrightsreserved,public,cc-4.0,cc-nc-4.0,cc-nd-4.0,cc-nc-nd-4.0,cc-nc-sa-4.0,cc-sa-4.0'),(29,'sitedefaultlicense','unknown'),(30,'version','2023100901'),(31,'enableuserfeedback','0'),(32,'userfeedback_nextreminder','1'),(33,'userfeedback_remindafter','90'),(34,'enableoutcomes','0'),(35,'usecomments','1'),(36,'usetags','1'),(37,'enablenotes','1'),(38,'enableportfolios','0'),(39,'enablewebservices','1'),(40,'enablestats','0'),(41,'enablerssfeeds','0'),(42,'enableblogs','1'),(43,'enablecompletion','1'),(44,'enableavailability','1'),(45,'enableplagiarism','0'),(46,'enablebadges','1'),(47,'enableglobalsearch','0'),(48,'allowstealth','0'),(49,'enableanalytics','1'),(50,'messaging','1'),(51,'enablecustomreports','1'),(52,'allowemojipicker','1'),(53,'userfiltersdefault','realname'),(54,'defaultpreference_maildisplay','2'),(55,'defaultpreference_mailformat','1'),(56,'defaultpreference_maildigest','0'),(57,'defaultpreference_autosubscribe','1'),(58,'defaultpreference_trackforums','0'),(59,'defaultpreference_core_contentbank_visibility','1'),(60,'enroladminnewcourse','1'),(61,'autologinguests','0'),(62,'hiddenuserfields',''),(63,'showuseridentity','email'),(64,'fullnamedisplay','language'),(65,'alternativefullnameformat','language'),(66,'maxusersperpage','100'),(67,'enablegravatar','0'),(68,'gravatardefaulturl','mm'),(69,'agedigitalconsentverification','0'),(70,'agedigitalconsentmap','*, 16\nAT, 14\nBE, 13\nBG, 14\nCY, 14\nCZ, 15\nDK, 13\nEE, 13\nES, 14\nFI, 13\nFR, 15\nGB, 13\nGR, 15\nIT, 14\nLT, 14\nLV, 13\nMT, 13\nNO, 13\nPT, 13\nSE, 13\nUS, 13'),(71,'sitepolicy',''),(72,'sitepolicyguest',''),(73,'downloadcoursecontentallowed','0'),(74,'maxsizeperdownloadcoursefile','52428800'),(75,'enablecourserequests','1'),(76,'defaultrequestcategory','2'),(77,'lockrequestcategory','0'),(78,'courserequestnotify',''),(79,'activitychoosertabmode','3'),(80,'activitychooseractivefooter','hidden'),(81,'enableasyncbackup','0'),(82,'grade_profilereport','user'),(83,'grade_aggregationposition','1'),(84,'grade_includescalesinaggregation','1'),(85,'grade_hiddenasdate','0'),(86,'gradepublishing','0'),(87,'grade_export_exportfeedback','0'),(88,'grade_export_displaytype','1'),(89,'grade_export_decimalpoints','2'),(90,'grade_export_userprofilefields','firstname,lastname,idnumber,institution,department,email'),(91,'grade_export_customprofilefields',''),(92,'recovergradesdefault','0'),(93,'gradeexport',''),(94,'unlimitedgrades','0'),(95,'grade_report_showmin','1'),(96,'gradepointmax','100'),(97,'gradepointdefault','100'),(98,'grade_minmaxtouse','1'),(99,'grade_mygrades_report','overview'),(100,'gradereport_mygradeurl',''),(101,'grade_hideforcedsettings','1'),(102,'grade_aggregation','13'),(103,'grade_aggregation_flag','0'),(104,'grade_aggregations_visible','13'),(105,'grade_aggregateonlygraded','1'),(106,'grade_aggregateonlygraded_flag','2'),(107,'grade_aggregateoutcomes','0'),(108,'grade_aggregateoutcomes_flag','2'),(109,'grade_keephigh','0'),(110,'grade_keephigh_flag','3'),(111,'grade_droplow','0'),(112,'grade_droplow_flag','2'),(113,'grade_overridecat','1'),(114,'grade_displaytype','1'),(115,'grade_decimalpoints','2'),(116,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime'),(117,'grade_report_showonlyactiveenrol','1'),(118,'grade_report_quickgrading','1'),(119,'grade_report_meanselection','1'),(120,'grade_report_showaverages','1'),(121,'grade_report_showranges','0'),(122,'grade_report_showuserimage','1'),(123,'grade_report_shownumberofgrades','0'),(124,'grade_report_averagesdisplaytype','inherit'),(125,'grade_report_rangesdisplaytype','inherit'),(126,'grade_report_averagesdecimalpoints','inherit'),(127,'grade_report_rangesdecimalpoints','inherit'),(128,'grade_report_historyperpage','50'),(129,'grade_report_overview_showrank','0'),(130,'grade_report_overview_showtotalsifcontainhidden','0'),(131,'grade_report_user_showrank','0'),(132,'grade_report_user_showpercentage','1'),(133,'grade_report_user_showgrade','1'),(134,'grade_report_user_showfeedback','1'),(135,'grade_report_user_showrange','1'),(136,'grade_report_user_showweight','1'),(137,'grade_report_user_showaverage','0'),(138,'grade_report_user_showlettergrade','0'),(139,'grade_report_user_rangedecimals','0'),(140,'grade_report_user_showhiddenitems','1'),(141,'grade_report_user_showtotalsifcontainhidden','0'),(142,'grade_report_user_showcontributiontocoursetotal','1'),(143,'badges_defaultissuername',''),(144,'badges_defaultissuercontact',''),(145,'badges_badgesalt','badges1702489176'),(146,'badges_allowcoursebadges','1'),(147,'badges_allowexternalbackpack','1'),(148,'rememberuserlicensepref','1'),(149,'forcetimezone','99'),(150,'country','0'),(151,'defaultcity',''),(152,'geoip2file','/home/edubridge/moodledata/geoip/GeoLite2-City.mmdb'),(153,'googlemapkey3',''),(154,'allcountrycodes',''),(155,'autolang','1'),(156,'lang','en'),(157,'autolangusercreation','1'),(158,'langmenu','1'),(159,'langlist',''),(160,'langrev','1702495214'),(161,'langcache','1'),(162,'langstringcache','1'),(163,'locale',''),(164,'latinexcelexport','0'),(165,'enablepdfexportfont','0'),(166,'messagingallusers','0'),(167,'messagingdefaultpressenter','1'),(168,'messagingdeletereadnotificationsdelay','604800'),(169,'messagingdeleteallnotificationsdelay','2620800'),(170,'messagingallowemailoverride','0'),(171,'requiremodintro','0'),(173,'authloginviaemail','0'),(174,'allowaccountssameemail','0'),(175,'authpreventaccountcreation','0'),(176,'loginpageautofocus','0'),(177,'guestloginbutton','1'),(178,'limitconcurrentlogins','0'),(179,'alternateloginurl',''),(180,'forgottenpasswordurl',''),(181,'auth_instructions',''),(182,'allowemailaddresses',''),(183,'denyemailaddresses',''),(184,'verifychangedemail','1'),(185,'enableloginrecaptcha','0'),(186,'recaptchapublickey',''),(187,'recaptchaprivatekey',''),(188,'filteruploadedfiles','0'),(189,'filtermatchoneperpage','0'),(190,'filtermatchonepertext','0'),(191,'filternavigationwithsystemcontext','0'),(192,'media_default_width','640'),(193,'media_default_height','360'),(194,'portfolio_moderate_filesize_threshold','1048576'),(195,'portfolio_high_filesize_threshold','5242880'),(196,'portfolio_moderate_db_threshold','20'),(197,'portfolio_high_db_threshold','50'),(198,'repositorycacheexpire','120'),(199,'repositorygetfiletimeout','30'),(200,'repositorysyncfiletimeout','1'),(201,'repositorysyncimagetimeout','3'),(202,'repositoryallowexternallinks','1'),(203,'legacyfilesinnewcourses','0'),(204,'legacyfilesaddallowed','1'),(205,'searchengine','simpledb'),(206,'searchindexwhendisabled','0'),(207,'searchindextime','600'),(208,'searchallavailablecourses','0'),(209,'searchincludeallcourses','0'),(210,'searchenablecategories','0'),(211,'searchdefaultcategory','core-all'),(212,'searchhideallcategory','0'),(213,'searchmaxtopresults','3'),(214,'searchteacherroles',''),(215,'searchenginequeryonly',''),(216,'searchbannerenable','0'),(217,'searchbanner',''),(218,'allowbeforeblock','0'),(219,'allowedip',''),(220,'blockedip',''),(221,'protectusernames','1'),(222,'forcelogin','0'),(223,'forceloginforprofiles','1'),(224,'forceloginforprofileimage','0'),(225,'opentowebcrawlers','0'),(226,'allowindexing','0'),(227,'maxbytes','0'),(228,'userquota','104857600'),(229,'allowobjectembed','0'),(230,'enabletrusttext','0'),(231,'maxeditingtime','1800'),(232,'extendedusernamechars','0'),(233,'keeptagnamecase','1'),(234,'profilesforenrolledusersonly','1'),(235,'cronclionly','1'),(236,'cronremotepassword',''),(237,'lockoutthreshold','0'),(238,'lockoutwindow','1800'),(239,'lockoutduration','1800'),(240,'passwordpolicy','1'),(241,'minpasswordlength','8'),(242,'minpassworddigits','1'),(243,'minpasswordlower','1'),(244,'minpasswordupper','0'),(245,'minpasswordnonalphanum','0'),(246,'maxconsecutiveidentchars','0'),(247,'passwordpolicycheckonlogin','0'),(248,'passwordreuselimit','0'),(249,'pwresettime','1800'),(250,'passwordchangelogout','0'),(251,'passwordchangetokendeletion','0'),(252,'tokenduration','7257600'),(253,'groupenrolmentkeypolicy','1'),(254,'disableuserimages','0'),(255,'emailchangeconfirmation','1'),(256,'rememberusername','2'),(257,'strictformsrequired','0'),(258,'cookiesecure','1'),(259,'allowframembedding','0'),(260,'curlsecurityblockedhosts','127.0.0.0/8\n192.168.0.0/16\n10.0.0.0/8\n172.16.0.0/12\n0.0.0.0\nlocalhost\n169.254.169.254\n0000::1'),(261,'curlsecurityallowedport','443\n80'),(262,'referrerpolicy','default'),(263,'displayloginfailures','0'),(264,'notifyloginfailures',''),(265,'notifyloginthreshold','10'),(266,'themelist',''),(267,'themedesignermode','0'),(268,'allowuserthemes','0'),(269,'allowcoursethemes','0'),(270,'allowcategorythemes','0'),(271,'allowcohortthemes','0'),(272,'allowthemechangeonurl','0'),(273,'allowuserblockhiding','1'),(274,'langmenuinsecurelayout','0'),(275,'logininfoinsecurelayout','0'),(276,'custommenuitems',''),(277,'customusermenuitems','profile,moodle|/user/profile.php\ngrades,grades|/grade/report/mygrades.php\ncalendar,core_calendar|/calendar/view.php?view=month\nprivatefiles,moodle|/user/files.php\nreports,core_reportbuilder|/reportbuilder/index.php'),(278,'calendartype','gregorian'),(279,'calendar_adminseesall','0'),(280,'calendar_site_timeformat','0'),(281,'calendar_startwday','1'),(282,'calendar_weekend','65'),(283,'calendar_lookahead','21'),(284,'calendar_maxevents','10'),(285,'enablecalendarexport','1'),(286,'calendar_customexport','1'),(287,'calendar_exportlookahead','365'),(288,'calendar_exportlookback','5'),(289,'calendar_exportsalt','X1DUVg4IZRkombEJ8KNwS9jarLXvP5zHYCa4UCRHtAttuDrqgZVj6fzQAHfw'),(290,'calendar_showicalsource','1'),(291,'useblogassociations','1'),(292,'bloglevel','4'),(293,'useexternalblogs','1'),(294,'externalblogcrontime','86400'),(295,'maxexternalblogsperuser','1'),(296,'blogusecomments','1'),(297,'blogshowcommentscount','1'),(298,'enabledashboard','1'),(299,'defaulthomepage','1'),(300,'allowguestmymoodle','1'),(301,'navshowfullcoursenames','0'),(302,'navshowcategories','1'),(303,'navshowmycoursecategories','0'),(304,'navshowallcourses','0'),(305,'navsortmycoursessort','sortorder'),(306,'navsortmycourseshiddenlast','1'),(307,'navcourselimit','10'),(308,'usesitenameforsitepages','0'),(309,'linkadmincategories','1'),(310,'linkcoursesections','1'),(311,'navshowfrontpagemods','1'),(312,'navadduserpostslinks','1'),(313,'sitenameintitle','shortname'),(314,'formatstringstriptags','1'),(315,'emoticons','[{\"text\":\":-)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":-D\",\"imagename\":\"s\\/biggrin\",\"imagecomponent\":\"core\",\"altidentifier\":\"biggrin\",\"altcomponent\":\"core_pix\"},{\"text\":\";-)\",\"imagename\":\"s\\/wink\",\"imagecomponent\":\"core\",\"altidentifier\":\"wink\",\"altcomponent\":\"core_pix\"},{\"text\":\":-\\/\",\"imagename\":\"s\\/mixed\",\"imagecomponent\":\"core\",\"altidentifier\":\"mixed\",\"altcomponent\":\"core_pix\"},{\"text\":\"V-.\",\"imagename\":\"s\\/thoughtful\",\"imagecomponent\":\"core\",\"altidentifier\":\"thoughtful\",\"altcomponent\":\"core_pix\"},{\"text\":\":-P\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\":-p\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\"B-)\",\"imagename\":\"s\\/cool\",\"imagecomponent\":\"core\",\"altidentifier\":\"cool\",\"altcomponent\":\"core_pix\"},{\"text\":\"^-)\",\"imagename\":\"s\\/approve\",\"imagecomponent\":\"core\",\"altidentifier\":\"approve\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-)\",\"imagename\":\"s\\/wideeyes\",\"imagecomponent\":\"core\",\"altidentifier\":\"wideeyes\",\"altcomponent\":\"core_pix\"},{\"text\":\":o)\",\"imagename\":\"s\\/clown\",\"imagecomponent\":\"core\",\"altidentifier\":\"clown\",\"altcomponent\":\"core_pix\"},{\"text\":\":-(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\":(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-.\",\"imagename\":\"s\\/shy\",\"imagecomponent\":\"core\",\"altidentifier\":\"shy\",\"altcomponent\":\"core_pix\"},{\"text\":\":-I\",\"imagename\":\"s\\/blush\",\"imagecomponent\":\"core\",\"altidentifier\":\"blush\",\"altcomponent\":\"core_pix\"},{\"text\":\":-X\",\"imagename\":\"s\\/kiss\",\"imagecomponent\":\"core\",\"altidentifier\":\"kiss\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-o\",\"imagename\":\"s\\/surprise\",\"imagecomponent\":\"core\",\"altidentifier\":\"surprise\",\"altcomponent\":\"core_pix\"},{\"text\":\"P-|\",\"imagename\":\"s\\/blackeye\",\"imagecomponent\":\"core\",\"altidentifier\":\"blackeye\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-[\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"(grr)\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"xx-P\",\"imagename\":\"s\\/dead\",\"imagecomponent\":\"core\",\"altidentifier\":\"dead\",\"altcomponent\":\"core_pix\"},{\"text\":\"|-.\",\"imagename\":\"s\\/sleepy\",\"imagecomponent\":\"core\",\"altidentifier\":\"sleepy\",\"altcomponent\":\"core_pix\"},{\"text\":\"}-]\",\"imagename\":\"s\\/evil\",\"imagecomponent\":\"core\",\"altidentifier\":\"evil\",\"altcomponent\":\"core_pix\"},{\"text\":\"(h)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(heart)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(y)\",\"imagename\":\"s\\/yes\",\"imagecomponent\":\"core\",\"altidentifier\":\"yes\",\"altcomponent\":\"core\"},{\"text\":\"(n)\",\"imagename\":\"s\\/no\",\"imagecomponent\":\"core\",\"altidentifier\":\"no\",\"altcomponent\":\"core\"},{\"text\":\"(martin)\",\"imagename\":\"s\\/martin\",\"imagecomponent\":\"core\",\"altidentifier\":\"martin\",\"altcomponent\":\"core_pix\"},{\"text\":\"( )\",\"imagename\":\"s\\/egg\",\"imagecomponent\":\"core\",\"altidentifier\":\"egg\",\"altcomponent\":\"core_pix\"}]'),(316,'docroot','https://docs.moodle.org'),(317,'doclang',''),(318,'doctonewwindow','0'),(319,'coursecreationguide','https://moodle.academy/coursequickstart'),(320,'coursecontactduplicates','0'),(321,'courselistshortnames','0'),(322,'coursesperpage','20'),(323,'courseswithsummarieslimit','10'),(324,'courseoverviewfileslimit','1'),(325,'courseoverviewfilesext','web_image'),(326,'coursegraceperiodbefore','0'),(327,'coursegraceperiodafter','0'),(328,'yuicomboloading','1'),(329,'cachejs','1'),(330,'additionalhtmlhead',''),(331,'additionalhtmltopofbody',''),(332,'additionalhtmlfooter',''),(333,'cachetemplates','1'),(334,'pathtophp',''),(335,'pathtodu',''),(336,'aspellpath',''),(337,'pathtodot',''),(338,'pathtogs','/usr/bin/gs'),(339,'pathtopdftoppm',''),(340,'pathtopython',''),(341,'supportname','Admin User'),(342,'supportpage',''),(343,'supportavailability','1'),(344,'servicespage',''),(345,'dbsessions','0'),(346,'sessiontimeoutwarning','1200'),(347,'sessioncookie',''),(348,'sessioncookiepath',''),(349,'sessioncookiedomain',''),(350,'statsfirstrun','none'),(351,'statsmaxruntime','0'),(352,'statsruntimedays','31'),(353,'statsuserthreshold','0'),(354,'slasharguments','1'),(355,'getremoteaddrconf','3'),(356,'reverseproxyignore',''),(357,'proxyhost',''),(358,'proxyport','0'),(359,'proxytype','HTTP'),(360,'proxyuser',''),(361,'proxypassword',''),(362,'proxybypass','localhost, 127.0.0.1'),(363,'proxylogunsafe','0'),(364,'proxyfixunsafe','0'),(365,'maintenance_enabled','0'),(366,'maintenance_message',''),(367,'deleteunconfirmed','168'),(368,'deleteincompleteusers','0'),(369,'disablegradehistory','0'),(370,'gradehistorylifetime','0'),(371,'tempdatafoldercleanup','168'),(372,'xapicleanupperiod','4838400'),(373,'filescleanupperiod','86400'),(374,'extramemorylimit','512M'),(375,'maxtimelimit','0'),(376,'curlcache','120'),(377,'curltimeoutkbitrate','56'),(378,'cron_enabled','1'),(379,'cron_keepalive','180'),(380,'task_scheduled_concurrency_limit','3'),(381,'task_scheduled_max_runtime','1800'),(382,'task_adhoc_concurrency_limit','3'),(383,'task_adhoc_max_runtime','1800'),(384,'task_logmode','1'),(385,'task_logtostdout','1'),(386,'task_logretention','2419200'),(387,'task_logretainruns','20'),(388,'smtphosts','smtp.gmail.com'),(389,'smtpsecure','tls'),(390,'smtpauthtype','LOGIN'),(391,'smtpuser','angganix@gmail.com'),(392,'smtppass','ohmtxxzdxnpwqroe'),(393,'smtpmaxbulk','1'),(394,'noreplyaddress','noreply@edubridge.teknix.my.id'),(395,'allowedemaildomains',''),(396,'divertallemailsto',''),(397,'divertallemailsexcept',''),(398,'emaildkimselector',''),(399,'sitemailcharset','0'),(400,'allowusermailcharset','0'),(401,'allowattachments','1'),(402,'mailnewline','LF'),(403,'emailfromvia','1'),(404,'emailsubjectprefix',''),(405,'emailheaders',''),(406,'updateautocheck','1'),(407,'updateminmaturity','200'),(408,'updatenotifybuilds','0'),(409,'enablewsdocumentation','0'),(410,'customreportslimit','0'),(411,'customreportsliveediting','1'),(412,'dndallowtextandlinks','0'),(413,'pathtosassc',''),(414,'contextlocking','0'),(415,'contextlockappliestoadmin','1'),(416,'forceclean','0'),(417,'enablecourserelativedates','0'),(418,'enablesharingtomoodlenet','0'),(419,'enablecommunicationsubsystem','0'),(420,'debug','0'),(421,'debugdisplay','0'),(422,'perfdebug','7'),(423,'debugstringids','0'),(424,'debugsqltrace','0'),(425,'debugvalidators','0'),(426,'debugpageinfo','0'),(427,'debugtemplateinfo','0'),(428,'profilingenabled','0'),(429,'profilingincluded',''),(430,'profilingexcluded',''),(431,'profilingautofrec','0'),(432,'profilingallowme','0'),(433,'profilingallowall','0'),(434,'profilingslow','0'),(435,'profilinglifetime','1440'),(436,'profilingimportprefix','(I)'),(437,'release','4.3.1 (Build: 20231211)'),(438,'localcachedirpurged','1702495214'),(439,'scheduledtaskreset','1702495214'),(440,'paygw_plugins_sortorder','paypal'),(441,'allversionshash','49038e7031b5cbe9ee71c8710ccd8c1dc2797380'),(442,'allcomponenthash','821587ddca4e0d3f707dd2a3f61731dade64d06d'),(444,'registrationpending','0'),(445,'branch','403'),(446,'enableaccessibilitytools','1'),(447,'notloggedinroleid','6'),(448,'guestroleid','6'),(449,'defaultuserroleid','7'),(450,'creatornewroleid','3'),(451,'restorernewroleid','3'),(452,'sitepolicyhandler',''),(453,'gradebookroles','5'),(454,'h5plibraryhandler','h5plib_v124'),(455,'airnotifierurl','https://messages.moodle.net'),(456,'airnotifierport','443'),(457,'airnotifiermobileappname','com.moodle.moodlemobile'),(458,'airnotifierappname','commoodlemoodlemobile'),(459,'airnotifieraccesskey','de86525e3b2a76cee77c0b1807f00d0c'),(460,'bigbluebuttonbn_default_dpa_accepted','0'),(461,'bigbluebuttonbn_server_url','https://test-moodle.blindsidenetworks.com/bigbluebutton/'),(462,'bigbluebuttonbn_shared_secret','0b21fcaf34673a8c3ec8ed877d76ae34'),(463,'bigbluebuttonbn_checksum_algorithm','SHA1'),(464,'bigbluebuttonbn_poll_interval','5'),(465,'bigbluebuttonbn_welcome_default',''),(466,'bigbluebuttonbn_welcome_editable','1'),(467,'bigbluebuttonbn_recording_default','1'),(468,'bigbluebuttonbn_recording_refresh_period','300'),(469,'bigbluebuttonbn_recording_editable','1'),(470,'bigbluebuttonbn_recording_all_from_start_default','0'),(471,'bigbluebuttonbn_recording_all_from_start_editable','0'),(472,'bigbluebuttonbn_recording_hide_button_default','0'),(473,'bigbluebuttonbn_recording_hide_button_editable','0'),(474,'bigbluebuttonbn_recording_safe_formats','video,presentation'),(475,'bigbluebuttonbn_importrecordings_enabled','0'),(476,'bigbluebuttonbn_importrecordings_from_deleted_enabled','0'),(477,'bigbluebuttonbn_recordings_deleted_default','1'),(478,'bigbluebuttonbn_recordings_deleted_editable','0'),(479,'bigbluebuttonbn_recordings_imported_default','0'),(480,'bigbluebuttonbn_recordings_imported_editable','1'),(481,'bigbluebuttonbn_recordings_preview_default','1'),(482,'bigbluebuttonbn_recordings_preview_editable','0'),(483,'bigbluebuttonbn_recordings_asc_sort','0'),(484,'bigbluebuttonbn_recording_protect_editable','1'),(485,'bigbluebuttonbn_waitformoderator_default','0'),(486,'bigbluebuttonbn_waitformoderator_editable','1'),(487,'bigbluebuttonbn_waitformoderator_ping_interval','10'),(488,'bigbluebuttonbn_waitformoderator_cache_ttl','60'),(489,'bigbluebuttonbn_voicebridge_editable','0'),(490,'bigbluebuttonbn_preuploadpresentation_editable','0'),(491,'bigbluebuttonbn_userlimit_default','0'),(492,'bigbluebuttonbn_userlimit_editable','0'),(493,'bigbluebuttonbn_participant_moderator_default','0'),(494,'bigbluebuttonbn_muteonstart_default','0'),(495,'bigbluebuttonbn_muteonstart_editable','0'),(496,'bigbluebuttonbn_disablecam_default','0'),(497,'bigbluebuttonbn_disablecam_editable','1'),(498,'bigbluebuttonbn_disablemic_default','0'),(499,'bigbluebuttonbn_disablemic_editable','1'),(500,'bigbluebuttonbn_disableprivatechat_default','0'),(501,'bigbluebuttonbn_disableprivatechat_editable','1'),(502,'bigbluebuttonbn_disablepublicchat_default','0'),(503,'bigbluebuttonbn_disablepublicchat_editable','1'),(504,'bigbluebuttonbn_disablenote_default','0'),(505,'bigbluebuttonbn_disablenote_editable','1'),(506,'bigbluebuttonbn_hideuserlist_default','0'),(507,'bigbluebuttonbn_hideuserlist_editable','1'),(508,'bigbluebuttonbn_recordingready_enabled','0'),(509,'bigbluebuttonbn_profile_picture_enabled','0'),(510,'bigbluebuttonbn_meetingevents_enabled','0'),(511,'bigbluebuttonbn_guestaccess_enabled','0'),(512,'chat_method','ajax'),(513,'chat_refresh_userlist','10'),(514,'chat_old_ping','35'),(515,'chat_refresh_room','5'),(516,'chat_normal_updatemode','jsupdate'),(517,'chat_serverhost','edubridge.teknix.my.id'),(518,'chat_serverip','127.0.0.1'),(519,'chat_serverport','9111'),(520,'chat_servermax','100'),(521,'data_enablerssfeeds','0'),(522,'feedback_allowfullanonymous','0'),(523,'forum_displaymode','3'),(524,'forum_shortpost','300'),(525,'forum_longpost','600'),(526,'forum_manydiscussions','100'),(527,'forum_maxbytes','512000'),(528,'forum_maxattachments','9'),(529,'forum_subscription','0'),(530,'forum_trackingtype','1'),(531,'forum_trackreadposts','1'),(532,'forum_allowforcedreadtracking','0'),(533,'forum_oldpostdays','14'),(534,'forum_usermarksread','0'),(535,'forum_cleanreadtime','2'),(536,'digestmailtime','17'),(537,'forum_enablerssfeeds','0'),(538,'forum_enabletimedposts','1'),(539,'glossary_entbypage','10'),(540,'glossary_dupentries','0'),(541,'glossary_allowcomments','0'),(542,'glossary_linkbydefault','1'),(543,'glossary_defaultapproval','1'),(544,'glossary_enablerssfeeds','0'),(545,'glossary_linkentries','0'),(546,'glossary_casesensitive','0'),(547,'glossary_fullmatch','0'),(548,'block_course_list_adminview','all'),(549,'block_course_list_hideallcourseslink','0'),(550,'block_online_users_timetosee','5'),(551,'block_online_users_onlinestatushiding','1'),(552,'block_rss_client_num_entries','5'),(553,'block_rss_client_timeout','30'),(554,'block_html_allowcssclasses','0'),(555,'pathtounoconv','/usr/bin/unoconv'),(556,'filter_multilang_force_old','0'),(557,'profileroles','3,4,5'),(558,'coursecontact','3'),(559,'frontpage','6'),(560,'frontpageloggedin','6'),(561,'maxcategorydepth','2'),(562,'frontpagecourselimit','200'),(563,'commentsperpage','15'),(564,'defaultfrontpageroleid','8'),(565,'messageinbound_enabled','0'),(566,'messageinbound_mailbox',''),(567,'messageinbound_domain',''),(568,'messageinbound_host',''),(569,'messageinbound_hostssl','ssl'),(570,'messageinbound_hostuser',''),(571,'messageinbound_hostpass',''),(572,'mobilecssurl',''),(573,'webserviceprotocols','rest'),(574,'enablemobilewebservice','1'),(575,'timezone','Asia/Jakarta'),(576,'registerauth',''),(577,'supportemail','rian.jhonz15@gmail.com'),(580,'reposecretkey','1702493197ZFxC25uKkijNoqAq3HSfnIlpDQH1F1nn');
/*!40000 ALTER TABLE `mdl_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config_log`
--

DROP TABLE IF EXISTS `mdl_config_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_config_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `plugin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `oldvalue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_conflog_tim_ix` (`timemodified`),
  KEY `mdl_conflog_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=1924 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Changes done in server configuration through admin UI';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config_log`
--

LOCK TABLES `mdl_config_log` WRITE;
/*!40000 ALTER TABLE `mdl_config_log` DISABLE KEYS */;
INSERT INTO `mdl_config_log` VALUES (1,0,1702489185,NULL,'enableuserfeedback','0',NULL),(2,0,1702489185,NULL,'userfeedback_nextreminder','1',NULL),(3,0,1702489185,NULL,'userfeedback_remindafter','90',NULL),(4,0,1702489185,NULL,'enableoutcomes','0',NULL),(5,0,1702489185,NULL,'usecomments','1',NULL),(6,0,1702489185,NULL,'usetags','1',NULL),(7,0,1702489185,NULL,'enablenotes','1',NULL),(8,0,1702489185,NULL,'enableportfolios','0',NULL),(9,0,1702489185,NULL,'enablewebservices','0',NULL),(10,0,1702489185,NULL,'enablestats','0',NULL),(11,0,1702489185,NULL,'enablerssfeeds','0',NULL),(12,0,1702489185,NULL,'enableblogs','1',NULL),(13,0,1702489185,NULL,'enablecompletion','1',NULL),(14,0,1702489185,NULL,'enableavailability','1',NULL),(15,0,1702489185,NULL,'enableplagiarism','0',NULL),(16,0,1702489185,NULL,'enablebadges','1',NULL),(17,0,1702489185,NULL,'enableglobalsearch','0',NULL),(18,0,1702489185,NULL,'allowstealth','0',NULL),(19,0,1702489185,NULL,'enableanalytics','1',NULL),(20,0,1702489185,'core_competency','enabled','1',NULL),(21,0,1702489185,NULL,'messaging','1',NULL),(22,0,1702489185,NULL,'enablecustomreports','1',NULL),(23,0,1702489185,NULL,'allowemojipicker','1',NULL),(24,0,1702489185,NULL,'userfiltersdefault','realname',NULL),(25,0,1702489185,NULL,'defaultpreference_maildisplay','2',NULL),(26,0,1702489185,NULL,'defaultpreference_mailformat','1',NULL),(27,0,1702489185,NULL,'defaultpreference_maildigest','0',NULL),(28,0,1702489185,NULL,'defaultpreference_autosubscribe','1',NULL),(29,0,1702489185,NULL,'defaultpreference_trackforums','0',NULL),(30,0,1702489185,NULL,'defaultpreference_core_contentbank_visibility','1',NULL),(31,0,1702489185,NULL,'enroladminnewcourse','1',NULL),(32,0,1702489185,NULL,'autologinguests','0',NULL),(33,0,1702489185,NULL,'hiddenuserfields','',NULL),(34,0,1702489185,NULL,'showuseridentity','email',NULL),(35,0,1702489185,NULL,'fullnamedisplay','language',NULL),(36,0,1702489185,NULL,'alternativefullnameformat','language',NULL),(37,0,1702489185,NULL,'maxusersperpage','100',NULL),(38,0,1702489185,NULL,'enablegravatar','0',NULL),(39,0,1702489185,NULL,'gravatardefaulturl','mm',NULL),(40,0,1702489185,NULL,'agedigitalconsentverification','0',NULL),(41,0,1702489185,NULL,'agedigitalconsentmap','*, 16\nAT, 14\nBE, 13\nBG, 14\nCY, 14\nCZ, 15\nDK, 13\nEE, 13\nES, 14\nFI, 13\nFR, 15\nGB, 13\nGR, 15\nIT, 14\nLT, 14\nLV, 13\nMT, 13\nNO, 13\nPT, 13\nSE, 13\nUS, 13',NULL),(42,0,1702489185,NULL,'sitepolicy','',NULL),(43,0,1702489185,NULL,'sitepolicyguest','',NULL),(44,0,1702489185,NULL,'downloadcoursecontentallowed','0',NULL),(45,0,1702489185,NULL,'maxsizeperdownloadcoursefile','52428800',NULL),(46,0,1702489185,NULL,'enablecourserequests','1',NULL),(47,0,1702489185,NULL,'defaultrequestcategory','1',NULL),(48,0,1702489185,NULL,'lockrequestcategory','0',NULL),(49,0,1702489185,NULL,'courserequestnotify','',NULL),(50,0,1702489185,'moodlecourse','visible','1',NULL),(51,0,1702489185,'moodlecourse','downloadcontentsitedefault','0',NULL),(52,0,1702489185,'moodlecourse','participantsperpage','20',NULL),(53,0,1702489185,'moodlecourse','format','topics',NULL),(54,0,1702489185,'moodlecourse','maxsections','52',NULL),(55,0,1702489185,'moodlecourse','numsections','4',NULL),(56,0,1702489185,'moodlecourse','hiddensections','1',NULL),(57,0,1702489185,'moodlecourse','coursedisplay','0',NULL),(58,0,1702489185,'moodlecourse','courseenddateenabled','1',NULL),(59,0,1702489185,'moodlecourse','courseduration','31536000',NULL),(60,0,1702489185,'moodlecourse','lang','',NULL),(61,0,1702489185,'moodlecourse','newsitems','5',NULL),(62,0,1702489185,'moodlecourse','showgrades','1',NULL),(63,0,1702489185,'moodlecourse','showreports','0',NULL),(64,0,1702489185,'moodlecourse','showactivitydates','1',NULL),(65,0,1702489185,'moodlecourse','maxbytes','0',NULL),(66,0,1702489185,'moodlecourse','enablecompletion','1',NULL),(67,0,1702489185,'moodlecourse','showcompletionconditions','1',NULL),(68,0,1702489185,'moodlecourse','groupmode','0',NULL),(69,0,1702489185,'moodlecourse','groupmodeforce','0',NULL),(70,0,1702489185,'moodlecourse','coursecommunicationprovider','none',NULL),(71,0,1702489185,NULL,'activitychoosertabmode','3',NULL),(72,0,1702489185,NULL,'activitychooseractivefooter','hidden',NULL),(73,0,1702489185,'backup','loglifetime','30',NULL),(74,0,1702489185,'backup','backup_general_users','1',NULL),(75,0,1702489185,'backup','backup_general_users_locked','',NULL),(76,0,1702489185,'backup','backup_general_anonymize','0',NULL),(77,0,1702489185,'backup','backup_general_anonymize_locked','',NULL),(78,0,1702489185,'backup','backup_general_role_assignments','1',NULL),(79,0,1702489185,'backup','backup_general_role_assignments_locked','',NULL),(80,0,1702489185,'backup','backup_general_activities','1',NULL),(81,0,1702489185,'backup','backup_general_activities_locked','',NULL),(82,0,1702489185,'backup','backup_general_blocks','1',NULL),(83,0,1702489185,'backup','backup_general_blocks_locked','',NULL),(84,0,1702489185,'backup','backup_general_files','1',NULL),(85,0,1702489185,'backup','backup_general_files_locked','',NULL),(86,0,1702489185,'backup','backup_general_filters','1',NULL),(87,0,1702489185,'backup','backup_general_filters_locked','',NULL),(88,0,1702489185,'backup','backup_general_comments','1',NULL),(89,0,1702489185,'backup','backup_general_comments_locked','',NULL),(90,0,1702489185,'backup','backup_general_badges','1',NULL),(91,0,1702489185,'backup','backup_general_badges_locked','',NULL),(92,0,1702489185,'backup','backup_general_calendarevents','1',NULL),(93,0,1702489185,'backup','backup_general_calendarevents_locked','',NULL),(94,0,1702489185,'backup','backup_general_userscompletion','1',NULL),(95,0,1702489185,'backup','backup_general_userscompletion_locked','',NULL),(96,0,1702489185,'backup','backup_general_logs','0',NULL),(97,0,1702489185,'backup','backup_general_logs_locked','',NULL),(98,0,1702489185,'backup','backup_general_histories','0',NULL),(99,0,1702489186,'backup','backup_general_histories_locked','',NULL),(100,0,1702489186,'backup','backup_general_questionbank','1',NULL),(101,0,1702489186,'backup','backup_general_questionbank_locked','',NULL),(102,0,1702489186,'backup','backup_general_groups','1',NULL),(103,0,1702489186,'backup','backup_general_groups_locked','',NULL),(104,0,1702489186,'backup','backup_general_competencies','1',NULL),(105,0,1702489186,'backup','backup_general_competencies_locked','',NULL),(106,0,1702489186,'backup','backup_general_contentbankcontent','1',NULL),(107,0,1702489186,'backup','backup_general_contentbankcontent_locked','',NULL),(108,0,1702489186,'backup','backup_general_xapistate','1',NULL),(109,0,1702489186,'backup','backup_general_xapistate_locked','',NULL),(110,0,1702489186,'backup','backup_general_legacyfiles','1',NULL),(111,0,1702489186,'backup','backup_general_legacyfiles_locked','',NULL),(112,0,1702489186,'backup','import_general_maxresults','10',NULL),(113,0,1702489186,'backup','import_general_duplicate_admin_allowed','0',NULL),(114,0,1702489186,'backup','backup_import_permissions','0',NULL),(115,0,1702489186,'backup','backup_import_permissions_locked','',NULL),(116,0,1702489186,'backup','backup_import_activities','1',NULL),(117,0,1702489186,'backup','backup_import_activities_locked','',NULL),(118,0,1702489186,'backup','backup_import_blocks','1',NULL),(119,0,1702489186,'backup','backup_import_blocks_locked','',NULL),(120,0,1702489186,'backup','backup_import_filters','1',NULL),(121,0,1702489186,'backup','backup_import_filters_locked','',NULL),(122,0,1702489186,'backup','backup_import_calendarevents','1',NULL),(123,0,1702489186,'backup','backup_import_calendarevents_locked','',NULL),(124,0,1702489186,'backup','backup_import_questionbank','1',NULL),(125,0,1702489186,'backup','backup_import_questionbank_locked','',NULL),(126,0,1702489186,'backup','backup_import_groups','1',NULL),(127,0,1702489186,'backup','backup_import_groups_locked','',NULL),(128,0,1702489186,'backup','backup_import_competencies','1',NULL),(129,0,1702489186,'backup','backup_import_competencies_locked','',NULL),(130,0,1702489186,'backup','backup_import_contentbankcontent','1',NULL),(131,0,1702489186,'backup','backup_import_contentbankcontent_locked','',NULL),(132,0,1702489186,'backup','backup_import_legacyfiles','1',NULL),(133,0,1702489186,'backup','backup_import_legacyfiles_locked','',NULL),(134,0,1702489186,'backup','backup_auto_active','0',NULL),(135,0,1702489186,'backup','backup_auto_weekdays','0000000',NULL),(136,0,1702489186,'backup','backup_auto_hour','0',NULL),(137,0,1702489186,'backup','backup_auto_minute','0',NULL),(138,0,1702489186,'backup','backup_auto_storage','0',NULL),(139,0,1702489186,'backup','backup_auto_destination','',NULL),(140,0,1702489186,'backup','backup_auto_max_kept','1',NULL),(141,0,1702489186,'backup','backup_auto_delete_days','0',NULL),(142,0,1702489186,'backup','backup_auto_min_kept','0',NULL),(143,0,1702489186,'backup','backup_shortname','0',NULL),(144,0,1702489186,'backup','backup_auto_skip_hidden','1',NULL),(145,0,1702489186,'backup','backup_auto_skip_modif_days','30',NULL),(146,0,1702489186,'backup','backup_auto_skip_modif_prev','0',NULL),(147,0,1702489186,'backup','backup_auto_users','1',NULL),(148,0,1702489186,'backup','backup_auto_role_assignments','1',NULL),(149,0,1702489186,'backup','backup_auto_activities','1',NULL),(150,0,1702489186,'backup','backup_auto_blocks','1',NULL),(151,0,1702489186,'backup','backup_auto_files','1',NULL),(152,0,1702489186,'backup','backup_auto_filters','1',NULL),(153,0,1702489186,'backup','backup_auto_comments','1',NULL),(154,0,1702489186,'backup','backup_auto_badges','1',NULL),(155,0,1702489186,'backup','backup_auto_calendarevents','1',NULL),(156,0,1702489186,'backup','backup_auto_userscompletion','1',NULL),(157,0,1702489186,'backup','backup_auto_logs','0',NULL),(158,0,1702489186,'backup','backup_auto_histories','0',NULL),(159,0,1702489186,'backup','backup_auto_questionbank','1',NULL),(160,0,1702489186,'backup','backup_auto_groups','1',NULL),(161,0,1702489186,'backup','backup_auto_competencies','1',NULL),(162,0,1702489186,'backup','backup_auto_contentbankcontent','1',NULL),(163,0,1702489186,'backup','backup_auto_xapistate','1',NULL),(164,0,1702489186,'backup','backup_auto_legacyfiles','1',NULL),(165,0,1702489186,'restore','restore_general_users','1',NULL),(166,0,1702489186,'restore','restore_general_users_locked','',NULL),(167,0,1702489186,'restore','restore_general_enrolments','1',NULL),(168,0,1702489186,'restore','restore_general_enrolments_locked','',NULL),(169,0,1702489186,'restore','restore_general_role_assignments','1',NULL),(170,0,1702489186,'restore','restore_general_role_assignments_locked','',NULL),(171,0,1702489186,'restore','restore_general_permissions','1',NULL),(172,0,1702489186,'restore','restore_general_permissions_locked','',NULL),(173,0,1702489186,'restore','restore_general_activities','1',NULL),(174,0,1702489186,'restore','restore_general_activities_locked','',NULL),(175,0,1702489186,'restore','restore_general_blocks','1',NULL),(176,0,1702489186,'restore','restore_general_blocks_locked','',NULL),(177,0,1702489186,'restore','restore_general_filters','1',NULL),(178,0,1702489186,'restore','restore_general_filters_locked','',NULL),(179,0,1702489186,'restore','restore_general_comments','1',NULL),(180,0,1702489186,'restore','restore_general_comments_locked','',NULL),(181,0,1702489186,'restore','restore_general_badges','1',NULL),(182,0,1702489186,'restore','restore_general_badges_locked','',NULL),(183,0,1702489186,'restore','restore_general_calendarevents','1',NULL),(184,0,1702489186,'restore','restore_general_calendarevents_locked','',NULL),(185,0,1702489186,'restore','restore_general_userscompletion','1',NULL),(186,0,1702489186,'restore','restore_general_userscompletion_locked','',NULL),(187,0,1702489186,'restore','restore_general_logs','1',NULL),(188,0,1702489186,'restore','restore_general_logs_locked','',NULL),(189,0,1702489186,'restore','restore_general_histories','1',NULL),(190,0,1702489186,'restore','restore_general_histories_locked','',NULL),(191,0,1702489186,'restore','restore_general_groups','1',NULL),(192,0,1702489186,'restore','restore_general_groups_locked','',NULL),(193,0,1702489186,'restore','restore_general_competencies','1',NULL),(194,0,1702489186,'restore','restore_general_competencies_locked','',NULL),(195,0,1702489186,'restore','restore_general_contentbankcontent','1',NULL),(196,0,1702489186,'restore','restore_general_contentbankcontent_locked','',NULL),(197,0,1702489187,'restore','restore_general_xapistate','1',NULL),(198,0,1702489187,'restore','restore_general_xapistate_locked','',NULL),(199,0,1702489187,'restore','restore_general_legacyfiles','1',NULL),(200,0,1702489187,'restore','restore_general_legacyfiles_locked','',NULL),(201,0,1702489187,'restore','restore_merge_overwrite_conf','0',NULL),(202,0,1702489187,'restore','restore_merge_overwrite_conf_locked','',NULL),(203,0,1702489187,'restore','restore_merge_course_fullname','1',NULL),(204,0,1702489187,'restore','restore_merge_course_fullname_locked','',NULL),(205,0,1702489187,'restore','restore_merge_course_shortname','1',NULL),(206,0,1702489187,'restore','restore_merge_course_shortname_locked','',NULL),(207,0,1702489187,'restore','restore_merge_course_startdate','1',NULL),(208,0,1702489187,'restore','restore_merge_course_startdate_locked','',NULL),(209,0,1702489187,'restore','restore_replace_overwrite_conf','0',NULL),(210,0,1702489187,'restore','restore_replace_overwrite_conf_locked','',NULL),(211,0,1702489187,'restore','restore_replace_course_fullname','1',NULL),(212,0,1702489187,'restore','restore_replace_course_fullname_locked','',NULL),(213,0,1702489187,'restore','restore_replace_course_shortname','1',NULL),(214,0,1702489187,'restore','restore_replace_course_shortname_locked','',NULL),(215,0,1702489187,'restore','restore_replace_course_startdate','1',NULL),(216,0,1702489187,'restore','restore_replace_course_startdate_locked','',NULL),(217,0,1702489187,'restore','restore_replace_keep_roles_and_enrolments','0',NULL),(218,0,1702489187,'restore','restore_replace_keep_roles_and_enrolments_locked','',NULL),(219,0,1702489187,'restore','restore_replace_keep_groups_and_groupings','0',NULL),(220,0,1702489187,'restore','restore_replace_keep_groups_and_groupings_locked','',NULL),(221,0,1702489187,NULL,'enableasyncbackup','0',NULL),(222,0,1702489187,'backup','backup_async_message_users','0',NULL),(223,0,1702489187,'backup','backup_async_message_subject','Moodle {operation} completed successfully',NULL),(224,0,1702489187,'backup','backup_async_message','Your {operation} (ID: {backupid}) has completed successfully. You can access it here: <a href=\"{link}\">{link}</a>.',NULL),(225,0,1702489187,NULL,'grade_profilereport','user',NULL),(226,0,1702489187,NULL,'grade_aggregationposition','1',NULL),(227,0,1702489187,NULL,'grade_includescalesinaggregation','1',NULL),(228,0,1702489187,NULL,'grade_hiddenasdate','0',NULL),(229,0,1702489187,NULL,'gradepublishing','0',NULL),(230,0,1702489187,NULL,'grade_export_exportfeedback','0',NULL),(231,0,1702489187,NULL,'grade_export_displaytype','1',NULL),(232,0,1702489187,NULL,'grade_export_decimalpoints','2',NULL),(233,0,1702489187,NULL,'grade_export_userprofilefields','firstname,lastname,idnumber,institution,department,email',NULL),(234,0,1702489187,NULL,'grade_export_customprofilefields','',NULL),(235,0,1702489187,NULL,'recovergradesdefault','0',NULL),(236,0,1702489187,NULL,'gradeexport','',NULL),(237,0,1702489187,NULL,'unlimitedgrades','0',NULL),(238,0,1702489187,NULL,'grade_report_showmin','1',NULL),(239,0,1702489187,NULL,'gradepointmax','100',NULL),(240,0,1702489187,NULL,'gradepointdefault','100',NULL),(241,0,1702489187,NULL,'grade_minmaxtouse','1',NULL),(242,0,1702489187,NULL,'grade_mygrades_report','overview',NULL),(243,0,1702489187,NULL,'gradereport_mygradeurl','',NULL),(244,0,1702489187,NULL,'grade_hideforcedsettings','1',NULL),(245,0,1702489187,NULL,'grade_aggregation','13',NULL),(246,0,1702489187,NULL,'grade_aggregation_flag','0',NULL),(247,0,1702489187,NULL,'grade_aggregations_visible','13',NULL),(248,0,1702489187,NULL,'grade_aggregateonlygraded','1',NULL),(249,0,1702489187,NULL,'grade_aggregateonlygraded_flag','2',NULL),(250,0,1702489187,NULL,'grade_aggregateoutcomes','0',NULL),(251,0,1702489187,NULL,'grade_aggregateoutcomes_flag','2',NULL),(252,0,1702489187,NULL,'grade_keephigh','0',NULL),(253,0,1702489187,NULL,'grade_keephigh_flag','3',NULL),(254,0,1702489187,NULL,'grade_droplow','0',NULL),(255,0,1702489187,NULL,'grade_droplow_flag','2',NULL),(256,0,1702489187,NULL,'grade_overridecat','1',NULL),(257,0,1702489187,NULL,'grade_displaytype','1',NULL),(258,0,1702489187,NULL,'grade_decimalpoints','2',NULL),(259,0,1702489187,NULL,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime',NULL),(260,0,1702489187,NULL,'grade_report_showonlyactiveenrol','1',NULL),(261,0,1702489187,NULL,'grade_report_quickgrading','1',NULL),(262,0,1702489187,NULL,'grade_report_meanselection','1',NULL),(263,0,1702489187,NULL,'grade_report_showaverages','1',NULL),(264,0,1702489187,NULL,'grade_report_showranges','0',NULL),(265,0,1702489187,NULL,'grade_report_showuserimage','1',NULL),(266,0,1702489187,NULL,'grade_report_shownumberofgrades','0',NULL),(267,0,1702489187,NULL,'grade_report_averagesdisplaytype','inherit',NULL),(268,0,1702489187,NULL,'grade_report_rangesdisplaytype','inherit',NULL),(269,0,1702489187,NULL,'grade_report_averagesdecimalpoints','inherit',NULL),(270,0,1702489187,NULL,'grade_report_rangesdecimalpoints','inherit',NULL),(271,0,1702489187,NULL,'grade_report_historyperpage','50',NULL),(272,0,1702489187,NULL,'grade_report_overview_showrank','0',NULL),(273,0,1702489187,NULL,'grade_report_overview_showtotalsifcontainhidden','0',NULL),(274,0,1702489187,NULL,'grade_report_user_showrank','0',NULL),(275,0,1702489187,NULL,'grade_report_user_showpercentage','1',NULL),(276,0,1702489187,NULL,'grade_report_user_showgrade','1',NULL),(277,0,1702489187,NULL,'grade_report_user_showfeedback','1',NULL),(278,0,1702489187,NULL,'grade_report_user_showrange','1',NULL),(279,0,1702489187,NULL,'grade_report_user_showweight','1',NULL),(280,0,1702489187,NULL,'grade_report_user_showaverage','0',NULL),(281,0,1702489187,NULL,'grade_report_user_showlettergrade','0',NULL),(282,0,1702489187,NULL,'grade_report_user_rangedecimals','0',NULL),(283,0,1702489187,NULL,'grade_report_user_showhiddenitems','1',NULL),(284,0,1702489187,NULL,'grade_report_user_showtotalsifcontainhidden','0',NULL),(285,0,1702489187,NULL,'grade_report_user_showcontributiontocoursetotal','1',NULL),(286,0,1702489187,'analytics','modeinstruction','',NULL),(287,0,1702489187,'analytics','percentonline','0',NULL),(288,0,1702489187,'analytics','typeinstitution','',NULL),(289,0,1702489187,'analytics','levelinstitution','',NULL),(290,0,1702489187,'analytics','predictionsprocessor','\\mlbackend_php\\processor',NULL),(291,0,1702489187,'analytics','defaulttimesplittingsevaluation','\\core\\analytics\\time_splitting\\quarters_accum,\\core\\analytics\\time_splitting\\quarters,\\core\\analytics\\time_splitting\\single_range',NULL),(292,0,1702489187,'analytics','modeloutputdir','',NULL),(293,0,1702489187,'analytics','onlycli','1',NULL),(294,0,1702489187,'analytics','modeltimelimit','1200',NULL),(295,0,1702489187,'analytics','calclifetime','35',NULL),(296,0,1702489187,NULL,'badges_defaultissuername','',NULL),(297,0,1702489187,NULL,'badges_defaultissuercontact','',NULL),(298,0,1702489187,NULL,'badges_badgesalt','badges1702489176',NULL),(299,0,1702489187,NULL,'badges_allowcoursebadges','1',NULL),(300,0,1702489188,NULL,'badges_allowexternalbackpack','1',NULL),(301,0,1702489188,NULL,'rememberuserlicensepref','1',NULL),(302,0,1702489189,NULL,'forcetimezone','99',NULL),(303,0,1702489189,NULL,'country','0',NULL),(304,0,1702489189,NULL,'defaultcity','',NULL),(305,0,1702489189,NULL,'geoip2file','/home/edubridge/moodledata/geoip/GeoLite2-City.mmdb',NULL),(306,0,1702489189,NULL,'googlemapkey3','',NULL),(307,0,1702489189,NULL,'allcountrycodes','',NULL),(308,0,1702489189,NULL,'autolang','1',NULL),(309,0,1702489189,NULL,'lang','en',NULL),(310,0,1702489189,NULL,'autolangusercreation','1',NULL),(311,0,1702489189,NULL,'langmenu','1',NULL),(312,0,1702489189,NULL,'langlist','',NULL),(313,0,1702489189,NULL,'langcache','1',NULL),(314,0,1702489189,NULL,'langstringcache','1',NULL),(315,0,1702489189,NULL,'locale','',NULL),(316,0,1702489189,NULL,'latinexcelexport','0',NULL),(317,0,1702489189,NULL,'enablepdfexportfont','0',NULL),(318,0,1702489189,NULL,'messagingallusers','0',NULL),(319,0,1702489189,NULL,'messagingdefaultpressenter','1',NULL),(320,0,1702489189,NULL,'messagingdeletereadnotificationsdelay','604800',NULL),(321,0,1702489189,NULL,'messagingdeleteallnotificationsdelay','2620800',NULL),(322,0,1702489189,NULL,'messagingallowemailoverride','0',NULL),(323,0,1702489189,NULL,'requiremodintro','0',NULL),(324,0,1702489189,'antivirus','notifyemail','',NULL),(325,0,1702489189,'antivirus','notifylevel','2',NULL),(326,0,1702489189,'antivirus','threshold','1200',NULL),(327,0,1702489189,'antivirus','enablequarantine','0',NULL),(328,0,1702489189,'antivirus','quarantinetime','2419200',NULL),(329,0,1702489189,NULL,'registerauth','',NULL),(330,0,1702489189,NULL,'authloginviaemail','0',NULL),(331,0,1702489189,NULL,'allowaccountssameemail','0',NULL),(332,0,1702489189,NULL,'authpreventaccountcreation','0',NULL),(333,0,1702489189,NULL,'loginpageautofocus','0',NULL),(334,0,1702489189,NULL,'guestloginbutton','1',NULL),(335,0,1702489189,NULL,'limitconcurrentlogins','0',NULL),(336,0,1702489189,NULL,'alternateloginurl','',NULL),(337,0,1702489189,NULL,'forgottenpasswordurl','',NULL),(338,0,1702489189,NULL,'auth_instructions','',NULL),(339,0,1702489189,NULL,'allowemailaddresses','',NULL),(340,0,1702489189,NULL,'denyemailaddresses','',NULL),(341,0,1702489189,NULL,'verifychangedemail','1',NULL),(342,0,1702489189,NULL,'enableloginrecaptcha','0',NULL),(343,0,1702489189,NULL,'recaptchapublickey','',NULL),(344,0,1702489189,NULL,'recaptchaprivatekey','',NULL),(345,0,1702489189,'cachestore_apcu','testperformance','0',NULL),(346,0,1702489189,'cachestore_redis','test_server','',NULL),(347,0,1702489189,'cachestore_redis','test_encryption','0',NULL),(348,0,1702489189,'cachestore_redis','test_cafile','',NULL),(349,0,1702489189,'cachestore_redis','test_password','',NULL),(350,0,1702489189,'cachestore_redis','test_ttl','0',NULL),(351,0,1702489189,NULL,'filteruploadedfiles','0',NULL),(352,0,1702489189,NULL,'filtermatchoneperpage','0',NULL),(353,0,1702489189,NULL,'filtermatchonepertext','0',NULL),(354,0,1702489189,NULL,'filternavigationwithsystemcontext','0',NULL),(355,0,1702489189,NULL,'media_default_width','640',NULL),(356,0,1702489189,NULL,'media_default_height','360',NULL),(357,0,1702489189,NULL,'portfolio_moderate_filesize_threshold','1048576',NULL),(358,0,1702489189,NULL,'portfolio_high_filesize_threshold','5242880',NULL),(359,0,1702489189,NULL,'portfolio_moderate_db_threshold','20',NULL),(360,0,1702489189,NULL,'portfolio_high_db_threshold','50',NULL),(361,0,1702489189,'question_preview','behaviour','deferredfeedback',NULL),(362,0,1702489189,'question_preview','correctness','1',NULL),(363,0,1702489189,'question_preview','marks','2',NULL),(364,0,1702489189,'question_preview','markdp','2',NULL),(365,0,1702489189,'question_preview','feedback','1',NULL),(366,0,1702489189,'question_preview','generalfeedback','1',NULL),(367,0,1702489189,'question_preview','rightanswer','1',NULL),(368,0,1702489189,'question_preview','history','0',NULL),(369,0,1702489189,NULL,'repositorycacheexpire','120',NULL),(370,0,1702489189,NULL,'repositorygetfiletimeout','30',NULL),(371,0,1702489189,NULL,'repositorysyncfiletimeout','1',NULL),(372,0,1702489189,NULL,'repositorysyncimagetimeout','3',NULL),(373,0,1702489189,NULL,'repositoryallowexternallinks','1',NULL),(374,0,1702489189,NULL,'legacyfilesinnewcourses','0',NULL),(375,0,1702489189,NULL,'legacyfilesaddallowed','1',NULL),(376,0,1702489189,NULL,'searchengine','simpledb',NULL),(377,0,1702489189,NULL,'searchindexwhendisabled','0',NULL),(378,0,1702489189,NULL,'searchindextime','600',NULL),(379,0,1702489189,NULL,'searchallavailablecourses','0',NULL),(380,0,1702489189,NULL,'searchincludeallcourses','0',NULL),(381,0,1702489189,NULL,'searchenablecategories','0',NULL),(382,0,1702489189,NULL,'searchdefaultcategory','core-all',NULL),(383,0,1702489189,NULL,'searchhideallcategory','0',NULL),(384,0,1702489189,NULL,'searchmaxtopresults','3',NULL),(385,0,1702489189,NULL,'searchteacherroles','',NULL),(386,0,1702489189,NULL,'searchenginequeryonly','',NULL),(387,0,1702489189,NULL,'searchbannerenable','0',NULL),(388,0,1702489190,NULL,'searchbanner','',NULL),(389,0,1702489190,NULL,'allowbeforeblock','0',NULL),(390,0,1702489190,NULL,'allowedip','',NULL),(391,0,1702489190,NULL,'blockedip','',NULL),(392,0,1702489190,NULL,'protectusernames','1',NULL),(393,0,1702489190,NULL,'forcelogin','0',NULL),(394,0,1702489190,NULL,'forceloginforprofiles','1',NULL),(395,0,1702489190,NULL,'forceloginforprofileimage','0',NULL),(396,0,1702489190,NULL,'opentowebcrawlers','0',NULL),(397,0,1702489190,NULL,'allowindexing','0',NULL),(398,0,1702489190,NULL,'maxbytes','0',NULL),(399,0,1702489190,NULL,'userquota','104857600',NULL),(400,0,1702489190,NULL,'allowobjectembed','0',NULL),(401,0,1702489190,NULL,'enabletrusttext','0',NULL),(402,0,1702489190,NULL,'maxeditingtime','1800',NULL),(403,0,1702489190,NULL,'extendedusernamechars','0',NULL),(404,0,1702489190,NULL,'keeptagnamecase','1',NULL),(405,0,1702489190,NULL,'profilesforenrolledusersonly','1',NULL),(406,0,1702489190,NULL,'cronclionly','1',NULL),(407,0,1702489190,NULL,'cronremotepassword','',NULL),(408,0,1702489190,'tool_task','enablerunnow','1',NULL),(409,0,1702489190,NULL,'lockoutthreshold','0',NULL),(410,0,1702489190,NULL,'lockoutwindow','1800',NULL),(411,0,1702489190,NULL,'lockoutduration','1800',NULL),(412,0,1702489190,NULL,'passwordpolicy','1',NULL),(413,0,1702489190,NULL,'minpasswordlength','8',NULL),(414,0,1702489190,NULL,'minpassworddigits','1',NULL),(415,0,1702489190,NULL,'minpasswordlower','1',NULL),(416,0,1702489190,NULL,'minpasswordupper','1',NULL),(417,0,1702489190,NULL,'minpasswordnonalphanum','1',NULL),(418,0,1702489190,NULL,'maxconsecutiveidentchars','0',NULL),(419,0,1702489190,NULL,'passwordpolicycheckonlogin','0',NULL),(420,0,1702489190,NULL,'passwordreuselimit','0',NULL),(421,0,1702489190,NULL,'pwresettime','1800',NULL),(422,0,1702489190,NULL,'passwordchangelogout','0',NULL),(423,0,1702489190,NULL,'passwordchangetokendeletion','0',NULL),(424,0,1702489190,NULL,'tokenduration','7257600',NULL),(425,0,1702489190,NULL,'groupenrolmentkeypolicy','1',NULL),(426,0,1702489190,NULL,'disableuserimages','0',NULL),(427,0,1702489190,NULL,'emailchangeconfirmation','1',NULL),(428,0,1702489190,NULL,'rememberusername','2',NULL),(429,0,1702489190,NULL,'strictformsrequired','0',NULL),(430,0,1702489190,'adminpresets','sensiblesettings','recaptchapublickey@@none, recaptchaprivatekey@@none, googlemapkey3@@none, secretphrase@@url, cronremotepassword@@none, smtpuser@@none, smtppass@@none, proxypassword@@none, quizpassword@@quiz, allowedip@@none, blockedip@@none, dbpass@@logstore_database, messageinbound_hostpass@@none, bind_pw@@auth_cas, pass@@auth_db, bind_pw@@auth_ldap, dbpass@@enrol_database, bind_pw@@enrol_ldap, server_password@@search_solr, ssl_keypassword@@search_solr, alternateserver_password@@search_solr, alternatessl_keypassword@@search_solr, test_password@@cachestore_redis, password@@mlbackend_python, badges_badgesalt@@none, calendar_exportsalt@@none',NULL),(431,0,1702489190,NULL,'cookiesecure','1',NULL),(432,0,1702489190,NULL,'allowframembedding','0',NULL),(433,0,1702489190,NULL,'curlsecurityblockedhosts','127.0.0.0/8\n192.168.0.0/16\n10.0.0.0/8\n172.16.0.0/12\n0.0.0.0\nlocalhost\n169.254.169.254\n0000::1',NULL),(434,0,1702489190,NULL,'curlsecurityallowedport','443\n80',NULL),(435,0,1702489190,NULL,'referrerpolicy','default',NULL),(436,0,1702489190,NULL,'displayloginfailures','0',NULL),(437,0,1702489190,NULL,'notifyloginfailures','',NULL),(438,0,1702489190,NULL,'notifyloginthreshold','10',NULL),(439,0,1702489190,NULL,'themelist','',NULL),(440,0,1702489190,NULL,'themedesignermode','0',NULL),(441,0,1702489190,NULL,'allowuserthemes','0',NULL),(442,0,1702489190,NULL,'allowcoursethemes','0',NULL),(443,0,1702489190,NULL,'allowcategorythemes','0',NULL),(444,0,1702489190,NULL,'allowcohortthemes','0',NULL),(445,0,1702489190,NULL,'allowthemechangeonurl','0',NULL),(446,0,1702489190,NULL,'allowuserblockhiding','1',NULL),(447,0,1702489190,NULL,'langmenuinsecurelayout','0',NULL),(448,0,1702489190,NULL,'logininfoinsecurelayout','0',NULL),(449,0,1702489190,NULL,'custommenuitems','',NULL),(450,0,1702489190,NULL,'customusermenuitems','profile,moodle|/user/profile.php\ngrades,grades|/grade/report/mygrades.php\ncalendar,core_calendar|/calendar/view.php?view=month\nprivatefiles,moodle|/user/files.php\nreports,core_reportbuilder|/reportbuilder/index.php',NULL),(451,0,1702489190,'theme_boost','unaddableblocks','navigation,settings,course_list,section_links',NULL),(452,0,1702489190,'theme_boost','preset','default.scss',NULL),(453,0,1702489190,'theme_boost','presetfiles','',NULL),(454,0,1702489190,'theme_boost','backgroundimage','',NULL),(455,0,1702489190,'theme_boost','loginbackgroundimage','',NULL),(456,0,1702489190,'theme_boost','brandcolor','',NULL),(457,0,1702489190,'theme_boost','scsspre','',NULL),(458,0,1702489190,'theme_boost','scss','',NULL),(459,0,1702489190,'theme_classic','navbardark','0',NULL),(460,0,1702489190,'theme_classic','unaddableblocks','',NULL),(461,0,1702489190,'theme_classic','preset','default.scss',NULL),(462,0,1702489190,'theme_classic','presetfiles','',NULL),(463,0,1702489190,'theme_classic','backgroundimage','',NULL),(464,0,1702489190,'theme_classic','loginbackgroundimage','',NULL),(465,0,1702489190,'theme_classic','brandcolor','',NULL),(466,0,1702489190,'theme_classic','scsspre','',NULL),(467,0,1702489190,'theme_classic','scss','',NULL),(468,0,1702489190,'core_admin','logo','',NULL),(469,0,1702489190,'core_admin','logocompact','',NULL),(470,0,1702489190,'core_admin','favicon','',NULL),(471,0,1702489190,'core_admin','coursecolor1','#81ecec',NULL),(472,0,1702489190,'core_admin','coursecolor2','#74b9ff',NULL),(473,0,1702489190,'core_admin','coursecolor3','#a29bfe',NULL),(474,0,1702489190,'core_admin','coursecolor4','#dfe6e9',NULL),(475,0,1702489190,'core_admin','coursecolor5','#00b894',NULL),(476,0,1702489190,'core_admin','coursecolor6','#0984e3',NULL),(477,0,1702489190,'core_admin','coursecolor7','#b2bec3',NULL),(478,0,1702489190,'core_admin','coursecolor8','#fdcb6e',NULL),(479,0,1702489191,'core_admin','coursecolor9','#fd79a8',NULL),(480,0,1702489191,'core_admin','coursecolor10','#6c5ce7',NULL),(481,0,1702489191,NULL,'calendartype','gregorian',NULL),(482,0,1702489191,NULL,'calendar_adminseesall','0',NULL),(483,0,1702489191,NULL,'calendar_site_timeformat','0',NULL),(484,0,1702489191,NULL,'calendar_startwday','1',NULL),(485,0,1702489191,NULL,'calendar_weekend','65',NULL),(486,0,1702489191,NULL,'calendar_lookahead','21',NULL),(487,0,1702489191,NULL,'calendar_maxevents','10',NULL),(488,0,1702489191,NULL,'enablecalendarexport','1',NULL),(489,0,1702489191,NULL,'calendar_customexport','1',NULL),(490,0,1702489191,NULL,'calendar_exportlookahead','365',NULL),(491,0,1702489191,NULL,'calendar_exportlookback','5',NULL),(492,0,1702489191,NULL,'calendar_exportsalt','X1DUVg4IZRkombEJ8KNwS9jarLXvP5zHYCa4UCRHtAttuDrqgZVj6fzQAHfw',NULL),(493,0,1702489191,NULL,'calendar_showicalsource','1',NULL),(494,0,1702489191,NULL,'useblogassociations','1',NULL),(495,0,1702489191,NULL,'bloglevel','4',NULL),(496,0,1702489191,NULL,'useexternalblogs','1',NULL),(497,0,1702489191,NULL,'externalblogcrontime','86400',NULL),(498,0,1702489191,NULL,'maxexternalblogsperuser','1',NULL),(499,0,1702489191,NULL,'blogusecomments','1',NULL),(500,0,1702489191,NULL,'blogshowcommentscount','1',NULL),(501,0,1702489191,NULL,'enabledashboard','1',NULL),(502,0,1702489191,NULL,'defaulthomepage','1',NULL),(503,0,1702489191,NULL,'allowguestmymoodle','1',NULL),(504,0,1702489191,NULL,'navshowfullcoursenames','0',NULL),(505,0,1702489191,NULL,'navshowcategories','1',NULL),(506,0,1702489191,NULL,'navshowmycoursecategories','0',NULL),(507,0,1702489191,NULL,'navshowallcourses','0',NULL),(508,0,1702489191,NULL,'navsortmycoursessort','sortorder',NULL),(509,0,1702489191,NULL,'navsortmycourseshiddenlast','1',NULL),(510,0,1702489191,NULL,'navcourselimit','10',NULL),(511,0,1702489191,NULL,'usesitenameforsitepages','0',NULL),(512,0,1702489191,NULL,'linkadmincategories','1',NULL),(513,0,1702489191,NULL,'linkcoursesections','1',NULL),(514,0,1702489191,NULL,'navshowfrontpagemods','1',NULL),(515,0,1702489191,NULL,'navadduserpostslinks','1',NULL),(516,0,1702489191,NULL,'sitenameintitle','shortname',NULL),(517,0,1702489191,NULL,'formatstringstriptags','1',NULL),(518,0,1702489191,NULL,'emoticons','[{\"text\":\":-)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":-D\",\"imagename\":\"s\\/biggrin\",\"imagecomponent\":\"core\",\"altidentifier\":\"biggrin\",\"altcomponent\":\"core_pix\"},{\"text\":\";-)\",\"imagename\":\"s\\/wink\",\"imagecomponent\":\"core\",\"altidentifier\":\"wink\",\"altcomponent\":\"core_pix\"},{\"text\":\":-\\/\",\"imagename\":\"s\\/mixed\",\"imagecomponent\":\"core\",\"altidentifier\":\"mixed\",\"altcomponent\":\"core_pix\"},{\"text\":\"V-.\",\"imagename\":\"s\\/thoughtful\",\"imagecomponent\":\"core\",\"altidentifier\":\"thoughtful\",\"altcomponent\":\"core_pix\"},{\"text\":\":-P\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\":-p\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\"B-)\",\"imagename\":\"s\\/cool\",\"imagecomponent\":\"core\",\"altidentifier\":\"cool\",\"altcomponent\":\"core_pix\"},{\"text\":\"^-)\",\"imagename\":\"s\\/approve\",\"imagecomponent\":\"core\",\"altidentifier\":\"approve\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-)\",\"imagename\":\"s\\/wideeyes\",\"imagecomponent\":\"core\",\"altidentifier\":\"wideeyes\",\"altcomponent\":\"core_pix\"},{\"text\":\":o)\",\"imagename\":\"s\\/clown\",\"imagecomponent\":\"core\",\"altidentifier\":\"clown\",\"altcomponent\":\"core_pix\"},{\"text\":\":-(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\":(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-.\",\"imagename\":\"s\\/shy\",\"imagecomponent\":\"core\",\"altidentifier\":\"shy\",\"altcomponent\":\"core_pix\"},{\"text\":\":-I\",\"imagename\":\"s\\/blush\",\"imagecomponent\":\"core\",\"altidentifier\":\"blush\",\"altcomponent\":\"core_pix\"},{\"text\":\":-X\",\"imagename\":\"s\\/kiss\",\"imagecomponent\":\"core\",\"altidentifier\":\"kiss\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-o\",\"imagename\":\"s\\/surprise\",\"imagecomponent\":\"core\",\"altidentifier\":\"surprise\",\"altcomponent\":\"core_pix\"},{\"text\":\"P-|\",\"imagename\":\"s\\/blackeye\",\"imagecomponent\":\"core\",\"altidentifier\":\"blackeye\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-[\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"(grr)\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"xx-P\",\"imagename\":\"s\\/dead\",\"imagecomponent\":\"core\",\"altidentifier\":\"dead\",\"altcomponent\":\"core_pix\"},{\"text\":\"|-.\",\"imagename\":\"s\\/sleepy\",\"imagecomponent\":\"core\",\"altidentifier\":\"sleepy\",\"altcomponent\":\"core_pix\"},{\"text\":\"}-]\",\"imagename\":\"s\\/evil\",\"imagecomponent\":\"core\",\"altidentifier\":\"evil\",\"altcomponent\":\"core_pix\"},{\"text\":\"(h)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(heart)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(y)\",\"imagename\":\"s\\/yes\",\"imagecomponent\":\"core\",\"altidentifier\":\"yes\",\"altcomponent\":\"core\"},{\"text\":\"(n)\",\"imagename\":\"s\\/no\",\"imagecomponent\":\"core\",\"altidentifier\":\"no\",\"altcomponent\":\"core\"},{\"text\":\"(martin)\",\"imagename\":\"s\\/martin\",\"imagecomponent\":\"core\",\"altidentifier\":\"martin\",\"altcomponent\":\"core_pix\"},{\"text\":\"( )\",\"imagename\":\"s\\/egg\",\"imagecomponent\":\"core\",\"altidentifier\":\"egg\",\"altcomponent\":\"core_pix\"}]',NULL),(519,0,1702489191,NULL,'docroot','https://docs.moodle.org',NULL),(520,0,1702489191,NULL,'doclang','',NULL),(521,0,1702489191,NULL,'doctonewwindow','0',NULL),(522,0,1702489191,NULL,'coursecreationguide','https://moodle.academy/coursequickstart',NULL),(523,0,1702489191,NULL,'coursecontactduplicates','0',NULL),(524,0,1702489191,NULL,'courselistshortnames','0',NULL),(525,0,1702489191,NULL,'coursesperpage','20',NULL),(526,0,1702489191,NULL,'courseswithsummarieslimit','10',NULL),(527,0,1702489191,NULL,'courseoverviewfileslimit','1',NULL),(528,0,1702489191,NULL,'courseoverviewfilesext','web_image',NULL),(529,0,1702489191,NULL,'coursegraceperiodbefore','0',NULL),(530,0,1702489191,NULL,'coursegraceperiodafter','0',NULL),(531,0,1702489191,NULL,'yuicomboloading','1',NULL),(532,0,1702489191,NULL,'cachejs','1',NULL),(533,0,1702489191,NULL,'additionalhtmlhead','',NULL),(534,0,1702489191,NULL,'additionalhtmltopofbody','',NULL),(535,0,1702489191,NULL,'additionalhtmlfooter','',NULL),(536,0,1702489191,NULL,'cachetemplates','1',NULL),(537,0,1702489191,NULL,'pathtophp','',NULL),(538,0,1702489191,NULL,'pathtodu','',NULL),(539,0,1702489191,NULL,'aspellpath','',NULL),(540,0,1702489191,NULL,'pathtodot','',NULL),(541,0,1702489191,NULL,'pathtogs','/usr/bin/gs',NULL),(542,0,1702489191,NULL,'pathtopdftoppm','',NULL),(543,0,1702489191,NULL,'pathtopython','',NULL),(544,0,1702489191,NULL,'supportname','Admin User',NULL),(545,0,1702489191,NULL,'supportpage','',NULL),(546,0,1702489191,NULL,'supportavailability','1',NULL),(547,0,1702489191,NULL,'servicespage','',NULL),(548,0,1702489191,NULL,'dbsessions','0',NULL),(549,0,1702489191,NULL,'sessiontimeoutwarning','1200',NULL),(550,0,1702489191,NULL,'sessioncookie','',NULL),(551,0,1702489191,NULL,'sessioncookiepath','',NULL),(552,0,1702489191,NULL,'sessioncookiedomain','',NULL),(553,0,1702489191,NULL,'statsfirstrun','none',NULL),(554,0,1702489191,NULL,'statsmaxruntime','0',NULL),(555,0,1702489191,NULL,'statsruntimedays','31',NULL),(556,0,1702489191,NULL,'statsuserthreshold','0',NULL),(557,0,1702489191,NULL,'slasharguments','1',NULL),(558,0,1702489191,NULL,'getremoteaddrconf','3',NULL),(559,0,1702489191,NULL,'reverseproxyignore','',NULL),(560,0,1702489191,NULL,'proxyhost','',NULL),(561,0,1702489192,NULL,'proxyport','0',NULL),(562,0,1702489192,NULL,'proxytype','HTTP',NULL),(563,0,1702489192,NULL,'proxyuser','',NULL),(564,0,1702489192,NULL,'proxypassword','',NULL),(565,0,1702489192,NULL,'proxybypass','localhost, 127.0.0.1',NULL),(566,0,1702489192,NULL,'proxylogunsafe','0',NULL),(567,0,1702489192,NULL,'proxyfixunsafe','0',NULL),(568,0,1702489192,NULL,'maintenance_enabled','0',NULL),(569,0,1702489192,NULL,'maintenance_message','',NULL),(570,0,1702489192,NULL,'deleteunconfirmed','168',NULL),(571,0,1702489192,NULL,'deleteincompleteusers','0',NULL),(572,0,1702489192,NULL,'disablegradehistory','0',NULL),(573,0,1702489192,NULL,'gradehistorylifetime','0',NULL),(574,0,1702489192,NULL,'tempdatafoldercleanup','168',NULL),(575,0,1702489192,NULL,'xapicleanupperiod','4838400',NULL),(576,0,1702489192,NULL,'filescleanupperiod','86400',NULL),(577,0,1702489192,NULL,'extramemorylimit','512M',NULL),(578,0,1702489192,NULL,'maxtimelimit','0',NULL),(579,0,1702489192,NULL,'curlcache','120',NULL),(580,0,1702489192,NULL,'curltimeoutkbitrate','56',NULL),(581,0,1702489192,NULL,'cron_enabled','1',NULL),(582,0,1702489192,NULL,'cron_keepalive','180',NULL),(583,0,1702489192,NULL,'task_scheduled_concurrency_limit','3',NULL),(584,0,1702489192,NULL,'task_scheduled_max_runtime','1800',NULL),(585,0,1702489192,NULL,'task_adhoc_concurrency_limit','3',NULL),(586,0,1702489192,NULL,'task_adhoc_max_runtime','1800',NULL),(587,0,1702489192,NULL,'task_logmode','1',NULL),(588,0,1702489192,NULL,'task_logtostdout','1',NULL),(589,0,1702489192,NULL,'task_logretention','2419200',NULL),(590,0,1702489192,NULL,'task_logretainruns','20',NULL),(591,0,1702489192,NULL,'smtphosts','',NULL),(592,0,1702489192,NULL,'smtpsecure','',NULL),(593,0,1702489192,NULL,'smtpauthtype','LOGIN',NULL),(594,0,1702489192,NULL,'smtpuser','',NULL),(595,0,1702489192,NULL,'smtppass','',NULL),(596,0,1702489192,NULL,'smtpmaxbulk','1',NULL),(597,0,1702489192,NULL,'noreplyaddress','noreply@edubridge.teknix.my.id',NULL),(598,0,1702489192,NULL,'allowedemaildomains','',NULL),(599,0,1702489192,NULL,'divertallemailsto','',NULL),(600,0,1702489192,NULL,'divertallemailsexcept','',NULL),(601,0,1702489192,NULL,'emaildkimselector','',NULL),(602,0,1702489192,NULL,'sitemailcharset','0',NULL),(603,0,1702489192,NULL,'allowusermailcharset','0',NULL),(604,0,1702489192,NULL,'allowattachments','1',NULL),(605,0,1702489192,NULL,'mailnewline','LF',NULL),(606,0,1702489192,NULL,'emailfromvia','1',NULL),(607,0,1702489192,NULL,'emailsubjectprefix','',NULL),(608,0,1702489192,NULL,'emailheaders','',NULL),(609,0,1702489192,NULL,'updateautocheck','1',NULL),(610,0,1702489192,NULL,'updateminmaturity','200',NULL),(611,0,1702489192,NULL,'updatenotifybuilds','0',NULL),(612,0,1702489192,NULL,'enablewsdocumentation','0',NULL),(613,0,1702489192,NULL,'customreportslimit','0',NULL),(614,0,1702489192,NULL,'customreportsliveediting','1',NULL),(615,0,1702489192,NULL,'dndallowtextandlinks','0',NULL),(616,0,1702489192,NULL,'pathtosassc','',NULL),(617,0,1702489192,NULL,'contextlocking','0',NULL),(618,0,1702489192,NULL,'contextlockappliestoadmin','1',NULL),(619,0,1702489192,NULL,'forceclean','0',NULL),(620,0,1702489192,NULL,'enablecourserelativedates','0',NULL),(621,0,1702489192,NULL,'enablesharingtomoodlenet','0',NULL),(622,0,1702489192,NULL,'enablecommunicationsubsystem','0',NULL),(623,0,1702489192,NULL,'debug','0',NULL),(624,0,1702489192,NULL,'debugdisplay','0',NULL),(625,0,1702489192,NULL,'perfdebug','7',NULL),(626,0,1702489192,NULL,'debugstringids','0',NULL),(627,0,1702489192,NULL,'debugsqltrace','0',NULL),(628,0,1702489192,NULL,'debugvalidators','0',NULL),(629,0,1702489192,NULL,'debugpageinfo','0',NULL),(630,0,1702489192,NULL,'debugtemplateinfo','0',NULL),(631,0,1702489192,NULL,'profilingenabled','0',NULL),(632,0,1702489192,NULL,'profilingincluded','',NULL),(633,0,1702489192,NULL,'profilingexcluded','',NULL),(634,0,1702489192,NULL,'profilingautofrec','0',NULL),(635,0,1702489192,NULL,'profilingallowme','0',NULL),(636,0,1702489192,NULL,'profilingallowall','0',NULL),(637,0,1702489192,NULL,'profilingslow','0',NULL),(638,0,1702489192,NULL,'profilinglifetime','1440',NULL),(639,0,1702489192,NULL,'profilingimportprefix','(I)',NULL),(640,0,1702489194,'core_competency','pushcourseratingstouserplans','1',NULL),(641,0,1702489228,'activitynames','filter_active','1',''),(642,0,1702489228,'core_filter','order','activitynames','activitynames'),(643,0,1702489228,'displayh5p','filter_active','1',''),(644,0,1702489228,'core_filter','order','displayh5p, activitynames','activitynames, displayh5p'),(645,0,1702489229,'emoticon','filter_active','1',''),(646,0,1702489229,'mathjaxloader','filter_active','1',''),(647,0,1702489229,'core_filter','order','displayh5p, activitynames, mathjaxloader, emoticon','displayh5p, activitynames, emoticon, mathjaxloader'),(648,0,1702489229,'mediaplugin','filter_active','1',''),(649,0,1702489229,'urltolink','filter_active','1',''),(650,0,1702489229,'core_filter','order','displayh5p, activitynames, mathjaxloader, emoticon, urltolink, mediaplugin','displayh5p, activitynames, mathjaxloader, emoticon, mediaplugin, urltolink'),(651,0,1702489256,'tiny_noautolink','disabled','1','0'),(652,2,1702489337,NULL,'enableaccessibilitytools','1',NULL),(653,2,1702489337,'tool_moodlenet','enablemoodlenet','1',NULL),(654,2,1702489337,NULL,'notloggedinroleid','6',NULL),(655,2,1702489337,NULL,'guestroleid','6',NULL),(656,2,1702489337,NULL,'defaultuserroleid','7',NULL),(657,2,1702489337,NULL,'creatornewroleid','3',NULL),(658,2,1702489337,NULL,'restorernewroleid','3',NULL),(659,2,1702489337,'tool_dataprivacy','contactdataprotectionofficer','0',NULL),(660,2,1702489337,'tool_dataprivacy','automaticdataexportapproval','0',NULL),(661,2,1702489337,'tool_dataprivacy','automaticdatadeletionapproval','0',NULL),(662,2,1702489337,'tool_dataprivacy','automaticdeletionrequests','1',NULL),(663,2,1702489337,'tool_dataprivacy','privacyrequestexpiry','604800',NULL),(664,2,1702489337,'tool_dataprivacy','requireallenddatesforuserdeletion','1',NULL),(665,2,1702489337,'tool_dataprivacy','showdataretentionsummary','1',NULL),(666,2,1702489337,'tool_dataprivacy','allowfiltering','0',NULL),(667,2,1702489337,'tool_log','exportlog','1',NULL),(668,2,1702489337,NULL,'sitepolicyhandler','',NULL),(669,2,1702489337,NULL,'gradebookroles','5',NULL),(670,2,1702489337,'analytics','logstore','logstore_standard',NULL),(671,2,1702489337,NULL,'h5plibraryhandler','h5plib_v124',NULL),(672,2,1702489337,NULL,'airnotifierurl','https://messages.moodle.net',NULL),(673,2,1702489337,NULL,'airnotifierport','443',NULL),(674,2,1702489338,NULL,'airnotifiermobileappname','com.moodle.moodlemobile',NULL),(675,2,1702489338,NULL,'airnotifierappname','commoodlemoodlemobile',NULL),(676,2,1702489338,NULL,'airnotifieraccesskey','',NULL),(677,2,1702489338,'message_airnotifier','encryptnotifications','0',NULL),(678,2,1702489338,'message_airnotifier','encryptprocessing','0',NULL),(679,2,1702489338,'assign','feedback_plugin_for_gradebook','assignfeedback_comments',NULL),(680,2,1702489338,'assign','showrecentsubmissions','0',NULL),(681,2,1702489338,'assign','submissionreceipts','1',NULL),(682,2,1702489338,'assign','submissionstatement','This submission is my own work, except where I have acknowledged the use of the works of other people.',NULL),(683,2,1702489338,'assign','submissionstatementteamsubmission','This submission is the work of my group, except where we have acknowledged the use of the works of other people.',NULL),(684,2,1702489338,'assign','submissionstatementteamsubmissionallsubmit','This submission is my own work as a group member, except where I have acknowledged the use of the works of other people.',NULL),(685,2,1702489338,'assign','maxperpage','-1',NULL),(686,2,1702489338,'assign','alwaysshowdescription','1',NULL),(687,2,1702489338,'assign','alwaysshowdescription_adv','',NULL),(688,2,1702489338,'assign','alwaysshowdescription_locked','',NULL),(689,2,1702489338,'assign','allowsubmissionsfromdate','0',NULL),(690,2,1702489338,'assign','allowsubmissionsfromdate_enabled','1',NULL),(691,2,1702489338,'assign','allowsubmissionsfromdate_adv','',NULL),(692,2,1702489338,'assign','duedate','604800',NULL),(693,2,1702489338,'assign','duedate_enabled','1',NULL),(694,2,1702489338,'assign','duedate_adv','',NULL),(695,2,1702489338,'assign','cutoffdate','1209600',NULL),(696,2,1702489338,'assign','cutoffdate_enabled','',NULL),(697,2,1702489338,'assign','cutoffdate_adv','',NULL),(698,2,1702489338,'assign','enabletimelimit','0',NULL),(699,2,1702489338,'assign','gradingduedate','1209600',NULL),(700,2,1702489338,'assign','gradingduedate_enabled','1',NULL),(701,2,1702489338,'assign','gradingduedate_adv','',NULL),(702,2,1702489338,'assign','submissiondrafts','0',NULL),(703,2,1702489338,'assign','submissiondrafts_adv','',NULL),(704,2,1702489338,'assign','submissiondrafts_locked','',NULL),(705,2,1702489338,'assign','requiresubmissionstatement','0',NULL),(706,2,1702489338,'assign','requiresubmissionstatement_adv','',NULL),(707,2,1702489338,'assign','requiresubmissionstatement_locked','',NULL),(708,2,1702489338,'assign','attemptreopenmethod','none',NULL),(709,2,1702489338,'assign','attemptreopenmethod_adv','',NULL),(710,2,1702489338,'assign','attemptreopenmethod_locked','',NULL),(711,2,1702489338,'assign','maxattempts','-1',NULL),(712,2,1702489338,'assign','maxattempts_adv','',NULL),(713,2,1702489338,'assign','maxattempts_locked','',NULL),(714,2,1702489338,'assign','teamsubmission','0',NULL),(715,2,1702489338,'assign','teamsubmission_adv','',NULL),(716,2,1702489338,'assign','teamsubmission_locked','',NULL),(717,2,1702489338,'assign','preventsubmissionnotingroup','0',NULL),(718,2,1702489338,'assign','preventsubmissionnotingroup_adv','',NULL),(719,2,1702489338,'assign','preventsubmissionnotingroup_locked','',NULL),(720,2,1702489338,'assign','requireallteammemberssubmit','0',NULL),(721,2,1702489338,'assign','requireallteammemberssubmit_adv','',NULL),(722,2,1702489338,'assign','requireallteammemberssubmit_locked','',NULL),(723,2,1702489338,'assign','teamsubmissiongroupingid','',NULL),(724,2,1702489338,'assign','teamsubmissiongroupingid_adv','',NULL),(725,2,1702489338,'assign','sendnotifications','0',NULL),(726,2,1702489338,'assign','sendnotifications_adv','',NULL),(727,2,1702489338,'assign','sendnotifications_locked','',NULL),(728,2,1702489338,'assign','sendlatenotifications','0',NULL),(729,2,1702489338,'assign','sendlatenotifications_adv','',NULL),(730,2,1702489338,'assign','sendlatenotifications_locked','',NULL),(731,2,1702489338,'assign','sendstudentnotifications','1',NULL),(732,2,1702489338,'assign','sendstudentnotifications_adv','',NULL),(733,2,1702489338,'assign','sendstudentnotifications_locked','',NULL),(734,2,1702489338,'assign','blindmarking','0',NULL),(735,2,1702489338,'assign','blindmarking_adv','',NULL),(736,2,1702489338,'assign','blindmarking_locked','',NULL),(737,2,1702489338,'assign','hidegrader','0',NULL),(738,2,1702489338,'assign','hidegrader_adv','',NULL),(739,2,1702489338,'assign','hidegrader_locked','',NULL),(740,2,1702489338,'assign','markingworkflow','0',NULL),(741,2,1702489338,'assign','markingworkflow_adv','',NULL),(742,2,1702489338,'assign','markingworkflow_locked','',NULL),(743,2,1702489338,'assign','markingallocation','0',NULL),(744,2,1702489338,'assign','markingallocation_adv','',NULL),(745,2,1702489338,'assign','markingallocation_locked','',NULL),(746,2,1702489338,'assignsubmission_file','default','1',NULL),(747,2,1702489338,'assignsubmission_file','maxfiles','20',NULL),(748,2,1702489338,'assignsubmission_file','filetypes','',NULL),(749,2,1702489338,'assignsubmission_file','maxbytes','0',NULL),(750,2,1702489338,'assignsubmission_onlinetext','default','0',NULL),(751,2,1702489338,'assignfeedback_comments','default','1',NULL),(752,2,1702489338,'assignfeedback_comments','inline','0',NULL),(753,2,1702489338,'assignfeedback_comments','inline_adv','',NULL),(754,2,1702489338,'assignfeedback_comments','inline_locked','',NULL),(755,2,1702489338,'assignfeedback_editpdf','default','1',NULL),(756,2,1702489338,'assignfeedback_editpdf','stamps','',NULL),(757,2,1702489338,'assignfeedback_file','default','0',NULL),(758,2,1702489338,'assignfeedback_offline','default','0',NULL),(759,2,1702489338,NULL,'bigbluebuttonbn_default_dpa_accepted','0',NULL),(760,2,1702489338,NULL,'bigbluebuttonbn_server_url','https://test-moodle.blindsidenetworks.com/bigbluebutton/',NULL),(761,2,1702489338,NULL,'bigbluebuttonbn_shared_secret','********',NULL),(762,2,1702489338,NULL,'bigbluebuttonbn_checksum_algorithm','SHA1',NULL),(763,2,1702489338,NULL,'bigbluebuttonbn_poll_interval','5',NULL),(764,2,1702489338,NULL,'bigbluebuttonbn_welcome_default','',NULL),(765,2,1702489338,NULL,'bigbluebuttonbn_welcome_editable','1',NULL),(766,2,1702489338,NULL,'bigbluebuttonbn_recording_default','1',NULL),(767,2,1702489338,NULL,'bigbluebuttonbn_recording_refresh_period','300',NULL),(768,2,1702489338,NULL,'bigbluebuttonbn_recording_editable','1',NULL),(769,2,1702489338,NULL,'bigbluebuttonbn_recording_all_from_start_default','0',NULL),(770,2,1702489338,NULL,'bigbluebuttonbn_recording_all_from_start_editable','0',NULL),(771,2,1702489338,NULL,'bigbluebuttonbn_recording_hide_button_default','0',NULL),(772,2,1702489338,NULL,'bigbluebuttonbn_recording_hide_button_editable','0',NULL),(773,2,1702489338,NULL,'bigbluebuttonbn_recording_safe_formats','video,presentation',NULL),(774,2,1702489338,NULL,'bigbluebuttonbn_importrecordings_enabled','0',NULL),(775,2,1702489338,NULL,'bigbluebuttonbn_importrecordings_from_deleted_enabled','0',NULL),(776,2,1702489338,NULL,'bigbluebuttonbn_recordings_deleted_default','1',NULL),(777,2,1702489338,NULL,'bigbluebuttonbn_recordings_deleted_editable','0',NULL),(778,2,1702489338,NULL,'bigbluebuttonbn_recordings_imported_default','0',NULL),(779,2,1702489338,NULL,'bigbluebuttonbn_recordings_imported_editable','1',NULL),(780,2,1702489338,NULL,'bigbluebuttonbn_recordings_preview_default','1',NULL),(781,2,1702489338,NULL,'bigbluebuttonbn_recordings_preview_editable','0',NULL),(782,2,1702489338,NULL,'bigbluebuttonbn_recordings_asc_sort','0',NULL),(783,2,1702489338,NULL,'bigbluebuttonbn_recording_protect_editable','1',NULL),(784,2,1702489338,NULL,'bigbluebuttonbn_waitformoderator_default','0',NULL),(785,2,1702489338,NULL,'bigbluebuttonbn_waitformoderator_editable','1',NULL),(786,2,1702489338,NULL,'bigbluebuttonbn_waitformoderator_ping_interval','10',NULL),(787,2,1702489338,NULL,'bigbluebuttonbn_waitformoderator_cache_ttl','60',NULL),(788,2,1702489338,NULL,'bigbluebuttonbn_voicebridge_editable','0',NULL),(789,2,1702489338,NULL,'bigbluebuttonbn_preuploadpresentation_editable','0',NULL),(790,2,1702489338,'mod_bigbluebuttonbn','presentationdefault','',NULL),(791,2,1702489338,NULL,'bigbluebuttonbn_userlimit_default','0',NULL),(792,2,1702489338,NULL,'bigbluebuttonbn_userlimit_editable','0',NULL),(793,2,1702489338,NULL,'bigbluebuttonbn_participant_moderator_default','0',NULL),(794,2,1702489338,NULL,'bigbluebuttonbn_muteonstart_default','0',NULL),(795,2,1702489338,NULL,'bigbluebuttonbn_muteonstart_editable','0',NULL),(796,2,1702489338,NULL,'bigbluebuttonbn_disablecam_default','0',NULL),(797,2,1702489338,NULL,'bigbluebuttonbn_disablecam_editable','1',NULL),(798,2,1702489338,NULL,'bigbluebuttonbn_disablemic_default','0',NULL),(799,2,1702489338,NULL,'bigbluebuttonbn_disablemic_editable','1',NULL),(800,2,1702489338,NULL,'bigbluebuttonbn_disableprivatechat_default','0',NULL),(801,2,1702489338,NULL,'bigbluebuttonbn_disableprivatechat_editable','1',NULL),(802,2,1702489338,NULL,'bigbluebuttonbn_disablepublicchat_default','0',NULL),(803,2,1702489338,NULL,'bigbluebuttonbn_disablepublicchat_editable','1',NULL),(804,2,1702489338,NULL,'bigbluebuttonbn_disablenote_default','0',NULL),(805,2,1702489338,NULL,'bigbluebuttonbn_disablenote_editable','1',NULL),(806,2,1702489338,NULL,'bigbluebuttonbn_hideuserlist_default','0',NULL),(807,2,1702489338,NULL,'bigbluebuttonbn_hideuserlist_editable','1',NULL),(808,2,1702489338,NULL,'bigbluebuttonbn_recordingready_enabled','0',NULL),(809,2,1702489338,NULL,'bigbluebuttonbn_profile_picture_enabled','0',NULL),(810,2,1702489338,NULL,'bigbluebuttonbn_meetingevents_enabled','0',NULL),(811,2,1702489338,NULL,'bigbluebuttonbn_guestaccess_enabled','0',NULL),(812,2,1702489338,'book','numberingoptions','0,1,2,3',NULL),(813,2,1702489338,'book','numbering','1',NULL),(814,2,1702489338,NULL,'chat_method','ajax',NULL),(815,2,1702489338,NULL,'chat_refresh_userlist','10',NULL),(816,2,1702489338,NULL,'chat_old_ping','35',NULL),(817,2,1702489338,NULL,'chat_refresh_room','5',NULL),(818,2,1702489338,NULL,'chat_normal_updatemode','jsupdate',NULL),(819,2,1702489338,NULL,'chat_serverhost','edubridge.teknix.my.id',NULL),(820,2,1702489338,NULL,'chat_serverip','127.0.0.1',NULL),(821,2,1702489338,NULL,'chat_serverport','9111',NULL),(822,2,1702489338,NULL,'chat_servermax','100',NULL),(823,2,1702489338,NULL,'data_enablerssfeeds','0',NULL),(824,2,1702489338,NULL,'feedback_allowfullanonymous','0',NULL),(825,2,1702489338,'resource','framesize','130',NULL),(826,2,1702489338,'resource','displayoptions','0,1,4,5,6',NULL),(827,2,1702489338,'resource','printintro','1',NULL),(828,2,1702489338,'resource','display','0',NULL),(829,2,1702489338,'resource','showsize','0',NULL),(830,2,1702489338,'resource','showtype','1',NULL),(831,2,1702489338,'resource','showdate','0',NULL),(832,2,1702489338,'resource','popupwidth','620',NULL),(833,2,1702489338,'resource','popupheight','450',NULL),(834,2,1702489338,'resource','filterfiles','0',NULL),(835,2,1702489338,'folder','showexpanded','1',NULL),(836,2,1702489338,'folder','maxsizetodownload','0',NULL),(837,2,1702489339,NULL,'forum_displaymode','3',NULL),(838,2,1702489339,NULL,'forum_shortpost','300',NULL),(839,2,1702489339,NULL,'forum_longpost','600',NULL),(840,2,1702489339,NULL,'forum_manydiscussions','100',NULL),(841,2,1702489339,NULL,'forum_maxbytes','512000',NULL),(842,2,1702489339,NULL,'forum_maxattachments','9',NULL),(843,2,1702489339,NULL,'forum_subscription','0',NULL),(844,2,1702489339,NULL,'forum_trackingtype','1',NULL),(845,2,1702489339,NULL,'forum_trackreadposts','1',NULL),(846,2,1702489339,NULL,'forum_allowforcedreadtracking','0',NULL),(847,2,1702489339,NULL,'forum_oldpostdays','14',NULL),(848,2,1702489339,NULL,'forum_usermarksread','0',NULL),(849,2,1702489339,NULL,'forum_cleanreadtime','2',NULL),(850,2,1702489339,NULL,'digestmailtime','17',NULL),(851,2,1702489339,NULL,'forum_enablerssfeeds','0',NULL),(852,2,1702489339,NULL,'forum_enabletimedposts','1',NULL),(853,2,1702489339,NULL,'glossary_entbypage','10',NULL),(854,2,1702489339,NULL,'glossary_dupentries','0',NULL),(855,2,1702489339,NULL,'glossary_allowcomments','0',NULL),(856,2,1702489339,NULL,'glossary_linkbydefault','1',NULL),(857,2,1702489339,NULL,'glossary_defaultapproval','1',NULL),(858,2,1702489339,NULL,'glossary_enablerssfeeds','0',NULL),(859,2,1702489339,NULL,'glossary_linkentries','0',NULL),(860,2,1702489339,NULL,'glossary_casesensitive','0',NULL),(861,2,1702489339,NULL,'glossary_fullmatch','0',NULL),(862,2,1702489339,'mod_h5pactivity','enablesavestate','1',NULL),(863,2,1702489339,'mod_h5pactivity','savestatefreq','60',NULL),(864,2,1702489339,'imscp','keepold','1',NULL),(865,2,1702489339,'imscp','keepold_adv','',NULL),(866,2,1702489339,'mod_lesson','mediafile','',NULL),(867,2,1702489339,'mod_lesson','mediafile_adv','1',NULL),(868,2,1702489339,'mod_lesson','mediawidth','640',NULL),(869,2,1702489339,'mod_lesson','mediaheight','480',NULL),(870,2,1702489339,'mod_lesson','mediaclose','0',NULL),(871,2,1702489339,'mod_lesson','progressbar','0',NULL),(872,2,1702489339,'mod_lesson','progressbar_adv','',NULL),(873,2,1702489339,'mod_lesson','ongoing','0',NULL),(874,2,1702489339,'mod_lesson','ongoing_adv','1',NULL),(875,2,1702489339,'mod_lesson','displayleftmenu','0',NULL),(876,2,1702489339,'mod_lesson','displayleftmenu_adv','',NULL),(877,2,1702489339,'mod_lesson','displayleftif','0',NULL),(878,2,1702489339,'mod_lesson','displayleftif_adv','1',NULL),(879,2,1702489339,'mod_lesson','slideshow','0',NULL),(880,2,1702489339,'mod_lesson','slideshow_adv','1',NULL),(881,2,1702489339,'mod_lesson','slideshowwidth','640',NULL),(882,2,1702489339,'mod_lesson','slideshowheight','480',NULL),(883,2,1702489339,'mod_lesson','slideshowbgcolor','#FFFFFF',NULL),(884,2,1702489339,'mod_lesson','maxanswers','5',NULL),(885,2,1702489339,'mod_lesson','maxanswers_adv','1',NULL),(886,2,1702489339,'mod_lesson','defaultfeedback','0',NULL),(887,2,1702489339,'mod_lesson','defaultfeedback_adv','1',NULL),(888,2,1702489339,'mod_lesson','activitylink','',NULL),(889,2,1702489339,'mod_lesson','activitylink_adv','1',NULL),(890,2,1702489339,'mod_lesson','timelimit','0',NULL),(891,2,1702489339,'mod_lesson','timelimit_adv','',NULL),(892,2,1702489339,'mod_lesson','password','0',NULL),(893,2,1702489339,'mod_lesson','password_adv','1',NULL),(894,2,1702489339,'mod_lesson','modattempts','0',NULL),(895,2,1702489339,'mod_lesson','modattempts_adv','',NULL),(896,2,1702489339,'mod_lesson','displayreview','0',NULL),(897,2,1702489339,'mod_lesson','displayreview_adv','',NULL),(898,2,1702489339,'mod_lesson','maximumnumberofattempts','1',NULL),(899,2,1702489339,'mod_lesson','maximumnumberofattempts_adv','',NULL),(900,2,1702489339,'mod_lesson','defaultnextpage','0',NULL),(901,2,1702489339,'mod_lesson','defaultnextpage_adv','1',NULL),(902,2,1702489339,'mod_lesson','numberofpagestoshow','1',NULL),(903,2,1702489339,'mod_lesson','numberofpagestoshow_adv','1',NULL),(904,2,1702489339,'mod_lesson','practice','0',NULL),(905,2,1702489339,'mod_lesson','practice_adv','',NULL),(906,2,1702489339,'mod_lesson','customscoring','1',NULL),(907,2,1702489339,'mod_lesson','customscoring_adv','1',NULL),(908,2,1702489339,'mod_lesson','retakesallowed','0',NULL),(909,2,1702489339,'mod_lesson','retakesallowed_adv','',NULL),(910,2,1702489339,'mod_lesson','handlingofretakes','0',NULL),(911,2,1702489339,'mod_lesson','handlingofretakes_adv','1',NULL),(912,2,1702489339,'mod_lesson','minimumnumberofquestions','0',NULL),(913,2,1702489339,'mod_lesson','minimumnumberofquestions_adv','1',NULL),(914,2,1702489339,'page','displayoptions','5',NULL),(915,2,1702489339,'page','printintro','0',NULL),(916,2,1702489339,'page','printlastmodified','1',NULL),(917,2,1702489339,'page','display','5',NULL),(918,2,1702489339,'page','popupwidth','620',NULL),(919,2,1702489339,'page','popupheight','450',NULL),(920,2,1702489339,'quiz','timelimit','0',NULL),(921,2,1702489339,'quiz','timelimit_adv','',NULL),(922,2,1702489339,'quiz','timelimit_locked','',NULL),(923,2,1702489339,'quiz','notifyattemptgradeddelay','18000',NULL),(924,2,1702489339,'quiz','overduehandling','autosubmit',NULL),(925,2,1702489339,'quiz','overduehandling_adv','',NULL),(926,2,1702489339,'quiz','overduehandling_locked','',NULL),(927,2,1702489339,'quiz','graceperiod','86400',NULL),(928,2,1702489339,'quiz','graceperiod_adv','',NULL),(929,2,1702489339,'quiz','graceperiod_locked','',NULL),(930,2,1702489339,'quiz','graceperiodmin','60',NULL),(931,2,1702489339,'quiz','attempts','0',NULL),(932,2,1702489339,'quiz','attempts_adv','',NULL),(933,2,1702489339,'quiz','attempts_locked','',NULL),(934,2,1702489339,'quiz','grademethod','1',NULL),(935,2,1702489339,'quiz','grademethod_adv','',NULL),(936,2,1702489339,'quiz','grademethod_locked','',NULL),(937,2,1702489339,'quiz','maximumgrade','10',NULL),(938,2,1702489339,'quiz','maximumgrade_locked','',NULL),(939,2,1702489339,'quiz','questionsperpage','1',NULL),(940,2,1702489339,'quiz','questionsperpage_adv','',NULL),(941,2,1702489339,'quiz','questionsperpage_locked','',NULL),(942,2,1702489339,'quiz','navmethod','free',NULL),(943,2,1702489339,'quiz','navmethod_adv','1',NULL),(944,2,1702489339,'quiz','navmethod_locked','',NULL),(945,2,1702489339,'quiz','shuffleanswers','1',NULL),(946,2,1702489339,'quiz','shuffleanswers_adv','',NULL),(947,2,1702489339,'quiz','shuffleanswers_locked','',NULL),(948,2,1702489339,'quiz','preferredbehaviour','deferredfeedback',NULL),(949,2,1702489339,'quiz','preferredbehaviour_locked','',NULL),(950,2,1702489339,'quiz','canredoquestions','0',NULL),(951,2,1702489339,'quiz','canredoquestions_adv','1',NULL),(952,2,1702489339,'quiz','canredoquestions_locked','',NULL),(953,2,1702489339,'quiz','attemptonlast','0',NULL),(954,2,1702489339,'quiz','attemptonlast_adv','1',NULL),(955,2,1702489339,'quiz','attemptonlast_locked','',NULL),(956,2,1702489339,'quiz','reviewattempt','69904',NULL),(957,2,1702489339,'quiz','reviewcorrectness','69904',NULL),(958,2,1702489339,'quiz','reviewmaxmarks','69904',NULL),(959,2,1702489339,'quiz','reviewmarks','69904',NULL),(960,2,1702489339,'quiz','reviewspecificfeedback','69904',NULL),(961,2,1702489339,'quiz','reviewgeneralfeedback','69904',NULL),(962,2,1702489339,'quiz','reviewrightanswer','69904',NULL),(963,2,1702489339,'quiz','reviewoverallfeedback','4368',NULL),(964,2,1702489339,'quiz','showuserpicture','0',NULL),(965,2,1702489339,'quiz','showuserpicture_adv','',NULL),(966,2,1702489339,'quiz','showuserpicture_locked','',NULL),(967,2,1702489339,'quiz','decimalpoints','2',NULL),(968,2,1702489339,'quiz','decimalpoints_adv','',NULL),(969,2,1702489339,'quiz','decimalpoints_locked','',NULL),(970,2,1702489339,'quiz','questiondecimalpoints','-1',NULL),(971,2,1702489339,'quiz','questiondecimalpoints_adv','',NULL),(972,2,1702489339,'quiz','questiondecimalpoints_locked','',NULL),(973,2,1702489339,'quiz','showblocks','0',NULL),(974,2,1702489339,'quiz','showblocks_adv','1',NULL),(975,2,1702489339,'quiz','showblocks_locked','',NULL),(976,2,1702489339,'quiz','quizpassword','',NULL),(977,2,1702489339,'quiz','quizpassword_adv','',NULL),(978,2,1702489339,'quiz','quizpassword_required','',NULL),(979,2,1702489339,'quiz','quizpassword_locked','',NULL),(980,2,1702489339,'quiz','subnet','',NULL),(981,2,1702489339,'quiz','subnet_adv','1',NULL),(982,2,1702489339,'quiz','subnet_locked','',NULL),(983,2,1702489339,'quiz','delay1','0',NULL),(984,2,1702489339,'quiz','delay1_adv','1',NULL),(985,2,1702489339,'quiz','delay1_locked','',NULL),(986,2,1702489339,'quiz','delay2','0',NULL),(987,2,1702489339,'quiz','delay2_adv','1',NULL),(988,2,1702489339,'quiz','delay2_locked','',NULL),(989,2,1702489339,'quiz','browsersecurity','-',NULL),(990,2,1702489339,'quiz','browsersecurity_adv','1',NULL),(991,2,1702489339,'quiz','browsersecurity_locked','',NULL),(992,2,1702489339,'quiz','initialnumfeedbacks','2',NULL),(993,2,1702489339,'quiz','autosaveperiod','60',NULL),(994,2,1702489339,'quiz_statistics','getstatslocktimeout','900',NULL),(995,2,1702489339,'quizaccess_seb','autoreconfigureseb','1',NULL),(996,2,1702489339,'quizaccess_seb','showseblinks','seb,http',NULL),(997,2,1702489340,'quizaccess_seb','downloadlink','https://safeexambrowser.org/download_en.html',NULL),(998,2,1702489340,'quizaccess_seb','quizpasswordrequired','0',NULL),(999,2,1702489340,'quizaccess_seb','displayblocksbeforestart','0',NULL),(1000,2,1702489340,'quizaccess_seb','displayblockswhenfinished','1',NULL),(1001,2,1702489340,'scorm','displaycoursestructure','0',NULL),(1002,2,1702489340,'scorm','displaycoursestructure_adv','',NULL),(1003,2,1702489340,'scorm','popup','0',NULL),(1004,2,1702489340,'scorm','popup_adv','',NULL),(1005,2,1702489340,'scorm','framewidth','100',NULL),(1006,2,1702489340,'scorm','framewidth_adv','1',NULL),(1007,2,1702489340,'scorm','frameheight','500',NULL),(1008,2,1702489340,'scorm','frameheight_adv','1',NULL),(1009,2,1702489340,'scorm','winoptgrp_adv','1',NULL),(1010,2,1702489340,'scorm','scrollbars','0',NULL),(1011,2,1702489340,'scorm','directories','0',NULL),(1012,2,1702489340,'scorm','location','0',NULL),(1013,2,1702489340,'scorm','menubar','0',NULL),(1014,2,1702489340,'scorm','toolbar','0',NULL),(1015,2,1702489340,'scorm','status','0',NULL),(1016,2,1702489340,'scorm','skipview','0',NULL),(1017,2,1702489340,'scorm','skipview_adv','1',NULL),(1018,2,1702489340,'scorm','hidebrowse','0',NULL),(1019,2,1702489340,'scorm','hidebrowse_adv','1',NULL),(1020,2,1702489340,'scorm','hidetoc','0',NULL),(1021,2,1702489340,'scorm','hidetoc_adv','1',NULL),(1022,2,1702489340,'scorm','nav','1',NULL),(1023,2,1702489340,'scorm','nav_adv','1',NULL),(1024,2,1702489340,'scorm','navpositionleft','-100',NULL),(1025,2,1702489340,'scorm','navpositionleft_adv','1',NULL),(1026,2,1702489340,'scorm','navpositiontop','-100',NULL),(1027,2,1702489340,'scorm','navpositiontop_adv','1',NULL),(1028,2,1702489340,'scorm','collapsetocwinsize','767',NULL),(1029,2,1702489340,'scorm','collapsetocwinsize_adv','1',NULL),(1030,2,1702489340,'scorm','displayattemptstatus','1',NULL),(1031,2,1702489340,'scorm','displayattemptstatus_adv','',NULL),(1032,2,1702489340,'scorm','grademethod','1',NULL),(1033,2,1702489340,'scorm','maxgrade','100',NULL),(1034,2,1702489340,'scorm','maxattempt','0',NULL),(1035,2,1702489340,'scorm','whatgrade','0',NULL),(1036,2,1702489340,'scorm','forcecompleted','0',NULL),(1037,2,1702489340,'scorm','forcenewattempt','0',NULL),(1038,2,1702489340,'scorm','autocommit','0',NULL),(1039,2,1702489340,'scorm','masteryoverride','1',NULL),(1040,2,1702489340,'scorm','lastattemptlock','0',NULL),(1041,2,1702489340,'scorm','auto','0',NULL),(1042,2,1702489340,'scorm','updatefreq','0',NULL),(1043,2,1702489340,'scorm','scormstandard','0',NULL),(1044,2,1702489340,'scorm','allowtypeexternal','0',NULL),(1045,2,1702489340,'scorm','allowtypelocalsync','0',NULL),(1046,2,1702489340,'scorm','allowtypeexternalaicc','0',NULL),(1047,2,1702489340,'scorm','allowaicchacp','0',NULL),(1048,2,1702489340,'scorm','aicchacptimeout','30',NULL),(1049,2,1702489340,'scorm','aicchacpkeepsessiondata','1',NULL),(1050,2,1702489340,'scorm','aiccuserid','1',NULL),(1051,2,1702489340,'scorm','forcejavascript','1',NULL),(1052,2,1702489340,'scorm','allowapidebug','0',NULL),(1053,2,1702489340,'scorm','apidebugmask','.*',NULL),(1054,2,1702489340,'scorm','protectpackagedownloads','0',NULL),(1055,2,1702489340,'label','dndmedia','1',NULL),(1056,2,1702489340,'label','dndresizewidth','400',NULL),(1057,2,1702489340,'label','dndresizeheight','400',NULL),(1058,2,1702489340,'url','framesize','130',NULL),(1059,2,1702489340,'url','secretphrase','',NULL),(1060,2,1702489340,'url','rolesinparams','0',NULL),(1061,2,1702489340,'url','displayoptions','0,1,5,6',NULL),(1062,2,1702489340,'url','printintro','1',NULL),(1063,2,1702489340,'url','display','0',NULL),(1064,2,1702489340,'url','popupwidth','620',NULL),(1065,2,1702489340,'url','popupheight','450',NULL),(1066,2,1702489340,'workshop','grade','80',NULL),(1067,2,1702489340,'workshop','gradinggrade','20',NULL),(1068,2,1702489340,'workshop','gradedecimals','0',NULL),(1069,2,1702489340,'workshop','maxbytes','0',NULL),(1070,2,1702489340,'workshop','strategy','accumulative',NULL),(1071,2,1702489340,'workshop','examplesmode','0',NULL),(1072,2,1702489340,'workshopallocation_random','numofreviews','5',NULL),(1073,2,1702489340,'workshopform_numerrors','grade0','No',NULL),(1074,2,1702489340,'workshopform_numerrors','grade1','Yes',NULL),(1075,2,1702489340,'workshopeval_best','comparison','5',NULL),(1076,2,1702489340,'tool_brickfield','analysistype','0',NULL),(1077,2,1702489340,'tool_brickfield','deletehistoricaldata','1',NULL),(1078,2,1702489340,'tool_brickfield','batch','1000',NULL),(1079,2,1702489340,'tool_brickfield','perpage','50',NULL),(1080,2,1702489340,'tool_mfa','enabled','0',NULL),(1081,2,1702489340,'tool_mfa','lockout','10',NULL),(1082,2,1702489340,'tool_mfa','debugmode','0',NULL),(1083,2,1702489340,'tool_mfa','redir_exclusions','',NULL),(1084,2,1702489340,'tool_mfa','guidance','0',NULL),(1085,2,1702489340,'tool_mfa','guidancecontent','',NULL),(1086,2,1702489340,'tool_mfa','guidancefiles','',NULL),(1087,2,1702489340,'factor_admin','enabled','0',NULL),(1088,2,1702489340,'factor_admin','weight','100',NULL),(1089,2,1702489340,'factor_auth','enabled','0',NULL),(1090,2,1702489340,'factor_auth','weight','100',NULL),(1091,2,1702489340,'factor_auth','goodauth','',NULL),(1092,2,1702489340,'factor_capability','enabled','0',NULL),(1093,2,1702489340,'factor_capability','weight','100',NULL),(1094,2,1702489340,'factor_capability','adminpasses','1',NULL),(1095,2,1702489340,'factor_cohort','enabled','0',NULL),(1096,2,1702489340,'factor_cohort','weight','100',NULL),(1097,2,1702489340,'factor_email','enabled','0',NULL),(1098,2,1702489340,'factor_email','weight','100',NULL),(1099,2,1702489340,'factor_email','duration','1800',NULL),(1100,2,1702489340,'factor_email','suspend','0',NULL),(1101,2,1702489340,'factor_grace','enabled','0',NULL),(1102,2,1702489340,'factor_grace','weight','100',NULL),(1103,2,1702489340,'factor_grace','forcesetup','0',NULL),(1104,2,1702489340,'factor_grace','graceperiod','604800',NULL),(1105,2,1702489340,'factor_grace','ignorelist','',NULL),(1106,2,1702489340,'factor_grace','customwarning','',NULL),(1107,2,1702489340,'factor_iprange','enabled','0',NULL),(1108,2,1702489340,'factor_iprange','weight','100',NULL),(1109,2,1702489340,'factor_iprange','safeips','',NULL),(1110,2,1702489340,'factor_nosetup','enabled','0',NULL),(1111,2,1702489340,'factor_nosetup','weight','100',NULL),(1112,2,1702489340,'factor_role','enabled','0',NULL),(1113,2,1702489340,'factor_role','weight','100',NULL),(1114,2,1702489340,'factor_role','roles','admin',NULL),(1115,2,1702489340,'factor_token','enabled','0',NULL),(1116,2,1702489340,'factor_token','weight','100',NULL),(1117,2,1702489340,'factor_token','expiry','86400',NULL),(1118,2,1702489340,'factor_token','expireovernight','1',NULL),(1119,2,1702489340,'factor_totp','enabled','0',NULL),(1120,2,1702489340,'factor_totp','weight','100',NULL),(1121,2,1702489340,'factor_totp','window','30',NULL),(1122,2,1702489340,'factor_totp','totplink','1',NULL),(1123,2,1702489340,'factor_webauthn','enabled','0',NULL),(1124,2,1702489340,'factor_webauthn','weight','100',NULL),(1125,2,1702489340,'factor_webauthn','authenticatortypes','usb,nfc,ble,hybrid,internal',NULL),(1126,2,1702489340,'factor_webauthn','userverification','preferred',NULL),(1127,2,1702489340,'tool_recyclebin','coursebinenable','1',NULL),(1128,2,1702489340,'tool_recyclebin','coursebinexpiry','604800',NULL),(1129,2,1702489340,'tool_recyclebin','categorybinenable','1',NULL),(1130,2,1702489340,'tool_recyclebin','categorybinexpiry','604800',NULL),(1131,2,1702489340,'tool_recyclebin','autohide','1',NULL),(1132,2,1702489340,'antivirus_clamav','runningmethod','commandline',NULL),(1133,2,1702489340,'antivirus_clamav','pathtoclam','',NULL),(1134,2,1702489340,'antivirus_clamav','pathtounixsocket','',NULL),(1135,2,1702489340,'antivirus_clamav','tcpsockethost','',NULL),(1136,2,1702489340,'antivirus_clamav','tcpsocketport','3310',NULL),(1137,2,1702489340,'antivirus_clamav','clamfailureonupload','tryagain',NULL),(1138,2,1702489340,'antivirus_clamav','tries','1',NULL),(1139,2,1702489340,'auth_cas','field_map_firstname','',NULL),(1140,2,1702489340,'auth_cas','field_updatelocal_firstname','oncreate',NULL),(1141,2,1702489340,'auth_cas','field_updateremote_firstname','0',NULL),(1142,2,1702489340,'auth_cas','field_lock_firstname','unlocked',NULL),(1143,2,1702489340,'auth_cas','field_map_lastname','',NULL),(1144,2,1702489340,'auth_cas','field_updatelocal_lastname','oncreate',NULL),(1145,2,1702489340,'auth_cas','field_updateremote_lastname','0',NULL),(1146,2,1702489340,'auth_cas','field_lock_lastname','unlocked',NULL),(1147,2,1702489340,'auth_cas','field_map_email','',NULL),(1148,2,1702489340,'auth_cas','field_updatelocal_email','oncreate',NULL),(1149,2,1702489340,'auth_cas','field_updateremote_email','0',NULL),(1150,2,1702489340,'auth_cas','field_lock_email','unlocked',NULL),(1151,2,1702489340,'auth_cas','field_map_city','',NULL),(1152,2,1702489340,'auth_cas','field_updatelocal_city','oncreate',NULL),(1153,2,1702489340,'auth_cas','field_updateremote_city','0',NULL),(1154,2,1702489340,'auth_cas','field_lock_city','unlocked',NULL),(1155,2,1702489340,'auth_cas','field_map_country','',NULL),(1156,2,1702489340,'auth_cas','field_updatelocal_country','oncreate',NULL),(1157,2,1702489340,'auth_cas','field_updateremote_country','0',NULL),(1158,2,1702489340,'auth_cas','field_lock_country','unlocked',NULL),(1159,2,1702489340,'auth_cas','field_map_lang','',NULL),(1160,2,1702489340,'auth_cas','field_updatelocal_lang','oncreate',NULL),(1161,2,1702489340,'auth_cas','field_updateremote_lang','0',NULL),(1162,2,1702489340,'auth_cas','field_lock_lang','unlocked',NULL),(1163,2,1702489340,'auth_cas','field_map_description','',NULL),(1164,2,1702489340,'auth_cas','field_updatelocal_description','oncreate',NULL),(1165,2,1702489340,'auth_cas','field_updateremote_description','0',NULL),(1166,2,1702489340,'auth_cas','field_lock_description','unlocked',NULL),(1167,2,1702489340,'auth_cas','field_map_idnumber','',NULL),(1168,2,1702489340,'auth_cas','field_updatelocal_idnumber','oncreate',NULL),(1169,2,1702489341,'auth_cas','field_updateremote_idnumber','0',NULL),(1170,2,1702489341,'auth_cas','field_lock_idnumber','unlocked',NULL),(1171,2,1702489341,'auth_cas','field_map_institution','',NULL),(1172,2,1702489341,'auth_cas','field_updatelocal_institution','oncreate',NULL),(1173,2,1702489341,'auth_cas','field_updateremote_institution','0',NULL),(1174,2,1702489341,'auth_cas','field_lock_institution','unlocked',NULL),(1175,2,1702489341,'auth_cas','field_map_department','',NULL),(1176,2,1702489341,'auth_cas','field_updatelocal_department','oncreate',NULL),(1177,2,1702489341,'auth_cas','field_updateremote_department','0',NULL),(1178,2,1702489341,'auth_cas','field_lock_department','unlocked',NULL),(1179,2,1702489341,'auth_cas','field_map_phone1','',NULL),(1180,2,1702489341,'auth_cas','field_updatelocal_phone1','oncreate',NULL),(1181,2,1702489341,'auth_cas','field_updateremote_phone1','0',NULL),(1182,2,1702489341,'auth_cas','field_lock_phone1','unlocked',NULL),(1183,2,1702489341,'auth_cas','field_map_phone2','',NULL),(1184,2,1702489341,'auth_cas','field_updatelocal_phone2','oncreate',NULL),(1185,2,1702489341,'auth_cas','field_updateremote_phone2','0',NULL),(1186,2,1702489341,'auth_cas','field_lock_phone2','unlocked',NULL),(1187,2,1702489341,'auth_cas','field_map_address','',NULL),(1188,2,1702489341,'auth_cas','field_updatelocal_address','oncreate',NULL),(1189,2,1702489341,'auth_cas','field_updateremote_address','0',NULL),(1190,2,1702489341,'auth_cas','field_lock_address','unlocked',NULL),(1191,2,1702489341,'auth_cas','field_map_firstnamephonetic','',NULL),(1192,2,1702489341,'auth_cas','field_updatelocal_firstnamephonetic','oncreate',NULL),(1193,2,1702489341,'auth_cas','field_updateremote_firstnamephonetic','0',NULL),(1194,2,1702489341,'auth_cas','field_lock_firstnamephonetic','unlocked',NULL),(1195,2,1702489341,'auth_cas','field_map_lastnamephonetic','',NULL),(1196,2,1702489341,'auth_cas','field_updatelocal_lastnamephonetic','oncreate',NULL),(1197,2,1702489341,'auth_cas','field_updateremote_lastnamephonetic','0',NULL),(1198,2,1702489341,'auth_cas','field_lock_lastnamephonetic','unlocked',NULL),(1199,2,1702489341,'auth_cas','field_map_middlename','',NULL),(1200,2,1702489341,'auth_cas','field_updatelocal_middlename','oncreate',NULL),(1201,2,1702489341,'auth_cas','field_updateremote_middlename','0',NULL),(1202,2,1702489341,'auth_cas','field_lock_middlename','unlocked',NULL),(1203,2,1702489341,'auth_cas','field_map_alternatename','',NULL),(1204,2,1702489341,'auth_cas','field_updatelocal_alternatename','oncreate',NULL),(1205,2,1702489341,'auth_cas','field_updateremote_alternatename','0',NULL),(1206,2,1702489341,'auth_cas','field_lock_alternatename','unlocked',NULL),(1207,2,1702489341,'auth_email','recaptcha','0',NULL),(1208,2,1702489341,'auth_email','field_lock_firstname','unlocked',NULL),(1209,2,1702489341,'auth_email','field_lock_lastname','unlocked',NULL),(1210,2,1702489341,'auth_email','field_lock_email','unlocked',NULL),(1211,2,1702489341,'auth_email','field_lock_city','unlocked',NULL),(1212,2,1702489341,'auth_email','field_lock_country','unlocked',NULL),(1213,2,1702489341,'auth_email','field_lock_lang','unlocked',NULL),(1214,2,1702489341,'auth_email','field_lock_description','unlocked',NULL),(1215,2,1702489341,'auth_email','field_lock_idnumber','unlocked',NULL),(1216,2,1702489341,'auth_email','field_lock_institution','unlocked',NULL),(1217,2,1702489341,'auth_email','field_lock_department','unlocked',NULL),(1218,2,1702489341,'auth_email','field_lock_phone1','unlocked',NULL),(1219,2,1702489341,'auth_email','field_lock_phone2','unlocked',NULL),(1220,2,1702489341,'auth_email','field_lock_address','unlocked',NULL),(1221,2,1702489341,'auth_email','field_lock_firstnamephonetic','unlocked',NULL),(1222,2,1702489341,'auth_email','field_lock_lastnamephonetic','unlocked',NULL),(1223,2,1702489341,'auth_email','field_lock_middlename','unlocked',NULL),(1224,2,1702489341,'auth_email','field_lock_alternatename','unlocked',NULL),(1225,2,1702489341,'auth_db','host','127.0.0.1',NULL),(1226,2,1702489341,'auth_db','type','mysqli',NULL),(1227,2,1702489341,'auth_db','sybasequoting','0',NULL),(1228,2,1702489341,'auth_db','name','',NULL),(1229,2,1702489341,'auth_db','user','',NULL),(1230,2,1702489341,'auth_db','pass','',NULL),(1231,2,1702489341,'auth_db','table','',NULL),(1232,2,1702489341,'auth_db','fielduser','',NULL),(1233,2,1702489341,'auth_db','fieldpass','',NULL),(1234,2,1702489341,'auth_db','passtype','plaintext',NULL),(1235,2,1702489341,'auth_db','extencoding','utf-8',NULL),(1236,2,1702489341,'auth_db','setupsql','',NULL),(1237,2,1702489341,'auth_db','debugauthdb','0',NULL),(1238,2,1702489341,'auth_db','changepasswordurl','',NULL),(1239,2,1702489341,'auth_db','removeuser','0',NULL),(1240,2,1702489341,'auth_db','updateusers','0',NULL),(1241,2,1702489341,'auth_db','field_map_firstname','',NULL),(1242,2,1702489341,'auth_db','field_updatelocal_firstname','oncreate',NULL),(1243,2,1702489341,'auth_db','field_updateremote_firstname','0',NULL),(1244,2,1702489341,'auth_db','field_lock_firstname','unlocked',NULL),(1245,2,1702489341,'auth_db','field_map_lastname','',NULL),(1246,2,1702489341,'auth_db','field_updatelocal_lastname','oncreate',NULL),(1247,2,1702489341,'auth_db','field_updateremote_lastname','0',NULL),(1248,2,1702489341,'auth_db','field_lock_lastname','unlocked',NULL),(1249,2,1702489341,'auth_db','field_map_email','',NULL),(1250,2,1702489341,'auth_db','field_updatelocal_email','oncreate',NULL),(1251,2,1702489341,'auth_db','field_updateremote_email','0',NULL),(1252,2,1702489341,'auth_db','field_lock_email','unlocked',NULL),(1253,2,1702489341,'auth_db','field_map_city','',NULL),(1254,2,1702489341,'auth_db','field_updatelocal_city','oncreate',NULL),(1255,2,1702489341,'auth_db','field_updateremote_city','0',NULL),(1256,2,1702489341,'auth_db','field_lock_city','unlocked',NULL),(1257,2,1702489341,'auth_db','field_map_country','',NULL),(1258,2,1702489341,'auth_db','field_updatelocal_country','oncreate',NULL),(1259,2,1702489341,'auth_db','field_updateremote_country','0',NULL),(1260,2,1702489341,'auth_db','field_lock_country','unlocked',NULL),(1261,2,1702489341,'auth_db','field_map_lang','',NULL),(1262,2,1702489341,'auth_db','field_updatelocal_lang','oncreate',NULL),(1263,2,1702489341,'auth_db','field_updateremote_lang','0',NULL),(1264,2,1702489341,'auth_db','field_lock_lang','unlocked',NULL),(1265,2,1702489341,'auth_db','field_map_description','',NULL),(1266,2,1702489341,'auth_db','field_updatelocal_description','oncreate',NULL),(1267,2,1702489341,'auth_db','field_updateremote_description','0',NULL),(1268,2,1702489341,'auth_db','field_lock_description','unlocked',NULL),(1269,2,1702489341,'auth_db','field_map_idnumber','',NULL),(1270,2,1702489341,'auth_db','field_updatelocal_idnumber','oncreate',NULL),(1271,2,1702489341,'auth_db','field_updateremote_idnumber','0',NULL),(1272,2,1702489341,'auth_db','field_lock_idnumber','unlocked',NULL),(1273,2,1702489341,'auth_db','field_map_institution','',NULL),(1274,2,1702489341,'auth_db','field_updatelocal_institution','oncreate',NULL),(1275,2,1702489341,'auth_db','field_updateremote_institution','0',NULL),(1276,2,1702489341,'auth_db','field_lock_institution','unlocked',NULL),(1277,2,1702489341,'auth_db','field_map_department','',NULL),(1278,2,1702489341,'auth_db','field_updatelocal_department','oncreate',NULL),(1279,2,1702489341,'auth_db','field_updateremote_department','0',NULL),(1280,2,1702489341,'auth_db','field_lock_department','unlocked',NULL),(1281,2,1702489341,'auth_db','field_map_phone1','',NULL),(1282,2,1702489341,'auth_db','field_updatelocal_phone1','oncreate',NULL),(1283,2,1702489341,'auth_db','field_updateremote_phone1','0',NULL),(1284,2,1702489341,'auth_db','field_lock_phone1','unlocked',NULL),(1285,2,1702489341,'auth_db','field_map_phone2','',NULL),(1286,2,1702489341,'auth_db','field_updatelocal_phone2','oncreate',NULL),(1287,2,1702489341,'auth_db','field_updateremote_phone2','0',NULL),(1288,2,1702489341,'auth_db','field_lock_phone2','unlocked',NULL),(1289,2,1702489341,'auth_db','field_map_address','',NULL),(1290,2,1702489341,'auth_db','field_updatelocal_address','oncreate',NULL),(1291,2,1702489341,'auth_db','field_updateremote_address','0',NULL),(1292,2,1702489341,'auth_db','field_lock_address','unlocked',NULL),(1293,2,1702489341,'auth_db','field_map_firstnamephonetic','',NULL),(1294,2,1702489341,'auth_db','field_updatelocal_firstnamephonetic','oncreate',NULL),(1295,2,1702489341,'auth_db','field_updateremote_firstnamephonetic','0',NULL),(1296,2,1702489341,'auth_db','field_lock_firstnamephonetic','unlocked',NULL),(1297,2,1702489341,'auth_db','field_map_lastnamephonetic','',NULL),(1298,2,1702489341,'auth_db','field_updatelocal_lastnamephonetic','oncreate',NULL),(1299,2,1702489341,'auth_db','field_updateremote_lastnamephonetic','0',NULL),(1300,2,1702489341,'auth_db','field_lock_lastnamephonetic','unlocked',NULL),(1301,2,1702489341,'auth_db','field_map_middlename','',NULL),(1302,2,1702489341,'auth_db','field_updatelocal_middlename','oncreate',NULL),(1303,2,1702489341,'auth_db','field_updateremote_middlename','0',NULL),(1304,2,1702489341,'auth_db','field_lock_middlename','unlocked',NULL),(1305,2,1702489341,'auth_db','field_map_alternatename','',NULL),(1306,2,1702489341,'auth_db','field_updatelocal_alternatename','oncreate',NULL),(1307,2,1702489341,'auth_db','field_updateremote_alternatename','0',NULL),(1308,2,1702489341,'auth_db','field_lock_alternatename','unlocked',NULL),(1309,2,1702489341,'auth_ldap','field_map_firstname','',NULL),(1310,2,1702489341,'auth_ldap','field_updatelocal_firstname','oncreate',NULL),(1311,2,1702489341,'auth_ldap','field_updateremote_firstname','0',NULL),(1312,2,1702489341,'auth_ldap','field_lock_firstname','unlocked',NULL),(1313,2,1702489341,'auth_ldap','field_map_lastname','',NULL),(1314,2,1702489341,'auth_ldap','field_updatelocal_lastname','oncreate',NULL),(1315,2,1702489341,'auth_ldap','field_updateremote_lastname','0',NULL),(1316,2,1702489341,'auth_ldap','field_lock_lastname','unlocked',NULL),(1317,2,1702489341,'auth_ldap','field_map_email','',NULL),(1318,2,1702489341,'auth_ldap','field_updatelocal_email','oncreate',NULL),(1319,2,1702489341,'auth_ldap','field_updateremote_email','0',NULL),(1320,2,1702489341,'auth_ldap','field_lock_email','unlocked',NULL),(1321,2,1702489341,'auth_ldap','field_map_city','',NULL),(1322,2,1702489341,'auth_ldap','field_updatelocal_city','oncreate',NULL),(1323,2,1702489341,'auth_ldap','field_updateremote_city','0',NULL),(1324,2,1702489341,'auth_ldap','field_lock_city','unlocked',NULL),(1325,2,1702489341,'auth_ldap','field_map_country','',NULL),(1326,2,1702489341,'auth_ldap','field_updatelocal_country','oncreate',NULL),(1327,2,1702489341,'auth_ldap','field_updateremote_country','0',NULL),(1328,2,1702489341,'auth_ldap','field_lock_country','unlocked',NULL),(1329,2,1702489341,'auth_ldap','field_map_lang','',NULL),(1330,2,1702489341,'auth_ldap','field_updatelocal_lang','oncreate',NULL),(1331,2,1702489341,'auth_ldap','field_updateremote_lang','0',NULL),(1332,2,1702489341,'auth_ldap','field_lock_lang','unlocked',NULL),(1333,2,1702489341,'auth_ldap','field_map_description','',NULL),(1334,2,1702489341,'auth_ldap','field_updatelocal_description','oncreate',NULL),(1335,2,1702489341,'auth_ldap','field_updateremote_description','0',NULL),(1336,2,1702489341,'auth_ldap','field_lock_description','unlocked',NULL),(1337,2,1702489341,'auth_ldap','field_map_idnumber','',NULL),(1338,2,1702489341,'auth_ldap','field_updatelocal_idnumber','oncreate',NULL),(1339,2,1702489341,'auth_ldap','field_updateremote_idnumber','0',NULL),(1340,2,1702489341,'auth_ldap','field_lock_idnumber','unlocked',NULL),(1341,2,1702489341,'auth_ldap','field_map_institution','',NULL),(1342,2,1702489341,'auth_ldap','field_updatelocal_institution','oncreate',NULL),(1343,2,1702489341,'auth_ldap','field_updateremote_institution','0',NULL),(1344,2,1702489341,'auth_ldap','field_lock_institution','unlocked',NULL),(1345,2,1702489341,'auth_ldap','field_map_department','',NULL),(1346,2,1702489341,'auth_ldap','field_updatelocal_department','oncreate',NULL),(1347,2,1702489341,'auth_ldap','field_updateremote_department','0',NULL),(1348,2,1702489341,'auth_ldap','field_lock_department','unlocked',NULL),(1349,2,1702489341,'auth_ldap','field_map_phone1','',NULL),(1350,2,1702489341,'auth_ldap','field_updatelocal_phone1','oncreate',NULL),(1351,2,1702489341,'auth_ldap','field_updateremote_phone1','0',NULL),(1352,2,1702489341,'auth_ldap','field_lock_phone1','unlocked',NULL),(1353,2,1702489341,'auth_ldap','field_map_phone2','',NULL),(1354,2,1702489341,'auth_ldap','field_updatelocal_phone2','oncreate',NULL),(1355,2,1702489341,'auth_ldap','field_updateremote_phone2','0',NULL),(1356,2,1702489341,'auth_ldap','field_lock_phone2','unlocked',NULL),(1357,2,1702489342,'auth_ldap','field_map_address','',NULL),(1358,2,1702489342,'auth_ldap','field_updatelocal_address','oncreate',NULL),(1359,2,1702489342,'auth_ldap','field_updateremote_address','0',NULL),(1360,2,1702489342,'auth_ldap','field_lock_address','unlocked',NULL),(1361,2,1702489342,'auth_ldap','field_map_firstnamephonetic','',NULL),(1362,2,1702489342,'auth_ldap','field_updatelocal_firstnamephonetic','oncreate',NULL),(1363,2,1702489342,'auth_ldap','field_updateremote_firstnamephonetic','0',NULL),(1364,2,1702489342,'auth_ldap','field_lock_firstnamephonetic','unlocked',NULL),(1365,2,1702489342,'auth_ldap','field_map_lastnamephonetic','',NULL),(1366,2,1702489342,'auth_ldap','field_updatelocal_lastnamephonetic','oncreate',NULL),(1367,2,1702489342,'auth_ldap','field_updateremote_lastnamephonetic','0',NULL),(1368,2,1702489342,'auth_ldap','field_lock_lastnamephonetic','unlocked',NULL),(1369,2,1702489342,'auth_ldap','field_map_middlename','',NULL),(1370,2,1702489342,'auth_ldap','field_updatelocal_middlename','oncreate',NULL),(1371,2,1702489342,'auth_ldap','field_updateremote_middlename','0',NULL),(1372,2,1702489342,'auth_ldap','field_lock_middlename','unlocked',NULL),(1373,2,1702489342,'auth_ldap','field_map_alternatename','',NULL),(1374,2,1702489342,'auth_ldap','field_updatelocal_alternatename','oncreate',NULL),(1375,2,1702489342,'auth_ldap','field_updateremote_alternatename','0',NULL),(1376,2,1702489342,'auth_ldap','field_lock_alternatename','unlocked',NULL),(1377,2,1702489342,'auth_manual','expiration','0',NULL),(1378,2,1702489342,'auth_manual','expirationtime','30',NULL),(1379,2,1702489342,'auth_manual','expiration_warning','0',NULL),(1380,2,1702489342,'auth_manual','field_lock_firstname','unlocked',NULL),(1381,2,1702489342,'auth_manual','field_lock_lastname','unlocked',NULL),(1382,2,1702489342,'auth_manual','field_lock_email','unlocked',NULL),(1383,2,1702489342,'auth_manual','field_lock_city','unlocked',NULL),(1384,2,1702489342,'auth_manual','field_lock_country','unlocked',NULL),(1385,2,1702489342,'auth_manual','field_lock_lang','unlocked',NULL),(1386,2,1702489342,'auth_manual','field_lock_description','unlocked',NULL),(1387,2,1702489342,'auth_manual','field_lock_idnumber','unlocked',NULL),(1388,2,1702489342,'auth_manual','field_lock_institution','unlocked',NULL),(1389,2,1702489342,'auth_manual','field_lock_department','unlocked',NULL),(1390,2,1702489342,'auth_manual','field_lock_phone1','unlocked',NULL),(1391,2,1702489342,'auth_manual','field_lock_phone2','unlocked',NULL),(1392,2,1702489342,'auth_manual','field_lock_address','unlocked',NULL),(1393,2,1702489342,'auth_manual','field_lock_firstnamephonetic','unlocked',NULL),(1394,2,1702489342,'auth_manual','field_lock_lastnamephonetic','unlocked',NULL),(1395,2,1702489342,'auth_manual','field_lock_middlename','unlocked',NULL),(1396,2,1702489342,'auth_manual','field_lock_alternatename','unlocked',NULL),(1397,2,1702489342,'auth_mnet','rpc_negotiation_timeout','30',NULL),(1398,2,1702489342,'auth_none','field_lock_firstname','unlocked',NULL),(1399,2,1702489342,'auth_none','field_lock_lastname','unlocked',NULL),(1400,2,1702489342,'auth_none','field_lock_email','unlocked',NULL),(1401,2,1702489342,'auth_none','field_lock_city','unlocked',NULL),(1402,2,1702489342,'auth_none','field_lock_country','unlocked',NULL),(1403,2,1702489342,'auth_none','field_lock_lang','unlocked',NULL),(1404,2,1702489342,'auth_none','field_lock_description','unlocked',NULL),(1405,2,1702489342,'auth_none','field_lock_idnumber','unlocked',NULL),(1406,2,1702489342,'auth_none','field_lock_institution','unlocked',NULL),(1407,2,1702489342,'auth_none','field_lock_department','unlocked',NULL),(1408,2,1702489342,'auth_none','field_lock_phone1','unlocked',NULL),(1409,2,1702489342,'auth_none','field_lock_phone2','unlocked',NULL),(1410,2,1702489342,'auth_none','field_lock_address','unlocked',NULL),(1411,2,1702489342,'auth_none','field_lock_firstnamephonetic','unlocked',NULL),(1412,2,1702489342,'auth_none','field_lock_lastnamephonetic','unlocked',NULL),(1413,2,1702489342,'auth_none','field_lock_middlename','unlocked',NULL),(1414,2,1702489342,'auth_none','field_lock_alternatename','unlocked',NULL),(1415,2,1702489342,'auth_oauth2','field_lock_firstname','unlocked',NULL),(1416,2,1702489342,'auth_oauth2','field_lock_lastname','unlocked',NULL),(1417,2,1702489342,'auth_oauth2','field_lock_email','unlocked',NULL),(1418,2,1702489342,'auth_oauth2','field_lock_city','unlocked',NULL),(1419,2,1702489342,'auth_oauth2','field_lock_country','unlocked',NULL),(1420,2,1702489342,'auth_oauth2','field_lock_lang','unlocked',NULL),(1421,2,1702489342,'auth_oauth2','field_lock_description','unlocked',NULL),(1422,2,1702489342,'auth_oauth2','field_lock_idnumber','unlocked',NULL),(1423,2,1702489342,'auth_oauth2','field_lock_institution','unlocked',NULL),(1424,2,1702489342,'auth_oauth2','field_lock_department','unlocked',NULL),(1425,2,1702489342,'auth_oauth2','field_lock_phone1','unlocked',NULL),(1426,2,1702489342,'auth_oauth2','field_lock_phone2','unlocked',NULL),(1427,2,1702489342,'auth_oauth2','field_lock_address','unlocked',NULL),(1428,2,1702489342,'auth_oauth2','field_lock_firstnamephonetic','unlocked',NULL),(1429,2,1702489342,'auth_oauth2','field_lock_lastnamephonetic','unlocked',NULL),(1430,2,1702489342,'auth_oauth2','field_lock_middlename','unlocked',NULL),(1431,2,1702489342,'auth_oauth2','field_lock_alternatename','unlocked',NULL),(1432,2,1702489342,'auth_shibboleth','user_attribute','',NULL),(1433,2,1702489342,'auth_shibboleth','convert_data','',NULL),(1434,2,1702489342,'auth_shibboleth','alt_login','off',NULL),(1435,2,1702489342,'auth_shibboleth','organization_selection','urn:mace:organization1:providerID, Example Organization 1\n        https://another.idp-id.com/shibboleth, Other Example Organization, /Shibboleth.sso/DS/SWITCHaai\n        urn:mace:organization2:providerID, Example Organization 2, /Shibboleth.sso/WAYF/SWITCHaai',NULL),(1436,2,1702489342,'auth_shibboleth','logout_handler','',NULL),(1437,2,1702489342,'auth_shibboleth','logout_return_url','',NULL),(1438,2,1702489342,'auth_shibboleth','login_name','Shibboleth Login',NULL),(1439,2,1702489342,'auth_shibboleth','auth_logo','',NULL),(1440,2,1702489342,'auth_shibboleth','auth_instructions','Use the <a href=\"https://edubridge.teknix.my.id/auth/shibboleth/index.php\">Shibboleth login</a> to get access via Shibboleth, if your institution supports it. Otherwise, use the normal login form shown here.',NULL),(1441,2,1702489342,'auth_shibboleth','changepasswordurl','',NULL),(1442,2,1702489342,'auth_shibboleth','field_map_firstname','',NULL),(1443,2,1702489342,'auth_shibboleth','field_updatelocal_firstname','oncreate',NULL),(1444,2,1702489342,'auth_shibboleth','field_lock_firstname','unlocked',NULL),(1445,2,1702489342,'auth_shibboleth','field_map_lastname','',NULL),(1446,2,1702489342,'auth_shibboleth','field_updatelocal_lastname','oncreate',NULL),(1447,2,1702489342,'auth_shibboleth','field_lock_lastname','unlocked',NULL),(1448,2,1702489342,'auth_shibboleth','field_map_email','',NULL),(1449,2,1702489342,'auth_shibboleth','field_updatelocal_email','oncreate',NULL),(1450,2,1702489342,'auth_shibboleth','field_lock_email','unlocked',NULL),(1451,2,1702489342,'auth_shibboleth','field_map_city','',NULL),(1452,2,1702489342,'auth_shibboleth','field_updatelocal_city','oncreate',NULL),(1453,2,1702489342,'auth_shibboleth','field_lock_city','unlocked',NULL),(1454,2,1702489342,'auth_shibboleth','field_map_country','',NULL),(1455,2,1702489342,'auth_shibboleth','field_updatelocal_country','oncreate',NULL),(1456,2,1702489342,'auth_shibboleth','field_lock_country','unlocked',NULL),(1457,2,1702489342,'auth_shibboleth','field_map_lang','',NULL),(1458,2,1702489342,'auth_shibboleth','field_updatelocal_lang','oncreate',NULL),(1459,2,1702489342,'auth_shibboleth','field_lock_lang','unlocked',NULL),(1460,2,1702489342,'auth_shibboleth','field_map_description','',NULL),(1461,2,1702489342,'auth_shibboleth','field_updatelocal_description','oncreate',NULL),(1462,2,1702489342,'auth_shibboleth','field_lock_description','unlocked',NULL),(1463,2,1702489342,'auth_shibboleth','field_map_idnumber','',NULL),(1464,2,1702489342,'auth_shibboleth','field_updatelocal_idnumber','oncreate',NULL),(1465,2,1702489342,'auth_shibboleth','field_lock_idnumber','unlocked',NULL),(1466,2,1702489342,'auth_shibboleth','field_map_institution','',NULL),(1467,2,1702489342,'auth_shibboleth','field_updatelocal_institution','oncreate',NULL),(1468,2,1702489342,'auth_shibboleth','field_lock_institution','unlocked',NULL),(1469,2,1702489342,'auth_shibboleth','field_map_department','',NULL),(1470,2,1702489342,'auth_shibboleth','field_updatelocal_department','oncreate',NULL),(1471,2,1702489342,'auth_shibboleth','field_lock_department','unlocked',NULL),(1472,2,1702489342,'auth_shibboleth','field_map_phone1','',NULL),(1473,2,1702489342,'auth_shibboleth','field_updatelocal_phone1','oncreate',NULL),(1474,2,1702489342,'auth_shibboleth','field_lock_phone1','unlocked',NULL),(1475,2,1702489342,'auth_shibboleth','field_map_phone2','',NULL),(1476,2,1702489342,'auth_shibboleth','field_updatelocal_phone2','oncreate',NULL),(1477,2,1702489342,'auth_shibboleth','field_lock_phone2','unlocked',NULL),(1478,2,1702489342,'auth_shibboleth','field_map_address','',NULL),(1479,2,1702489342,'auth_shibboleth','field_updatelocal_address','oncreate',NULL),(1480,2,1702489342,'auth_shibboleth','field_lock_address','unlocked',NULL),(1481,2,1702489342,'auth_shibboleth','field_map_firstnamephonetic','',NULL),(1482,2,1702489342,'auth_shibboleth','field_updatelocal_firstnamephonetic','oncreate',NULL),(1483,2,1702489342,'auth_shibboleth','field_lock_firstnamephonetic','unlocked',NULL),(1484,2,1702489342,'auth_shibboleth','field_map_lastnamephonetic','',NULL),(1485,2,1702489342,'auth_shibboleth','field_updatelocal_lastnamephonetic','oncreate',NULL),(1486,2,1702489342,'auth_shibboleth','field_lock_lastnamephonetic','unlocked',NULL),(1487,2,1702489342,'auth_shibboleth','field_map_middlename','',NULL),(1488,2,1702489342,'auth_shibboleth','field_updatelocal_middlename','oncreate',NULL),(1489,2,1702489342,'auth_shibboleth','field_lock_middlename','unlocked',NULL),(1490,2,1702489342,'auth_shibboleth','field_map_alternatename','',NULL),(1491,2,1702489342,'auth_shibboleth','field_updatelocal_alternatename','oncreate',NULL),(1492,2,1702489342,'auth_shibboleth','field_lock_alternatename','unlocked',NULL),(1493,2,1702489342,'block_accessreview','whattoshow','showboth',NULL),(1494,2,1702489342,'block_accessreview','errordisplay','showint',NULL),(1495,2,1702489342,'block_accessreview','toolpage','errors',NULL),(1496,2,1702489342,'block_activity_results','config_showbest','3',NULL),(1497,2,1702489342,'block_activity_results','config_showbest_locked','',NULL),(1498,2,1702489342,'block_activity_results','config_showworst','0',NULL),(1499,2,1702489342,'block_activity_results','config_showworst_locked','',NULL),(1500,2,1702489342,'block_activity_results','config_usegroups','0',NULL),(1501,2,1702489342,'block_activity_results','config_usegroups_locked','',NULL),(1502,2,1702489342,'block_activity_results','config_nameformat','1',NULL),(1503,2,1702489342,'block_activity_results','config_nameformat_locked','',NULL),(1504,2,1702489342,'block_activity_results','config_gradeformat','1',NULL),(1505,2,1702489342,'block_activity_results','config_gradeformat_locked','',NULL),(1506,2,1702489342,'block_activity_results','config_decimalpoints','2',NULL),(1507,2,1702489342,'block_activity_results','config_decimalpoints_locked','',NULL),(1508,2,1702489342,'block_myoverview','displaycategories','1',NULL),(1509,2,1702489342,'block_myoverview','layouts','card,list,summary',NULL),(1510,2,1702489342,'block_myoverview','displaygroupingallincludinghidden','0',NULL),(1511,2,1702489342,'block_myoverview','displaygroupingall','1',NULL),(1512,2,1702489342,'block_myoverview','displaygroupinginprogress','1',NULL),(1513,2,1702489342,'block_myoverview','displaygroupingpast','1',NULL),(1514,2,1702489342,'block_myoverview','displaygroupingfuture','1',NULL),(1515,2,1702489342,'block_myoverview','displaygroupingcustomfield','0',NULL),(1516,2,1702489342,'block_myoverview','customfiltergrouping','',NULL),(1517,2,1702489342,'block_myoverview','displaygroupingfavourites','1',NULL),(1518,2,1702489342,'block_myoverview','displaygroupinghidden','1',NULL),(1519,2,1702489342,NULL,'block_course_list_adminview','all',NULL),(1520,2,1702489342,NULL,'block_course_list_hideallcourseslink','0',NULL),(1521,2,1702489342,NULL,'block_online_users_timetosee','5',NULL),(1522,2,1702489342,NULL,'block_online_users_onlinestatushiding','1',NULL),(1523,2,1702489342,'block_recentlyaccessedcourses','displaycategories','1',NULL),(1524,2,1702489342,NULL,'block_rss_client_num_entries','5',NULL),(1525,2,1702489342,NULL,'block_rss_client_timeout','30',NULL),(1526,2,1702489342,'block_section_links','numsections1','22',NULL),(1527,2,1702489342,'block_section_links','incby1','2',NULL),(1528,2,1702489342,'block_section_links','numsections2','40',NULL),(1529,2,1702489342,'block_section_links','incby2','5',NULL),(1530,2,1702489342,'block_section_links','showsectionname','0',NULL),(1531,2,1702489342,'block_starredcourses','displaycategories','1',NULL),(1532,2,1702489342,NULL,'block_html_allowcssclasses','0',NULL),(1533,2,1702489342,'block_tag_youtube','apikey','',NULL),(1534,2,1702489342,'format_singleactivity','activitytype','forum',NULL),(1535,2,1702489342,'format_topics','indentation','1',NULL),(1536,2,1702489342,'format_weeks','indentation','1',NULL),(1537,2,1702489343,'fileconverter_googledrive','issuerid','',NULL),(1538,2,1702489343,NULL,'pathtounoconv','/usr/bin/unoconv',NULL),(1539,2,1702489343,'enrol_cohort','roleid','5',NULL),(1540,2,1702489343,'enrol_cohort','unenrolaction','0',NULL),(1541,2,1702489343,'enrol_meta','nosyncroleids','',NULL),(1542,2,1702489343,'enrol_meta','syncall','1',NULL),(1543,2,1702489343,'enrol_meta','unenrolaction','3',NULL),(1544,2,1702489343,'enrol_meta','coursesort','sortorder',NULL),(1545,2,1702489343,'enrol_fee','expiredaction','3',NULL),(1546,2,1702489343,'enrol_fee','status','1',NULL),(1547,2,1702489343,'enrol_fee','cost','0',NULL),(1548,2,1702489343,'enrol_fee','currency','USD',NULL),(1549,2,1702489343,'enrol_fee','roleid','5',NULL),(1550,2,1702489343,'enrol_fee','enrolperiod','0',NULL),(1551,2,1702489343,'enrol_database','dbtype','',NULL),(1552,2,1702489343,'enrol_database','dbhost','localhost',NULL),(1553,2,1702489343,'enrol_database','dbuser','',NULL),(1554,2,1702489343,'enrol_database','dbpass','',NULL),(1555,2,1702489343,'enrol_database','dbname','',NULL),(1556,2,1702489343,'enrol_database','dbencoding','utf-8',NULL),(1557,2,1702489343,'enrol_database','dbsetupsql','',NULL),(1558,2,1702489343,'enrol_database','dbsybasequoting','0',NULL),(1559,2,1702489343,'enrol_database','debugdb','0',NULL),(1560,2,1702489343,'enrol_database','localcoursefield','idnumber',NULL),(1561,2,1702489343,'enrol_database','localuserfield','idnumber',NULL),(1562,2,1702489343,'enrol_database','localrolefield','shortname',NULL),(1563,2,1702489343,'enrol_database','localcategoryfield','id',NULL),(1564,2,1702489343,'enrol_database','remoteenroltable','',NULL),(1565,2,1702489343,'enrol_database','remotecoursefield','',NULL),(1566,2,1702489343,'enrol_database','remoteuserfield','',NULL),(1567,2,1702489343,'enrol_database','remoterolefield','',NULL),(1568,2,1702489343,'enrol_database','remoteotheruserfield','',NULL),(1569,2,1702489343,'enrol_database','defaultrole','5',NULL),(1570,2,1702489343,'enrol_database','ignorehiddencourses','0',NULL),(1571,2,1702489343,'enrol_database','unenrolaction','0',NULL),(1572,2,1702489343,'enrol_database','newcoursetable','',NULL),(1573,2,1702489343,'enrol_database','newcoursefullname','fullname',NULL),(1574,2,1702489343,'enrol_database','newcourseshortname','shortname',NULL),(1575,2,1702489343,'enrol_database','newcourseidnumber','idnumber',NULL),(1576,2,1702489343,'enrol_database','newcoursecategory','',NULL),(1577,2,1702489343,'enrol_database','defaultcategory','1',NULL),(1578,2,1702489343,'enrol_database','templatecourse','',NULL),(1579,2,1702489343,'enrol_flatfile','location','',NULL),(1580,2,1702489343,'enrol_flatfile','encoding','UTF-8',NULL),(1581,2,1702489343,'enrol_flatfile','mailstudents','0',NULL),(1582,2,1702489343,'enrol_flatfile','mailteachers','0',NULL),(1583,2,1702489343,'enrol_flatfile','mailadmins','0',NULL),(1584,2,1702489343,'enrol_flatfile','unenrolaction','3',NULL),(1585,2,1702489343,'enrol_flatfile','expiredaction','3',NULL),(1586,2,1702489343,'enrol_guest','requirepassword','0',NULL),(1587,2,1702489343,'enrol_guest','usepasswordpolicy','0',NULL),(1588,2,1702489343,'enrol_guest','showhint','0',NULL),(1589,2,1702489343,'enrol_guest','defaultenrol','1',NULL),(1590,2,1702489343,'enrol_guest','status','1',NULL),(1591,2,1702489343,'enrol_guest','status_adv','',NULL),(1592,2,1702489343,'enrol_imsenterprise','imsfilelocation','',NULL),(1593,2,1702489343,'enrol_imsenterprise','logtolocation','',NULL),(1594,2,1702489343,'enrol_imsenterprise','mailadmins','0',NULL),(1595,2,1702489343,'enrol_imsenterprise','createnewusers','0',NULL),(1596,2,1702489343,'enrol_imsenterprise','imsupdateusers','0',NULL),(1597,2,1702489343,'enrol_imsenterprise','imsdeleteusers','0',NULL),(1598,2,1702489343,'enrol_imsenterprise','fixcaseusernames','0',NULL),(1599,2,1702489343,'enrol_imsenterprise','fixcasepersonalnames','0',NULL),(1600,2,1702489343,'enrol_imsenterprise','imssourcedidfallback','0',NULL),(1601,2,1702489343,'enrol_imsenterprise','imsrolemap01','5',NULL),(1602,2,1702489343,'enrol_imsenterprise','imsrolemap02','3',NULL),(1603,2,1702489343,'enrol_imsenterprise','imsrolemap03','3',NULL),(1604,2,1702489343,'enrol_imsenterprise','imsrolemap04','5',NULL),(1605,2,1702489343,'enrol_imsenterprise','imsrolemap05','0',NULL),(1606,2,1702489343,'enrol_imsenterprise','imsrolemap06','4',NULL),(1607,2,1702489343,'enrol_imsenterprise','imsrolemap07','0',NULL),(1608,2,1702489343,'enrol_imsenterprise','imsrolemap08','4',NULL),(1609,2,1702489343,'enrol_imsenterprise','truncatecoursecodes','0',NULL),(1610,2,1702489343,'enrol_imsenterprise','createnewcourses','0',NULL),(1611,2,1702489343,'enrol_imsenterprise','updatecourses','0',NULL),(1612,2,1702489343,'enrol_imsenterprise','createnewcategories','0',NULL),(1613,2,1702489343,'enrol_imsenterprise','nestedcategories','0',NULL),(1614,2,1702489343,'enrol_imsenterprise','categoryidnumber','0',NULL),(1615,2,1702489343,'enrol_imsenterprise','categoryseparator','',NULL),(1616,2,1702489343,'enrol_imsenterprise','imsunenrol','0',NULL),(1617,2,1702489343,'enrol_imsenterprise','unenrolaction','0',NULL),(1618,2,1702489343,'enrol_imsenterprise','imscoursemapshortname','coursecode',NULL),(1619,2,1702489343,'enrol_imsenterprise','imscoursemapfullname','short',NULL),(1620,2,1702489343,'enrol_imsenterprise','imscoursemapsummary','ignore',NULL),(1621,2,1702489343,'enrol_imsenterprise','imsrestricttarget','',NULL),(1622,2,1702489343,'enrol_imsenterprise','imscapitafix','0',NULL),(1623,2,1702489343,'enrol_manual','expiredaction','1',NULL),(1624,2,1702489343,'enrol_manual','expirynotifyhour','6',NULL),(1625,2,1702489343,'enrol_manual','defaultenrol','1',NULL),(1626,2,1702489343,'enrol_manual','status','0',NULL),(1627,2,1702489343,'enrol_manual','roleid','5',NULL),(1628,2,1702489343,'enrol_manual','enrolstart','4',NULL),(1629,2,1702489343,'enrol_manual','enrolperiod','0',NULL),(1630,2,1702489343,'enrol_manual','expirynotify','0',NULL),(1631,2,1702489343,'enrol_manual','expirythreshold','86400',NULL),(1632,2,1702489343,'enrol_mnet','roleid','5',NULL),(1633,2,1702489343,'enrol_mnet','roleid_adv','1',NULL),(1634,2,1702489343,'enrol_paypal','paypalbusiness','',NULL),(1635,2,1702489343,'enrol_paypal','mailstudents','0',NULL),(1636,2,1702489343,'enrol_paypal','mailteachers','0',NULL),(1637,2,1702489343,'enrol_paypal','mailadmins','0',NULL),(1638,2,1702489343,'enrol_paypal','expiredaction','3',NULL),(1639,2,1702489343,'enrol_paypal','status','1',NULL),(1640,2,1702489343,'enrol_paypal','cost','0',NULL),(1641,2,1702489343,'enrol_paypal','currency','USD',NULL),(1642,2,1702489343,'enrol_paypal','roleid','5',NULL),(1643,2,1702489343,'enrol_paypal','enrolperiod','0',NULL),(1644,2,1702489343,'enrol_lti','emaildisplay','2',NULL),(1645,2,1702489343,'enrol_lti','city','',NULL),(1646,2,1702489343,'enrol_lti','country','',NULL),(1647,2,1702489343,'enrol_lti','timezone','99',NULL),(1648,2,1702489343,'enrol_lti','lang','en',NULL),(1649,2,1702489343,'enrol_lti','institution','',NULL),(1650,2,1702489343,'enrol_self','requirepassword','0',NULL),(1651,2,1702489343,'enrol_self','usepasswordpolicy','0',NULL),(1652,2,1702489343,'enrol_self','showhint','0',NULL),(1653,2,1702489343,'enrol_self','expiredaction','1',NULL),(1654,2,1702489343,'enrol_self','expirynotifyhour','6',NULL),(1655,2,1702489343,'enrol_self','defaultenrol','1',NULL),(1656,2,1702489343,'enrol_self','status','1',NULL),(1657,2,1702489343,'enrol_self','newenrols','1',NULL),(1658,2,1702489343,'enrol_self','groupkey','0',NULL),(1659,2,1702489343,'enrol_self','roleid','5',NULL),(1660,2,1702489343,'enrol_self','enrolperiod','0',NULL),(1661,2,1702489343,'enrol_self','expirynotify','0',NULL),(1662,2,1702489343,'enrol_self','expirythreshold','86400',NULL),(1663,2,1702489343,'enrol_self','longtimenosee','0',NULL),(1664,2,1702489343,'enrol_self','maxenrolled','0',NULL),(1665,2,1702489343,'enrol_self','sendcoursewelcomemessage','1',NULL),(1666,2,1702489343,'filter_urltolink','formats','1,4,0',NULL),(1667,2,1702489343,'filter_urltolink','embedimages','1',NULL),(1668,2,1702489343,'filter_emoticon','formats','1,4,0',NULL),(1669,2,1702489343,'filter_displayh5p','allowedsources','',NULL),(1670,2,1702489343,'filter_mathjaxloader','httpsurl','https://cdn.jsdelivr.net/npm/mathjax@2.7.9/MathJax.js',NULL),(1671,2,1702489343,'filter_mathjaxloader','texfiltercompatibility','0',NULL),(1672,2,1702489343,'filter_mathjaxloader','mathjaxconfig','\nMathJax.Hub.Config({\n    config: [\"Accessible.js\", \"Safe.js\"],\n    errorSettings: { message: [\"!\"] },\n    skipStartupTypeset: true,\n    messageStyle: \"none\"\n});\n',NULL),(1673,2,1702489343,'filter_mathjaxloader','additionaldelimiters','',NULL),(1674,2,1702489343,NULL,'filter_multilang_force_old','0',NULL),(1675,2,1702489343,'filter_tex','latexpreamble','\\usepackage[latin1]{inputenc}\n\\usepackage{amsmath}\n\\usepackage{amsfonts}\n\\RequirePackage{amsmath,amssymb,latexsym}\n',NULL),(1676,2,1702489343,'filter_tex','latexbackground','#FFFFFF',NULL),(1677,2,1702489343,'filter_tex','density','120',NULL),(1678,2,1702489343,'filter_tex','pathlatex','/usr/bin/latex',NULL),(1679,2,1702489343,'filter_tex','pathdvips','/usr/bin/dvips',NULL),(1680,2,1702489343,'filter_tex','pathconvert','/usr/bin/convert',NULL),(1681,2,1702489343,'filter_tex','pathdvisvgm','/usr/bin/dvisvgm',NULL),(1682,2,1702489343,'filter_tex','pathmimetex','',NULL),(1683,2,1702489343,'filter_tex','convertformat','gif',NULL),(1684,2,1702489343,'logstore_database','dbdriver','',NULL),(1685,2,1702489343,'logstore_database','dbhost','',NULL),(1686,2,1702489343,'logstore_database','dbuser','',NULL),(1687,2,1702489343,'logstore_database','dbpass','',NULL),(1688,2,1702489343,'logstore_database','dbname','',NULL),(1689,2,1702489343,'logstore_database','dbtable','',NULL),(1690,2,1702489343,'logstore_database','dbpersist','0',NULL),(1691,2,1702489343,'logstore_database','dbsocket','',NULL),(1692,2,1702489343,'logstore_database','dbport','',NULL),(1693,2,1702489343,'logstore_database','dbschema','',NULL),(1694,2,1702489343,'logstore_database','dbcollation','',NULL),(1695,2,1702489343,'logstore_database','dbhandlesoptions','0',NULL),(1696,2,1702489343,'logstore_database','buffersize','50',NULL),(1697,2,1702489343,'logstore_database','jsonformat','1',NULL),(1698,2,1702489343,'logstore_database','logguests','0',NULL),(1699,2,1702489343,'logstore_database','includelevels','1,2,0',NULL),(1700,2,1702489343,'logstore_database','includeactions','c,r,u,d',NULL),(1701,2,1702489343,'logstore_standard','logguests','1',NULL),(1702,2,1702489343,'logstore_standard','jsonformat','1',NULL),(1703,2,1702489343,'logstore_standard','loglifetime','0',NULL),(1704,2,1702489343,'logstore_standard','buffersize','50',NULL),(1705,2,1702489343,'mlbackend_python','useserver','0',NULL),(1706,2,1702489343,'mlbackend_python','host','',NULL),(1707,2,1702489343,'mlbackend_python','port','0',NULL),(1708,2,1702489343,'mlbackend_python','secure','0',NULL),(1709,2,1702489343,'mlbackend_python','username','default',NULL),(1710,2,1702489343,'mlbackend_python','password','',NULL),(1711,2,1702489343,'media_videojs','videoextensions','html_video,media_source,.f4v,.flv',NULL),(1712,2,1702489343,'media_videojs','audioextensions','html_audio',NULL),(1713,2,1702489344,'media_videojs','youtube','1',NULL),(1714,2,1702489344,'media_videojs','videocssclass','video-js',NULL),(1715,2,1702489344,'media_videojs','audiocssclass','video-js',NULL),(1716,2,1702489344,'media_videojs','limitsize','1',NULL),(1717,2,1702489344,'media_vimeo','donottrack','0',NULL),(1718,2,1702489344,'media_youtube','nocookie','0',NULL),(1719,2,1702489344,'paygw_paypal','surcharge','0',NULL),(1720,2,1702489344,'qtype_multichoice','answerhowmany','1',NULL),(1721,2,1702489344,'qtype_multichoice','shuffleanswers','1',NULL),(1722,2,1702489344,'qtype_multichoice','answernumbering','abc',NULL),(1723,2,1702489344,'qtype_multichoice','showstandardinstruction','0',NULL),(1724,2,1702489344,'editor_atto','toolbar','collapse = collapse\nstyle1 = title, bold, italic\nlist = unorderedlist, orderedlist, indent\nlinks = link\nfiles = emojipicker, image, media, recordrtc, managefiles, h5p\naccessibility = accessibilitychecker, accessibilityhelper\nstyle2 = underline, strike, subscript, superscript\nalign = align\ninsert = equation, charmap, table, clear\nundo = undo\nother = html',NULL),(1725,2,1702489344,'editor_atto','autosavefrequency','60',NULL),(1726,2,1702489344,'atto_collapse','showgroups','6',NULL),(1727,2,1702489344,'atto_equation','librarygroup1','\n\\cdot\n\\times\n\\ast\n\\div\n\\diamond\n\\pm\n\\mp\n\\oplus\n\\ominus\n\\otimes\n\\oslash\n\\odot\n\\circ\n\\bullet\n\\asymp\n\\equiv\n\\subseteq\n\\supseteq\n\\leq\n\\geq\n\\preceq\n\\succeq\n\\sim\n\\simeq\n\\approx\n\\subset\n\\supset\n\\ll\n\\gg\n\\prec\n\\succ\n\\infty\n\\in\n\\ni\n\\forall\n\\exists\n\\neq\n',NULL),(1728,2,1702489344,'atto_equation','librarygroup2','\n\\leftarrow\n\\rightarrow\n\\uparrow\n\\downarrow\n\\leftrightarrow\n\\nearrow\n\\searrow\n\\swarrow\n\\nwarrow\n\\Leftarrow\n\\Rightarrow\n\\Uparrow\n\\Downarrow\n\\Leftrightarrow\n',NULL),(1729,2,1702489344,'atto_equation','librarygroup3','\n\\alpha\n\\beta\n\\gamma\n\\delta\n\\epsilon\n\\zeta\n\\eta\n\\theta\n\\iota\n\\kappa\n\\lambda\n\\mu\n\\nu\n\\xi\n\\pi\n\\rho\n\\sigma\n\\tau\n\\upsilon\n\\phi\n\\chi\n\\psi\n\\omega\n\\Gamma\n\\Delta\n\\Theta\n\\Lambda\n\\Xi\n\\Pi\n\\Sigma\n\\Upsilon\n\\Phi\n\\Psi\n\\Omega\n',NULL),(1730,2,1702489344,'atto_equation','librarygroup4','\n\\sum{a,b}\n\\sqrt[a]{b+c}\n\\int_{a}^{b}{c}\n\\iint_{a}^{b}{c}\n\\iiint_{a}^{b}{c}\n\\oint{a}\n(a)\n[a]\n\\lbrace{a}\\rbrace\n\\left| \\begin{matrix} a_1 & a_2 \\\\ a_3 & a_4 \\end{matrix} \\right|\n\\frac{a}{b+c}\n\\vec{a}\n\\binom {a} {b}\n{a \\brack b}\n{a \\brace b}\n',NULL),(1731,2,1702489344,'atto_recordrtc','allowedtypes','both',NULL),(1732,2,1702489344,'atto_recordrtc','audiobitrate','128000',NULL),(1733,2,1702489344,'atto_recordrtc','videobitrate','2500000',NULL),(1734,2,1702489344,'atto_recordrtc','audiotimelimit','120',NULL),(1735,2,1702489344,'atto_recordrtc','videotimelimit','120',NULL),(1736,2,1702489344,'atto_table','allowborders','0',NULL),(1737,2,1702489344,'atto_table','allowbackgroundcolour','0',NULL),(1738,2,1702489344,'atto_table','allowwidth','0',NULL),(1739,2,1702489344,'editor_tiny','branding','1',NULL),(1740,2,1702489344,'tiny_equation','librarygroup1','\n\\cdot\n\\times\n\\ast\n\\div\n\\diamond\n\\pm\n\\mp\n\\oplus\n\\ominus\n\\otimes\n\\oslash\n\\odot\n\\circ\n\\bullet\n\\asymp\n\\equiv\n\\subseteq\n\\supseteq\n\\leq\n\\geq\n\\preceq\n\\succeq\n\\sim\n\\simeq\n\\approx\n\\subset\n\\supset\n\\ll\n\\gg\n\\prec\n\\succ\n\\infty\n\\in\n\\ni\n\\forall\n\\exists\n\\neq\n',NULL),(1741,2,1702489344,'tiny_equation','librarygroup2','\n\\leftarrow\n\\rightarrow\n\\uparrow\n\\downarrow\n\\leftrightarrow\n\\nearrow\n\\searrow\n\\swarrow\n\\nwarrow\n\\Leftarrow\n\\Rightarrow\n\\Uparrow\n\\Downarrow\n\\Leftrightarrow\n',NULL),(1742,2,1702489344,'tiny_equation','librarygroup3','\n\\alpha\n\\beta\n\\gamma\n\\delta\n\\epsilon\n\\zeta\n\\eta\n\\theta\n\\iota\n\\kappa\n\\lambda\n\\mu\n\\nu\n\\xi\n\\pi\n\\rho\n\\sigma\n\\tau\n\\upsilon\n\\phi\n\\chi\n\\psi\n\\omega\n\\Gamma\n\\Delta\n\\Theta\n\\Lambda\n\\Xi\n\\Pi\n\\Sigma\n\\Upsilon\n\\Phi\n\\Psi\n\\Omega\n',NULL),(1743,2,1702489344,'tiny_equation','librarygroup4','\n\\sum{a,b}\n\\sqrt[a]{b+c}\n\\int_{a}^{b}{c}\n\\iint_{a}^{b}{c}\n\\iiint_{a}^{b}{c}\n\\oint{a}\n(a)\n[a]\n\\lbrace{a}\\rbrace\n\\left| \\begin{matrix} a_1 & a_2 \\\\ a_3 & a_4 \\end{matrix} \\right|\n\\frac{a}{b+c}\n\\vec{a}\n\\binom {a} {b}\n{a \\brack b}\n{a \\brace b}\n',NULL),(1744,2,1702489344,'tiny_premium','apikey','',NULL),(1745,2,1702489344,'tiny_recordrtc','allowedtypes','both',NULL),(1746,2,1702489344,'tiny_recordrtc','audiobitrate','128000',NULL),(1747,2,1702489344,'tiny_recordrtc','videobitrate','2500000',NULL),(1748,2,1702489344,'tiny_recordrtc','audiotimelimit','120',NULL),(1749,2,1702489344,'tiny_recordrtc','videotimelimit','120',NULL),(1750,2,1702489344,NULL,'profileroles','5,4,3',NULL),(1751,2,1702489344,NULL,'coursecontact','3',NULL),(1752,2,1702489344,NULL,'frontpage','6',NULL),(1753,2,1702489344,NULL,'frontpageloggedin','6',NULL),(1754,2,1702489344,NULL,'maxcategorydepth','2',NULL),(1755,2,1702489344,NULL,'frontpagecourselimit','200',NULL),(1756,2,1702489344,NULL,'commentsperpage','15',NULL),(1757,2,1702489344,NULL,'defaultfrontpageroleid','8',NULL),(1758,2,1702489344,NULL,'messageinbound_enabled','0',NULL),(1759,2,1702489344,NULL,'messageinbound_mailbox','',NULL),(1760,2,1702489344,NULL,'messageinbound_domain','',NULL),(1761,2,1702489344,NULL,'messageinbound_host','',NULL),(1762,2,1702489344,NULL,'messageinbound_hostssl','ssl',NULL),(1763,2,1702489344,NULL,'messageinbound_hostuser','',NULL),(1764,2,1702489344,NULL,'messageinbound_hostpass','',NULL),(1765,2,1702489344,'tool_mobile','apppolicy','',NULL),(1766,2,1702489344,'tool_mobile','typeoflogin','1',NULL),(1767,2,1702489344,'tool_mobile','autologout','0',NULL),(1768,2,1702489344,'tool_mobile','autologouttime','86400',NULL),(1769,2,1702489344,'tool_mobile','qrcodetype','2',NULL),(1770,2,1702489344,'tool_mobile','qrkeyttl','600',NULL),(1771,2,1702489344,'tool_mobile','qrsameipcheck','1',NULL),(1772,2,1702489344,'tool_mobile','forcedurlscheme','moodlemobile',NULL),(1773,2,1702489344,'tool_mobile','minimumversion','',NULL),(1774,2,1702489344,'tool_mobile','autologinmintimebetweenreq','360',NULL),(1775,2,1702489344,NULL,'mobilecssurl','',NULL),(1776,2,1702489344,'tool_mobile','enablesmartappbanners','0',NULL),(1777,2,1702489344,'tool_mobile','iosappid','633359593',NULL),(1778,2,1702489344,'tool_mobile','androidappid','com.moodle.moodlemobile',NULL),(1779,2,1702489344,'tool_mobile','setuplink','https://download.moodle.org/mobile',NULL),(1780,2,1702489344,'tool_mobile','forcelogout','0',NULL),(1781,2,1702489344,'tool_mobile','disabledfeatures','',NULL),(1782,2,1702489344,'tool_mobile','custommenuitems','',NULL),(1783,2,1702489344,'tool_mobile','filetypeexclusionlist','',NULL),(1784,2,1702489344,'tool_mobile','customlangstrings','',NULL),(1785,2,1702489344,NULL,'enablemobilewebservice','1',NULL),(1786,2,1702489344,'tool_moodlenet','defaultmoodlenetname','MoodleNet Central',NULL),(1787,2,1702489344,'tool_moodlenet','defaultmoodlenet','https://moodle.net',NULL),(1788,2,1702489431,NULL,'timezone','Asia/Jakarta',NULL),(1789,2,1702489431,NULL,'registerauth','',NULL),(1790,2,1702489431,NULL,'supportemail','rian.jhonz15@gmail.com',NULL),(1791,2,1702489828,NULL,'profileroles','3,4,5','5,4,3'),(1792,2,1702489828,NULL,'minpasswordupper','0','1'),(1793,2,1702489828,NULL,'minpasswordnonalphanum','0','1'),(1794,2,1702491086,NULL,'smtphosts','smtp.gmail.com',''),(1795,2,1702491086,NULL,'smtpsecure','tls',''),(1796,2,1702491086,NULL,'smtpuser','angganix@gmail.com',''),(1797,2,1702491086,NULL,'smtppass','********',''),(1798,2,1702494213,'moodlecourse','coursecommunicationprovider','communication_customlink','none'),(1799,2,1702495237,'theme_academi','logo','/logo.png',NULL),(1800,2,1702495238,'theme_academi','favicon','',NULL),(1801,2,1702495238,'theme_academi','primarycolor','',NULL),(1802,2,1702495238,'theme_academi','secondarycolor','',NULL),(1803,2,1702495238,'theme_academi','themestyleheader','1',NULL),(1804,2,1702495238,'theme_academi','pagesize','container',NULL),(1805,2,1702495238,'theme_academi','pagesizecustomval','0',NULL),(1806,2,1702495238,'theme_academi','fontsize','16',NULL),(1807,2,1702495238,'theme_academi','availablecoursetype','1',NULL),(1808,2,1702495238,'theme_academi','comboListboxType','1',NULL),(1809,2,1702495238,'theme_academi','loginbg','',NULL),(1810,2,1702495238,'theme_academi','backToTop_status','1',NULL),(1811,2,1702495238,'theme_academi','customcss','',NULL),(1812,2,1702495238,'theme_academi','preset','academi',NULL),(1813,2,1702495238,'theme_academi','presetfiles','',NULL),(1814,2,1702495238,'theme_academi','toggleslideshow','1',NULL),(1815,2,1702495238,'theme_academi','autoslideshow','1',NULL),(1816,2,1702495238,'theme_academi','slideinterval','3500',NULL),(1817,2,1702495238,'theme_academi','slideOverlay','0.4',NULL),(1818,2,1702495238,'theme_academi','numberofslides','3',NULL),(1819,2,1702495238,'theme_academi','pcoursestatus','1',NULL),(1820,2,1702495238,'theme_academi','promotedtitle','lang:promotedtitledefault',NULL),(1821,2,1702495238,'theme_academi','promotedcoursedesc','lang:description_default',NULL),(1822,2,1702495238,'theme_academi','promotedcourses','3,4,5,2',NULL),(1823,2,1702495238,'theme_academi','sitefblockstatus','0',NULL),(1824,2,1702495238,'theme_academi','sitefeaturetitle','lang:sitefeaturesdefault',NULL),(1825,2,1702495238,'theme_academi','sitefeaturedesc','lang:description_default',NULL),(1826,2,1702495238,'theme_academi','numberofsitefeature','4',NULL),(1827,2,1702495238,'theme_academi','mspotstatus','0',NULL),(1828,2,1702495238,'theme_academi','mspottitle','lang:aboutus',NULL),(1829,2,1702495238,'theme_academi','mspotdesc','lang:description_default',NULL),(1830,2,1702495238,'theme_academi','mspotcontent','<p>Ipsum in aspernatur ut possimus sint. Quia omnis est occaecati possimus ea. Quas molestiae perspiciatis occaecati qui rerum. Deleniti quod porro sed quisquam saepe. Numquam mollitia recusandae non ad at et a.</p>\r\n<p>Ad vitae recusandae odit possimus. Quaerat cum ipsum corrupti. Odit qui asperiores ea corporis deserunt veritatis quidem expedita perferendis. Qui rerum eligendi ex doloribus quia sit. Porro rerum eum eum.</p>\r\n<p>Ad vitae recusandae odit possimus. Quaerat cum ipsum corrupti. Odit qui asperiores ea corporis deserunt veritatis quidem expedita perferendis.</p>',NULL),(1831,2,1702495238,'theme_academi','mspotmedia','/mspotmedia.png',NULL),(1832,2,1702495238,'theme_academi','jumbotronstatus','0',NULL),(1833,2,1702495238,'theme_academi','jumbotrontitle','lang:learnanytime',NULL),(1834,2,1702495238,'theme_academi','jumbotrondesc','lang:learnanytimedesc',NULL),(1835,2,1702495238,'theme_academi','jumbotronbtntext','lang:viewallcourses',NULL),(1836,2,1702495238,'theme_academi','jumbotronbtnlink','http://www.example.com/',NULL),(1837,2,1702495238,'theme_academi','jumbotronbtntarget','1',NULL),(1838,2,1702495238,'theme_academi','footerbgimg','',NULL),(1839,2,1702495238,'theme_academi','footerbgOverlay','0.4',NULL),(1840,2,1702495238,'theme_academi','copyright_footer','Copyright &copy; 2017 - Developed by <a href=\"http://lmsace.com\">LMSACE.com</a>. Powered by <a href=\"https://moodle.org\">Moodle</a>',NULL),(1841,2,1702495238,'theme_academi','footerb1_status','1',NULL),(1842,2,1702495238,'theme_academi','footerbtitle1','',NULL),(1843,2,1702495238,'theme_academi','footlogostatus','1',NULL),(1844,2,1702495238,'theme_academi','footerlogo','/footerlogo.png',NULL),(1845,2,1702495238,'theme_academi','footnote','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and tronic typesetting, sheets taining Lorem Ipsum passages.<br><a href=\"#\">Read More »</a></p>',NULL),(1846,2,1702495238,'theme_academi','footerb2_status','1',NULL),(1847,2,1702495238,'theme_academi','footerbtitle2','lang:footerbtitle2default',NULL),(1848,2,1702495238,'theme_academi','infolink','Moodle community|https://moodle.org Moodle free\r\nsupport|https://moodle.org/support\r\nMoodle development|https://moodle.org/development\r\nMoodle Docs|http://docs.moodle.org|Moodle Docs\r\nMoodle.com|http://moodle.com/',NULL),(1849,2,1702495238,'theme_academi','footerb3_status','1',NULL),(1850,2,1702495238,'theme_academi','footerbtitle3','lang:footerbtitle3default',NULL),(1851,2,1702495238,'theme_academi','address','308 Negra Narrow Lane, Albeeze, New york, 87104',NULL),(1852,2,1702495238,'theme_academi','emailid','info@example.com',NULL),(1853,2,1702495238,'theme_academi','phoneno','(000) 123-456',NULL),(1854,2,1702495238,'theme_academi','footerb4_status','1',NULL),(1855,2,1702495238,'theme_academi','footerbtitle4','lang:footerbtitle4default',NULL),(1856,2,1702495238,'theme_academi','numofsocialmedia','4',NULL),(1857,2,1702495249,'theme_academi','slide1status','1',NULL),(1858,2,1702495249,'theme_academi','slide1image','/slide1image.jpg',NULL),(1859,2,1702495249,'theme_academi','slide1contentstatus','1',NULL),(1860,2,1702495249,'theme_academi','slide1caption','Bootstrap Based Slider - 01',NULL),(1861,2,1702495249,'theme_academi','slide1desc','Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.',NULL),(1862,2,1702495249,'theme_academi','slide1btntext','lang:knowmore',NULL),(1863,2,1702495249,'theme_academi','slide1btnurl','http://www.example.com/',NULL),(1864,2,1702495249,'theme_academi','slide1btntarget','1',NULL),(1865,2,1702495249,'theme_academi','slide1contFullwidth','50',NULL),(1866,2,1702495249,'theme_academi','slide1contentPosition','centerRight',NULL),(1867,2,1702495249,'theme_academi','slide2status','1',NULL),(1868,2,1702495249,'theme_academi','slide2image','',NULL),(1869,2,1702495249,'theme_academi','slide2contentstatus','1',NULL),(1870,2,1702495249,'theme_academi','slide2caption','Bootstrap Based Slider - 02',NULL),(1871,2,1702495249,'theme_academi','slide2desc','Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.',NULL),(1872,2,1702495249,'theme_academi','slide2btntext','lang:knowmore',NULL),(1873,2,1702495249,'theme_academi','slide2btnurl','http://www.example.com/',NULL),(1874,2,1702495249,'theme_academi','slide2btntarget','1',NULL),(1875,2,1702495249,'theme_academi','slide2contFullwidth','50',NULL),(1876,2,1702495249,'theme_academi','slide2contentPosition','centerRight',NULL),(1877,2,1702495249,'theme_academi','slide3status','1',NULL),(1878,2,1702495249,'theme_academi','slide3image','',NULL),(1879,2,1702495249,'theme_academi','slide3contentstatus','1',NULL),(1880,2,1702495249,'theme_academi','slide3caption','Bootstrap Based Slider - 03',NULL),(1881,2,1702495249,'theme_academi','slide3desc','Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.',NULL),(1882,2,1702495249,'theme_academi','slide3btntext','lang:knowmore',NULL),(1883,2,1702495249,'theme_academi','slide3btnurl','http://www.example.com/',NULL),(1884,2,1702495249,'theme_academi','slide3btntarget','1',NULL),(1885,2,1702495249,'theme_academi','slide3contFullwidth','50',NULL),(1886,2,1702495249,'theme_academi','slide3contentPosition','centerRight',NULL),(1887,2,1702495249,'theme_academi','sitefblock1status','1',NULL),(1888,2,1702495249,'theme_academi','sitefblock1title','lang:sb1_default_title',NULL),(1889,2,1702495249,'theme_academi','sitefblock1content','lang:sb_default_content',NULL),(1890,2,1702495249,'theme_academi','sitefblock1icon','lang:sitefblockicon1_default',NULL),(1891,2,1702495249,'theme_academi','sitefblock2status','1',NULL),(1892,2,1702495249,'theme_academi','sitefblock2title','lang:sb2_default_title',NULL),(1893,2,1702495249,'theme_academi','sitefblock2content','lang:sb_default_content',NULL),(1894,2,1702495249,'theme_academi','sitefblock2icon','lang:sitefblockicon2_default',NULL),(1895,2,1702495249,'theme_academi','sitefblock3status','1',NULL),(1896,2,1702495249,'theme_academi','sitefblock3title','lang:sb3_default_title',NULL),(1897,2,1702495249,'theme_academi','sitefblock3content','lang:sb_default_content',NULL),(1898,2,1702495249,'theme_academi','sitefblock3icon','lang:sitefblockicon3_default',NULL),(1899,2,1702495249,'theme_academi','sitefblock4status','1',NULL),(1900,2,1702495249,'theme_academi','sitefblock4title','lang:sb4_default_title',NULL),(1901,2,1702495249,'theme_academi','sitefblock4content','lang:sb_default_content',NULL),(1902,2,1702495249,'theme_academi','sitefblock4icon','lang:sitefblockicon4_default',NULL),(1903,2,1702495249,'theme_academi','socialmedia1_status','1',NULL),(1904,2,1702495249,'theme_academi','socialmedia1_icon','twitter',NULL),(1905,2,1702495249,'theme_academi','socialmedia1_url','https://twitter.com/yourtwittername',NULL),(1906,2,1702495249,'theme_academi','socialmedia1_iconcolor','#47caf6',NULL),(1907,2,1702495249,'theme_academi','socialmedia2_status','1',NULL),(1908,2,1702495249,'theme_academi','socialmedia2_icon','google-plus',NULL),(1909,2,1702495249,'theme_academi','socialmedia2_url','https://www.google.com/+yourgoogleplusid',NULL),(1910,2,1702495249,'theme_academi','socialmedia2_iconcolor','#e84c3d',NULL),(1911,2,1702495249,'theme_academi','socialmedia3_status','1',NULL),(1912,2,1702495249,'theme_academi','socialmedia3_icon','pinterest-p',NULL),(1913,2,1702495249,'theme_academi','socialmedia3_url','https://in.pinterest.com/yourpinterestname/',NULL),(1914,2,1702495249,'theme_academi','socialmedia3_iconcolor','#cd2129',NULL),(1915,2,1702495249,'theme_academi','socialmedia4_status','1',NULL),(1916,2,1702495249,'theme_academi','socialmedia4_icon','facebook-f',NULL),(1917,2,1702495249,'theme_academi','socialmedia4_url','https://www.facebook.com/yourfacebookid',NULL),(1918,2,1702495249,'theme_academi','socialmedia4_iconcolor','#3598dc',NULL),(1919,2,1702495533,'theme_academi','slide1image','/httpsimg.pikbest.combackgrounds20220119cartoon-graduation-season-travel-hd-background_6234287.jpg!bwr800','/slide1image.jpg'),(1920,2,1702495533,'theme_academi','slide1caption','Belajar Teknologi Masa Kini','Bootstrap Based Slider - 01'),(1921,2,1702495533,'theme_academi','slide1desc','Lorem aja udah','Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.'),(1922,2,1702731711,'core','siteadmins','2, 32','2'),(1923,2,1702731757,'core','siteadmins','2, 32, 26','2, 32');
/*!40000 ALTER TABLE `mdl_config_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config_plugins`
--

DROP TABLE IF EXISTS `mdl_config_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_config_plugins` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `plugin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'core',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_confplug_plunam_uix` (`plugin`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Moodle modules and plugins configuration variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config_plugins`
--

LOCK TABLES `mdl_config_plugins` WRITE;
/*!40000 ALTER TABLE `mdl_config_plugins` DISABLE KEYS */;
INSERT INTO `mdl_config_plugins` VALUES (1,'question','multichoice_sortorder','1'),(2,'question','truefalse_sortorder','2'),(3,'question','match_sortorder','3'),(4,'question','shortanswer_sortorder','4'),(5,'question','numerical_sortorder','5'),(6,'question','essay_sortorder','6'),(7,'core_competency','enabled','1'),(8,'moodlecourse','visible','1'),(9,'moodlecourse','downloadcontentsitedefault','0'),(10,'moodlecourse','participantsperpage','20'),(11,'moodlecourse','format','topics'),(12,'moodlecourse','maxsections','52'),(13,'moodlecourse','numsections','4'),(14,'moodlecourse','hiddensections','1'),(15,'moodlecourse','coursedisplay','0'),(16,'moodlecourse','courseenddateenabled','1'),(17,'moodlecourse','courseduration','31536000'),(18,'moodlecourse','lang',''),(19,'moodlecourse','newsitems','5'),(20,'moodlecourse','showgrades','1'),(21,'moodlecourse','showreports','0'),(22,'moodlecourse','showactivitydates','1'),(23,'moodlecourse','maxbytes','0'),(24,'moodlecourse','enablecompletion','1'),(25,'moodlecourse','showcompletionconditions','1'),(26,'moodlecourse','groupmode','0'),(27,'moodlecourse','groupmodeforce','0'),(28,'moodlecourse','coursecommunicationprovider','communication_customlink'),(29,'backup','loglifetime','30'),(30,'backup','backup_general_users','1'),(31,'backup','backup_general_users_locked',''),(32,'backup','backup_general_anonymize','0'),(33,'backup','backup_general_anonymize_locked',''),(34,'backup','backup_general_role_assignments','1'),(35,'backup','backup_general_role_assignments_locked',''),(36,'backup','backup_general_activities','1'),(37,'backup','backup_general_activities_locked',''),(38,'backup','backup_general_blocks','1'),(39,'backup','backup_general_blocks_locked',''),(40,'backup','backup_general_files','1'),(41,'backup','backup_general_files_locked',''),(42,'backup','backup_general_filters','1'),(43,'backup','backup_general_filters_locked',''),(44,'backup','backup_general_comments','1'),(45,'backup','backup_general_comments_locked',''),(46,'backup','backup_general_badges','1'),(47,'backup','backup_general_badges_locked',''),(48,'backup','backup_general_calendarevents','1'),(49,'backup','backup_general_calendarevents_locked',''),(50,'backup','backup_general_userscompletion','1'),(51,'backup','backup_general_userscompletion_locked',''),(52,'backup','backup_general_logs','0'),(53,'backup','backup_general_logs_locked',''),(54,'backup','backup_general_histories','0'),(55,'backup','backup_general_histories_locked',''),(56,'backup','backup_general_questionbank','1'),(57,'backup','backup_general_questionbank_locked',''),(58,'backup','backup_general_groups','1'),(59,'backup','backup_general_groups_locked',''),(60,'backup','backup_general_competencies','1'),(61,'backup','backup_general_competencies_locked',''),(62,'backup','backup_general_contentbankcontent','1'),(63,'backup','backup_general_contentbankcontent_locked',''),(64,'backup','backup_general_xapistate','1'),(65,'backup','backup_general_xapistate_locked',''),(66,'backup','backup_general_legacyfiles','1'),(67,'backup','backup_general_legacyfiles_locked',''),(68,'backup','import_general_maxresults','10'),(69,'backup','import_general_duplicate_admin_allowed','0'),(70,'backup','backup_import_permissions','0'),(71,'backup','backup_import_permissions_locked',''),(72,'backup','backup_import_activities','1'),(73,'backup','backup_import_activities_locked',''),(74,'backup','backup_import_blocks','1'),(75,'backup','backup_import_blocks_locked',''),(76,'backup','backup_import_filters','1'),(77,'backup','backup_import_filters_locked',''),(78,'backup','backup_import_calendarevents','1'),(79,'backup','backup_import_calendarevents_locked',''),(80,'backup','backup_import_questionbank','1'),(81,'backup','backup_import_questionbank_locked',''),(82,'backup','backup_import_groups','1'),(83,'backup','backup_import_groups_locked',''),(84,'backup','backup_import_competencies','1'),(85,'backup','backup_import_competencies_locked',''),(86,'backup','backup_import_contentbankcontent','1'),(87,'backup','backup_import_contentbankcontent_locked',''),(88,'backup','backup_import_legacyfiles','1'),(89,'backup','backup_import_legacyfiles_locked',''),(90,'backup','backup_auto_active','0'),(91,'backup','backup_auto_weekdays','0000000'),(92,'backup','backup_auto_hour','0'),(93,'backup','backup_auto_minute','0'),(94,'backup','backup_auto_storage','0'),(95,'backup','backup_auto_destination',''),(96,'backup','backup_auto_max_kept','1'),(97,'backup','backup_auto_delete_days','0'),(98,'backup','backup_auto_min_kept','0'),(99,'backup','backup_shortname','0'),(100,'backup','backup_auto_skip_hidden','1'),(101,'backup','backup_auto_skip_modif_days','30'),(102,'backup','backup_auto_skip_modif_prev','0'),(103,'backup','backup_auto_users','1'),(104,'backup','backup_auto_role_assignments','1'),(105,'backup','backup_auto_activities','1'),(106,'backup','backup_auto_blocks','1'),(107,'backup','backup_auto_files','1'),(108,'backup','backup_auto_filters','1'),(109,'backup','backup_auto_comments','1'),(110,'backup','backup_auto_badges','1'),(111,'backup','backup_auto_calendarevents','1'),(112,'backup','backup_auto_userscompletion','1'),(113,'backup','backup_auto_logs','0'),(114,'backup','backup_auto_histories','0'),(115,'backup','backup_auto_questionbank','1'),(116,'backup','backup_auto_groups','1'),(117,'backup','backup_auto_competencies','1'),(118,'backup','backup_auto_contentbankcontent','1'),(119,'backup','backup_auto_xapistate','1'),(120,'backup','backup_auto_legacyfiles','1'),(121,'restore','restore_general_users','1'),(122,'restore','restore_general_users_locked',''),(123,'restore','restore_general_enrolments','1'),(124,'restore','restore_general_enrolments_locked',''),(125,'restore','restore_general_role_assignments','1'),(126,'restore','restore_general_role_assignments_locked',''),(127,'restore','restore_general_permissions','1'),(128,'restore','restore_general_permissions_locked',''),(129,'restore','restore_general_activities','1'),(130,'restore','restore_general_activities_locked',''),(131,'restore','restore_general_blocks','1'),(132,'restore','restore_general_blocks_locked',''),(133,'restore','restore_general_filters','1'),(134,'restore','restore_general_filters_locked',''),(135,'restore','restore_general_comments','1'),(136,'restore','restore_general_comments_locked',''),(137,'restore','restore_general_badges','1'),(138,'restore','restore_general_badges_locked',''),(139,'restore','restore_general_calendarevents','1'),(140,'restore','restore_general_calendarevents_locked',''),(141,'restore','restore_general_userscompletion','1'),(142,'restore','restore_general_userscompletion_locked',''),(143,'restore','restore_general_logs','1'),(144,'restore','restore_general_logs_locked',''),(145,'restore','restore_general_histories','1'),(146,'restore','restore_general_histories_locked',''),(147,'restore','restore_general_groups','1'),(148,'restore','restore_general_groups_locked',''),(149,'restore','restore_general_competencies','1'),(150,'restore','restore_general_competencies_locked',''),(151,'restore','restore_general_contentbankcontent','1'),(152,'restore','restore_general_contentbankcontent_locked',''),(153,'restore','restore_general_xapistate','1'),(154,'restore','restore_general_xapistate_locked',''),(155,'restore','restore_general_legacyfiles','1'),(156,'restore','restore_general_legacyfiles_locked',''),(157,'restore','restore_merge_overwrite_conf','0'),(158,'restore','restore_merge_overwrite_conf_locked',''),(159,'restore','restore_merge_course_fullname','1'),(160,'restore','restore_merge_course_fullname_locked',''),(161,'restore','restore_merge_course_shortname','1'),(162,'restore','restore_merge_course_shortname_locked',''),(163,'restore','restore_merge_course_startdate','1'),(164,'restore','restore_merge_course_startdate_locked',''),(165,'restore','restore_replace_overwrite_conf','0'),(166,'restore','restore_replace_overwrite_conf_locked',''),(167,'restore','restore_replace_course_fullname','1'),(168,'restore','restore_replace_course_fullname_locked',''),(169,'restore','restore_replace_course_shortname','1'),(170,'restore','restore_replace_course_shortname_locked',''),(171,'restore','restore_replace_course_startdate','1'),(172,'restore','restore_replace_course_startdate_locked',''),(173,'restore','restore_replace_keep_roles_and_enrolments','0'),(174,'restore','restore_replace_keep_roles_and_enrolments_locked',''),(175,'restore','restore_replace_keep_groups_and_groupings','0'),(176,'restore','restore_replace_keep_groups_and_groupings_locked',''),(177,'backup','backup_async_message_users','0'),(178,'backup','backup_async_message_subject','Moodle {operation} completed successfully'),(179,'backup','backup_async_message','Your {operation} (ID: {backupid}) has completed successfully. You can access it here: <a href=\"{link}\">{link}</a>.'),(180,'analytics','modeinstruction',''),(181,'analytics','percentonline','0'),(182,'analytics','typeinstitution',''),(183,'analytics','levelinstitution',''),(184,'analytics','predictionsprocessor','\\mlbackend_php\\processor'),(185,'analytics','defaulttimesplittingsevaluation','\\core\\analytics\\time_splitting\\quarters_accum,\\core\\analytics\\time_splitting\\quarters,\\core\\analytics\\time_splitting\\single_range'),(186,'analytics','modeloutputdir',''),(187,'analytics','onlycli','1'),(188,'analytics','modeltimelimit','1200'),(189,'analytics','calclifetime','35'),(190,'antivirus','notifyemail',''),(191,'antivirus','notifylevel','2'),(192,'antivirus','threshold','1200'),(193,'antivirus','enablequarantine','0'),(194,'antivirus','quarantinetime','2419200'),(195,'cachestore_apcu','testperformance','0'),(196,'cachestore_redis','test_server',''),(197,'cachestore_redis','test_encryption','0'),(198,'cachestore_redis','test_cafile',''),(199,'cachestore_redis','test_password',''),(200,'cachestore_redis','test_ttl','0'),(201,'question_preview','behaviour','deferredfeedback'),(202,'question_preview','correctness','1'),(203,'question_preview','marks','2'),(204,'question_preview','markdp','2'),(205,'question_preview','feedback','1'),(206,'question_preview','generalfeedback','1'),(207,'question_preview','rightanswer','1'),(208,'question_preview','history','0'),(209,'tool_task','enablerunnow','1'),(210,'adminpresets','sensiblesettings','recaptchapublickey@@none, recaptchaprivatekey@@none, googlemapkey3@@none, secretphrase@@url, cronremotepassword@@none, smtpuser@@none, smtppass@@none, proxypassword@@none, quizpassword@@quiz, allowedip@@none, blockedip@@none, dbpass@@logstore_database, messageinbound_hostpass@@none, bind_pw@@auth_cas, pass@@auth_db, bind_pw@@auth_ldap, dbpass@@enrol_database, bind_pw@@enrol_ldap, server_password@@search_solr, ssl_keypassword@@search_solr, alternateserver_password@@search_solr, alternatessl_keypassword@@search_solr, test_password@@cachestore_redis, password@@mlbackend_python, badges_badgesalt@@none, calendar_exportsalt@@none'),(211,'theme_boost','unaddableblocks','navigation,settings,course_list,section_links'),(212,'theme_boost','preset','default.scss'),(213,'theme_boost','presetfiles',''),(214,'theme_boost','backgroundimage',''),(215,'theme_boost','loginbackgroundimage',''),(216,'theme_boost','brandcolor',''),(217,'theme_boost','scsspre',''),(218,'theme_boost','scss',''),(219,'theme_classic','navbardark','0'),(220,'theme_classic','unaddableblocks',''),(221,'theme_classic','preset','default.scss'),(222,'theme_classic','presetfiles',''),(223,'theme_classic','backgroundimage',''),(224,'theme_classic','loginbackgroundimage',''),(225,'theme_classic','brandcolor',''),(226,'theme_classic','scsspre',''),(227,'theme_classic','scss',''),(228,'core_admin','logo',''),(229,'core_admin','logocompact',''),(230,'core_admin','favicon',''),(231,'core_admin','coursecolor1','#81ecec'),(232,'core_admin','coursecolor2','#74b9ff'),(233,'core_admin','coursecolor3','#a29bfe'),(234,'core_admin','coursecolor4','#dfe6e9'),(235,'core_admin','coursecolor5','#00b894'),(236,'core_admin','coursecolor6','#0984e3'),(237,'core_admin','coursecolor7','#b2bec3'),(238,'core_admin','coursecolor8','#fdcb6e'),(239,'core_admin','coursecolor9','#fd79a8'),(240,'core_admin','coursecolor10','#6c5ce7'),(241,'core_competency','pushcourseratingstouserplans','1'),(242,'antivirus_clamav','version','2023100900'),(243,'availability_completion','version','2023100900'),(244,'availability_date','version','2023100900'),(245,'availability_grade','version','2023100900'),(246,'availability_group','version','2023100900'),(247,'availability_grouping','version','2023100900'),(248,'availability_profile','version','2023100900'),(249,'qtype_calculated','version','2023100900'),(250,'qtype_calculatedmulti','version','2023100900'),(251,'qtype_calculatedsimple','version','2023100900'),(252,'qtype_ddimageortext','version','2023100900'),(253,'qtype_ddmarker','version','2023100900'),(254,'qtype_ddwtos','version','2023100900'),(255,'qtype_description','version','2023100900'),(256,'qtype_essay','version','2023100900'),(257,'qtype_gapselect','version','2023100900'),(258,'qtype_match','version','2023100900'),(259,'qtype_missingtype','version','2023100900'),(260,'qtype_multianswer','version','2023100900'),(261,'qtype_multichoice','version','2023100900'),(262,'qtype_numerical','version','2023100900'),(263,'qtype_random','version','2023100900'),(264,'qtype_randomsamatch','version','2023100900'),(265,'qtype_shortanswer','version','2023100900'),(266,'qtype_truefalse','version','2023100900'),(267,'mod_assign','version','2023100900'),(268,'mod_bigbluebuttonbn','version','2023100900'),(270,'mod_book','version','2023100900'),(271,'mod_chat','version','2023100900'),(272,'mod_choice','version','2023100900'),(273,'mod_data','version','2023100900'),(274,'mod_feedback','version','2023100900'),(276,'mod_folder','version','2023100900'),(278,'mod_forum','version','2023100900'),(279,'mod_glossary','version','2023100900'),(280,'mod_h5pactivity','version','2023100900'),(281,'mod_imscp','version','2023100900'),(283,'mod_label','version','2023100900'),(284,'mod_lesson','version','2023100900'),(285,'mod_lti','version','2023100900'),(287,'mod_lti','kid','0b1dea9f495ca55f5e19'),(288,'mod_lti','privatekey','-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDcfanpRZoETkVs\nFYY9y3HQm4rAScfCQjLIEUBlbtBguQenmuMeN0VZUhgy1bNbExVvZ/UA2JmfsnS7\n5Imu7na2WyZPH8a3dPv956prdFlbwfwwLJIzwGFlKj3RociTSfUYpUa1Lu0xt4f3\ndmxBRfyAle7ZsRII9Y/YYHTK9mTJCX0+XXwBHDppOmsn/kSGTlbxjnqtUDrWlqgQ\n9IVo4yBNLb8I5Dznr6PxHssHI+wlMeC8U2FGAYGJQDeSrXCb9eVWZ/B0FRsPHeS1\nNJRsSG3Jgj8/TRPyIbZSoHlyAmhxc92MT9TMdVUsLhNQQM4/OGRgIcI70rQdQ+HY\n/EVbhVUjAgMBAAECggEBAJE3Zl+PiqeJUWmlJ3utcTFeL90C+sBzTvS7f/kOKcl6\nM5NsjGbLKi5wxiU839p80CJGinNbNJqcMwvIsfF3dtIVaD62g+8x6gFIwdHxmCS5\ntzmXMVdKPhsd3gciEXMIQ5dOyynrVSboZHFUGmpHCM07cksHtwQVjv6IUIOYEbrg\n/qOaO8hk4Dx9VPzgscTXFH3NU6ttoFkul1ivp5k9eqlz/MVtxCYyn21IQDJKKhJD\n/AhzjFoRH9vb5nFQWTkebLOTAFRzFlu1dvSEuPFS/6Q8nRWuhnmNM+3qAmXgP7Np\n3xbnju7pV7eHyFY52tc/e99Ff90dd5d1swI78PA9PkkCgYEA+ux0vCts2daOALZ6\nDAZXZleHBWg9U6reyB9VHChCNBmiU5hRU4fH0iZUKsqmzNexhjuHmzjpKOOmAE09\n1lX5tLKO40bO8MdaEBjRO4ihm/L1zPMstzmfxyLOCG47/k6ezW4brpGrteu76aJ8\nbeBB8xAjHhKq4s8PYpK/0uIoCCUCgYEA4POYVyYTcQFugU/oSOhkiXTNITkV5MCH\nDbSxh1dQcgdqAMkynMUdE4OiGjpZ+RYzSkqElb7SH6Ti3O3Lcm6aTMDE6pEXJrYJ\nB5BzbGbpPDulo7TyiEoZDbH47o0UdpTRHy2aScPzyzIAQLDnSTQuLncvQD/T61lV\n+ZP5X1VqYacCgYEAriJ0rLWSN+bu6023iyrHcq2hdT4u+SZmrwkXfo/tycxUW6Ek\nJ0zefle9J2k1soipmVcst6saHBdH94OjO2C1BxK3mMBmErC2Lt+aLK+YP+qvbEkC\nKjGiUYc05qLhnY2gJT6ZlV9gg8KRyQTLR1FPU0hKpq8byoUZzzW6S7ZJQ8UCgYB0\n+xiQ0XMwxB7UTlqsd3W46a23Bjm1cM2KuhnMGQLzmZlteTPBxNu/BygoXYnmd74K\nd0AFo2sgG54CaALxqkTBf0mn9fXFIssFTQBJMic+NIKJ5JJvf6ERtyiN3X3zwKYT\ngaKHk8hXNdRdz+Em92TAsyg2UDsDW7zTAjmfcwrUZwKBgQDFsJRVD3E1ftut+sba\nCVjd+JiNUIrm0Az7owMOIu8cP3YORU8i0UWVEeF7tg3CPCcqPepnS7pYgmOVZ1+G\nz2CGlntnWYuGud9RR80C7vRbkMR8IVQRgKDvLLgcRB7D6I4hw0HR8ZukGb8nBWdY\nsIAlNQtwgIxCbBAvqDEr5cw7tw==\n-----END PRIVATE KEY-----\n'),(289,'mod_page','version','2023100900'),(291,'mod_quiz','version','2023100901'),(292,'mod_resource','version','2023100900'),(293,'mod_scorm','version','2023100901'),(294,'mod_survey','version','2023100900'),(296,'mod_url','version','2023100900'),(298,'mod_wiki','version','2023100900'),(300,'mod_workshop','version','2023100900'),(301,'auth_cas','version','2023100900'),(303,'auth_db','version','2023100900'),(305,'auth_email','version','2023100900'),(306,'auth_ldap','version','2023100900'),(308,'auth_lti','version','2023100900'),(309,'auth_manual','version','2023100900'),(310,'auth_mnet','version','2023100900'),(312,'auth_nologin','version','2023100900'),(313,'auth_none','version','2023100900'),(314,'auth_oauth2','version','2023100900'),(315,'auth_shibboleth','version','2023100900'),(317,'auth_webservice','version','2023100900'),(318,'calendartype_gregorian','version','2023100900'),(319,'communication_customlink','version','2023100900'),(320,'communication_matrix','version','2023100900'),(321,'customfield_checkbox','version','2023100900'),(322,'customfield_date','version','2023100900'),(323,'customfield_select','version','2023100900'),(324,'customfield_text','version','2023100900'),(325,'customfield_textarea','version','2023100900'),(326,'enrol_category','version','2023100900'),(328,'enrol_cohort','version','2023100900'),(329,'enrol_database','version','2023100900'),(331,'enrol_fee','version','2023100900'),(332,'enrol_flatfile','version','2023100900'),(334,'enrol_flatfile','map_1','manager'),(335,'enrol_flatfile','map_2','coursecreator'),(336,'enrol_flatfile','map_3','editingteacher'),(337,'enrol_flatfile','map_4','teacher'),(338,'enrol_flatfile','map_5','student'),(339,'enrol_flatfile','map_6','guest'),(340,'enrol_flatfile','map_7','user'),(341,'enrol_flatfile','map_8','frontpage'),(342,'enrol_guest','version','2023100900'),(343,'enrol_imsenterprise','version','2023100900'),(345,'enrol_ldap','version','2023100900'),(347,'enrol_lti','version','2023100900'),(349,'enrol_lti','lti_13_kid','fcabaaddc389db9e266f'),(350,'enrol_lti','lti_13_privatekey','-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDC7GIUa3cq62QP\ns9L/yujpkjLdHc12SgRZ/Nvo2QrbIpj32ZPa9XgcqdYWPtfE2W4DfHN2/F8Irkqc\nOhiNShnr0Xib2t2Cdn+MWWCN7JVFm3ExdY3JJyTGczZpV6kQ9fFRD2YzNuD2kcea\naTXdGKzCHreCZ+peQGtaURCfTKmUqlyyKTtLZ28QCeRId+lzoh6lRTP5cIc+RWaY\nmvc1PPQc45bwEbt5u+V73rBc/IZDo4RrA8F+jToTcsZz75sfpIJik/3svPQ/3UGb\n+lVIyxdqg/qv4Wne/UWYXffaTWdD3zsQXBjKMI37OZy8+BgPSRO1Kj3q9AbdU5VU\nDjdmeP7TAgMBAAECggEAOfxoEPsHMFVmJuWv1zhdoV5Ek1LSVGYgdUSrhtFKUXYx\nW0n2miR73ssHTQbU2VJ1T8Qt9S+Odd6jg2Yk96MbovNllbe+PZlSyEWuW4oNve9H\n9RarXzOt1PthLGVPfiQr7ZlPJd0lfzRO1LiHtYYpnnXU0Y5oQjGXvf5vm3QK3pZq\nfdFHZIolf+Z1VPB5Jfq6i20vIeHpJ+yAacRB5y6m51mEXt928YD0PZHjN2Ym6sPU\nk32fcREPCi0op7SY4R2XcxxYhSjtfCNe4NARnT3M+93Cg6HnegFQiCLcqZQhwkwP\n2/lEbdC738zzliOKL3ggB/YcvMgs4/oXDHw6bX5rgQKBgQDqVdA3R8+DQ/18+4j3\nohbWoHVvNmjQ/RKxCsSznrOlDMUUsX6ML3YEoC45HxsW7rZs0ro+cHUCga5IfnLS\nnvaTSAUtPMiiUeb+C8CQeQcn9HOu3dDoHqATYXYGiZs7xlWzA4SdWKVO1uojIXC6\nk+D4El8lOSfaVFZmRPyJzmR9+QKBgQDU8cfFpQff5l0C1K7kE+ILHZs2Hrj9324O\nclu7FilSIrT+Fwbez68qTjcgPunBd3NZ43jZhq6kq8OdTd5CYy5mN9DyfiSbZWOu\n+MLttdOO5qNiLWXDq3MDPUTzkWUFe+KVSR+/1181rjoAPMmlS3mNZqAs7j1/d8ZP\nONW13sQGKwKBgD0ElVAfscgjZxkpQjQBD+NZKtsHlul8TGavQCLpWyvKFHNb+HC2\nVwvDTeXv1JT3Gadig76Id99sNx6HVozDeb9GDJsH7dJec0CJfN3htdxQieLpvWED\nwHjrctkm8bXx4hTYAKscDwdlbNgy9/CNWxIdbor5xAfU2B6PLhcQGBi5AoGABmXR\nO7Xum6J/LuOW8ZFLXEwiaqjXpAD/fH2hFejfivEyAORON4mD2MCK1XQub7qYA55a\n9iYevyHN+b7qK5JxRW7t3ys9DFIqgYpFyQCKf6OcSwnUIeHXzcQcezjmERkcwKF2\ny7u7x5AZfAJXiJjQ6RepPlBWFqtRkPXDLfioaQsCgYEAut9WSyTS3z1630FehDlc\ngK4P35uhGfx8b9ObUFeVBGSC/l731mHIdNeyCZFZb4Ann8mFdSLhLPbPIYSDh440\n/CLbBw+9Qwmcwh+w4rYsb84Xg9VZOPTji+Hx273EczslDdHs1UCTtO7hg5K03Mt7\nIOAe9B3/ZgbJm7X8uyGzlGo=\n-----END PRIVATE KEY-----\n'),(351,'enrol_manual','version','2023100900'),(353,'enrol_meta','version','2023100900'),(355,'enrol_mnet','version','2023100900'),(356,'enrol_paypal','version','2023100900'),(357,'enrol_self','version','2023100900'),(359,'message_airnotifier','version','2023100900'),(361,'message','airnotifier_provider_enrol_flatfile_flatfile_enrolment_locked','0'),(362,'message','airnotifier_provider_enrol_imsenterprise_imsenterprise_enrolment_locked','0'),(363,'message','airnotifier_provider_enrol_manual_expiry_notification_locked','0'),(364,'message','airnotifier_provider_enrol_paypal_paypal_enrolment_locked','0'),(365,'message','airnotifier_provider_enrol_self_expiry_notification_locked','0'),(366,'message','airnotifier_provider_mod_assign_assign_notification_locked','0'),(367,'message','airnotifier_provider_mod_bigbluebuttonbn_recording_ready_locked','0'),(368,'message','airnotifier_provider_mod_bigbluebuttonbn_instance_updated_locked','0'),(369,'message','airnotifier_provider_mod_feedback_submission_locked','0'),(370,'message','airnotifier_provider_mod_feedback_message_locked','0'),(371,'message','airnotifier_provider_mod_forum_posts_locked','0'),(372,'message','message_provider_mod_forum_posts_enabled','email,airnotifier'),(373,'message','airnotifier_provider_mod_forum_digests_locked','0'),(374,'message','airnotifier_provider_mod_lesson_graded_essay_locked','0'),(375,'message','message_provider_mod_lesson_graded_essay_enabled','email,airnotifier'),(376,'message','airnotifier_provider_mod_quiz_submission_locked','0'),(377,'message','airnotifier_provider_mod_quiz_confirmation_locked','0'),(378,'message','message_provider_mod_quiz_confirmation_enabled','email,airnotifier'),(379,'message','airnotifier_provider_mod_quiz_attempt_overdue_locked','0'),(380,'message','message_provider_mod_quiz_attempt_overdue_enabled','email,airnotifier'),(381,'message','airnotifier_provider_mod_quiz_attempt_grading_complete_locked','0'),(382,'message','message_provider_mod_quiz_attempt_grading_complete_enabled','email,airnotifier'),(383,'message','airnotifier_provider_moodle_newlogin_locked','0'),(384,'message','message_provider_moodle_newlogin_enabled','email,airnotifier'),(385,'message','airnotifier_provider_moodle_notices_locked','0'),(386,'message','airnotifier_provider_moodle_errors_locked','0'),(387,'message','airnotifier_provider_moodle_availableupdate_locked','0'),(388,'message','airnotifier_provider_moodle_instantmessage_locked','0'),(389,'message','airnotifier_provider_moodle_backup_locked','0'),(390,'message','airnotifier_provider_moodle_courserequested_locked','0'),(391,'message','airnotifier_provider_moodle_courserequestapproved_locked','0'),(392,'message','message_provider_moodle_courserequestapproved_enabled','email,airnotifier'),(393,'message','airnotifier_provider_moodle_courserequestrejected_locked','0'),(394,'message','message_provider_moodle_courserequestrejected_enabled','email,airnotifier'),(395,'message','airnotifier_provider_moodle_coursecompleted_locked','0'),(396,'message','message_provider_moodle_coursecompleted_enabled','email,airnotifier'),(397,'message','airnotifier_provider_moodle_coursecontentupdated_locked','0'),(398,'message','message_provider_moodle_coursecontentupdated_enabled','popup,email,airnotifier'),(399,'message','airnotifier_provider_moodle_badgerecipientnotice_locked','0'),(400,'message','message_provider_moodle_badgerecipientnotice_enabled','popup,email,airnotifier'),(401,'message','airnotifier_provider_moodle_badgecreatornotice_locked','0'),(402,'message','airnotifier_provider_moodle_competencyplancomment_locked','0'),(403,'message','airnotifier_provider_moodle_competencyusercompcomment_locked','0'),(404,'message','airnotifier_provider_moodle_insights_locked','0'),(405,'message','message_provider_moodle_insights_enabled','popup,email,airnotifier'),(406,'message','airnotifier_provider_moodle_messagecontactrequests_locked','0'),(407,'message','message_provider_moodle_messagecontactrequests_enabled','email,airnotifier'),(408,'message','airnotifier_provider_moodle_asyncbackupnotification_locked','0'),(409,'message','airnotifier_provider_moodle_gradenotifications_locked','0'),(410,'message','airnotifier_provider_moodle_infected_locked','0'),(411,'message','airnotifier_provider_moodle_reportbuilderschedule_locked','0'),(412,'message_email','version','2023100900'),(414,'message','email_provider_enrol_flatfile_flatfile_enrolment_locked','0'),(415,'message','message_provider_enrol_flatfile_flatfile_enrolment_enabled','email'),(416,'message','email_provider_enrol_imsenterprise_imsenterprise_enrolment_locked','0'),(417,'message','message_provider_enrol_imsenterprise_imsenterprise_enrolment_enabled','email'),(418,'message','email_provider_enrol_manual_expiry_notification_locked','0'),(419,'message','message_provider_enrol_manual_expiry_notification_enabled','email'),(420,'message','email_provider_enrol_paypal_paypal_enrolment_locked','0'),(421,'message','message_provider_enrol_paypal_paypal_enrolment_enabled','email'),(422,'message','email_provider_enrol_self_expiry_notification_locked','0'),(423,'message','message_provider_enrol_self_expiry_notification_enabled','email'),(424,'message','email_provider_mod_assign_assign_notification_locked','0'),(425,'message','message_provider_mod_assign_assign_notification_enabled','email'),(426,'message','email_provider_mod_bigbluebuttonbn_recording_ready_locked','0'),(427,'message','message_provider_mod_bigbluebuttonbn_recording_ready_enabled','email'),(428,'message','email_provider_mod_bigbluebuttonbn_instance_updated_locked','0'),(429,'message','message_provider_mod_bigbluebuttonbn_instance_updated_enabled','email'),(430,'message','email_provider_mod_feedback_submission_locked','0'),(431,'message','message_provider_mod_feedback_submission_enabled','email'),(432,'message','email_provider_mod_feedback_message_locked','0'),(433,'message','message_provider_mod_feedback_message_enabled','email'),(434,'message','email_provider_mod_forum_posts_locked','0'),(435,'message','email_provider_mod_forum_digests_locked','0'),(436,'message','message_provider_mod_forum_digests_enabled','email'),(437,'message','email_provider_mod_lesson_graded_essay_locked','0'),(438,'message','email_provider_mod_quiz_submission_locked','0'),(439,'message','message_provider_mod_quiz_submission_enabled','email'),(440,'message','email_provider_mod_quiz_confirmation_locked','0'),(441,'message','email_provider_mod_quiz_attempt_overdue_locked','0'),(442,'message','email_provider_mod_quiz_attempt_grading_complete_locked','0'),(443,'message','email_provider_moodle_newlogin_locked','0'),(444,'message','email_provider_moodle_notices_locked','0'),(445,'message','message_provider_moodle_notices_enabled','email'),(446,'message','email_provider_moodle_errors_locked','0'),(447,'message','message_provider_moodle_errors_enabled','email'),(448,'message','email_provider_moodle_availableupdate_locked','0'),(449,'message','message_provider_moodle_availableupdate_enabled','email'),(450,'message','email_provider_moodle_instantmessage_locked','0'),(451,'message','message_provider_moodle_instantmessage_enabled','popup,email'),(452,'message','email_provider_moodle_backup_locked','0'),(453,'message','message_provider_moodle_backup_enabled','email'),(454,'message','email_provider_moodle_courserequested_locked','0'),(455,'message','message_provider_moodle_courserequested_enabled','email'),(456,'message','email_provider_moodle_courserequestapproved_locked','0'),(457,'message','email_provider_moodle_courserequestrejected_locked','0'),(458,'message','email_provider_moodle_coursecompleted_locked','0'),(459,'message','email_provider_moodle_coursecontentupdated_locked','0'),(460,'message','email_provider_moodle_badgerecipientnotice_locked','0'),(461,'message','email_provider_moodle_badgecreatornotice_locked','0'),(462,'message','message_provider_moodle_badgecreatornotice_enabled','email'),(463,'message','email_provider_moodle_competencyplancomment_locked','0'),(464,'message','message_provider_moodle_competencyplancomment_enabled','email'),(465,'message','email_provider_moodle_competencyusercompcomment_locked','0'),(466,'message','message_provider_moodle_competencyusercompcomment_enabled','email'),(467,'message','email_provider_moodle_insights_locked','0'),(468,'message','email_provider_moodle_messagecontactrequests_locked','0'),(469,'message','email_provider_moodle_asyncbackupnotification_locked','0'),(470,'message','message_provider_moodle_asyncbackupnotification_enabled','popup,email'),(471,'message','email_provider_moodle_gradenotifications_locked','0'),(472,'message','message_provider_moodle_gradenotifications_enabled','popup,email'),(473,'message','email_provider_moodle_infected_locked','0'),(474,'message','message_provider_moodle_infected_enabled','email'),(475,'message','email_provider_moodle_reportbuilderschedule_locked','1'),(476,'message','message_provider_moodle_reportbuilderschedule_enabled','email'),(477,'message_popup','version','2023100900'),(479,'message','popup_provider_enrol_flatfile_flatfile_enrolment_locked','0'),(480,'message','popup_provider_enrol_imsenterprise_imsenterprise_enrolment_locked','0'),(481,'message','popup_provider_enrol_manual_expiry_notification_locked','0'),(482,'message','popup_provider_enrol_paypal_paypal_enrolment_locked','0'),(483,'message','popup_provider_enrol_self_expiry_notification_locked','0'),(484,'message','popup_provider_mod_assign_assign_notification_locked','0'),(485,'message','popup_provider_mod_bigbluebuttonbn_recording_ready_locked','0'),(486,'message','popup_provider_mod_bigbluebuttonbn_instance_updated_locked','0'),(487,'message','popup_provider_mod_feedback_submission_locked','0'),(488,'message','popup_provider_mod_feedback_message_locked','0'),(489,'message','popup_provider_mod_forum_posts_locked','0'),(490,'message','popup_provider_mod_forum_digests_locked','0'),(491,'message','popup_provider_mod_lesson_graded_essay_locked','0'),(492,'message','popup_provider_mod_quiz_submission_locked','0'),(493,'message','popup_provider_mod_quiz_confirmation_locked','0'),(494,'message','popup_provider_mod_quiz_attempt_overdue_locked','0'),(495,'message','popup_provider_mod_quiz_attempt_grading_complete_locked','0'),(496,'message','popup_provider_moodle_newlogin_locked','0'),(497,'message','popup_provider_moodle_notices_locked','0'),(498,'message','popup_provider_moodle_errors_locked','0'),(499,'message','popup_provider_moodle_availableupdate_locked','0'),(500,'message','popup_provider_moodle_instantmessage_locked','0'),(501,'message','popup_provider_moodle_backup_locked','0'),(502,'message','popup_provider_moodle_courserequested_locked','0'),(503,'message','popup_provider_moodle_courserequestapproved_locked','0'),(504,'message','popup_provider_moodle_courserequestrejected_locked','0'),(505,'message','popup_provider_moodle_coursecompleted_locked','0'),(506,'message','popup_provider_moodle_coursecontentupdated_locked','0'),(507,'message','popup_provider_moodle_badgerecipientnotice_locked','0'),(508,'message','popup_provider_moodle_badgecreatornotice_locked','0'),(509,'message','popup_provider_moodle_competencyplancomment_locked','0'),(510,'message','popup_provider_moodle_competencyusercompcomment_locked','0'),(511,'message','popup_provider_moodle_insights_locked','0'),(512,'message','popup_provider_moodle_messagecontactrequests_locked','0'),(513,'message','popup_provider_moodle_asyncbackupnotification_locked','0'),(514,'message','popup_provider_moodle_gradenotifications_locked','0'),(515,'message','popup_provider_moodle_infected_locked','0'),(516,'message','popup_provider_moodle_reportbuilderschedule_locked','0'),(517,'block_accessreview','version','2023100900'),(518,'block_activity_modules','version','2023100900'),(519,'block_activity_results','version','2023100900'),(520,'block_admin_bookmarks','version','2023100900'),(521,'block_badges','version','2023100900'),(522,'block_blog_menu','version','2023100900'),(523,'block_blog_recent','version','2023100900'),(524,'block_blog_tags','version','2023100900'),(525,'block_calendar_month','version','2023100900'),(526,'block_calendar_upcoming','version','2023100900'),(527,'block_comments','version','2023100900'),(528,'block_completionstatus','version','2023100900'),(529,'block_course_list','version','2023100900'),(530,'block_course_summary','version','2023100900'),(532,'block_feedback','version','2023100900'),(534,'block_globalsearch','version','2023100900'),(535,'block_glossary_random','version','2023100900'),(536,'block_html','version','2023100900'),(537,'block_login','version','2023100900'),(538,'block_lp','version','2023100900'),(539,'block_mentees','version','2023100900'),(540,'block_mnet_hosts','version','2023100900'),(541,'block_myoverview','version','2023100900'),(542,'block_myprofile','version','2023100900'),(543,'block_navigation','version','2023100900'),(544,'block_news_items','version','2023100900'),(545,'block_online_users','version','2023100900'),(546,'block_private_files','version','2023100900'),(547,'block_recent_activity','version','2023100900'),(548,'block_recentlyaccessedcourses','version','2023100900'),(550,'block_recentlyaccesseditems','version','2023100900'),(551,'block_rss_client','version','2023100900'),(553,'block_search_forums','version','2023100900'),(554,'block_section_links','version','2023100900'),(555,'block_selfcompletion','version','2023100900'),(557,'block_settings','version','2023100900'),(558,'block_site_main_menu','version','2023100900'),(559,'block_social_activities','version','2023100900'),(560,'block_starredcourses','version','2023100900'),(561,'block_tag_flickr','version','2023100900'),(562,'block_tag_youtube','version','2023100900'),(564,'block_tags','version','2023100900'),(565,'block_timeline','version','2023100900'),(567,'media_html5audio','version','2023100900'),(568,'media_html5video','version','2023100900'),(569,'media_videojs','version','2023100900'),(570,'media_vimeo','version','2023100900'),(571,'media_youtube','version','2023100900'),(572,'filter_activitynames','version','2023100900'),(574,'filter_algebra','version','2023100900'),(575,'filter_codehighlighter','version','2023100900'),(576,'filter_data','version','2023100900'),(578,'filter_displayh5p','version','2023100900'),(580,'filter_emailprotect','version','2023100900'),(581,'filter_emoticon','version','2023100900'),(583,'filter_glossary','version','2023100900'),(585,'filter_mathjaxloader','version','2023100900'),(587,'filter_mediaplugin','version','2023100900'),(589,'filter_multilang','version','2023100900'),(590,'filter_tex','version','2023100900'),(592,'filter_tidy','version','2023100900'),(593,'filter_urltolink','version','2023100900'),(595,'editor_atto','version','2023100900'),(596,'editor_textarea','version','2023100900'),(597,'editor_tiny','version','2023100900'),(599,'format_singleactivity','version','2023100900'),(600,'format_social','version','2023100900'),(601,'format_topics','version','2023100900'),(602,'format_weeks','version','2023100900'),(603,'dataformat_csv','version','2023100900'),(604,'dataformat_excel','version','2023100900'),(605,'dataformat_html','version','2023100900'),(606,'dataformat_json','version','2023100900'),(607,'dataformat_ods','version','2023100900'),(608,'dataformat_pdf','version','2023100900'),(609,'profilefield_checkbox','version','2023100900'),(610,'profilefield_datetime','version','2023100900'),(611,'profilefield_menu','version','2023100900'),(612,'profilefield_social','version','2023100900'),(613,'profilefield_text','version','2023100900'),(614,'profilefield_textarea','version','2023100900'),(615,'report_backups','version','2023100900'),(616,'report_competency','version','2023100900'),(617,'report_completion','version','2023100900'),(619,'report_configlog','version','2023100900'),(620,'report_courseoverview','version','2023100900'),(621,'report_eventlist','version','2023100900'),(622,'report_infectedfiles','version','2023100900'),(623,'report_insights','version','2023100900'),(624,'report_log','version','2023100900'),(626,'report_loglive','version','2023100900'),(627,'report_outline','version','2023100900'),(629,'report_participation','version','2023100900'),(631,'report_performance','version','2023100900'),(632,'report_progress','version','2023100900'),(634,'report_questioninstances','version','2023100900'),(635,'report_security','version','2023100900'),(636,'report_stats','version','2023100900'),(638,'report_status','version','2023100900'),(639,'report_usersessions','version','2023100900'),(640,'gradeexport_ods','version','2023100900'),(641,'gradeexport_txt','version','2023100900'),(642,'gradeexport_xls','version','2023100900'),(643,'gradeexport_xml','version','2023100900'),(644,'gradeimport_csv','version','2023100900'),(645,'gradeimport_direct','version','2023100900'),(646,'gradeimport_xml','version','2023100900'),(647,'gradereport_grader','version','2023100900'),(648,'gradereport_history','version','2023100900'),(649,'gradereport_outcomes','version','2023100900'),(650,'gradereport_overview','version','2023100900'),(651,'gradereport_singleview','version','2023100900'),(652,'gradereport_summary','version','2023100900'),(653,'gradereport_user','version','2023100900'),(654,'gradingform_guide','version','2023100900'),(655,'gradingform_rubric','version','2023100900'),(656,'mlbackend_php','version','2023100900'),(657,'mlbackend_python','version','2023100900'),(658,'mnetservice_enrol','version','2023100900'),(659,'webservice_rest','version','2023100900'),(660,'webservice_soap','version','2023100900'),(661,'repository_areafiles','version','2023100900'),(663,'areafiles','enablecourseinstances','0'),(664,'areafiles','enableuserinstances','0'),(665,'repository_contentbank','version','2023100900'),(667,'contentbank','enablecourseinstances','0'),(668,'contentbank','enableuserinstances','0'),(669,'repository_coursefiles','version','2023100900'),(670,'repository_dropbox','version','2023100900'),(671,'repository_equella','version','2023100900'),(672,'repository_filesystem','version','2023100900'),(673,'repository_flickr','version','2023100900'),(674,'repository_flickr_public','version','2023100900'),(675,'repository_googledocs','version','2023100900'),(676,'repository_local','version','2023100900'),(678,'local','enablecourseinstances','0'),(679,'local','enableuserinstances','0'),(680,'repository_merlot','version','2023100900'),(681,'repository_nextcloud','version','2023100900'),(682,'repository_onedrive','version','2023100900'),(683,'repository_recent','version','2023100900'),(685,'recent','enablecourseinstances','0'),(686,'recent','enableuserinstances','0'),(687,'repository_s3','version','2023100900'),(688,'repository_upload','version','2023100900'),(690,'upload','enablecourseinstances','0'),(691,'upload','enableuserinstances','0'),(692,'repository_url','version','2023100900'),(694,'url','enablecourseinstances','0'),(695,'url','enableuserinstances','0'),(696,'repository_user','version','2023100900'),(698,'user','enablecourseinstances','0'),(699,'user','enableuserinstances','0'),(700,'repository_webdav','version','2023100900'),(701,'repository_wikimedia','version','2023100900'),(703,'wikimedia','enablecourseinstances','0'),(704,'wikimedia','enableuserinstances','0'),(705,'repository_youtube','version','2023100900'),(707,'portfolio_download','version','2023100900'),(708,'portfolio_flickr','version','2023100900'),(709,'portfolio_googledocs','version','2023100900'),(710,'portfolio_mahara','version','2023100900'),(711,'search_simpledb','version','2023100900'),(713,'search_solr','version','2023100900'),(714,'qbank_bulkmove','version','2023100900'),(715,'qbank_columnsortorder','version','2023100900'),(716,'qbank_comment','version','2023100900'),(717,'qbank_customfields','version','2023100900'),(718,'qbank_deletequestion','version','2023100900'),(719,'qbank_editquestion','version','2023100900'),(720,'qbank_exportquestions','version','2023100900'),(721,'qbank_exporttoxml','version','2023100900'),(722,'qbank_history','version','2023100900'),(723,'qbank_importquestions','version','2023100900'),(724,'qbank_managecategories','version','2023100900'),(725,'qbank_previewquestion','version','2023100900'),(726,'qbank_statistics','version','2023100900'),(727,'qbank_tagquestion','version','2023100900'),(728,'qbank_usage','version','2023100900'),(729,'qbank_viewcreator','version','2023100900'),(730,'qbank_viewquestionname','version','2023100900'),(731,'qbank_viewquestiontext','version','2023100900'),(732,'qbank_viewquestiontype','version','2023100900'),(733,'qbehaviour_adaptive','version','2023100900'),(734,'qbehaviour_adaptivenopenalty','version','2023100900'),(735,'qbehaviour_deferredcbm','version','2023100900'),(736,'qbehaviour_deferredfeedback','version','2023100900'),(737,'qbehaviour_immediatecbm','version','2023100900'),(738,'qbehaviour_immediatefeedback','version','2023100900'),(739,'qbehaviour_informationitem','version','2023100900'),(740,'qbehaviour_interactive','version','2023100900'),(741,'qbehaviour_interactivecountback','version','2023100900'),(742,'qbehaviour_manualgraded','version','2023100900'),(744,'question','disabledbehaviours','manualgraded'),(745,'qbehaviour_missing','version','2023100900'),(746,'qformat_aiken','version','2023100900'),(747,'qformat_blackboard_six','version','2023100900'),(748,'qformat_gift','version','2023100900'),(749,'qformat_missingword','version','2023100900'),(750,'qformat_multianswer','version','2023100900'),(751,'qformat_xhtml','version','2023100900'),(752,'qformat_xml','version','2023100900'),(753,'tool_admin_presets','version','2023100900'),(754,'tool_analytics','version','2023100900'),(755,'tool_availabilityconditions','version','2023100900'),(756,'tool_behat','version','2023100900'),(757,'tool_brickfield','version','2023100900'),(759,'tool_capability','version','2023100900'),(760,'tool_cohortroles','version','2023100900'),(761,'tool_componentlibrary','version','2023100900'),(762,'tool_customlang','version','2023100900'),(764,'tool_dataprivacy','version','2023100900'),(765,'message','airnotifier_provider_tool_dataprivacy_contactdataprotectionofficer_locked','0'),(766,'message','email_provider_tool_dataprivacy_contactdataprotectionofficer_locked','0'),(767,'message','popup_provider_tool_dataprivacy_contactdataprotectionofficer_locked','0'),(768,'message','message_provider_tool_dataprivacy_contactdataprotectionofficer_enabled','email,popup'),(769,'message','airnotifier_provider_tool_dataprivacy_datarequestprocessingresults_locked','0'),(770,'message','email_provider_tool_dataprivacy_datarequestprocessingresults_locked','0'),(771,'message','popup_provider_tool_dataprivacy_datarequestprocessingresults_locked','0'),(772,'message','message_provider_tool_dataprivacy_datarequestprocessingresults_enabled','email,popup'),(773,'message','airnotifier_provider_tool_dataprivacy_notifyexceptions_locked','0'),(774,'message','email_provider_tool_dataprivacy_notifyexceptions_locked','0'),(775,'message','popup_provider_tool_dataprivacy_notifyexceptions_locked','0'),(776,'message','message_provider_tool_dataprivacy_notifyexceptions_enabled','email'),(777,'tool_dbtransfer','version','2023100900'),(778,'tool_filetypes','version','2023100900'),(779,'tool_generator','version','2023100900'),(780,'tool_httpsreplace','version','2023100900'),(781,'tool_innodb','version','2023100900'),(782,'tool_installaddon','version','2023100900'),(783,'tool_langimport','version','2023100900'),(784,'tool_licensemanager','version','2023100900'),(785,'tool_log','version','2023100900'),(787,'tool_log','enabled_stores','logstore_standard'),(788,'tool_lp','version','2023100900'),(789,'tool_lpimportcsv','version','2023100900'),(790,'tool_lpmigrate','version','2023100900'),(791,'tool_messageinbound','version','2023100900'),(792,'message','airnotifier_provider_tool_messageinbound_invalidrecipienthandler_locked','0'),(793,'message','email_provider_tool_messageinbound_invalidrecipienthandler_locked','0'),(794,'message','popup_provider_tool_messageinbound_invalidrecipienthandler_locked','0'),(795,'message','message_provider_tool_messageinbound_invalidrecipienthandler_enabled','email'),(796,'message','airnotifier_provider_tool_messageinbound_messageprocessingerror_locked','0'),(797,'message','email_provider_tool_messageinbound_messageprocessingerror_locked','0'),(798,'message','popup_provider_tool_messageinbound_messageprocessingerror_locked','0'),(799,'message','message_provider_tool_messageinbound_messageprocessingerror_enabled','email'),(800,'message','airnotifier_provider_tool_messageinbound_messageprocessingsuccess_locked','0'),(801,'message','email_provider_tool_messageinbound_messageprocessingsuccess_locked','0'),(802,'message','popup_provider_tool_messageinbound_messageprocessingsuccess_locked','0'),(803,'message','message_provider_tool_messageinbound_messageprocessingsuccess_enabled','email'),(804,'tool_mfa','version','2023100900'),(805,'tool_mobile','version','2023100900'),(806,'tool_monitor','version','2023100900'),(807,'message','airnotifier_provider_tool_monitor_notification_locked','0'),(808,'message','email_provider_tool_monitor_notification_locked','0'),(809,'message','popup_provider_tool_monitor_notification_locked','0'),(810,'message','message_provider_tool_monitor_notification_enabled','email'),(811,'tool_moodlenet','version','2023100900'),(813,'tool_multilangupgrade','version','2023100900'),(814,'tool_oauth2','version','2023100900'),(815,'tool_phpunit','version','2023100900'),(816,'tool_policy','version','2023100900'),(817,'tool_profiling','version','2023100900'),(818,'tool_recyclebin','version','2023100900'),(819,'tool_replace','version','2023100900'),(820,'tool_spamcleaner','version','2023100900'),(821,'tool_task','version','2023100900'),(822,'tool_templatelibrary','version','2023100900'),(823,'tool_unsuproles','version','2023100900'),(825,'tool_uploadcourse','version','2023100900'),(826,'tool_uploaduser','version','2023100900'),(827,'tool_usertours','version','2023100900'),(829,'tool_xmldb','version','2023100900'),(830,'cachestore_apcu','version','2023100900'),(831,'cachestore_file','version','2023100900'),(832,'cachestore_redis','version','2023100900'),(833,'cachestore_session','version','2023100900'),(834,'cachestore_static','version','2023100900'),(835,'cachelock_file','version','2023100900'),(836,'fileconverter_googledrive','version','2023100900'),(837,'fileconverter_unoconv','version','2023100900'),(839,'contenttype_h5p','version','2023100900'),(840,'theme_boost','version','2023100900'),(841,'theme_classic','version','2023100900'),(842,'h5plib_v124','version','2023100900'),(843,'paygw_paypal','version','2023100900'),(845,'assignsubmission_comments','version','2023100900'),(847,'assignsubmission_file','sortorder','1'),(848,'assignsubmission_comments','sortorder','2'),(849,'assignsubmission_onlinetext','sortorder','0'),(850,'assignsubmission_file','version','2023100900'),(851,'assignsubmission_onlinetext','version','2023100900'),(853,'assignfeedback_comments','version','2023100900'),(855,'assignfeedback_comments','sortorder','0'),(856,'assignfeedback_editpdf','sortorder','1'),(857,'assignfeedback_file','sortorder','3'),(858,'assignfeedback_offline','sortorder','2'),(859,'assignfeedback_editpdf','version','2023100900'),(861,'assignfeedback_file','version','2023100900'),(863,'assignfeedback_offline','version','2023100900'),(864,'booktool_exportimscp','version','2023100900'),(865,'booktool_importhtml','version','2023100900'),(866,'booktool_print','version','2023100900'),(867,'datafield_checkbox','version','2023100900'),(868,'datafield_date','version','2023100900'),(869,'datafield_file','version','2023100900'),(870,'datafield_latlong','version','2023100900'),(871,'datafield_menu','version','2023100900'),(872,'datafield_multimenu','version','2023100900'),(873,'datafield_number','version','2023100900'),(874,'datafield_picture','version','2023100900'),(875,'datafield_radiobutton','version','2023100900'),(876,'datafield_text','version','2023100900'),(877,'datafield_textarea','version','2023100900'),(878,'datafield_url','version','2023100900'),(879,'datapreset_imagegallery','version','2023100900'),(880,'datapreset_journal','version','2023100900'),(881,'datapreset_proposals','version','2023100900'),(882,'datapreset_resources','version','2023100900'),(883,'forumreport_summary','version','2023100900'),(884,'ltiservice_basicoutcomes','version','2023100900'),(885,'ltiservice_gradebookservices','version','2023100900'),(886,'ltiservice_memberships','version','2023100900'),(887,'ltiservice_profile','version','2023100900'),(888,'ltiservice_toolproxy','version','2023100900'),(889,'ltiservice_toolsettings','version','2023100900'),(890,'quiz_grading','version','2023100900'),(892,'quiz_overview','version','2023100900'),(894,'quiz_responses','version','2023100900'),(896,'quiz_statistics','version','2023100900'),(898,'quizaccess_delaybetweenattempts','version','2023100900'),(899,'quizaccess_ipaddress','version','2023100900'),(900,'quizaccess_numattempts','version','2023100900'),(901,'quizaccess_offlineattempts','version','2023100900'),(902,'quizaccess_openclosedate','version','2023100900'),(903,'quizaccess_password','version','2023100900'),(904,'quizaccess_seb','version','2023100900'),(906,'quizaccess_securewindow','version','2023100900'),(907,'quizaccess_timelimit','version','2023100900'),(908,'scormreport_basic','version','2023100900'),(909,'scormreport_graphs','version','2023100900'),(910,'scormreport_interactions','version','2023100900'),(911,'scormreport_objectives','version','2023100900'),(912,'workshopform_accumulative','version','2023100900'),(914,'workshopform_comments','version','2023100900'),(916,'workshopform_numerrors','version','2023100900'),(918,'workshopform_rubric','version','2023100900'),(920,'workshopallocation_manual','version','2023100900'),(921,'workshopallocation_random','version','2023100900'),(922,'workshopallocation_scheduled','version','2023100900'),(923,'workshopeval_best','version','2023100900'),(924,'atto_accessibilitychecker','version','2023100900'),(925,'atto_accessibilityhelper','version','2023100900'),(926,'atto_align','version','2023100900'),(927,'atto_backcolor','version','2023100900'),(928,'atto_bold','version','2023100900'),(929,'atto_charmap','version','2023100900'),(930,'atto_clear','version','2023100900'),(931,'atto_collapse','version','2023100900'),(932,'atto_emojipicker','version','2023100900'),(933,'atto_emoticon','version','2023100900'),(934,'atto_equation','version','2023100900'),(935,'atto_fontcolor','version','2023100900'),(936,'atto_h5p','version','2023100900'),(937,'atto_html','version','2023100900'),(938,'atto_image','version','2023100900'),(939,'atto_indent','version','2023100900'),(940,'atto_italic','version','2023100900'),(941,'atto_link','version','2023100900'),(942,'atto_managefiles','version','2023100900'),(943,'atto_media','version','2023100900'),(944,'atto_noautolink','version','2023100900'),(945,'atto_orderedlist','version','2023100900'),(946,'atto_recordrtc','version','2023100900'),(947,'atto_rtl','version','2023100900'),(948,'atto_strike','version','2023100900'),(949,'atto_subscript','version','2023100900'),(950,'atto_superscript','version','2023100900'),(951,'atto_table','version','2023100900'),(952,'atto_title','version','2023100900'),(953,'atto_underline','version','2023100900'),(954,'atto_undo','version','2023100900'),(955,'atto_unorderedlist','version','2023100900'),(956,'tiny_accessibilitychecker','version','2023100900'),(957,'tiny_autosave','version','2023100900'),(958,'tiny_equation','version','2023100900'),(959,'tiny_h5p','version','2023100900'),(960,'tiny_html','version','2023100900'),(961,'tiny_link','version','2023100900'),(962,'tiny_media','version','2023100900'),(963,'tiny_noautolink','version','2023100900'),(965,'tiny_noautolink','disabled','1'),(966,'tiny_premium','version','2023100900'),(967,'tiny_recordrtc','version','2023100900'),(968,'logstore_database','version','2023100900'),(969,'logstore_standard','version','2023100900'),(970,'factor_admin','version','2023100900'),(971,'factor_auth','version','2023100900'),(972,'factor_capability','version','2023100900'),(973,'factor_cohort','version','2023100900'),(974,'factor_email','version','2023100900'),(975,'factor_grace','version','2023100900'),(976,'factor_iprange','version','2023100900'),(977,'factor_nosetup','version','2023100900'),(978,'factor_role','version','2023100900'),(979,'factor_token','version','2023100900'),(980,'factor_totp','version','2023100900'),(981,'factor_webauthn','version','2023100900'),(982,'tool_moodlenet','enablemoodlenet','1'),(983,'tool_dataprivacy','contactdataprotectionofficer','0'),(984,'tool_dataprivacy','automaticdataexportapproval','0'),(985,'tool_dataprivacy','automaticdatadeletionapproval','0'),(986,'tool_dataprivacy','automaticdeletionrequests','1'),(987,'tool_dataprivacy','privacyrequestexpiry','604800'),(988,'tool_dataprivacy','requireallenddatesforuserdeletion','1'),(989,'tool_dataprivacy','showdataretentionsummary','1'),(990,'tool_dataprivacy','allowfiltering','0'),(991,'tool_log','exportlog','1'),(992,'analytics','logstore','logstore_standard'),(993,'message_airnotifier','encryptnotifications','0'),(994,'message_airnotifier','encryptprocessing','0'),(995,'assign','feedback_plugin_for_gradebook','assignfeedback_comments'),(996,'assign','showrecentsubmissions','0'),(997,'assign','submissionreceipts','1'),(998,'assign','submissionstatement','This submission is my own work, except where I have acknowledged the use of the works of other people.'),(999,'assign','submissionstatementteamsubmission','This submission is the work of my group, except where we have acknowledged the use of the works of other people.'),(1000,'assign','submissionstatementteamsubmissionallsubmit','This submission is my own work as a group member, except where I have acknowledged the use of the works of other people.'),(1001,'assign','maxperpage','-1'),(1002,'assign','alwaysshowdescription','1'),(1003,'assign','alwaysshowdescription_adv',''),(1004,'assign','alwaysshowdescription_locked',''),(1005,'assign','allowsubmissionsfromdate','0'),(1006,'assign','allowsubmissionsfromdate_enabled','1'),(1007,'assign','allowsubmissionsfromdate_adv',''),(1008,'assign','duedate','604800'),(1009,'assign','duedate_enabled','1'),(1010,'assign','duedate_adv',''),(1011,'assign','cutoffdate','1209600'),(1012,'assign','cutoffdate_enabled',''),(1013,'assign','cutoffdate_adv',''),(1014,'assign','enabletimelimit','0'),(1015,'assign','gradingduedate','1209600'),(1016,'assign','gradingduedate_enabled','1'),(1017,'assign','gradingduedate_adv',''),(1018,'assign','submissiondrafts','0'),(1019,'assign','submissiondrafts_adv',''),(1020,'assign','submissiondrafts_locked',''),(1021,'assign','requiresubmissionstatement','0'),(1022,'assign','requiresubmissionstatement_adv',''),(1023,'assign','requiresubmissionstatement_locked',''),(1024,'assign','attemptreopenmethod','none'),(1025,'assign','attemptreopenmethod_adv',''),(1026,'assign','attemptreopenmethod_locked',''),(1027,'assign','maxattempts','-1'),(1028,'assign','maxattempts_adv',''),(1029,'assign','maxattempts_locked',''),(1030,'assign','teamsubmission','0'),(1031,'assign','teamsubmission_adv',''),(1032,'assign','teamsubmission_locked',''),(1033,'assign','preventsubmissionnotingroup','0'),(1034,'assign','preventsubmissionnotingroup_adv',''),(1035,'assign','preventsubmissionnotingroup_locked',''),(1036,'assign','requireallteammemberssubmit','0'),(1037,'assign','requireallteammemberssubmit_adv',''),(1038,'assign','requireallteammemberssubmit_locked',''),(1039,'assign','teamsubmissiongroupingid',''),(1040,'assign','teamsubmissiongroupingid_adv',''),(1041,'assign','sendnotifications','0'),(1042,'assign','sendnotifications_adv',''),(1043,'assign','sendnotifications_locked',''),(1044,'assign','sendlatenotifications','0'),(1045,'assign','sendlatenotifications_adv',''),(1046,'assign','sendlatenotifications_locked',''),(1047,'assign','sendstudentnotifications','1'),(1048,'assign','sendstudentnotifications_adv',''),(1049,'assign','sendstudentnotifications_locked',''),(1050,'assign','blindmarking','0'),(1051,'assign','blindmarking_adv',''),(1052,'assign','blindmarking_locked',''),(1053,'assign','hidegrader','0'),(1054,'assign','hidegrader_adv',''),(1055,'assign','hidegrader_locked',''),(1056,'assign','markingworkflow','0'),(1057,'assign','markingworkflow_adv',''),(1058,'assign','markingworkflow_locked',''),(1059,'assign','markingallocation','0'),(1060,'assign','markingallocation_adv',''),(1061,'assign','markingallocation_locked',''),(1062,'assignsubmission_file','default','1'),(1063,'assignsubmission_file','maxfiles','20'),(1064,'assignsubmission_file','filetypes',''),(1065,'assignsubmission_file','maxbytes','0'),(1066,'assignsubmission_onlinetext','default','0'),(1067,'assignfeedback_comments','default','1'),(1068,'assignfeedback_comments','inline','0'),(1069,'assignfeedback_comments','inline_adv',''),(1070,'assignfeedback_comments','inline_locked',''),(1071,'assignfeedback_editpdf','default','1'),(1072,'assignfeedback_editpdf','stamps',''),(1073,'assignfeedback_file','default','0'),(1074,'assignfeedback_offline','default','0'),(1075,'mod_bigbluebuttonbn','presentationdefault',''),(1076,'book','numberingoptions','0,1,2,3'),(1077,'book','numbering','1'),(1078,'resource','framesize','130'),(1079,'resource','displayoptions','0,1,4,5,6'),(1080,'resource','printintro','1'),(1081,'resource','display','0'),(1082,'resource','showsize','0'),(1083,'resource','showtype','1'),(1084,'resource','showdate','0'),(1085,'resource','popupwidth','620'),(1086,'resource','popupheight','450'),(1087,'resource','filterfiles','0'),(1088,'folder','showexpanded','1'),(1089,'folder','maxsizetodownload','0'),(1090,'mod_h5pactivity','enablesavestate','1'),(1091,'mod_h5pactivity','savestatefreq','60'),(1092,'imscp','keepold','1'),(1093,'imscp','keepold_adv',''),(1094,'mod_lesson','mediafile',''),(1095,'mod_lesson','mediafile_adv','1'),(1096,'mod_lesson','mediawidth','640'),(1097,'mod_lesson','mediaheight','480'),(1098,'mod_lesson','mediaclose','0'),(1099,'mod_lesson','progressbar','0'),(1100,'mod_lesson','progressbar_adv',''),(1101,'mod_lesson','ongoing','0'),(1102,'mod_lesson','ongoing_adv','1'),(1103,'mod_lesson','displayleftmenu','0'),(1104,'mod_lesson','displayleftmenu_adv',''),(1105,'mod_lesson','displayleftif','0'),(1106,'mod_lesson','displayleftif_adv','1'),(1107,'mod_lesson','slideshow','0'),(1108,'mod_lesson','slideshow_adv','1'),(1109,'mod_lesson','slideshowwidth','640'),(1110,'mod_lesson','slideshowheight','480'),(1111,'mod_lesson','slideshowbgcolor','#FFFFFF'),(1112,'mod_lesson','maxanswers','5'),(1113,'mod_lesson','maxanswers_adv','1'),(1114,'mod_lesson','defaultfeedback','0'),(1115,'mod_lesson','defaultfeedback_adv','1'),(1116,'mod_lesson','activitylink',''),(1117,'mod_lesson','activitylink_adv','1'),(1118,'mod_lesson','timelimit','0'),(1119,'mod_lesson','timelimit_adv',''),(1120,'mod_lesson','password','0'),(1121,'mod_lesson','password_adv','1'),(1122,'mod_lesson','modattempts','0'),(1123,'mod_lesson','modattempts_adv',''),(1124,'mod_lesson','displayreview','0'),(1125,'mod_lesson','displayreview_adv',''),(1126,'mod_lesson','maximumnumberofattempts','1'),(1127,'mod_lesson','maximumnumberofattempts_adv',''),(1128,'mod_lesson','defaultnextpage','0'),(1129,'mod_lesson','defaultnextpage_adv','1'),(1130,'mod_lesson','numberofpagestoshow','1'),(1131,'mod_lesson','numberofpagestoshow_adv','1'),(1132,'mod_lesson','practice','0'),(1133,'mod_lesson','practice_adv',''),(1134,'mod_lesson','customscoring','1'),(1135,'mod_lesson','customscoring_adv','1'),(1136,'mod_lesson','retakesallowed','0'),(1137,'mod_lesson','retakesallowed_adv',''),(1138,'mod_lesson','handlingofretakes','0'),(1139,'mod_lesson','handlingofretakes_adv','1'),(1140,'mod_lesson','minimumnumberofquestions','0'),(1141,'mod_lesson','minimumnumberofquestions_adv','1'),(1142,'page','displayoptions','5'),(1143,'page','printintro','0'),(1144,'page','printlastmodified','1'),(1145,'page','display','5'),(1146,'page','popupwidth','620'),(1147,'page','popupheight','450'),(1148,'quiz','timelimit','0'),(1149,'quiz','timelimit_adv',''),(1150,'quiz','timelimit_locked',''),(1151,'quiz','notifyattemptgradeddelay','18000'),(1152,'quiz','overduehandling','autosubmit'),(1153,'quiz','overduehandling_adv',''),(1154,'quiz','overduehandling_locked',''),(1155,'quiz','graceperiod','86400'),(1156,'quiz','graceperiod_adv',''),(1157,'quiz','graceperiod_locked',''),(1158,'quiz','graceperiodmin','60'),(1159,'quiz','attempts','0'),(1160,'quiz','attempts_adv',''),(1161,'quiz','attempts_locked',''),(1162,'quiz','grademethod','1'),(1163,'quiz','grademethod_adv',''),(1164,'quiz','grademethod_locked',''),(1165,'quiz','maximumgrade','10'),(1166,'quiz','maximumgrade_locked',''),(1167,'quiz','questionsperpage','1'),(1168,'quiz','questionsperpage_adv',''),(1169,'quiz','questionsperpage_locked',''),(1170,'quiz','navmethod','free'),(1171,'quiz','navmethod_adv','1'),(1172,'quiz','navmethod_locked',''),(1173,'quiz','shuffleanswers','1'),(1174,'quiz','shuffleanswers_adv',''),(1175,'quiz','shuffleanswers_locked',''),(1176,'quiz','preferredbehaviour','deferredfeedback'),(1177,'quiz','preferredbehaviour_locked',''),(1178,'quiz','canredoquestions','0'),(1179,'quiz','canredoquestions_adv','1'),(1180,'quiz','canredoquestions_locked',''),(1181,'quiz','attemptonlast','0'),(1182,'quiz','attemptonlast_adv','1'),(1183,'quiz','attemptonlast_locked',''),(1184,'quiz','reviewattempt','69904'),(1185,'quiz','reviewcorrectness','69904'),(1186,'quiz','reviewmaxmarks','69904'),(1187,'quiz','reviewmarks','69904'),(1188,'quiz','reviewspecificfeedback','69904'),(1189,'quiz','reviewgeneralfeedback','69904'),(1190,'quiz','reviewrightanswer','69904'),(1191,'quiz','reviewoverallfeedback','4368'),(1192,'quiz','showuserpicture','0'),(1193,'quiz','showuserpicture_adv',''),(1194,'quiz','showuserpicture_locked',''),(1195,'quiz','decimalpoints','2'),(1196,'quiz','decimalpoints_adv',''),(1197,'quiz','decimalpoints_locked',''),(1198,'quiz','questiondecimalpoints','-1'),(1199,'quiz','questiondecimalpoints_adv',''),(1200,'quiz','questiondecimalpoints_locked',''),(1201,'quiz','showblocks','0'),(1202,'quiz','showblocks_adv','1'),(1203,'quiz','showblocks_locked',''),(1204,'quiz','quizpassword',''),(1205,'quiz','quizpassword_adv',''),(1206,'quiz','quizpassword_required',''),(1207,'quiz','quizpassword_locked',''),(1208,'quiz','subnet',''),(1209,'quiz','subnet_adv','1'),(1210,'quiz','subnet_locked',''),(1211,'quiz','delay1','0'),(1212,'quiz','delay1_adv','1'),(1213,'quiz','delay1_locked',''),(1214,'quiz','delay2','0'),(1215,'quiz','delay2_adv','1'),(1216,'quiz','delay2_locked',''),(1217,'quiz','browsersecurity','-'),(1218,'quiz','browsersecurity_adv','1'),(1219,'quiz','browsersecurity_locked',''),(1220,'quiz','initialnumfeedbacks','2'),(1221,'quiz','autosaveperiod','60'),(1222,'quiz_statistics','getstatslocktimeout','900'),(1223,'quizaccess_seb','autoreconfigureseb','1'),(1224,'quizaccess_seb','showseblinks','seb,http'),(1225,'quizaccess_seb','downloadlink','https://safeexambrowser.org/download_en.html'),(1226,'quizaccess_seb','quizpasswordrequired','0'),(1227,'quizaccess_seb','displayblocksbeforestart','0'),(1228,'quizaccess_seb','displayblockswhenfinished','1'),(1229,'scorm','displaycoursestructure','0'),(1230,'scorm','displaycoursestructure_adv',''),(1231,'scorm','popup','0'),(1232,'scorm','popup_adv',''),(1233,'scorm','framewidth','100'),(1234,'scorm','framewidth_adv','1'),(1235,'scorm','frameheight','500'),(1236,'scorm','frameheight_adv','1'),(1237,'scorm','winoptgrp_adv','1'),(1238,'scorm','scrollbars','0'),(1239,'scorm','directories','0'),(1240,'scorm','location','0'),(1241,'scorm','menubar','0'),(1242,'scorm','toolbar','0'),(1243,'scorm','status','0'),(1244,'scorm','skipview','0'),(1245,'scorm','skipview_adv','1'),(1246,'scorm','hidebrowse','0'),(1247,'scorm','hidebrowse_adv','1'),(1248,'scorm','hidetoc','0'),(1249,'scorm','hidetoc_adv','1'),(1250,'scorm','nav','1'),(1251,'scorm','nav_adv','1'),(1252,'scorm','navpositionleft','-100'),(1253,'scorm','navpositionleft_adv','1'),(1254,'scorm','navpositiontop','-100'),(1255,'scorm','navpositiontop_adv','1'),(1256,'scorm','collapsetocwinsize','767'),(1257,'scorm','collapsetocwinsize_adv','1'),(1258,'scorm','displayattemptstatus','1'),(1259,'scorm','displayattemptstatus_adv',''),(1260,'scorm','grademethod','1'),(1261,'scorm','maxgrade','100'),(1262,'scorm','maxattempt','0'),(1263,'scorm','whatgrade','0'),(1264,'scorm','forcecompleted','0'),(1265,'scorm','forcenewattempt','0'),(1266,'scorm','autocommit','0'),(1267,'scorm','masteryoverride','1'),(1268,'scorm','lastattemptlock','0'),(1269,'scorm','auto','0'),(1270,'scorm','updatefreq','0'),(1271,'scorm','scormstandard','0'),(1272,'scorm','allowtypeexternal','0'),(1273,'scorm','allowtypelocalsync','0'),(1274,'scorm','allowtypeexternalaicc','0'),(1275,'scorm','allowaicchacp','0'),(1276,'scorm','aicchacptimeout','30'),(1277,'scorm','aicchacpkeepsessiondata','1'),(1278,'scorm','aiccuserid','1'),(1279,'scorm','forcejavascript','1'),(1280,'scorm','allowapidebug','0'),(1281,'scorm','apidebugmask','.*'),(1282,'scorm','protectpackagedownloads','0'),(1283,'label','dndmedia','1'),(1284,'label','dndresizewidth','400'),(1285,'label','dndresizeheight','400'),(1286,'url','framesize','130'),(1287,'url','secretphrase',''),(1288,'url','rolesinparams','0'),(1289,'url','displayoptions','0,1,5,6'),(1290,'url','printintro','1'),(1291,'url','display','0'),(1292,'url','popupwidth','620'),(1293,'url','popupheight','450'),(1294,'workshop','grade','80'),(1295,'workshop','gradinggrade','20'),(1296,'workshop','gradedecimals','0'),(1297,'workshop','maxbytes','0'),(1298,'workshop','strategy','accumulative'),(1299,'workshop','examplesmode','0'),(1300,'workshopallocation_random','numofreviews','5'),(1301,'workshopform_numerrors','grade0','No'),(1302,'workshopform_numerrors','grade1','Yes'),(1303,'workshopeval_best','comparison','5'),(1304,'tool_brickfield','analysistype','0'),(1305,'tool_brickfield','deletehistoricaldata','1'),(1306,'tool_brickfield','batch','1000'),(1307,'tool_brickfield','perpage','50'),(1308,'tool_mfa','enabled','0'),(1309,'tool_mfa','lockout','10'),(1310,'tool_mfa','debugmode','0'),(1311,'tool_mfa','redir_exclusions',''),(1312,'tool_mfa','guidance','0'),(1313,'tool_mfa','guidancecontent',''),(1314,'tool_mfa','guidancefiles',''),(1315,'factor_admin','enabled','0'),(1316,'factor_admin','weight','100'),(1317,'factor_auth','enabled','0'),(1318,'factor_auth','weight','100'),(1319,'factor_auth','goodauth',''),(1320,'factor_capability','enabled','0'),(1321,'factor_capability','weight','100'),(1322,'factor_capability','adminpasses','1'),(1323,'factor_cohort','enabled','0'),(1324,'factor_cohort','weight','100'),(1325,'factor_email','enabled','0'),(1326,'factor_email','weight','100'),(1327,'factor_email','duration','1800'),(1328,'factor_email','suspend','0'),(1329,'factor_grace','enabled','0'),(1330,'factor_grace','weight','100'),(1331,'factor_grace','forcesetup','0'),(1332,'factor_grace','graceperiod','604800'),(1333,'factor_grace','ignorelist',''),(1334,'factor_grace','customwarning',''),(1335,'factor_iprange','enabled','0'),(1336,'factor_iprange','weight','100'),(1337,'factor_iprange','safeips',''),(1338,'factor_nosetup','enabled','0'),(1339,'factor_nosetup','weight','100'),(1340,'factor_role','enabled','0'),(1341,'factor_role','weight','100'),(1342,'factor_role','roles','admin'),(1343,'factor_token','enabled','0'),(1344,'factor_token','weight','100'),(1345,'factor_token','expiry','86400'),(1346,'factor_token','expireovernight','1'),(1347,'factor_totp','enabled','0'),(1348,'factor_totp','weight','100'),(1349,'factor_totp','window','30'),(1350,'factor_totp','totplink','1'),(1351,'factor_webauthn','enabled','0'),(1352,'factor_webauthn','weight','100'),(1353,'factor_webauthn','authenticatortypes','usb,nfc,ble,hybrid,internal'),(1354,'factor_webauthn','userverification','preferred'),(1355,'tool_recyclebin','coursebinenable','1'),(1356,'tool_recyclebin','coursebinexpiry','604800'),(1357,'tool_recyclebin','categorybinenable','1'),(1358,'tool_recyclebin','categorybinexpiry','604800'),(1359,'tool_recyclebin','autohide','1'),(1360,'antivirus_clamav','runningmethod','commandline'),(1361,'antivirus_clamav','pathtoclam',''),(1362,'antivirus_clamav','pathtounixsocket',''),(1363,'antivirus_clamav','tcpsockethost',''),(1364,'antivirus_clamav','tcpsocketport','3310'),(1365,'antivirus_clamav','clamfailureonupload','tryagain'),(1366,'antivirus_clamav','tries','1'),(1367,'auth_cas','field_map_firstname',''),(1368,'auth_cas','field_updatelocal_firstname','oncreate'),(1369,'auth_cas','field_updateremote_firstname','0'),(1370,'auth_cas','field_lock_firstname','unlocked'),(1371,'auth_cas','field_map_lastname',''),(1372,'auth_cas','field_updatelocal_lastname','oncreate'),(1373,'auth_cas','field_updateremote_lastname','0'),(1374,'auth_cas','field_lock_lastname','unlocked'),(1375,'auth_cas','field_map_email',''),(1376,'auth_cas','field_updatelocal_email','oncreate'),(1377,'auth_cas','field_updateremote_email','0'),(1378,'auth_cas','field_lock_email','unlocked'),(1379,'auth_cas','field_map_city',''),(1380,'auth_cas','field_updatelocal_city','oncreate'),(1381,'auth_cas','field_updateremote_city','0'),(1382,'auth_cas','field_lock_city','unlocked'),(1383,'auth_cas','field_map_country',''),(1384,'auth_cas','field_updatelocal_country','oncreate'),(1385,'auth_cas','field_updateremote_country','0'),(1386,'auth_cas','field_lock_country','unlocked'),(1387,'auth_cas','field_map_lang',''),(1388,'auth_cas','field_updatelocal_lang','oncreate'),(1389,'auth_cas','field_updateremote_lang','0'),(1390,'auth_cas','field_lock_lang','unlocked'),(1391,'auth_cas','field_map_description',''),(1392,'auth_cas','field_updatelocal_description','oncreate'),(1393,'auth_cas','field_updateremote_description','0'),(1394,'auth_cas','field_lock_description','unlocked'),(1395,'auth_cas','field_map_idnumber',''),(1396,'auth_cas','field_updatelocal_idnumber','oncreate'),(1397,'auth_cas','field_updateremote_idnumber','0'),(1398,'auth_cas','field_lock_idnumber','unlocked'),(1399,'auth_cas','field_map_institution',''),(1400,'auth_cas','field_updatelocal_institution','oncreate'),(1401,'auth_cas','field_updateremote_institution','0'),(1402,'auth_cas','field_lock_institution','unlocked'),(1403,'auth_cas','field_map_department',''),(1404,'auth_cas','field_updatelocal_department','oncreate'),(1405,'auth_cas','field_updateremote_department','0'),(1406,'auth_cas','field_lock_department','unlocked'),(1407,'auth_cas','field_map_phone1',''),(1408,'auth_cas','field_updatelocal_phone1','oncreate'),(1409,'auth_cas','field_updateremote_phone1','0'),(1410,'auth_cas','field_lock_phone1','unlocked'),(1411,'auth_cas','field_map_phone2',''),(1412,'auth_cas','field_updatelocal_phone2','oncreate'),(1413,'auth_cas','field_updateremote_phone2','0'),(1414,'auth_cas','field_lock_phone2','unlocked'),(1415,'auth_cas','field_map_address',''),(1416,'auth_cas','field_updatelocal_address','oncreate'),(1417,'auth_cas','field_updateremote_address','0'),(1418,'auth_cas','field_lock_address','unlocked'),(1419,'auth_cas','field_map_firstnamephonetic',''),(1420,'auth_cas','field_updatelocal_firstnamephonetic','oncreate'),(1421,'auth_cas','field_updateremote_firstnamephonetic','0'),(1422,'auth_cas','field_lock_firstnamephonetic','unlocked'),(1423,'auth_cas','field_map_lastnamephonetic',''),(1424,'auth_cas','field_updatelocal_lastnamephonetic','oncreate'),(1425,'auth_cas','field_updateremote_lastnamephonetic','0'),(1426,'auth_cas','field_lock_lastnamephonetic','unlocked'),(1427,'auth_cas','field_map_middlename',''),(1428,'auth_cas','field_updatelocal_middlename','oncreate'),(1429,'auth_cas','field_updateremote_middlename','0'),(1430,'auth_cas','field_lock_middlename','unlocked'),(1431,'auth_cas','field_map_alternatename',''),(1432,'auth_cas','field_updatelocal_alternatename','oncreate'),(1433,'auth_cas','field_updateremote_alternatename','0'),(1434,'auth_cas','field_lock_alternatename','unlocked'),(1435,'auth_email','recaptcha','0'),(1436,'auth_email','field_lock_firstname','unlocked'),(1437,'auth_email','field_lock_lastname','unlocked'),(1438,'auth_email','field_lock_email','unlocked'),(1439,'auth_email','field_lock_city','unlocked'),(1440,'auth_email','field_lock_country','unlocked'),(1441,'auth_email','field_lock_lang','unlocked'),(1442,'auth_email','field_lock_description','unlocked'),(1443,'auth_email','field_lock_idnumber','unlocked'),(1444,'auth_email','field_lock_institution','unlocked'),(1445,'auth_email','field_lock_department','unlocked'),(1446,'auth_email','field_lock_phone1','unlocked'),(1447,'auth_email','field_lock_phone2','unlocked'),(1448,'auth_email','field_lock_address','unlocked'),(1449,'auth_email','field_lock_firstnamephonetic','unlocked'),(1450,'auth_email','field_lock_lastnamephonetic','unlocked'),(1451,'auth_email','field_lock_middlename','unlocked'),(1452,'auth_email','field_lock_alternatename','unlocked'),(1453,'auth_db','host','127.0.0.1'),(1454,'auth_db','type','mysqli'),(1455,'auth_db','sybasequoting','0'),(1456,'auth_db','name',''),(1457,'auth_db','user',''),(1458,'auth_db','pass',''),(1459,'auth_db','table',''),(1460,'auth_db','fielduser',''),(1461,'auth_db','fieldpass',''),(1462,'auth_db','passtype','plaintext'),(1463,'auth_db','extencoding','utf-8'),(1464,'auth_db','setupsql',''),(1465,'auth_db','debugauthdb','0'),(1466,'auth_db','changepasswordurl',''),(1467,'auth_db','removeuser','0'),(1468,'auth_db','updateusers','0'),(1469,'auth_db','field_map_firstname',''),(1470,'auth_db','field_updatelocal_firstname','oncreate'),(1471,'auth_db','field_updateremote_firstname','0'),(1472,'auth_db','field_lock_firstname','unlocked'),(1473,'auth_db','field_map_lastname',''),(1474,'auth_db','field_updatelocal_lastname','oncreate'),(1475,'auth_db','field_updateremote_lastname','0'),(1476,'auth_db','field_lock_lastname','unlocked'),(1477,'auth_db','field_map_email',''),(1478,'auth_db','field_updatelocal_email','oncreate'),(1479,'auth_db','field_updateremote_email','0'),(1480,'auth_db','field_lock_email','unlocked'),(1481,'auth_db','field_map_city',''),(1482,'auth_db','field_updatelocal_city','oncreate'),(1483,'auth_db','field_updateremote_city','0'),(1484,'auth_db','field_lock_city','unlocked'),(1485,'auth_db','field_map_country',''),(1486,'auth_db','field_updatelocal_country','oncreate'),(1487,'auth_db','field_updateremote_country','0'),(1488,'auth_db','field_lock_country','unlocked'),(1489,'auth_db','field_map_lang',''),(1490,'auth_db','field_updatelocal_lang','oncreate'),(1491,'auth_db','field_updateremote_lang','0'),(1492,'auth_db','field_lock_lang','unlocked'),(1493,'auth_db','field_map_description',''),(1494,'auth_db','field_updatelocal_description','oncreate'),(1495,'auth_db','field_updateremote_description','0'),(1496,'auth_db','field_lock_description','unlocked'),(1497,'auth_db','field_map_idnumber',''),(1498,'auth_db','field_updatelocal_idnumber','oncreate'),(1499,'auth_db','field_updateremote_idnumber','0'),(1500,'auth_db','field_lock_idnumber','unlocked'),(1501,'auth_db','field_map_institution',''),(1502,'auth_db','field_updatelocal_institution','oncreate'),(1503,'auth_db','field_updateremote_institution','0'),(1504,'auth_db','field_lock_institution','unlocked'),(1505,'auth_db','field_map_department',''),(1506,'auth_db','field_updatelocal_department','oncreate'),(1507,'auth_db','field_updateremote_department','0'),(1508,'auth_db','field_lock_department','unlocked'),(1509,'auth_db','field_map_phone1',''),(1510,'auth_db','field_updatelocal_phone1','oncreate'),(1511,'auth_db','field_updateremote_phone1','0'),(1512,'auth_db','field_lock_phone1','unlocked'),(1513,'auth_db','field_map_phone2',''),(1514,'auth_db','field_updatelocal_phone2','oncreate'),(1515,'auth_db','field_updateremote_phone2','0'),(1516,'auth_db','field_lock_phone2','unlocked'),(1517,'auth_db','field_map_address',''),(1518,'auth_db','field_updatelocal_address','oncreate'),(1519,'auth_db','field_updateremote_address','0'),(1520,'auth_db','field_lock_address','unlocked'),(1521,'auth_db','field_map_firstnamephonetic',''),(1522,'auth_db','field_updatelocal_firstnamephonetic','oncreate'),(1523,'auth_db','field_updateremote_firstnamephonetic','0'),(1524,'auth_db','field_lock_firstnamephonetic','unlocked'),(1525,'auth_db','field_map_lastnamephonetic',''),(1526,'auth_db','field_updatelocal_lastnamephonetic','oncreate'),(1527,'auth_db','field_updateremote_lastnamephonetic','0'),(1528,'auth_db','field_lock_lastnamephonetic','unlocked'),(1529,'auth_db','field_map_middlename',''),(1530,'auth_db','field_updatelocal_middlename','oncreate'),(1531,'auth_db','field_updateremote_middlename','0'),(1532,'auth_db','field_lock_middlename','unlocked'),(1533,'auth_db','field_map_alternatename',''),(1534,'auth_db','field_updatelocal_alternatename','oncreate'),(1535,'auth_db','field_updateremote_alternatename','0'),(1536,'auth_db','field_lock_alternatename','unlocked'),(1537,'auth_ldap','field_map_firstname',''),(1538,'auth_ldap','field_updatelocal_firstname','oncreate'),(1539,'auth_ldap','field_updateremote_firstname','0'),(1540,'auth_ldap','field_lock_firstname','unlocked'),(1541,'auth_ldap','field_map_lastname',''),(1542,'auth_ldap','field_updatelocal_lastname','oncreate'),(1543,'auth_ldap','field_updateremote_lastname','0'),(1544,'auth_ldap','field_lock_lastname','unlocked'),(1545,'auth_ldap','field_map_email',''),(1546,'auth_ldap','field_updatelocal_email','oncreate'),(1547,'auth_ldap','field_updateremote_email','0'),(1548,'auth_ldap','field_lock_email','unlocked'),(1549,'auth_ldap','field_map_city',''),(1550,'auth_ldap','field_updatelocal_city','oncreate'),(1551,'auth_ldap','field_updateremote_city','0'),(1552,'auth_ldap','field_lock_city','unlocked'),(1553,'auth_ldap','field_map_country',''),(1554,'auth_ldap','field_updatelocal_country','oncreate'),(1555,'auth_ldap','field_updateremote_country','0'),(1556,'auth_ldap','field_lock_country','unlocked'),(1557,'auth_ldap','field_map_lang',''),(1558,'auth_ldap','field_updatelocal_lang','oncreate'),(1559,'auth_ldap','field_updateremote_lang','0'),(1560,'auth_ldap','field_lock_lang','unlocked'),(1561,'auth_ldap','field_map_description',''),(1562,'auth_ldap','field_updatelocal_description','oncreate'),(1563,'auth_ldap','field_updateremote_description','0'),(1564,'auth_ldap','field_lock_description','unlocked'),(1565,'auth_ldap','field_map_idnumber',''),(1566,'auth_ldap','field_updatelocal_idnumber','oncreate'),(1567,'auth_ldap','field_updateremote_idnumber','0'),(1568,'auth_ldap','field_lock_idnumber','unlocked'),(1569,'auth_ldap','field_map_institution',''),(1570,'auth_ldap','field_updatelocal_institution','oncreate'),(1571,'auth_ldap','field_updateremote_institution','0'),(1572,'auth_ldap','field_lock_institution','unlocked'),(1573,'auth_ldap','field_map_department',''),(1574,'auth_ldap','field_updatelocal_department','oncreate'),(1575,'auth_ldap','field_updateremote_department','0'),(1576,'auth_ldap','field_lock_department','unlocked'),(1577,'auth_ldap','field_map_phone1',''),(1578,'auth_ldap','field_updatelocal_phone1','oncreate'),(1579,'auth_ldap','field_updateremote_phone1','0'),(1580,'auth_ldap','field_lock_phone1','unlocked'),(1581,'auth_ldap','field_map_phone2',''),(1582,'auth_ldap','field_updatelocal_phone2','oncreate'),(1583,'auth_ldap','field_updateremote_phone2','0'),(1584,'auth_ldap','field_lock_phone2','unlocked'),(1585,'auth_ldap','field_map_address',''),(1586,'auth_ldap','field_updatelocal_address','oncreate'),(1587,'auth_ldap','field_updateremote_address','0'),(1588,'auth_ldap','field_lock_address','unlocked'),(1589,'auth_ldap','field_map_firstnamephonetic',''),(1590,'auth_ldap','field_updatelocal_firstnamephonetic','oncreate'),(1591,'auth_ldap','field_updateremote_firstnamephonetic','0'),(1592,'auth_ldap','field_lock_firstnamephonetic','unlocked'),(1593,'auth_ldap','field_map_lastnamephonetic',''),(1594,'auth_ldap','field_updatelocal_lastnamephonetic','oncreate'),(1595,'auth_ldap','field_updateremote_lastnamephonetic','0'),(1596,'auth_ldap','field_lock_lastnamephonetic','unlocked'),(1597,'auth_ldap','field_map_middlename',''),(1598,'auth_ldap','field_updatelocal_middlename','oncreate'),(1599,'auth_ldap','field_updateremote_middlename','0'),(1600,'auth_ldap','field_lock_middlename','unlocked'),(1601,'auth_ldap','field_map_alternatename',''),(1602,'auth_ldap','field_updatelocal_alternatename','oncreate'),(1603,'auth_ldap','field_updateremote_alternatename','0'),(1604,'auth_ldap','field_lock_alternatename','unlocked'),(1605,'auth_manual','expiration','0'),(1606,'auth_manual','expirationtime','30'),(1607,'auth_manual','expiration_warning','0'),(1608,'auth_manual','field_lock_firstname','unlocked'),(1609,'auth_manual','field_lock_lastname','unlocked'),(1610,'auth_manual','field_lock_email','unlocked'),(1611,'auth_manual','field_lock_city','unlocked'),(1612,'auth_manual','field_lock_country','unlocked'),(1613,'auth_manual','field_lock_lang','unlocked'),(1614,'auth_manual','field_lock_description','unlocked'),(1615,'auth_manual','field_lock_idnumber','unlocked'),(1616,'auth_manual','field_lock_institution','unlocked'),(1617,'auth_manual','field_lock_department','unlocked'),(1618,'auth_manual','field_lock_phone1','unlocked'),(1619,'auth_manual','field_lock_phone2','unlocked'),(1620,'auth_manual','field_lock_address','unlocked'),(1621,'auth_manual','field_lock_firstnamephonetic','unlocked'),(1622,'auth_manual','field_lock_lastnamephonetic','unlocked'),(1623,'auth_manual','field_lock_middlename','unlocked'),(1624,'auth_manual','field_lock_alternatename','unlocked'),(1625,'auth_mnet','rpc_negotiation_timeout','30'),(1626,'auth_none','field_lock_firstname','unlocked'),(1627,'auth_none','field_lock_lastname','unlocked'),(1628,'auth_none','field_lock_email','unlocked'),(1629,'auth_none','field_lock_city','unlocked'),(1630,'auth_none','field_lock_country','unlocked'),(1631,'auth_none','field_lock_lang','unlocked'),(1632,'auth_none','field_lock_description','unlocked'),(1633,'auth_none','field_lock_idnumber','unlocked'),(1634,'auth_none','field_lock_institution','unlocked'),(1635,'auth_none','field_lock_department','unlocked'),(1636,'auth_none','field_lock_phone1','unlocked'),(1637,'auth_none','field_lock_phone2','unlocked'),(1638,'auth_none','field_lock_address','unlocked'),(1639,'auth_none','field_lock_firstnamephonetic','unlocked'),(1640,'auth_none','field_lock_lastnamephonetic','unlocked'),(1641,'auth_none','field_lock_middlename','unlocked'),(1642,'auth_none','field_lock_alternatename','unlocked'),(1643,'auth_oauth2','field_lock_firstname','unlocked'),(1644,'auth_oauth2','field_lock_lastname','unlocked'),(1645,'auth_oauth2','field_lock_email','unlocked'),(1646,'auth_oauth2','field_lock_city','unlocked'),(1647,'auth_oauth2','field_lock_country','unlocked'),(1648,'auth_oauth2','field_lock_lang','unlocked'),(1649,'auth_oauth2','field_lock_description','unlocked'),(1650,'auth_oauth2','field_lock_idnumber','unlocked'),(1651,'auth_oauth2','field_lock_institution','unlocked'),(1652,'auth_oauth2','field_lock_department','unlocked'),(1653,'auth_oauth2','field_lock_phone1','unlocked'),(1654,'auth_oauth2','field_lock_phone2','unlocked'),(1655,'auth_oauth2','field_lock_address','unlocked'),(1656,'auth_oauth2','field_lock_firstnamephonetic','unlocked'),(1657,'auth_oauth2','field_lock_lastnamephonetic','unlocked'),(1658,'auth_oauth2','field_lock_middlename','unlocked'),(1659,'auth_oauth2','field_lock_alternatename','unlocked'),(1660,'auth_shibboleth','user_attribute',''),(1661,'auth_shibboleth','convert_data',''),(1662,'auth_shibboleth','alt_login','off'),(1663,'auth_shibboleth','organization_selection','urn:mace:organization1:providerID, Example Organization 1\n        https://another.idp-id.com/shibboleth, Other Example Organization, /Shibboleth.sso/DS/SWITCHaai\n        urn:mace:organization2:providerID, Example Organization 2, /Shibboleth.sso/WAYF/SWITCHaai'),(1664,'auth_shibboleth','logout_handler',''),(1665,'auth_shibboleth','logout_return_url',''),(1666,'auth_shibboleth','login_name','Shibboleth Login'),(1667,'auth_shibboleth','auth_logo',''),(1668,'auth_shibboleth','auth_instructions','Use the <a href=\"https://edubridge.teknix.my.id/auth/shibboleth/index.php\">Shibboleth login</a> to get access via Shibboleth, if your institution supports it. Otherwise, use the normal login form shown here.'),(1669,'auth_shibboleth','changepasswordurl',''),(1670,'auth_shibboleth','field_map_firstname',''),(1671,'auth_shibboleth','field_updatelocal_firstname','oncreate'),(1672,'auth_shibboleth','field_lock_firstname','unlocked'),(1673,'auth_shibboleth','field_map_lastname',''),(1674,'auth_shibboleth','field_updatelocal_lastname','oncreate'),(1675,'auth_shibboleth','field_lock_lastname','unlocked'),(1676,'auth_shibboleth','field_map_email',''),(1677,'auth_shibboleth','field_updatelocal_email','oncreate'),(1678,'auth_shibboleth','field_lock_email','unlocked'),(1679,'auth_shibboleth','field_map_city',''),(1680,'auth_shibboleth','field_updatelocal_city','oncreate'),(1681,'auth_shibboleth','field_lock_city','unlocked'),(1682,'auth_shibboleth','field_map_country',''),(1683,'auth_shibboleth','field_updatelocal_country','oncreate'),(1684,'auth_shibboleth','field_lock_country','unlocked'),(1685,'auth_shibboleth','field_map_lang',''),(1686,'auth_shibboleth','field_updatelocal_lang','oncreate'),(1687,'auth_shibboleth','field_lock_lang','unlocked'),(1688,'auth_shibboleth','field_map_description',''),(1689,'auth_shibboleth','field_updatelocal_description','oncreate'),(1690,'auth_shibboleth','field_lock_description','unlocked'),(1691,'auth_shibboleth','field_map_idnumber',''),(1692,'auth_shibboleth','field_updatelocal_idnumber','oncreate'),(1693,'auth_shibboleth','field_lock_idnumber','unlocked'),(1694,'auth_shibboleth','field_map_institution',''),(1695,'auth_shibboleth','field_updatelocal_institution','oncreate'),(1696,'auth_shibboleth','field_lock_institution','unlocked'),(1697,'auth_shibboleth','field_map_department',''),(1698,'auth_shibboleth','field_updatelocal_department','oncreate'),(1699,'auth_shibboleth','field_lock_department','unlocked'),(1700,'auth_shibboleth','field_map_phone1',''),(1701,'auth_shibboleth','field_updatelocal_phone1','oncreate'),(1702,'auth_shibboleth','field_lock_phone1','unlocked'),(1703,'auth_shibboleth','field_map_phone2',''),(1704,'auth_shibboleth','field_updatelocal_phone2','oncreate'),(1705,'auth_shibboleth','field_lock_phone2','unlocked'),(1706,'auth_shibboleth','field_map_address',''),(1707,'auth_shibboleth','field_updatelocal_address','oncreate'),(1708,'auth_shibboleth','field_lock_address','unlocked'),(1709,'auth_shibboleth','field_map_firstnamephonetic',''),(1710,'auth_shibboleth','field_updatelocal_firstnamephonetic','oncreate'),(1711,'auth_shibboleth','field_lock_firstnamephonetic','unlocked'),(1712,'auth_shibboleth','field_map_lastnamephonetic',''),(1713,'auth_shibboleth','field_updatelocal_lastnamephonetic','oncreate'),(1714,'auth_shibboleth','field_lock_lastnamephonetic','unlocked'),(1715,'auth_shibboleth','field_map_middlename',''),(1716,'auth_shibboleth','field_updatelocal_middlename','oncreate'),(1717,'auth_shibboleth','field_lock_middlename','unlocked'),(1718,'auth_shibboleth','field_map_alternatename',''),(1719,'auth_shibboleth','field_updatelocal_alternatename','oncreate'),(1720,'auth_shibboleth','field_lock_alternatename','unlocked'),(1721,'block_accessreview','whattoshow','showboth'),(1722,'block_accessreview','errordisplay','showint'),(1723,'block_accessreview','toolpage','errors'),(1724,'block_activity_results','config_showbest','3'),(1725,'block_activity_results','config_showbest_locked',''),(1726,'block_activity_results','config_showworst','0'),(1727,'block_activity_results','config_showworst_locked',''),(1728,'block_activity_results','config_usegroups','0'),(1729,'block_activity_results','config_usegroups_locked',''),(1730,'block_activity_results','config_nameformat','1'),(1731,'block_activity_results','config_nameformat_locked',''),(1732,'block_activity_results','config_gradeformat','1'),(1733,'block_activity_results','config_gradeformat_locked',''),(1734,'block_activity_results','config_decimalpoints','2'),(1735,'block_activity_results','config_decimalpoints_locked',''),(1736,'block_myoverview','displaycategories','1'),(1737,'block_myoverview','layouts','card,list,summary'),(1738,'block_myoverview','displaygroupingallincludinghidden','0'),(1739,'block_myoverview','displaygroupingall','1'),(1740,'block_myoverview','displaygroupinginprogress','1'),(1741,'block_myoverview','displaygroupingpast','1'),(1742,'block_myoverview','displaygroupingfuture','1'),(1743,'block_myoverview','displaygroupingcustomfield','0'),(1744,'block_myoverview','customfiltergrouping',''),(1745,'block_myoverview','displaygroupingfavourites','1'),(1746,'block_myoverview','displaygroupinghidden','1'),(1747,'block_recentlyaccessedcourses','displaycategories','1'),(1748,'block_section_links','numsections1','22'),(1749,'block_section_links','incby1','2'),(1750,'block_section_links','numsections2','40'),(1751,'block_section_links','incby2','5'),(1752,'block_section_links','showsectionname','0'),(1753,'block_starredcourses','displaycategories','1'),(1754,'block_tag_youtube','apikey',''),(1755,'format_singleactivity','activitytype','forum'),(1756,'format_topics','indentation','1'),(1757,'format_weeks','indentation','1'),(1758,'fileconverter_googledrive','issuerid',''),(1759,'enrol_cohort','roleid','5'),(1760,'enrol_cohort','unenrolaction','0'),(1761,'enrol_meta','nosyncroleids',''),(1762,'enrol_meta','syncall','1'),(1763,'enrol_meta','unenrolaction','3'),(1764,'enrol_meta','coursesort','sortorder'),(1765,'enrol_fee','expiredaction','3'),(1766,'enrol_fee','status','1'),(1767,'enrol_fee','cost','0'),(1768,'enrol_fee','currency','USD'),(1769,'enrol_fee','roleid','5'),(1770,'enrol_fee','enrolperiod','0'),(1771,'enrol_database','dbtype',''),(1772,'enrol_database','dbhost','localhost'),(1773,'enrol_database','dbuser',''),(1774,'enrol_database','dbpass',''),(1775,'enrol_database','dbname',''),(1776,'enrol_database','dbencoding','utf-8'),(1777,'enrol_database','dbsetupsql',''),(1778,'enrol_database','dbsybasequoting','0'),(1779,'enrol_database','debugdb','0'),(1780,'enrol_database','localcoursefield','idnumber'),(1781,'enrol_database','localuserfield','idnumber'),(1782,'enrol_database','localrolefield','shortname'),(1783,'enrol_database','localcategoryfield','id'),(1784,'enrol_database','remoteenroltable',''),(1785,'enrol_database','remotecoursefield',''),(1786,'enrol_database','remoteuserfield',''),(1787,'enrol_database','remoterolefield',''),(1788,'enrol_database','remoteotheruserfield',''),(1789,'enrol_database','defaultrole','5'),(1790,'enrol_database','ignorehiddencourses','0'),(1791,'enrol_database','unenrolaction','0'),(1792,'enrol_database','newcoursetable',''),(1793,'enrol_database','newcoursefullname','fullname'),(1794,'enrol_database','newcourseshortname','shortname'),(1795,'enrol_database','newcourseidnumber','idnumber'),(1796,'enrol_database','newcoursecategory',''),(1797,'enrol_database','defaultcategory','1'),(1798,'enrol_database','templatecourse',''),(1799,'enrol_flatfile','location',''),(1800,'enrol_flatfile','encoding','UTF-8'),(1801,'enrol_flatfile','mailstudents','0'),(1802,'enrol_flatfile','mailteachers','0'),(1803,'enrol_flatfile','mailadmins','0'),(1804,'enrol_flatfile','unenrolaction','3'),(1805,'enrol_flatfile','expiredaction','3'),(1806,'enrol_guest','requirepassword','0'),(1807,'enrol_guest','usepasswordpolicy','0'),(1808,'enrol_guest','showhint','0'),(1809,'enrol_guest','defaultenrol','1'),(1810,'enrol_guest','status','1'),(1811,'enrol_guest','status_adv',''),(1812,'enrol_imsenterprise','imsfilelocation',''),(1813,'enrol_imsenterprise','logtolocation',''),(1814,'enrol_imsenterprise','mailadmins','0'),(1815,'enrol_imsenterprise','createnewusers','0'),(1816,'enrol_imsenterprise','imsupdateusers','0'),(1817,'enrol_imsenterprise','imsdeleteusers','0'),(1818,'enrol_imsenterprise','fixcaseusernames','0'),(1819,'enrol_imsenterprise','fixcasepersonalnames','0'),(1820,'enrol_imsenterprise','imssourcedidfallback','0'),(1821,'enrol_imsenterprise','imsrolemap01','5'),(1822,'enrol_imsenterprise','imsrolemap02','3'),(1823,'enrol_imsenterprise','imsrolemap03','3'),(1824,'enrol_imsenterprise','imsrolemap04','5'),(1825,'enrol_imsenterprise','imsrolemap05','0'),(1826,'enrol_imsenterprise','imsrolemap06','4'),(1827,'enrol_imsenterprise','imsrolemap07','0'),(1828,'enrol_imsenterprise','imsrolemap08','4'),(1829,'enrol_imsenterprise','truncatecoursecodes','0'),(1830,'enrol_imsenterprise','createnewcourses','0'),(1831,'enrol_imsenterprise','updatecourses','0'),(1832,'enrol_imsenterprise','createnewcategories','0'),(1833,'enrol_imsenterprise','nestedcategories','0'),(1834,'enrol_imsenterprise','categoryidnumber','0'),(1835,'enrol_imsenterprise','categoryseparator',''),(1836,'enrol_imsenterprise','imsunenrol','0'),(1837,'enrol_imsenterprise','unenrolaction','0'),(1838,'enrol_imsenterprise','imscoursemapshortname','coursecode'),(1839,'enrol_imsenterprise','imscoursemapfullname','short'),(1840,'enrol_imsenterprise','imscoursemapsummary','ignore'),(1841,'enrol_imsenterprise','imsrestricttarget',''),(1842,'enrol_imsenterprise','imscapitafix','0'),(1843,'enrol_manual','expiredaction','1'),(1844,'enrol_manual','expirynotifyhour','6'),(1845,'enrol_manual','defaultenrol','1'),(1846,'enrol_manual','status','0'),(1847,'enrol_manual','roleid','5'),(1848,'enrol_manual','enrolstart','4'),(1849,'enrol_manual','enrolperiod','0'),(1850,'enrol_manual','expirynotify','0'),(1851,'enrol_manual','expirythreshold','86400'),(1852,'enrol_mnet','roleid','5'),(1853,'enrol_mnet','roleid_adv','1'),(1854,'enrol_paypal','paypalbusiness',''),(1855,'enrol_paypal','mailstudents','0'),(1856,'enrol_paypal','mailteachers','0'),(1857,'enrol_paypal','mailadmins','0'),(1858,'enrol_paypal','expiredaction','3'),(1859,'enrol_paypal','status','1'),(1860,'enrol_paypal','cost','0'),(1861,'enrol_paypal','currency','USD'),(1862,'enrol_paypal','roleid','5'),(1863,'enrol_paypal','enrolperiod','0'),(1864,'enrol_lti','emaildisplay','2'),(1865,'enrol_lti','city',''),(1866,'enrol_lti','country',''),(1867,'enrol_lti','timezone','99'),(1868,'enrol_lti','lang','en'),(1869,'enrol_lti','institution',''),(1870,'enrol_self','requirepassword','0'),(1871,'enrol_self','usepasswordpolicy','0'),(1872,'enrol_self','showhint','0'),(1873,'enrol_self','expiredaction','1'),(1874,'enrol_self','expirynotifyhour','6'),(1875,'enrol_self','defaultenrol','1'),(1876,'enrol_self','status','1'),(1877,'enrol_self','newenrols','1'),(1878,'enrol_self','groupkey','0'),(1879,'enrol_self','roleid','5'),(1880,'enrol_self','enrolperiod','0'),(1881,'enrol_self','expirynotify','0'),(1882,'enrol_self','expirythreshold','86400'),(1883,'enrol_self','longtimenosee','0'),(1884,'enrol_self','maxenrolled','0'),(1885,'enrol_self','sendcoursewelcomemessage','1'),(1886,'filter_urltolink','formats','1,4,0'),(1887,'filter_urltolink','embedimages','1'),(1888,'filter_emoticon','formats','1,4,0'),(1889,'filter_displayh5p','allowedsources',''),(1890,'filter_mathjaxloader','httpsurl','https://cdn.jsdelivr.net/npm/mathjax@2.7.9/MathJax.js'),(1891,'filter_mathjaxloader','texfiltercompatibility','0'),(1892,'filter_mathjaxloader','mathjaxconfig','\nMathJax.Hub.Config({\n    config: [\"Accessible.js\", \"Safe.js\"],\n    errorSettings: { message: [\"!\"] },\n    skipStartupTypeset: true,\n    messageStyle: \"none\"\n});\n'),(1893,'filter_mathjaxloader','additionaldelimiters',''),(1894,'filter_tex','latexpreamble','\\usepackage[latin1]{inputenc}\n\\usepackage{amsmath}\n\\usepackage{amsfonts}\n\\RequirePackage{amsmath,amssymb,latexsym}\n'),(1895,'filter_tex','latexbackground','#FFFFFF'),(1896,'filter_tex','density','120'),(1897,'filter_tex','pathlatex','/usr/bin/latex'),(1898,'filter_tex','pathdvips','/usr/bin/dvips'),(1899,'filter_tex','pathconvert','/usr/bin/convert'),(1900,'filter_tex','pathdvisvgm','/usr/bin/dvisvgm'),(1901,'filter_tex','pathmimetex',''),(1902,'filter_tex','convertformat','gif'),(1903,'logstore_database','dbdriver',''),(1904,'logstore_database','dbhost',''),(1905,'logstore_database','dbuser',''),(1906,'logstore_database','dbpass',''),(1907,'logstore_database','dbname',''),(1908,'logstore_database','dbtable',''),(1909,'logstore_database','dbpersist','0'),(1910,'logstore_database','dbsocket',''),(1911,'logstore_database','dbport',''),(1912,'logstore_database','dbschema',''),(1913,'logstore_database','dbcollation',''),(1914,'logstore_database','dbhandlesoptions','0'),(1915,'logstore_database','buffersize','50'),(1916,'logstore_database','jsonformat','1'),(1917,'logstore_database','logguests','0'),(1918,'logstore_database','includelevels','1,2,0'),(1919,'logstore_database','includeactions','c,r,u,d'),(1920,'logstore_standard','logguests','1'),(1921,'logstore_standard','jsonformat','1'),(1922,'logstore_standard','loglifetime','0'),(1923,'logstore_standard','buffersize','50'),(1924,'mlbackend_python','useserver','0'),(1925,'mlbackend_python','host',''),(1926,'mlbackend_python','port','0'),(1927,'mlbackend_python','secure','0'),(1928,'mlbackend_python','username','default'),(1929,'mlbackend_python','password',''),(1930,'media_videojs','videoextensions','html_video,media_source,.f4v,.flv'),(1931,'media_videojs','audioextensions','html_audio'),(1932,'media_videojs','youtube','1'),(1933,'media_videojs','videocssclass','video-js'),(1934,'media_videojs','audiocssclass','video-js'),(1935,'media_videojs','limitsize','1'),(1936,'media_vimeo','donottrack','0'),(1937,'media_youtube','nocookie','0'),(1938,'paygw_paypal','surcharge','0'),(1939,'qtype_multichoice','answerhowmany','1'),(1940,'qtype_multichoice','shuffleanswers','1'),(1941,'qtype_multichoice','answernumbering','abc'),(1942,'qtype_multichoice','showstandardinstruction','0'),(1943,'editor_atto','toolbar','collapse = collapse\nstyle1 = title, bold, italic\nlist = unorderedlist, orderedlist, indent\nlinks = link\nfiles = emojipicker, image, media, recordrtc, managefiles, h5p\naccessibility = accessibilitychecker, accessibilityhelper\nstyle2 = underline, strike, subscript, superscript\nalign = align\ninsert = equation, charmap, table, clear\nundo = undo\nother = html'),(1944,'editor_atto','autosavefrequency','60'),(1945,'atto_collapse','showgroups','6'),(1946,'atto_equation','librarygroup1','\n\\cdot\n\\times\n\\ast\n\\div\n\\diamond\n\\pm\n\\mp\n\\oplus\n\\ominus\n\\otimes\n\\oslash\n\\odot\n\\circ\n\\bullet\n\\asymp\n\\equiv\n\\subseteq\n\\supseteq\n\\leq\n\\geq\n\\preceq\n\\succeq\n\\sim\n\\simeq\n\\approx\n\\subset\n\\supset\n\\ll\n\\gg\n\\prec\n\\succ\n\\infty\n\\in\n\\ni\n\\forall\n\\exists\n\\neq\n'),(1947,'atto_equation','librarygroup2','\n\\leftarrow\n\\rightarrow\n\\uparrow\n\\downarrow\n\\leftrightarrow\n\\nearrow\n\\searrow\n\\swarrow\n\\nwarrow\n\\Leftarrow\n\\Rightarrow\n\\Uparrow\n\\Downarrow\n\\Leftrightarrow\n'),(1948,'atto_equation','librarygroup3','\n\\alpha\n\\beta\n\\gamma\n\\delta\n\\epsilon\n\\zeta\n\\eta\n\\theta\n\\iota\n\\kappa\n\\lambda\n\\mu\n\\nu\n\\xi\n\\pi\n\\rho\n\\sigma\n\\tau\n\\upsilon\n\\phi\n\\chi\n\\psi\n\\omega\n\\Gamma\n\\Delta\n\\Theta\n\\Lambda\n\\Xi\n\\Pi\n\\Sigma\n\\Upsilon\n\\Phi\n\\Psi\n\\Omega\n'),(1949,'atto_equation','librarygroup4','\n\\sum{a,b}\n\\sqrt[a]{b+c}\n\\int_{a}^{b}{c}\n\\iint_{a}^{b}{c}\n\\iiint_{a}^{b}{c}\n\\oint{a}\n(a)\n[a]\n\\lbrace{a}\\rbrace\n\\left| \\begin{matrix} a_1 & a_2 \\\\ a_3 & a_4 \\end{matrix} \\right|\n\\frac{a}{b+c}\n\\vec{a}\n\\binom {a} {b}\n{a \\brack b}\n{a \\brace b}\n'),(1950,'atto_recordrtc','allowedtypes','both'),(1951,'atto_recordrtc','audiobitrate','128000'),(1952,'atto_recordrtc','videobitrate','2500000'),(1953,'atto_recordrtc','audiotimelimit','120'),(1954,'atto_recordrtc','videotimelimit','120'),(1955,'atto_table','allowborders','0'),(1956,'atto_table','allowbackgroundcolour','0'),(1957,'atto_table','allowwidth','0'),(1958,'editor_tiny','branding','1'),(1959,'tiny_equation','librarygroup1','\n\\cdot\n\\times\n\\ast\n\\div\n\\diamond\n\\pm\n\\mp\n\\oplus\n\\ominus\n\\otimes\n\\oslash\n\\odot\n\\circ\n\\bullet\n\\asymp\n\\equiv\n\\subseteq\n\\supseteq\n\\leq\n\\geq\n\\preceq\n\\succeq\n\\sim\n\\simeq\n\\approx\n\\subset\n\\supset\n\\ll\n\\gg\n\\prec\n\\succ\n\\infty\n\\in\n\\ni\n\\forall\n\\exists\n\\neq\n'),(1960,'tiny_equation','librarygroup2','\n\\leftarrow\n\\rightarrow\n\\uparrow\n\\downarrow\n\\leftrightarrow\n\\nearrow\n\\searrow\n\\swarrow\n\\nwarrow\n\\Leftarrow\n\\Rightarrow\n\\Uparrow\n\\Downarrow\n\\Leftrightarrow\n'),(1961,'tiny_equation','librarygroup3','\n\\alpha\n\\beta\n\\gamma\n\\delta\n\\epsilon\n\\zeta\n\\eta\n\\theta\n\\iota\n\\kappa\n\\lambda\n\\mu\n\\nu\n\\xi\n\\pi\n\\rho\n\\sigma\n\\tau\n\\upsilon\n\\phi\n\\chi\n\\psi\n\\omega\n\\Gamma\n\\Delta\n\\Theta\n\\Lambda\n\\Xi\n\\Pi\n\\Sigma\n\\Upsilon\n\\Phi\n\\Psi\n\\Omega\n'),(1962,'tiny_equation','librarygroup4','\n\\sum{a,b}\n\\sqrt[a]{b+c}\n\\int_{a}^{b}{c}\n\\iint_{a}^{b}{c}\n\\iiint_{a}^{b}{c}\n\\oint{a}\n(a)\n[a]\n\\lbrace{a}\\rbrace\n\\left| \\begin{matrix} a_1 & a_2 \\\\ a_3 & a_4 \\end{matrix} \\right|\n\\frac{a}{b+c}\n\\vec{a}\n\\binom {a} {b}\n{a \\brack b}\n{a \\brace b}\n'),(1963,'tiny_premium','apikey',''),(1964,'tiny_recordrtc','allowedtypes','both'),(1965,'tiny_recordrtc','audiobitrate','128000'),(1966,'tiny_recordrtc','videobitrate','2500000'),(1967,'tiny_recordrtc','audiotimelimit','120'),(1968,'tiny_recordrtc','videotimelimit','120'),(1969,'tool_mobile','apppolicy',''),(1970,'tool_mobile','typeoflogin','1'),(1971,'tool_mobile','autologout','0'),(1972,'tool_mobile','autologouttime','86400'),(1973,'tool_mobile','qrcodetype','2'),(1974,'tool_mobile','qrkeyttl','600'),(1975,'tool_mobile','qrsameipcheck','1'),(1976,'tool_mobile','forcedurlscheme','moodlemobile'),(1977,'tool_mobile','minimumversion',''),(1978,'tool_mobile','autologinmintimebetweenreq','360'),(1979,'tool_mobile','enablesmartappbanners','0'),(1980,'tool_mobile','iosappid','633359593'),(1981,'tool_mobile','androidappid','com.moodle.moodlemobile'),(1982,'tool_mobile','setuplink','https://download.moodle.org/mobile'),(1983,'tool_mobile','forcelogout','0'),(1984,'tool_mobile','disabledfeatures',''),(1985,'tool_mobile','custommenuitems',''),(1986,'tool_mobile','filetypeexclusionlist',''),(1987,'tool_mobile','customlangstrings',''),(1988,'tool_moodlenet','defaultmoodlenetname','MoodleNet Central'),(1989,'tool_moodlenet','defaultmoodlenet','https://moodle.net'),(1990,'hub','site_policyagreed','1'),(1991,'hub','site_language','en'),(1992,'hub','site_countrycode','ID'),(1993,'hub','site_privacy','notdisplayed'),(1994,'hub','site_contactemail','rian.jhonz15@gmail.com'),(1995,'hub','site_contactable','0'),(1996,'hub','site_emailalert','0'),(1997,'hub','site_commnews','0'),(1998,'hub','site_contactname','Admin Moodle'),(1999,'hub','site_name','Edubridge'),(2000,'hub','site_description',''),(2001,'hub','site_imageurl',''),(2002,'hub','site_contactphone',''),(2003,'hub','site_regioncode','-'),(2004,'hub','site_geolocation',''),(2005,'hub','site_street',''),(2006,'hub','site_regupdateversion','2023021700'),(2074,'enrol_ldap','objectclass','(objectClass=*)'),(2075,'theme_academi','version','2023102400'),(2077,'theme_academi','logo','/logo.png'),(2078,'theme_academi','favicon',''),(2079,'theme_academi','primarycolor',''),(2080,'theme_academi','secondarycolor',''),(2081,'theme_academi','themestyleheader','1'),(2082,'theme_academi','pagesize','container'),(2083,'theme_academi','pagesizecustomval','0'),(2084,'theme_academi','fontsize','16'),(2085,'theme_academi','availablecoursetype','1'),(2086,'theme_academi','comboListboxType','1'),(2087,'theme_academi','loginbg',''),(2088,'theme_academi','backToTop_status','1'),(2089,'theme_academi','customcss',''),(2090,'theme_academi','preset','academi'),(2091,'theme_academi','presetfiles',''),(2092,'theme_academi','toggleslideshow','1'),(2093,'theme_academi','autoslideshow','1'),(2094,'theme_academi','slideinterval','3500'),(2095,'theme_academi','slideOverlay','0.4'),(2096,'theme_academi','numberofslides','3'),(2097,'theme_academi','pcoursestatus','1'),(2098,'theme_academi','promotedtitle','lang:promotedtitledefault'),(2099,'theme_academi','promotedcoursedesc','lang:description_default'),(2100,'theme_academi','promotedcourses','3,4,5,2'),(2101,'theme_academi','sitefblockstatus','0'),(2102,'theme_academi','sitefeaturetitle','lang:sitefeaturesdefault'),(2103,'theme_academi','sitefeaturedesc','lang:description_default'),(2104,'theme_academi','numberofsitefeature','4'),(2105,'theme_academi','mspotstatus','0'),(2106,'theme_academi','mspottitle','lang:aboutus'),(2107,'theme_academi','mspotdesc','lang:description_default'),(2108,'theme_academi','mspotcontent','<p>Ipsum in aspernatur ut possimus sint. Quia omnis est occaecati possimus ea. Quas molestiae perspiciatis occaecati qui rerum. Deleniti quod porro sed quisquam saepe. Numquam mollitia recusandae non ad at et a.</p>\r\n<p>Ad vitae recusandae odit possimus. Quaerat cum ipsum corrupti. Odit qui asperiores ea corporis deserunt veritatis quidem expedita perferendis. Qui rerum eligendi ex doloribus quia sit. Porro rerum eum eum.</p>\r\n<p>Ad vitae recusandae odit possimus. Quaerat cum ipsum corrupti. Odit qui asperiores ea corporis deserunt veritatis quidem expedita perferendis.</p>'),(2109,'theme_academi','mspotmedia','/mspotmedia.png'),(2110,'theme_academi','jumbotronstatus','0'),(2111,'theme_academi','jumbotrontitle','lang:learnanytime'),(2112,'theme_academi','jumbotrondesc','lang:learnanytimedesc'),(2113,'theme_academi','jumbotronbtntext','lang:viewallcourses'),(2114,'theme_academi','jumbotronbtnlink','http://www.example.com/'),(2115,'theme_academi','jumbotronbtntarget','1'),(2116,'theme_academi','footerbgimg',''),(2117,'theme_academi','footerbgOverlay','0.4'),(2118,'theme_academi','copyright_footer','Copyright &copy; 2017 - Developed by <a href=\"http://lmsace.com\">LMSACE.com</a>. Powered by <a href=\"https://moodle.org\">Moodle</a>'),(2119,'theme_academi','footerb1_status','1'),(2120,'theme_academi','footerbtitle1',''),(2121,'theme_academi','footlogostatus','1'),(2122,'theme_academi','footerlogo','/footerlogo.png'),(2123,'theme_academi','footnote','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and tronic typesetting, sheets taining Lorem Ipsum passages.<br><a href=\"#\">Read More »</a></p>'),(2124,'theme_academi','footerb2_status','1'),(2125,'theme_academi','footerbtitle2','lang:footerbtitle2default'),(2126,'theme_academi','infolink','Moodle community|https://moodle.org Moodle free\r\nsupport|https://moodle.org/support\r\nMoodle development|https://moodle.org/development\r\nMoodle Docs|http://docs.moodle.org|Moodle Docs\r\nMoodle.com|http://moodle.com/'),(2127,'theme_academi','footerb3_status','1'),(2128,'theme_academi','footerbtitle3','lang:footerbtitle3default'),(2129,'theme_academi','address','308 Negra Narrow Lane, Albeeze, New york, 87104'),(2130,'theme_academi','emailid','info@example.com'),(2131,'theme_academi','phoneno','(000) 123-456'),(2132,'theme_academi','footerb4_status','1'),(2133,'theme_academi','footerbtitle4','lang:footerbtitle4default'),(2134,'theme_academi','numofsocialmedia','4'),(2135,'theme_academi','slide1status','1'),(2136,'theme_academi','slide1image','/httpsimg.pikbest.combackgrounds20220119cartoon-graduation-season-travel-hd-background_6234287.jpg!bwr800'),(2137,'theme_academi','slide1contentstatus','1'),(2138,'theme_academi','slide1caption','Belajar Teknologi Masa Kini'),(2139,'theme_academi','slide1desc','Lorem aja udah'),(2140,'theme_academi','slide1btntext','lang:knowmore'),(2141,'theme_academi','slide1btnurl','http://www.example.com/'),(2142,'theme_academi','slide1btntarget','1'),(2143,'theme_academi','slide1contFullwidth','50'),(2144,'theme_academi','slide1contentPosition','centerRight'),(2145,'theme_academi','slide2status','1'),(2146,'theme_academi','slide2image',''),(2147,'theme_academi','slide2contentstatus','1'),(2148,'theme_academi','slide2caption','Bootstrap Based Slider - 02'),(2149,'theme_academi','slide2desc','Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.'),(2150,'theme_academi','slide2btntext','lang:knowmore'),(2151,'theme_academi','slide2btnurl','http://www.example.com/'),(2152,'theme_academi','slide2btntarget','1'),(2153,'theme_academi','slide2contFullwidth','50'),(2154,'theme_academi','slide2contentPosition','centerRight'),(2155,'theme_academi','slide3status','1'),(2156,'theme_academi','slide3image',''),(2157,'theme_academi','slide3contentstatus','1'),(2158,'theme_academi','slide3caption','Bootstrap Based Slider - 03'),(2159,'theme_academi','slide3desc','Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.'),(2160,'theme_academi','slide3btntext','lang:knowmore'),(2161,'theme_academi','slide3btnurl','http://www.example.com/'),(2162,'theme_academi','slide3btntarget','1'),(2163,'theme_academi','slide3contFullwidth','50'),(2164,'theme_academi','slide3contentPosition','centerRight'),(2165,'theme_academi','sitefblock1status','1'),(2166,'theme_academi','sitefblock1title','lang:sb1_default_title'),(2167,'theme_academi','sitefblock1content','lang:sb_default_content'),(2168,'theme_academi','sitefblock1icon','lang:sitefblockicon1_default'),(2169,'theme_academi','sitefblock2status','1'),(2170,'theme_academi','sitefblock2title','lang:sb2_default_title'),(2171,'theme_academi','sitefblock2content','lang:sb_default_content'),(2172,'theme_academi','sitefblock2icon','lang:sitefblockicon2_default'),(2173,'theme_academi','sitefblock3status','1'),(2174,'theme_academi','sitefblock3title','lang:sb3_default_title'),(2175,'theme_academi','sitefblock3content','lang:sb_default_content'),(2176,'theme_academi','sitefblock3icon','lang:sitefblockicon3_default'),(2177,'theme_academi','sitefblock4status','1'),(2178,'theme_academi','sitefblock4title','lang:sb4_default_title'),(2179,'theme_academi','sitefblock4content','lang:sb_default_content'),(2180,'theme_academi','sitefblock4icon','lang:sitefblockicon4_default'),(2181,'theme_academi','socialmedia1_status','1'),(2182,'theme_academi','socialmedia1_icon','twitter'),(2183,'theme_academi','socialmedia1_url','https://twitter.com/yourtwittername'),(2184,'theme_academi','socialmedia1_iconcolor','#47caf6'),(2185,'theme_academi','socialmedia2_status','1'),(2186,'theme_academi','socialmedia2_icon','google-plus'),(2187,'theme_academi','socialmedia2_url','https://www.google.com/+yourgoogleplusid'),(2188,'theme_academi','socialmedia2_iconcolor','#e84c3d'),(2189,'theme_academi','socialmedia3_status','1'),(2190,'theme_academi','socialmedia3_icon','pinterest-p'),(2191,'theme_academi','socialmedia3_url','https://in.pinterest.com/yourpinterestname/'),(2192,'theme_academi','socialmedia3_iconcolor','#cd2129'),(2193,'theme_academi','socialmedia4_status','1'),(2194,'theme_academi','socialmedia4_icon','facebook-f'),(2195,'theme_academi','socialmedia4_url','https://www.facebook.com/yourfacebookid'),(2196,'theme_academi','socialmedia4_iconcolor','#3598dc'),(2197,'core_plugin','recentfetch','1702495270'),(2198,'core_plugin','recentresponse','{\"status\":\"OK\",\"provider\":\"https:\\/\\/download.moodle.org\\/api\\/1.3\\/updates.php\",\"apiver\":\"1.3\",\"timegenerated\":1702495270,\"ticket\":\"JUM5JTkxNCVGQiUzRiU4OSUyOSUyQiVFMyU5QyU4QSVEMiVFNTUlMTclQjJJJTkzJTk0JUFGVWQlQ0F2JTdFJUI5JUZFJTFBaiVBQnUlNUQlOEElMTMlMUIlODUlN0IlOEMlODlM\",\"forbranch\":\"4.3\",\"forversion\":\"2023100901\",\"updates\":{\"core\":[{\"version\":2023100901,\"release\":\"4.3.1 (Build: 20231211)\",\"branch\":\"4.03\",\"maturity\":200,\"date\":1702002103,\"url\":\"https:\\/\\/download.moodle.org\",\"download\":\"https:\\/\\/download.moodle.org\\/download.php\\/direct\\/stable403\\/moodle-4.3.1.zip\",\"norelease_index_info\":{\"version\":\"4.3+\",\"branch\":\"MOODLE_403_STABLE\",\"githash\":\"f72244a\",\"date\":1701962524,\"zip\":{\"size\":87830251,\"md5\":true,\"sha256\":true},\"tgz\":{\"size\":66795411,\"md5\":true,\"sha256\":true}},\"release_index_info\":{\"version\":\"4.3.1\",\"branch\":\"MOODLE_403_STABLE\",\"githash\":\"fe8d759\",\"date\":1702002103,\"zip\":{\"size\":87830251,\"md5\":true,\"sha256\":true},\"tgz\":{\"size\":66793158,\"md5\":true,\"sha256\":true}},\"windows\":{\"size\":230463247}},{\"version\":2023120700,\"release\":\"4.4dev (Build: 20231207)\",\"branch\":\"4.04\",\"maturity\":50,\"date\":1701962520,\"url\":\"https:\\/\\/download.moodle.org\",\"download\":\"https:\\/\\/download.moodle.org\\/download.php\\/direct\\/moodle\\/moodle-latest.zip\",\"norelease_index_info\":{\"version\":\"4.4dev\",\"branch\":\"master\",\"githash\":\"a891866\",\"date\":1701962520,\"zip\":{\"size\":87913253,\"md5\":true,\"sha256\":true},\"tgz\":{\"size\":66852133,\"md5\":true,\"sha256\":true}},\"windows\":{\"size\":230546669}}],\"theme_academi\":[{\"version\":\"2023102400\",\"release\":\"v4.3\",\"maturity\":200,\"url\":\"https:\\/\\/moodle.org\\/plugins\\/pluginversion.php?id=30362\",\"download\":\"https:\\/\\/moodle.org\\/plugins\\/download.php\\/30362\\/theme_academi_moodle43_2023102400.zip\",\"downloadmd5\":\"fd92797e7637276c6ffad663fc240ec6\"}]}}');
/*!40000 ALTER TABLE `mdl_config_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_contentbank_content`
--

DROP TABLE IF EXISTS `mdl_contentbank_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_contentbank_content` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `contenttype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `contextid` bigint NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `instanceid` bigint DEFAULT NULL,
  `configdata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `usercreated` bigint NOT NULL,
  `usermodified` bigint DEFAULT NULL,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_contcont_nam_ix` (`name`),
  KEY `mdl_contcont_conconins_ix` (`contextid`,`contenttype`,`instanceid`),
  KEY `mdl_contcont_con_ix` (`contextid`),
  KEY `mdl_contcont_use_ix` (`usermodified`),
  KEY `mdl_contcont_use2_ix` (`usercreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='This table stores content data in the content bank.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_contentbank_content`
--

LOCK TABLES `mdl_contentbank_content` WRITE;
/*!40000 ALTER TABLE `mdl_contentbank_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_contentbank_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_context`
--

DROP TABLE IF EXISTS `mdl_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_context` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contextlevel` bigint NOT NULL DEFAULT '0',
  `instanceid` bigint NOT NULL DEFAULT '0',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `depth` tinyint NOT NULL DEFAULT '0',
  `locked` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_cont_conins_uix` (`contextlevel`,`instanceid`),
  KEY `mdl_cont_ins_ix` (`instanceid`),
  KEY `mdl_cont_pat_ix` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=645 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='one of these must be set';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_context`
--

LOCK TABLES `mdl_context` WRITE;
/*!40000 ALTER TABLE `mdl_context` DISABLE KEYS */;
INSERT INTO `mdl_context` VALUES (1,10,0,'/1',1,0),(2,50,1,'/1/2',2,0),(4,30,1,'/1/4',2,0),(5,30,2,'/1/5',2,0),(6,80,1,'/1/6',2,0),(7,80,2,'/1/7',2,0),(8,80,3,'/1/8',2,0),(9,80,4,'/1/9',2,0),(10,80,5,'/1/10',2,0),(11,80,6,'/1/5/11',3,0),(12,80,7,'/1/5/12',3,0),(13,80,8,'/1/5/13',3,0),(14,30,3,'/1/14',2,0),(15,40,2,'/1/15',2,0),(16,40,3,'/1/16',2,0),(17,40,4,'/1/17',2,0),(18,40,5,'/1/15/18',3,0),(19,40,6,'/1/15/19',3,0),(20,40,7,'/1/16/20',3,0),(21,40,8,'/1/17/21',3,0),(22,50,2,'/1/15/22',3,0),(23,70,1,'/1/15/22/23',4,0),(24,70,2,'/1/15/22/24',4,0),(25,50,3,'/1/15/25',3,0),(26,70,3,'/1/15/25/26',4,0),(27,70,4,'/1/15/25/27',4,0),(28,70,5,'/1/15/25/28',4,0),(29,70,6,'/1/15/25/29',4,0),(30,70,7,'/1/15/25/30',4,0),(31,70,8,'/1/15/25/31',4,0),(32,70,9,'/1/15/25/32',4,0),(33,70,10,'/1/15/25/33',4,0),(34,70,11,'/1/15/25/34',4,0),(35,70,12,'/1/15/25/35',4,0),(36,70,13,'/1/15/25/36',4,0),(37,70,14,'/1/15/25/37',4,0),(38,70,15,'/1/15/25/38',4,0),(39,70,16,'/1/15/25/39',4,0),(40,70,17,'/1/15/25/40',4,0),(41,70,18,'/1/15/25/41',4,0),(42,70,19,'/1/15/25/42',4,0),(43,70,20,'/1/15/25/43',4,0),(44,70,21,'/1/15/25/44',4,0),(45,70,22,'/1/15/25/45',4,0),(46,70,23,'/1/15/25/46',4,0),(47,70,24,'/1/15/25/47',4,0),(48,70,25,'/1/15/25/48',4,0),(49,70,26,'/1/15/25/49',4,0),(50,70,27,'/1/15/25/50',4,0),(51,70,28,'/1/15/25/51',4,0),(52,70,29,'/1/15/25/52',4,0),(53,70,30,'/1/15/25/53',4,0),(54,70,31,'/1/15/25/54',4,0),(55,70,32,'/1/15/25/55',4,0),(56,70,33,'/1/15/25/56',4,0),(57,70,34,'/1/15/25/57',4,0),(58,70,35,'/1/15/25/58',4,0),(59,70,36,'/1/15/25/59',4,0),(60,70,37,'/1/15/25/60',4,0),(61,70,38,'/1/15/25/61',4,0),(62,70,39,'/1/15/25/62',4,0),(63,70,40,'/1/15/25/63',4,0),(64,70,41,'/1/15/25/64',4,0),(65,70,42,'/1/15/25/65',4,0),(66,70,43,'/1/15/25/66',4,0),(67,70,44,'/1/15/25/67',4,0),(68,70,45,'/1/15/25/68',4,0),(69,70,46,'/1/15/25/69',4,0),(70,70,47,'/1/15/25/70',4,0),(71,70,48,'/1/15/25/71',4,0),(72,70,49,'/1/15/25/72',4,0),(73,70,50,'/1/15/25/73',4,0),(74,70,51,'/1/15/25/74',4,0),(75,70,52,'/1/15/25/75',4,0),(76,70,53,'/1/15/25/76',4,0),(77,70,54,'/1/15/25/77',4,0),(78,70,55,'/1/15/25/78',4,0),(79,70,56,'/1/15/25/79',4,0),(80,70,57,'/1/15/25/80',4,0),(81,70,58,'/1/15/25/81',4,0),(82,70,59,'/1/15/25/82',4,0),(83,70,60,'/1/15/25/83',4,0),(84,70,61,'/1/15/25/84',4,0),(85,70,62,'/1/15/25/85',4,0),(86,70,63,'/1/15/25/86',4,0),(87,70,64,'/1/15/25/87',4,0),(88,70,65,'/1/15/25/88',4,0),(89,70,66,'/1/15/25/89',4,0),(90,70,67,'/1/15/25/90',4,0),(91,70,68,'/1/15/25/91',4,0),(92,70,69,'/1/15/25/92',4,0),(93,70,70,'/1/15/25/93',4,0),(94,70,71,'/1/15/25/94',4,0),(95,70,72,'/1/15/25/95',4,0),(96,70,73,'/1/15/25/96',4,0),(97,70,74,'/1/15/25/97',4,0),(98,70,75,'/1/15/25/98',4,0),(99,70,76,'/1/15/25/99',4,0),(100,70,77,'/1/15/25/100',4,0),(101,70,78,'/1/15/25/101',4,0),(102,70,79,'/1/15/25/102',4,0),(103,70,80,'/1/15/25/103',4,0),(104,70,81,'/1/15/25/104',4,0),(105,70,82,'/1/15/25/105',4,0),(106,70,83,'/1/15/25/106',4,0),(107,70,84,'/1/15/25/107',4,0),(108,70,85,'/1/15/25/108',4,0),(109,70,86,'/1/15/25/109',4,0),(110,70,87,'/1/15/25/110',4,0),(111,70,88,'/1/15/25/111',4,0),(112,70,89,'/1/15/25/112',4,0),(113,70,90,'/1/15/25/113',4,0),(114,70,91,'/1/15/25/114',4,0),(115,70,92,'/1/15/25/115',4,0),(116,70,93,'/1/15/25/116',4,0),(117,70,94,'/1/15/25/117',4,0),(118,70,95,'/1/15/25/118',4,0),(119,70,96,'/1/15/25/119',4,0),(120,70,97,'/1/15/25/120',4,0),(121,70,98,'/1/15/25/121',4,0),(122,70,99,'/1/15/25/122',4,0),(123,70,100,'/1/15/25/123',4,0),(124,70,101,'/1/15/25/124',4,0),(125,70,102,'/1/15/25/125',4,0),(126,70,103,'/1/15/25/126',4,0),(127,70,104,'/1/15/25/127',4,0),(128,70,105,'/1/15/25/128',4,0),(129,70,106,'/1/15/25/129',4,0),(130,70,107,'/1/15/25/130',4,0),(131,70,108,'/1/15/25/131',4,0),(132,70,109,'/1/15/25/132',4,0),(133,70,110,'/1/15/25/133',4,0),(134,70,111,'/1/15/25/134',4,0),(135,70,112,'/1/15/25/135',4,0),(136,70,113,'/1/15/25/136',4,0),(137,70,114,'/1/15/25/137',4,0),(138,70,115,'/1/15/25/138',4,0),(139,70,116,'/1/15/25/139',4,0),(140,70,117,'/1/15/25/140',4,0),(141,70,118,'/1/15/25/141',4,0),(142,70,119,'/1/15/25/142',4,0),(143,70,120,'/1/15/25/143',4,0),(144,70,121,'/1/15/25/144',4,0),(145,70,122,'/1/15/25/145',4,0),(146,30,4,'/1/146',2,0),(147,80,9,'/1/146/147',3,0),(148,80,10,'/1/146/148',3,0),(149,80,11,'/1/146/149',3,0),(150,50,4,'/1/15/150',3,0),(151,80,12,'/1/15/150/151',4,0),(152,80,13,'/1/15/150/152',4,0),(153,80,14,'/1/15/150/153',4,0),(154,80,15,'/1/15/150/154',4,0),(155,70,123,'/1/15/150/155',4,0),(156,70,124,'/1/15/150/156',4,0),(157,70,125,'/1/15/150/157',4,0),(158,70,126,'/1/15/150/158',4,0),(159,70,127,'/1/15/150/159',4,0),(160,70,128,'/1/15/150/160',4,0),(161,70,129,'/1/15/150/161',4,0),(162,70,130,'/1/15/150/162',4,0),(163,70,131,'/1/15/150/163',4,0),(164,70,132,'/1/15/150/164',4,0),(165,70,133,'/1/15/150/165',4,0),(166,70,134,'/1/15/150/166',4,0),(167,70,135,'/1/15/150/167',4,0),(168,70,136,'/1/15/150/168',4,0),(169,70,137,'/1/15/150/169',4,0),(170,70,138,'/1/15/150/170',4,0),(171,70,139,'/1/15/150/171',4,0),(172,70,140,'/1/15/150/172',4,0),(173,70,141,'/1/15/150/173',4,0),(174,70,142,'/1/15/150/174',4,0),(175,70,143,'/1/15/150/175',4,0),(176,70,144,'/1/15/150/176',4,0),(177,70,145,'/1/15/150/177',4,0),(178,70,146,'/1/15/150/178',4,0),(179,70,147,'/1/15/150/179',4,0),(180,70,148,'/1/15/150/180',4,0),(181,70,149,'/1/15/150/181',4,0),(182,70,150,'/1/15/150/182',4,0),(183,70,151,'/1/15/150/183',4,0),(184,70,152,'/1/15/150/184',4,0),(185,70,153,'/1/15/150/185',4,0),(186,70,154,'/1/15/150/186',4,0),(187,70,155,'/1/15/150/187',4,0),(188,70,156,'/1/15/150/188',4,0),(189,70,157,'/1/15/150/189',4,0),(190,70,158,'/1/15/150/190',4,0),(191,70,159,'/1/15/150/191',4,0),(192,70,160,'/1/15/150/192',4,0),(193,70,161,'/1/15/150/193',4,0),(194,70,162,'/1/15/150/194',4,0),(195,70,163,'/1/15/150/195',4,0),(196,70,164,'/1/15/150/196',4,0),(197,70,165,'/1/15/150/197',4,0),(198,70,166,'/1/15/150/198',4,0),(199,70,167,'/1/15/150/199',4,0),(200,70,168,'/1/15/150/200',4,0),(201,70,169,'/1/15/150/201',4,0),(202,70,170,'/1/15/150/202',4,0),(203,70,171,'/1/15/150/203',4,0),(204,70,172,'/1/15/150/204',4,0),(205,70,173,'/1/15/150/205',4,0),(206,70,174,'/1/15/150/206',4,0),(207,70,175,'/1/15/150/207',4,0),(208,70,176,'/1/15/150/208',4,0),(209,70,177,'/1/15/150/209',4,0),(210,70,178,'/1/15/150/210',4,0),(211,70,179,'/1/15/150/211',4,0),(212,70,180,'/1/15/150/212',4,0),(213,70,181,'/1/15/150/213',4,0),(214,70,182,'/1/15/150/214',4,0),(215,70,183,'/1/15/150/215',4,0),(216,70,184,'/1/15/150/216',4,0),(217,70,185,'/1/15/150/217',4,0),(218,70,186,'/1/15/150/218',4,0),(219,70,187,'/1/15/150/219',4,0),(220,70,188,'/1/15/150/220',4,0),(221,70,189,'/1/15/150/221',4,0),(222,70,190,'/1/15/150/222',4,0),(223,70,191,'/1/15/150/223',4,0),(224,70,192,'/1/15/150/224',4,0),(225,70,193,'/1/15/150/225',4,0),(226,70,194,'/1/15/150/226',4,0),(227,70,195,'/1/15/150/227',4,0),(228,70,196,'/1/15/150/228',4,0),(229,70,197,'/1/15/150/229',4,0),(230,70,198,'/1/15/150/230',4,0),(231,70,199,'/1/15/150/231',4,0),(232,70,200,'/1/15/150/232',4,0),(233,70,201,'/1/15/150/233',4,0),(234,70,202,'/1/15/150/234',4,0),(235,70,203,'/1/15/150/235',4,0),(236,70,204,'/1/15/150/236',4,0),(237,70,205,'/1/15/150/237',4,0),(238,70,206,'/1/15/150/238',4,0),(239,70,207,'/1/15/150/239',4,0),(240,70,208,'/1/15/150/240',4,0),(241,70,209,'/1/15/150/241',4,0),(242,70,210,'/1/15/150/242',4,0),(243,70,211,'/1/15/150/243',4,0),(244,70,212,'/1/15/150/244',4,0),(245,70,213,'/1/15/150/245',4,0),(246,70,214,'/1/15/150/246',4,0),(247,70,215,'/1/15/150/247',4,0),(248,70,216,'/1/15/150/248',4,0),(249,70,217,'/1/15/150/249',4,0),(250,70,218,'/1/15/150/250',4,0),(251,70,219,'/1/15/150/251',4,0),(252,70,220,'/1/15/150/252',4,0),(253,70,221,'/1/15/150/253',4,0),(254,70,222,'/1/15/150/254',4,0),(255,70,223,'/1/15/150/255',4,0),(256,70,224,'/1/15/150/256',4,0),(257,70,225,'/1/15/150/257',4,0),(258,70,226,'/1/15/150/258',4,0),(259,70,227,'/1/15/150/259',4,0),(260,70,228,'/1/15/150/260',4,0),(261,70,229,'/1/15/150/261',4,0),(262,70,230,'/1/15/150/262',4,0),(263,70,231,'/1/15/150/263',4,0),(264,70,232,'/1/15/150/264',4,0),(265,70,233,'/1/15/150/265',4,0),(266,70,234,'/1/15/150/266',4,0),(267,70,235,'/1/15/150/267',4,0),(268,70,236,'/1/15/150/268',4,0),(269,70,237,'/1/15/150/269',4,0),(270,70,238,'/1/15/150/270',4,0),(271,70,239,'/1/15/150/271',4,0),(272,70,240,'/1/15/150/272',4,0),(273,70,241,'/1/15/150/273',4,0),(274,70,242,'/1/15/150/274',4,0),(275,70,243,'/1/15/150/275',4,0),(276,70,244,'/1/15/150/276',4,0),(277,70,245,'/1/15/150/277',4,0),(278,70,246,'/1/15/150/278',4,0),(279,70,247,'/1/15/150/279',4,0),(280,70,248,'/1/15/150/280',4,0),(281,70,249,'/1/15/150/281',4,0),(282,70,250,'/1/15/150/282',4,0),(283,70,251,'/1/15/150/283',4,0),(284,70,252,'/1/15/150/284',4,0),(285,70,253,'/1/15/150/285',4,0),(286,70,254,'/1/15/150/286',4,0),(287,70,255,'/1/15/150/287',4,0),(288,70,256,'/1/15/150/288',4,0),(289,70,257,'/1/15/150/289',4,0),(290,70,258,'/1/15/150/290',4,0),(291,70,259,'/1/15/150/291',4,0),(292,70,260,'/1/15/150/292',4,0),(293,70,261,'/1/15/150/293',4,0),(294,70,262,'/1/15/150/294',4,0),(295,70,263,'/1/15/150/295',4,0),(296,70,264,'/1/15/150/296',4,0),(297,70,265,'/1/15/150/297',4,0),(298,70,266,'/1/15/150/298',4,0),(299,70,267,'/1/15/150/299',4,0),(300,70,268,'/1/15/150/300',4,0),(301,70,269,'/1/15/150/301',4,0),(302,70,270,'/1/15/150/302',4,0),(303,70,271,'/1/15/150/303',4,0),(304,70,272,'/1/15/150/304',4,0),(305,70,273,'/1/15/150/305',4,0),(306,70,274,'/1/15/150/306',4,0),(307,70,275,'/1/15/150/307',4,0),(308,70,276,'/1/15/150/308',4,0),(309,70,277,'/1/15/150/309',4,0),(310,70,278,'/1/15/150/310',4,0),(311,70,279,'/1/15/150/311',4,0),(312,70,280,'/1/15/150/312',4,0),(313,70,281,'/1/15/150/313',4,0),(314,70,282,'/1/15/150/314',4,0),(315,70,283,'/1/15/150/315',4,0),(316,70,284,'/1/15/150/316',4,0),(317,70,285,'/1/15/150/317',4,0),(318,70,286,'/1/15/150/318',4,0),(319,70,287,'/1/15/150/319',4,0),(320,70,288,'/1/15/150/320',4,0),(321,70,289,'/1/15/150/321',4,0),(322,70,290,'/1/15/150/322',4,0),(323,70,291,'/1/15/150/323',4,0),(324,70,292,'/1/15/150/324',4,0),(325,70,293,'/1/15/150/325',4,0),(326,70,294,'/1/15/150/326',4,0),(327,70,295,'/1/15/150/327',4,0),(328,70,296,'/1/15/150/328',4,0),(329,70,297,'/1/15/150/329',4,0),(330,70,298,'/1/15/150/330',4,0),(331,70,299,'/1/15/150/331',4,0),(332,70,300,'/1/15/150/332',4,0),(333,70,301,'/1/15/150/333',4,0),(334,70,302,'/1/15/150/334',4,0),(335,70,303,'/1/15/150/335',4,0),(336,70,304,'/1/15/150/336',4,0),(337,70,305,'/1/15/150/337',4,0),(338,70,306,'/1/15/150/338',4,0),(339,70,307,'/1/15/150/339',4,0),(340,70,308,'/1/15/150/340',4,0),(341,70,309,'/1/15/150/341',4,0),(342,70,310,'/1/15/150/342',4,0),(343,70,311,'/1/15/150/343',4,0),(344,70,312,'/1/15/150/344',4,0),(345,70,313,'/1/15/150/345',4,0),(346,70,314,'/1/15/150/346',4,0),(347,70,315,'/1/15/150/347',4,0),(348,70,316,'/1/15/150/348',4,0),(349,70,317,'/1/15/150/349',4,0),(350,70,318,'/1/15/150/350',4,0),(351,70,319,'/1/15/150/351',4,0),(352,70,320,'/1/15/150/352',4,0),(353,70,321,'/1/15/150/353',4,0),(354,70,322,'/1/15/150/354',4,0),(355,70,323,'/1/15/150/355',4,0),(356,70,324,'/1/15/150/356',4,0),(357,70,325,'/1/15/150/357',4,0),(358,70,326,'/1/15/150/358',4,0),(359,70,327,'/1/15/150/359',4,0),(360,70,328,'/1/15/150/360',4,0),(361,70,329,'/1/15/150/361',4,0),(362,70,330,'/1/15/150/362',4,0),(363,50,5,'/1/16/363',3,0),(364,80,16,'/1/16/363/364',4,0),(365,80,17,'/1/16/363/365',4,0),(366,80,18,'/1/16/363/366',4,0),(367,80,19,'/1/16/363/367',4,0),(368,70,331,'/1/16/363/368',4,0),(369,70,332,'/1/16/363/369',4,0),(370,70,333,'/1/16/363/370',4,0),(371,70,334,'/1/16/363/371',4,0),(372,70,335,'/1/16/363/372',4,0),(373,70,336,'/1/16/363/373',4,0),(374,70,337,'/1/16/363/374',4,0),(375,70,338,'/1/16/363/375',4,0),(376,70,339,'/1/16/363/376',4,0),(377,70,340,'/1/16/363/377',4,0),(378,70,341,'/1/16/363/378',4,0),(379,70,342,'/1/16/363/379',4,0),(380,70,343,'/1/16/363/380',4,0),(381,70,344,'/1/16/363/381',4,0),(382,70,345,'/1/16/363/382',4,0),(383,70,346,'/1/16/363/383',4,0),(384,70,347,'/1/16/363/384',4,0),(385,70,348,'/1/16/363/385',4,0),(386,70,349,'/1/16/363/386',4,0),(387,70,350,'/1/16/363/387',4,0),(388,70,351,'/1/16/363/388',4,0),(389,70,352,'/1/16/363/389',4,0),(390,70,353,'/1/16/363/390',4,0),(391,70,354,'/1/16/363/391',4,0),(392,70,355,'/1/16/363/392',4,0),(393,70,356,'/1/16/363/393',4,0),(394,70,357,'/1/16/363/394',4,0),(395,70,358,'/1/16/363/395',4,0),(396,70,359,'/1/16/363/396',4,0),(397,70,360,'/1/16/363/397',4,0),(398,70,361,'/1/16/363/398',4,0),(399,70,362,'/1/16/363/399',4,0),(400,70,363,'/1/16/363/400',4,0),(401,70,364,'/1/16/363/401',4,0),(402,70,365,'/1/16/363/402',4,0),(403,70,366,'/1/16/363/403',4,0),(404,70,367,'/1/16/363/404',4,0),(405,70,368,'/1/16/363/405',4,0),(406,70,369,'/1/16/363/406',4,0),(407,70,370,'/1/16/363/407',4,0),(408,70,371,'/1/16/363/408',4,0),(409,70,372,'/1/16/363/409',4,0),(410,70,373,'/1/16/363/410',4,0),(411,70,374,'/1/16/363/411',4,0),(412,70,375,'/1/16/363/412',4,0),(413,70,376,'/1/16/363/413',4,0),(414,70,377,'/1/16/363/414',4,0),(415,70,378,'/1/16/363/415',4,0),(416,70,379,'/1/16/363/416',4,0),(417,70,380,'/1/16/363/417',4,0),(418,70,381,'/1/16/363/418',4,0),(419,70,382,'/1/16/363/419',4,0),(420,70,383,'/1/16/363/420',4,0),(421,70,384,'/1/16/363/421',4,0),(422,70,385,'/1/16/363/422',4,0),(423,70,386,'/1/16/363/423',4,0),(424,70,387,'/1/16/363/424',4,0),(425,70,388,'/1/16/363/425',4,0),(426,70,389,'/1/16/363/426',4,0),(427,70,390,'/1/16/363/427',4,0),(428,70,391,'/1/16/363/428',4,0),(429,70,392,'/1/16/363/429',4,0),(430,70,393,'/1/16/363/430',4,0),(431,70,394,'/1/16/363/431',4,0),(432,70,395,'/1/16/363/432',4,0),(433,70,396,'/1/16/363/433',4,0),(434,70,397,'/1/16/363/434',4,0),(435,70,398,'/1/16/363/435',4,0),(436,70,399,'/1/16/363/436',4,0),(437,70,400,'/1/16/363/437',4,0),(438,70,401,'/1/16/363/438',4,0),(439,70,402,'/1/16/363/439',4,0),(440,70,403,'/1/16/363/440',4,0),(441,70,404,'/1/16/363/441',4,0),(442,70,405,'/1/16/363/442',4,0),(443,70,406,'/1/16/363/443',4,0),(444,70,407,'/1/16/363/444',4,0),(445,70,408,'/1/16/363/445',4,0),(446,70,409,'/1/16/363/446',4,0),(447,70,410,'/1/16/363/447',4,0),(448,70,411,'/1/16/363/448',4,0),(449,70,412,'/1/16/363/449',4,0),(450,70,413,'/1/16/363/450',4,0),(451,70,414,'/1/16/363/451',4,0),(452,70,415,'/1/16/363/452',4,0),(453,70,416,'/1/16/363/453',4,0),(454,70,417,'/1/16/363/454',4,0),(455,70,418,'/1/16/363/455',4,0),(456,70,419,'/1/16/363/456',4,0),(457,70,420,'/1/16/363/457',4,0),(458,70,421,'/1/16/363/458',4,0),(459,70,422,'/1/16/363/459',4,0),(460,70,423,'/1/16/363/460',4,0),(461,70,424,'/1/16/363/461',4,0),(462,70,425,'/1/16/363/462',4,0),(463,70,426,'/1/16/363/463',4,0),(464,70,427,'/1/16/363/464',4,0),(465,70,428,'/1/16/363/465',4,0),(466,70,429,'/1/16/363/466',4,0),(467,70,430,'/1/16/363/467',4,0),(468,70,431,'/1/16/363/468',4,0),(469,70,432,'/1/16/363/469',4,0),(470,70,433,'/1/16/363/470',4,0),(471,70,434,'/1/16/363/471',4,0),(472,70,435,'/1/16/363/472',4,0),(473,70,436,'/1/16/363/473',4,0),(474,70,437,'/1/16/363/474',4,0),(475,70,438,'/1/16/363/475',4,0),(476,70,439,'/1/16/363/476',4,0),(477,70,440,'/1/16/363/477',4,0),(478,70,441,'/1/16/363/478',4,0),(479,70,442,'/1/16/363/479',4,0),(480,70,443,'/1/16/363/480',4,0),(481,70,444,'/1/16/363/481',4,0),(482,70,445,'/1/16/363/482',4,0),(483,70,446,'/1/16/363/483',4,0),(484,70,447,'/1/16/363/484',4,0),(485,70,448,'/1/16/363/485',4,0),(486,70,449,'/1/16/363/486',4,0),(487,70,450,'/1/16/363/487',4,0),(488,70,451,'/1/16/363/488',4,0),(489,70,452,'/1/16/363/489',4,0),(490,70,453,'/1/16/363/490',4,0),(491,70,454,'/1/16/363/491',4,0),(492,70,455,'/1/16/363/492',4,0),(493,70,456,'/1/16/363/493',4,0),(494,70,457,'/1/16/363/494',4,0),(495,70,458,'/1/16/363/495',4,0),(496,70,459,'/1/16/363/496',4,0),(497,70,460,'/1/16/363/497',4,0),(498,70,461,'/1/16/363/498',4,0),(499,70,462,'/1/16/363/499',4,0),(500,70,463,'/1/16/363/500',4,0),(501,70,464,'/1/16/363/501',4,0),(502,70,465,'/1/16/363/502',4,0),(503,70,466,'/1/16/363/503',4,0),(504,70,467,'/1/16/363/504',4,0),(505,70,468,'/1/16/363/505',4,0),(506,70,469,'/1/16/363/506',4,0),(507,70,470,'/1/16/363/507',4,0),(508,70,471,'/1/16/363/508',4,0),(509,70,472,'/1/16/363/509',4,0),(510,70,473,'/1/16/363/510',4,0),(511,70,474,'/1/16/363/511',4,0),(512,70,475,'/1/16/363/512',4,0),(513,70,476,'/1/16/363/513',4,0),(514,70,477,'/1/16/363/514',4,0),(515,70,478,'/1/16/363/515',4,0),(516,70,479,'/1/16/363/516',4,0),(517,70,480,'/1/16/363/517',4,0),(518,70,481,'/1/16/363/518',4,0),(519,70,482,'/1/16/363/519',4,0),(520,70,483,'/1/16/363/520',4,0),(521,70,484,'/1/16/363/521',4,0),(522,70,485,'/1/16/363/522',4,0),(523,70,486,'/1/16/363/523',4,0),(524,70,487,'/1/16/363/524',4,0),(525,70,488,'/1/16/363/525',4,0),(526,70,489,'/1/16/363/526',4,0),(527,70,490,'/1/16/363/527',4,0),(528,70,491,'/1/16/363/528',4,0),(529,70,492,'/1/16/363/529',4,0),(530,70,493,'/1/16/363/530',4,0),(531,70,494,'/1/16/363/531',4,0),(532,70,495,'/1/16/363/532',4,0),(533,70,496,'/1/16/363/533',4,0),(534,70,497,'/1/16/363/534',4,0),(535,70,498,'/1/16/363/535',4,0),(536,70,499,'/1/16/363/536',4,0),(537,70,500,'/1/16/363/537',4,0),(538,70,501,'/1/16/363/538',4,0),(539,70,502,'/1/16/363/539',4,0),(540,70,503,'/1/16/363/540',4,0),(541,70,504,'/1/16/363/541',4,0),(542,70,505,'/1/16/363/542',4,0),(543,70,506,'/1/16/363/543',4,0),(544,70,507,'/1/16/363/544',4,0),(545,70,508,'/1/16/363/545',4,0),(546,70,509,'/1/16/363/546',4,0),(547,70,510,'/1/16/363/547',4,0),(548,70,511,'/1/16/363/548',4,0),(549,70,512,'/1/16/363/549',4,0),(550,70,513,'/1/16/363/550',4,0),(551,70,514,'/1/16/363/551',4,0),(552,70,515,'/1/16/363/552',4,0),(553,70,516,'/1/16/363/553',4,0),(554,70,517,'/1/16/363/554',4,0),(555,70,518,'/1/16/363/555',4,0),(556,70,519,'/1/16/363/556',4,0),(557,70,520,'/1/16/363/557',4,0),(558,70,521,'/1/16/363/558',4,0),(559,70,522,'/1/16/363/559',4,0),(560,70,523,'/1/16/363/560',4,0),(561,70,524,'/1/16/363/561',4,0),(562,70,525,'/1/16/363/562',4,0),(563,70,526,'/1/16/363/563',4,0),(564,70,527,'/1/16/363/564',4,0),(565,70,528,'/1/16/363/565',4,0),(566,70,529,'/1/16/363/566',4,0),(567,70,530,'/1/16/363/567',4,0),(568,70,531,'/1/16/363/568',4,0),(569,70,532,'/1/16/363/569',4,0),(570,70,533,'/1/16/363/570',4,0),(571,70,534,'/1/16/363/571',4,0),(572,70,535,'/1/16/363/572',4,0),(573,70,536,'/1/16/363/573',4,0),(574,70,537,'/1/16/363/574',4,0),(575,70,538,'/1/16/363/575',4,0),(576,70,539,'/1/16/363/576',4,0),(577,70,540,'/1/16/363/577',4,0),(578,70,541,'/1/16/363/578',4,0),(579,70,542,'/1/16/363/579',4,0),(580,70,543,'/1/16/363/580',4,0),(581,70,544,'/1/16/363/581',4,0),(582,70,545,'/1/16/363/582',4,0),(583,70,546,'/1/16/363/583',4,0),(584,70,547,'/1/16/363/584',4,0),(585,70,548,'/1/16/363/585',4,0),(586,70,549,'/1/16/363/586',4,0),(587,70,550,'/1/16/363/587',4,0),(588,70,551,'/1/16/363/588',4,0),(589,70,552,'/1/16/363/589',4,0),(590,70,553,'/1/16/363/590',4,0),(591,70,554,'/1/16/363/591',4,0),(592,70,555,'/1/16/363/592',4,0),(593,70,556,'/1/16/363/593',4,0),(594,70,557,'/1/16/363/594',4,0),(595,70,558,'/1/16/363/595',4,0),(596,70,559,'/1/16/363/596',4,0),(597,70,560,'/1/16/363/597',4,0),(598,70,561,'/1/16/363/598',4,0),(599,70,562,'/1/16/363/599',4,0),(600,70,563,'/1/16/363/600',4,0),(601,70,564,'/1/16/363/601',4,0),(602,70,565,'/1/16/363/602',4,0),(603,70,566,'/1/16/363/603',4,0),(604,70,567,'/1/16/363/604',4,0),(605,70,568,'/1/16/363/605',4,0),(606,70,569,'/1/16/363/606',4,0),(607,70,570,'/1/16/363/607',4,0),(608,70,571,'/1/16/363/608',4,0),(609,70,572,'/1/15/25/609',4,0),(610,30,5,'/1/610',2,0),(611,30,6,'/1/611',2,0),(612,30,7,'/1/612',2,0),(613,30,8,'/1/613',2,0),(614,30,9,'/1/614',2,0),(615,30,10,'/1/615',2,0),(616,30,11,'/1/616',2,0),(617,30,12,'/1/617',2,0),(618,30,13,'/1/618',2,0),(619,30,14,'/1/619',2,0),(620,30,15,'/1/620',2,0),(621,30,16,'/1/621',2,0),(622,30,17,'/1/622',2,0),(623,30,18,'/1/623',2,0),(624,30,19,'/1/624',2,0),(625,30,20,'/1/625',2,0),(626,30,21,'/1/626',2,0),(627,30,22,'/1/627',2,0),(628,30,23,'/1/628',2,0),(629,30,24,'/1/629',2,0),(630,30,25,'/1/630',2,0),(631,30,26,'/1/631',2,0),(632,30,27,'/1/632',2,0),(633,30,28,'/1/633',2,0),(634,30,29,'/1/634',2,0),(635,30,30,'/1/635',2,0),(636,30,31,'/1/636',2,0),(637,30,32,'/1/637',2,0),(638,30,33,'/1/638',2,0),(639,80,20,'/1/632/639',3,0),(640,80,21,'/1/632/640',3,0),(641,80,22,'/1/632/641',3,0),(642,80,23,'/1/637/642',3,0),(643,80,24,'/1/637/643',3,0),(644,80,25,'/1/637/644',3,0);
/*!40000 ALTER TABLE `mdl_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_context_temp`
--

DROP TABLE IF EXISTS `mdl_context_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_context_temp` (
  `id` bigint NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `depth` tinyint NOT NULL,
  `locked` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Used by build_context_path() in upgrade and cron to keep con';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_context_temp`
--

LOCK TABLES `mdl_context_temp` WRITE;
/*!40000 ALTER TABLE `mdl_context_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_context_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course`
--

DROP TABLE IF EXISTS `mdl_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` bigint NOT NULL DEFAULT '0',
  `sortorder` bigint NOT NULL DEFAULT '0',
  `fullname` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `shortname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `summaryformat` tinyint NOT NULL DEFAULT '0',
  `format` varchar(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'topics',
  `showgrades` tinyint NOT NULL DEFAULT '1',
  `newsitems` mediumint NOT NULL DEFAULT '1',
  `startdate` bigint NOT NULL DEFAULT '0',
  `enddate` bigint NOT NULL DEFAULT '0',
  `relativedatesmode` tinyint(1) NOT NULL DEFAULT '0',
  `marker` bigint NOT NULL DEFAULT '0',
  `maxbytes` bigint NOT NULL DEFAULT '0',
  `legacyfiles` smallint NOT NULL DEFAULT '0',
  `showreports` smallint NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `downloadcontent` tinyint(1) DEFAULT NULL,
  `groupmode` smallint NOT NULL DEFAULT '0',
  `groupmodeforce` smallint NOT NULL DEFAULT '0',
  `defaultgroupingid` bigint NOT NULL DEFAULT '0',
  `lang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `calendartype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `theme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `requested` tinyint(1) NOT NULL DEFAULT '0',
  `enablecompletion` tinyint(1) NOT NULL DEFAULT '0',
  `completionnotify` tinyint(1) NOT NULL DEFAULT '0',
  `cacherev` bigint NOT NULL DEFAULT '0',
  `originalcourseid` bigint DEFAULT NULL,
  `showactivitydates` tinyint(1) NOT NULL DEFAULT '0',
  `showcompletionconditions` tinyint(1) DEFAULT NULL,
  `pdfexportfont` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_cour_cat_ix` (`category`),
  KEY `mdl_cour_idn_ix` (`idnumber`),
  KEY `mdl_cour_sho_ix` (`shortname`),
  KEY `mdl_cour_sor_ix` (`sortorder`),
  KEY `mdl_cour_ori_ix` (`originalcourseid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Central course table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course`
--

LOCK TABLES `mdl_course` WRITE;
/*!40000 ALTER TABLE `mdl_course` DISABLE KEYS */;
INSERT INTO `mdl_course` VALUES (1,0,1,'Edubridge','Edubridge','','',0,'site',1,3,0,0,0,0,0,0,0,1,1,NULL,0,0,0,'','','',1702489176,1702489431,0,0,0,1702521015,NULL,0,NULL,NULL),(2,2,10002,'Ilmu Pengetahuan Alam','IPA','','',1,'topics',1,5,1702573200,0,0,0,0,0,0,1,1,NULL,0,0,0,'','','',1702490461,1702490461,0,1,0,1702495214,NULL,1,1,NULL),(3,2,10003,'Sistem Operasi (FREE)','System-Operasi','','',1,'topics',1,5,1509642000,1541178000,0,0,0,0,0,1,1,NULL,0,0,0,'','','',1509608627,1702495615,0,1,0,1702495617,NULL,1,1,NULL),(4,2,10001,'(FREE) Jaringan Komputer','JaringanKomputer','','<p>Dalam kuliah ini peserta akan diajarkan skill / pengetahuan praktis untuk mengoperasikan bahkan membuat sendiri jaringan komputer seperti Internet. Pengetahuan ini sangat dibutuhkan bagi mereka yang berkecimpung dalam bidang jaringan, operator telekomunikasi maupun administrator di kampus atau enterprise / perusahaan.<br><br>Di awali dengan berbagai konsep yang mendasari jaringan komputer maupun berbagai pengalamatan yang ada di jaringan, secara perlahan di perkenalkan pengetahuan praktis untuk mengkonfigurasi peralatan jaringan, baik secara real maupun menggunakan simulator jaringan seperti GNS3 untuk berbagai jenis router seperti Mikrotik, Cisco dan Juniper. Untuk membentuk LAN maupun WAN. Jaringan wireless di berikan prioritas tambahan terutama untuk merancang jaringan wireless jarak jauh 50-300 km.<br><br>Berbagai layanan pentingan jaringan seperti server penamaan (Domain Name System / DNS), email / webmail, web server maupun content manajemen sistem (CMS) di praktekan menggunakan server virtual yang bisa di jalankan di VirtualBox tersambung ke GNS3. Bagi mereka yang ingin layanan yang canggih juga di ajarkan teknik membuat streaming server seperti youtube, bahkan Telepon di Internet hingga membuat sendiri jaringan selular sendiri dengan teknologi OpenBTS baik untuk 2G (dan terakhir LTE / 4G). Di akhir kuliah di jelaskan tentang teknik manajemen maupun pengukuran (Benchmarking) jaringan.<br><br></p>',1,'topics',1,5,1525280400,1556816400,0,0,0,0,0,1,1,NULL,0,0,0,'','','',1525222766,1585641186,0,1,0,1702495214,NULL,1,1,NULL),(5,3,40001,'2020-1-Advanced-Networking-and-Cyber-Security','2020-1-Cyber-Security','','',1,'topics',1,5,1579712400,0,0,0,20971520,0,0,1,1,NULL,0,0,0,'','','',1579651961,1579658094,0,1,0,1702496018,NULL,1,1,NULL);
/*!40000 ALTER TABLE `mdl_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_categories`
--

DROP TABLE IF EXISTS `mdl_course_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `descriptionformat` tinyint NOT NULL DEFAULT '0',
  `parent` bigint NOT NULL DEFAULT '0',
  `sortorder` bigint NOT NULL DEFAULT '0',
  `coursecount` bigint NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `depth` bigint NOT NULL DEFAULT '0',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `theme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courcate_par_ix` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Course categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_categories`
--

LOCK TABLES `mdl_course_categories` WRITE;
/*!40000 ALTER TABLE `mdl_course_categories` DISABLE KEYS */;
INSERT INTO `mdl_course_categories` VALUES (2,'Kelas X','','',1,0,10000,3,1,1,1702490180,1,'/2',NULL),(3,'Kelas XI','','',1,0,40000,1,1,1,1702490218,1,'/3',NULL),(4,'Kelas XII','','',1,0,60000,0,1,1,1702490251,1,'/4',NULL),(5,'TKJ 1','','',1,2,20000,0,1,1,1702490267,2,'/2/5',NULL),(6,'TKJ 2','','',1,2,30000,0,1,1,1702490281,2,'/2/6',NULL),(7,'TKJ 1','','',1,3,50000,0,1,1,1702490297,2,'/3/7',NULL),(8,'TKJ 1','','',1,4,70000,0,1,1,1702490319,2,'/4/8',NULL);
/*!40000 ALTER TABLE `mdl_course_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_aggr_methd`
--

DROP TABLE IF EXISTS `mdl_course_completion_aggr_methd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_completion_aggr_methd` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `criteriatype` bigint DEFAULT NULL,
  `method` tinyint(1) NOT NULL DEFAULT '0',
  `value` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompaggrmeth_coucr_uix` (`course`,`criteriatype`),
  KEY `mdl_courcompaggrmeth_cou_ix` (`course`),
  KEY `mdl_courcompaggrmeth_cri_ix` (`criteriatype`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Course completion aggregation methods for criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_aggr_methd`
--

LOCK TABLES `mdl_course_completion_aggr_methd` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_aggr_methd` DISABLE KEYS */;
INSERT INTO `mdl_course_completion_aggr_methd` VALUES (1,3,NULL,1,NULL),(2,3,4,1,NULL),(3,3,7,1,NULL),(4,3,8,1,NULL),(5,4,NULL,1,NULL),(6,4,4,1,NULL),(7,4,7,1,NULL),(8,4,8,1,NULL),(9,5,NULL,1,NULL),(10,5,4,1,NULL),(11,5,7,1,NULL),(12,5,8,1,NULL);
/*!40000 ALTER TABLE `mdl_course_completion_aggr_methd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_crit_compl`
--

DROP TABLE IF EXISTS `mdl_course_completion_crit_compl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_completion_crit_compl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL DEFAULT '0',
  `course` bigint NOT NULL DEFAULT '0',
  `criteriaid` bigint NOT NULL DEFAULT '0',
  `gradefinal` decimal(10,5) DEFAULT NULL,
  `unenroled` bigint DEFAULT NULL,
  `timecompleted` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompcritcomp_useco_uix` (`userid`,`course`,`criteriaid`),
  KEY `mdl_courcompcritcomp_use_ix` (`userid`),
  KEY `mdl_courcompcritcomp_cou_ix` (`course`),
  KEY `mdl_courcompcritcomp_cri_ix` (`criteriaid`),
  KEY `mdl_courcompcritcomp_tim_ix` (`timecompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Course completion user records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_crit_compl`
--

LOCK TABLES `mdl_course_completion_crit_compl` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_crit_compl` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_crit_compl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_criteria`
--

DROP TABLE IF EXISTS `mdl_course_completion_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_completion_criteria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `criteriatype` bigint NOT NULL DEFAULT '0',
  `module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `moduleinstance` bigint DEFAULT NULL,
  `courseinstance` bigint DEFAULT NULL,
  `enrolperiod` bigint DEFAULT NULL,
  `timeend` bigint DEFAULT NULL,
  `gradepass` decimal(10,5) DEFAULT NULL,
  `role` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courcompcrit_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Course completion criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_criteria`
--

LOCK TABLES `mdl_course_completion_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_criteria` DISABLE KEYS */;
INSERT INTO `mdl_course_completion_criteria` VALUES (1,3,6,NULL,NULL,NULL,NULL,NULL,6.00000,NULL),(2,4,6,NULL,NULL,NULL,NULL,NULL,6.00000,NULL),(3,5,6,NULL,NULL,NULL,NULL,NULL,6.00000,NULL);
/*!40000 ALTER TABLE `mdl_course_completion_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_defaults`
--

DROP TABLE IF EXISTS `mdl_course_completion_defaults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_completion_defaults` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL,
  `module` bigint NOT NULL,
  `completion` tinyint(1) NOT NULL DEFAULT '0',
  `completionview` tinyint(1) NOT NULL DEFAULT '0',
  `completionusegrade` tinyint(1) NOT NULL DEFAULT '0',
  `completionpassgrade` tinyint(1) NOT NULL DEFAULT '0',
  `completionexpected` bigint NOT NULL DEFAULT '0',
  `customrules` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompdefa_coumod_uix` (`course`,`module`),
  KEY `mdl_courcompdefa_mod_ix` (`module`),
  KEY `mdl_courcompdefa_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Default settings for activities completion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_defaults`
--

LOCK TABLES `mdl_course_completion_defaults` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_defaults` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_defaults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completions`
--

DROP TABLE IF EXISTS `mdl_course_completions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_completions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL DEFAULT '0',
  `course` bigint NOT NULL DEFAULT '0',
  `timeenrolled` bigint NOT NULL DEFAULT '0',
  `timestarted` bigint NOT NULL DEFAULT '0',
  `timecompleted` bigint DEFAULT NULL,
  `reaggregate` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcomp_usecou_uix` (`userid`,`course`),
  KEY `mdl_courcomp_use_ix` (`userid`),
  KEY `mdl_courcomp_cou_ix` (`course`),
  KEY `mdl_courcomp_tim_ix` (`timecompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Course completion records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completions`
--

LOCK TABLES `mdl_course_completions` WRITE;
/*!40000 ALTER TABLE `mdl_course_completions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_format_options`
--

DROP TABLE IF EXISTS `mdl_course_format_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_format_options` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `courseid` bigint NOT NULL,
  `format` varchar(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `sectionid` bigint NOT NULL DEFAULT '0',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courformopti_couforsec_uix` (`courseid`,`format`,`sectionid`,`name`),
  KEY `mdl_courformopti_cou_ix` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores format-specific options for the course or course sect';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_format_options`
--

LOCK TABLES `mdl_course_format_options` WRITE;
/*!40000 ALTER TABLE `mdl_course_format_options` DISABLE KEYS */;
INSERT INTO `mdl_course_format_options` VALUES (1,1,'site',0,'numsections','1'),(2,2,'topics',0,'hiddensections','1'),(3,2,'topics',0,'coursedisplay','0'),(4,3,'topics',0,'hiddensections','0'),(5,3,'topics',0,'coursedisplay','0'),(6,4,'topics',0,'hiddensections','0'),(7,4,'topics',0,'coursedisplay','0'),(8,5,'topics',0,'hiddensections','0'),(9,5,'topics',0,'coursedisplay','0');
/*!40000 ALTER TABLE `mdl_course_format_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules`
--

DROP TABLE IF EXISTS `mdl_course_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_modules` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `module` bigint NOT NULL DEFAULT '0',
  `instance` bigint NOT NULL DEFAULT '0',
  `section` bigint NOT NULL DEFAULT '0',
  `idnumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `added` bigint NOT NULL DEFAULT '0',
  `score` smallint NOT NULL DEFAULT '0',
  `indent` mediumint NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleoncoursepage` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `groupmode` smallint NOT NULL DEFAULT '0',
  `groupingid` bigint NOT NULL DEFAULT '0',
  `completion` tinyint(1) NOT NULL DEFAULT '0',
  `completiongradeitemnumber` bigint DEFAULT NULL,
  `completionview` tinyint(1) NOT NULL DEFAULT '0',
  `completionexpected` bigint NOT NULL DEFAULT '0',
  `completionpassgrade` tinyint(1) NOT NULL DEFAULT '0',
  `showdescription` tinyint(1) NOT NULL DEFAULT '0',
  `availability` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `deletioninprogress` tinyint(1) NOT NULL DEFAULT '0',
  `downloadcontent` tinyint(1) DEFAULT '1',
  `lang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courmodu_vis_ix` (`visible`),
  KEY `mdl_courmodu_cou_ix` (`course`),
  KEY `mdl_courmodu_mod_ix` (`module`),
  KEY `mdl_courmodu_ins_ix` (`instance`),
  KEY `mdl_courmodu_idncou_ix` (`idnumber`,`course`),
  KEY `mdl_courmodu_gro_ix` (`groupingid`)
) ENGINE=InnoDB AUTO_INCREMENT=573 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='course_modules table retrofitted from MySQL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_modules`
--

LOCK TABLES `mdl_course_modules` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules` DISABLE KEYS */;
INSERT INTO `mdl_course_modules` VALUES (1,2,9,1,1,NULL,1702490461,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(2,2,3,1,2,'',1702490648,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,''),(3,3,16,1,6,'',1512443752,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(4,3,21,1,6,'',1512443833,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(5,3,21,2,7,'',1512443953,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(6,3,21,3,7,'',1571277478,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(7,3,17,1,7,'',1571263651,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(8,3,21,4,8,'',1512444064,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(9,3,21,5,8,'',1571277808,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(10,3,21,6,8,'',1571277425,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(11,3,21,7,8,'',1571277379,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(12,3,17,2,8,'',1571264893,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(13,3,21,8,9,'',1512444155,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(14,3,21,9,9,'',1512444416,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(15,3,17,3,9,'',1571264950,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(16,3,21,10,9,'',1571277745,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(17,3,21,11,9,'',1571278130,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(18,3,21,12,9,'',1571277669,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(19,3,21,13,10,'',1512444839,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,''),(20,3,21,14,10,'',1512444909,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(21,3,21,15,10,'',1512444991,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(22,3,21,16,10,'',1512445043,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(23,3,21,17,10,'',1512445098,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(24,3,21,18,10,'',1512445276,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(25,3,21,19,10,'',1512445381,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(26,3,21,20,10,'',1571278262,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(27,3,21,21,10,'',1571278307,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(28,3,21,22,10,'',1571279561,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(29,3,17,4,10,'',1571264995,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(30,3,21,23,11,'',1512445579,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(31,3,21,24,11,'',1512445757,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(32,3,21,25,11,'',1512445807,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(33,3,21,26,11,'',1512446380,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(34,3,21,27,11,'',1571277881,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(35,3,21,28,11,'',1571278066,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(36,3,17,5,11,'',1571265037,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(37,3,21,29,12,'',1512446469,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(38,3,21,30,12,'',1571278390,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(39,3,21,31,12,'',1571278436,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(40,3,17,6,12,'',1571265070,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(41,3,21,32,13,'',1571272986,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(42,3,21,33,13,'',1571273083,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(43,3,21,34,13,'',1571273139,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(44,3,21,35,13,'',1571273189,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(45,3,21,36,13,'',1571273241,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(46,3,21,37,13,'',1571273288,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(47,3,21,38,13,'',1571273339,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(48,3,21,39,13,'',1571273386,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(49,3,21,40,13,'',1571273457,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(50,3,17,7,13,'',1571273485,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(51,3,21,41,14,'',1512446571,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(52,3,21,42,14,'',1512446627,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(53,3,21,43,14,'',1512458062,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(54,3,21,44,14,'',1512458103,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(55,3,21,45,14,'',1571278536,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(56,3,17,8,14,'',1571265098,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(57,3,17,9,15,'',1571263536,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(58,3,21,46,16,'',1512458182,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(59,3,21,47,16,'',1512458240,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(60,3,21,48,16,'',1571277546,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(61,3,21,49,16,'',1571278632,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(62,3,17,10,16,'',1571265162,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(63,3,21,50,17,'',1512458314,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(64,3,21,51,17,'',1512458396,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(65,3,21,52,17,'',1512458454,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(66,3,21,53,17,'',1571278732,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(67,3,17,11,17,'',1571265187,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(68,3,21,54,18,'',1512458540,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(69,3,21,55,18,'',1512458591,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(70,3,21,56,18,'',1512458657,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(71,3,21,57,18,'',1512458751,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(72,3,21,58,18,'',1512458832,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(73,3,21,59,18,'',1512458888,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(74,3,21,60,18,'',1512458979,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(75,3,21,61,18,'',1512459169,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(76,3,21,62,18,'',1571277959,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(77,3,21,63,18,'',1571278784,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(78,3,17,12,18,'',1571265224,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(79,3,21,64,19,'',1512459701,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(80,3,21,65,19,'',1512459750,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(81,3,21,66,19,'',1512459832,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(82,3,21,67,19,'',1571278848,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(83,3,17,13,19,'',1571265363,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(84,3,21,68,20,'',1512459939,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(85,3,21,69,20,'',1512459991,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(86,3,21,70,20,'',1512460145,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(87,3,21,71,20,'',1512460216,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(88,3,21,72,20,'',1512460367,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(89,3,21,73,20,'',1571278917,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(90,3,21,74,20,'',1571278965,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(91,3,17,14,20,'',1571265391,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(92,3,21,75,21,'',1512461976,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(93,3,21,76,21,'',1512462039,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(94,3,21,77,21,'',1512462101,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(95,3,21,78,21,'',1571279140,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(96,3,17,15,21,'',1571265457,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(97,3,21,79,22,'',1512462195,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(98,3,21,80,22,'',1571279221,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(99,3,21,81,22,'',1571279272,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(100,3,17,16,22,'',1571265489,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(101,3,21,82,23,'',1512462252,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(102,3,21,83,23,'',1512462349,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(103,3,21,84,23,'',1512462403,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(104,3,21,85,23,'',1512462465,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(105,3,21,86,23,'',1512462522,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(106,3,21,87,23,'',1512462589,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(107,3,21,88,23,'',1512462638,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(108,3,21,89,23,'',1571278011,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(109,3,21,90,23,'',1571279343,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(110,3,17,17,23,'',1571265514,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(111,3,21,91,24,'',1512462684,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(112,3,21,92,24,'',1512462733,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(113,3,21,93,24,'',1512462962,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(114,3,21,94,24,'',1512539532,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(115,3,21,95,24,'',1571279421,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(116,3,21,96,24,'',1571279474,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(117,3,17,18,24,'',1571267636,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(118,3,1,1,25,'',1512807486,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(119,3,1,2,25,'',1512807532,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(120,3,1,3,25,'',1512807576,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(121,3,1,4,25,'',1512807631,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(122,3,17,19,25,'',1571267669,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(123,4,9,2,26,NULL,1585134621,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(124,4,21,97,27,'',1512348961,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,''),(125,4,21,98,27,'',1512349005,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,''),(126,4,21,99,27,'',1512349046,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(127,4,21,100,27,'',1512349083,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(128,4,21,101,27,'',1575239743,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(129,4,21,102,27,'',1575323144,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(130,4,17,20,27,'',1585101621,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(131,4,21,103,28,'',1512353399,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(132,4,21,104,28,'',1512353356,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(133,4,21,105,28,'',1512353312,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(134,4,21,106,28,'',1585621106,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(135,4,21,107,28,'',1512353553,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(136,4,21,108,28,'',1512353673,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(137,4,21,109,28,'',1512353741,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(138,4,17,21,28,'',1585102044,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(139,4,21,110,29,'',1512353798,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(140,4,21,111,29,'',1512353846,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(141,4,21,112,29,'',1512353886,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(142,4,21,113,29,'',1512353947,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(143,4,21,114,29,'',1512353988,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(144,4,21,115,29,'',1512354040,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(145,4,21,116,29,'',1585519095,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(146,4,21,117,29,'',1585519174,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(147,4,21,118,29,'',1585519254,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(148,4,21,119,29,'',1585519358,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(149,4,21,120,29,'',1585104552,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(150,4,21,121,29,'',1585104620,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(151,4,17,22,29,'',1585102076,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(152,4,21,122,30,'',1512354150,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(153,4,21,123,30,'',1512354205,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(154,4,21,124,30,'',1512354250,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(155,4,21,125,30,'',1512354300,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(156,4,21,126,30,'',1512354392,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(157,4,21,127,30,'',1512354448,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(158,4,21,128,30,'',1512354500,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(159,4,21,129,30,'',1512354566,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(160,4,17,23,30,'',1585102105,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(161,4,21,130,31,'',1512354717,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(162,4,21,131,31,'',1512354747,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(163,4,21,132,31,'',1580245547,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(164,4,21,133,31,'',1512354811,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(165,4,21,134,31,'',1512354866,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(166,4,21,135,31,'',1512354925,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(167,4,21,136,31,'',1512354998,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(168,4,21,137,31,'',1512355050,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(169,4,21,138,31,'',1580258266,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(170,4,21,139,31,'',1580258314,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(171,4,17,24,31,'',1585102137,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(172,4,21,140,32,'',1512355411,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(173,4,21,141,32,'',1512355463,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(174,4,21,142,32,'',1512355577,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(175,4,21,143,32,'',1512355636,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(176,4,21,144,32,'',1512355698,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(177,4,21,145,32,'',1512356204,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(178,4,21,146,32,'',1585621614,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(179,4,17,25,32,'',1585102168,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(180,4,21,147,33,'',1512356335,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(181,4,21,148,33,'',1512356396,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(182,4,21,149,33,'',1512356456,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(183,4,21,150,33,'',1512356656,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(184,4,21,151,33,'',1512356722,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(185,4,17,26,33,'',1585103694,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(186,4,21,152,34,'',1512356943,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(187,4,21,153,34,'',1512357145,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(188,4,21,154,34,'',1512357189,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(189,4,21,155,34,'',1512357370,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(190,4,21,156,34,'',1512357446,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(191,4,21,157,34,'',1512357507,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(192,4,21,158,34,'',1512357593,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(193,4,21,159,34,'',1585621203,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(194,4,21,160,34,'',1512357661,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(195,4,21,161,34,'',1585621790,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(196,4,21,162,34,'',1585621853,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(197,4,17,27,34,'',1585103718,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(198,4,21,163,35,'',1512357910,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(199,4,21,164,35,'',1512357786,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(200,4,21,165,35,'',1512357847,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(201,4,21,166,35,'',1512357970,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(202,4,21,167,35,'',1585105488,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(203,4,21,168,35,'',1512358036,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(204,4,21,169,35,'',1512358123,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(205,4,21,170,35,'',1512358214,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(206,4,21,171,35,'',1576706019,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(207,4,21,172,35,'',1585105566,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(208,4,21,173,35,'',1585105610,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(209,4,21,174,35,'',1585105652,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(210,4,17,28,35,'',1585103752,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(211,4,17,29,36,'',1585103879,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(212,4,21,175,37,NULL,1381670327,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(213,4,21,176,37,NULL,1381670404,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(214,4,21,177,37,'',1433496014,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(215,4,21,178,37,NULL,1381670478,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(216,4,21,179,37,NULL,1381670540,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(217,4,21,180,37,NULL,1381670599,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(218,4,21,181,37,'',1437987894,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(219,4,21,182,37,'',1422760560,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(220,4,21,183,37,'',1438059151,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(221,4,21,184,37,'',1585621696,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(222,4,21,185,37,'',1585622174,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(223,4,21,186,37,'',1585622233,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(224,4,21,187,37,'',1585622322,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(225,4,21,188,37,'',1585622401,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(226,4,21,189,37,'',1585622466,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(227,4,17,30,37,'',1585103910,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(228,4,21,190,38,NULL,1381670665,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(229,4,21,191,38,NULL,1381670729,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(230,4,21,192,38,NULL,1381670814,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(231,4,21,193,38,NULL,1383913144,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(232,4,21,194,38,'',1437617116,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(233,4,21,195,38,NULL,1383913210,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(234,4,17,31,38,'',1585103941,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(235,4,21,196,39,NULL,1381670875,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(236,4,21,197,39,NULL,1381670937,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(237,4,21,198,39,NULL,1381670986,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(238,4,21,199,39,NULL,1381671041,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(239,4,21,200,39,'',1585622587,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(240,4,21,201,39,'',1585105744,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(241,4,17,32,39,'',1585103970,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(242,4,21,202,40,'',1404004639,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(243,4,21,203,40,'',1404004686,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(244,4,21,204,40,'',1404004760,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(245,4,21,205,40,'',1405916580,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(246,4,21,206,40,'',1404004639,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(247,4,21,207,40,'',1404004686,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(248,4,21,208,40,'',1404004760,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(249,4,21,209,40,'',1405916580,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(250,4,17,33,40,'',1585104001,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(251,4,21,210,41,'',1585104712,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(252,4,21,211,41,NULL,1381671124,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(253,4,21,212,41,'',1585104770,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(254,4,21,213,41,'',1436682168,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(255,4,21,214,41,'',1436682202,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(256,4,21,215,41,'',1585104994,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(257,4,21,216,41,'',1585105044,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(258,4,21,217,41,'',1585105098,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(259,4,21,218,41,'',1585105137,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(260,4,21,219,41,'',1585105175,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(261,4,21,220,41,'',1585105218,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(262,4,21,221,41,'',1585105257,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(263,4,21,222,41,'',1585105324,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(264,4,21,223,41,'',1585105359,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(265,4,21,224,41,'',1585105400,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(266,4,17,34,41,'',1585104029,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(267,4,21,225,42,'',1437953205,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(268,4,21,226,42,NULL,1381671501,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(269,4,21,227,42,NULL,1381671282,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(270,4,21,228,42,NULL,1381671366,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(271,4,21,229,42,NULL,1381671422,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(272,4,21,230,42,'',1418596029,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(273,4,21,231,42,'',1585106659,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(274,4,21,232,42,'',1585107094,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(275,4,21,233,42,'',1418596085,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(276,4,21,234,42,NULL,1381671215,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(277,4,21,235,42,'',1585107504,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(278,4,21,236,42,'',1585108390,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(279,4,21,237,42,'',1585106472,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(280,4,21,238,42,'',1585106580,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(281,4,21,239,42,'',1585107434,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(282,4,21,240,42,'',1585107787,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(283,4,21,241,42,'',1585108097,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(284,4,17,35,42,'',1585104053,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(285,4,21,242,43,NULL,1381671575,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(286,4,21,243,43,NULL,1381671647,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(287,4,21,244,43,NULL,1381671701,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(288,4,21,245,43,'',1585108526,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(289,4,21,246,43,NULL,1381671827,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(290,4,21,247,43,NULL,1381671894,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(291,4,21,248,43,'',1433495957,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(292,4,21,249,43,'',1436681910,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(293,4,21,250,43,'',1436681967,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(294,4,21,251,43,'',1585108484,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(295,4,21,252,43,'',1585108688,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(296,4,21,253,43,'',1585108974,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(297,4,17,36,43,'',1585104090,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(298,4,21,254,44,'',1512358533,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(299,4,21,255,44,'',1512358675,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(300,4,21,256,44,'',1512358868,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(301,4,21,257,44,'',1512358931,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(302,4,21,258,44,'',1512359154,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(303,4,21,259,44,'',1512359207,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(304,4,21,260,44,'',1512359399,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(305,4,21,261,44,'',1512359448,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(306,4,21,262,44,'',1512359524,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(307,4,21,263,44,'',1512359586,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(308,4,17,37,44,'',1585104229,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(309,4,21,264,45,'',1404004363,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(310,4,21,265,45,'',1404004422,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(311,4,21,266,45,'',1442790718,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(312,4,21,267,45,'',1470834219,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(313,4,21,268,45,'',1442790718,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(314,4,21,269,45,'',1470834219,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(315,4,21,270,45,'',1585106257,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(316,4,21,271,45,'',1585106330,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(317,4,21,272,45,'',1585105934,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(318,4,21,273,45,'',1585106004,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(319,4,17,38,45,'',1585104264,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(320,4,21,274,46,'',1423950453,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(321,4,21,275,46,'',1423950316,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(322,4,21,276,46,'',1519439383,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(323,4,21,277,46,'',1433495817,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(324,4,21,278,46,'',1433495702,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(325,4,21,279,46,'',1437522629,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(326,4,21,280,46,'',1585621332,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(327,4,21,281,46,'',1585621393,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(328,4,21,282,46,'',1585621463,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(329,4,17,39,46,'',1585104298,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(330,4,17,40,47,'',1585104324,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(331,5,21,283,49,'',1512348961,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,''),(332,5,21,284,49,'',1512349005,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(333,5,21,285,49,'',1512349083,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(334,5,21,286,49,'',1512349046,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(335,5,21,287,49,'',1512353673,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(336,5,21,288,49,'',1512353741,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(337,5,21,289,49,'',1577246675,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(338,5,21,290,49,'',1570087180,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(339,5,17,41,49,'',1570045432,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(340,5,21,291,50,'',1512353798,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,''),(341,5,21,292,50,'',1512353846,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(342,5,21,293,50,'',1512353886,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(343,5,21,294,50,'',1512353947,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(344,5,21,295,50,'',1512353988,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(345,5,21,296,50,'',1512354040,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(346,5,21,297,50,'',1576116665,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(347,5,21,298,50,'',1576116730,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(348,5,17,42,50,'',1570025683,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(349,5,21,299,51,NULL,1381671124,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(350,5,21,300,51,'',1436682168,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(351,5,21,301,51,'',1436682202,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(352,5,21,302,51,'',1570001259,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,''),(353,5,21,303,51,'',1570001318,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(354,5,21,304,51,'',1570001386,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(355,5,21,305,51,'',1570001442,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(356,5,21,306,51,'',1570001497,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(357,5,21,307,51,'',1570001547,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(358,5,21,308,51,'',1570001593,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(359,5,21,309,51,'',1570001647,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(360,5,21,310,51,'',1570001703,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(361,5,21,311,51,'',1570087081,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(362,5,17,43,51,'',1570025819,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(363,5,21,312,52,'',1512357970,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,''),(364,5,21,313,52,'',1512357910,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(365,5,21,314,52,'',1512357786,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(366,5,21,315,52,'',1512357847,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(367,5,21,316,52,'',1570001879,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(368,5,21,317,52,'',1512358036,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(369,5,21,318,52,'',1512358214,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(370,5,21,319,52,'',1512358123,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(371,5,21,320,52,'',1576116786,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(372,5,21,321,52,'',1577256992,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(373,5,21,322,52,'',1577256932,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(374,5,17,44,52,'',1570025855,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(375,5,21,323,53,NULL,1381670875,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(376,5,21,324,53,NULL,1381670937,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(377,5,21,325,53,NULL,1381670986,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(378,5,21,326,53,NULL,1381671041,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(379,5,21,327,53,'',1570086921,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(380,5,17,45,53,'',1570025884,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(381,5,21,328,54,'',1423950453,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(382,5,21,329,54,'',1423950316,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(383,5,21,330,54,'',1519439383,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(384,5,21,331,54,'',1433495817,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(385,5,21,332,54,'',1437522629,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(386,5,21,333,54,'',1433495702,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(387,5,17,46,54,'',1570025916,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(388,5,21,334,55,'',1404004363,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(389,5,21,335,55,'',1404004422,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(390,5,21,336,55,'',1442790718,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(391,5,21,337,55,'',1470834219,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(392,5,21,338,55,'',1570043883,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(393,5,21,339,55,'',1570086641,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(394,5,17,47,55,'',1570026092,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(395,5,21,340,56,'',1454938033,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(396,5,21,341,56,'',1454938105,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(397,5,21,342,56,'',1454938166,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(398,5,21,343,56,'',1454938232,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(399,5,21,344,56,'',1454716361,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(400,5,21,345,56,'',1454716443,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(401,5,21,346,56,'',1454805419,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(402,5,21,347,56,'',1454804007,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(403,5,21,348,56,'',1570086728,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(404,5,17,48,56,'',1570026128,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(405,5,21,349,57,'',1454715433,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(406,5,21,350,57,'',1454716533,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(407,5,21,351,57,'',1454716846,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(408,5,21,352,57,'',1455422755,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(409,5,21,353,57,'',1455422703,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(410,5,21,354,57,'',1455423301,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(411,5,21,355,57,'',1455425862,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(412,5,21,356,57,'',1454805156,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(413,5,21,357,57,'',1454804785,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(414,5,21,358,57,'',1455501902,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(415,5,21,359,57,'',1455505068,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(416,5,21,360,57,'',1577245388,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(417,5,17,49,57,'',1570026171,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(418,5,21,361,58,'',1520018793,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(419,5,21,362,58,'',1520018844,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(420,5,21,363,58,'',1454716188,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(421,5,21,364,58,'',1520018885,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(422,5,21,365,58,'',1454716252,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(423,5,21,366,58,'',1455114142,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(424,5,21,367,58,'',1455114029,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(425,5,21,368,58,'',1454716114,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(426,5,17,50,58,'',1570044047,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(427,5,21,369,59,'',1454717763,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(428,5,21,370,59,'',1455114237,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(429,5,21,371,59,'',1570001090,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(430,5,21,372,59,'',1570001131,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(431,5,21,373,59,'',1570001167,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(432,5,21,374,59,'',1577245479,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(433,5,21,375,59,'',1577245300,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(434,5,17,51,59,'',1570044104,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(435,5,21,376,59,'',1584777898,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(436,5,21,377,60,'',1512354717,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(437,5,21,378,60,'',1512354747,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(438,5,21,379,60,'',1512354811,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(439,5,21,380,60,'',1512354866,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(440,5,21,381,60,'',1512354925,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(441,5,21,382,60,'',1512354998,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(442,5,21,383,60,'',1512355050,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(443,5,21,384,60,'',1454804132,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(444,5,21,385,60,'',1454804238,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(445,5,21,386,60,'',1454804292,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(446,5,21,387,60,'',1454804380,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(447,5,21,388,60,'',1454885729,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(448,5,21,389,60,'',1454804448,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(449,5,21,390,60,'',1454804543,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(450,5,17,52,60,'',1570044142,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(451,5,21,391,61,'',1455111717,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(452,5,21,392,61,'',1455091188,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(453,5,21,393,61,'',1454717099,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(454,5,21,394,61,'',1454818564,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(455,5,21,395,61,'',1455111175,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(456,5,21,396,61,'',1455111287,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(457,5,21,397,61,'',1454887257,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(458,5,21,398,61,'',1454717992,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(459,5,21,399,61,'',1584777645,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(460,5,17,53,61,'',1570044183,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(461,5,21,400,61,'',1584777761,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(462,5,21,401,62,'',1454805255,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(463,5,21,402,62,'',1454805315,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(464,5,21,403,62,'',1455158335,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(465,5,21,404,62,'',1455849457,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(466,5,21,405,62,'',1454804900,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(467,5,21,406,62,'',1454804993,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(468,5,17,54,62,'',1570044217,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(469,5,21,407,63,'',1512356943,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(470,5,21,408,63,'',1512357145,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(471,5,21,409,63,'',1512357189,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(472,5,21,410,63,'',1512357370,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(473,5,21,411,63,'',1512357446,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(474,5,21,412,63,'',1512357507,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(475,5,21,413,63,'',1512357593,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(476,5,21,414,63,'',1512357661,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(477,5,21,415,63,'',1454901526,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(478,5,21,416,63,'',1454900452,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(479,5,21,417,63,'',1454718248,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(480,5,21,418,63,'',1454901163,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(481,5,17,55,63,'',1570044256,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(482,5,21,419,64,'',1455150396,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(483,5,21,420,64,'',1455150446,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(484,5,21,421,64,'',1455112267,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(485,5,21,422,64,'',1455113452,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(486,5,21,423,64,'',1570408331,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(487,5,17,56,64,'',1570044301,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(488,5,17,57,65,'',1570045111,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(489,5,21,424,66,'',1454715571,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(490,5,21,425,66,'',1454715634,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(491,5,21,426,66,'',1454715707,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(492,5,21,427,66,'',1570086810,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(493,5,17,58,66,'',1570044341,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(494,5,21,428,67,'',1454715817,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(495,5,21,429,67,'',1454715892,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(496,5,21,430,67,NULL,1381670665,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(497,5,21,431,67,NULL,1381670729,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(498,5,21,432,67,NULL,1381670814,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(499,5,21,433,67,NULL,1383913144,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(500,5,21,434,67,'',1437617116,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(501,5,21,435,67,NULL,1383913210,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(502,5,21,436,67,'',1455076412,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(503,5,17,59,67,'',1570044389,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(504,5,21,437,68,'',1454803125,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(505,5,21,438,68,'',1454803192,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(506,5,21,439,68,'',1454803231,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(507,5,21,440,68,'',1454803280,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(508,5,21,441,68,'',1454803339,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(509,5,21,442,68,'',1454803448,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(510,5,17,60,68,'',1570044417,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(511,5,21,443,69,'',1454803493,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(512,5,21,444,69,'',1454939848,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(513,5,21,445,69,'',1454803549,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(514,5,21,446,69,'',1454803607,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(515,5,21,447,69,'',1454803685,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(516,5,21,448,69,'',1454803755,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(517,5,21,449,69,'',1454803819,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(518,5,21,450,69,'',1454803883,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(519,5,17,61,69,'',1570044452,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(520,5,21,451,70,'',1454802096,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(521,5,21,452,70,'',1454802135,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(522,5,21,453,70,'',1454802174,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(523,5,17,62,70,'',1570044492,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(524,5,21,454,71,'',1454805785,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(525,5,21,455,71,'',1454805843,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(526,5,21,456,71,'',1454806046,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(527,5,21,457,71,'',1454805995,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(528,5,21,458,71,'',1454805915,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(529,5,17,63,71,'',1570044519,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(530,5,21,459,72,'',1454801980,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(531,5,21,460,72,'',1454802040,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(532,5,21,461,72,'',1570005123,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(533,5,21,462,72,'',1570005933,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(534,5,21,463,72,'',1570006187,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(535,5,21,464,72,'',1570006280,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(536,5,21,465,72,'',1570011209,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(537,5,21,466,72,'',1570012199,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(538,5,21,467,72,'',1570012241,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(539,5,21,468,72,'',1570012278,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(540,5,17,64,72,'',1570044552,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(541,5,21,469,73,'',1570044606,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(542,5,21,470,73,'',1454717708,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(543,5,21,471,73,'',1454717849,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(544,5,21,472,73,'',1570044669,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(545,5,17,65,73,'',1570044724,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(546,5,21,473,74,'',1512358533,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(547,5,21,474,74,'',1512358675,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(548,5,21,475,74,'',1512358868,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(549,5,21,476,74,'',1512358931,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(550,5,21,477,74,'',1512359154,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(551,5,21,478,74,'',1512359207,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(552,5,21,479,74,'',1512359399,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(553,5,21,480,74,'',1512359448,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(554,5,21,481,74,'',1512359524,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(555,5,21,482,74,'',1512359586,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(556,5,17,66,74,'',1570044775,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(557,5,21,483,75,'',1454806152,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(558,5,21,484,75,'',1454806253,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(559,5,17,67,75,'',1570044807,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(560,5,21,485,76,'',1570044889,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(561,5,21,486,76,'',1570044938,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(562,5,21,487,76,'',1570045035,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(563,5,21,488,76,'',1570047280,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(564,5,21,489,76,'',1577245564,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(565,5,17,68,76,'',1570045069,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(566,5,17,69,77,'',1570045145,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(567,5,1,5,77,'',1512807193,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(568,5,1,6,77,'',1512807241,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(569,5,1,7,77,'',1512807287,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(570,5,1,8,77,'',1512807343,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1,NULL),(571,5,9,3,48,NULL,1702494538,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL),(572,3,9,4,6,NULL,1702495615,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL);
/*!40000 ALTER TABLE `mdl_course_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules_completion`
--

DROP TABLE IF EXISTS `mdl_course_modules_completion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_modules_completion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `coursemoduleid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `completionstate` tinyint(1) NOT NULL,
  `overrideby` bigint DEFAULT NULL,
  `timemodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courmoducomp_usecou_uix` (`userid`,`coursemoduleid`),
  KEY `mdl_courmoducomp_cou_ix` (`coursemoduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the completion state (completed or not completed, etc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_modules_completion`
--

LOCK TABLES `mdl_course_modules_completion` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules_completion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_modules_completion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules_viewed`
--

DROP TABLE IF EXISTS `mdl_course_modules_viewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_modules_viewed` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `coursemoduleid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courmoduview_usecou_uix` (`userid`,`coursemoduleid`),
  KEY `mdl_courmoduview_cou_ix` (`coursemoduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Tracks the completion viewed (viewed with cmid/userid and ot';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_modules_viewed`
--

LOCK TABLES `mdl_course_modules_viewed` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules_viewed` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_modules_viewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_published`
--

DROP TABLE IF EXISTS `mdl_course_published`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_published` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `huburl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `courseid` bigint NOT NULL,
  `timepublished` bigint NOT NULL,
  `enrollable` tinyint(1) NOT NULL DEFAULT '1',
  `hubcourseid` bigint NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `timechecked` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courpubl_hub_ix` (`hubcourseid`),
  KEY `mdl_courpubl_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Information about how and when an local courses were publish';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_published`
--

LOCK TABLES `mdl_course_published` WRITE;
/*!40000 ALTER TABLE `mdl_course_published` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_published` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_request`
--

DROP TABLE IF EXISTS `mdl_course_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_request` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fullname` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `shortname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `summaryformat` tinyint NOT NULL DEFAULT '0',
  `category` bigint NOT NULL DEFAULT '0',
  `reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `requester` bigint NOT NULL DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_courrequ_sho_ix` (`shortname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='course requests';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_request`
--

LOCK TABLES `mdl_course_request` WRITE;
/*!40000 ALTER TABLE `mdl_course_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_sections`
--

DROP TABLE IF EXISTS `mdl_course_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_sections` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `section` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `summaryformat` tinyint NOT NULL DEFAULT '0',
  `sequence` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `availability` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_coursect_cousec_uix` (`course`,`section`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='to define the sections for each course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_sections`
--

LOCK TABLES `mdl_course_sections` WRITE;
/*!40000 ALTER TABLE `mdl_course_sections` DISABLE KEYS */;
INSERT INTO `mdl_course_sections` VALUES (1,2,0,NULL,'',1,'1',1,NULL,1702490461),(2,2,1,NULL,'',1,'2',1,NULL,1702490461),(3,2,2,NULL,'',1,'',1,NULL,1702490461),(4,2,3,NULL,'',1,'',1,NULL,1702490461),(5,2,4,NULL,'',1,'',1,NULL,1702490461),(6,3,0,'Penjelasan Umum','<p><span id=\"maincontent\"><br></span></p><div><ul><li id=\"section-0\" role=\"region\" aria-label=\"General\"><div><div><div><p><span><strong>CARA MEMPEROLEH NILAI A<a title=\"Sistem Operasi\" href=\"http://lms.onnocenter.or.id/moodle/mod/url/view.php?id=2171\"><br></a></strong></span></p><ol><li>Kerjakan semua kuis / ujian berulang2 (berkali2, tanpa batas), nilai tertinggi akan di ambil.</li><li>Kerjakan semua kuis, jika belum memperoleh nilai 100, ulangi sampai dapat 100.</li><li>Kerjakan UTS 100 soal, terus menerus, sampai waktu dosen harus memasukan nilai.</li><li>Kerjakan UAS 100 soal, terus menerus, sampai waktu dosen harus memasukan nilai.</li></ol></div></div></div></li></ul><ul><li id=\"section-0\" role=\"region\" aria-label=\"General\"><div><div><div><p><strong>BONUS</strong></p>\n<ol>\n<li><strong>Bagi mereka yang bisa menulis ebook 150 halaman A4 dengan topik sekitar <a title=\"Sistem Operasi\" href=\"http://lms.onnocenter.or.id/moodle/mod/url/view.php?id=2171\">Sistem Operasi</a>. Maka nilai akan automatis dapat 100. Tidak perlu mengerjakan Kuis, <a title=\"UTS\" href=\"http://lms.onnocenter.or.id/moodle/mod/quiz/view.php?id=2195\">UTS</a>, <a title=\"UAS\" href=\"http://lms.onnocenter.or.id/moodle/mod/quiz/view.php?id=2245\">UAS</a>.</strong></li>\n<li><strong></strong>Bagi mereka yang bisa membuat <a title=\"Sistem Operasi\" href=\"http://lms.onnocenter.or.id/moodle/mod/url/view.php?id=2171\">sistem operasi</a> <a title=\"Android\" href=\"http://lms.onnocenter.or.id/moodle/mod/url/view.php?id=2238\">android</a>,\n memperlihatkan device-nya PLUS menulis caranya dalam bentuk softcopy. \nTIDAK PERLU UJIAN AKHIR. Nilai Ujian Akhir akan dapat 100.</li>\n</ol></div></div></div></li></ul></div><br><p></p>',1,'3,4,572',1,'{\"op\":\"&\",\"c\":[],\"showc\":[]}',1702492956),(7,3,1,'Sejarah Sistem Operasi','',1,'5,6,7',1,NULL,1702492956),(8,3,2,'Cara Kerja Sistem Operasi Secara Umum','<p><div><ul>\n<li>Program Execution</li>\n<li>Interrupts</li>\n<li>Modes</li>\n<li>memory managemen</li>\n<li>virtual memory</li>\n<li>multitasking</li>\n<li>disk access &amp; file system</li>\n<li>device driver</li>\n</ul></div><br></p>',1,'8,9,10,11,12',1,'{\"op\":\"&\",\"c\":[],\"showc\":[]}',1702492957),(9,3,3,'Penggunaan Command Line di Linux','<p><ul>\n<li>Perhatikan isi folder /bin /sbin/ /usr/bin /usr/sbin /etc</li>\n<li>clear, sleep</li>\n<li>ls, dir, mkdir, mkdir -p, rmdir, cd, cp, mv, rm, rm -Rf, date, du, df, pwd</li>\n<li>chmod, chown, sudo, sudo su, exit</li>\n<li>nano, pico, vi, more, less, cat</li>\n<li>hwinfo, whoami</li>\n<li>shutdown -h now, shutdown -r now, reboot, halt</li>\n<li>ps ax, lsmod</li>\n<li>top, htop, ntop</li>\n<li>ifconfig. netstat -r, route, wget</li>\n<li>uname -r, lsb_release -a, lsblk</li>\n<li>fdisk -l, mkfs, mkfs.ext3, mount, umount</li>\n</ul><br></p>',1,'13,14,15,16,17,18',1,'{\"op\":\"&\",\"c\":[],\"showc\":[]}',1702492957),(10,3,4,'Repository & Instalasi Software di Linux','<p><div><ul>\n<li>Mengenal konsep <a title=\"Repository di Ubuntu\" href=\"http://lms.onnocenter.or.id/moodle/mod/url/view.php?id=2176\">Repository di Ubuntu</a></li>\n<li>Setup Repository dari Jaringan / Internet</li>\n<li>Instalasi Repository dari USB harddisk</li>\n<li>menggunakan apt-get install / aptitude install</li>\n<li>menggunakan apt-get remove --purge</li>\n<li>compile aplikasi, seperti SQLite</li>\n<li>Sekilas tentang <a title=\"Cara Menggunakan SQLite\" href=\"http://lms.onnocenter.or.id/moodle/mod/url/view.php?id=2179\">cara menggunakan SQLite</a>.</li>\n</ul></div><br></p>',1,'19,20,21,22,23,24,25,26,27,28,29',1,'{\"op\":\"&\",\"c\":[],\"showc\":[]}',1702492957),(11,3,5,'Partisi Harddisk & Instalasi Linux','<p><div><ul>\n<li>Mengetahui perintah: fdisk, mkfs, mkfs.vfat, dd, fsck</li>\n<li>Membackup image harddisk laptop</li>\n<li>Membuat USB flashdisk</li>\n<li>Mempartisi Harddisk</li>\n<li>Memformat Harddisk</li>\n<li><a title=\"Instalasi Linux\" href=\"http://lms.onnocenter.or.id/moodle/mod/url/view.php?id=2184\">Instalasi Linux</a></li>\n</ul></div><br></p>',1,'30,31,32,33,34,35,36',1,'{\"op\":\"&\",\"c\":[],\"showc\":[]}',1702492957),(12,3,6,'Pengenalan Shell Programming','<p><ul>\n<li>Penggunaan &gt;, &gt;&gt;, &lt;, &lt;&lt;</li>\n<li>echo</li>\n<li>file shell script</li>\n<li>Environment Variable $PS1</li>\n<li>Argumen di Shell Script</li>\n<li>User Defined Variable</li>\n<li>printf, read</li>\n<li>if elif then else</li>\n<li>case esac</li>\n<li>for do done</li>\n<li>while do done</li>\n</ul><br></p>',1,'37,38,39,40',1,'{\"op\":\"&\",\"c\":[],\"showc\":[]}',1702492958),(13,3,7,'APLIKASI SERVER','',1,'41,42,43,44,45,46,47,48,49,50',1,NULL,1702492958),(14,3,8,'Virtualisasi dan Cloud Computing','',1,'51,52,53,54,55,56',1,NULL,1702492958),(15,3,9,'Ujian Tengah Semester (UTS)','',1,'57',1,NULL,1702492958),(16,3,10,'Compile Kernel Linux','',1,'58,59,60,61,62',1,NULL,1702492959),(17,3,11,'Remastering Ubuntu','',1,'63,64,65,66,67',1,NULL,1702492959),(18,3,12,'Compile OpenWRT untuk Router','',1,'68,69,70,71,72,73,74,75,76,77,78',1,NULL,1702492959),(19,3,13,'Belajar Membuat Kernel Modul','',1,'79,80,81,82,83',1,NULL,1702492960),(20,3,14,'Pengaturan Kernel Scheduler Sistem Operasi','',1,'84,85,86,87,88,89,90,91',1,NULL,1702492960),(21,3,15,'Pengaturan I/O & Memory Scheduler Sistem Operasi','',1,'92,93,94,95,96',1,NULL,1702492960),(22,3,16,'Monitoring Kerja Sistem Operasi','',1,'97,98,99,100',1,NULL,1702492960),(23,3,17,'Benchmark Sistem Operasi','',1,'101,102,103,104,105,106,107,108,109,110',1,NULL,1702492961),(24,3,18,'Membuat Sistem Operasi Android','',1,'111,112,113,114,115,116,117',1,NULL,1702492961),(25,3,19,'Ujian Akhir Semester (UAS)','',1,'118,119,120,121,122',1,NULL,1702492961),(26,4,0,'','<p></p><p><span data-mce-style=\"font-size: x-large;\"><strong><b>UNTUK MEMPEROLEH NILAI A</b><br><span style=\"font-weight: normal;\"></span><ul><li><span style=\"font-weight: normal;\">Pengajar akan lebih suka kalau anda MENULIS BUKU untuk A, daripada mengerjakan UJIAN.<br></span></li><li><span style=\"font-weight: normal;\">Pilih salah satu topik dari Kuliah Ini.<br></span></li><li><span style=\"font-weight: normal;\">Halaman minimal 150 halaman\nukuran&nbsp; A4</span></li><li><span style=\"font-weight: normal;\">Nilai 100 di semua KUIS, UTS, UAS (di set manual).</span></li><li><span style=\"font-weight: normal;\">Diskusi dengan pengajar via email onno@indo.net.id untuk di bimbing menulis buku-nya.</span></li><li><span style=\"font-weight: normal;\">YOUTUBE: https://www.youtube.com/watch?v=DFh_Q4kaUWs</span><br></li></ul>\n<b>UJIAN\n</b><ul>\n<li><span style=\"font-weight: normal;\"><span>Bagi yang tidak berani menulis buku, silahkan mengerjakan ujian.</span></span></li><li><span style=\"font-weight: normal;\">Kerjakan semua kuis, jika belum memperoleh nilai 100, ulangi sampai dapat 100.</span></li><li><span style=\"font-weight: normal;\">Kerjakan UTS 100 soal, terus menerus, sampai waktu dosen harus memasukan nilai.</span></li><li><span style=\"font-weight: normal;\">Kerjakan UAS 100 soal, terus menerus, sampai waktu dosen harus memasukan nilai.</span></li><li><span style=\"font-weight: normal;\">Semua KUIS / UTS / UAS bisa di kerjakan kapan saja, dimana saja, selama kuliah berlangsung sampai dosen harus memasukan nilai.</span><br></li></ul></strong></span></p><b>NILAI</b><br><ul><li>Quiz&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 30%<br></li><li>UTS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25%<br></li><li>UAS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 40%<br></li><li>ABSEN&nbsp;&nbsp;&nbsp; 5%<br></li></ul><p></p>',1,'123',1,'{\"op\":\"&\",\"c\":[],\"showc\":[]}',1702493837),(27,4,1,'Pendahuluan / Konsep TCP/IP / Sejarah Internet','',1,'124,125,126,127,128,129,130',1,NULL,1702493837),(28,4,2,'Command Line & Wireshark','<p>Kuliah Sistem Operasi akan membahas lebih dalam tentang berbagai Tip mengoperasi Sistem Operasi (khususnya Server).<br></p>',1,'131,132,133,134,135,136,137,138',1,'{\"op\":\"&\",\"c\":[],\"showc\":[]}',1702493838),(29,4,3,'SImulator Jaringan','',1,'139,140,141,142,143,144,145,146,147,148,149,150,151',1,NULL,1702493838),(30,4,4,'Perangkat Keras Jaringan & Data Link Layer','',1,'152,153,154,155,156,157,158,159,160',1,NULL,1702493838),(31,4,5,'Perangkat WiFi / Wireless Internet',NULL,0,'161,162,163,164,165,166,167,168,169,170,171',1,NULL,1702493839),(32,4,6,'Network Layer IPv4',NULL,0,'172,173,174,175,176,177,178,179',1,NULL,1702493839),(33,4,7,'Transport Layer',NULL,0,'180,181,182,183,184,185',1,NULL,1702493839),(34,4,8,'Domain Name System & Pengaturan Internet',NULL,0,'186,187,188,189,190,191,192,193,194,195,196,197',1,NULL,1702493839),(35,4,9,'Routing & NAT',NULL,0,'198,199,200,201,202,203,204,205,206,207,208,209,210',1,NULL,1702493840),(36,4,10,'Ujian Tengah Semester (UTS)','',1,'211',1,NULL,1702493840),(37,4,11,'Web / Content Management System','',1,'212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227',1,NULL,1702493840),(38,4,12,'e-mail / SMTP / POP3 / IMAP / Webmail','',1,'228,229,230,231,232,233,234',1,NULL,1702493840),(39,4,13,'VoIP / Internet Telepon','',1,'235,236,237,238,239,240,241',1,NULL,1702493840),(40,4,14,'Streaming Multimedia','',1,'242,243,244,245,246,247,248,249,250',1,NULL,1702493841),(41,4,15,'IPv6','<p>Kuliah IPv6 akan membahas lebih dalam tentang IPv6<br></p>',1,'251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266',1,'{\"op\":\"&\",\"c\":[],\"showc\":[]}',1702493841),(42,4,16,'Hacking','<p>Kuliah Cyber Security akan membahas teknik HACKING lebih dalam lagi.<br></p>',1,'267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284',1,'{\"op\":\"&\",\"c\":[],\"showc\":[]}',1702493842),(43,4,17,'Keamanan Jaringan','<p><p>Kuliah Cyber Security akan membahas teknik NETWORK SECURITY lebih dalam lagi.<br></p><br></p>',1,'285,286,287,288,289,290,291,292,293,294,295,296,297',1,'{\"op\":\"&\",\"c\":[],\"showc\":[]}',1702493842),(44,4,18,'Basic Data Security','',1,'298,299,300,301,302,303,304,305,306,307,308',1,NULL,1702493842),(45,4,19,'Pemrograman Jaringan & IoT','<p>Kuliah IoT akan membahas lebih dalam tentang pemrogramman jaringan &amp; IoT.<br></p>',1,'309,310,311,312,313,314,315,316,317,318,319',1,'{\"op\":\"&\",\"c\":[],\"showc\":[]}',1702493843),(46,4,20,'Network Management & Benchmarking','',1,'320,321,322,323,324,325,326,327,328,329',1,NULL,1702493843),(47,4,21,'Ujian Akhir Semester (UAS)','',1,'330',1,NULL,1702493843),(48,5,0,'Advanced Networking and Cyber Security','<h1>UNTUK MEMPEROLEH NILAI A</h1>\n<ul>\n<li>Pengajar akan lebih suka kalau anda MENULIS BUKU untuk A, daripada mengerjakan UJIAN.<br></li><li>Pilih salah satu topik dari Advanced Netowrking dan Cyber Security</li><li>Halaman minimal 150 halaman\nukuran&nbsp; A4</li><li>Nilai 100 di semua KUIS, UTS, UAS (di set manual).</li><li>Diskusi dengan pengajar via email onno@indo.net.id untuk di bimbing menulis buku-nya.</li><li>YOUTUBE: https://www.youtube.com/watch?v=DFh_Q4kaUWs<br></li></ul>\n<h1>UJIAN<br></h1>\n<ul>\n<li></li><li>Bagi yang tidak berani menulis buku, silahkan mengerjakan ujian.<br></li><li>Kerjakan semua kuis, jika nilai belum 100, kerjakan lagi sampai anda memperoleh nilai 100.</li>\n<li>Kerjakan UTS, lakukan berulang-ulang sampai dosen harus memasukan nilai di akhir semester.</li>\n<li>Kerjakan UAS, lakukan berulang-ulang sampai dosen harus memasukan nilai di akhir semester.</li><br></ul><p><b></b></p><h1><b>PRASYARAT</b></h1><p></p><ul><li>Menguasai ilmu / pengetahuan tentang Sistem Operasi Linux https://lms.onnocenter.or.id/moodle/course/view.php?id=3<br></li><li>Menguasai ilmu / pengetahuan tentang Jaringan Komputer Dasar (SMK atau S1) https://lms.onnocenter.or.id/moodle/course/view.php?id=32</li><li>Mengetahui tentang Internet of Things (IoT) https://lms.onnocenter.or.id/moodle/course/view.php?id=152</li><li>Mengetahui tentang Internet Safety https://lms.onnocenter.or.id/moodle/course/view.php?id=554<br></li></ul><ul>\n</ul>',1,'571',1,'{\"op\":\"&\",\"c\":[],\"showc\":[]}',1579658183),(49,5,1,'KONSEP TCP/IP','',1,'331,332,333,334,335,336,337,338,339',1,NULL,1702494487),(50,5,2,'SIMULATOR JARINGAN','',1,'340,341,342,343,344,345,346,347,348',1,NULL,1702494487),(51,5,3,'IPv6','',1,'349,350,351,352,353,354,355,356,357,358,359,360,361,362',1,NULL,1702494488),(52,5,4,'ROUTING','',1,'363,364,365,366,367,368,369,370,371,372,373,374',1,NULL,1702494488),(53,5,5,'VoIP and OpenBTS','',1,'375,376,377,378,379,380',1,NULL,1702494488),(54,5,6,'NETWORK BENCHMARKING','',1,'381,382,383,384,385,386,387',1,NULL,1702494489),(55,5,7,'NETWORK PROGRAMMING','',1,'388,389,390,391,392,393,394',1,NULL,1702494489),(56,5,8,'INTRO HACKING','',1,'395,396,397,398,399,400,401,402,403,404',1,NULL,1702494489),(57,5,9,'Persiapan untuk Hacking','',1,'405,406,407,408,409,410,411,412,413,414,415,416,417',1,NULL,1702494490),(58,5,10,'FOOT PRINTING (INTELEJEN)','',1,'418,419,420,421,422,423,424,425,426',1,NULL,1702494490),(59,5,11,'SNIFFING','',1,'427,428,429,430,431,432,433,434,435',1,NULL,1702494490),(60,5,12,'HACKING WIRELESS',NULL,0,'436,437,438,439,440,441,442,443,444,445,446,447,448,449,450',1,NULL,1702494491),(61,5,13,'ATTACK PASSWORD',NULL,0,'451,452,453,454,455,456,457,458,459,460,461',1,NULL,1702494491),(62,5,14,'ATTACK DATABASE SQL',NULL,0,'462,463,464,465,466,467,468',1,NULL,1702494491),(63,5,15,'DOMAIN NAME SYSTEM and DEFACE WEB',NULL,0,'469,470,471,472,473,474,475,476,477,478,479,480,481',1,NULL,1702494492),(64,5,16,'ATTACK FILE SHARING',NULL,0,'482,483,484,485,486,487',1,NULL,1702494492),(65,5,17,'UTS','',1,'488',1,NULL,1702494492),(66,5,18,'Gambaran Umum Network Security','',1,'489,490,491,492,493',1,NULL,1702494493),(67,5,19,'Dasar Pengamanan Server','',1,'494,495,496,497,498,499,500,501,502,503',1,NULL,1702494493),(68,5,20,'Firewall','',1,'504,505,506,507,508,509,510',1,NULL,1702494493),(69,5,21,'Secure Shell & Secure Copy','',1,'511,512,513,514,515,516,517,518,519',1,NULL,1702494494),(70,5,22,'Virtual Private Network (VPN)','',1,'520,521,522,523',1,NULL,1702494494),(71,5,23,'Web Application Firewall','',1,'524,525,526,527,528,529',1,NULL,1702494494),(72,5,24,'Pertahanan Host','',1,'530,531,532,533,534,535,536,537,538,539,540',1,NULL,1702494494),(73,5,25,'Intrusion Detection System (IDS)','',1,'541,542,543,544,545',1,NULL,1702494494),(74,5,26,'Basic Data Security','',1,'546,547,548,549,550,551,552,553,554,555,556',1,NULL,1702494495),(75,5,27,'Forensik','',1,'557,558,559',1,NULL,1702494495),(76,5,28,'Information Security Management System','',1,'560,561,562,563,564,565',1,NULL,1702494495),(77,5,29,'UAS','',1,'566,567,568,569,570',1,NULL,1702494496),(78,1,1,NULL,'',1,'',1,NULL,1702521015);
/*!40000 ALTER TABLE `mdl_course_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_customfield_category`
--

DROP TABLE IF EXISTS `mdl_customfield_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_customfield_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `descriptionformat` bigint DEFAULT NULL,
  `sortorder` bigint DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `itemid` bigint NOT NULL DEFAULT '0',
  `contextid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_custcate_comareitesor_ix` (`component`,`area`,`itemid`,`sortorder`),
  KEY `mdl_custcate_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='core_customfield category table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_customfield_category`
--

LOCK TABLES `mdl_customfield_category` WRITE;
/*!40000 ALTER TABLE `mdl_customfield_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_customfield_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_customfield_data`
--

DROP TABLE IF EXISTS `mdl_customfield_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_customfield_data` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fieldid` bigint NOT NULL,
  `instanceid` bigint NOT NULL,
  `intvalue` bigint DEFAULT NULL,
  `decvalue` decimal(10,5) DEFAULT NULL,
  `shortcharvalue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `charvalue` varchar(1333) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `valueformat` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `contextid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_custdata_insfie_uix` (`instanceid`,`fieldid`),
  KEY `mdl_custdata_fieint_ix` (`fieldid`,`intvalue`),
  KEY `mdl_custdata_fiesho_ix` (`fieldid`,`shortcharvalue`),
  KEY `mdl_custdata_fiedec_ix` (`fieldid`,`decvalue`),
  KEY `mdl_custdata_fie_ix` (`fieldid`),
  KEY `mdl_custdata_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='core_customfield data table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_customfield_data`
--

LOCK TABLES `mdl_customfield_data` WRITE;
/*!40000 ALTER TABLE `mdl_customfield_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_customfield_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_customfield_field`
--

DROP TABLE IF EXISTS `mdl_customfield_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_customfield_field` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `descriptionformat` bigint DEFAULT NULL,
  `sortorder` bigint DEFAULT NULL,
  `categoryid` bigint DEFAULT NULL,
  `configdata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_custfiel_catsor_ix` (`categoryid`,`sortorder`),
  KEY `mdl_custfiel_cat_ix` (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='core_customfield field table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_customfield_field`
--

LOCK TABLES `mdl_customfield_field` WRITE;
/*!40000 ALTER TABLE `mdl_customfield_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_customfield_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data`
--

DROP TABLE IF EXISTS `mdl_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_data` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introformat` smallint NOT NULL DEFAULT '0',
  `comments` smallint NOT NULL DEFAULT '0',
  `timeavailablefrom` bigint NOT NULL DEFAULT '0',
  `timeavailableto` bigint NOT NULL DEFAULT '0',
  `timeviewfrom` bigint NOT NULL DEFAULT '0',
  `timeviewto` bigint NOT NULL DEFAULT '0',
  `requiredentries` int NOT NULL DEFAULT '0',
  `requiredentriestoview` int NOT NULL DEFAULT '0',
  `maxentries` int NOT NULL DEFAULT '0',
  `rssarticles` smallint NOT NULL DEFAULT '0',
  `singletemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `listtemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `listtemplateheader` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `listtemplatefooter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `addtemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `rsstemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `rsstitletemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `csstemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `jstemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `asearchtemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `approval` smallint NOT NULL DEFAULT '0',
  `manageapproved` smallint NOT NULL DEFAULT '1',
  `scale` bigint NOT NULL DEFAULT '0',
  `assessed` bigint NOT NULL DEFAULT '0',
  `assesstimestart` bigint NOT NULL DEFAULT '0',
  `assesstimefinish` bigint NOT NULL DEFAULT '0',
  `defaultsort` bigint NOT NULL DEFAULT '0',
  `defaultsortdir` smallint NOT NULL DEFAULT '0',
  `editany` smallint NOT NULL DEFAULT '0',
  `notification` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `completionentries` bigint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_data_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='all database activities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data`
--

LOCK TABLES `mdl_data` WRITE;
/*!40000 ALTER TABLE `mdl_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_content`
--

DROP TABLE IF EXISTS `mdl_data_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_data_content` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fieldid` bigint NOT NULL DEFAULT '0',
  `recordid` bigint NOT NULL DEFAULT '0',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `content1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `content2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `content3` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `content4` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_datacont_rec_ix` (`recordid`),
  KEY `mdl_datacont_fie_ix` (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='the content introduced in each record/fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_content`
--

LOCK TABLES `mdl_data_content` WRITE;
/*!40000 ALTER TABLE `mdl_data_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_fields`
--

DROP TABLE IF EXISTS `mdl_data_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_data_fields` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dataid` bigint NOT NULL DEFAULT '0',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `param1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `param2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `param3` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `param4` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `param5` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `param6` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `param7` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `param8` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `param9` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `param10` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_datafiel_typdat_ix` (`type`,`dataid`),
  KEY `mdl_datafiel_dat_ix` (`dataid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='every field available';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_fields`
--

LOCK TABLES `mdl_data_fields` WRITE;
/*!40000 ALTER TABLE `mdl_data_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_records`
--

DROP TABLE IF EXISTS `mdl_data_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_data_records` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL DEFAULT '0',
  `groupid` bigint NOT NULL DEFAULT '0',
  `dataid` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `approved` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_datareco_dat_ix` (`dataid`),
  KEY `mdl_datareco_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='every record introduced';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_records`
--

LOCK TABLES `mdl_data_records` WRITE;
/*!40000 ALTER TABLE `mdl_data_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_editor_atto_autosave`
--

DROP TABLE IF EXISTS `mdl_editor_atto_autosave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_editor_atto_autosave` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `elementid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `contextid` bigint NOT NULL,
  `pagehash` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `userid` bigint NOT NULL,
  `drafttext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `draftid` bigint DEFAULT NULL,
  `pageinstance` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_editattoauto_eleconuse_uix` (`elementid`,`contextid`,`userid`,`pagehash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Draft text that is auto-saved every 5 seconds while an edito';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_editor_atto_autosave`
--

LOCK TABLES `mdl_editor_atto_autosave` WRITE;
/*!40000 ALTER TABLE `mdl_editor_atto_autosave` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_editor_atto_autosave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol`
--

DROP TABLE IF EXISTS `mdl_enrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `enrol` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `status` bigint NOT NULL DEFAULT '0',
  `courseid` bigint NOT NULL,
  `sortorder` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `enrolperiod` bigint DEFAULT '0',
  `enrolstartdate` bigint DEFAULT '0',
  `enrolenddate` bigint DEFAULT '0',
  `expirynotify` tinyint(1) DEFAULT '0',
  `expirythreshold` bigint DEFAULT '0',
  `notifyall` tinyint(1) DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cost` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `roleid` bigint DEFAULT '0',
  `customint1` bigint DEFAULT NULL,
  `customint2` bigint DEFAULT NULL,
  `customint3` bigint DEFAULT NULL,
  `customint4` bigint DEFAULT NULL,
  `customint5` bigint DEFAULT NULL,
  `customint6` bigint DEFAULT NULL,
  `customint7` bigint DEFAULT NULL,
  `customint8` bigint DEFAULT NULL,
  `customchar1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `customchar2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `customchar3` varchar(1333) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `customdec1` decimal(12,7) DEFAULT NULL,
  `customdec2` decimal(12,7) DEFAULT NULL,
  `customtext1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `customtext2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `customtext3` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `customtext4` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_enro_enr_ix` (`enrol`),
  KEY `mdl_enro_cou_ix` (`courseid`),
  KEY `mdl_enro_rol_ix` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Instances of enrolment plugins used in courses, fields marke';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol`
--

LOCK TABLES `mdl_enrol` WRITE;
/*!40000 ALTER TABLE `mdl_enrol` DISABLE KEYS */;
INSERT INTO `mdl_enrol` VALUES (1,'manual',0,2,0,NULL,0,0,0,0,86400,0,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1702490461,1702490461),(2,'guest',1,2,1,NULL,0,0,0,0,0,0,'',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1702490461,1702490461),(3,'self',1,2,2,NULL,0,0,0,0,86400,0,NULL,NULL,NULL,5,0,0,0,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1702490461,1702490461),(4,'manual',0,3,0,NULL,0,0,0,0,86400,0,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1702492956,1702492956),(5,'guest',1,3,1,NULL,0,0,0,0,0,0,'',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1702492956,1702492956),(6,'self',1,3,2,NULL,0,0,0,0,86400,0,NULL,NULL,NULL,5,0,0,0,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1702492956,1702492956),(7,'manual',0,4,0,NULL,0,0,0,0,86400,0,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1702493837,1702493837),(8,'guest',1,4,1,NULL,0,0,0,0,0,0,'',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1702493837,1702493837),(9,'self',1,4,2,NULL,0,0,0,0,86400,0,NULL,NULL,NULL,5,0,0,0,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1702493837,1702493837),(10,'manual',0,5,0,NULL,0,0,0,0,86400,0,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1702494487,1702494487),(11,'guest',1,5,1,NULL,0,0,0,0,0,0,'',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1702494487,1702494487),(12,'self',1,5,2,NULL,0,0,0,0,86400,0,NULL,NULL,NULL,5,0,0,0,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1702494487,1702494487);
/*!40000 ALTER TABLE `mdl_enrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_flatfile`
--

DROP TABLE IF EXISTS `mdl_enrol_flatfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_flatfile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `roleid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `courseid` bigint NOT NULL,
  `timestart` bigint NOT NULL DEFAULT '0',
  `timeend` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_enroflat_cou_ix` (`courseid`),
  KEY `mdl_enroflat_use_ix` (`userid`),
  KEY `mdl_enroflat_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='enrol_flatfile table retrofitted from MySQL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_flatfile`
--

LOCK TABLES `mdl_enrol_flatfile` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_flatfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_flatfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_app_registration`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_app_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_app_registration` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `platformid` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `clientid` varchar(1333) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `uniqueid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `platformclienthash` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `platformuniqueidhash` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `authenticationrequesturl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `jwksurl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `accesstokenurl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltiappregi_uni_uix` (`uniqueid`),
  UNIQUE KEY `mdl_enroltiappregi_pla_uix` (`platformclienthash`),
  UNIQUE KEY `mdl_enroltiappregi_pla2_uix` (`platformuniqueidhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Details of each application that has been registered with th';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_app_registration`
--

LOCK TABLES `mdl_enrol_lti_app_registration` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_app_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_app_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_context`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_context` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contextid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `ltideploymentid` bigint NOT NULL,
  `type` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enrolticont_lticon_uix` (`ltideploymentid`,`contextid`),
  KEY `mdl_enrolticont_lti_ix` (`ltideploymentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Each row represents a context in the platform, where resourc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_context`
--

LOCK TABLES `mdl_enrol_lti_context` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_context` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_deployment`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_deployment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `deploymentid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `platformid` bigint NOT NULL,
  `legacyconsumerkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltidepl_pladep_uix` (`platformid`,`deploymentid`),
  KEY `mdl_enroltidepl_pla_ix` (`platformid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Each row represents a deployment of a tool within a platform';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_deployment`
--

LOCK TABLES `mdl_enrol_lti_deployment` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_deployment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_consumer`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_consumer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `consumerkey256` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `consumerkey` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `secret` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `ltiversion` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `consumername` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `consumerversion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `consumerguid` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `profile` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `toolproxy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `protected` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `enablefrom` bigint DEFAULT NULL,
  `enableuntil` bigint DEFAULT NULL,
  `lastaccess` bigint DEFAULT NULL,
  `created` bigint NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltilti2cons_con_uix` (`consumerkey256`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='LTI consumers interacting with moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_consumer`
--

LOCK TABLES `mdl_enrol_lti_lti2_consumer` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_context`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_context` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `consumerid` bigint NOT NULL,
  `lticontextkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created` bigint NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2cont_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Information about a specific LTI contexts from the consumers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_context`
--

LOCK TABLES `mdl_enrol_lti_lti2_context` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_context` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_nonce`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_nonce` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `consumerid` bigint NOT NULL,
  `value` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `expires` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2nonc_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Nonce used for authentication between moodle and a consumer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_nonce`
--

LOCK TABLES `mdl_enrol_lti_lti2_nonce` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_resource_link`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_resource_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_resource_link` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contextid` bigint DEFAULT NULL,
  `consumerid` bigint DEFAULT NULL,
  `ltiresourcelinkkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `primaryresourcelinkid` bigint DEFAULT NULL,
  `shareapproved` tinyint(1) DEFAULT NULL,
  `created` bigint NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2resolink_con_ix` (`contextid`),
  KEY `mdl_enroltilti2resolink_pri_ix` (`primaryresourcelinkid`),
  KEY `mdl_enroltilti2resolink_co2_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Link from the consumer to the tool';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_resource_link`
--

LOCK TABLES `mdl_enrol_lti_lti2_resource_link` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_resource_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_resource_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_share_key`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_share_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_share_key` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sharekey` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `resourcelinkid` bigint NOT NULL,
  `autoapprove` tinyint(1) NOT NULL,
  `expires` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltilti2sharkey_sha_uix` (`sharekey`),
  UNIQUE KEY `mdl_enroltilti2sharkey_res_uix` (`resourcelinkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Resource link share key';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_share_key`
--

LOCK TABLES `mdl_enrol_lti_lti2_share_key` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_share_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_share_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_tool_proxy`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_tool_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_tool_proxy` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `toolproxykey` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `consumerid` bigint NOT NULL,
  `toolproxy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created` bigint NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltilti2toolprox_to_uix` (`toolproxykey`),
  KEY `mdl_enroltilti2toolprox_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='A tool proxy between moodle and a consumer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_tool_proxy`
--

LOCK TABLES `mdl_enrol_lti_lti2_tool_proxy` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_tool_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_tool_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_user_result`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_user_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_user_result` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `resourcelinkid` bigint NOT NULL,
  `ltiuserkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `ltiresultsourcedid` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `created` bigint NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2userresu_res_ix` (`resourcelinkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Results for each user for each resource link';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_user_result`
--

LOCK TABLES `mdl_enrol_lti_lti2_user_result` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_user_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_user_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_resource_link`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_resource_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_resource_link` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `resourcelinkid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `ltideploymentid` bigint NOT NULL,
  `resourceid` bigint NOT NULL,
  `lticontextid` bigint DEFAULT NULL,
  `lineitemsservice` varchar(1333) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lineitemservice` varchar(1333) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lineitemscope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `resultscope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `scorescope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `contextmembershipsurl` varchar(1333) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nrpsserviceversions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltiresolink_reslti_uix` (`resourcelinkid`,`ltideploymentid`),
  KEY `mdl_enroltiresolink_lti_ix` (`ltideploymentid`),
  KEY `mdl_enroltiresolink_lti2_ix` (`lticontextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Each row represents a resource link for a platform and deplo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_resource_link`
--

LOCK TABLES `mdl_enrol_lti_resource_link` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_resource_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_resource_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_tool_consumer_map`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_tool_consumer_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_tool_consumer_map` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `toolid` bigint NOT NULL,
  `consumerid` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltitoolconsmap_too_ix` (`toolid`),
  KEY `mdl_enroltitoolconsmap_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Table that maps the published tool to tool consumers.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_tool_consumer_map`
--

LOCK TABLES `mdl_enrol_lti_tool_consumer_map` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_tool_consumer_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_tool_consumer_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_tools`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_tools` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `enrolid` bigint NOT NULL,
  `contextid` bigint NOT NULL,
  `ltiversion` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'LTI-1p3',
  `institution` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `lang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'en',
  `timezone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '99',
  `maxenrolled` bigint NOT NULL DEFAULT '0',
  `maildisplay` tinyint NOT NULL DEFAULT '2',
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `gradesync` tinyint(1) NOT NULL DEFAULT '0',
  `gradesynccompletion` tinyint(1) NOT NULL DEFAULT '0',
  `membersync` tinyint(1) NOT NULL DEFAULT '0',
  `membersyncmode` tinyint(1) NOT NULL DEFAULT '0',
  `roleinstructor` bigint NOT NULL,
  `rolelearner` bigint NOT NULL,
  `secret` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `uuid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `provisioningmodelearner` tinyint DEFAULT NULL,
  `provisioningmodeinstructor` tinyint DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltitool_uui_uix` (`uuid`),
  KEY `mdl_enroltitool_enr_ix` (`enrolid`),
  KEY `mdl_enroltitool_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='List of tools provided to the remote system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_tools`
--

LOCK TABLES `mdl_enrol_lti_tools` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_tools` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_user_resource_link`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_user_resource_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_user_resource_link` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ltiuserid` bigint NOT NULL,
  `resourcelinkid` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltiuserresolink_lt_uix` (`ltiuserid`,`resourcelinkid`),
  KEY `mdl_enroltiuserresolink_lti_ix` (`ltiuserid`),
  KEY `mdl_enroltiuserresolink_res_ix` (`resourcelinkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Join table mapping users to resource links as this is a many';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_user_resource_link`
--

LOCK TABLES `mdl_enrol_lti_user_resource_link` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_user_resource_link` DISABLE KEYS */;
