/*
SQLyog v10.2 
MySQL - 5.5.27 : Database - cdcol
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cdcol` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;

USE `cdcol`;

/*Table structure for table `tbl_issue` */

DROP TABLE IF EXISTS `tbl_issue`;

CREATE TABLE `tbl_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE latin1_general_ci NOT NULL,
  `description` varchar(2000) COLLATE latin1_general_ci DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `requester_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_issue` */

insert  into `tbl_issue`(`id`,`name`,`description`,`project_id`,`type_id`,`status_id`,`owner_id`,`requester_id`,`create_time`,`create_user_id`,`update_time`,`update_user_id`) values (1,'test issue 1','test issue 1 content',1,0,0,1,1,NULL,NULL,NULL,NULL);

/*Table structure for table `tbl_project` */

DROP TABLE IF EXISTS `tbl_project`;

CREATE TABLE `tbl_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE latin1_general_ci DEFAULT NULL,
  `description` text COLLATE latin1_general_ci,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_project` */

insert  into `tbl_project`(`id`,`name`,`description`,`create_time`,`create_user_id`,`update_time`,`update_user_id`) values (1,'neal01','test 1','2013-12-18 08:00:00',1,'2013-12-18 08:00:00',1);

/*Table structure for table `tbl_project_user_assignment` */

DROP TABLE IF EXISTS `tbl_project_user_assignment`;

CREATE TABLE `tbl_project_user_assignment` (
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`project_id`,`user_id`),
  KEY `FK_user_project` (`user_id`),
  CONSTRAINT `FK_user_project` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_project_user_assignment` */

insert  into `tbl_project_user_assignment`(`project_id`,`user_id`,`create_time`,`create_user_id`,`update_time`,`update_user_id`) values (1,1,NULL,NULL,NULL,NULL),(1,2,NULL,NULL,NULL,NULL);

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(256) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(256) COLLATE latin1_general_ci DEFAULT NULL,
  `password` varchar(256) COLLATE latin1_general_ci DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id`,`email`,`username`,`password`,`last_login_time`,`create_time`,`create_user_id`,`update_time`,`update_user_id`) values (1,'test1@notanaddress.com','Test_User_One','5a105e8b9d40e1329780d62ea2265d8a',NULL,NULL,NULL,NULL,NULL),(2,'test2@notanaddress.com','Test_User_Two','ad0234829205b9033196ba818f7a872b',NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
