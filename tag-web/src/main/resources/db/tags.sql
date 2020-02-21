/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.61 : Database - tags
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tags` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tags`;

/*Table structure for table `tbl_app_info` */

DROP TABLE IF EXISTS `tbl_app_info`;

CREATE TABLE `tbl_app_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) DEFAULT NULL,
  `jobid` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_app_info` */

insert  into `tbl_app_info`(`id`,`tag_id`,`jobid`,`status`,`starttime`,`endtime`) values (1,8,NULL,3,NULL,NULL);

/*Table structure for table `tbl_basic_tag` */

DROP TABLE IF EXISTS `tbl_basic_tag`;

CREATE TABLE `tbl_basic_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '标签名称',
  `industry` varchar(30) DEFAULT NULL COMMENT '行业、子行业、业务类型、标签、属性',
  `rule` varchar(300) DEFAULT NULL COMMENT '标签规则',
  `business` varchar(100) DEFAULT NULL COMMENT '业务描述',
  `level` int(11) DEFAULT NULL COMMENT '标签等级',
  `pid` bigint(20) DEFAULT NULL COMMENT '父标签ID',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `state` int(11) DEFAULT NULL COMMENT '状态：1申请中、2开发中、3开发完成、4已上线、5已下线、6已禁用',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8 COMMENT='基础标签表';

/*Data for the table `tbl_basic_tag` */

insert  into `tbl_basic_tag`(`id`,`name`,`industry`,`rule`,`business`,`level`,`pid`,`ctime`,`utime`,`state`,`remark`) values (1,'电商','电商',NULL,NULL,1,-1,'2018-06-08 09:26:28','2018-06-08 09:26:30',2,NULL),(2,'某商城','子行业',NULL,NULL,2,1,'2018-06-08 09:27:59','2018-06-08 09:28:01',2,NULL),(3,'人口属性','用户特征',NULL,NULL,3,2,'2018-06-08 09:28:41','2018-06-08 09:28:42',2,NULL),(4,'商业属性','消费特征',NULL,NULL,3,2,'2018-06-08 09:41:02','2018-06-08 09:41:04',2,NULL),(5,'行为属性','兴趣特征',NULL,NULL,3,2,'2018-06-08 09:42:36','2018-06-08 09:42:39',2,NULL),(6,'用户价值',NULL,NULL,NULL,3,2,'2019-07-04 00:08:24','2019-07-04 00:08:24',3,NULL),(8,'性别','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','注册会员的性别',4,3,'2019-07-03 23:14:23','2019-07-04 20:22:47',3,NULL),(9,'年龄段','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','注册用户的生日所属年龄段',4,3,'2019-07-03 23:16:27','2019-07-03 23:16:27',4,NULL),(10,'身高','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','注册用户的身高',4,3,'2019-07-03 23:18:00','2019-07-03 23:18:00',4,NULL),(11,'民族','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','注册用户的民族',4,3,'2019-07-03 23:19:45','2019-07-03 23:19:45',4,NULL),(12,'籍贯','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','注册用户的籍贯',4,3,'2019-07-03 23:21:03','2019-07-03 23:21:03',4,NULL),(13,'政治面貌','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','注册用户的政治面貌',4,3,'2019-07-03 23:22:29','2019-07-03 23:22:29',4,NULL),(14,'职业','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','注册用户的职业',4,3,'2019-07-03 23:24:09','2019-07-03 23:24:09',4,NULL),(15,'婚姻状况','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','注册用户的婚姻状况',4,3,'2019-07-03 23:25:55','2019-07-03 23:25:55',4,NULL),(16,'学历','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','注册用户的学历',4,3,'2019-07-03 23:27:06','2019-07-03 23:27:06',4,NULL),(17,'就业状况','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','注册用户的就业状况',4,3,'2019-07-03 23:29:08','2019-07-03 23:29:08',4,NULL),(18,'星座','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','注册用户的星座',4,3,'2019-07-03 23:35:41','2019-07-03 23:35:41',4,NULL),(19,'所在商圈','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','注册用户所属的商圈',4,3,'2019-07-03 23:44:59','2019-07-03 23:44:59',4,NULL),(20,'国籍','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','注册用户所属的国籍：中国大陆、中国香港、中国澳门、中国台湾、其他',4,3,'2019-07-03 23:46:15','2019-07-03 23:46:15',4,NULL),(21,'消费周期','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户的消费周期：7日、2周、1月、2月、3月、4月、5月、6月、1年',4,4,'2019-07-03 23:49:06','2019-07-03 23:49:06',4,NULL),(22,'消费能力','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户的消费能力：超高、高、中上、中、中下、低、很低',4,4,'2019-07-03 23:50:53','2019-07-03 23:50:53',4,NULL),(23,'客单价','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户订单数据的客单价：1~999、1000~2999、3000~4999、5000~9999',4,4,'2019-07-03 23:53:26','2019-07-03 23:53:26',4,NULL),(24,'支付方式','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户订单的支付方式：支付宝、微信、储蓄卡、信用卡',4,4,'2019-07-03 23:54:32','2019-07-03 23:54:32',4,NULL),(25,'单笔最高','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户订单数据中的金额最高的订单：1~999、1000~2999、3000~4999、5000~9999',4,4,'2019-07-03 23:56:19','2019-07-03 23:56:19',4,NULL),(26,'购买频率','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户订单数据中的购买频率：高、中、低',4,4,'2019-07-03 23:58:06','2019-07-03 23:58:06',4,NULL),(27,'退货率','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户订单中的退货率：高、中、低',4,4,'2019-07-03 23:59:39','2019-07-03 23:59:39',4,NULL),(28,'换货率','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户订单中的换货率：高、中、低',4,4,'2019-07-04 00:01:27','2019-07-04 00:01:27',4,NULL),(29,'省钱小能手','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','订单中的省钱能手（折扣）：3折~4折、5折~7折、8折~9折',4,4,'2019-07-04 00:04:09','2019-07-04 00:04:09',4,NULL),(30,'有券必买','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','订单中的有券必买：折扣券、活动券、积分换购',4,4,'2019-07-04 00:05:29','2019-07-04 00:05:29',4,NULL),(31,'客服咨询频率','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_ consult\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户的客服咨询频率：高、中、低',4,4,'2019-07-04 00:07:18','2019-07-04 00:07:18',4,NULL),(33,'最近登录','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户行为日志中的最近登录：1日内、7日内、14日内、1个月内',4,5,'2019-07-04 00:11:07','2019-07-04 00:11:07',4,NULL),(34,'浏览页面','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户行为日志中的浏览页面：该商城所有页面',4,5,'2019-07-04 00:12:30','2019-07-04 00:12:30',4,NULL),(35,'浏览时长','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','浏览时长：1分钟内、1~5分钟、5分钟以上',4,5,'2019-07-04 00:13:19','2019-07-04 00:13:19',4,NULL),(37,'访问频率','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户行为数据中的访问频率：经常、从不、偶尔、很少',4,5,'2019-07-04 13:54:20','2019-07-04 13:54:20',4,NULL),(38,'设备类型','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户行为数据中的设备类型：Window、Mac、Linux、Iphone、小米、华为',4,5,'2019-07-04 13:55:48','2019-07-04 13:55:48',4,NULL),(39,'浏览时段','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户行为数据中的浏览时段：1点~7点、8点~12点、13点~17点、18点~21点、22点~24点',4,5,'2019-07-04 13:57:32','2019-07-04 13:57:32',4,NULL),(40,'近7日登录频率','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户行为数据中的登录频率:无、较少、一般、经常',4,5,'2019-07-04 13:58:35','2019-07-04 13:58:35',4,NULL),(41,'浏览商品','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户行为数据中的浏览商品：所有商品',4,5,'2019-07-04 13:59:45','2019-07-04 13:59:45',4,NULL),(42,'购买商品','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户行为数据中的购买商品：所有商品',4,5,'2019-07-04 14:01:13','2019-07-04 14:01:13',4,NULL),(43,'商品偏好','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户行为数据中的商品偏好：所有商品',4,5,'2019-07-04 14:03:15','2019-07-04 14:03:15',4,NULL),(44,'品类偏好','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户行为数据中的品类偏好：所有的品类',4,5,'2019-07-04 14:06:12','2019-07-04 14:06:12',4,NULL),(45,'品牌偏好','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','用户行为数据中的品类偏好',4,5,'2019-07-04 14:07:20','2019-07-04 14:07:20',4,NULL),(46,'房产','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','从订单数据中确定房产：有房无贷、公积金贷款、商业贷款、无房',4,6,'2019-07-04 14:10:38','2019-07-04 14:10:38',4,NULL),(47,'房产价值','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','房产价值：50w以内、50~100w以内、100~200w以内、200~500w以内、500w及以上',4,6,'2019-07-04 14:12:14','2019-07-04 14:12:14',4,NULL),(48,'车产','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','车产：有车无贷、有车有贷、无车',4,6,'2019-07-04 14:13:13','2019-07-04 14:13:13',4,NULL),(49,'车产价值','标签','inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','车产价值：1~99999、100000~199999、200000~299999、300000~699999、70w及以上',4,6,'2019-07-04 14:14:27','2019-07-04 14:14:27',4,NULL),(50,'男','属性','0','注册会员性别男',5,8,'2019-07-04 14:15:02','2019-07-04 14:15:28',3,NULL),(51,'女','属性','1','注册会员性别女',5,8,'2019-07-04 14:15:19','2019-07-04 14:15:19',3,NULL),(52,'50后','属性','19500101-19591231','注册会员出生日期为1950年-1959年区间的',5,9,'2019-07-04 14:16:51','2019-07-04 14:17:31',3,NULL),(53,'60后','属性','19600101-19691231','注册会员出生日期为1960年-1969年区间的',5,9,'2019-07-04 14:17:53','2019-07-04 14:17:53',3,NULL),(54,'70后','属性','19700101-19791231','注册会员出生日期为1970年-1979年区间的',5,9,'2019-07-04 14:18:21','2019-07-04 14:18:21',3,NULL),(55,'80后','属性','19800101-19891231','注册会员出生日期为1980年-1989年区间的',5,9,'2019-07-04 14:19:05','2019-07-04 14:19:05',3,NULL),(56,'90后','属性','19900101-19991231','注册会员出生日期为1990年-1999年区间的',5,9,'2019-07-04 14:19:46','2019-07-04 14:19:46',3,NULL),(57,'00后','属性','20000101-20091231','注册会员出生日期为2000年-2009年区间的',5,9,'2019-07-04 14:20:32','2019-07-04 14:20:32',3,NULL),(58,'10后','属性','20100101-20191231','注册会员出生日期为2010年-2019年区间的',5,9,'2019-07-04 14:21:13','2019-07-04 14:21:13',3,NULL),(59,'20后','属性','20200101-20291231','注册会员出生日期为2020年-2029年区间的',5,9,'2019-07-04 14:22:00','2019-07-04 14:22:00',3,NULL),(60,'150-159','属性','150-159','用户身高在150-159区间',5,10,'2019-07-04 14:23:12','2019-07-04 14:23:12',3,NULL),(61,'160-169','属性','160-169','用户身高在160-169区间',5,10,'2019-07-04 14:23:49','2019-07-04 14:23:49',3,NULL),(62,'170-179','属性','170-179','用户身高在170-179区间',5,10,'2019-07-04 14:24:29','2019-07-04 14:24:29',3,NULL),(63,'180-189','属性','180-189','用户身高在180-189区间',5,10,'2019-07-04 14:24:44','2019-07-04 14:24:44',3,NULL),(64,'190-199','属性','190-199','用户身高在190-199区间',5,10,'2019-07-04 14:32:33','2019-07-04 14:32:33',3,NULL),(65,'200-209','属性','200-209','用户身高在200-209区间',5,10,'2019-07-04 14:33:04','2019-07-04 14:33:04',3,NULL),(66,'210-240','属性','210-240','用户身高在210-240区间',5,10,'2019-07-04 14:33:23','2019-07-04 14:33:23',3,NULL),(67,'汉族','属性','0','注册会员民族为汉族',5,11,'2019-07-04 14:35:23','2019-07-04 14:35:23',3,NULL),(68,'蒙古族','属性','1','注册会员民族为蒙古族',5,11,'2019-07-04 14:38:57','2019-07-04 14:38:57',3,NULL),(69,'回族','属性','2','注册会员民族为回族',5,11,'2019-07-04 14:39:26','2019-07-04 14:39:26',3,NULL),(70,'藏族','属性','3','注册会员民族为藏族',5,11,'2019-07-04 14:39:58','2019-07-04 14:39:58',3,NULL),(71,'维吾尔族','属性','4','注册会员民族为维吾尔族',5,11,'2019-07-04 14:42:01','2019-07-04 14:42:01',3,NULL),(72,'苗族','属性','5','注册会员民族为苗族',5,11,'2019-07-04 14:42:22','2019-07-04 14:42:22',3,NULL),(73,'满族','属性','6','注册会员民族为满族',5,11,'2019-07-04 14:42:44','2019-07-04 14:42:44',3,NULL),(74,'北京','属性','beijing','注册会员籍贯为北京',5,12,'2019-07-04 14:43:31','2019-07-04 14:43:31',3,NULL),(75,'上海','属性','shanghai','注册会员籍贯为上海',5,12,'2019-07-04 14:43:57','2019-07-04 14:43:57',3,NULL),(76,'广州','属性','guangzhou','注册会员籍贯为广州',5,12,'2019-07-04 14:44:25','2019-07-04 14:44:25',3,NULL),(77,'深圳','属性','shenzhen','注册会员籍贯为深圳',5,12,'2019-07-04 14:44:54','2019-07-04 14:44:54',3,NULL),(78,'杭州','属性','hangzhou','注册会员籍贯为杭州',5,12,'2019-07-04 14:45:16','2019-07-04 14:45:16',3,NULL),(79,'苏州','属性','suzhou','注册用户籍贯为苏州',5,12,'2019-07-04 14:45:36','2019-07-04 14:45:36',3,NULL),(80,'群众','属性','群众','政治面貌为群众',5,13,'2019-07-04 14:46:07','2019-07-04 14:46:07',3,NULL),(81,'党员','属性','党员','政治面貌为党员',5,13,'2019-07-04 14:46:36','2019-07-04 14:46:36',3,NULL),(82,'无党派人士','属性','无党派人士','政治面貌为无党派人士',5,13,'2019-07-04 14:46:59','2019-07-04 14:46:59',3,NULL),(83,'学生','属性','学生','职业是学生',5,14,'2019-07-04 14:49:43','2019-07-04 14:49:43',3,NULL),(84,'公务员','属性','公务员','职业是公务员',5,14,'2019-07-04 14:50:03','2019-07-04 14:50:03',3,NULL),(85,'军人','属性','军人','职业是军人',5,14,'2019-07-04 14:50:16','2019-07-04 14:50:16',3,NULL),(86,'警察','属性','警察','职业是警察',5,14,'2019-07-04 14:50:33','2019-07-04 14:50:33',3,NULL),(87,'教师','属性','教师','职业是教师',5,14,'2019-07-04 14:50:48','2019-07-04 14:50:48',3,NULL),(88,'工人','属性','工人','职业是工人',5,14,'2019-07-04 14:51:04','2019-07-04 14:51:04',3,NULL),(89,'未婚','属性','未婚','婚姻状况是未婚',5,15,'2019-07-04 14:51:31','2019-07-04 14:51:31',3,NULL),(90,'已婚','属性','已婚','婚姻状况是已婚',5,15,'2019-07-04 14:51:52','2019-07-04 14:51:52',3,NULL),(91,'离异','属性','离异','婚姻状况是离异',5,15,'2019-07-04 14:52:04','2019-07-04 14:52:04',3,NULL),(92,'小学','属性','小学','学历是小学',5,16,'2019-07-04 14:52:22','2019-07-04 14:52:22',3,NULL),(93,'初中','属性','初中','学历是初中',5,16,'2019-07-04 14:52:50','2019-07-04 14:52:50',3,NULL),(94,'高中','属性','高中','学历是高中',5,16,'2019-07-04 14:53:05','2019-07-04 14:53:05',3,NULL),(95,'大专','属性','大专','学历是大专',5,16,'2019-07-04 14:53:23','2019-07-04 14:53:23',3,NULL),(96,'本科','属性','本科','学历是本科',5,16,'2019-07-04 14:53:35','2019-07-04 14:53:35',3,NULL),(97,'硕士','属性','硕士','学历是硕士',5,16,'2019-07-04 14:55:07','2019-07-04 14:55:07',3,NULL),(98,'博士','属性','博士','学历是博士',5,16,'2019-07-04 14:55:22','2019-07-04 14:55:22',3,NULL),(99,'事业单位','属性','事业单位','在事业单位就业',5,17,'2019-07-04 14:56:00','2019-07-04 14:56:00',3,NULL),(100,'在职','属性','在职','就业状况是在职',5,17,'2019-07-04 14:56:26','2019-07-04 14:56:26',3,NULL),(101,'待业','属性','待业','就业状况是待业',5,17,'2019-07-04 14:57:06','2019-07-04 14:57:06',3,NULL),(102,'自主创业','属性','自主就业','就业状况为自主就业',5,17,'2019-07-04 15:00:01','2019-07-04 15:00:01',3,NULL),(103,'白羊座','属性','0321-0420','白羊座',5,18,'2019-07-04 15:02:05','2019-07-04 15:02:05',3,NULL),(104,'金牛座','属性','0421-0521','金牛座',5,18,'2019-07-04 15:02:28','2019-07-04 15:02:28',3,NULL),(105,'双子座','属性','0522-0621','双子座',5,18,'2019-07-04 15:03:08','2019-07-04 15:03:08',3,NULL),(106,'巨蟹座','属性','0622-0722','巨蟹座',5,18,'2019-07-04 15:04:05','2019-07-04 15:04:05',3,NULL),(107,'狮子座','属性','0723-0922','狮子座',5,18,'2019-07-04 15:05:28','2019-07-04 15:05:28',3,NULL),(108,'处女座','属性','0823-0923','处女座',5,18,'2019-07-04 15:05:46','2019-07-04 15:05:46',3,NULL),(109,'天秤座','属性','0924-1023','天秤座',5,18,'2019-07-04 15:06:12','2019-07-04 15:06:12',3,NULL),(110,'天蝎座','属性','1024-1122','天蝎座',5,18,'2019-07-04 15:07:56','2019-07-04 15:07:56',3,NULL),(111,'射手座','属性','1123-1221','射手座',5,18,'2019-07-04 15:09:03','2019-07-04 15:09:03',3,NULL),(112,'摩羯座','属性','1222-0120','摩羯座',5,18,'2019-07-04 15:09:27','2019-07-04 15:09:27',3,NULL),(113,'水瓶座','属性','0121-0219','水瓶座',5,18,'2019-07-04 15:09:53','2019-07-04 15:09:53',3,NULL),(114,'双鱼座','属性','0220-0320','双鱼座',5,18,'2019-07-04 15:10:16','2019-07-04 15:10:16',3,NULL),(115,'CBD','属性','CBD','在CBD',5,19,'2019-07-04 15:10:58','2019-07-04 15:10:58',3,NULL),(116,'西单','属性','西单','在西单',5,19,'2019-07-04 15:11:19','2019-07-04 15:11:19',3,NULL),(117,'王府井','属性','王府井','在王府井',5,19,'2019-07-04 15:11:34','2019-07-04 15:11:34',3,NULL),(118,'朝外','属性','朝外','在朝外',5,19,'2019-07-04 15:11:46','2019-07-04 15:11:46',3,NULL),(119,'三里屯','属性','三里屯','在三里屯',5,19,'2019-07-04 15:12:07','2019-07-04 15:12:07',3,NULL),(120,'徐家汇','属性','徐家汇','在徐家汇',5,19,'2019-07-04 15:12:21','2019-07-04 15:12:21',3,NULL),(121,'环球港','属性','环球港','在环球港',5,19,'2019-07-04 15:12:33','2019-07-04 15:12:33',3,NULL),(122,'中国大陆','属性','中国大陆','国籍是中国大陆',5,20,'2019-07-04 15:13:05','2019-07-04 15:13:05',3,NULL),(123,'中国香港','属性','中国香港','国籍是中国香港',5,20,'2019-07-04 15:13:20','2019-07-04 15:13:20',3,NULL),(124,'中国澳门','属性','中国澳门','国籍是中国澳门',5,20,'2019-07-04 15:13:43','2019-07-04 15:13:43',3,NULL),(125,'中国台湾','属性','中国台湾','国籍是中国台湾',5,20,'2019-07-04 15:13:57','2019-07-04 15:13:57',3,NULL),(126,'其他','属性','其他','国籍是其他',5,20,'2019-07-04 15:14:14','2019-07-04 15:14:14',3,NULL),(127,'近7天','属性','7day','消费周期是近7日',5,21,'2019-07-04 15:15:29','2019-07-04 15:15:29',3,NULL),(128,'近14天','属性','14day','消费周期是近2周',5,21,'2019-07-04 15:15:59','2019-07-04 15:15:59',3,NULL),(129,'近30天','属性','30day','消费周期是近1月',5,21,'2019-07-04 15:16:39','2019-07-04 15:16:39',3,NULL),(130,'近60天','属性','60day','消费周期是近60天',5,21,'2019-07-04 15:17:29','2019-07-04 15:17:29',3,NULL),(131,'近90天','属性','90day','消费周期是近90天',5,21,'2019-07-04 15:18:41','2019-07-04 15:18:41',3,NULL),(132,'超高','属性','50000-1000000','超高的消费能力',5,22,'2019-07-04 15:19:40','2019-07-04 15:19:40',3,NULL),(133,'高','属性','40000-49999','高消费能力',5,22,'2019-07-04 15:20:25','2019-07-04 15:20:25',3,NULL),(134,'中上','属性','30000-39999','中等偏上的消费能力',5,22,'2019-07-04 15:21:15','2019-07-04 15:21:15',3,NULL),(135,'中','属性','20000-29999','消费能力中等',5,22,'2019-07-04 15:21:57','2019-07-04 15:21:57',3,NULL),(136,'中下','属性','10000-19999','消费能力中等偏下哦',5,22,'2019-07-04 15:22:43','2019-07-04 15:22:43',3,NULL),(137,'低','属性','1000-9999','消费能力较低',5,22,'2019-07-04 15:24:17','2019-07-04 15:24:17',3,NULL),(138,'很低','属性','1-999','消费能力很低哦',5,22,'2019-07-04 15:24:57','2019-07-04 15:24:57',3,NULL),(139,'1-999','属性','1-999','客单价在1-999区间',5,23,'2019-07-04 15:26:39','2019-07-04 15:26:39',3,NULL),(140,'1000-2999','属性','1000-2999','客单价在1000-2999区间',5,23,'2019-07-04 15:27:01','2019-07-04 15:27:01',3,NULL),(141,'3000-4999','属性','3000-4999','客单价在3000-4999区间',5,23,'2019-07-04 15:27:36','2019-07-04 15:27:36',3,NULL),(142,'5000-9999','属性','5000-9999','客单价在5000-9999区间',5,23,'2019-07-04 15:28:02','2019-07-04 15:28:02',3,NULL),(143,'支付宝','属性','支付宝','喜欢用支付宝付款',5,24,'2019-07-04 15:28:36','2019-07-04 15:28:36',3,NULL),(144,'微信','属性','微信','喜欢用微信支付',5,24,'2019-07-04 15:28:55','2019-07-04 15:28:55',3,NULL),(145,'储蓄卡','属性','储蓄卡','经常用储蓄卡付款',5,24,'2019-07-04 15:29:21','2019-07-04 15:29:21',3,NULL),(146,'信用卡','属性','信用卡','喜欢用信用卡支付',5,24,'2019-07-04 15:29:45','2019-07-04 15:29:45',3,NULL),(147,'1-999','属性','1-999','单笔最高金额范围是1-999',5,25,'2019-07-04 16:43:57','2019-07-04 16:43:57',3,NULL),(148,'1000-2999','属性','1000-2999','单笔最高支付金额的范围是1000-2999',5,25,'2019-07-04 16:44:29','2019-07-04 16:44:29',3,NULL),(149,'3000-4999','属性','3000-4999','单笔最高的支付金额是3000-4999',5,25,'2019-07-04 16:44:55','2019-07-04 16:44:55',3,NULL),(150,'5000-9999','属性','5000-9999','单笔最高支付金额为5000-9999',5,25,'2019-07-04 16:45:18','2019-07-04 16:45:18',3,NULL),(151,'高','属性','7day','购买频率很高',5,26,'2019-07-04 16:46:52','2019-07-04 16:46:52',3,NULL),(152,'中','属性','中','购买频率中等',5,26,'2019-07-04 17:03:37','2019-07-04 17:03:37',3,NULL),(153,'低','属性','低','购买频率较低',5,26,'2019-07-04 17:04:02','2019-07-04 17:04:02',3,NULL),(154,'高','属性','高','高退货率',5,27,'2019-07-04 17:04:23','2019-07-04 17:04:23',3,NULL),(155,'中','属性','中','退货率中等',5,27,'2019-07-04 17:04:42','2019-07-04 17:04:42',3,NULL),(156,'低','属性','低','退货率很低哦',5,27,'2019-07-04 17:05:13','2019-07-04 17:05:13',3,NULL),(157,'高','属性','高','换货率很高',5,28,'2019-07-04 17:05:37','2019-07-04 17:05:37',3,NULL),(158,'中','属性','中','换货率中等',5,28,'2019-07-04 17:05:52','2019-07-04 17:05:52',3,NULL),(159,'低','属性','低','换货率较低',5,28,'2019-07-04 17:06:09','2019-07-04 17:06:09',3,NULL),(160,'3折-4折','属性','0.3-0.4','3折~4折时必买',5,29,'2019-07-04 17:07:59','2019-07-04 17:07:59',3,NULL),(161,'5折-7折','属性','0.5-0.7','5折~7折时必买',5,29,'2019-07-04 17:08:29','2019-07-04 17:08:29',3,NULL),(162,'8折-9折','属性','0.8-0.9','8折-9折时必买',5,29,'2019-07-04 17:08:56','2019-07-04 17:08:56',3,NULL),(163,'折扣券','属性','折扣券','有折扣券时必买',5,30,'2019-07-04 17:09:29','2019-07-04 17:09:29',3,NULL),(164,'活动券','属性','活动券','有活动券时必买',5,30,'2019-07-04 17:09:49','2019-07-04 17:09:49',3,NULL),(165,'积分换购','属性','积分换购','喜欢用积分换购商品',5,30,'2019-07-04 17:10:17','2019-07-04 17:10:17',3,NULL),(166,'高','属性','高','经常下单前先咨询客服',5,31,'2019-07-04 17:10:52','2019-07-04 17:10:52',3,NULL),(167,'中','属性','中','偶尔下单前会咨询客服',5,31,'2019-07-04 17:11:19','2019-07-04 17:11:19',3,NULL),(168,'低','属性','低','很少下单前去咨询客服',5,31,'2019-07-04 17:11:47','2019-07-04 17:11:47',3,NULL),(169,'1天内','属性','1day','最近1天内登录过',5,33,'2019-07-04 17:13:00','2019-07-04 17:13:00',3,NULL),(170,'7天内','属性','7day','最近7天内登录过',5,33,'2019-07-04 17:13:19','2019-07-04 17:13:19',3,NULL),(171,'14天内','属性','14day','最近14天内登录过',5,33,'2019-07-04 17:13:42','2019-07-04 17:13:42',3,NULL),(172,'30天内','属性','30day','最近30天内登录过',5,33,'2019-07-04 17:13:58','2019-07-04 17:13:58',3,NULL),(173,'登录页','属性','登录页','最近打开过登录页',5,34,'2019-07-04 17:14:45','2019-07-04 17:14:45',3,NULL),(174,'首页','属性','首页','打开过首页',5,34,'2019-07-04 17:15:44','2019-07-04 17:15:44',3,NULL),(175,'分类页','属性','分类页','最近打开过分类页',5,34,'2019-07-04 17:16:03','2019-07-04 17:16:03',3,NULL),(176,'商品页','属性','商品页','最近打开过商品页',5,34,'2019-07-04 17:16:28','2019-07-04 17:16:28',3,NULL),(177,'我的订单页','属性','我的订单页','最近打开过我的订单页',5,34,'2019-07-04 17:17:06','2019-07-04 17:17:06',3,NULL),(178,'订单物流页','属性','订单物流页','最近查询过订单物流',5,34,'2019-07-04 17:17:32','2019-07-04 17:17:32',3,NULL),(179,'1分钟内','属性','<60second','浏览页面时长平均在1分钟内',5,35,'2019-07-04 17:19:03','2019-07-04 17:19:03',3,NULL),(180,'1-5分钟内','属性','60second-299second','浏览页面时长平均在1-5分钟内',5,35,'2019-07-04 17:20:01','2019-07-04 17:20:01',3,NULL),(181,'5分钟以上','属性','>300second','浏览页面时长平均在5分钟以上',5,35,'2019-07-04 17:23:09','2019-07-04 17:23:09',3,NULL),(182,'经常','属性','经常','经常访问商城',5,37,'2019-07-04 17:26:44','2019-07-04 17:26:44',3,NULL),(183,'偶尔','属性','偶尔','偶尔访问商城',5,37,'2019-07-04 17:28:38','2019-07-04 17:28:38',3,NULL),(184,'很少','属性','很少','很少访问商城',5,37,'2019-07-04 17:28:59','2019-07-04 17:28:59',3,NULL),(185,'从不','属性','从不','注册后从不访问商城',5,37,'2019-07-04 17:29:40','2019-07-04 17:29:40',3,NULL),(186,'Windows','属性','Windows','使用Windows设备访问',5,38,'2019-07-04 17:35:57','2019-07-04 17:35:57',3,NULL),(187,'Mac','属性','Mac','使用Mac设备访问',5,38,'2019-07-04 17:36:15','2019-07-04 17:36:15',3,NULL),(188,'Linux','属性','Linux','使用Linux设备访问',5,38,'2019-07-04 17:36:43','2019-07-04 17:36:43',3,NULL),(189,'Android','属性','Android','使用Android设备访问',5,38,'2019-07-04 17:37:03','2019-07-04 17:37:03',3,NULL),(190,'IOS','属性','IOS','使用IOS设备访问',5,38,'2019-07-04 17:37:17','2019-07-04 17:37:17',3,NULL),(191,'1点-7点','属性','1-7','经常在1点-7点时访问',5,39,'2019-07-04 17:46:12','2019-07-04 17:46:12',3,NULL),(192,'8点-12点','属性','8-12','经常在8点-12点时访问',5,39,'2019-07-04 17:46:40','2019-07-04 17:46:40',3,NULL),(193,'13点-17点','属性','13-17','经常在13点-17点时访问',5,39,'2019-07-04 17:47:15','2019-07-04 17:47:15',3,NULL),(194,'18点-21点','属性','18-21','经常在18点-21点时访问',5,39,'2019-07-04 17:47:48','2019-07-04 17:47:48',3,NULL),(195,'22点-24点','属性','22-24','经常在22点-24点时访问',5,39,'2019-07-04 17:48:27','2019-07-04 17:48:27',3,NULL),(196,'无','属性','无','近7日没登录',5,40,'2019-07-04 17:50:07','2019-07-04 17:50:07',3,NULL),(197,'较少','属性','较少','近7日较少登录',5,40,'2019-07-04 17:51:30','2019-07-04 17:51:30',3,NULL),(198,'一般','属性','一般','近7日登陆过',5,40,'2019-07-04 17:52:12','2019-07-04 17:52:12',3,NULL),(199,'经常','属性','经常','近7日经常登录',5,40,'2019-07-04 17:52:29','2019-07-04 17:52:29',3,NULL),(200,'彩电','属性','彩电','彩电',5,44,'2019-07-04 18:01:29','2019-07-04 18:01:29',3,NULL),(201,'厨房电器','属性','厨房电器','厨房电器',5,44,'2019-07-04 18:01:49','2019-07-04 18:01:49',3,NULL),(202,'热水器','属性','热水器','热水器',5,44,'2019-07-04 18:02:08','2019-07-04 18:02:08',3,NULL),(203,'冰箱','属性','冰箱','冰箱',5,44,'2019-07-04 18:02:22','2019-07-04 18:02:22',3,NULL),(204,'洗衣机','属性','洗衣机','洗衣机',5,44,'2019-07-04 18:02:34','2019-07-04 18:02:34',3,NULL),(205,'生活小电','属性','生活小电','生活小电',5,44,'2019-07-04 18:02:47','2019-07-04 18:02:47',3,NULL),(206,'水家电','属性','水家电','水家电',5,44,'2019-07-04 18:02:59','2019-07-04 18:02:59',3,NULL),(207,'空调','属性','空调','空调',5,44,'2019-07-04 18:03:15','2019-07-04 18:03:15',3,NULL),(208,'冷柜','属性','冷柜','冷柜',5,44,'2019-07-04 18:03:24','2019-07-04 18:03:24',3,NULL),(209,'海尔','属性','海尔','喜欢海尔',5,45,'2019-07-04 18:05:09','2019-07-04 18:05:09',3,NULL),(210,'卡萨帝','属性','卡萨帝','喜欢卡萨帝',5,45,'2019-07-04 18:05:54','2019-07-04 18:05:54',3,NULL),(211,'摩卡','属性','摩卡','喜欢摩卡',5,45,'2019-07-04 18:06:10','2019-07-04 18:06:10',3,NULL),(212,'小超人','属性','小超人','喜欢小超人',5,45,'2019-07-04 18:06:27','2019-07-04 18:06:27',3,NULL),(213,'统帅','属性','统帅','喜欢统帅',5,45,'2019-07-04 18:06:38','2019-07-04 18:06:38',3,NULL),(214,'有房无贷','属性','有房无贷','有房无贷',5,46,'2019-07-04 18:09:59','2019-07-04 18:09:59',3,NULL),(215,'公积金贷款','属性','公积金贷款','公积金贷款买的房',5,46,'2019-07-04 18:10:27','2019-07-04 18:10:27',3,NULL),(216,'商业贷款','属性','商业贷款','使用商业贷款买的房',5,46,'2019-07-04 18:10:44','2019-07-04 18:10:44',3,NULL),(217,'无房','属性','无房','还没有买房',5,46,'2019-07-04 18:11:04','2019-07-04 18:11:04',3,NULL),(218,'50w以内','属性','0-499999','房产价值在50w以内',5,47,'2019-07-04 18:12:03','2019-07-04 18:12:03',3,NULL),(219,'50-100w以内','属性','500000-999999','房产价值在50-100w以内',5,47,'2019-07-04 18:12:39','2019-07-04 18:12:39',3,NULL),(220,'100-200w以内','属性','1000000-1999999','房产价值在100-200w以内',5,47,'2019-07-04 18:13:06','2019-07-04 18:13:06',3,NULL),(221,'200-500w以内','属性','2000000-4999999','房产价值在200-500w以内',5,47,'2019-07-04 18:13:32','2019-07-04 18:13:32',3,NULL),(222,'500w及以上','属性','>5000000','房产价值在500w及以上',5,47,'2019-07-04 18:14:10','2019-07-04 18:14:10',3,NULL),(223,'有车无贷','属性','有车无贷','有车',5,48,'2019-07-04 18:14:39','2019-07-04 18:14:39',3,NULL),(224,'有车有贷','属性','有车有贷','贷款买的车',5,48,'2019-07-04 18:14:50','2019-07-04 18:14:50',3,NULL),(225,'无车','属性','无车','还没有买车',5,48,'2019-07-04 18:15:08','2019-07-04 18:15:08',3,NULL),(226,'10w以内','属性','1-99999','价值10w以内',5,49,'2019-07-04 18:18:32','2019-07-04 18:18:32',3,NULL),(227,'10-20w以内','属性','100000-199999','价值10-20w以内',5,49,'2019-07-04 18:19:06','2019-07-04 18:19:06',3,NULL),(228,'20-30w以内','属性','200000-299999','价值20-30w以内',5,49,'2019-07-04 18:19:32','2019-07-04 18:19:32',3,NULL),(229,'30-50w以内','属性','300000-499999','价值30-50w以内',5,49,'2019-07-04 18:20:11','2019-07-04 18:20:11',3,NULL),(230,'50-70w以内','属性','500000-699999','价值50-70w以内',5,49,'2019-07-04 18:20:54','2019-07-04 18:20:54',3,NULL),(231,'70-100w以内','属性','700000-999999','价值70-100w以内',5,49,'2019-07-04 18:21:29','2019-07-04 18:21:29',3,NULL),(232,'100w及以上','属性','>1000000','价值100w及以上',5,49,'2019-07-04 18:21:53','2019-07-04 18:21:53',3,NULL);

/*Table structure for table `tbl_engine_monitor` */

DROP TABLE IF EXISTS `tbl_engine_monitor`;

CREATE TABLE `tbl_engine_monitor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '引擎名称',
  `tag_id` bigint(20) DEFAULT NULL COMMENT '标签ID',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='引擎监控表';

