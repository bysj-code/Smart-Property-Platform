/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhihuiwuyepingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhihuiwuyepingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhihuiwuyepingtai`;

/*Table structure for table `baoxiu` */

DROP TABLE IF EXISTS `baoxiu`;

CREATE TABLE `baoxiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `baoxiu_name` varchar(200) DEFAULT NULL COMMENT '报修名称 Search111',
  `baoxiu_photo` varchar(200) DEFAULT NULL COMMENT '报修图片',
  `baoxiu_types` int(11) NOT NULL COMMENT '报修类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请报修时间',
  `baoxiu_zhuangtai_types` int(11) NOT NULL COMMENT '报修状态 Search111',
  `baoxiu_content` text COMMENT '报修详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='报修';

/*Data for the table `baoxiu` */

insert  into `baoxiu`(`id`,`yonghu_id`,`baoxiu_name`,`baoxiu_photo`,`baoxiu_types`,`insert_time`,`baoxiu_zhuangtai_types`,`baoxiu_content`,`create_time`) values (1,1,'报修名称1','upload/baoxiu1.jpg',3,'2023-04-17 11:49:50',2,'报修详情1','2023-04-17 11:49:50'),(2,3,'报修名称2','upload/baoxiu2.jpg',1,'2023-04-17 11:49:50',1,'报修详情2','2023-04-17 11:49:50'),(3,1,'报修名称3','upload/baoxiu3.jpg',3,'2023-04-17 11:49:50',1,'报修详情3','2023-04-17 11:49:50'),(4,1,'报修名称4','upload/baoxiu4.jpg',4,'2023-04-17 11:49:50',1,'报修详情4','2023-04-17 11:49:50'),(5,2,'报修名称5','upload/baoxiu5.jpg',2,'2023-04-17 11:49:50',2,'报修详情5','2023-04-17 11:49:50'),(6,2,'报修名称6','upload/baoxiu6.jpg',3,'2023-04-17 11:49:50',2,'报修详情6','2023-04-17 11:49:50'),(7,3,'报修名称7','upload/baoxiu7.jpg',4,'2023-04-17 11:49:50',1,'报修详情7','2023-04-17 11:49:50'),(8,3,'报修名称8','upload/baoxiu8.jpg',3,'2023-04-17 11:49:50',2,'报修详情8','2023-04-17 11:49:50'),(9,2,'报修名称9','upload/baoxiu9.jpg',2,'2023-04-17 11:49:50',2,'报修详情9','2023-04-17 11:49:50'),(10,2,'报修名称10','upload/baoxiu10.jpg',2,'2023-04-17 11:49:50',2,'报修详情10','2023-04-17 11:49:50'),(11,2,'报修名称11','upload/baoxiu11.jpg',3,'2023-04-17 11:49:50',1,'报修详情11','2023-04-17 11:49:50'),(12,1,'报修名称12','upload/baoxiu12.jpg',1,'2023-04-17 11:49:50',1,'报修详情12','2023-04-17 11:49:50'),(13,2,'报修名称13','upload/baoxiu13.jpg',1,'2023-04-17 11:49:50',2,'报修详情13','2023-04-17 11:49:50'),(14,1,'报修名称14','upload/baoxiu14.jpg',3,'2023-04-17 11:49:50',1,'报修详情14','2023-04-17 11:49:50'),(15,1,'111','upload/1681709695168.jpg',4,'2023-04-17 13:34:58',1,'手打sad','2023-04-17 13:34:58'),(16,1,'22','upload/1681711012201.jpg',2,'2023-04-17 13:56:59',1,'剽按时','2023-04-17 13:56:59');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='投诉管理';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'有亚压实度 ','2023-04-17 13:57:09',NULL,NULL,2,1,'2023-04-17 13:57:10'),(2,1,NULL,NULL,'丫丫','2023-04-17 14:05:44',NULL,2,'2023-04-17 14:05:45');

/*Table structure for table `chewei` */

DROP TABLE IF EXISTS `chewei`;

