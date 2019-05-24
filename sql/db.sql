/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.7.14-log : Database - clouddb01
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`clouddb01` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `clouddb01`;

/*Table structure for table `collect` */

DROP TABLE IF EXISTS `collect`;

CREATE TABLE `collect` (
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `collect` */

insert  into `collect`(`user_id`,`goods_id`) values (1022,16),(10,22);

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `image` char(255) COLLATE utf8_bin NOT NULL,
  `type_id` int(11) NOT NULL COMMENT '类型id',
  `name` char(255) COLLATE utf8_bin NOT NULL COMMENT '商品名',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `price` float NOT NULL,
  `status` int(11) NOT NULL COMMENT '暂时无用',
  `content` varchar(255) COLLATE utf8_bin NOT NULL,
  `producter_id` int(11) NOT NULL COMMENT '商品发布者',
  `create_date` datetime NOT NULL,
  `tag` int(11) DEFAULT '1' COMMENT '1：出售，2：捐赠，3：交换',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `goods` */

insert  into `goods`(`id`,`image`,`type_id`,`name`,`num`,`price`,`status`,`content`,`producter_id`,`create_date`,`tag`) values (1,'static/goods_img/1.jpg',4,'笔记本',1,4000,2,'二手笔记本，8成新，I7处理器',10,'2015-12-12 12:10:10',1),(2,'static/goods_img/2.jpg',2,'被套',1,30,2,'二手被套',1017,'2015-12-16 02:34:01',1),(3,'static/goods_img/3.jpg',2,'自行车',1,50,2,'二手自行车',1017,'2015-12-11 11:22:33',1),(4,'static/goods_img/4.jpg',5,'网球拍',1,50,2,'二手网球拍，用过几天，九成新',123,'2015-12-17 11:00:16',1),(5,'static/goods_img/5.jpg',5,'篮球',1,80,2,'全牛皮篮球，',9,'2015-12-17 11:02:57',1),(6,'static/goods_img/6.jpg',2,'懒人桌',1,15,2,'加固型懒人桌，九成新',123,'2015-12-17 11:05:00',1),(7,'static/goods_img/7.jpg',1,'考研书',1,30,2,'聚星文登考研',123,'2015-12-21 11:07:22',1),(8,'static/goods_img/8.jpg',1,'公务员书',1,30,2,'公务员考试书籍，9成新',123,'2015-12-23 16:02:21',1),(9,'static/goods_img/9.jpg',2,'凉席',1,60,2,'寝室牛皮凉席',123,'2015-12-23 16:20:46',1),(10,'static/goods_img/10.jpg',2,'纯棉枕头',1,50,2,'纯棉枕头',123,'2015-12-23 16:21:37',1),(11,'static/goods_img/11.jpg',2,'LED台灯，学习卧室床头书桌大学生寝室插电节能USB调光夹子台灯',1,100,2,'灯光颜色默认自然光，轻微偏黄的灯光颜色，台灯默认USB接口，台灯供电方式：1，可用一切手机充电器直接插220V家用插座。 2，可接电脑USB。 3，可接手机充电宝供电。（注：这款不是充电台灯，不带蓄电池，必须连着电源使用）',123,'2015-12-23 16:29:32',1),(12,'static/goods_img/12.jpg',1,'《c primer plus(第五版)中文版》C语言经典入门书籍',1,23,2,'只翻过几次，几乎全新。',10,'2015-12-24 01:02:27',1),(13,'static/goods_img/13.jpg',4,'诺基亚830手机',1,1200,2,'购买时间在一年内，无保修，屏幕无划痕或坏点，机身有破裂损伤，完全正常，曾无拆无修，待机时长超过2天。相关配件有原装电池。',10,'2015-12-24 01:08:58',1),(14,'static/goods_img/14.jpg',2,'室内物品收纳架，多功能免钉可伸缩衣柜分层隔板',1,11,2,'多功能免钉无痕衣柜分层架，',123,'2015-12-24 09:26:42',1),(15,'static/goods_img/15.jpg',3,'沃曼威斯韩版夜光双肩包大容量个性背包',1,50,2,'书包，8成新\r\n',123,'2015-12-24 09:36:38',1),(16,'static/goods_img/16.jpg',4,'华为荣耀4x手机',1,450,2,'移动4g标配版在保九新，京东抢购的，配件发票箱盒齐全，已经贴好钢化膜，送一软壳，便框有些许磕碰，不明显，屏幕右上方有出厂黄斑，4x通病，买回来就这样，无拆无修，特价处理。不议价，顺丰到付。',10,'2015-12-24 15:30:13',1),(17,'static/goods_img/17.jpg',4,'畅学STM32开发学习板，配套stm32f103c8t6最小系统核心板',1,67,2,'畅学STM32开发学习板，所有模块均可用',10,'2015-12-24 15:34:45',1),(18,'static/goods_img/18.jpg',1,'地球往事系列小说 ，三体1+三体2黑暗森林+三体3死神永生',1,72,2,'重庆出版集团出版\r\n全部是正版\r\nISBN编号: 9787536693968',10,'2015-12-24 15:43:54',1),(19,'static/goods_img/19.jpg',1,'《1984》(精装珍藏本) 奥威尔著  世界名著小说',1,23,2,'全新\r\n中国画报出版社出版\r\n译者: 林东泰\r\nISBN编号: 9787514601312\r\n2011年08月',10,'2015-12-25 15:57:39',1),(20,'static/goods_img/20.jpg',1,'hello',1,90,2,'hello world',1022,'2019-05-23 16:08:09',1),(21,'static/goods_img/21.jpg',1,'test',1,10,2,'test',1022,'2019-05-23 16:24:31',3),(22,'static/goods_img/22.jpg',5,'测试',1,10,2,'测试',1022,'2019-05-23 17:15:24',1);

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `mess_from_id` int(11) NOT NULL,
  `mess_to_id` int(11) NOT NULL,
  `mess_text` varchar(255) COLLATE utf8_bin NOT NULL,
  `send_time` datetime NOT NULL,
  `mess_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mess_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`mess_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `message` */

insert  into `message`(`mess_from_id`,`mess_to_id`,`mess_text`,`send_time`,`mess_id`,`mess_type`) values (1022,10,'admindemo','2019-05-23 15:12:12',31,NULL),(1,1022,'你的商品 <a target=\'_blank\' href=\'goods/info.jsp?goodsid=21\'>test</a>已经审核通过','2019-05-23 16:31:45',32,NULL),(1,10,'你的商品 <a target=\'_blank\' href=\'goods/info.jsp?goodsid=18\'>地球往事系列小说 ，三体1+三体2黑暗森林+三体3死神永生</a>已经审核通过','2019-05-23 16:43:22',33,NULL),(1,10,'你的商品 <a target=\'_blank\' href=\'goods/info.jsp?goodsid=19\'>《1984》(精装珍藏本) 奥威尔著  世界名著小说</a>已经审核通过','2019-05-23 16:43:23',34,NULL),(1,10,'你的商品 <a target=\'_blank\' href=\'goods/info.jsp?goodsid=17\'>畅学STM32开发学习板，配套stm32f103c8t6最小系统核心板</a>已经审核通过','2019-05-23 16:43:26',36,NULL),(1,1022,'你的商品 <a target=\'_blank\' href=\'goods/info.jsp?goodsid=22\'>测试</a>已经审核通过','2019-05-23 17:16:20',37,NULL),(10,1022,'我的地址是','2019-05-23 17:16:40',38,NULL),(1022,10,'好的','2019-05-23 17:17:14',39,NULL);

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `message` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order` */

insert  into `order`(`id`,`goods_id`,`user_id`,`date`,`message`) values (1,22,10,'2019-05-23 17:17:34','我的地址是'),(2,22,10,'2019-05-23 17:18:49','阿萨德'),(3,22,10,'2019-05-23 17:19:31','此物品通过购物车批量购买'),(4,22,1022,'2019-05-23 18:04:17','hello wolfdas'),(5,22,1022,'2019-05-23 18:04:24','fad'),(6,22,1022,'2019-05-23 20:28:44','此物品通过购物车批量购买');

/*Table structure for table `shoppingcart` */

DROP TABLE IF EXISTS `shoppingcart`;

CREATE TABLE `shoppingcart` (
  `id` int(11) NOT NULL,
  `goodsId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `shoppingcart` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `img` char(255) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL,
  `email` char(255) COLLATE utf8_bin NOT NULL,
  `pwd` char(255) COLLATE utf8_bin NOT NULL,
  `name` char(255) COLLATE utf8_bin DEFAULT NULL,
  `stu_num` char(255) COLLATE utf8_bin DEFAULT NULL,
  `qq` char(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` char(255) COLLATE utf8_bin DEFAULT NULL,
  `mess_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user` */

insert  into `user`(`img`,`id`,`email`,`pwd`,`name`,`stu_num`,`qq`,`phone`,`mess_num`) values (NULL,1,'hfuu_shop@163.com','8560ef54213c8b32e89a24ccc323a79e','交易系统',NULL,NULL,NULL,1),('static/user_img/9',9,'dandan@qq.com','14e1b600b1fd579f47433b88e8d85291','朱雷雷',NULL,NULL,'',0),('static/user_img/10',10,'veekxt@gmail.com','14e1b600b1fd579f47433b88e8d85291','解涛',NULL,NULL,'15256925578',0),('static/user_img/123',123,'1300573251@qq.com','191016dc3346309bee3403f55f77e871','张剑',NULL,NULL,NULL,0),('',1001,'admin@163.com','admindemo','bigguy',NULL,NULL,NULL,0),('static/user_img/0',1017,'1050026@qq.com','acd09f1f204179b957001f53f411899b','陈生辉',NULL,NULL,'13245634567',0),('static/user_img/1019',1019,'18256989168@163.com','191016dc3346309bee3403f55f77e871','张剑',NULL,NULL,NULL,0),(NULL,1020,'121@qq.com','14e1b600b1fd579f47433b88e8d85291',NULL,NULL,NULL,NULL,0),(NULL,1021,'leilei@qq.com','14e1b600b1fd579f47433b88e8d85291',NULL,NULL,NULL,NULL,0),('static/user_img/0',1022,'bigguy@qq.com','a690000de8e39cc906f647501b4106db','hecheng',NULL,NULL,'',0);

/* Trigger structure for table `goods` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `notify_auditing` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'%' */ /*!50003 TRIGGER `notify_auditing` AFTER UPDATE ON `goods` FOR EACH ROW begin
set @goodsid=new.id;
set @goodsname=new.name;
set @newst=new.status;
set @oldst=old.status;
if ((@newst=2) and (@oldst=1)) then
INSERT INTO `message`(mess_from_id,mess_to_id,mess_text,send_time) VALUES(1,new.producter_id,CONCAT("你的商品 ","<a target='_blank' href='goods/info.jsp?goodsid=",@goodsid,"'>",@goodsname,"</a>","已经审核通过"),now());
end if;
if ((@newst=3) and (@oldst=1)) then
INSERT INTO `message`(mess_from_id,mess_to_id,mess_text,send_time) VALUES(1,new.producter_id,CONCAT("你的商品 ","<a target='_blank' href='goods/info.jsp?goodsid=",@goodsid,"'>",@goodsname,"</a>","审核未通过"),now());
end if;
end */$$


DELIMITER ;

/* Trigger structure for table `message` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `change_user_mess_num` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'%' */ /*!50003 TRIGGER `change_user_mess_num` AFTER INSERT ON `message` FOR EACH ROW update user set mess_num=mess_num+1 where id=new.mess_to_id */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