/*Data for the table `tbl_engine_monitor` */

/*Table structure for table `tbl_merge_tag` */

DROP TABLE IF EXISTS `tbl_merge_tag`;

CREATE TABLE `tbl_merge_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '组合标签名称',
  `condition` varchar(50) DEFAULT NULL COMMENT '组合标签条件',
  `intro` varchar(50) DEFAULT NULL COMMENT '组合标签含义',
  `purpose` varchar(50) DEFAULT NULL COMMENT '组合用途',
  `state` int(11) DEFAULT NULL COMMENT '状态：1申请中、2开发中、3开发完成、4已上线、5已下线、6已禁用',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='组合标签表';

/*Data for the table `tbl_merge_tag` */

insert  into `tbl_merge_tag`(`id`,`name`,`condition`,`intro`,`purpose`,`state`,`ctime`,`utime`,`remark`) values (1,'高净值用户','学历(硕士博士)且消费能力(超高高)且房产(有房无贷)','商城用户高学历、高消费、有房','评估商城中的高价值用户',4,'2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(2,'上海女孩','籍贯(上海)且消费能力(中上)且性别(女)','商城用户中籍贯是上海、消费能力中上、有房的女孩','查看商城中有多少上海的女性用户',4,'2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(3,'屌丝男','性别(男)且消费能力(低)且消费周期(近60天)且房产(无房)且省钱小能手(3折-4折)','商城中消费能力低、消费周期长、无房的用户','查看商城中符合屌丝特质的用户',4,'2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(4,'80后','年龄段(80后)','查看商城中的80后用户','查看商城中的80后用户',4,'2019-07-04 00:00:00','2022-07-04 00:00:00',NULL);

/*Table structure for table `tbl_merge_tag_tag_map` */

DROP TABLE IF EXISTS `tbl_merge_tag_tag_map`;

CREATE TABLE `tbl_merge_tag_tag_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merge_tag_id` bigint(20) DEFAULT NULL COMMENT '组合标签ID',
  `basic_tag_id` bigint(20) DEFAULT NULL COMMENT '基础标签ID（1级行业 or 5级属性）',
  `conditions` varchar(200) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='组合标签与基础标签关联表';

/*Data for the table `tbl_merge_tag_tag_map` */

insert  into `tbl_merge_tag_tag_map`(`id`,`merge_tag_id`,`basic_tag_id`,`conditions`,`ctime`,`utime`,`remark`) values (1,1,97,'or','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(2,1,98,'and','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(3,1,132,'or','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(4,1,133,'and','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(5,1,214,'and','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(6,2,75,'and','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(7,2,134,'and','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(8,2,51,'and','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(9,3,50,'and','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(10,3,137,'and','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(11,3,130,'and','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(12,3,217,'and','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(13,3,160,'and','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(14,4,55,'and','2019-07-04 00:00:00','2022-07-04 00:00:00',NULL);

/*Table structure for table `tbl_metadata` */

DROP TABLE IF EXISTS `tbl_metadata`;

CREATE TABLE `tbl_metadata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) DEFAULT NULL,
  `in_type` varchar(20) DEFAULT NULL,
  `driver` varchar(100) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `db_table` varchar(100) DEFAULT NULL,
  `sql` varchar(400) DEFAULT NULL,
  `in_path` varchar(400) DEFAULT NULL,
  `sperator` varchar(20) DEFAULT NULL,
  `in_fields` varchar(300) DEFAULT NULL,
  `cond_fields` varchar(300) DEFAULT NULL,
  `out_fields` varchar(300) DEFAULT NULL,
  `out_path` varchar(300) DEFAULT NULL,
  `zk_hosts` varchar(100) DEFAULT NULL,
  `zk_port` int(11) DEFAULT NULL,
  `hbase_table` varchar(100) DEFAULT NULL,
  `family` varchar(50) DEFAULT NULL,
  `select_field_names` varchar(300) DEFAULT NULL,
  `where_field_names` varchar(300) DEFAULT NULL,
  `where_field_values` varchar(300) DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `utime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_metadata` */