CREATE TABLE `chewei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chewei_name` varchar(200) DEFAULT NULL COMMENT '车位名称  Search111 ',
  `chewei_uuid_number` varchar(200) DEFAULT NULL COMMENT '车位编号',
  `chewei_photo` varchar(200) DEFAULT NULL COMMENT '车位照片',
  `chewei_address` varchar(200) DEFAULT NULL COMMENT '车位地点',
  `chewei_types` int(11) DEFAULT NULL COMMENT '车位类型 Search111',
  `chewei_zhuangtai_types` int(11) DEFAULT NULL COMMENT '车位状态 Search111',
  `chewei_new_money` decimal(10,2) DEFAULT NULL COMMENT '金额/小时 ',
  `chewei_content` longtext COMMENT '车位介绍 ',
  `chewei_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='车位';

/*Data for the table `chewei` */

insert  into `chewei`(`id`,`chewei_name`,`chewei_uuid_number`,`chewei_photo`,`chewei_address`,`chewei_types`,`chewei_zhuangtai_types`,`chewei_new_money`,`chewei_content`,`chewei_delete`,`insert_time`,`create_time`) values (1,'车位名称1','1681703391024','upload/chewei1.jpg','车位地点1',1,1,'362.11','车位介绍1',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(2,'车位名称2','1681703391044','upload/chewei2.jpg','车位地点2',4,1,'492.08','车位介绍2',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(3,'车位名称3','1681703391030','upload/chewei3.jpg','车位地点3',4,2,'427.29','车位介绍3',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(4,'车位名称4','1681703391058','upload/chewei4.jpg','车位地点4',4,2,'28.83','车位介绍4',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(5,'车位名称5','1681703391041','upload/chewei5.jpg','车位地点5',3,2,'97.91','车位介绍5',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(6,'车位名称6','1681703391078','upload/chewei6.jpg','车位地点6',4,2,'394.92','车位介绍6',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(7,'车位名称7','1681703390990','upload/chewei7.jpg','车位地点7',1,1,'376.44','车位介绍7',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(8,'车位名称8','1681703391003','upload/chewei8.jpg','车位地点8',1,2,'404.34','车位介绍8',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(9,'车位名称9','1681703391075','upload/chewei9.jpg','车位地点9',2,2,'359.65','车位介绍9',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(10,'车位名称10','1681703391082','upload/chewei10.jpg','车位地点10',3,2,'477.69','车位介绍10',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(11,'车位名称11','1681703391032','upload/chewei11.jpg','车位地点11',2,1,'262.40','车位介绍11',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(12,'车位名称12','1681703391001','upload/chewei12.jpg','车位地点12',2,1,'118.15','车位介绍12',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(13,'车位名称13','1681703391050','upload/chewei13.jpg','车位地点13',1,2,'50.05','车位介绍13',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(14,'车位名称14','1681703391043','upload/chewei14.jpg','车位地点14',3,2,'487.31','车位介绍14',1,'2023-04-17 11:49:50','2023-04-17 11:49:50');

/*Table structure for table `chewei_order` */

DROP TABLE IF EXISTS `chewei_order`;

CREATE TABLE `chewei_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chewei_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `chewei_id` int(11) DEFAULT NULL COMMENT '车位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chewei_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `chewei_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='车位订单';

/*Data for the table `chewei_order` */

