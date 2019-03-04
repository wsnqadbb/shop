-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: lianxi
-- ------------------------------------------------------
-- Server version	5.5.53

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cart_id` int(20) NOT NULL AUTO_INCREMENT,
  `goods_id` int(20) DEFAULT NULL,
  `status` int(20) DEFAULT '1',
  `is_show` int(20) DEFAULT '1',
  `ctime` int(20) DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  `user_id` int(20) DEFAULT '2',
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,1,1,1551075283,5,2),(2,41,0,1,1551075382,1,2),(3,4,0,1,1551080029,1,2);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cate`
--

DROP TABLE IF EXISTS `cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cate` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cate`
--

LOCK TABLES `cate` WRITE;
/*!40000 ALTER TABLE `cate` DISABLE KEYS */;
INSERT INTO `cate` VALUES (1,'女装'),(2,'男装'),(3,'婴儿'),(4,'成人用品');
/*!40000 ALTER TABLE `cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(20) DEFAULT NULL,
  `cate_show` tinyint(4) DEFAULT NULL,
  `cate_navshow` tinyint(4) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'生鲜水果',1,1,'1',0,1542445107),(2,'母婴玩具',1,1,'1',0,1542445107),(3,'家居建材',1,1,'1',0,1542445107),(4,'生活电器',1,1,'1',0,1542445107),(5,'空调',1,2,'2',4,1542445107),(6,'冰箱',1,2,'2',4,1542445107),(7,'洗衣机',1,2,'2',4,1542445107),(8,'卧室家具',1,2,'2',3,1542445107),(9,'书房儿童',1,2,'2',3,1542445107),(10,'蛋类',1,2,'2',1,1542445107),(11,'肉类',1,2,'2',1,1542445107),(12,'海鲜',1,2,'2',1,1542445107),(13,'三文鱼',1,2,'3',12,1542445107),(14,'鸡蛋',1,2,'3',10,1542445107),(15,'牛肉',1,2,'3',11,1542445107),(16,'电脑桌',1,2,'3',9,1542445107),(17,'儿童床',1,2,'3',9,1542445107),(18,'衣柜',1,2,'3',8,1542445107),(19,'床',1,2,'3',8,1542445107),(20,'节能空调',1,2,'3',5,1542445107),(21,'三门冰箱',1,2,'3',6,1542445107),(22,'滚筒洗衣机',1,2,'3',7,1542445107),(23,'微波炉',1,2,'2',4,1542445107),(25,'光波炉',1,2,'3',23,1542445149),(26,'零食',1,1,'1',0,1542797910),(27,'进口食品',1,2,'2',26,1542797927),(28,'女装',1,1,'1',0,1542933209),(29,'医药保健',1,1,'1',0,1542933224),(30,'美妆',1,1,'1',0,1542933243),(31,'数码',1,1,'1',0,1542933249),(32,'儿童玩具',1,2,'3',2,1542933413),(33,'水果',1,2,'2',1,1542933528),(34,'苹果',1,2,'3',33,1542933542),(35,'香蕉',1,2,'3',33,1542933555),(36,'当季流行',1,2,'2',28,1542943509),(37,'精品上装',1,2,'2',28,1542943536),(38,'浪漫裙装',1,2,'2',28,1542943554),(39,'家居服',1,2,'2',28,1542943587),(40,'女装新品',1,2,'3',36,1542943691),(41,'商场同款',1,2,'3',36,1542943718),(42,'童装',1,2,'3',2,1542943787),(43,'童鞋',1,2,'3',2,1542943800),(44,'车床用品',1,2,'3',2,1542943821),(45,'喂养',1,2,'3',2,1542943843),(46,'洗护',1,2,'3',2,1542943856),(47,'亲子装',1,2,'3',42,1542943877),(48,'套装',1,2,'3',42,1542943904),(49,'连体衣',1,2,'3',42,1542943933),(50,'学步鞋',1,2,'3',43,1542943959),(51,'亲子鞋',1,2,'3',43,1542943973),(52,'运动鞋',1,2,'3',43,1542943984),(53,'帆布鞋',1,2,'3',43,1542944006),(54,'婴儿推车',1,2,'3',44,1542944032),(55,'学步车',1,2,'3',44,1542944048),(56,'安全座椅',1,2,'3',44,1542944078),(57,'奶瓶',1,2,'3',45,1542944097),(58,'奶嘴',1,2,'3',45,1542944110),(59,'水杯',1,2,'3',45,1542944122),(60,'洗发水',1,2,'3',46,1542944145),(61,'沐浴乳',1,2,'3',46,1542944161),(62,'湿巾',1,2,'3',46,1542944180),(63,'时髦外套',1,2,'3',36,1542944221),(64,'毛呢外套',1,2,'3',37,1542944251),(65,'棉衣',1,2,'3',37,1542944277),(66,'羽绒服',1,2,'3',37,1542944298),(67,'连衣裙',1,2,'3',38,1542944324),(68,'半身裙',1,2,'3',38,1542944343),(69,'A子群',1,2,'3',38,1542944358),(70,'春夏家居服',1,2,'3',39,1542944388),(71,'纯棉家居服',1,2,'3',39,1542944409),(72,'真丝家居服',1,2,'3',39,1542944425),(73,'婴儿玩具',1,2,'3',32,1542944504),(74,'毛绒玩具',1,2,'3',32,1542944529),(75,'儿童自行车',1,2,'3',32,1542944565),(76,'鸭蛋',1,2,'3',10,1542944611),(77,'鹌鹑蛋',1,2,'3',10,1542944625),(78,'驴肉',1,2,'3',11,1542944640),(79,'猪肉',1,2,'3',11,1542944650),(80,'鸡肉',1,2,'3',11,1542944661),(81,'带鱼',1,2,'3',12,1542944678),(82,'鲤鱼',1,2,'3',12,1542944691),(83,'鲍鱼',1,2,'3',12,1542944705),(84,'榴莲',1,2,'3',33,1542944744),(85,'椰子',1,2,'3',33,1542944757),(86,'客厅餐厅',1,2,'2',3,1542944821),(87,'家庭主材',1,2,'2',3,1542944849),(88,'厨房卫浴',1,2,'2',3,1542944880),(89,'成套家具',1,2,'2',3,1542944903),(90,'沙发',1,2,'3',86,1542944935),(91,'酒柜',1,2,'3',86,1542944949),(92,'橱柜',1,2,'3',86,1542944964),(93,'客厅成套',1,2,'3',89,1542944987),(94,'餐厅成套',1,2,'3',89,1542945011),(95,'卧室成套',1,2,'3',89,1542945039),(96,'浴霸',1,2,'3',88,1542945082),(97,'马桶',1,2,'3',88,1542945100),(98,'花洒',1,2,'3',88,1542945118),(99,'瓷砖',1,2,'3',87,1542945177),(100,'壁纸',1,2,'3',87,1542945193),(101,'涂鸦',1,2,'3',87,1542945209),(102,'新鲜蔬菜',1,2,'2',1,1542945246),(103,'冰淇淋',1,2,'2',1,1542945257),(104,'土豆',1,2,'3',102,1542945284),(105,'山药',1,2,'3',102,1542945302),(106,'番薯',1,2,'3',102,1542945312),(107,'哈根达斯',1,2,'3',103,1542945360),(108,'本杰瑞',1,2,'3',103,1542945382),(109,'厨房大电',1,2,'2',4,1542945449),(110,'平板电视',1,2,'2',4,1542945471),(111,'全自动洗衣机',1,2,'3',7,1542945512),(112,'变频空调',1,2,'3',5,1542945527),(113,'双开门冰箱',1,2,'3',6,1542945551),(114,'国产',1,2,'3',110,1542945600),(115,'外资',1,2,'3',110,1542945614),(116,'曲面',1,2,'3',110,1542945626),(117,'烟灶套装',1,2,'3',109,1542945678),(118,'洗碗机',1,2,'3',109,1542945702),(119,'消毒柜',1,2,'3',109,1542945724),(120,'数码配件',1,2,'2',31,1542945933),(121,'热门手机',1,2,'2',31,1542945950),(122,'电脑组装',1,2,'2',31,1542945966),(123,'硬件储存',1,2,'2',31,1542946012),(124,'摄影摄像',1,2,'2',31,1542946025),(125,'小米',1,2,'3',121,1542946093),(126,'华为',1,2,'3',121,1542946105),(127,'iPhone',1,2,'3',121,1542946141),(128,'笔记本',1,2,'3',122,1542946177),(129,'平板',1,2,'3',122,1542946191),(130,'台式',1,2,'3',122,1542946202),(131,'手机配件',1,2,'3',120,1542946230),(132,'笔记本配件',1,2,'3',120,1542946252),(133,'充电宝',1,2,'3',120,1542946290),(134,'显示器',1,2,'3',123,1542946341),(135,'CPU',1,2,'3',123,1542946352),(136,'硬盘',1,2,'3',123,1542946364),(137,'影音娱乐',1,2,'2',31,1542946405),(138,'天猫魔盒',1,2,'3',137,1542946444),(139,'耳机',1,2,'3',137,1542946457),(140,'家庭影院',1,2,'3',137,1542946471),(141,'相机',1,2,'3',124,1542946488),(142,'单反',1,2,'3',124,1542946503),(143,'摄像机',1,2,'3',124,1542946521),(144,'护肤品',1,2,'2',30,1542946633),(145,'彩妆',1,2,'2',30,1542946650),(146,'美发护发',1,2,'2',30,1542946694),(147,'口腔护理',1,2,'2',30,1542946710),(148,'男士护肤',1,2,'2',30,1542946742),(149,'肤质推选',1,2,'2',30,1542946775),(150,'面膜',1,2,'3',144,1542946799),(151,'身体乳',1,2,'3',144,1542946822),(152,'卸妆',1,2,'3',144,1542946836),(153,'香水',1,2,'3',145,1542946852),(154,'BB霜',1,2,'3',145,1542946872),(155,'洁面',1,2,'3',148,1542946910),(156,'爽肤水',1,2,'3',148,1542946973),(157,'控油',1,2,'3',148,1542947007),(158,'干性',1,2,'3',149,1542947034),(159,'敏感性',1,2,'3',149,1542947053),(160,'护发素',1,2,'3',146,1542947100),(161,'发膜',1,2,'3',146,1542947120),(162,'牙膏',1,2,'3',147,1542947161),(163,'牙刷',1,2,'3',147,1542947190),(164,'保健品',1,2,'2',29,1542947470),(165,'滋补品',1,2,'2',29,1542947505),(166,'医药',1,2,'2',29,1542947526),(167,'隐形眼睛',1,2,'2',29,1542947561),(168,'医疗器械',1,2,'2',29,1542947583),(169,'医疗服务',1,2,'2',29,1542947598),(170,'芦荟',1,2,'3',164,1542947614),(171,'玛卡',1,2,'3',164,1542947629),(172,'蜂蜜',1,2,'3',165,1542947651),(173,'阿胶',1,2,'3',165,1542948990),(174,'感冒咳嗽',1,2,'3',166,1542949037),(175,'成人用品',1,2,'3',166,1542949065),(176,'制氧机',1,2,'3',168,1542949103),(177,'体温计',1,2,'3',168,1542949123),(178,'强生美瞳',1,2,'3',167,1542949155),(179,'博士伦',1,2,'3',167,1542949175),(180,'爱康国宾',1,2,'3',169,1542949210),(181,'月子中心',1,2,'3',169,1542949231),(182,'女士下装',1,2,'2',28,1542949352),(183,'特色女装',1,2,'2',28,1542949370),(184,'休闲裤',1,2,'3',182,1542949390),(185,'阔腿裤',1,2,'3',182,1542949408),(186,'时尚套装',1,2,'3',183,1542949432),(187,'休闲套装',1,2,'3',183,1542949454),(188,'休闲零食',1,2,'2',26,1542949632),(189,'酒类',1,2,'2',26,1542949654),(190,'茶叶',1,2,'2',26,1542949686),(191,'乳品冲饮',1,2,'2',26,1542949713),(192,'粮油速食',1,2,'2',26,1542949736),(193,'进口巧克力',1,2,'3',27,1542949776),(194,'进口饼干',1,2,'3',27,1542949799),(195,'坚果',1,2,'3',188,1542949822),(196,'饼干',1,2,'3',188,1542949838),(197,'白酒',1,2,'3',189,1542949857),(198,'红酒',1,2,'3',189,1542949875),(199,'西湖龙井',1,2,'3',190,1542949907),(200,'绿茶',1,2,'3',190,1542949928),(201,'牛奶',1,2,'3',191,1542949949),(202,'酸奶',1,2,'3',191,1542949964),(203,'橄榄油',1,2,'3',192,1542949983),(204,'大米',1,2,'3',192,1542950001),(205,'首饰',1,2,'1',0,1543480550),(206,'鱿鱼',1,2,'3',12,1543481830),(207,'黄金首饰',1,2,'2',205,1543481873),(208,'钻石彩宝',1,2,'2',205,1543481907),(209,'珍珠玉翠',1,2,'2',205,1543481967),(210,'腕表',1,2,'2',205,1543481991),(211,'潮流饰品',1,2,'2',205,1543482022),(212,'眼镜',1,2,'2',205,1543482082),(213,'足金饰品',1,2,'3',207,1543482262),(214,'婚嫁套饰',1,2,'3',207,1543482312),(215,'钻石吊坠',1,2,'3',208,1543486587),(216,'红蓝宝石',1,2,'3',208,1543486605),(218,'海水珍珠',1,2,'3',209,1543486708),(219,'和田玉',1,2,'3',209,1543486805),(220,'传统银饰',1,2,'3',211,1543486842),(221,'手链',1,2,'3',211,1543486862),(222,'瑞士名表',1,2,'3',210,1543486890),(223,'经典国表',1,2,'3',210,1543486931),(224,'墨镜',1,2,'3',212,1543486973),(225,'暴龙',1,2,'3',212,1543486996),(226,'烤箱',1,2,'3',23,1543487111);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `code` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
