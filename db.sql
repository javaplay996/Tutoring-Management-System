/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiajiaoyuyueguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiajiaoyuyueguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiajiaoyuyueguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2023-04-19 11:18:43'),(2,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2023-04-19 11:18:43'),(3,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2023-04-19 11:18:43'),(4,'kecheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-19 11:18:43'),(5,'kecheng_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-19 11:18:43'),(6,'kecheng_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-19 11:18:43'),(7,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-19 11:18:43'),(8,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-19 11:18:43'),(9,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-19 11:18:43'),(10,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-19 11:18:44'),(11,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-19 11:18:44'),(12,'jiaoshi_types','教师类型',1,'教师类型1',NULL,NULL,'2023-04-19 11:18:44'),(13,'jiaoshi_types','教师类型',2,'教师类型2',NULL,NULL,'2023-04-19 11:18:44'),(14,'jiaoshi_types','教师类型',3,'教师类型3',NULL,NULL,'2023-04-19 11:18:44'),(15,'jiaoshi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-19 11:18:44'),(16,'jiaoshi_yuyue_yesno_types','审核状态',1,'待审核',NULL,NULL,'2023-04-19 11:18:44'),(17,'jiaoshi_yuyue_yesno_types','审核状态',2,'同意',NULL,NULL,'2023-04-19 11:18:44'),(18,'jiaoshi_yuyue_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2023-04-19 11:18:44'),(19,'jiaoshi_yuyue_types','预约状态',101,'未支付',NULL,NULL,'2023-04-19 11:18:44'),(20,'jiaoshi_yuyue_types','预约状态',102,'已取消',NULL,NULL,'2023-04-19 11:18:44'),(21,'jiaoshi_yuyue_types','预约状态',104,'已支付',NULL,NULL,'2023-04-19 11:18:44'),(22,'jiaoshi_yuyue_types','预约状态',105,'已评论',NULL,NULL,'2023-04-19 11:18:44'),(23,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-19 11:18:44'),(24,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-19 11:18:44');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`jiaoshi_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,3,NULL,'发布内容1',492,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(2,'帖子标题2',NULL,3,NULL,'发布内容2',256,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(3,'帖子标题3',NULL,1,NULL,'发布内容3',166,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(4,'帖子标题4',NULL,3,NULL,'发布内容4',275,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(5,'帖子标题5',NULL,3,NULL,'发布内容5',106,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(6,'帖子标题6',NULL,2,NULL,'发布内容6',195,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(7,'帖子标题7',NULL,3,NULL,'发布内容7',189,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(8,'帖子标题8',NULL,2,NULL,'发布内容8',253,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(9,'帖子标题9',NULL,1,NULL,'发布内容9',138,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(10,'帖子标题10',NULL,1,NULL,'发布内容10',162,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(11,'帖子标题11',NULL,2,NULL,'发布内容11',351,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(12,'帖子标题12',NULL,3,NULL,'发布内容12',286,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(13,'帖子标题13',NULL,1,NULL,'发布内容13',243,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(14,'帖子标题14',NULL,3,NULL,'发布内容14',255,1,'2023-04-19 11:19:10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(16,NULL,NULL,1,NULL,'1111111111111111',14,2,'2023-04-19 13:25:12',NULL,'2023-04-19 13:25:12'),(18,NULL,1,NULL,NULL,'222222222',14,2,'2023-04-19 13:26:24',NULL,'2023-04-19 13:26:24'),(19,NULL,NULL,NULL,1,'3333333333333',14,2,'2023-04-19 13:27:52',NULL,'2023-04-19 13:27:52');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师名称 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  `jiaoshi_mone` decimal(10,2) DEFAULT NULL COMMENT '预约价格',
  `jiaoshi_types` int(11) DEFAULT NULL COMMENT '教师类型 Search111',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `jiaoshi_content` longtext COMMENT '个人介绍',
  `jiaoshi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`jiaoshi_phone`,`jiaoshi_photo`,`sex_types`,`jiaoshi_email`,`jiaoshi_mone`,`jiaoshi_types`,`new_money`,`jiaoshi_content`,`jiaoshi_delete`,`insert_time`,`create_time`) values (1,'a1','123456','教师名称1','17703786901','upload/jiaoshi1.jpg',2,'1@qq.com','180.46',3,'0.00','<p>个人介绍1</p>',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(2,'a2','123456','教师名称2','17703786902','upload/jiaoshi2.jpg',2,'2@qq.com','750.52',3,'372.69','个人介绍2',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(3,'a3','123456','教师名称3','17703786903','upload/jiaoshi3.jpg',1,'3@qq.com','184.96',3,'763.29','个人介绍3',1,'2023-04-19 11:19:10','2023-04-19 11:19:10');

/*Table structure for table `jiaoshi_collection` */

DROP TABLE IF EXISTS `jiaoshi_collection`;

CREATE TABLE `jiaoshi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaoshi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='教师收藏';

/*Data for the table `jiaoshi_collection` */

insert  into `jiaoshi_collection`(`id`,`jiaoshi_id`,`yonghu_id`,`jiaoshi_collection_types`,`insert_time`,`create_time`) values (1,3,3,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(2,2,1,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(3,1,1,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(4,2,2,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(5,3,2,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(6,1,2,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(8,1,3,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(9,3,3,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(10,1,3,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(12,3,2,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(13,1,3,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(14,3,2,1,'2023-04-19 11:19:10','2023-04-19 11:19:10');

/*Table structure for table `jiaoshi_commentback` */

DROP TABLE IF EXISTS `jiaoshi_commentback`;

CREATE TABLE `jiaoshi_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaoshi_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='教师评价';

/*Data for the table `jiaoshi_commentback` */

insert  into `jiaoshi_commentback`(`id`,`jiaoshi_id`,`yonghu_id`,`jiaoshi_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2023-04-19 11:19:10','回复信息1','2023-04-19 11:19:10','2023-04-19 11:19:10'),(2,3,3,'评价内容2','2023-04-19 11:19:10','回复信息2','2023-04-19 11:19:10','2023-04-19 11:19:10'),(3,3,2,'评价内容3','2023-04-19 11:19:10','回复信息3','2023-04-19 11:19:10','2023-04-19 11:19:10'),(4,1,3,'评价内容4','2023-04-19 11:19:10','回复信息4','2023-04-19 11:19:10','2023-04-19 11:19:10'),(5,3,3,'评价内容5','2023-04-19 11:19:10','回复信息5','2023-04-19 11:19:10','2023-04-19 11:19:10'),(6,2,3,'评价内容6','2023-04-19 11:19:10','回复信息6','2023-04-19 11:19:10','2023-04-19 11:19:10'),(7,1,1,'评价内容7','2023-04-19 11:19:10','回复信息7','2023-04-19 11:19:10','2023-04-19 11:19:10'),(8,2,1,'评价内容8','2023-04-19 11:19:10','回复信息8','2023-04-19 11:19:10','2023-04-19 11:19:10'),(9,1,3,'评价内容9','2023-04-19 11:19:10','回复信息9','2023-04-19 11:19:10','2023-04-19 11:19:10'),(10,3,1,'评价内容10','2023-04-19 11:19:10','回复信息10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(11,1,1,'评价内容11','2023-04-19 11:19:10','回复信息11','2023-04-19 11:19:10','2023-04-19 11:19:10'),(12,3,2,'评价内容12','2023-04-19 11:19:10','回复信息12','2023-04-19 11:19:10','2023-04-19 11:19:10'),(14,3,3,'评价内容14','2023-04-19 11:19:10','回复信息14','2023-04-19 11:19:10','2023-04-19 11:19:10'),(15,1,1,'123123','2023-04-19 13:26:04','123','2023-04-19 13:26:49','2023-04-19 13:26:04');

/*Table structure for table `jiaoshi_yuyue` */

DROP TABLE IF EXISTS `jiaoshi_yuyue`;

CREATE TABLE `jiaoshi_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约编号 Search111 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaoshi_yuyue_text` longtext COMMENT '预约信息',
  `jiaoshi_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `jiaoshi_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111 ',
  `jiaoshi_yuyue_yesno_text` longtext COMMENT '审核回复',
  `jiaoshi_yuyue_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='预约信息';

/*Data for the table `jiaoshi_yuyue` */

insert  into `jiaoshi_yuyue`(`id`,`jiaoshi_yuyue_uuid_number`,`jiaoshi_id`,`yonghu_id`,`jiaoshi_yuyue_text`,`jiaoshi_yuyue_time`,`jiaoshi_yuyue_yesno_types`,`jiaoshi_yuyue_yesno_text`,`jiaoshi_yuyue_types`,`insert_time`,`create_time`) values (1,'1681874350357',1,2,'预约信息1','2023-04-19 11:19:10',1,NULL,104,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(2,'1681874350405',3,2,'预约信息2','2023-04-19 11:19:10',1,NULL,102,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(3,'1681874350337',1,3,'预约信息3','2023-04-19 11:19:10',1,NULL,104,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(4,'1681874350377',1,1,'预约信息4','2023-04-19 11:19:10',1,NULL,104,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(5,'1681874350376',2,1,'预约信息5','2023-04-19 11:19:10',1,NULL,105,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(6,'1681874350361',1,1,'预约信息6','2023-04-19 11:19:10',1,NULL,101,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(7,'1681874350362',2,3,'预约信息7','2023-04-19 11:19:10',1,NULL,101,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(8,'1681874350347',2,3,'预约信息8','2023-04-19 11:19:10',1,NULL,101,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(9,'1681874350419',1,3,'预约信息9','2023-04-19 11:19:10',1,NULL,105,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(10,'1681874350341',2,2,'预约信息10','2023-04-19 11:19:10',1,NULL,105,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(11,'1681874350355',1,1,'预约信息11','2023-04-19 11:19:10',3,'1111111111',104,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(12,'1681874350373',1,1,'预约信息12','2023-04-19 11:19:10',2,'123123',105,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(13,'1681874350391',2,3,'预约信息13','2023-04-19 11:19:10',1,NULL,105,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(14,'1681874350350',3,3,'预约信息14','2023-04-19 11:19:10',1,NULL,105,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(15,'1681881791194',2,1,'预约的信息 多长时间 等。。。。。。。。。。。。。','2023-04-20 13:22:47',1,NULL,101,'2023-04-19 13:23:11','2023-04-19 13:23:11');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程标题  Search111 ',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '展示照片',
  `kecheng_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_clicknum` int(11) DEFAULT NULL COMMENT '热度',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `kecheng_content` longtext COMMENT '课程详情',
  `kecheng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`kecheng_photo`,`kecheng_video`,`kecheng_types`,`kecheng_clicknum`,`zan_number`,`cai_number`,`kecheng_content`,`kecheng_delete`,`insert_time`,`create_time`) values (1,'课程标题1','upload/kecheng1.jpg','upload/video.mp4',3,108,299,315,'课程详情1',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(2,'课程标题2','upload/kecheng2.jpg','upload/video.mp4',1,41,428,1,'课程详情2',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(3,'课程标题3','upload/kecheng3.jpg','upload/video.mp4',3,118,354,172,'课程详情3',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(4,'课程标题4','upload/kecheng4.jpg','upload/video.mp4',1,494,228,144,'课程详情4',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(5,'课程标题5','upload/kecheng5.jpg','upload/video.mp4',1,2,421,137,'课程详情5',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(6,'课程标题6','upload/kecheng6.jpg','upload/video.mp4',3,442,167,369,'课程详情6',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(7,'课程标题7','upload/kecheng7.jpg','upload/video.mp4',3,228,37,364,'课程详情7',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(8,'课程标题8','upload/kecheng8.jpg','upload/video.mp4',1,154,240,491,'课程详情8',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(9,'课程标题9','upload/kecheng9.jpg','upload/video.mp4',3,129,211,309,'课程详情9',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(10,'课程标题10','upload/kecheng10.jpg','upload/video.mp4',2,164,268,50,'课程详情10',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(11,'课程标题11','upload/kecheng11.jpg','upload/video.mp4',3,252,480,222,'课程详情11',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(12,'课程标题12','upload/kecheng12.jpg','upload/video.mp4',1,392,273,98,'课程详情12',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(13,'课程标题13','upload/kecheng13.jpg','upload/video.mp4',1,18,80,426,'课程详情13',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(14,'课程标题14','upload/kecheng14.jpg','upload/video.mp4',1,456,62,487,'课程详情14',1,'2023-04-19 11:19:10','2023-04-19 11:19:10');

/*Table structure for table `kecheng_collection` */

DROP TABLE IF EXISTS `kecheng_collection`;

CREATE TABLE `kecheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='课程收藏';

/*Data for the table `kecheng_collection` */

insert  into `kecheng_collection`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(2,2,1,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(4,4,2,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(5,5,2,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(7,7,1,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(8,8,2,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(9,9,1,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(10,10,2,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(11,11,1,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(12,12,3,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(13,13,3,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(14,14,3,1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(15,4,1,2,'2023-04-19 13:21:52','2023-04-19 13:21:52'),(16,4,1,1,'2023-04-19 13:21:53','2023-04-19 13:21:53');

/*Table structure for table `kecheng_liuyan` */

DROP TABLE IF EXISTS `kecheng_liuyan`;

CREATE TABLE `kecheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='课程留言';

/*Data for the table `kecheng_liuyan` */

insert  into `kecheng_liuyan`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-04-19 11:19:10','回复信息1','2023-04-19 11:19:10','2023-04-19 11:19:10'),(2,2,2,'留言内容2','2023-04-19 11:19:10','回复信息2','2023-04-19 11:19:10','2023-04-19 11:19:10'),(3,3,3,'留言内容3','2023-04-19 11:19:10','回复信息3','2023-04-19 11:19:10','2023-04-19 11:19:10'),(4,4,3,'留言内容4','2023-04-19 11:19:10','回复信息4','2023-04-19 11:19:10','2023-04-19 11:19:10'),(5,5,2,'留言内容5','2023-04-19 11:19:10','回复信息5','2023-04-19 11:19:10','2023-04-19 11:19:10'),(6,6,3,'留言内容6','2023-04-19 11:19:10','回复信息6','2023-04-19 11:19:10','2023-04-19 11:19:10'),(7,7,1,'留言内容7','2023-04-19 11:19:10','回复信息7','2023-04-19 11:19:10','2023-04-19 11:19:10'),(8,8,3,'留言内容8','2023-04-19 11:19:10','回复信息8','2023-04-19 11:19:10','2023-04-19 11:19:10'),(9,9,1,'留言内容9','2023-04-19 11:19:10','回复信息9','2023-04-19 11:19:10','2023-04-19 11:19:10'),(10,10,2,'留言内容10','2023-04-19 11:19:10','回复信息10','2023-04-19 11:19:10','2023-04-19 11:19:10'),(11,11,1,'留言内容11','2023-04-19 11:19:10','回复信息11','2023-04-19 11:19:10','2023-04-19 11:19:10'),(12,12,1,'留言内容12','2023-04-19 11:19:10','回复信息12','2023-04-19 11:19:10','2023-04-19 11:19:10'),(13,13,2,'留言内容13','2023-04-19 11:19:10','回复信息13','2023-04-19 11:19:10','2023-04-19 11:19:10'),(15,4,1,'登录后才能查看数据详情信息 进行留言评论 点赞等操作','2023-04-19 13:22:22','11111111111','2023-04-19 13:27:45','2023-04-19 13:22:22');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告通知';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'upload/news1.jpg','2023-04-19 11:19:10','公告详情1','2023-04-19 11:19:10'),(2,'公告标题2',2,'upload/news2.jpg','2023-04-19 11:19:10','公告详情2','2023-04-19 11:19:10'),(3,'公告标题3',1,'upload/news3.jpg','2023-04-19 11:19:10','公告详情3','2023-04-19 11:19:10'),(4,'公告标题4',2,'upload/news4.jpg','2023-04-19 11:19:10','公告详情4','2023-04-19 11:19:10'),(5,'公告标题5',3,'upload/news5.jpg','2023-04-19 11:19:10','公告详情5','2023-04-19 11:19:10'),(6,'公告标题6',3,'upload/news6.jpg','2023-04-19 11:19:10','公告详情6','2023-04-19 11:19:10'),(7,'公告标题7',1,'upload/news7.jpg','2023-04-19 11:19:10','公告详情7','2023-04-19 11:19:10'),(8,'公告标题8',1,'upload/news8.jpg','2023-04-19 11:19:10','公告详情8','2023-04-19 11:19:10'),(9,'公告标题9',3,'upload/news9.jpg','2023-04-19 11:19:10','公告详情9','2023-04-19 11:19:10'),(10,'公告标题10',2,'upload/news10.jpg','2023-04-19 11:19:10','公告详情10','2023-04-19 11:19:10'),(11,'公告标题11',1,'upload/news11.jpg','2023-04-19 11:19:10','公告详情11','2023-04-19 11:19:10'),(12,'公告标题12',3,'upload/news12.jpg','2023-04-19 11:19:10','公告详情12','2023-04-19 11:19:10'),(13,'公告标题13',2,'upload/news13.jpg','2023-04-19 11:19:10','公告详情13','2023-04-19 11:19:10'),(14,'公告标题14',1,'upload/news14.jpg','2023-04-19 11:19:10','公告详情14','2023-04-19 11:19:10');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','hxu5r2oiyoah7dvqdswwh7zqcpi8x7l3','2023-04-19 11:33:42','2023-04-19 14:21:48'),(2,1,'a1','jiaoshi','教师','vmunezg91krdh863zow85lfstrubarha','2023-04-19 13:17:42','2023-04-19 14:25:33'),(3,1,'admin','users','管理员','gtytglcgrmgm2bcr0dgdfu037whnwc0c','2023-04-19 13:26:40','2023-04-19 14:29:06');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-19 11:18:43');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户名称1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','272.29',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(2,'a2','123456','用户名称2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','428.03',1,'2023-04-19 11:19:10','2023-04-19 11:19:10'),(3,'a3','123456','用户名称3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','419.91',1,'2023-04-19 11:19:10','2023-04-19 11:19:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