insert  into `chewei_order`(`id`,`chewei_order_uuid_number`,`chewei_id`,`yonghu_id`,`chewei_order_true_price`,`chewei_order_types`,`insert_time`,`create_time`) values (1,'1681707837993',14,1,'487.31',104,'2023-04-17 13:03:58','2023-04-17 13:03:58'),(2,'1681708232911',10,1,'477.69',104,'2023-04-17 13:10:33','2023-04-17 13:10:33'),(3,'1681710967508',14,1,'487.31',104,'2023-04-17 13:56:08','2023-04-17 13:56:08');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-17 11:49:39'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-17 11:49:39'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-17 11:49:39'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-17 11:49:39'),(5,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-17 11:49:39'),(6,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-17 11:49:39'),(7,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-17 11:49:39'),(8,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-17 11:49:39'),(9,'fangwu_types','房屋类型',1,'房屋类型1',NULL,NULL,'2023-04-17 11:49:39'),(10,'fangwu_types','房屋类型',2,'房屋类型2',NULL,NULL,'2023-04-17 11:49:39'),(11,'fangwu_types','房屋类型',3,'房屋类型3',NULL,NULL,'2023-04-17 11:49:39'),(12,'fangwu_types','房屋类型',4,'房屋类型4',NULL,NULL,'2023-04-17 11:49:39'),(13,'jiaofei_types','缴费类型',1,'缴费类型1',NULL,NULL,'2023-04-17 11:49:39'),(14,'jiaofei_types','缴费类型',2,'缴费类型2',NULL,NULL,'2023-04-17 11:49:40'),(15,'jiaofei_types','缴费类型',3,'缴费类型3',NULL,NULL,'2023-04-17 11:49:40'),(16,'jiaofei_types','缴费类型',4,'缴费类型4',NULL,NULL,'2023-04-17 11:49:40'),(17,'jiaofei_shifou_types','是否缴费',1,'已缴费',NULL,NULL,'2023-04-17 11:49:40'),(18,'jiaofei_shifou_types','是否缴费',2,'未交费',NULL,NULL,'2023-04-17 11:49:40'),(19,'baoxiu_types','报修类型',1,'报修类型1',NULL,NULL,'2023-04-17 11:49:40'),(20,'baoxiu_types','报修类型',2,'报修类型2',NULL,NULL,'2023-04-17 11:49:40'),(21,'baoxiu_types','报修类型',3,'报修类型3',NULL,NULL,'2023-04-17 11:49:40'),(22,'baoxiu_types','报修类型',4,'5455',NULL,NULL,'2023-04-17 11:49:40'),(23,'baoxiu_zhuangtai_types','报修状态',1,'已维修',NULL,NULL,'2023-04-17 11:49:40'),(24,'baoxiu_zhuangtai_types','报修状态',2,'未维修',NULL,NULL,'2023-04-17 11:49:40'),(25,'chewei_zhuangtai_types','车位状态',1,'已使用',NULL,NULL,'2023-04-17 11:49:40'),(26,'chewei_zhuangtai_types','车位状态',2,'未使用',NULL,NULL,'2023-04-17 11:49:40'),(27,'chewei_types','车位类型',1,'车位类型1',NULL,NULL,'2023-04-17 11:49:40'),(28,'chewei_types','车位类型',2,'车位类型2',NULL,NULL,'2023-04-17 11:49:40'),(29,'chewei_types','车位类型',3,'车位类型3',NULL,NULL,'2023-04-17 11:49:40'),(30,'chewei_types','车位类型',4,'车位类型4',NULL,NULL,'2023-04-17 11:49:40'),(31,'chewei_order_types','订单类型',101,'已支付停车费',NULL,NULL,'2023-04-17 11:49:40'),(32,'chewei_order_types','订单类型',104,'已取车',NULL,NULL,'2023-04-17 11:49:40');

/*Table structure for table `fangwu` */

DROP TABLE IF EXISTS `fangwu`;