INSERT INTO `code` VALUES (4,'7789','13834942938',1550806061,0);
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(45) DEFAULT NULL,
  `goods_price` float DEFAULT NULL,
  `goods_marketprice` float DEFAULT NULL,
  `goods_show` tinyint(4) DEFAULT NULL,
  `goods_hot` tinyint(4) DEFAULT '2',
  `goods_new` tinyint(4) DEFAULT NULL,
  `goods_desc` varchar(255) DEFAULT NULL,
  `goods_score` int(11) NOT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_imgs` varchar(255) DEFAULT NULL,
  `cate_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `goods_pnum` int(11) DEFAULT NULL,
  `sale_num` int(11) DEFAULT NULL,
  `is_tell` tinyint(4) DEFAULT NULL COMMENT '0是非推荐，1是推荐',
  `is_like` tinyint(4) DEFAULT NULL,
  `goods_up` varchar(255) DEFAULT '1',
  PRIMARY KEY (`goods_id`,`goods_score`),
  KEY `fk_shop_goods_shop_category_idx` (`cate_id`),
  KEY `fk_shop_goods_shop_brand1_idx` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'亨奇 摇表器 机械手表德国进口',468,700,1,1,1,'99',500,'20190107/5c32a52f7848d.gif','',223,28,10000,11111,1,2,'1'),(2,'弘艺堂首饰盒木质公',398,536,1,1,1,'188',666,'20190107/5c32a52f7848d.gif','',222,29,5546,11111,1,1,'1'),(3,'锦贝传说螺钿漆器结婚礼物',599,999,1,1,1,'1313',10000,'20190107/5c32a52f7848d.gif','',220,32,8978,11111,1,1,'1'),(4,'法缇雅摇表器自动机械手',198,229,1,1,1,'9000',3123,'20190107/5c32a52f7848d.gif','',222,33,1321,11111,1,1,'1'),(5,'摇表器 自动机械表上链器',299,499,1,1,1,'8888',100,'20190107/5c32a52f7848d.gif','',223,32,342,11111,1,1,'1'),(6,'乡康佬五香卤蛋乡巴佬卤蛋土鸡蛋喜蛋',37.3,42,1,1,1,'999',20,'20190107/5c32a52f7848d.gif','',14,28,654,115676,1,1,'1'),(7,'摇表器 德国品质进口马达转表器晃表器 ',200,399,1,1,1,'700',6768,'20190107/5c32a52f7848d.gif','',222,27,1414,4666,1,1,'1'),(8,'新品】施华洛世奇2018MAGIC雪花',1190,1599,1,1,1,'1190',14343,'20190107/5c32a52f7848d.gif','',221,32,132,1454,1,1,'1'),(9,'明牌珠宝黄金手镯 足金匠心',8983.65,10000,1,1,1,'127',6000,'20190107/5c32a52f7848d.gif','',221,31,5435,11111,1,1,'1'),(10,'Apple/苹果 iPhone 8 Plus',5999,6199,1,1,1,'50',500,'20190107/5c32a52f7848d.gif','',127,36,34534,11111,1,1,'1'),(11,'honor/荣耀 荣耀magic 2',4299,4599,1,1,1,'47',400,'20190107/5c32a52f7848d.gif','',126,37,132214,11111,1,1,'1'),(12,'Haier/海尔 BCD-206S 0解冻时间',1499,1599,1,1,1,'66',1314,'20190107/5c32a52f7848d.gif','',113,1,42423,11111,1,1,'1'),(13,'术 瞬时断电记忆',2299,2599,1,1,1,'32423',4564,'20190107/5c32a52f7848d.gif','',21,1,4242,11111,1,1,'1'),(14,'科智 20000',59,80,1,1,1,'85',25,'20190107/5c32a52f7848d.gif','',133,41,23424,11111,1,1,'1'),(15,'Dell/戴尔 G7 GTX1060MQ 6G独显游',7399,7599,1,1,1,'34',740,'20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',128,44,54353,11111,1,1,'1'),(16,'Haier/海尔 BCD-572WDENU1 对开双门式',3499,4999,1,1,1,'1314',1314,'20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',113,1,13131,11111,1,1,'1'),(17,'Midea/美的 BCD-521WKM(E 风冷无霜 纤薄机身 电脑控温',2899,2999,1,1,1,'435',1334,'20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',113,3,23424,11111,1,1,'1'),(18,'Asus/华硕 飞行堡垒5代FX80GE游戏本',6599,6798,1,1,1,'22',650,'20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',128,43,1314,11111,1,1,'1'),(19,'Midea/美的 KFR-35GW/WCBD3@',2299,3000,1,1,1,'9999',3123,'20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',20,3,5435,11111,1,1,'1'),(20,'Midea/美的 KFR-35GW/WCBD3@',2299,3000,1,1,1,'9999',3123,'20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',20,3,6546,11111,1,1,'1'),(21,'Audio Technica/铁三角 ATH-CLR100IS    等',138,150,1,1,1,'150',30,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',139,26,4234,11111,1,1,'1'),(22,'Canon/佳能 EOS 5D Mark IV机身 36',15999,17499,1,1,1,'10',1599,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',141,38,5546,11111,1,1,'1'),(23,'¥2849.00 Gree/格力 KFR-35GW/NhBaD3',2849.9,2999,1,1,1,'3550',355,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',112,3,35453,11111,1,1,'1'),(24,'¥3599.00 Haier/海尔 KFR-50GW/13NHA13',3599,3799,1,1,1,'3134',988,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',112,1,3123,11111,1,1,'1'),(25,'Kingston/金士顿 SA400S37/120G 固',186,198,1,1,1,'200',15,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',136,42,4322,11111,1,1,'1'),(26,'Haier/海尔 EG10014B39GU1 10公斤大容量频、消毒洗',2699,2999,1,1,1,'7777',21312,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',22,1,4353,11111,1,1,'1'),(27,'Midea/美的 MB75-eco11W 美居智能 ',949,1000,1,1,1,'432',1232,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',111,3,12313,11111,1,1,'1'),(28,'Leader/统帅 @G7012B16W',1499,1799,1,1,1,'231',188,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',111,3,21313,11111,1,1,'1'),(29,'哥弟秋冬修身显瘦女士裤子 ',299,349,1,1,1,'78',50,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',184,34,4241,11111,1,1,'1'),(30,'波司登大毛领宽松保暖粉色少女羽绒服',539,599,1,1,1,'47',100,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',66,54,32423,11111,1,1,'1'),(31,'【现摘现发】陕西红富士苹果5斤新鲜',29.9,33,1,1,1,'9999',30,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',34,62,23432,11111,1,1,'1'),(33,'女士加厚加绒秋冬款法兰',138,169,1,1,1,'26',56,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',71,40,5645,11111,1,1,'1'),(34,'半身裙女高腰冬装2018新款丝绒中长款',279,319,1,1,1,'20',110,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',68,49,8888,11111,1,1,'1'),(35,'果滋岛泰国猫山王榴莲新鲜3-13斤水果',208,245,1,1,1,'5000',300,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',84,67,5675,11111,1,1,'1'),(36,'春秋时尚金丝绒大码加绒休闲两件套 ',188,219,1,1,1,'21',39,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',186,68,34545,11111,1,1,'1'),(37,'苏洪鲜食泰国椰青椰子9个装原箱大号',82,100,1,1,1,'900',4324,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',85,76,31234,11111,1,1,'1'),(38,'唐狮高腰九分韩版显瘦直筒毛边阔腿裤 ',119,149,1,1,1,'111',32,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',185,38,42441,11111,1,1,'1'),(39,'现摘海南椰青9个装新鲜包邮当季水果',76.8,88.8,1,1,1,'313',3141,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',85,61,4234,11111,1,1,'1'),(40,'舒绸坊真丝蚕丝性感春秋家居服 ',598,669,1,1,1,'22',100,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',72,64,6464,11111,1,1,'1'),(41,'毛绒玩具',29,33,1,1,1,'89',27,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',74,33,7474,11111,1,1,'1'),(42,'4斤虾鲜活海鲜水',129,155,1,1,1,'1333',666,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',13,60,6456,11111,1,1,'1'),(43,'三顿饭冰鲜三文鱼腩刺身中段拼盘新鲜',74.88,88.8,1,1,1,'8888',765,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',13,63,76867,11111,1,1,'1'),(44,'优贝儿童自行车14/16/18寸男女孩童车',1298,1488,1,1,1,'21',200,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',75,45,75675,11111,1,1,'1'),(45,'德瑞鱼食锦鲤鱼饲料金鱼上浮育成小颗',31,39,2,1,1,'999',575,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',82,62,109991,11111,1,1,'1'),(46,'亲子装冬装2018新款潮全家装秋装一家',75,90,1,1,1,'29',19,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',47,39,131333,11111,1,1,'1'),(47,'MIKIHOUSE日本制获奖款一二段学步',729,759,1,1,1,'23',50,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',50,46,14123,11111,1,1,'1'),(48,'蔬洋 小黄瓜圣女果新鲜包邮组合5斤水',29.8,39,1,1,1,'88',20,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',106,62,42341,11111,1,1,'1'),(49,'belecoo贝丽可高景观婴儿推车可坐躺',419,459,1,1,1,'21',180,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',54,55,32423,11111,1,1,'1'),(50,'bestborn宝宝保温奶瓶正品婴儿不锈钢',79,88,1,1,1,'54',22,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',57,52,43242,11111,1,1,'1'),(51,'德国海蒂诗气撑榻榻米橱柜上翻门液压',19.9,25,1,1,1,'600',66,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',93,83,43242,11111,1,1,'1'),(52,'gb好孩子婴儿棉柔巾干湿两用宝宝湿纸',198,219,1,1,1,'28',50,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',62,51,12313,11111,1,1,'1'),(53,'全友家居沙发皮布沙发小户型经济型沙发组合现代简约沙发73018',2499,3999,1,1,1,'300',2000,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',90,75,12313,11111,1,1,'1'),(54,'宝贝第一太空城堡0-4-6岁可躺可坐宝',1480,1500,1,1,1,'16',150,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',56,67,13134,11111,1,1,'1'),(55,'德芙巧克力碗装纯黑牛奶礼盒装送女友',23.9,25,1,1,1,'121',32,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',193,35,131341,11111,1,1,'1'),(56,'Aji酵母减盐味苏打饼干咸味饼干整箱批',40.9,43,1,1,1,'20',40,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',194,64,16546,11111,1,1,'1'),(57,'芝华仕头等舱功能沙发 单人沙发布艺 沙发客厅家具k106',1499,1699,1,1,1,'700',31231,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',90,68,1345,11111,1,1,'1'),(58,'满减【三只松鼠_夏威夷果185g】零食',35.9,38,1,1,1,'57',25,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',195,56,13145,11111,1,1,'1'),(59,'诺斯清生理盐水洗鼻水生理性海水鼻腔喷雾儿童喷雾海盐水洗鼻器',59,67,1,1,1,'54',14,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',170,96,43255,11111,1,1,'1'),(60,'拉菲红酒 拉菲官方正品原装瓶进口巴斯',528,528,1,1,1,'200',189,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',198,73,13134,11111,1,1,'1'),(61,'蔺酷雅后现代简约轻奢不锈钢茶几电视',2500,3233,1,1,1,'470',43232,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',93,73,114234,11111,1,1,'1'),(62,'清承堂绿茶2018新茶叶毛尖茶日照高山',55,67,1,1,1,'204',12,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',200,62,31213,11111,1,1,'1'),(63,'卧室成套家具套装组合简约现代小户型',9900,9999,1,1,1,'666',1888,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',95,76,14231,11111,1,1,'1'),(64,' 美国进口dermatix倍舒痕胶祛疤膏贴去疤痕修复凝胶淡化伤疤澳洲',105,203,1,1,1,'46',16,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',171,95,131334,11111,1,1,'1'),(65,'10月伊利安慕希风味酸奶高端原味畅饮',56,89,1,1,1,'121',34,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',202,54,1314,11111,1,1,'1'),(66,'周林频谱仪ws-301家用理疗仪旗舰店多功能烤电烤灯保健治疗仪医用',152,204,1,1,1,'54',49,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',173,50,4141,11111,1,1,'1'),(67,'逸致钢化玻璃电视柜现代简约地柜小户',2706,2890,1,1,1,'5353',2500,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',94,44,11414,11111,1,1,'1'),(68,'买4省60元 蓓琳娜新货原装进口PDO特',179,199,1,1,1,'54',56,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',203,55,14114,11111,1,1,'1'),(69,'邦列安高效单体银抗菌凝胶慢性前列腺炎治疗男科尿频尿急尿不尽男',402,504,1,1,1,'42',46,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',175,99,13134,11111,1,1,'1'),(70,'雪龙瑞斯 五常稻花香米5KG 五常大米',55,69,1,1,1,'34',24,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',204,68,22421,11111,1,1,'1'),(71,'倍舒痕硅凝胶15g去疤痕进口疤痕手术修复凝胶膏祛疤膏淡化医用',203,304,1,1,1,'82',15,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',174,97,12432,11111,1,1,'1'),(72,'雅兰卧室套餐 舒伯特真皮床+深睡1200',6599,7000,1,1,1,'4900',3123,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',95,43,13145,11111,1,1,'1'),(73,'舒痕倍舒痕硅凝胶美国进口Dermatix疤痕修复淡疤伤疤膏淡化医用',505,664,1,1,1,'56',52,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',181,98,43534,11111,1,1,'1'),(74,'聚法丽莎欧式电视柜大理石茶几组合小户型客厅成套家具套装地柜G2',2180,2200,1,1,1,'1333',1314,'20190108\\6e07ebeafc58c8d811e7ca9903ca0010.jpg','',19,34,900,11111,1,1,'1'),(75,'进口丝芙康去疤痕贴剖腹产手术修复硅凝胶凹凸伤疤祛疤膏医用正品',509,769,1,1,1,'15',89,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',180,96,13423,11111,1,1,'1'),(76,'One Leaf/一叶子 清颜净肤炭黑面膜 补',129,138,1,1,1,'22',31,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',150,43,13134,11111,1,1,'1'),(77,'Dermatix倍舒痕美国进口祛疤膏医用去疤痕修复硅凝胶贴澳洲舒痕YM',907,1109,1,1,1,'9',48,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',173,95,32432,11111,1,1,'1'),(78,'Nivea/妮维雅 男士净油精华抗痘洁面炭',39.9,42.9,1,1,1,'79',90,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',157,52,21312,11111,1,1,'1'),(79,'云南白药牙膏 去口臭美白口气清新缓解口腔 健齿护龈3+2套装535G  云南白药牙膏官方旗',77,79,1,1,1,'332',53,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',162,34,12312,11111,1,1,'1'),(80,'¥18.80 日本原装进口LION狮王儿童宝宝婴儿小',17,19.8,1,1,1,'23',22,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',163,40,43243,11111,1,1,'1'),(81,'GIORGIO ARMANI/阿玛尼 寄情男士',820,850,1,1,1,'21',314,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',153,59,13124,11111,1,1,'1'),(82,'LA MER/海蓝之谜 精萃液 高机能精华',1100,1199,1,1,1,'23',433,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',156,61,12313,11111,1,1,'1'),(83,'Shiseido/资生堂 丝蓓绮发膜 ',99,199,1,1,1,'222',42,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',161,54,131233,11111,1,1,'1'),(84,'阿道夫 轻柔丝滑洗发乳液系列 ',88,89,1,1,1,'889',33,'uploads/20181220/6ec03e95099aa6caa430cdbcef834ca0.jpg','',160,76,12343,11111,1,1,'1'),(140,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(141,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(142,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(143,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(144,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(145,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(146,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(147,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(148,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(149,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(150,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(151,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(152,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(153,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(154,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(155,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(156,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(157,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(158,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(159,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(160,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(161,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(162,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(163,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(164,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(165,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(166,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(167,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(168,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(169,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(170,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(171,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(172,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(173,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(174,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(175,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(176,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(177,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(178,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(179,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(180,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(181,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,1,NULL,1,1,'1'),(182,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(183,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,76,4,NULL,1,1,'1'),(184,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,0,4,NULL,1,1,'1'),(185,'诺',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,32,4,NULL,1,1,'1'),(186,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,0,4,NULL,1,1,'1'),(187,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,0,4,NULL,1,1,'1'),(188,'sssss',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,31,4,NULL,1,1,'1'),(189,'bbbbb',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,0,4,NULL,1,1,'1'),(190,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,0,4,NULL,1,1,'1'),(191,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,'20190108\\6e07ebeafc58c8d811e7ca9903ca0010.jpg',NULL,160,0,4,NULL,1,1,'1'),(192,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,0,4,NULL,1,1,'1'),(193,'为就得',3010,3612,NULL,2,1,NULL,0,NULL,NULL,160,29,4,NULL,1,1,'1'),(194,'诺基亚N85',3010,3612,NULL,2,1,NULL,0,NULL,NULL,34,32,4,NULL,1,1,'1');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` char(20) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `order_amount` decimal(10,0) DEFAULT NULL,
  `order_pay_type` tinyint(4) DEFAULT NULL,
  `pay_status` tinyint(4) DEFAULT NULL,
  `pay_way` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  `order_status` tinyint(4) DEFAULT NULL,
  `pay_id` int(11) DEFAULT NULL,
  `shop_price` varchar(255) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (46,'201903011140262981',2,2567,1,1,NULL,NULL,1551440426,NULL,1,1,'198','法缇雅摇表器自动机械手'),(47,'201903011144034033',2,2567,1,1,NULL,NULL,1551440643,NULL,1,1,'198','法缇雅摇表器自动机械手'),(48,'201903011204107468',2,2567,1,1,NULL,NULL,1551441850,NULL,1,1,'198','法缇雅摇表器自动机械手'),(49,'201903011204507319',2,227,1,1,NULL,NULL,1551441890,NULL,1,1,'198','法缇雅摇表器自动机械手');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_address`
--

DROP TABLE IF EXISTS `order_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `address_name` varchar(20) DEFAULT NULL,
  `city` varchar(11) DEFAULT NULL,
  `post_code` char(6) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `is_default` varchar(20) DEFAULT NULL,
  `sign_building` varchar(20) DEFAULT NULL,
  `is_del` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_address`
--

LOCK TABLES `order_address` WRITE;
/*!40000 ALTER TABLE `order_address` DISABLE KEYS */;
INSERT INTO `order_address` VALUES (9,36,2,'呵呵','河南',NULL,NULL,NULL,'1226522656','1','自动调节电话卡马甲','0');
/*!40000 ALTER TABLE `order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_no` char(20) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `buy_num` int(11) DEFAULT NULL,
  `shop_price` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_image` varchar(255) DEFAULT NULL,
  `comment_status` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  `order_amount` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (13,46,'201903011140262981',2,4,1,198,'法缇雅摇表器自动机械手',NULL,NULL,NULL,NULL,NULL,'2567',NULL),(14,47,'201903011144034033',2,4,1,198,'法缇雅摇表器自动机械手',NULL,NULL,NULL,NULL,NULL,'2567',NULL),(15,48,'201903011204107468',2,4,1,198,'法缇雅摇表器自动机械手',NULL,NULL,NULL,NULL,NULL,'2567',NULL),(16,49,'201903011204507319',2,4,1,198,'法缇雅摇表器自动机械手',NULL,NULL,NULL,NULL,NULL,'227',NULL);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `is_hot` tinyint(4) DEFAULT NULL,
  `is_show` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (14,'zhan',1,'3333',2,1),(2,'1222',1,'2222',2,1),(3,'1222',1,'2222',1,1),(4,'5551222',1,'2222',2,1),(5,'1222',1,'2222',2,1),(7,'444w122277777',1,'2222',1,1),(8,'441222',1,'2222',1,1),(9,'777771222',1,'2222',2,1),(10,'6663333',1,'4444',1,1),(11,'3333',1,'4444',1,1),(12,'3ss22222',1,'2222',1,1),(13,'222444444',1,'2222',1,1);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'13834942938','1c63129ae9db9c60c3e8aa94d3e00495');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-02 10:32:25
