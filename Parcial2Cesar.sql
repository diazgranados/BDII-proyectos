/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.20-MariaDB : Database - parcia1bdcesar
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`parcia1bdcesar` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `parcia1bdcesar`;

/*Table structure for table `academicperiodgroups` */

DROP TABLE IF EXISTS `academicperiodgroups`;

CREATE TABLE `academicperiodgroups` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `journeyId` int(11) DEFAULT NULL,
  `quota` bigint(11) DEFAULT NULL,
  `degreeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groupId` (`groupId`),
  KEY `journeyId` (`journeyId`),
  KEY `degreeId` (`degreeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `academicperiodgroups` */

insert  into `academicperiodgroups`(`id`,`groupId`,`journeyId`,`quota`,`degreeId`) values 
(1,10,16,30,11),
(2,10,16,30,11),
(3,10,16,30,11),
(4,10,16,30,11),
(5,10,16,30,12),
(6,10,16,30,12),
(7,10,16,30,12),
(8,10,16,40,12),
(9,10,16,40,13),
(10,10,16,35,13);

/*Table structure for table `degrees` */

DROP TABLE IF EXISTS `degrees`;

CREATE TABLE `degrees` (
  `id` int(11) NOT NULL,
  `levelId` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `degrees` */

insert  into `degrees`(`id`,`levelId`,`createdAt`,`updatedAt`,`name`,`abbreviation`) values 
(23,11,'2021-11-19 20:14:43',NULL,'Kínder',NULL),
(24,11,'2021-11-19 20:15:05',NULL,'Preparatoria\r\n',NULL),
(25,11,'2021-11-19 20:15:15',NULL,'Primero Primaria\r\n',NULL),
(26,11,'2021-11-19 20:15:21',NULL,'Segundo Primaria\r\n',NULL),
(27,12,'2021-11-19 20:15:46',NULL,'Tercero Primaria\r\n',NULL),
(28,12,'2021-11-19 20:15:52',NULL,'Cuarto Primaria\r\n',NULL),
(29,12,'2021-11-19 20:15:58',NULL,'Quinto Primaria\r\n',NULL),
(30,12,'2021-11-19 20:16:04',NULL,'Sexto Primaria\r\n',NULL),
(31,13,'2021-11-19 20:16:48',NULL,'Primero Básico\r\n',NULL),
(32,13,'2021-11-19 20:16:55',NULL,'Segundo Básico\r\n',NULL);

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

insert  into `groups`(`id`,`createdAt`,`updatedAt`,`name`,`abbreviation`) values 
(10,'2021-11-19 19:44:22',NULL,'Sección A','A');

/*Table structure for table `journeys` */

DROP TABLE IF EXISTS `journeys`;

CREATE TABLE `journeys` (
  `id` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `journeys` */

insert  into `journeys`(`id`,`createdAt`,`updatedAt`,`name`,`abbreviation`) values 
(16,'2021-11-19 19:42:18',NULL,'Matutina','Mat.');

/*Table structure for table `levels` */

DROP TABLE IF EXISTS `levels`;

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `levels` */

insert  into `levels`(`id`,`createdAt`,`updatedAt`,`name`,`abbreviation`) values 
(11,'2021-11-19 20:13:48',NULL,'Preprimaria y Primaria Baja',NULL),
(12,'2021-11-19 20:15:35',NULL,'Primaria Alta',NULL),
(13,'2021-11-19 20:16:39',NULL,'Secundaria',NULL);

/*Table structure for table `matriculates` */

DROP TABLE IF EXISTS `matriculates`;

CREATE TABLE `matriculates` (
  `id` bigint(11) NOT NULL,
  `academicPeriodGroupId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `matriculates` */

insert  into `matriculates`(`id`,`academicPeriodGroupId`) values 
(0,62),
(1,62),
(2,63),
(3,64),
(4,65),
(5,66),
(6,67),
(7,68),
(8,69),
(9,70),
(10,71);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