CREATE TABLE `fangwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_name` varchar(200) DEFAULT NULL COMMENT '房屋名称 Search111 ',
  `fangwu_address` varchar(200) DEFAULT NULL COMMENT '房屋地址 Search111 ',
  `fangwu_photo` varchar(200) DEFAULT NULL COMMENT '房屋照片',
  `fangwu_types` int(11) DEFAULT NULL COMMENT '房屋类型  Search111',
  `fangwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `fangwu_content` text COMMENT '房屋详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='房屋';

/*Data for the table `fangwu` */

insert  into `fangwu`(`id`,`yonghu_id`,`fangwu_name`,`fangwu_address`,`fangwu_photo`,`fangwu_types`,`fangwu_delete`,`fangwu_content`,`create_time`) values (1,2,'房屋名称1','房屋地址1','upload/fangwu1.jpg',4,1,'房屋详情1','2023-04-17 11:49:50'),(2,2,'房屋名称2','房屋地址2','upload/fangwu2.jpg',4,1,'房屋详情2','2023-04-17 11:49:50'),(3,2,'房屋名称3','房屋地址3','upload/fangwu3.jpg',1,1,'房屋详情3','2023-04-17 11:49:50'),(4,1,'房屋名称4','房屋地址4','upload/fangwu4.jpg',4,1,'房屋详情4','2023-04-17 11:49:50'),(5,1,'房屋名称5','房屋地址5','upload/fangwu5.jpg',1,1,'房屋详情5','2023-04-17 11:49:50'),(6,1,'房屋名称6','房屋地址6','upload/fangwu6.jpg',3,1,'房屋详情6','2023-04-17 11:49:50'),(7,2,'房屋名称7','房屋地址7','upload/fangwu7.jpg',1,1,'房屋详情7','2023-04-17 11:49:50'),(8,1,'房屋名称8','房屋地址8','upload/fangwu8.jpg',4,1,'房屋详情8','2023-04-17 11:49:50'),(9,2,'房屋名称9','房屋地址9','upload/fangwu9.jpg',2,1,'房屋详情9','2023-04-17 11:49:50'),(10,3,'房屋名称10','房屋地址10','upload/fangwu10.jpg',3,1,'房屋详情10','2023-04-17 11:49:50'),(11,1,'房屋名称11','房屋地址11','upload/fangwu11.jpg',3,1,'房屋详情11','2023-04-17 11:49:50'),(12,2,'房屋名称12','房屋地址12','upload/fangwu12.jpg',1,1,'房屋详情12','2023-04-17 11:49:50'),(13,1,'房屋名称13','房屋地址13','upload/fangwu13.jpg',2,1,'房屋详情13','2023-04-17 11:49:50'),(14,3,'房屋名称14','房屋地址14','upload/fangwu14.jpg',3,1,'房屋详情14','2023-04-17 11:49:50');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-17 11:49:50','公告详情1','2023-04-17 11:49:50'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-04-17 11:49:50','公告详情2','2023-04-17 11:49:50'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-04-17 11:49:50','公告详情3','2023-04-17 11:49:50'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-04-17 11:49:50','公告详情4','2023-04-17 11:49:50'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-04-17 11:49:50','公告详情5','2023-04-17 11:49:50'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-04-17 11:49:50','公告详情6','2023-04-17 11:49:50'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-04-17 11:49:50','公告详情7','2023-04-17 11:49:50'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-17 11:49:50','公告详情8','2023-04-17 11:49:50'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-17 11:49:50','公告详情9','2023-04-17 11:49:50'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-17 11:49:50','公告详情10','2023-04-17 11:49:50'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-17 11:49:50','公告详情11','2023-04-17 11:49:50'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-04-17 11:49:50','公告详情12','2023-04-17 11:49:50'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-17 11:49:50','公告详情13','2023-04-17 11:49:50'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-04-17 11:49:50','公告详情14','2023-04-17 11:49:50');

/*Table structure for table `jiaofei` */

DROP TABLE IF EXISTS `jiaofei`;

CREATE TABLE `jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangwu_id` int(11) NOT NULL COMMENT '房源',
  `jiaofei_name` varchar(200) DEFAULT NULL COMMENT '缴费名称 Search111',
  `jiaofei_yuefen` varchar(200) DEFAULT NULL COMMENT '缴费月份 Search111',
  `jiaofei_types` int(11) NOT NULL COMMENT '缴费类型 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '缴费金额',
  `jiaofei_content` text COMMENT '缴费详情',
  `jiaofei_shifou_types` int(11) NOT NULL COMMENT '是否缴费',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '缴费发布时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='缴费';

/*Data for the table `jiaofei` */

insert  into `jiaofei`(`id`,`fangwu_id`,`jiaofei_name`,`jiaofei_yuefen`,`jiaofei_types`,`new_money`,`jiaofei_content`,`jiaofei_shifou_types`,`insert_time`,`create_time`) values (1,1,'缴费名称1','缴费月份1',2,'142.04','缴费详情1',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(2,2,'缴费名称2','缴费月份2',4,'432.95','缴费详情2',2,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(3,3,'缴费名称3','缴费月份3',4,'322.96','缴费详情3',2,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(4,4,'缴费名称4','缴费月份4',4,'921.58','缴费详情4',2,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(5,5,'缴费名称5','缴费月份5',3,'909.88','缴费详情5',2,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(6,6,'缴费名称6','缴费月份6',4,'144.99','缴费详情6',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(7,7,'缴费名称7','缴费月份7',3,'792.35','缴费详情7',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(8,8,'缴费名称8','缴费月份8',2,'593.91','缴费详情8',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(9,9,'缴费名称9','缴费月份9',1,'498.32','缴费详情9',2,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(10,10,'缴费名称10','缴费月份10',2,'515.17','缴费详情10',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(11,11,'缴费名称11','缴费月份11',4,'749.81','缴费详情11',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(12,12,'缴费名称12','缴费月份12',4,'399.74','缴费详情12',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(13,13,'缴费名称13','缴费月份13',2,'396.95','缴费详情13',1,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(14,14,'缴费名称14','缴费月份14',2,'38.14','缴费详情14',2,'2023-04-17 11:49:50','2023-04-17 11:49:50'),(15,13,'缴费单','4月份',4,'80.00','<p>水电费</p>',2,'2023-04-17 14:02:21','2023-04-17 14:02:21');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ikhekens3nn4pyql2uszef99wkiuav18','2023-04-17 11:55:53','2023-04-17 15:10:33'),(2,1,'a1','yonghu','用户','uk2ddt2izq5idst49tb1fqk9bj9am2nr','2023-04-17 11:56:14','2023-04-17 14:55:48'),(3,1,'a1','yuangong','员工','ofnlzsk629kpq39d39g70yiaws9w9kdc','2023-04-17 12:00:02','2023-04-17 15:06:39');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-17 11:49:39');

/*Table structure for table `weixui` */

DROP TABLE IF EXISTS `weixui`;

CREATE TABLE `weixui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `baoxiu_id` int(11) DEFAULT NULL COMMENT '报修',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '维修人员',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '指派时间',
  `weixui_text` text COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='维修指派';

