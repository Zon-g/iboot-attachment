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
INSERT INTO `tb_department` VALUES (1,'Default','000-0000000','XXX省XXX市XXX区XXX街XXX号XXX大厦','2020-11-02 14:37:11','2020-11-02 14:37:11');
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
  `params` varchar(400) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `operation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL COMMENT '当前操作类型',
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '当前操作描述',
  `create_time` datetime NOT NULL COMMENT '记录创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统操作日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_logger`
--

LOCK TABLES `tb_logger` WRITE;
/*!40000 ALTER TABLE `tb_logger` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_logger` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu`
--

LOCK TABLES `tb_menu` WRITE;
/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
INSERT INTO `tb_menu` VALUES (1,0,'系统管理','','','el-icon-setting',0,1,'2020-10-12 19:45:10','2020-10-12 19:45:10',1),(2,0,'运维管理','','','el-icon-s-claim',0,2,'2020-10-12 19:45:10','2020-10-23 17:27:32',1),(3,0,'组件管理','','','el-icon-coin',0,3,'2020-10-12 19:45:10','2020-10-12 19:45:10',1),(4,0,'多级菜单','','','el-icon-circle-plus-outline',0,4,'2020-10-12 19:45:10','2020-10-12 19:45:10',1),(5,1,'用户管理','/user','','el-icon-user',0,1,'2020-10-12 19:51:14','2020-10-23 17:31:54',1),(6,1,'部门管理','/department','','el-icon-tickets',0,2,'2020-10-12 19:51:14','2020-10-21 18:16:12',1),(7,1,'权限管理','/authority','','el-icon-s-custom',0,3,'2020-10-12 19:51:14','2020-10-23 17:17:44',1),(8,1,'角色管理','/role','','el-icon-user-solid',0,4,'2020-10-12 19:51:14','2020-10-23 16:48:52',1),(9,2,'MySQL监控','/SQL','','el-icon-loading',0,1,'2020-10-12 19:56:56','2020-10-23 17:30:32',1),(10,2,'Redis监控','/redis','','el-icon-view',0,2,'2020-10-12 19:56:56','2020-10-21 18:16:52',1),(11,2,'Swagger文档','/swagger','','el-icon-document',0,3,'2020-10-12 19:56:56','2020-10-21 18:16:56',1),(12,2,'Knife4j文档','/knife4j','','el-icon-document-checked',0,4,'2020-10-12 19:56:56','2020-10-21 18:17:00',1),(13,2,'系统备份','/backup','','el-icon-paperclip',0,5,'2020-10-12 19:56:56','2020-10-23 17:30:36',1),(14,3,'Echarts 图表库','/chart','','el-icon-date',0,1,'2020-10-12 19:58:38','2020-10-21 18:17:11',1),(15,3,'Element 图标库','/icon','','el-icon-picture',0,2,'2020-10-12 19:58:38','2020-10-21 18:17:15',1),(16,4,'二级菜单1','/menu','','el-icon-circle-plus-outline',0,1,'2020-10-12 20:00:22','2020-10-12 20:00:22',1),(17,4,'二级菜单2','/menu','','el-icon-circle-plus-outline',0,2,'2020-10-12 20:00:22','2020-10-12 20:00:22',1),(18,16,'三级菜单1','/menu','','el-icon-circle-plus-outline',0,1,'2020-10-12 20:01:03','2020-10-21 18:19:09',1),(19,16,'三级菜单2','/menu','','el-icon-circle-plus-outline',0,2,'2020-10-12 20:01:03','2020-10-12 20:01:03',1),(20,5,'添加用户','','user:add','el-icon-plus',1,1,'2020-10-21 17:57:16','2020-10-21 18:00:29',1),(21,5,'下载记录','','user:download','el-icon-download',1,2,'2020-10-21 17:58:02','2020-10-21 18:00:33',1),(22,5,'修改用户','','user:update','el-icon-edit',1,3,'2020-10-21 17:58:50','2020-10-21 18:00:38',1),(23,5,'删除用户','','user:delete','el-icon-delete',1,4,'2020-10-21 17:59:22','2020-10-23 17:25:55',1),(24,5,'配置用户','','user:config','el-icon-s-tools',1,5,'2020-10-21 18:00:00','2020-10-23 17:25:59',1),(25,6,'添加部门','','dept:add','el-icon-plus',1,1,'2020-10-21 18:03:30','2020-10-21 18:03:30',1),(26,6,'下载记录','','dept:download','el-icon-download',1,2,'2020-10-21 18:04:08','2020-10-21 18:04:08',1),(27,6,'修改部门','','dept:update','el-icon-edit',1,3,'2020-10-21 18:06:30','2020-10-21 18:06:30',1),(28,6,'删除部门','','dept:delete','el-icon-delete',1,4,'2020-10-21 18:06:58','2020-10-21 18:06:58',1),(29,8,'添加角色','','role:add','el-icon-plus',1,1,'2020-10-21 18:08:39','2020-10-21 18:08:39',1),(30,8,'下载记录','','role:download','el-icon-download',1,2,'2020-10-21 18:09:07','2020-10-21 18:09:07',1),(31,8,'修改角色','','role:update','el-icon-edit',1,3,'2020-10-21 18:11:23','2020-10-21 18:11:23',1),(32,8,'删除角色','','role:delete','el-icon-delete',1,4,'2020-10-21 18:11:43','2020-10-21 18:11:43',1),(33,8,'配置角色','','role:config','el-icon-s-tools',1,5,'2020-10-21 18:12:11','2020-10-21 18:12:11',1),(34,7,'添加权限','','menu:add','el-icon-plus',1,1,'2020-10-21 18:12:59','2020-10-21 18:12:59',1),(35,7,'下载记录','','menu:download','el-icon-download',1,2,'2020-10-21 18:14:03','2020-10-21 18:14:03',1),(36,7,'修改权限','','menu:update','el-icon-edit',1,3,'2020-10-21 18:15:03','2020-10-21 18:15:03',1),(37,7,'删除权限','','menu:delete','el-icon-delete',1,4,'2020-10-21 18:15:31','2020-10-21 18:15:31',1),(38,13,'备份数据','','backup:backup','el-icon-document-copy',1,1,'2020-10-29 19:51:17','2020-10-29 19:51:17',1),(39,13,'下载备份','','backup:download','el-icon-download',1,2,'2020-10-29 19:52:11','2020-10-29 19:52:11',1),(40,13,'还原备份','','backup:rollback','el-icon-refresh-left',1,3,'2020-10-29 19:52:45','2020-10-29 19:53:30',1),(41,13,'删除备份','','backup:delete','el-icon-delete',1,4,'2020-10-29 19:53:15','2020-10-29 19:53:15',1),(42,2,'操作日志','/logger','','el-icon-document',0,6,'2020-10-30 18:33:08','2020-10-30 20:32:19',1),(43,2,'附件管理','/attachment','','el-icon-picture-outline',0,7,'2020-10-31 16:18:06','2020-10-31 16:18:42',1),(44,42,'清空日志','','logger:truncate','el-icon-delete',1,1,'2020-11-01 16:08:57','2020-11-01 16:08:57',1),(45,42,'下载文档','','logger:download','el-icon-download',1,2,'2020-11-01 16:10:00','2020-11-01 16:10:00',1),(46,43,'下载附件','','attachment:download','el-icon-download',1,1,'2020-11-01 16:11:32','2020-11-01 16:11:32',1),(47,43,'删除附件','','attachment:delete','el-icon-delete',1,2,'2020-11-01 16:12:05','2020-11-02 15:16:35',1);
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

-- Dump completed on 2020-11-02 15:24:58
