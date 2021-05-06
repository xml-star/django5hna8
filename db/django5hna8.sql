-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: django5hna8
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618575381485 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-04-16 12:03:52',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-16 12:03:52',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-16 12:03:52',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-16 12:03:52',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-16 12:03:52',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-16 12:03:52',6,'宇宙银河系月球1号','月某','13823888886','是'),(1618575381484,'2021-04-16 12:16:21',1618575041387,'广东省揭阳市榕城区中山街道老地方鲜鱼馆(榕城店)揭阳学宫(装修中)','22','12312312312','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618575409810 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1618575185064,'2021-04-16 12:13:05','shangpinxinxi',1618575041387,46,'商品名称6','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian6.jpg',2,99.9,0),(1618575409809,'2021-04-16 12:16:49','shangpinxinxi',1618575041387,44,'商品名称4','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian4.jpg',1,99.9,0);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='客服中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-04-16 12:03:52',1,1,'提问1','回复1',1),(62,'2021-04-16 12:03:52',2,2,'提问2','回复2',2),(63,'2021-04-16 12:03:52',3,3,'提问3','回复3',3),(64,'2021-04-16 12:03:52',4,4,'提问4','回复4',4),(65,'2021-04-16 12:03:52',5,5,'提问5','回复5',5),(66,'2021-04-16 12:03:52',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/django5hna8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/django5hna8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/django5hna8/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618575573542 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (121,'2021-04-16 12:03:52',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-16 12:03:52',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-16 12:03:52',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-16 12:03:52',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-16 12:03:52',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-16 12:03:52',6,6,'用户名6','评论内容6','回复内容6'),(1618575192365,'2021-04-16 12:13:12',46,1618575041387,'1','11',NULL),(1618575573541,'2021-04-16 12:19:33',41,1618575041387,'1','1',NULL);
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoleixing`
--

DROP TABLE IF EXISTS `gonggaoleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='公告类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoleixing`
--