/*Data for the table `weixui` */

insert  into `weixui`(`id`,`baoxiu_id`,`yuangong_id`,`insert_time`,`weixui_text`,`create_time`) values (1,1,1,'2023-04-17 11:49:50','备注1','2023-04-17 11:49:50'),(2,2,2,'2023-04-17 11:49:50','备注2','2023-04-17 11:49:50'),(3,3,1,'2023-04-17 11:49:50','备注3','2023-04-17 11:49:50'),(4,4,1,'2023-04-17 11:49:50','备注4','2023-04-17 11:49:50'),(5,5,1,'2023-04-17 11:49:50','备注5','2023-04-17 11:49:50'),(6,6,3,'2023-04-17 11:49:50','备注6','2023-04-17 11:49:50'),(7,7,3,'2023-04-17 11:49:50','备注7','2023-04-17 11:49:50'),(8,8,1,'2023-04-17 11:49:50','备注8','2023-04-17 11:49:50'),(9,9,2,'2023-04-17 11:49:50','备注9','2023-04-17 11:49:50'),(10,10,2,'2023-04-17 11:49:50','备注10','2023-04-17 11:49:50'),(11,11,1,'2023-04-17 11:49:50','备注11','2023-04-17 11:49:50'),(12,12,3,'2023-04-17 11:49:50','备注12','2023-04-17 11:49:50'),(13,13,2,'2023-04-17 11:49:50','备注13','2023-04-17 11:49:50'),(14,14,2,'2023-04-17 11:49:50','备注14','2023-04-17 11:49:50'),(15,15,1,'2023-04-17 13:41:12','尽快','2023-04-17 13:41:12'),(16,16,1,'2023-04-17 14:05:31','尽快维修','2023-04-17 14:05:31');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`new_money`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'970.75','1@qq.com','2023-04-17 11:49:50'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'315.43','2@qq.com','2023-04-17 11:49:50'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'198.54','3@qq.com','2023-04-17 11:49:50');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号 Search111 ',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号 Search111 ',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`create_time`) values (1,'a1','123456','员工姓名1','17703786901','410224199010102001','upload/yuangong1.jpg',2,'2023-04-17 11:49:50'),(2,'a2','123456','员工姓名2','17703786902','410224199010102002','upload/yuangong2.jpg',2,'2023-04-17 11:49:50'),(3,'a3','123456','员工姓名3','17703786903','410224199010102003','upload/yuangong3.jpg',2,'2023-04-17 11:49:50');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
