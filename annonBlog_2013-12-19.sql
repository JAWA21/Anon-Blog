# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.29)
# Database: annonBlog
# Generation Time: 2013-12-19 05:03:41 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table blog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post` text,
  `datet` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;

INSERT INTO `blog` (`id`, `post`, `datet`)
VALUES
	(19,'Duck, duck, GOOSE!','2013-12-14 01:12:11'),
	(21,'circumstances have taught me that a man\'s ethics are the only possessions he will take beyond the grave. i did the same thing to gandhi, he didn\'t eat for three weeks. i now issue a new commandment: thou shalt do the dance. i did the same thing to gandhi, he didn\'t eat for three weeks. mister wayne, if you don\'t want to tell me exactly what you\'re doing, when i\'m asked, i don\'t have to lie. but don\'t think of me as an idiot. i did the same thing to gandhi, he didn\'t eat for three weeks. rehabilitated? well, now let me see. you know, i don\'t have any idea what that means. circumstances have taught me that a man\'s ethics are the only possessions he will take beyond the grave. cities fall but they are rebuilt. heroes die but they are remembered. rehabilitated? well, now let me see. you know, i don\'t have any idea what that means. no, this is mount everest. you should flip on the discovery channel from time to time. but i guess you can\'t now, being dead and all. that tall drink of water with the silver spoon up his ass. -Morgan Freeman ipsum','2013-12-14 01:15:19'),
	(23,'Ps4 rocks!','2013-12-14 05:31:16'),
	(34,'testing conditionals',NULL),
	(35,'This is some text from coldfusion',NULL),
	(36,'This is some text from coldfusion',NULL),
	(37,'Blog post entry from Cf',NULL),
	(50,'updated blog post from cf',NULL);

/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
