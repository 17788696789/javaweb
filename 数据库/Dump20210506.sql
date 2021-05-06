-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 1
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
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `friends` (
  `name` varchar(100) DEFAULT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `qq` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES ('abc',4,'4','男','43','35623456','234652345 ','234652425','132441414'),('王五',6,'6','男','22','12312312','54253662','623452452','23423423');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `userid` int(100) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `zhishi` int(100) DEFAULT '1',
  `shenghuo` int(100) DEFAULT '1',
  `yingyue` int(100) DEFAULT '1',
  `yule` int(100) DEFAULT '1',
  `zhixun` int(100) DEFAULT '1',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'123','123',23,1,23,3,0),(2,'222','111',123,2,23,0,8),(3,'444','222',78,89,0,9,7),(4,'abc','444',1,0,3,45,6),(5,'杨栩','222',546,45,456,0,0),(6,'王五','444',45,5687,78,67,0),(7,'yangzehao','yangzehao',1,1,1,1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userblog`
--

DROP TABLE IF EXISTS `userblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `userblog` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `userid` int(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `blog` varchar(10000) DEFAULT NULL,
  `tag` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userblog`
--

LOCK TABLES `userblog` WRITE;
/*!40000 ALTER TABLE `userblog` DISABLE KEYS */;
INSERT INTO `userblog` VALUES (12,4,'abc','“大家要关注mRNA疫苗，它给人类提供了无限的思考。”10日，中国疾病预防控制中心主任高福在2021全国疫苗与健康大会上呼吁道。截至目前，全球共两款mRNA疫苗获批：辉瑞-BioNTech以及美国Moderna公司研发的疫苗。那mRNA疫苗究竟是什么？',1),(13,4,'abc','13日，有韩国民众来到日本驻韩大使馆附近，抗议日本排核废水入海的决定。有民众表示，日本政府的决定可以被界定为“核恐怖活动”。他表示，“大海不是垃圾桶”，将采取一切手段阻止污水入海。还有抗议者戴日本首相菅义伟的面具，痛斥日本的自私行为。',1),(14,4,'abc','13日，日本政府正式宣布决定将福岛第一核电站污水排入大海，此事立刻遭到了中国以及韩国的强烈反对。不过，美国国务院表示支持日本的决定。',1),(15,4,'abc','2021年，909万大学生毕业，史上人数最多的毕业季。 vivo春季招聘武汉站现场，面试官们通过「交换简历」的暖心举动，帮助毕业生以轻松自信的状态笑对面试，勇敢面对就业季。加油，毕业生们！做最真实的自己，微笑进场！',1),(16,4,'abc','11日，美国明尼苏达州，20岁的黑人男子丹特·莱特因交通违章被警方拦停，当警察准备给他戴上手铐时，他试图回到自己的车里。一名警察开始大喊“泰瑟枪”，却用枪击中了莱特，致其伤重身亡。',0),(17,4,'abc','当地时间12日，美国田纳西州发生枪击案，某电视台主播在直播报道时看见画面中又飞过一架警用直升机，误以为是之前的回放。过了几秒钟她才反应过来：“我忘记还有另一场枪击案了...” 有网友在下方评论：22秒视频让你认识美国。',0),(18,5,'杨栩','出现6例罕见血栓病例后，美国叫停强生新冠疫苗接种，强生回应：未确定疫苗与血栓有关。',0),(21,6,'王五','今天是审美啊收到好多好',0),(22,6,'王五','日本政府4月13日早上在首相官邸召开内阁会议，正式决定将福岛第一核电站含有对海洋环境有害的核污水排放入海的方针，预定2年后开始排放。',0),(23,6,'王五','据日本NHK报道，日本政府正式决定将福岛福岛第一核电站含有对海洋环境有害的核污水排放入海的方针，预定2年后开始排放。',0),(24,6,'王五','近日，美国联邦调查局（FBI）前翻译西贝尔·埃德蒙兹2015年的一段涉疆采访视频曝光。她坦白，“中国政府的说法，比《纽约时报》听信土耳其人的那个说法更接近事实。”她还在采访中说起美国乱疆的计划和手段，如今一一应验。',0),(25,6,'王五','美媒10日爆料白宫记者团“遭渗入”，一名化名为“凯西•蒙塔古”的网友从去年年底开始谎称自己是虚构媒体 “白宫新闻”的记者，成功骗取真正的白宫记者在新闻发布会上，至少4次替自己向白宫新闻秘书普萨基提问。',0),(26,5,'杨栩','自11日起，印度民众为庆祝“大壶节”，已有近300万人进入恒河中“洗清罪孽”。据当地警方表示，由于人数太过于庞大，已经无法强制让人群保持安全距离，且每时每刻都有11000至18000人浸泡在15条支流当中。',0),(27,5,'杨栩','日本政府想省事，东电想省钱，但即便日本政府对国际原子能机构影响巨大，他们也根本没有为日本政府开通行证。我们国内的部分自媒体哪里来的自信给日本政府“开绿灯”？说日本核废水安全的“公关稿”请不要再发了。',0),(29,6,'王五','当地时间12日，韩国“义务佩戴口罩措施”正式开始实行。无论民众所在地的防疫响应处于哪个等级，均须在所有室内空间义务佩戴口罩，违者将被处以10万韩元（约合583元人民币）的罚款；疏于管理的设施运营者将被处以150万韩元（8744元人民币）罚款。',0),(30,5,'杨栩','缅甸军政府从2010年以来针对自身国情，采购了一批“经济适用型”武器，在这件事上体现了成熟军事官僚的能力，那到底他们买了什么，又精明在哪里，请看本期节目。',0),(31,5,'杨栩','在4月13日的外交部例行记者会上，日本NHK电视台记者援引日方某些人的言论，企图为核废水排海洗地开脱。他称，中国核电站也排污水，中方却不允许日本排放，是一种“双标”。对此，赵立坚表示，福岛第一核电站发生了最高等级的核事故，其产生的废水同正常运行的核电站废水完全是两回事。对于权威机构和专家的意见，日方应予以诚实回答，而不是充耳不闻，更不能罔顾国际公共利益，将福岛核废水往海里一倒了之。',0),(32,5,'杨栩','美国国务院12日声明称，日本向海水中排放核废水的决定是透明的，该做法“似乎”符合全球公认的核安全标准。对此，赵立坚表示，美方向来重视环境问题，希望美方在真正的环境问题上对事不对人，不要让这个重视被打上引号。',0),(34,5,'杨栩','最近被一些憨憨搞得挺烦的，就比如这个被邻居投诉太吵的事，我是实打实去处理过并且装了隔音板的，视频里也展示了，这种发生在自己身上的事说一下，都有这种人说你蹭，说你懂哥，笑死我了，尬黑黑的魔怔了，这种人就属于鹦鹉学舌学多了把自己当人了，好歹也是个学音乐的，在网上这么丢人我也是佩服的',1),(36,7,'yangzehao','这网站太棒了吧！！',1),(37,7,'yangzehao','这网站太辣了！',1);
/*!40000 ALTER TABLE `userblog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercomment`
--

DROP TABLE IF EXISTS `usercomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usercomment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_content` varchar(1000) DEFAULT NULL,
  `comment_userId` int(11) DEFAULT NULL,
  `comment_blogId` int(11) DEFAULT NULL,
  `comment_username` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercomment`
--

LOCK TABLES `usercomment` WRITE;
/*!40000 ALTER TABLE `usercomment` DISABLE KEYS */;
INSERT INTO `usercomment` VALUES (1,'我觉得很对',4,12,'abc'),(2,'不行啊',6,12,'王五'),(3,'本周，非洲国家乍得突然宣布，总统代比在距首都只有300公里的前线，遭反政府武装袭击，不幸去世。军队还宣布宵禁，切断了国内所有路上关卡，说是为了“维护国家的统一与稳定”，但实际是把指挥棒交给了总统儿子，还是父死子继那一套。其实，无论是哪一方取得胜利，乍得这个“国家”都没有未来',5,12,'杨栩'),(4,'本周，非洲国家乍得突然宣布，总统代比在距首都只有300公里的前线，遭反政府武装袭击，不幸去世。军队还宣布宵禁，切断了国内所有路上关卡，说是为了“维护国家的统一与稳定”，但实际是把指挥棒交给了总统儿子，还是父死子继那一套。其实，无论是哪一方取得胜利，乍得这个“国家”都没有未来',5,12,'杨栩'),(5,'本周，非洲国家乍得突然宣布，总统代比在距首都只有300公里的前线，遭反政府武装袭击，不幸去世。军队还宣布宵禁，切断了国内所有路上关卡，说是为了“维护国家的统一与稳定”，但实际是把指挥棒交给了总统儿子，还是父死子继那一套。其实，无论是哪一方取得胜利，乍得这个“国家”都没有未来',5,12,'杨栩'),(6,'本周，非洲国家乍得突然宣布，总统代比在距首都只有300公里的前线，遭反政府武装袭击，不幸去世。军队还宣布宵禁，切断了国内所有路上关卡，说是为了“维护国家的统一与稳定”，但实际是把指挥棒交给了总统儿子，还是父死子继那一套。其实，无论是哪一方取得胜利，乍得这个“国家”都没有未来',5,12,'杨栩'),(7,'本周，非洲国家乍得突然宣布，总统代比在距首都只有300公里的前线，遭反政府武装袭击，不幸去世。军队还宣布宵禁，切断了国内所有路上关卡，说是为了“维护国家的统一与稳定”，但实际是把指挥棒交给了总统儿子，还是父死子继那一套。其实，无论是哪一方取得胜利，乍得这个“国家”都没有未来',5,12,'杨栩'),(8,'那么mrna是什么呢？',7,12,'yangzehao');
/*!40000 ALTER TABLE `usercomment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-06 20:00:07
