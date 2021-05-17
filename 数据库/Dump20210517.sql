-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: database
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `td_blog`
--

DROP TABLE IF EXISTS `td_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `td_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `blogcontent` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '博客内容',
  `oknum` int(11) DEFAULT NULL COMMENT '点赞数',
  `publishtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布时间',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布人',
  `blogtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '博客类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_blog`
--

LOCK TABLES `td_blog` WRITE;
/*!40000 ALTER TABLE `td_blog` DISABLE KEYS */;
INSERT INTO `td_blog` VALUES (1,'第一天开始玩s',1,'1621051553000','lisi','knowledge'),(2,'第二天开始玩',3,'1621051553000','lisi','knowledge'),(3,'第二天开始玩',0,'1621051553000','lisi','knowledge'),(4,'开开心心',0,'1621051553000','lisi','knowledge'),(5,'meizizi',0,'1621051553000','lisi','knowledge'),(6,'迪迦奥特曼',0,'1621051553000','zhangsan','music'),(7,'你在干什么',0,'1621051553000','zhangsan','music'),(8,'我再洗衣服',0,'1621051553000','lisi','music'),(9,'大家好',0,'1621051553000','zhangsan','music'),(10,'略略略',0,'1621051553000','lisi','music'),(11,'啦啦啦',1,'1621051553000','lisi','entertainment'),(12,'嗷嗷',1,'1621051553000','lisi','entertainment'),(13,'22',0,'1621051553000','zhangsan','entertainment'),(14,'试试',0,'1621051553000','zhangsan','entertainment'),(15,'试试',0,'1621051553000','李四','entertainment'),(16,'张三',0,'1621051553000','李四','music'),(17,'我再干什么2',0,'1621051553000','lisi','music'),(18,'天上很亮',0,'1621051553000','lisi','music'),(19,'地上很黑',1,'1621051553000','lisi','music'),(20,'月亮弯弯',2,'1621051553000','lisi','life'),(21,'我今天',1,'1621064443000','lisi','life'),(22,'属实是',1,'1621064660000','lisi','life'),(23,'大家好',1,'1621142880000','lisi','life');
/*!40000 ALTER TABLE `td_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_friend`
--

DROP TABLE IF EXISTS `td_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `td_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `friendname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '朋友名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_friend`
--

LOCK TABLES `td_friend` WRITE;
/*!40000 ALTER TABLE `td_friend` DISABLE KEYS */;
INSERT INTO `td_friend` VALUES (1,'lisi','zhangsan'),(2,'lisi','wangwu'),(3,'lisi','maliu'),(5,'zhangsan','lisi'),(6,'zhangsan','wangwu'),(7,'zhangsan','maliu'),(9,'lisi','lisi');
/*!40000 ALTER TABLE `td_friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_right`
--

DROP TABLE IF EXISTS `td_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `td_right` (
  `right` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限',
  `rightname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限名称',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_right`
--

LOCK TABLES `td_right` WRITE;
/*!40000 ALTER TABLE `td_right` DISABLE KEYS */;
INSERT INTO `td_right` VALUES ('1','2',1);
/*!40000 ALTER TABLE `td_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_role`
--

DROP TABLE IF EXISTS `td_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `td_role` (
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `right` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限',
  `rolename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_role`
--

LOCK TABLES `td_role` WRITE;
/*!40000 ALTER TABLE `td_role` DISABLE KEYS */;
INSERT INTO `td_role` VALUES ('admi',2,'admin','管理员');
/*!40000 ALTER TABLE `td_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_user`
--

DROP TABLE IF EXISTS `td_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `td_user` (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据唯一标识',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `knowledge` int(11) DEFAULT NULL COMMENT '知识浏览量',
  `life` int(11) DEFAULT NULL COMMENT '生活浏览量',
  `entertainment` int(11) DEFAULT NULL COMMENT '娱乐类的浏览量',
  `consult` int(11) DEFAULT NULL COMMENT '咨询类的浏览量',
  `music` int(11) DEFAULT NULL COMMENT '音乐类的浏览量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_user`
--

LOCK TABLES `td_user` WRITE;
/*!40000 ALTER TABLE `td_user` DISABLE KEYS */;
INSERT INTO `td_user` VALUES ('lisi','122',1,'admin',0,2,0,0,0),('zhangsan','111',3,'admin',0,0,0,0,0),('wangwu','1234',6,'admin',0,0,0,0,0);
/*!40000 ALTER TABLE `td_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-17 18:51:00