insert  into `tbl_metadata`(`id`,`tag_id`,`in_type`,`driver`,`url`,`username`,`password`,`db_table`,`sql`,`in_path`,`sperator`,`in_fields`,`cond_fields`,`out_fields`,`out_path`,`zk_hosts`,`zk_port`,`hbase_table`,`family`,`select_field_names`,`where_field_names`,`where_field_values`,`ctime`,`utime`,`state`,`remark`) values (1,8,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_users','info','utime','utime','2019-05-10','2019-07-03 23:14:24','2019-07-03 23:14:24',1,NULL),(2,9,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_users','info','utime','utime','2019-05-10','2019-07-03 23:16:27','2019-07-03 23:16:27',1,NULL),(3,10,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_users','info','utime','utime','2019-05-10','2019-07-03 23:18:00','2019-07-03 23:18:00',1,NULL),(4,11,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_users','info','utime','utime','2019-05-10','2019-07-03 23:19:45','2019-07-03 23:19:45',1,NULL),(5,12,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_users','info','utime','utime','2019-05-10','2019-07-03 23:21:03','2019-07-03 23:21:03',1,NULL),(6,13,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_users','info','utime','utime','2019-05-10','2019-07-03 23:22:29','2019-07-03 23:22:29',1,NULL),(7,14,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_users','info','utime','utime','2019-05-10','2019-07-03 23:24:09','2019-07-03 23:24:09',1,NULL),(8,15,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_users','info','utime','utime','2019-05-10','2019-07-03 23:25:55','2019-07-03 23:25:55',1,NULL),(9,16,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_users','info','utime','utime','2019-05-10','2019-07-03 23:27:07','2019-07-03 23:27:07',1,NULL),(10,17,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_users','info','utime','utime','2019-05-10','2019-07-03 23:29:08','2019-07-03 23:29:08',1,NULL),(11,18,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_users','info','utime','utime','2019-05-10','2019-07-03 23:35:41','2019-07-03 23:35:41',1,NULL),(12,19,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_users','info','utime','utime','2019-05-10','2019-07-03 23:44:59','2019-07-03 23:44:59',1,NULL),(13,20,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_users','info','utime','utime','2019-05-10','2019-07-03 23:46:15','2019-07-03 23:46:15',1,NULL),(14,21,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-03 23:49:06','2019-07-03 23:49:06',1,NULL),(15,22,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-03 23:50:53','2019-07-03 23:50:53',1,NULL),(16,23,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-03 23:53:27','2019-07-03 23:53:27',1,NULL),(17,24,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-03 23:54:32','2019-07-03 23:54:32',1,NULL),(18,25,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-03 23:56:19','2019-07-03 23:56:19',1,NULL),(19,26,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-03 23:58:07','2019-07-03 23:58:07',1,NULL),(20,27,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-03 23:59:39','2019-07-03 23:59:39',1,NULL),(21,28,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-04 00:01:28','2019-07-04 00:01:28',1,NULL),(22,29,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-04 00:04:09','2019-07-04 00:04:09',1,NULL),(23,30,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-04 00:05:29','2019-07-04 00:05:29',1,NULL),(24,31,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_ consult','info','utime','utime','2019-05-10','2019-07-04 00:07:18','2019-07-04 00:07:18',1,NULL),(25,33,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-04 00:11:07','2019-07-04 00:11:07',1,NULL),(26,34,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_logs','info','utime','utime','2019-05-10','2019-07-04 00:12:31','2019-07-04 00:12:31',1,NULL),(27,35,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_logs','info','utime','utime','2019-05-10','2019-07-04 00:13:20','2019-07-04 00:13:20',1,NULL),(28,36,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_logs','info','utime','utime','2019-05-10','2019-07-04 13:34:56','2019-07-04 13:34:56',1,NULL),(29,37,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_logs','info','utime','utime','2019-05-10','2019-07-04 13:54:21','2019-07-04 13:54:21',1,NULL),(30,38,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_logs','info','utime','utime','2019-05-10','2019-07-04 13:55:48','2019-07-04 13:55:48',1,NULL),(31,39,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_logs','info','utime','utime','2019-05-10','2019-07-04 13:57:32','2019-07-04 13:57:32',1,NULL),(32,40,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_logs','info','utime','utime','2019-05-10','2019-07-04 13:58:35','2019-07-04 13:58:35',1,NULL),(33,41,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_logs','info','utime','utime','2019-05-10','2019-07-04 13:59:45','2019-07-04 13:59:45',1,NULL),(34,42,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_logs','info','utime','utime','2019-05-10','2019-07-04 14:01:13','2019-07-04 14:01:13',1,NULL),(35,43,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_logs','info','utime','utime','2019-05-10','2019-07-04 14:03:15','2019-07-04 14:03:15',1,NULL),(36,44,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_logs','info','utime','utime','2019-05-10','2019-07-04 14:06:12','2019-07-04 14:06:12',1,NULL),(37,45,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_logs','info','utime','utime','2019-05-10','2019-07-04 14:07:21','2019-07-04 14:07:21',1,NULL),(38,46,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-04 14:10:39','2019-07-04 14:10:39',1,NULL),(39,47,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-04 14:12:14','2019-07-04 14:12:14',1,NULL),(40,48,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-04 14:13:13','2019-07-04 14:13:13',1,NULL),(41,49,'hbase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.10.20',2181,'tbl_orders','info','utime','utime','2019-05-10','2019-07-04 14:14:27','2019-07-04 14:14:27',1,NULL);

