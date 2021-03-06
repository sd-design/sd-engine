# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.34)
# Database: codein
# Generation Time: 2015-02-25 13:50:06 +0000
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `autor_id` varchar(255) NOT NULL DEFAULT '',
  `time_made` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;

INSERT INTO `blog` (`id`, `title`, `slug`, `body`, `autor_id`, `time_made`)
VALUES
	(1,'record1','','Lorem ipsum dolor ... adipiscing elit','','0000-00-00 00:00:00'),
	(2,'record2','','Sed ut perspiciat ...  sit voluptatem','','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `body` text NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;

INSERT INTO `comments` (`id`, `record_id`, `author`, `body`, `comment_time`)
VALUES
	(1,1,'Ayavryk','Wow!','0000-00-00 00:00:00'),
	(2,1,'Ivan Tyngylchav','No pasaran!','0000-00-00 00:00:00'),
	(3,2,'Semion Khyngulaev','Ooooooo! Cool!','0000-00-00 00:00:00'),
	(4,2,'Oolzhiin Olya','It\'s realy nice!','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table i_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `i_sessions`;

CREATE TABLE `i_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `i_sessions` WRITE;
/*!40000 ALTER TABLE `i_sessions` DISABLE KEYS */;

INSERT INTO `i_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`)
VALUES
	('01f9ca76a9527853dcb56f1ae1e72b11','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:35.0) Gecko/20100101 Firefox/35.0',1424091822,''),
	('03f26132a330f8356ed8ee4589734ec8','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:35.0) Gecko/20100101 Firefox/35.0',1424106213,'a:2:{s:9:\"user_data\";s:0:\"\";s:9:\"session_i\";s:32:\"5cb5999d00753e84a313598093706769\";}'),
	('1a14f57d4da2f29a2e760453c986c2af','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:35.0) Gecko/20100101 Firefox/35.0',1424104560,''),
	('3f3c4a79311f430cb14472eb74e530bb','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:35.0) Gecko/20100101 Firefox/35.0',1424104500,''),
	('5ab8d14c9d78369bedd2c0cb48ff605f','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36',1424104580,'a:2:{s:9:\"user_data\";s:0:\"\";s:9:\"session_i\";s:32:\"4c3997f31baaff0f4dfced7bbea3756a\";}'),
	('8b115d242317b9dd61fb32432a34859f','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:35.0) Gecko/20100101 Firefox/35.0',1424104478,''),
	('9240c1fd62dc5d9b948a1a0f62212601','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:35.0) Gecko/20100101 Firefox/35.0',1424104539,''),
	('968037605e1d6ae71ff1cd6f20948a31','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36',1424872060,'a:6:{s:9:\"user_data\";s:0:\"\";s:9:\"session_i\";s:32:\"0b087581b03889df67e367de97d1e929\";s:5:\"login\";s:5:\"admin\";s:9:\"logged_in\";b:1;s:3:\"key\";s:44:\"NGY1ZjcwYzkwZmQxZDNjNjAxOGYzM2ZjMTA0MWY2Mjk=\";s:2:\"ip\";s:9:\"127.0.0.1\";}'),
	('e9b32c5194d7d7dfc99f65814386fa4a','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:35.0) Gecko/20100101 Firefox/35.0',1424261662,'a:2:{s:9:\"user_data\";s:0:\"\";s:9:\"session_i\";s:32:\"d62870f0240ed1542efbf67cac3bcc0a\";}');

/*!40000 ALTER TABLE `i_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `item_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;

INSERT INTO `items` (`ID`, `title`, `text`, `item_time`)
VALUES
	(1,'тестовый элемент','Элемент — часть чего-нибудь. Одна из возможных этимологий этого слова — по названию ряда согласных латинских букв L, M, N (el—em—en).','2014-07-23 03:02:08');

/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sd_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sd_category`;

CREATE TABLE `sd_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL DEFAULT '',
  `category_descript` varchar(255) NOT NULL DEFAULT '',
  `category_url` varchar(255) NOT NULL DEFAULT '',
  `owner` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sd_category` WRITE;
/*!40000 ALTER TABLE `sd_category` DISABLE KEYS */;

INSERT INTO `sd_category` (`id`, `category_name`, `category_descript`, `category_url`, `owner`)
VALUES
	(1,'Blogg','Технический блог','blog','1'),
	(2,'BLOG 2','Новости провинциальной жизни','news','1'),
	(3,'Мой личный блог','мой личный блог 1','moy_personal_blog',''),
	(4,'Технические вопросы','Всевозможные технические вопросы','technical_questions','5');

/*!40000 ALTER TABLE `sd_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sd_countdown
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sd_countdown`;

CREATE TABLE `sd_countdown` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `descript` varchar(255) NOT NULL DEFAULT '',
  `day` varchar(11) NOT NULL DEFAULT '',
  `month` varchar(11) NOT NULL DEFAULT '',
  `year` varchar(11) NOT NULL DEFAULT '',
  `hour` varchar(11) NOT NULL DEFAULT '',
  `minute` int(11) NOT NULL,
  `timer` varchar(25) NOT NULL,
  `url` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sd_countdown` WRITE;
/*!40000 ALTER TABLE `sd_countdown` DISABLE KEYS */;

INSERT INTO `sd_countdown` (`id`, `title`, `descript`, `day`, `month`, `year`, `hour`, `minute`, `timer`, `url`)
VALUES
	(1,'Вебинар ','Вебинар \"Adobe Premiere\" - Урок 1','14','2','2015','20',0,'1423861220','vebinar1');

/*!40000 ALTER TABLE `sd_countdown` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sd_post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sd_post`;

CREATE TABLE `sd_post` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` varchar(64) NOT NULL,
  `post_name` varchar(255) NOT NULL DEFAULT '',
  `post_url` varchar(64) NOT NULL DEFAULT '',
  `post_anons` varchar(255) NOT NULL DEFAULT '',
  `post_text` longtext NOT NULL,
  `post_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_autor` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sd_post` WRITE;
/*!40000 ALTER TABLE `sd_post` DISABLE KEYS */;

INSERT INTO `sd_post` (`id`, `category_id`, `post_name`, `post_url`, `post_anons`, `post_text`, `post_time`, `post_autor`)
VALUES
	(1,'1','Моя первая запись','new_post','Идейные соображения высшего порядка, а также консультация с широким активом позволяет выполнять важные задания по разработке систем массового участия. Повседневная практика показывает, что начало повседневной работы по формированию позиции в значительной ','Равным образом начало повседневной работы по формированию позиции позволяет оценить значение направлений прогрессивного развития. Товарищи! реализация намеченных плановых заданий обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития. Таким образом начало повседневной работы по формированию позиции влечет за собой процесс внедрения и модернизации систем массового участия. С другой стороны консультация с широким активом играет важную роль в формировании систем массового участия. Повседневная практика показывает, что реализация намеченных плановых заданий в значительной степени обуславливает создание соответствующий условий активизации. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности требуют определения и уточнения существенных финансовых и административных условий.\n\nИдейные соображения высшего порядка, а также консультация с широким активом позволяет выполнять важные задания по разработке систем массового участия. Повседневная практика показывает, что начало повседневной работы по формированию позиции в значительной степени обуславливает создание существенных финансовых и административных условий. Таким образом укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития.\n\nЗначимость этих проблем настолько очевидна, что укрепление и развитие структуры играет важную роль в формировании соответствующий условий активизации. Таким образом новая модель организационной деятельности требуют определения и уточнения дальнейших направлений развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности позволяет выполнять важные задания по разработке систем массового участия. ','2014-12-19 17:05:15','Alex Naghtigall'),
	(2,'2','Моя вторая запись','post2','Повседневная практика показывает, что начало повседневной работы по формированию позиции в значительной ','Значимость этих проблем настолько очевидна, что укрепление и развитие структуры играет важную роль в формировании соответствующий условий активизации. Таким образом новая модель организационной деятельности требуют определения и уточнения дальнейших направлений развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности позволяет выполнять важные задания по разработке систем массового участия. \n\nРавным образом начало повседневной работы по формированию позиции позволяет оценить значение направлений прогрессивного развития. Товарищи! реализация намеченных плановых заданий обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития. Таким образом начало повседневной работы по формированию позиции влечет за собой процесс внедрения и модернизации систем массового участия. С другой стороны консультация с широким активом играет важную роль в формировании систем массового участия. Повседневная практика показывает, что реализация намеченных плановых заданий в значительной степени обуславливает создание соответствующий условий активизации. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности требуют определения и уточнения существенных финансовых и административных условий.\n\nИдейные соображения высшего порядка, а также консультация с широким активом позволяет выполнять важные задания по разработке систем массового участия. Повседневная практика показывает, что начало повседневной работы по формированию позиции в значительной степени обуславливает создание существенных финансовых и административных условий. Таким образом укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития.\n','2014-12-19 17:05:15','Alex Naghtigall');

/*!40000 ALTER TABLE `sd_post` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sd_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sd_session`;

CREATE TABLE `sd_session` (
  `login` varchar(60) DEFAULT NULL,
  `session_status` varchar(60) DEFAULT NULL,
  `session_i` varchar(64) DEFAULT NULL,
  `session_key` varchar(64) DEFAULT NULL,
  `time_reg` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(64) DEFAULT 'NOT NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sd_session` WRITE;
/*!40000 ALTER TABLE `sd_session` DISABLE KEYS */;

INSERT INTO `sd_session` (`login`, `session_status`, `session_i`, `session_key`, `time_reg`, `ip`)
VALUES
	('public','1','d496490376c4412803b1dc95f2ec3db5','N2MzY2RlNWI0NjljNjJhNzdjNTg0NDFmNDgxZjNhYjk=','2015-01-12 12:33:27','127.0.0.1'),
	('public','1','bb40aa6422dc37c7d82b8977c5e16c98','NmMwOGMyNmQ4YWEzZDBjNGQ2NjdkZWM0NWYzMGQ2NjE=','2015-01-22 17:01:40','127.0.0.1'),
	('admin','1','0ff6dcc01d132d409c35ba5b0fac098f','NGY1ZjcwYzkwZmQxZDNjNjAxOGYzM2ZjMTA0MWY2Mjk=','2015-02-25 13:16:34','127.0.0.1');

/*!40000 ALTER TABLE `sd_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(60) NOT NULL DEFAULT '',
  `firstname` varchar(64) NOT NULL DEFAULT '',
  `lastname` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `pwd` varchar(100) NOT NULL DEFAULT '',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `display_name` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `user_role` varchar(64) NOT NULL DEFAULT '',
  `q_posts` varchar(64) NOT NULL DEFAULT '',
  `recovery_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`ID`, `login`, `firstname`, `lastname`, `email`, `pwd`, `reg_date`, `display_name`, `user_status`, `user_role`, `q_posts`, `recovery_key`)
VALUES
	(1,'admin','Alex','Naghtigall','naghtigall@gmail.com','YTRlZmRmNmEyNzJlYmUwMjJjMzA2ZGRjMWQ0N2JlNzI=','2014-07-22 00:16:55','naghtigall',0,'administrator','',''),
	(2,'alex','Alex','Solovej','chessman@yandex.ru','YTRlZmRmNmEyNzJlYmUwMjJjMzA2ZGRjMWQ0N2JlNzI=','2014-07-23 00:19:55','Саша Соловей',0,'user','',''),
	(5,'svetik','Светик','Соловей','cvetoprof@mail.ru','YTRlZmRmNmEyNzJlYmUwMjJjMzA2ZGRjMWQ0N2JlNzI=','2014-12-29 12:18:15','Света Соловей',0,'user','',''),
	(6,'public','Федя','Соловей','solovej777@rambler.ru','YTRlZmRmNmEyNzJlYmUwMjJjMzA2ZGRjMWQ0N2JlNzI=','2014-12-30 18:03:37','Public Administrator',0,'administrator','','');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
