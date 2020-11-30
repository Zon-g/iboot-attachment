-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: boot
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `CALENDAR_NAME` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `CRON_EXPRESSION` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `ENTRY_ID` varchar(95) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `FIRED_TIME` bigint NOT NULL,
  `SCHED_TIME` bigint NOT NULL,
  `PRIORITY` int NOT NULL,
  `STATE` varchar(16) COLLATE utf8mb4_general_ci NOT NULL,
  `JOB_NAME` varchar(190) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `JOB_GROUP` varchar(190) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `JOB_NAME` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `JOB_GROUP` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `IS_DURABLE` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `LOCK_NAME` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('quartzScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint NOT NULL,
  `CHECKIN_INTERVAL` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `REPEAT_COUNT` bigint NOT NULL,
  `REPEAT_INTERVAL` bigint NOT NULL,
  `TIMES_TRIGGERED` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `STR_PROP_1` varchar(512) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `STR_PROP_2` varchar(512) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `STR_PROP_3` varchar(512) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `INT_PROP_1` int DEFAULT NULL,
  `INT_PROP_2` int DEFAULT NULL,
  `LONG_PROP_1` bigint DEFAULT NULL,
  `LONG_PROP_2` bigint DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `JOB_NAME` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `JOB_GROUP` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint DEFAULT NULL,
  `PREV_FIRE_TIME` bigint DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `START_TIME` bigint NOT NULL,
  `END_TIME` bigint DEFAULT NULL,
  `CALENDAR_NAME` varchar(190) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MISFIRE_INSTR` smallint DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_department`
--

DROP TABLE IF EXISTS `tb_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_department` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门名称',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门联系电话',
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门联系地址',
  `create_time` datetime NOT NULL COMMENT '部门记录创建时间',
  `modify_time` datetime NOT NULL COMMENT '部门记录修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_department`
--

LOCK TABLES `tb_department` WRITE;
/*!40000 ALTER TABLE `tb_department` DISABLE KEYS */;
INSERT INTO `tb_department` VALUES (1,'Default','XXX-XXXXXX','XXX省XXX市XXX区XXX街XXX大厦','2020-11-30 22:27:10','2020-11-30 22:27:10');
/*!40000 ALTER TABLE `tb_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_logger`
--

DROP TABLE IF EXISTS `tb_logger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_logger` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `user` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名称',
  `method` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '当前操作方法',
  `params` varchar(10000) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '方法实参',
  `operation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL COMMENT '当前操作类型',
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '当前操作描述',
  `create_time` datetime NOT NULL COMMENT '记录创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统操作日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_logger`
--

LOCK TABLES `tb_logger` WRITE;
/*!40000 ALTER TABLE `tb_logger` DISABLE KEYS */;
INSERT INTO `tb_logger` VALUES (1,'admin','org.project.controller.LoggerController.DeleteAll','{}','DELETE','清空所有日志','2020-11-30 22:35:29');
/*!40000 ALTER TABLE `tb_logger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mail`
--

DROP TABLE IF EXISTS `tb_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_mail` (
  `id` bigint NOT NULL COMMENT '邮件信息表主键',
  `fromName` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '发件人姓名',
  `from` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '发件人邮箱',
  `to` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '收件人邮箱',
  `toName` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '收件人姓名',
  `subject` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮件主题',
  `text` varchar(10000) COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮件内容',
  `scheduled` int DEFAULT '0' COMMENT '是否是定时任务, 1表示定时任务, 0表示非定时任务',
  `schedule_time` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '定时任务时间',
  `create_time` datetime NOT NULL COMMENT '邮件记录创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mail`
--

LOCK TABLES `tb_mail` WRITE;
/*!40000 ALTER TABLE `tb_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_menu`
--

DROP TABLE IF EXISTS `tb_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '上级菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单/按钮名称',
  `url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '菜单URL',
  `perms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '菜单权限',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '图标',
  `type` int NOT NULL COMMENT '菜单类型, 0表示菜单, 1表示按钮',
  `order_num` int DEFAULT '-1' COMMENT '菜单排序',
  `create_time` datetime NOT NULL COMMENT '权限记录创建时间',
  `modify_time` datetime NOT NULL COMMENT '权限记录修改时间',
  `status` int DEFAULT '1' COMMENT '可用状态, 0表示不可用, 1表示可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu`
--

LOCK TABLES `tb_menu` WRITE;
/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
INSERT INTO `tb_menu` VALUES (1,0,'系统管理','','','el-icon-setting',0,1,'2020-10-12 19:45:10','2020-10-12 19:45:10',1),(2,0,'开发管理','','','el-icon-document',0,2,'2020-11-21 15:46:39','2020-11-21 15:46:55',1),(3,0,'运维管理','','','el-icon-s-claim',0,3,'2020-10-12 19:45:10','2020-11-21 15:47:01',1),(4,0,'基本功能','','','el-icon-s-tools',0,4,'2020-11-21 15:46:15','2020-11-21 15:46:15',1),(5,0,'组件管理','','','el-icon-coin',0,5,'2020-10-12 19:45:10','2020-11-21 15:47:44',1),(6,0,'多级菜单','','','el-icon-circle-plus-outline',0,10,'2020-10-12 19:45:10','2020-11-21 15:47:50',1),(7,1,'用户管理','/user','','el-icon-user',0,1,'2020-10-12 19:51:14','2020-10-23 17:31:54',1),(8,1,'部门管理','/department','','el-icon-tickets',0,2,'2020-10-12 19:51:14','2020-10-21 18:16:12',1),(9,1,'权限管理','/authority','','el-icon-s-custom',0,3,'2020-10-12 19:51:14','2020-10-23 17:17:44',1),(10,1,'角色管理','/role','','el-icon-user-solid',0,4,'2020-10-12 19:51:14','2020-10-23 16:48:52',1),(11,2,'MySQL监控','/SQL','','el-icon-loading',0,1,'2020-10-12 19:56:56','2020-11-21 15:48:30',1),(12,2,'Redis监控','/redis','','el-icon-view',0,2,'2020-10-12 19:56:56','2020-11-21 15:48:37',1),(13,2,'Swagger文档','/swagger','','el-icon-document',0,3,'2020-10-12 19:56:56','2020-11-21 15:48:43',1),(14,2,'Knife4j文档','/knife4j','','el-icon-document-checked',0,4,'2020-10-12 19:56:56','2020-11-21 15:48:49',1),(15,2,'Actuator监控','/actuator','','el-icon-document-checked',0,8,'2020-11-18 19:48:14','2020-11-21 15:48:58',1),(16,3,'系统备份','/backup','','el-icon-paperclip',0,1,'2020-10-12 19:56:56','2020-11-21 15:53:51',1),(17,3,'操作日志','/logger','','el-icon-document',0,2,'2020-10-30 18:33:08','2020-11-21 15:53:59',1),(18,3,'附件管理','/attachment','','el-icon-picture-outline',0,3,'2020-10-31 16:18:06','2020-11-21 15:54:03',1),(19,3,'定时任务','/job','','el-icon-alarm-clock',0,4,'2020-11-20 16:34:23','2020-11-21 15:54:09',1),(20,4,'邮件管理','/mail','','el-icon-postcard',0,1,'2020-11-21 15:53:27','2020-11-21 15:54:26',1),(21,5,'Echarts 图表库','/chart','','el-icon-date',0,1,'2020-10-12 19:58:38','2020-10-21 18:17:11',1),(22,5,'Element 图标库','/icon','','el-icon-picture',0,2,'2020-10-12 19:58:38','2020-10-21 18:17:15',1),(23,6,'二级菜单1','/menu','','el-icon-circle-plus-outline',0,1,'2020-10-12 20:00:22','2020-10-12 20:00:22',1),(24,6,'二级菜单2','/menu','','el-icon-circle-plus-outline',0,2,'2020-10-12 20:00:22','2020-10-12 20:00:22',1),(25,7,'添加用户','','user:add','el-icon-plus',1,1,'2020-10-21 17:57:16','2020-10-21 18:00:29',1),(26,7,'下载记录','','user:download','el-icon-download',1,2,'2020-10-21 17:58:02','2020-10-21 18:00:33',1),(27,7,'修改用户','','user:update','el-icon-edit',1,3,'2020-10-21 17:58:50','2020-10-21 18:00:38',1),(28,7,'删除用户','','user:delete','el-icon-delete',1,4,'2020-10-21 17:59:22','2020-10-23 17:25:55',1),(29,7,'配置用户','','user:config','el-icon-s-tools',1,5,'2020-10-21 18:00:00','2020-10-23 17:25:59',1),(30,8,'添加部门','','dept:add','el-icon-plus',1,1,'2020-10-21 18:03:30','2020-10-21 18:03:30',1),(31,8,'下载记录','','dept:download','el-icon-download',1,2,'2020-10-21 18:04:08','2020-10-21 18:04:08',1),(32,8,'修改部门','','dept:update','el-icon-edit',1,3,'2020-10-21 18:06:30','2020-10-21 18:06:30',1),(33,8,'删除部门','','dept:delete','el-icon-delete',1,4,'2020-10-21 18:06:58','2020-10-21 18:06:58',1),(34,9,'添加权限','','menu:add','el-icon-plus',1,1,'2020-10-21 18:12:59','2020-10-21 18:12:59',1),(35,9,'下载记录','','menu:download','el-icon-download',1,2,'2020-10-21 18:14:03','2020-10-21 18:14:03',1),(36,9,'修改权限','','menu:update','el-icon-edit',1,3,'2020-10-21 18:15:03','2020-10-21 18:15:03',1),(37,9,'删除权限','','menu:delete','el-icon-delete',1,4,'2020-10-21 18:15:31','2020-10-21 18:15:31',1),(38,10,'添加角色','','role:add','el-icon-plus',1,1,'2020-10-21 18:08:39','2020-10-21 18:08:39',1),(39,10,'下载记录','','role:download','el-icon-download',1,2,'2020-10-21 18:09:07','2020-10-21 18:09:07',1),(40,10,'修改角色','','role:update','el-icon-edit',1,3,'2020-10-21 18:11:23','2020-10-21 18:11:23',1),(41,10,'删除角色','','role:delete','el-icon-delete',1,4,'2020-10-21 18:11:43','2020-10-21 18:11:43',1),(42,10,'配置角色','','role:config','el-icon-s-tools',1,5,'2020-10-21 18:12:11','2020-10-21 18:12:11',1),(43,12,'删除缓存','','cache:delete','el-icon-delete',1,1,'2020-11-20 20:59:56','2020-11-20 20:59:56',1),(44,12,'修改缓存','','cache:update','el-icon-edit',1,2,'2020-11-20 21:00:26','2020-11-20 21:00:26',1),(45,16,'备份数据','','backup:backup','el-icon-document-copy',1,1,'2020-10-29 19:51:17','2020-10-29 19:51:17',1),(46,16,'下载备份','','backup:download','el-icon-download',1,2,'2020-10-29 19:52:11','2020-10-29 19:52:11',1),(47,16,'还原备份','','backup:rollback','el-icon-refresh-left',1,3,'2020-10-29 19:52:45','2020-10-29 19:53:30',1),(48,16,'删除备份','','backup:delete','el-icon-delete',1,4,'2020-10-29 19:53:15','2020-10-29 19:53:15',1),(49,17,'清空日志','','logger:truncate','el-icon-delete',1,1,'2020-11-01 16:08:57','2020-11-01 16:08:57',1),(50,17,'下载文档','','logger:download','el-icon-download',1,2,'2020-11-01 16:10:00','2020-11-01 16:10:00',1),(51,18,'下载附件','','attachment:download','el-icon-download',1,1,'2020-11-01 16:11:32','2020-11-01 16:11:32',1),(52,18,'删除附件','','attachment:delete','el-icon-delete',1,2,'2020-11-01 16:12:05','2020-11-02 15:16:35',1),(53,19,'添加任务','','job:add','el-icon-plus',1,1,'2020-11-20 20:53:31','2020-11-20 20:53:31',1),(54,19,'修改任务','','job:update','el-icon-edit',1,2,'2020-11-20 20:54:34','2020-11-20 20:54:34',1),(55,19,'执行任务','','job:exe','el-icon-caret-right',1,3,'2020-11-20 20:55:13','2020-11-20 20:55:13',1),(56,19,'暂停任务','','job:pause','el-icon-circle-close',1,4,'2020-11-20 20:55:37','2020-11-20 20:55:37',1),(57,19,'继续任务','','job:resume','el-icon-refresh-right',1,5,'2020-11-20 20:56:08','2020-11-20 20:56:08',1),(58,19,'删除任务','','job:remove','el-icon-delete',1,6,'2020-11-20 20:56:33','2020-11-20 20:56:33',1),(59,20,'发送邮件','','mail:add','el-icon-plus',1,1,'2020-11-30 22:18:19','2020-11-30 22:18:40',1),(60,20,'下载邮件','','mail:download','el-icon-download',1,2,'2020-11-30 22:19:32','2020-11-30 22:19:32',1),(61,20,'查看邮件','','mail:view','el-icon-view',1,3,'2020-11-30 22:20:56','2020-11-30 22:20:56',1),(62,20,'删除邮件','','mail:delete','el-icon-delete',1,4,'2020-11-30 22:21:48','2020-11-30 22:21:48',1);
/*!40000 ALTER TABLE `tb_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role`
--

DROP TABLE IF EXISTS `tb_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色描述',
  `create_time` datetime NOT NULL COMMENT '角色记录创建时间',
  `modify_time` datetime NOT NULL COMMENT '角色记录修改时间',
  `status` int NOT NULL DEFAULT '1' COMMENT '角色信息是否可用, 0表示禁用, 1表示可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role`
--

LOCK TABLES `tb_role` WRITE;
/*!40000 ALTER TABLE `tb_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role_menu`
--

DROP TABLE IF EXISTS `tb_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_role_menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int NOT NULL COMMENT '角色ID',
  `menu_id` int NOT NULL COMMENT '菜单/按钮ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role_menu`
--

LOCK TABLES `tb_role_menu` WRITE;
/*!40000 ALTER TABLE `tb_role_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户邮箱',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户联系电话',
  `status` int NOT NULL COMMENT '用户记录当前状态, 0表示禁用, 1表示可用',
  `gender` int NOT NULL DEFAULT '-1' COMMENT '用户性别, 0表示女, 1表示男, -1表示保密',
  `type` int NOT NULL DEFAULT '1' COMMENT '用户类型, 0表示超级管理员, 1表示普通用户',
  `birth` date DEFAULT NULL COMMENT '用户出生日期',
  `create_time` datetime NOT NULL COMMENT '用户记录创建时间',
  `modify_time` datetime NOT NULL COMMENT '用户记录修改时间',
  `dept_id` int NOT NULL COMMENT '用户所属部门id',
  `delete` int NOT NULL DEFAULT '0' COMMENT '当前用户记录是否删除, 0表示未删除, 1表示已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'admin','$2a$10$tYtY.QgAOPQKp6yp6wSm1emH8V3R4Yt2vgNqlJF6m.xBvz33JH4Dm','管理员','admin@163.com','D:\\WorkSpace\\Admin-Boot\\attachment\\Avatar\\20201027210338.gif','13112344321',1,-1,0,'2020-10-29','2020-10-17 15:01:07','2020-10-23 20:35:51',1,0);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_role`
--

DROP TABLE IF EXISTS `tb_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int NOT NULL COMMENT '用户ID',
  `role_id` int NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_role`
--

LOCK TABLES `tb_user_role` WRITE;
/*!40000 ALTER TABLE `tb_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 22:35:33