/*Table structure for table `tbl_model` */

DROP TABLE IF EXISTS `tbl_model`;

CREATE TABLE `tbl_model` (
  `id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `model_name` varchar(200) DEFAULT NULL,
  `model_main` varchar(200) DEFAULT NULL,
  `model_path` varchar(200) DEFAULT NULL,
  `sche_time` varchar(200) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `utime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `operation` varchar(100) DEFAULT NULL,
  `args` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_model` */

insert  into `tbl_model`(`id`,`tag_id`,`type`,`model_name`,`model_main`,`model_path`,`sche_time`,`ctime`,`utime`,`state`,`remark`,`operator`,`operation`,`args`) values (NULL,8,1,'Statistics','com.mengyao.tag.commons.models.pub.business.GenderModel','/apps/tags/models//Tag_8/lib/tags-20190703231418.jar','每天#2019-07-03 23:13#2019-07-03 23:13','2019-07-03 23:14:24',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,9,1,'Statistics','com.mengyao.tag.commons.models.pub.business.AgeRangeModel','/apps/tags/models//Tag_9/lib/tags-20190703231621.jar','每天#2019-07-03 23:15#2019-07-03 23:15','2019-07-03 23:16:27',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,10,1,'Statistics','com.mengyao.tag.commons.models.pub.business.HeightModel','/apps/tags/models//Tag_10/lib/tags-20190703231749.jar','每天#2019-07-03 23:16#2019-07-03 23:16','2019-07-03 23:18:00',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,11,1,'Match','com.mengyao.tag.commons.models.pub.business.NationModel','/apps/tags/models//Tag_11/lib/tags-20190703231939.jar','每天#2019-07-03 23:18#2019-07-03 23:18','2019-07-03 23:19:45',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,12,1,'Match','com.mengyao.tag.commons.models.pub.business.NativePlace','/apps/tags/models//Tag_12/lib/tags-20190703232055.jar','每天#2019-07-03 23:19#2019-07-03 23:19','2019-07-03 23:21:03',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,13,1,'Match','com.mengyao.tag.commons.models.pub.business.PoliticalModel','/apps/tags/models//Tag_13/lib/tags-20190703232221.jar','每天#2019-07-03 23:21#2019-07-03 23:21','2019-07-03 23:22:29',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,14,1,'Match','com.mengyao.tag.commons.models.pub.business.OccupationModel','/apps/tags/models//Tag_14/lib/tags-20190703232402.jar','每天#2019-07-03 23:22#2019-07-03 23:22','2019-07-03 23:24:09',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,15,1,'Match','com.mengyao.tag.commons.models.pub.business.MaritalStatusModel','/apps/tags/models//Tag_15/lib/tags-20190703232548.jar','每天#2019-07-03 23:24#2019-07-03 23:24','2019-07-03 23:25:55',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,16,1,'Match','com.mengyao.tag.commons.models.pub.business.EducationModel','/apps/tags/models//Tag_16/lib/tags-20190703232658.jar','每天#2019-07-03 23:26#2019-07-03 23:26','2019-07-03 23:27:07',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,17,1,'Match','com.mengyao.tag.commons.models.pub.business.EmpStatusModel','/apps/tags/models//Tag_17/lib/tags-20190703232750.jar','每天#2019-07-03 23:27#2019-07-03 23:27','2019-07-03 23:29:08',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,18,1,'Match','com.mengyao.tag.commons.models.pub.business.ConstellationModel','/apps/tags/models//Tag_18/lib/tags-20190703233025.jar','每天#2019-07-03 23:29#2019-07-03 23:29','2019-07-03 23:35:41',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,19,1,'Match','com.mengyao.tag.commons.models.pub.business.TradingAreaModel','/apps/tags/models//Tag_19/lib/tags-20190703234450.jar','每天#2019-07-03 23:37#2019-07-03 23:37','2019-07-03 23:44:59',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,20,1,'Match','com.mengyao.tag.commons.models.pub.business.NationalityModel','/apps/tags/models//Tag_20/lib/tags-20190703234607.jar','每天#2019-07-03 23:45#2019-07-03 23:45','2019-07-03 23:46:15',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,21,1,'Statistics','com.mengyao.tag.commons.models.pub.ConsumCycleModel','/apps/tags/models//Tag_21/lib/tags-20190703234854.jar','每天#2019-07-03 23:46#2019-07-03 23:46','2019-07-03 23:49:06',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,22,1,'ConsumCapacityModel','com.mengyao.tag.commons.models.pub.ConsumCapacityModel','/apps/tags/models//Tag_22/lib/tags-20190703235042.jar','每天#2019-07-03 23:49#2019-07-03 23:49','2019-07-03 23:50:53',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,23,1,'PassengerUnitPriceModel','com.mengyao.tag.commons.models.pub.PassengerUnitPriceModel','/apps/tags/models//Tag_23/lib/tags-20190703235318.jar','每天#2019-07-03 23:51#2019-07-03 23:51','2019-07-03 23:53:27',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,24,1,'Statistics','com.mengyao.tag.commons.models.pub.ml.PayType','/apps/tags/models//Tag_24/lib/tags-20190703235426.jar','每天#2019-07-03 23:53#2019-07-03 23:53','2019-07-03 23:54:32',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,25,1,'Statistics','com.mengyao.tag.commons.models.pub.ml.SingleHeight','/apps/tags/models//Tag_25/lib/tags-20190703235613.jar','每天#2019-07-03 23:54#2019-07-03 23:54','2019-07-03 23:56:19',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,26,1,'Statistics','com.mengyao.tag.commons.models.pub.ml.BuyFrequency','/apps/tags/models//Tag_26/lib/tags-20190703235758.jar','每天#2019-07-03 23:56#2019-07-03 23:56','2019-07-03 23:58:07',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,27,1,'Statistics','com.mengyao.tag.commons.models.pub.ml.RetreatFrequency','/apps/tags/models//Tag_27/lib/tags-20190703235934.jar','每天#2019-07-03 23:58#2019-07-03 23:58','2019-07-03 23:59:39',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,28,1,'Statistics','com.mengyao.tag.commons.models.pub.ml.ChangeFrequency','/apps/tags/models//Tag_28/lib/tags-20190704000121.jar','每天#2019-07-03 23:59#2019-07-03 23:59','2019-07-04 00:01:28',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,29,1,'KMeans','com.mengyao.tag.commons.models.pub.ml.ShengQianNengShou','/apps/tags/models//Tag_29/lib/tags-20190704000359.jar','每天#2019-07-04 0:02#2019-07-04 0:02','2019-07-04 00:04:09',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,30,1,'DecisionTree','com.mengyao.tag.commons.models.pub.ml.YouQuanBiMai','/apps/tags/models//Tag_30/lib/tags-20190704000522.jar','每天#2019-07-04 0:04#2019-07-04 0:04','2019-07-04 00:05:29',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,31,1,'Statistics','com.mengyao.tag.commons.models.pub.ml.Consult','/apps/tags/models//Tag_31/lib/tags-20190704000712.jar','每天#2019-07-04 0:05#2019-07-04 0:05','2019-07-04 00:07:18',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,33,1,'Statistics','com.mengyao.tag.commons.models.pub.ml.LastLogin','/apps/tags/models//Tag_33/lib/tags-20190704001101.jar','每天#2019-07-04 0:09#2019-07-04 0:09','2019-07-04 00:11:07',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,34,1,'Statistics','com.mengyao.tag.commons.models.pub.ml.','/apps/tags/models//Tag_34/lib/tags-20190704001222.jar','每天#2019-07-04 0:11#2019-07-04 0:11','2019-07-04 00:12:31',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,35,1,'Statistics','com.mengyao.tag.commons.models.pub.ml.','/apps/tags/models//Tag_35/lib/tags-20190704001312.jar','每天#2019-07-04 0:12#2019-07-04 0:12','2019-07-04 00:13:20',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,37,1,'Statistics','com.mengyao.tag.commons.models.pub.ml.AccessFrequency','/apps/tags/models//Tag_37/lib/tags-20190704135419.jar','每天#2019-07-04 13:53#2019-07-04 13:53','2019-07-04 13:54:21',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,38,1,'Match','com.mengyao.tag.commons.models.pub.DeviceType','/apps/tags/models//Tag_38/lib/tags-20190704135538.jar','每天#2019-07-04 13:54#2019-07-04 13:54','2019-07-04 13:55:48',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,39,1,'Statistics','com.mengyao.tag.commons.models.pub.BroweTime','/apps/tags/models//Tag_39/lib/tags-20190704135652.jar','每天#2019-07-04 13:55#2019-07-04 13:55','2019-07-04 13:57:32',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,40,1,'Statistics','com.mengyao.tag.commons.models.pub.LoginFrequency','/apps/tags/models//Tag_40/lib/tags-20190704135828.jar','每天#2019-07-04 13:57#2019-07-04 13:57','2019-07-04 13:58:35',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,41,1,'Match','com.mengyao.tag.commons.models.pub.BroweGoods','/apps/tags/models//Tag_41/lib/tags-20190704135937.jar','每天#2019-07-04 13:58#2019-07-04 13:58','2019-07-04 13:59:45',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,42,1,'Match','com.mengyao.tag.commons.models.pub.BuyGoods','/apps/tags/models//Tag_42/lib/tags-20190704140105.jar','每天#2019-07-04 13:59#2019-07-04 13:59','2019-07-04 14:01:13',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,43,1,'RandomForest','com.mengyao.tag.commons.models.pub.GoodsHobby','/apps/tags/models//Tag_43/lib/tags-20190704140309.jar','每天#2019-07-04 14:01#2019-07-04 14:01','2019-07-04 14:03:15',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,44,1,'DecisionTree','com.mengyao.tag.commons.models.pub.TypeHobby','/apps/tags/models//Tag_44/lib/tags-20190704140606.jar','每天#2019-07-04 14:04#2019-07-04 14:04','2019-07-04 14:06:12',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,45,1,'RandomForest','com.mengyao.tag.commons.models.pub.BrandHobby','/apps/tags/models//Tag_45/lib/tags-20190704140713.jar','每天#2019-07-04 14:06#2019-07-04 14:06','2019-07-04 14:07:21',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,46,1,'Statistics','com.mengyao.tag.commons.models.pub.House','/apps/tags/models//Tag_46/lib/tags-20190704141033.jar','每天#2019-07-04 14:07#2019-07-04 14:07','2019-07-04 14:10:39',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,47,1,'Statistics','com.mengyao.tag.commons.models.pub.HouseValue','/apps/tags/models//Tag_47/lib/tags-20190704141207.jar','每天#2019-07-04 14:10#2019-07-04 14:10','2019-07-04 14:12:14',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,48,1,'Statistics','com.mengyao.tag.commons.models.pub.Car','/apps/tags/models//Tag_48/lib/tags-20190704141307.jar','每天#2019-07-04 14:12#2019-07-04 14:12','2019-07-04 14:13:13',NULL,1,NULL,NULL,NULL,'--executor-memory 4g'),(NULL,49,1,'Statistics','com.mengyao.tag.commons.models.pub.CarValue','/apps/tags/models//Tag_49/lib/tags-20190704141420.jar','每天#2019-07-04 14:13#2019-07-04 14:13','2019-07-04 14:14:27',NULL,1,NULL,NULL,NULL,'--executor-memory 4g');

/*Table structure for table `tbl_organization` */

DROP TABLE IF EXISTS `tbl_organization`;

CREATE TABLE `tbl_organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `pid` bigint(20) DEFAULT NULL COMMENT '父ID（岗位父级为部门、部门父级为公司、公司父级为0）',
  `level` int(11) DEFAULT NULL,
  `state` bigint(20) DEFAULT NULL COMMENT '状态：0不可用、1正常、2删除、3过期',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='组织表';

/*Data for the table `tbl_organization` */

insert  into `tbl_organization`(`id`,`name`,`pid`,`level`,`state`,`ctime`,`utime`,`remark`) values (1,'万拓',-1,1,1,'2018-05-31 18:22:52','2018-05-31 18:22:54',NULL),(2,'开发部',1,2,1,'2018-05-31 18:23:25','2018-05-31 18:23:27',NULL),(3,'财务部',1,2,1,'2018-05-31 18:23:43','2018-05-31 18:23:45',NULL);

/*Table structure for table `tbl_permission` */

DROP TABLE IF EXISTS `tbl_permission`;

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '权限名称',
  `type` int(11) DEFAULT NULL COMMENT '权限类型：1增加、2删除、3修改、4查询、0无',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

/*Data for the table `tbl_permission` */

/*Table structure for table `tbl_res_dat_perm_map` */

DROP TABLE IF EXISTS `tbl_res_dat_perm_map`;

CREATE TABLE `tbl_res_dat_perm_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `res_id` bigint(20) DEFAULT NULL COMMENT '资源ID',
  `tag_id` bigint(20) DEFAULT NULL COMMENT '标签ID（0无，其他为标签ID）',
  `tag_type` int(11) DEFAULT NULL COMMENT '标签类型：0无、1基础标签、2组合标签',
  `perm_id` int(11) DEFAULT NULL COMMENT '权限ID',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源和数据（标签）权限关联表';

/*Data for the table `tbl_res_dat_perm_map` */

/*Table structure for table `tbl_role` */

DROP TABLE IF EXISTS `tbl_role`;

CREATE TABLE `tbl_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `flag` int(11) DEFAULT NULL COMMENT '春生要求的字段',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';

/*Data for the table `tbl_role` */

insert  into `tbl_role`(`id`,`name`,`flag`,`ctime`,`utime`,`remark`) values (1,'超管',1,'2018-05-29 17:17:24','2018-05-29 17:17:26',NULL),(2,'普管',2,'2018-05-29 17:18:22','2018-05-29 17:18:24','管理员'),(3,'用户',3,'2018-06-01 17:18:39','2018-06-11 14:48:14','用户');

/*Table structure for table `tbl_role_data_map` */

DROP TABLE IF EXISTS `tbl_role_data_map`;

CREATE TABLE `tbl_role_data_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  `tag_type` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `utime` datetime DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4522 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_role_data_map` */

insert  into `tbl_role_data_map`(`id`,`role_id`,`tag_id`,`tag_type`,`state`,`ctime`,`utime`,`remark`) values (3454,2,1,1,1,'2018-06-25 09:45:48','2018-06-25 09:45:48','添加角色数据权限'),(3455,2,2,1,1,'2018-06-25 09:45:48','2018-06-25 09:45:48','添加角色数据权限'),(3456,2,3,1,1,'2018-06-25 09:45:48','2018-06-25 09:45:48','添加角色数据权限'),(3457,2,1362,1,1,'2018-06-25 09:45:48','2018-06-25 09:45:48','添加角色数据权限'),(3458,2,1363,1,1,'2018-06-25 09:45:48','2018-06-25 09:45:48','添加角色数据权限'),(3459,2,1364,1,1,'2018-06-25 09:45:48','2018-06-25 09:45:48','添加角色数据权限'),(3460,2,1366,1,1,'2018-06-25 09:45:48','2018-06-25 09:45:48','添加角色数据权限'),(3461,2,1367,1,1,'2018-06-25 09:45:48','2018-06-25 09:45:48','添加角色数据权限'),(3462,2,1368,1,1,'2018-06-25 09:45:48','2018-06-25 09:45:48','添加角色数据权限'),(3463,2,1369,1,1,'2018-06-25 09:45:48','2018-06-25 09:45:48','添加角色数据权限'),(4485,3,1,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4486,3,2,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4487,3,3,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4488,3,1362,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4489,3,1363,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4490,3,1364,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4491,3,1366,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4492,3,1367,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4493,3,1368,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4494,3,1369,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4495,3,5,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4496,3,1377,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4497,3,1378,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4498,3,1379,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4499,3,1380,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4500,3,1381,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4501,3,1382,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4502,3,1383,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4503,3,1384,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4504,3,1392,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4505,3,1406,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4506,3,1407,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4507,3,1408,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4508,3,1394,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4509,3,1395,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4510,3,1396,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4511,3,1397,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4512,3,1398,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4513,3,1399,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4514,3,1400,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4515,3,1401,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4516,3,1402,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4517,3,1403,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4518,3,1404,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4519,3,1405,1,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4520,3,205,2,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限'),(4521,3,207,2,1,'2018-06-25 15:18:41','2018-06-25 15:18:41','添加角色数据权限');

/*Table structure for table `tbl_role_organization_map` */

DROP TABLE IF EXISTS `tbl_role_organization_map`;

CREATE TABLE `tbl_role_organization_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `org_id` bigint(20) DEFAULT NULL COMMENT '权限ID',
  `state` int(11) DEFAULT NULL COMMENT '状态',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色组织关联表';

/*Data for the table `tbl_role_organization_map` */

/*Table structure for table `tbl_role_res_map` */

DROP TABLE IF EXISTS `tbl_role_res_map`;

CREATE TABLE `tbl_role_res_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `res_id` bigint(20) DEFAULT NULL COMMENT '资源ID',
  `perm_ids` varchar(100) DEFAULT NULL COMMENT '权限ID',
  `state` int(11) DEFAULT NULL COMMENT '状态',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2628 DEFAULT CHARSET=utf8 COMMENT='角色资源关联表';

/*Data for the table `tbl_role_res_map` */

insert  into `tbl_role_res_map`(`id`,`role_id`,`res_id`,`perm_ids`,`state`,`ctime`,`utime`,`remark`) values (2537,2,1,'view',1,'2018-06-25 10:07:39','2018-06-25 10:07:39','添加角色资源'),(2538,2,8,'add,view',1,'2018-06-25 10:07:39','2018-06-25 10:07:39','添加角色资源'),(2539,2,9,'add,view',1,'2018-06-25 10:07:39','2018-06-25 10:07:39','添加角色资源'),(2540,2,10,'add,view',1,'2018-06-25 10:07:39','2018-06-25 10:07:39','添加角色资源'),(2541,2,11,'add,del,edit,view',1,'2018-06-25 10:07:39','2018-06-25 10:07:39','添加角色资源'),(2542,2,12,'add,del,edit,view',1,'2018-06-25 10:07:39','2018-06-25 10:07:39','添加角色资源'),(2543,2,2,'add,del,edit,view',1,'2018-06-25 10:07:39','2018-06-25 10:07:39','添加角色资源'),(2544,2,3,'view',1,'2018-06-25 10:07:39','2018-06-25 10:07:39','添加角色资源'),(2545,2,4,'view',1,'2018-06-25 10:07:39','2018-06-25 10:07:39','添加角色资源'),(2546,2,5,'view',1,'2018-06-25 10:07:39','2018-06-25 10:07:39','添加角色资源'),(2547,2,7,'view',1,'2018-06-25 10:07:39','2018-06-25 10:07:39','添加角色资源'),(2618,3,1,'view',1,'2018-06-25 10:09:48','2018-06-25 10:09:48','添加角色资源'),(2619,3,8,'add,view',1,'2018-06-25 10:09:48','2018-06-25 10:09:48','添加角色资源'),(2620,3,9,'add,view',1,'2018-06-25 10:09:48','2018-06-25 10:09:48','添加角色资源'),(2621,3,10,'add,view',1,'2018-06-25 10:09:48','2018-06-25 10:09:48','添加角色资源'),(2622,3,11,'add,del,edit,view',1,'2018-06-25 10:09:48','2018-06-25 10:09:48','添加角色资源'),(2623,3,12,'add,del,edit,view',1,'2018-06-25 10:09:48','2018-06-25 10:09:48','添加角色资源'),(2624,3,2,'add,del,edit,view',1,'2018-06-25 10:09:48','2018-06-25 10:09:48','添加角色资源'),(2625,3,3,'view',1,'2018-06-25 10:09:48','2018-06-25 10:09:48','添加角色资源'),(2626,3,4,'view',1,'2018-06-25 10:09:48','2018-06-25 10:09:48','添加角色资源'),(2627,3,7,'view',1,'2018-06-25 10:09:48','2018-06-25 10:09:48','添加角色资源');

/*Table structure for table `tbl_rule` */

DROP TABLE IF EXISTS `tbl_rule`;

CREATE TABLE `tbl_rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `rule` varchar(300) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `utime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_rule` */

insert  into `tbl_rule`(`id`,`tag_id`,`type`,`rule`,`ctime`,`utime`,`state`,`remark`) values (1,8,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:14:24',NULL,1,NULL),(2,9,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:16:27',NULL,1,NULL),(3,10,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:18:00',NULL,1,NULL),(4,11,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:19:45',NULL,1,NULL),(5,12,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:21:03',NULL,1,NULL),(6,13,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:22:29',NULL,1,NULL),(7,14,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:24:09',NULL,1,NULL),(8,15,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:25:55',NULL,1,NULL),(9,16,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:27:07',NULL,1,NULL),(10,17,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:29:08',NULL,1,NULL),(11,18,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:35:41',NULL,1,NULL),(12,19,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:44:59',NULL,1,NULL),(13,20,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_users\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:46:15',NULL,1,NULL),(14,21,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:49:06',NULL,1,NULL),(15,22,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:50:53',NULL,1,NULL),(16,23,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:53:27',NULL,1,NULL),(17,24,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:54:32',NULL,1,NULL),(18,25,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:56:19',NULL,1,NULL),(19,26,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:58:07',NULL,1,NULL),(20,27,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-03 23:59:39',NULL,1,NULL),(21,28,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 00:01:28',NULL,1,NULL),(22,29,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 00:04:09',NULL,1,NULL),(23,30,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 00:05:29',NULL,1,NULL),(24,31,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_ consult\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 00:07:18',NULL,1,NULL),(25,33,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 00:11:07',NULL,1,NULL),(26,34,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 00:12:31',NULL,1,NULL),(27,35,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 00:13:20',NULL,1,NULL),(28,36,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 13:34:56',NULL,1,NULL),(29,37,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 13:54:21',NULL,1,NULL),(30,38,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 13:55:48',NULL,1,NULL),(31,39,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 13:57:32',NULL,1,NULL),(32,40,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 13:58:35',NULL,1,NULL),(33,41,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 13:59:45',NULL,1,NULL),(34,42,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 14:01:13',NULL,1,NULL),(35,43,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 14:03:15',NULL,1,NULL),(36,44,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 14:06:12',NULL,1,NULL),(37,45,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_logs\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 14:07:21',NULL,1,NULL),(38,46,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 14:10:39',NULL,1,NULL),(39,47,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 14:12:14',NULL,1,NULL),(40,48,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 14:13:13',NULL,1,NULL),(41,49,0,'inType=hbase\nzkHosts=192.168.10.20\nzkPort=2181\nhbaseTable=tbl_orders\nfamily=info\nselectFieldNames=utime\nwhereFieldNames=utime\nwhereFieldValues=2019-05-10','2019-07-04 14:14:27',NULL,1,NULL);

/*Table structure for table `tbl_sys_res` */

DROP TABLE IF EXISTS `tbl_sys_res`;

CREATE TABLE `tbl_sys_res` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '权限名称',
  `url` varchar(200) DEFAULT NULL COMMENT '权限URL',
  `type` bigint(20) DEFAULT NULL COMMENT '资源类型：1模块（url）、2菜单（树形菜单、下拉菜单）、按钮（a标签）',
  `sign` varchar(100) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL COMMENT '排序字段',
  `pid` bigint(20) DEFAULT NULL COMMENT '资源的父级ID',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='系统资源表';

/*Data for the table `tbl_sys_res` */

insert  into `tbl_sys_res`(`id`,`name`,`url`,`type`,`sign`,`sort`,`pid`,`ctime`,`utime`,`remark`) values (1,'基础标签','/basic/index',-1,'basic',1,-1,'2018-06-04 15:24:13','2018-06-04 15:24:14',NULL),(2,'组合标签','/merge/index',-1,'merge',2,-1,'2018-06-04 15:24:41','2018-06-04 15:24:43',NULL),(3,'微观画像','/micro/index',-1,'micro',3,-1,'2018-06-04 15:25:11','2018-06-04 15:25:14',NULL),(4,'标签查询','/search/index',-1,'search',4,-1,'2018-06-04 15:25:44','2018-06-04 15:25:46',NULL),(5,'审核管理','/examine/index',-1,'examine',5,-1,'2018-06-04 15:26:23','2018-06-04 15:26:26',NULL),(6,'标签任务','/engine/index',-1,'engine',6,-1,'2018-06-04 15:26:58','2018-06-04 15:27:00',NULL),(7,'系统设置','/system/index',-1,'system',7,-1,'2018-06-04 15:27:24','2018-06-04 15:27:27',NULL),(8,'一级标签',NULL,1,'oneTag',10,1,'2018-06-05 16:08:37','2018-06-05 16:08:39',NULL),(9,'二级标签',NULL,2,'twoTag',11,1,'2018-06-05 16:09:41','2018-06-05 16:09:43',NULL),(10,'三级标签',NULL,3,'threeTag',12,1,'2018-06-05 16:10:05','2018-06-05 16:10:08',NULL),(11,'四级标签',NULL,4,'fourTag',13,1,'2018-06-05 16:10:27','2018-06-05 16:10:29',NULL),(12,'五级标签',NULL,5,'fiveTag',14,1,'2018-06-05 16:10:42','2018-06-05 16:10:44',NULL),(13,'申请管理',NULL,6,'require',15,-1,'2018-06-14 11:07:59','2018-06-14 11:08:01',NULL);

/*Table structure for table `tbl_tag_engine` */

DROP TABLE IF EXISTS `tbl_tag_engine`;

CREATE TABLE `tbl_tag_engine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '引擎名称',
  `tag_id` bigint(20) DEFAULT NULL COMMENT '标签ID',
  `tag_type` int(11) DEFAULT NULL COMMENT '基础标签、组合标签',
  `meta_id` bigint(20) DEFAULT NULL COMMENT '元数据ID',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签引擎表';

/*Data for the table `tbl_tag_engine` */

/*Table structure for table `tbl_tag_user_count` */

DROP TABLE IF EXISTS `tbl_tag_user_count`;

CREATE TABLE `tbl_tag_user_count` (
  `id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  `tag_type` int(11) DEFAULT NULL,
  `user_count` int(11) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `utime` datetime DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_tag_user_count` */

insert  into `tbl_tag_user_count`(`id`,`tag_id`,`tag_type`,`user_count`,`ctime`,`utime`,`remark`) values (88,1363,1,241,NULL,NULL,NULL),(89,1364,1,185,NULL,NULL,NULL),(90,1367,1,315,NULL,NULL,NULL),(91,1368,1,86,NULL,NULL,NULL),(92,1369,1,25,NULL,NULL,NULL),(93,1371,1,70,NULL,NULL,NULL),(94,1372,1,99,NULL,NULL,NULL),(95,1373,1,157,NULL,NULL,NULL),(96,1374,1,100,NULL,NULL,NULL),(97,1379,1,178,NULL,NULL,NULL),(98,1380,1,168,NULL,NULL,NULL),(99,1378,1,80,NULL,NULL,NULL),(100,1382,1,105,NULL,NULL,NULL),(101,1384,1,154,NULL,NULL,NULL),(102,1383,1,167,NULL,NULL,NULL),(103,1387,1,20,NULL,NULL,NULL),(104,1389,1,91,NULL,NULL,NULL),(105,1388,1,315,NULL,NULL,NULL),(106,1395,1,20,NULL,NULL,NULL),(107,1397,1,91,NULL,NULL,NULL),(108,1396,1,315,NULL,NULL,NULL),(109,1400,1,130,NULL,NULL,NULL),(110,1399,1,296,NULL,NULL,NULL),(111,1402,1,126,NULL,NULL,NULL),(112,1403,1,50,NULL,NULL,NULL),(113,1404,1,200,NULL,NULL,NULL),(114,1405,1,50,NULL,NULL,NULL),(115,1408,1,44,NULL,NULL,NULL),(116,1406,1,23,NULL,NULL,NULL),(117,1407,1,359,NULL,NULL,NULL),(118,1413,1,241,NULL,NULL,NULL),(119,1414,1,185,NULL,NULL,NULL),(120,1415,1,241,NULL,NULL,NULL),(121,1416,1,185,NULL,NULL,NULL),(122,1417,1,241,NULL,NULL,NULL),(123,1418,1,185,NULL,NULL,NULL),(124,1438,1,241,NULL,NULL,NULL),(125,1439,1,185,NULL,NULL,NULL),(126,1443,1,241,NULL,NULL,NULL),(127,1444,1,185,NULL,NULL,NULL),(128,1447,1,241,NULL,NULL,NULL),(129,1448,1,185,NULL,NULL,NULL),(130,1449,1,241,NULL,NULL,NULL),(131,1450,1,185,NULL,NULL,NULL),(132,1451,1,241,NULL,NULL,NULL),(133,1452,1,185,NULL,NULL,NULL),(134,1453,1,241,NULL,NULL,NULL),(135,1454,1,185,NULL,NULL,NULL),(136,1455,1,241,NULL,NULL,NULL),(137,1456,1,185,NULL,NULL,NULL),(138,1457,1,241,NULL,NULL,NULL),(139,1458,1,185,NULL,NULL,NULL),(140,1363,1,241,NULL,NULL,NULL),(141,1364,1,185,NULL,NULL,NULL),(142,1363,1,241,NULL,NULL,NULL),(143,1364,1,185,NULL,NULL,NULL);

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `idcard` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `state` int(11) DEFAULT NULL COMMENT '状态：1内部用户正常、2内部用户异常、3外部用户正常、4外部用户异常、5已禁用',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id`,`name`,`username`,`password`,`idcard`,`phone`,`email`,`state`,`ctime`,`utime`,`remark`) values (1,'demo','demo','3a384e100c6b82d35f0ed3d2a7f9266f','123456789012345678','13621239684','290315636@qq.com',1,'2018-05-28 13:52:47','2018-06-21 14:17:26',NULL),(3,'tony','admin','73cb2b128e62ce63f6b4126bcc407db6','440253850213582','13930012315','13930012315@139.com',1,'2018-05-28 13:43:01','2018-05-28 13:43:01','test_user'),(5,'jack','user','73cb2b128e62ce63f6b4126bcc407db6','440253850213582','13930012315','13930012315@139.com',1,'2018-05-29 19:02:02','2018-06-21 14:33:09','test_user'),(70,'张士太','neo','73cb2b128e62ce63f6b4126bcc407db6',NULL,'15201117111','ar00@163.com',1,'2018-06-22 16:32:50','2018-06-25 11:19:41',NULL);

/*Table structure for table `tbl_user_merge_tag_map` */

DROP TABLE IF EXISTS `tbl_user_merge_tag_map`;

CREATE TABLE `tbl_user_merge_tag_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID（等同于创建者）',
  `merge_tag_id` bigint(20) DEFAULT NULL COMMENT '组合标签ID',
  `state` int(11) DEFAULT NULL COMMENT '状态',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户组合标签关联表';

/*Data for the table `tbl_user_merge_tag_map` */

insert  into `tbl_user_merge_tag_map`(`id`,`user_id`,`merge_tag_id`,`state`,`ctime`,`utime`,`remark`) values (1,1,1,4,'2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(2,1,2,4,'2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(3,1,3,4,'2019-07-04 00:00:00','2022-07-04 00:00:00',NULL),(4,1,4,4,'2019-07-04 00:00:00','2022-07-04 00:00:00',NULL);

/*Table structure for table `tbl_user_organization_map` */

DROP TABLE IF EXISTS `tbl_user_organization_map`;

CREATE TABLE `tbl_user_organization_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `utime` datetime DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_user_organization_map` */

insert  into `tbl_user_organization_map`(`id`,`user_id`,`org_id`,`state`,`ctime`,`utime`,`remark`) values (1,1,1,1,'2018-06-07 11:47:48','2018-06-07 11:47:50',NULL),(2,3,2,1,'2018-06-08 11:16:19','2018-06-08 11:16:21',NULL),(3,5,3,1,'2018-06-08 11:17:01','2018-06-08 11:17:03',NULL),(10,69,2,1,'2018-06-22 09:30:56','2018-06-22 09:30:56','增加组织用户对应关系'),(11,70,1,1,'2018-06-22 16:32:50','2018-06-22 16:32:50','增加组织用户对应关系');

/*Table structure for table `tbl_user_role_map` */

DROP TABLE IF EXISTS `tbl_user_role_map`;

CREATE TABLE `tbl_user_role_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `state` int(11) DEFAULT NULL COMMENT '状态',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='用户角色关联表';

/*Data for the table `tbl_user_role_map` */

insert  into `tbl_user_role_map`(`id`,`user_id`,`role_id`,`state`,`ctime`,`utime`,`remark`) values (1,1,1,1,'2018-05-29 17:18:57','2018-06-21 14:17:26','超管用户'),(2,3,2,1,'2018-06-01 14:49:24','2018-06-01 14:49:26','管理员用户'),(3,5,3,1,'2018-06-01 14:49:49','2018-06-21 14:17:10','普通用户'),(58,69,3,1,NULL,NULL,NULL),(59,70,3,1,NULL,NULL,NULL);

/*Table structure for table `tbl_user_tag_map` */

DROP TABLE IF EXISTS `tbl_user_tag_map`;

CREATE TABLE `tbl_user_tag_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID（等同于创建者）',
  `tag_id` bigint(20) DEFAULT NULL COMMENT '基础标签ID',
  `state` int(11) DEFAULT NULL COMMENT '状态',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  `utime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COMMENT='用户标签关联表';

/*Data for the table `tbl_user_tag_map` */

insert  into `tbl_user_tag_map`(`id`,`user_id`,`tag_id`,`state`,`ctime`,`utime`,`remark`) values (1,1,8,4,'2019-07-03 23:14:23','2019-07-03 23:14:23',NULL),(2,1,9,4,'2019-07-03 23:16:27','2019-07-03 23:16:27',NULL),(3,1,10,4,'2019-07-03 23:18:00','2019-07-03 23:18:00',NULL),(4,1,11,4,'2019-07-03 23:19:45','2019-07-03 23:19:45',NULL),(5,1,12,4,'2019-07-03 23:21:03','2019-07-03 23:21:03',NULL),(6,1,13,4,'2019-07-03 23:22:29','2019-07-03 23:22:29',NULL),(7,1,14,4,'2019-07-03 23:24:09','2019-07-03 23:24:09',NULL),(8,1,15,4,'2019-07-03 23:25:55','2019-07-03 23:25:55',NULL),(9,1,16,4,'2019-07-03 23:27:06','2019-07-03 23:27:06',NULL),(10,1,17,4,'2019-07-03 23:29:08','2019-07-03 23:29:08',NULL),(11,1,18,4,'2019-07-03 23:35:41','2019-07-03 23:35:41',NULL),(12,1,19,4,'2019-07-03 23:44:59','2019-07-03 23:44:59',NULL),(13,1,20,4,'2019-07-03 23:46:15','2019-07-03 23:46:15',NULL),(14,1,21,4,'2019-07-03 23:49:06','2019-07-03 23:49:06',NULL),(15,1,22,4,'2019-07-03 23:50:53','2019-07-03 23:50:53',NULL),(16,1,23,4,'2019-07-03 23:53:26','2019-07-03 23:53:26',NULL),(17,1,24,4,'2019-07-03 23:54:32','2019-07-03 23:54:32',NULL),(18,1,25,4,'2019-07-03 23:56:19','2019-07-03 23:56:19',NULL),(19,1,26,4,'2019-07-03 23:58:06','2019-07-03 23:58:06',NULL),(20,1,27,4,'2019-07-03 23:59:39','2019-07-03 23:59:39',NULL),(21,1,28,4,'2019-07-04 00:01:27','2019-07-04 00:01:27',NULL),(22,1,29,4,'2019-07-04 00:04:09','2019-07-04 00:04:09',NULL),(23,1,30,4,'2019-07-04 00:05:29','2019-07-04 00:05:29',NULL),(24,1,31,4,'2019-07-04 00:07:18','2019-07-04 00:07:18',NULL),(25,1,6,3,'2019-07-04 00:08:24','2019-07-04 00:08:24',NULL),(26,1,33,4,'2019-07-04 00:11:07','2019-07-04 00:11:07',NULL),(27,1,34,4,'2019-07-04 00:12:30','2019-07-04 00:12:30',NULL),(28,1,35,4,'2019-07-04 00:13:19','2019-07-04 00:13:19',NULL),(30,1,37,4,'2019-07-04 13:54:20','2019-07-04 13:54:20',NULL),(31,1,38,4,'2019-07-04 13:55:48','2019-07-04 13:55:48',NULL),(32,1,39,4,'2019-07-04 13:57:32','2019-07-04 13:57:32',NULL),(33,1,40,4,'2019-07-04 13:58:35','2019-07-04 13:58:35',NULL),(34,1,41,4,'2019-07-04 13:59:45','2019-07-04 13:59:45',NULL),(35,1,42,4,'2019-07-04 14:01:13','2019-07-04 14:01:13',NULL),(36,1,43,4,'2019-07-04 14:03:15','2019-07-04 14:03:15',NULL),(37,1,44,4,'2019-07-04 14:06:12','2019-07-04 14:06:12',NULL),(38,1,45,4,'2019-07-04 14:07:20','2019-07-04 14:07:20',NULL),(39,1,46,4,'2019-07-04 14:10:38','2019-07-04 14:10:38',NULL),(40,1,47,4,'2019-07-04 14:12:14','2019-07-04 14:12:14',NULL),(41,1,48,4,'2019-07-04 14:13:13','2019-07-04 14:13:13',NULL),(42,1,49,4,'2019-07-04 14:14:27','2019-07-04 14:14:27',NULL),(43,1,50,3,'2019-07-04 14:15:02','2019-07-04 14:15:02',NULL),(44,1,51,3,'2019-07-04 14:15:19','2019-07-04 14:15:19',NULL),(45,1,52,3,'2019-07-04 14:16:51','2019-07-04 14:16:51',NULL),(46,1,53,3,'2019-07-04 14:17:53','2019-07-04 14:17:53',NULL),(47,1,54,3,'2019-07-04 14:18:21','2019-07-04 14:18:21',NULL),(48,1,55,3,'2019-07-04 14:19:05','2019-07-04 14:19:05',NULL),(49,1,56,3,'2019-07-04 14:19:46','2019-07-04 14:19:46',NULL),(50,1,57,3,'2019-07-04 14:20:32','2019-07-04 14:20:32',NULL),(51,1,58,3,'2019-07-04 14:21:13','2019-07-04 14:21:13',NULL),(52,1,59,3,'2019-07-04 14:22:00','2019-07-04 14:22:00',NULL),(53,1,60,3,'2019-07-04 14:23:12','2019-07-04 14:23:12',NULL),(54,1,61,3,'2019-07-04 14:23:49','2019-07-04 14:23:49',NULL),(55,1,62,3,'2019-07-04 14:24:29','2019-07-04 14:24:29',NULL),(56,1,63,3,'2019-07-04 14:24:44','2019-07-04 14:24:44',NULL),(57,1,64,3,'2019-07-04 14:32:33','2019-07-04 14:32:33',NULL),(58,1,65,3,'2019-07-04 14:33:04','2019-07-04 14:33:04',NULL),(59,1,66,3,'2019-07-04 14:33:23','2019-07-04 14:33:23',NULL),(60,1,67,3,'2019-07-04 14:35:23','2019-07-04 14:35:23',NULL),(61,1,68,3,'2019-07-04 14:38:57','2019-07-04 14:38:57',NULL),(62,1,69,3,'2019-07-04 14:39:26','2019-07-04 14:39:26',NULL),(63,1,70,3,'2019-07-04 14:39:58','2019-07-04 14:39:58',NULL),(64,1,71,3,'2019-07-04 14:42:01','2019-07-04 14:42:01',NULL),(65,1,72,3,'2019-07-04 14:42:22','2019-07-04 14:42:22',NULL),(66,1,73,3,'2019-07-04 14:42:44','2019-07-04 14:42:44',NULL),(67,1,74,3,'2019-07-04 14:43:31','2019-07-04 14:43:31',NULL),(68,1,75,3,'2019-07-04 14:43:57','2019-07-04 14:43:57',NULL),(69,1,76,3,'2019-07-04 14:44:25','2019-07-04 14:44:25',NULL),(70,1,77,3,'2019-07-04 14:44:54','2019-07-04 14:44:54',NULL),(71,1,78,3,'2019-07-04 14:45:16','2019-07-04 14:45:16',NULL),(72,1,79,3,'2019-07-04 14:45:36','2019-07-04 14:45:36',NULL),(73,1,80,3,'2019-07-04 14:46:07','2019-07-04 14:46:07',NULL),(74,1,81,3,'2019-07-04 14:46:36','2019-07-04 14:46:36',NULL),(75,1,82,3,'2019-07-04 14:46:59','2019-07-04 14:46:59',NULL),(76,1,83,3,'2019-07-04 14:49:43','2019-07-04 14:49:43',NULL),(77,1,84,3,'2019-07-04 14:50:03','2019-07-04 14:50:03',NULL),(78,1,85,3,'2019-07-04 14:50:16','2019-07-04 14:50:16',NULL),(79,1,86,3,'2019-07-04 14:50:33','2019-07-04 14:50:33',NULL),(80,1,87,3,'2019-07-04 14:50:48','2019-07-04 14:50:48',NULL),(81,1,88,3,'2019-07-04 14:51:04','2019-07-04 14:51:04',NULL),(82,1,89,3,'2019-07-04 14:51:31','2019-07-04 14:51:31',NULL),(83,1,90,3,'2019-07-04 14:51:52','2019-07-04 14:51:52',NULL),(84,1,91,3,'2019-07-04 14:52:04','2019-07-04 14:52:04',NULL),(85,1,92,3,'2019-07-04 14:52:22','2019-07-04 14:52:22',NULL),(86,1,93,3,'2019-07-04 14:52:50','2019-07-04 14:52:50',NULL),(87,1,94,3,'2019-07-04 14:53:05','2019-07-04 14:53:05',NULL),(88,1,95,3,'2019-07-04 14:53:23','2019-07-04 14:53:23',NULL),(89,1,96,3,'2019-07-04 14:53:35','2019-07-04 14:53:35',NULL),(90,1,97,3,'2019-07-04 14:55:07','2019-07-04 14:55:07',NULL),(91,1,98,3,'2019-07-04 14:55:22','2019-07-04 14:55:22',NULL),(92,1,99,3,'2019-07-04 14:56:00','2019-07-04 14:56:00',NULL),(93,1,100,3,'2019-07-04 14:56:26','2019-07-04 14:56:26',NULL),(94,1,101,3,'2019-07-04 14:57:06','2019-07-04 14:57:06',NULL),(95,1,102,3,'2019-07-04 15:00:01','2019-07-04 15:00:01',NULL),(96,1,103,3,'2019-07-04 15:02:05','2019-07-04 15:02:05',NULL),(97,1,104,3,'2019-07-04 15:02:28','2019-07-04 15:02:28',NULL),(98,1,105,3,'2019-07-04 15:03:08','2019-07-04 15:03:08',NULL),(99,1,106,3,'2019-07-04 15:04:05','2019-07-04 15:04:05',NULL),(100,1,107,3,'2019-07-04 15:05:28','2019-07-04 15:05:28',NULL),(101,1,108,3,'2019-07-04 15:05:46','2019-07-04 15:05:46',NULL),(102,1,109,3,'2019-07-04 15:06:12','2019-07-04 15:06:12',NULL),(103,1,110,3,'2019-07-04 15:07:56','2019-07-04 15:07:56',NULL),(104,1,111,3,'2019-07-04 15:09:03','2019-07-04 15:09:03',NULL),(105,1,112,3,'2019-07-04 15:09:27','2019-07-04 15:09:27',NULL),(106,1,113,3,'2019-07-04 15:09:53','2019-07-04 15:09:53',NULL),(107,1,114,3,'2019-07-04 15:10:16','2019-07-04 15:10:16',NULL),(108,1,115,3,'2019-07-04 15:10:58','2019-07-04 15:10:58',NULL),(109,1,116,3,'2019-07-04 15:11:19','2019-07-04 15:11:19',NULL),(110,1,117,3,'2019-07-04 15:11:34','2019-07-04 15:11:34',NULL),(111,1,118,3,'2019-07-04 15:11:46','2019-07-04 15:11:46',NULL),(112,1,119,3,'2019-07-04 15:12:07','2019-07-04 15:12:07',NULL),(113,1,120,3,'2019-07-04 15:12:21','2019-07-04 15:12:21',NULL),(114,1,121,3,'2019-07-04 15:12:33','2019-07-04 15:12:33',NULL),(115,1,122,3,'2019-07-04 15:13:05','2019-07-04 15:13:05',NULL),(116,1,123,3,'2019-07-04 15:13:20','2019-07-04 15:13:20',NULL),(117,1,124,3,'2019-07-04 15:13:43','2019-07-04 15:13:43',NULL),(118,1,125,3,'2019-07-04 15:13:57','2019-07-04 15:13:57',NULL),(119,1,126,3,'2019-07-04 15:14:14','2019-07-04 15:14:14',NULL),(120,1,127,3,'2019-07-04 15:15:29','2019-07-04 15:15:29',NULL),(121,1,128,3,'2019-07-04 15:15:59','2019-07-04 15:15:59',NULL),(122,1,129,3,'2019-07-04 15:16:39','2019-07-04 15:16:39',NULL),(123,1,130,3,'2019-07-04 15:17:29','2019-07-04 15:17:29',NULL),(124,1,131,3,'2019-07-04 15:18:41','2019-07-04 15:18:41',NULL),(125,1,132,3,'2019-07-04 15:19:40','2019-07-04 15:19:40',NULL),(126,1,133,3,'2019-07-04 15:20:25','2019-07-04 15:20:25',NULL),(127,1,134,3,'2019-07-04 15:21:15','2019-07-04 15:21:15',NULL),(128,1,135,3,'2019-07-04 15:21:57','2019-07-04 15:21:57',NULL),(129,1,136,3,'2019-07-04 15:22:43','2019-07-04 15:22:43',NULL),(130,1,137,3,'2019-07-04 15:24:17','2019-07-04 15:24:17',NULL),(131,1,138,3,'2019-07-04 15:24:57','2019-07-04 15:24:57',NULL),(132,1,139,3,'2019-07-04 15:26:39','2019-07-04 15:26:39',NULL),(133,1,140,3,'2019-07-04 15:27:01','2019-07-04 15:27:01',NULL),(134,1,141,3,'2019-07-04 15:27:36','2019-07-04 15:27:36',NULL),(135,1,142,3,'2019-07-04 15:28:02','2019-07-04 15:28:02',NULL),(136,1,143,3,'2019-07-04 15:28:36','2019-07-04 15:28:36',NULL),(137,1,144,3,'2019-07-04 15:28:55','2019-07-04 15:28:55',NULL),(138,1,145,3,'2019-07-04 15:29:21','2019-07-04 15:29:21',NULL),(139,1,146,3,'2019-07-04 15:29:45','2019-07-04 15:29:45',NULL),(140,1,147,3,'2019-07-04 16:43:57','2019-07-04 16:43:57',NULL),(141,1,148,3,'2019-07-04 16:44:29','2019-07-04 16:44:29',NULL),(142,1,149,3,'2019-07-04 16:44:55','2019-07-04 16:44:55',NULL),(143,1,150,3,'2019-07-04 16:45:18','2019-07-04 16:45:18',NULL),(144,1,151,3,'2019-07-04 16:46:52','2019-07-04 16:46:52',NULL),(145,1,152,3,'2019-07-04 17:03:37','2019-07-04 17:03:37',NULL),(146,1,153,3,'2019-07-04 17:04:02','2019-07-04 17:04:02',NULL),(147,1,154,3,'2019-07-04 17:04:23','2019-07-04 17:04:23',NULL),(148,1,155,3,'2019-07-04 17:04:42','2019-07-04 17:04:42',NULL),(149,1,156,3,'2019-07-04 17:05:13','2019-07-04 17:05:13',NULL),(150,1,157,3,'2019-07-04 17:05:37','2019-07-04 17:05:37',NULL),(151,1,158,3,'2019-07-04 17:05:52','2019-07-04 17:05:52',NULL),(152,1,159,3,'2019-07-04 17:06:09','2019-07-04 17:06:09',NULL),(153,1,160,3,'2019-07-04 17:07:59','2019-07-04 17:07:59',NULL),(154,1,161,3,'2019-07-04 17:08:29','2019-07-04 17:08:29',NULL),(155,1,162,3,'2019-07-04 17:08:56','2019-07-04 17:08:56',NULL),(156,1,163,3,'2019-07-04 17:09:29','2019-07-04 17:09:29',NULL),(157,1,164,3,'2019-07-04 17:09:49','2019-07-04 17:09:49',NULL),(158,1,165,3,'2019-07-04 17:10:17','2019-07-04 17:10:17',NULL),(159,1,166,3,'2019-07-04 17:10:52','2019-07-04 17:10:52',NULL),(160,1,167,3,'2019-07-04 17:11:19','2019-07-04 17:11:19',NULL),(161,1,168,3,'2019-07-04 17:11:47','2019-07-04 17:11:47',NULL),(162,1,169,3,'2019-07-04 17:13:00','2019-07-04 17:13:00',NULL),(163,1,170,3,'2019-07-04 17:13:19','2019-07-04 17:13:19',NULL),(164,1,171,3,'2019-07-04 17:13:42','2019-07-04 17:13:42',NULL),(165,1,172,3,'2019-07-04 17:13:58','2019-07-04 17:13:58',NULL),(166,1,173,3,'2019-07-04 17:14:45','2019-07-04 17:14:45',NULL),(167,1,174,3,'2019-07-04 17:15:44','2019-07-04 17:15:44',NULL),(168,1,175,3,'2019-07-04 17:16:03','2019-07-04 17:16:03',NULL),(169,1,176,3,'2019-07-04 17:16:28','2019-07-04 17:16:28',NULL),(170,1,177,3,'2019-07-04 17:17:06','2019-07-04 17:17:06',NULL),(171,1,178,3,'2019-07-04 17:17:32','2019-07-04 17:17:32',NULL),(172,1,179,3,'2019-07-04 17:19:03','2019-07-04 17:19:03',NULL),(173,1,180,3,'2019-07-04 17:20:01','2019-07-04 17:20:01',NULL),(174,1,181,3,'2019-07-04 17:23:09','2019-07-04 17:23:09',NULL),(175,1,182,3,'2019-07-04 17:26:44','2019-07-04 17:26:44',NULL),(176,1,183,3,'2019-07-04 17:28:38','2019-07-04 17:28:38',NULL),(177,1,184,3,'2019-07-04 17:28:59','2019-07-04 17:28:59',NULL),(178,1,185,3,'2019-07-04 17:29:40','2019-07-04 17:29:40',NULL),(179,1,186,3,'2019-07-04 17:35:57','2019-07-04 17:35:57',NULL),(180,1,187,3,'2019-07-04 17:36:15','2019-07-04 17:36:15',NULL),(181,1,188,3,'2019-07-04 17:36:43','2019-07-04 17:36:43',NULL),(182,1,189,3,'2019-07-04 17:37:03','2019-07-04 17:37:03',NULL),(183,1,190,3,'2019-07-04 17:37:17','2019-07-04 17:37:17',NULL),(184,1,191,3,'2019-07-04 17:46:12','2019-07-04 17:46:12',NULL),(185,1,192,3,'2019-07-04 17:46:40','2019-07-04 17:46:40',NULL),(186,1,193,3,'2019-07-04 17:47:15','2019-07-04 17:47:15',NULL),(187,1,194,3,'2019-07-04 17:47:48','2019-07-04 17:47:48',NULL),(188,1,195,3,'2019-07-04 17:48:27','2019-07-04 17:48:27',NULL),(189,1,196,3,'2019-07-04 17:50:07','2019-07-04 17:50:07',NULL),(190,1,197,3,'2019-07-04 17:51:30','2019-07-04 17:51:30',NULL),(191,1,198,3,'2019-07-04 17:52:12','2019-07-04 17:52:12',NULL),(192,1,199,3,'2019-07-04 17:52:29','2019-07-04 17:52:29',NULL),(193,1,200,3,'2019-07-04 18:01:29','2019-07-04 18:01:29',NULL),(194,1,201,3,'2019-07-04 18:01:49','2019-07-04 18:01:49',NULL),(195,1,202,3,'2019-07-04 18:02:08','2019-07-04 18:02:08',NULL),(196,1,203,3,'2019-07-04 18:02:22','2019-07-04 18:02:22',NULL),(197,1,204,3,'2019-07-04 18:02:34','2019-07-04 18:02:34',NULL),(198,1,205,3,'2019-07-04 18:02:47','2019-07-04 18:02:47',NULL),(199,1,206,3,'2019-07-04 18:02:59','2019-07-04 18:02:59',NULL),(200,1,207,3,'2019-07-04 18:03:15','2019-07-04 18:03:15',NULL),(201,1,208,3,'2019-07-04 18:03:24','2019-07-04 18:03:24',NULL),(202,1,209,3,'2019-07-04 18:05:09','2019-07-04 18:05:09',NULL),(203,1,210,3,'2019-07-04 18:05:54','2019-07-04 18:05:54',NULL),(204,1,211,3,'2019-07-04 18:06:10','2019-07-04 18:06:10',NULL),(205,1,212,3,'2019-07-04 18:06:27','2019-07-04 18:06:27',NULL),(206,1,213,3,'2019-07-04 18:06:38','2019-07-04 18:06:38',NULL),(207,1,214,3,'2019-07-04 18:09:59','2019-07-04 18:09:59',NULL),(208,1,215,3,'2019-07-04 18:10:27','2019-07-04 18:10:27',NULL),(209,1,216,3,'2019-07-04 18:10:44','2019-07-04 18:10:44',NULL),(210,1,217,3,'2019-07-04 18:11:04','2019-07-04 18:11:04',NULL),(211,1,218,3,'2019-07-04 18:12:03','2019-07-04 18:12:03',NULL),(212,1,219,3,'2019-07-04 18:12:39','2019-07-04 18:12:39',NULL),(213,1,220,3,'2019-07-04 18:13:06','2019-07-04 18:13:06',NULL),(214,1,221,3,'2019-07-04 18:13:32','2019-07-04 18:13:32',NULL),(215,1,222,3,'2019-07-04 18:14:10','2019-07-04 18:14:10',NULL),(216,1,223,3,'2019-07-04 18:14:39','2019-07-04 18:14:39',NULL),(217,1,224,3,'2019-07-04 18:14:50','2019-07-04 18:14:50',NULL),(218,1,225,3,'2019-07-04 18:15:08','2019-07-04 18:15:08',NULL),(219,1,226,3,'2019-07-04 18:18:32','2019-07-04 18:18:32',NULL),(220,1,227,3,'2019-07-04 18:19:06','2019-07-04 18:19:06',NULL),(221,1,228,3,'2019-07-04 18:19:32','2019-07-04 18:19:32',NULL),(222,1,229,3,'2019-07-04 18:20:11','2019-07-04 18:20:11',NULL),(223,1,230,3,'2019-07-04 18:20:54','2019-07-04 18:20:54',NULL),(224,1,231,3,'2019-07-04 18:21:29','2019-07-04 18:21:29',NULL),(225,1,232,3,'2019-07-04 18:21:53','2019-07-04 18:21:53',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