LOCK TABLES `gonggaoleixing` WRITE;
/*!40000 ALTER TABLE `gonggaoleixing` DISABLE KEYS */;
INSERT INTO `gonggaoleixing` VALUES (31,'2021-04-16 12:03:52','公告类型1'),(32,'2021-04-16 12:03:52','公告类型2'),(33,'2021-04-16 12:03:52','公告类型3'),(34,'2021-04-16 12:03:52','公告类型4'),(35,'2021-04-16 12:03:52','公告类型5'),(36,'2021-04-16 12:03:52','公告类型6');
/*!40000 ALTER TABLE `gonggaoleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='最新资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-04-16 12:03:52','标题1','简介1','http://localhost:8080/django5hna8/upload/news_picture1.jpg','内容1'),(112,'2021-04-16 12:03:52','标题2','简介2','http://localhost:8080/django5hna8/upload/news_picture2.jpg','内容2'),(113,'2021-04-16 12:03:52','标题3','简介3','http://localhost:8080/django5hna8/upload/news_picture3.jpg','内容3'),(114,'2021-04-16 12:03:52','标题4','简介4','http://localhost:8080/django5hna8/upload/news_picture4.jpg','内容4'),(115,'2021-04-16 12:03:52','标题5','简介5','http://localhost:8080/django5hna8/upload/news_picture5.jpg','内容5'),(116,'2021-04-16 12:03:52','标题6','简介6','http://localhost:8080/django5hna8/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618575422280 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1618575418215,'2021-04-16 12:16:58','202141620165755707834','shangpinxinxi',1618575041387,44,'商品名称4','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian4.jpg',1,99.9,99.9,99.9,99.9,1,'已退款','广东省揭阳市榕城区中山街道老地方鲜鱼馆(榕城店)揭阳学宫(装修中)','12312312312','22'),(1618575422279,'2021-04-16 12:17:02','20214162017166549664','shangpinxinxi',1618575041387,44,'商品名称4','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian4.jpg',1,99.9,99.9,99.9,99.9,1,'未支付','广东省揭阳市榕城区中山街道老地方鲜鱼馆(榕城店)揭阳学宫(装修中)','12312312312','22');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangchenggonggao`
--

DROP TABLE IF EXISTS `shangchenggonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangchenggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618574806331 DEFAULT CHARSET=utf8 COMMENT='商城公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangchenggonggao`
--

LOCK TABLES `shangchenggonggao` WRITE;
/*!40000 ALTER TABLE `shangchenggonggao` DISABLE KEYS */;
INSERT INTO `shangchenggonggao` VALUES (21,'2021-04-16 12:03:52','公告标题1','公告类型1','公告内容1','2021-04-16','发布人1','','http://localhost:8080/django5hna8/upload/shangchenggonggao_fengmian1.jpg'),(22,'2021-04-16 12:03:52','公告标题2','公告类型2','公告内容2','2021-04-16','发布人2','','http://localhost:8080/django5hna8/upload/shangchenggonggao_fengmian2.jpg'),(23,'2021-04-16 12:03:52','公告标题3','公告类型3','公告内容3','2021-04-16','发布人3','','http://localhost:8080/django5hna8/upload/shangchenggonggao_fengmian3.jpg'),(24,'2021-04-16 12:03:52','公告标题4','公告类型4','公告内容4','2021-04-16','发布人4','','http://localhost:8080/django5hna8/upload/shangchenggonggao_fengmian4.jpg'),(25,'2021-04-16 12:03:52','公告标题5','公告类型5','公告内容5','2021-04-16','发布人5','','http://localhost:8080/django5hna8/upload/shangchenggonggao_fengmian5.jpg'),(26,'2021-04-16 12:03:52','公告标题6','公告类型6','公告内容6','2021-04-16','发布人6','','http://localhost:8080/django5hna8/upload/shangchenggonggao_fengmian6.jpg'),(1618574806330,'2021-04-16 12:06:46','少数民族传统文化','公告类型5','',NULL,'','','');
/*!40000 ALTER TABLE `shangchenggonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinleibie`
--

DROP TABLE IF EXISTS `shangpinleibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='商品类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinleibie`
--

LOCK TABLES `shangpinleibie` WRITE;
/*!40000 ALTER TABLE `shangpinleibie` DISABLE KEYS */;
INSERT INTO `shangpinleibie` VALUES (51,'2021-04-16 12:03:52','特色服装'),(52,'2021-04-16 12:03:52','花样首饰'),(53,'2021-04-16 12:03:52','传统工艺'),(54,'2021-04-16 12:03:52','家乡特产'),(55,'2021-04-16 12:03:52','有声乐器'),(56,'2021-04-16 12:03:52','民族书籍');
/*!40000 ALTER TABLE `shangpinleibie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2021-04-16 12:03:52','商品编号1','商品名称1','商品类别1','规格1','产地1','保质期1',1,'商品详情1','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian1.jpg','2021-04-16 20:03:52',3,99.9),(42,'2021-04-16 12:03:52','商品编号2','商品名称2','商品类别2','规格2','产地2','保质期2',2,'商品详情2','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian2.jpg','2021-04-16 20:03:52',2,99.9),(43,'2021-04-16 12:03:52','商品编号3','商品名称3','商品类别3','规格3','产地3','保质期3',3,'商品详情3','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian3.jpg','2021-04-16 20:03:52',3,99.9),(44,'2021-04-16 12:03:52','商品编号4','商品名称4','商品类别4','规格4','产地4','保质期4',4,'商品详情4','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian4.jpg','2021-04-16 20:03:52',9,99.9),(45,'2021-04-16 12:03:52','商品编号5','商品名称5','商品类别5','规格5','产地5','保质期5',5,'商品详情5','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian5.jpg','2021-04-16 20:03:52',5,99.9),(46,'2021-04-16 12:03:52','商品编号6','商品名称6','商品类别6','规格6','产地6','保质期6',6,'商品详情6','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian6.jpg','2021-04-16 20:03:52',15,99.9);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618575575187 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1618575575186,'2021-04-16 12:19:35',1618575041387,41,'shangpinxinxi','商品名称1','http://localhost:8080/django5hna8/upload/shangpinxinxi_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-16 12:03:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618575041388 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-04-16 12:03:52','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/django5hna8/upload/yonghu_zhaopian1.jpg',100),(12,'2021-04-16 12:03:52','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/django5hna8/upload/yonghu_zhaopian2.jpg',100),(13,'2021-04-16 12:03:52','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/django5hna8/upload/yonghu_zhaopian3.jpg',100),(14,'2021-04-16 12:03:52','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/django5hna8/upload/yonghu_zhaopian4.jpg',100),(15,'2021-04-16 12:03:52','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/django5hna8/upload/yonghu_zhaopian5.jpg',100),(16,'2021-04-16 12:03:52','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/django5hna8/upload/yonghu_zhaopian6.jpg',100),(1618575041387,'2021-04-16 12:10:41','1','1','111','女','12322222222','773890001@qq.com','443333333333333332','http://localhost:8080/django5hna8/upload/1618575473483.jpg',199991);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 20:09:43
