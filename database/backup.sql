/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 10.4.27-MariaDB : Database - images
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`images` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `images`;

/*Table structure for table `uploadimage` */

DROP TABLE IF EXISTS `uploadimage`;

CREATE TABLE `uploadimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagename` varchar(255) NOT NULL,
  `imagepath` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `uploadimage` */

insert  into `uploadimage`(`id`,`imagename`,`imagepath`) values 
(4,'1.jpg','images/941674047_1.jpg'),
(5,'2.jpg','images/215786309_2.jpg'),
(6,'3.jpg','images/954919369_3.jpg'),
(7,'4.jpg','images/1872721777_4.jpg'),
(8,'2.jpg','images/52547895_2.jpg'),
(9,'3.jpg','images/1693148733_3.jpg');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `imagename` varchar(255) NOT NULL,
  `imagepath` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `about` text NOT NULL,
  `country` varchar(30) NOT NULL,
  `cnic` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

insert  into `users`(`user_id`,`firstname`,`middlename`,`lastname`,`imagename`,`imagepath`,`email`,`phone`,`gender`,`about`,`country`,`cnic`) values 
(69,'jack','nerds','paul','5.jpg','images/1680448531_5.jpg','jaack@gmail.com','87564477777','male','jack is hard working','PKISTAN','41504-0599919-5'),
(70,'jimmy','gill','khan','6.jpg','images/1680448606_6.jpg','jgk@gmail.com','0348487030','male','jimy is a singer ','India','41504-0299650-2'),
(71,'peter','kevin','peterson','7.jpg','images/1680448703_7.jpg','pkp@gmail.com','030567899','male','iam a cricketer','PKISTAN','4150405314851'),
(72,'ali','ahmed','AGHA','8.jpg','images/1680448761_8.jpg','AAA@gmail.com','0312046575','male','iam a phoyographer','CHINA','4510221544311'),
(73,'Arsalan','Nisar','Nisar','117103.jpg','images/1680809545_117103.jpg','malanaarsal21@gmail.com','03120301309','male','atslan nisar ahmed malano','PKISTAN','41504-0549919-5');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
