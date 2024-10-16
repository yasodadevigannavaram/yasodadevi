/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 8.0.33 : Database - ecommerse
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ecommerse` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ecommerse`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add category',7,'add_category'),
(26,'Can change category',7,'change_category'),
(27,'Can delete category',7,'delete_category'),
(28,'Can view category',7,'view_category'),
(29,'Can add contact',8,'add_contact'),
(30,'Can change contact',8,'change_contact'),
(31,'Can delete contact',8,'delete_contact'),
(32,'Can view contact',8,'view_contact'),
(33,'Can add customer',9,'add_customer'),
(34,'Can change customer',9,'change_customer'),
(35,'Can delete customer',9,'delete_customer'),
(36,'Can view customer',9,'view_customer'),
(37,'Can add notification',10,'add_notification'),
(38,'Can change notification',10,'change_notification'),
(39,'Can delete notification',10,'delete_notification'),
(40,'Can view notification',10,'view_notification'),
(41,'Can add orders',11,'add_orders'),
(42,'Can change orders',11,'change_orders'),
(43,'Can delete orders',11,'delete_orders'),
(44,'Can view orders',11,'view_orders'),
(45,'Can add product',12,'add_product'),
(46,'Can change product',12,'change_product'),
(47,'Can delete product',12,'delete_product'),
(48,'Can view product',12,'view_product'),
(49,'Can add vendor',13,'add_vendor'),
(50,'Can change vendor',13,'change_vendor'),
(51,'Can delete vendor',13,'delete_vendor'),
(52,'Can view vendor',13,'view_vendor'),
(53,'Can add order_ products',14,'add_order_products'),
(54,'Can change order_ products',14,'change_order_products'),
(55,'Can delete order_ products',14,'delete_order_products'),
(56,'Can view order_ products',14,'view_order_products'),
(57,'Can add cart',15,'add_cart'),
(58,'Can change cart',15,'change_cart'),
(59,'Can delete cart',15,'delete_cart'),
(60,'Can view cart',15,'view_cart'),
(61,'Can add admin',16,'add_admin'),
(62,'Can change admin',16,'change_admin'),
(63,'Can delete admin',16,'delete_admin'),
(64,'Can view admin',16,'view_admin'),
(65,'Can add my_ preference',17,'add_my_preference'),
(66,'Can change my_ preference',17,'change_my_preference'),
(67,'Can delete my_ preference',17,'delete_my_preference'),
(68,'Can view my_ preference',17,'view_my_preference'),
(69,'Can add review',18,'add_review'),
(70,'Can change review',18,'change_review'),
(71,'Can delete review',18,'delete_review'),
(72,'Can view review',18,'view_review'),
(73,'Can add friend_ request',19,'add_friend_request'),
(74,'Can change friend_ request',19,'change_friend_request'),
(75,'Can delete friend_ request',19,'delete_friend_request'),
(76,'Can view friend_ request',19,'view_friend_request'),
(77,'Can add friends_ requests',19,'add_friends_requests'),
(78,'Can change friends_ requests',19,'change_friends_requests'),
(79,'Can delete friends_ requests',19,'delete_friends_requests'),
(80,'Can view friends_ requests',19,'view_friends_requests'),
(81,'Can add post',20,'add_post'),
(82,'Can change post',20,'change_post'),
(83,'Can delete post',20,'delete_post'),
(84,'Can view post',20,'view_post'),
(85,'Can add post_ like',21,'add_post_like'),
(86,'Can change post_ like',21,'change_post_like'),
(87,'Can delete post_ like',21,'delete_post_like'),
(88,'Can view post_ like',21,'view_post_like'),
(89,'Can add likes',22,'add_likes'),
(90,'Can change likes',22,'change_likes'),
(91,'Can delete likes',22,'delete_likes'),
(92,'Can view likes',22,'view_likes'),
(93,'Can add comment',23,'add_comment'),
(94,'Can change comment',23,'change_comment'),
(95,'Can delete comment',23,'delete_comment'),
(96,'Can view comment',23,'view_comment');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `quantity` bigint NOT NULL,
  `cost` bigint NOT NULL,
  `discount` bigint NOT NULL,
  `total` bigint NOT NULL,
  `customer_email` varchar(254) NOT NULL,
  `vendor_email` varchar(254) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Cart_product_id_7cabc995_fk_pythonfratelloapp_product_id` (`product_id`),
  CONSTRAINT `Cart_product_id_7cabc995_fk_pythonfratelloapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `pythonfratelloapp_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `cart` */

insert  into `cart`(`id`,`title`,`quantity`,`cost`,`discount`,`total`,`customer_email`,`vendor_email`,`product_id`) values 
(30,'B',2,20000,2000,36000,'karthikdheeravath718@gmail.com','vendor123@gmail.com',11);

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_email` varchar(254) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `post_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Comment_post_id_id_aaf90877_fk_Post_id` (`post_id_id`),
  CONSTRAINT `Comment_post_id_id_aaf90877_fk_Post_id` FOREIGN KEY (`post_id_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `comment` */

insert  into `comment`(`id`,`customer_email`,`comment`,`date_time`,`post_id_id`) values 
(2,'Lokeshdheeravath718@gmail.com','Good','2024-09-10 06:21:41.668898',3),
(3,'Lokeshdheeravath718@gmail.com','Good','2024-09-10 06:35:38.299740',1),
(4,'Lokeshdheeravath718@gmail.com','Good','2024-09-10 06:37:23.696928',1),
(5,'Lokeshdheeravath718@gmail.com','nice','2024-09-10 06:50:07.221987',3),
(6,'Chiadheeravath718@gmail.com','super','2024-09-10 12:12:08.551334',16),
(7,'vinodh@123gmail.com','Good','2024-09-11 11:38:07.172097',16),
(8,'karthikdheeravath718@gmail.com','Good','2024-09-12 09:05:17.783930',19);

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(40) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `contact` */

insert  into `contact`(`id`,`name`,`email`,`subject`,`message`) values 
(1,'Karthik Dheeravath','karthikdheeravath718@gmail.com','science','hi'),
(2,'Karthik Dheeravath','karthikdheeravath718@gmail.com','science','hi'),
(3,'Karthik Dheeravath','karthikdheeravath718@gmail.com','science','hi'),
(4,'Karthik Dheeravath','karthikdheeravath718@gmail.com','science','hi'),
(5,'Karthik Dheeravath','karthikdheeravath718@gmail.com','science','hi'),
(6,'Karthik Dheeravath','karthikdheeravath718@gmail.com','science','hi'),
(7,'Karthik Dheeravath','karthikdheeravath718@gmail.com','science','hi'),
(8,'Karthik Dheeravath','karthikdheeravath718@gmail.com','science','hi'),
(9,'Karthik Dheeravath','karthikdheeravath718@gmail.com','science','hi'),
(10,'Karthik Dheeravath','karthikdheeravath718@gmail.com','science','hi'),
(11,'Karthik Dheeravath','karthikdheeravath718@gmail.com','science','about project'),
(12,'karthik','karthikdheeravath718@gmail.com','science','about the project');

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(16,'pythonfratelloapp','admin'),
(15,'pythonfratelloapp','cart'),
(7,'pythonfratelloapp','category'),
(23,'pythonfratelloapp','comment'),
(8,'pythonfratelloapp','contact'),
(9,'pythonfratelloapp','customer'),
(19,'pythonfratelloapp','friends_requests'),
(22,'pythonfratelloapp','likes'),
(17,'pythonfratelloapp','my_preference'),
(10,'pythonfratelloapp','notification'),
(14,'pythonfratelloapp','order_products'),
(11,'pythonfratelloapp','orders'),
(20,'pythonfratelloapp','post'),
(21,'pythonfratelloapp','post_like'),
(12,'pythonfratelloapp','product'),
(18,'pythonfratelloapp','review'),
(13,'pythonfratelloapp','vendor'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2024-08-27 11:20:40.353133'),
(2,'auth','0001_initial','2024-08-27 11:20:40.845806'),
(3,'admin','0001_initial','2024-08-27 11:20:41.002603'),
(4,'admin','0002_logentry_remove_auto_add','2024-08-27 11:20:41.012975'),
(5,'admin','0003_logentry_add_action_flag_choices','2024-08-27 11:20:41.016702'),
(6,'contenttypes','0002_remove_content_type_name','2024-08-27 11:20:41.101516'),
(7,'auth','0002_alter_permission_name_max_length','2024-08-27 11:20:41.165786'),
(8,'auth','0003_alter_user_email_max_length','2024-08-27 11:20:41.190487'),
(9,'auth','0004_alter_user_username_opts','2024-08-27 11:20:41.195005'),
(10,'auth','0005_alter_user_last_login_null','2024-08-27 11:20:41.263098'),
(11,'auth','0006_require_contenttypes_0002','2024-08-27 11:20:41.267367'),
(12,'auth','0007_alter_validators_add_error_messages','2024-08-27 11:20:41.271396'),
(13,'auth','0008_alter_user_username_max_length','2024-08-27 11:20:41.334686'),
(14,'auth','0009_alter_user_last_name_max_length','2024-08-27 11:20:41.387997'),
(15,'auth','0010_alter_group_name_max_length','2024-08-27 11:20:41.413409'),
(16,'auth','0011_update_proxy_permissions','2024-08-27 11:20:41.416829'),
(17,'auth','0012_alter_user_first_name_max_length','2024-08-27 11:20:41.493099'),
(18,'pythonfratelloapp','0001_initial','2024-08-27 11:20:41.813622'),
(19,'pythonfratelloapp','0002_alter_customer_status','2024-08-27 11:20:41.815696'),
(20,'pythonfratelloapp','0003_admin','2024-08-27 11:20:41.828926'),
(21,'pythonfratelloapp','0004_remove_product_vendor','2024-08-27 11:20:41.894169'),
(22,'pythonfratelloapp','0005_alter_customer_status','2024-08-27 11:20:41.899317'),
(23,'sessions','0001_initial','2024-08-27 11:20:41.924420'),
(24,'pythonfratelloapp','0006_rename_model_product_model_name','2024-08-31 09:41:57.736243'),
(25,'pythonfratelloapp','0007_rename_model_name_product_model','2024-08-31 09:42:28.426400'),
(26,'pythonfratelloapp','0008_my_preference','2024-09-02 07:31:41.866273'),
(27,'pythonfratelloapp','0009_rename_customer_mail_orders_customer_email_and_more','2024-09-03 09:03:33.691675'),
(28,'pythonfratelloapp','0010_rename_customer_mail_order_products_customer_email_and_more','2024-09-03 09:25:00.570827'),
(29,'pythonfratelloapp','0011_review','2024-09-04 07:21:56.343053'),
(30,'pythonfratelloapp','0012_alter_review_orders','2024-09-04 12:36:58.077152'),
(31,'pythonfratelloapp','0013_friend_request','2024-09-06 05:28:49.391173'),
(32,'pythonfratelloapp','0014_rename_friend_request_friends_requests_and_more','2024-09-06 10:47:59.631937'),
(33,'pythonfratelloapp','0015_alter_friends_requests_table','2024-09-06 10:55:53.336393'),
(34,'pythonfratelloapp','0016_post','2024-09-06 12:29:33.835167'),
(35,'pythonfratelloapp','0017_post_posts_for','2024-09-06 12:51:35.929226'),
(36,'pythonfratelloapp','0018_post_like','2024-09-09 06:18:44.807089'),
(37,'pythonfratelloapp','0019_likes_delete_post_like','2024-09-09 10:50:35.758572'),
(38,'pythonfratelloapp','0020_comment','2024-09-10 05:31:13.287484'),
(39,'pythonfratelloapp','0021_rename_post_id_comment_post_id','2024-09-10 06:14:14.917664'),
(40,'pythonfratelloapp','0022_alter_comment_post_id','2024-09-10 06:21:22.589724'),
(41,'pythonfratelloapp','0023_remove_customer_medical','2024-09-10 12:47:20.079978'),
(42,'pythonfratelloapp','0024_remove_vendor_medical','2024-09-10 12:48:35.258392');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('ht9ukwd7dmor2zcqyqwyurcmhz1hyajq','eyJlbWFpbCI6InZlbmRvcjEyM0BnbWFpbC5jb20ifQ:1soy2x:QNTcgRm17c1vnQCwl9FipRKIuME24ewiKzGt-AZkitE','2024-09-27 04:36:39.280566');

/*Table structure for table `friends_requests` */

DROP TABLE IF EXISTS `friends_requests`;

CREATE TABLE `friends_requests` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `from_email` varchar(254) NOT NULL,
  `to_email` varchar(254) NOT NULL,
  `status` varchar(100) NOT NULL,
  `customers_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Friend_Request_from_email_to_email_1251d7a1_uniq` (`from_email`,`to_email`),
  KEY `Friend_Request_customers_id_8c4d2056_fk_pythonfra` (`customers_id`),
  CONSTRAINT `Friend_Request_customers_id_8c4d2056_fk_pythonfra` FOREIGN KEY (`customers_id`) REFERENCES `pythonfratelloapp_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `friends_requests` */

insert  into `friends_requests`(`id`,`from_email`,`to_email`,`status`,`customers_id`) values 
(1,'karthikdheeravath718@gmail.com','Chiadheeravath718@gmail.com','Accepted',3),
(2,'karthikdheeravath718@gmail.com','Lokeshdheeravath718@gmail.com','Accepted',2),
(3,'Chiadheeravath718@gmail.com','Lokeshdheeravath718@gmail.com','Accepted',2),
(4,'karthikdheeravath718@gmail.com','karthikdheeravath818@gmail.com','Accepted',4),
(5,'Chiadheeravath718@gmail.com','karthikdheeravath818@gmail.com','Pending',4),
(6,'vinodh@123gmail.com','karthikdheeravath718@gmail.com','Accepted',1),
(7,'vinodh@123gmail.com','Lokeshdheeravath718@gmail.com','Pending',2);

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `file` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `posts_for` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `post` */

insert  into `post`(`id`,`email`,`title`,`description`,`date_time`,`file`,`status`,`posts_for`) values 
(1,'karthikdheeravath718@gmail.com','e','Entertainment','2024-09-09 09:05:00.003677','a4_cTX4oEC.jpg','Accepted','friends'),
(2,'karthikdheeravath718@gmail.com','hi','Entertainment','2024-09-09 09:05:03.710270','balayya.jpg','Rejected','friends'),
(3,'karthikdheeravath718@gmail.com','hi','Entertainment','2024-09-10 04:19:07.846897','balayya_6Ora3qi.jpg','Accepted','friends'),
(4,'karthikdheeravath718@gmail.com','hi','Entertainment','2024-09-11 11:07:08.821315','balayya_r6kvsOg.jpg','Accepted','friends'),
(5,'karthikdheeravath718@gmail.com','hi','Entertainment','2024-09-09 05:02:10.762009','balayya_bXpsoBM.jpg','Pending','friends'),
(6,'admin@123gmail.com','Karthik','Entertainment','2024-09-12 09:49:23.233889','IMG_20240211_193754-02_BWBYIcX.jpeg','Accepted','all'),
(7,'admin@123gmail.com','Karthik','Entertainment','2024-09-12 09:49:30.658799','karthik_IdokfHN.jpg','Rejected','all'),
(8,'Chiadheeravath718@gmail.com','d','Entertainment','2024-09-11 11:07:13.479289','karthik_Uh9bGmg.jpg','Rejected','all'),
(9,'Chiadheeravath718@gmail.com','c','Entertainment','2024-09-09 12:31:48.705945','karthik_mHklRJB.jpg','Pending','all'),
(10,'karthikdheeravath718@gmail.com','d','watching movie','2024-09-09 12:51:46.911443','a7.jpg','Pending','all'),
(11,'Lokeshdheeravath718@gmail.com','Lokesh','Entertainment','2024-09-10 05:00:49.733817','a9_FXduDHj.jpg','Pending','all'),
(12,'Lokeshdheeravath718@gmail.com','Friends','Entertainment','2024-09-10 05:02:05.016106','a1.jpg','Pending','friends'),
(13,'Chiadheeravath718@gmail.com','e','Entertainment','2024-09-10 05:07:35.377898','balayya_tImpgJM.jpg','Pending','friends'),
(14,'Lokeshdheeravath718@gmail.com','ALL','Entertainment','2024-09-10 08:38:40.548209','a7_HhC4u8s.jpg','Pending','all'),
(15,'Lokeshdheeravath718@gmail.com','Lokesh','watching movie','2024-09-10 12:02:24.580675','car8.jpg','Pending','all'),
(16,'Lokeshdheeravath718@gmail.com','Lokesh','Entertainment','2024-09-10 12:07:30.668713','a9_O9X04AN.jpg','Accepted','all'),
(17,'Chiadheeravath718@gmail.com','POST','Entertainment','2024-09-11 04:25:37.000509','babu.avif','Pending','all'),
(18,'vinodh@123gmail.com','post','Entertainment','2024-09-11 11:54:42.668887','b1.jpg','Accepted','friends'),
(19,'vinodh@123gmail.com','Post','Entertainment','2024-09-11 11:54:53.646695','india-flag.avif','Accepted','all'),
(20,'karthikdheeravath718@gmail.com','All','watching movie','2024-09-11 12:02:27.415465','shiva.webp','Accepted','all'),
(21,'karthikdheeravath718@gmail.com','g','naik','2024-09-12 05:01:48.043282','a11.jpeg','Pending','friends');

/*Table structure for table `pythonfratelloapp_admin` */

DROP TABLE IF EXISTS `pythonfratelloapp_admin`;

CREATE TABLE `pythonfratelloapp_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pythonfratelloapp_admin` */

insert  into `pythonfratelloapp_admin`(`id`,`email`,`password`) values 
(1,'admin@123gmail.com','admin');

/*Table structure for table `pythonfratelloapp_category` */

DROP TABLE IF EXISTS `pythonfratelloapp_category`;

CREATE TABLE `pythonfratelloapp_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pythonfratelloapp_category` */

insert  into `pythonfratelloapp_category`(`id`,`title`) values 
(1,'A'),
(3,'B'),
(4,'C');

/*Table structure for table `pythonfratelloapp_customer` */

DROP TABLE IF EXISTS `pythonfratelloapp_customer`;

CREATE TABLE `pythonfratelloapp_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mandal` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(40) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(40) NOT NULL,
  `image` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pythonfratelloapp_customer` */

insert  into `pythonfratelloapp_customer`(`id`,`name`,`email`,`mandal`,`district`,`state`,`age`,`gender`,`image`,`password`,`status`) values 
(1,'Karthik','karthikdheeravath718@gmail.com','Damercherla','Nalgonda','Telangana',33,'Male','karthik.jpg','customer','Accepted'),
(2,'Lokesh','Lokeshdheeravath718@gmail.com','Damercherla','Nalgonda','Telangana',22,'Male','lokesh.jpg','1','Accepted'),
(3,'Chia','Chiadheeravath718@gmail.com','Damercherla','Nalgonda','Telangana',23,'Male','S27.jpg','customer','Accepted'),
(4,'Karthik Dheeravath','karthikdheeravath818@gmail.com','Damercherla','Nalgonda','Telangana',22,'Male','GodFather.avif','customer','Accepted'),
(5,'Vinodh','vinodh@123gmail.com','Damercherla','Nalgonda','Telangana',25,'Male','balayya_rvWEDtQ.jpg','1','Accepted');

/*Table structure for table `pythonfratelloapp_likes` */

DROP TABLE IF EXISTS `pythonfratelloapp_likes`;

CREATE TABLE `pythonfratelloapp_likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_email` varchar(254) NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pythonfratelloapp_likes_post_id_customer_email_dbdb7ac3_uniq` (`post_id`,`customer_email`),
  CONSTRAINT `pythonfratelloapp_likes_post_id_acbaec9a_fk_Post_id` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pythonfratelloapp_likes` */

insert  into `pythonfratelloapp_likes`(`id`,`customer_email`,`date_time`,`post_id`) values 
(1,'Chiadheeravath718@gmail.com','2024-09-09 11:02:12.904665',1),
(2,'Chiadheeravath718@gmail.com','2024-09-09 11:03:24.271194',2),
(3,'Chiadheeravath718@gmail.com','2024-09-09 11:13:43.688174',3),
(4,'Chiadheeravath718@gmail.com','2024-09-09 11:26:21.414656',8),
(5,'Lokeshdheeravath718@gmail.com','2024-09-09 12:35:16.623148',1),
(6,'Lokeshdheeravath718@gmail.com','2024-09-10 04:24:01.815781',3),
(7,'Chiadheeravath718@gmail.com','2024-09-10 12:11:50.980842',16),
(8,'karthikdheeravath718@gmail.com','2024-09-11 05:31:18.829866',16),
(9,'vinodh@123gmail.com','2024-09-11 11:34:31.446385',16),
(10,'karthikdheeravath718@gmail.com','2024-09-11 11:56:22.444095',18),
(11,'karthikdheeravath718@gmail.com','2024-09-11 11:56:44.824390',19),
(12,'vinodh@123gmail.com','2024-09-11 12:03:06.471219',20);

/*Table structure for table `pythonfratelloapp_my_preference` */

DROP TABLE IF EXISTS `pythonfratelloapp_my_preference`;

CREATE TABLE `pythonfratelloapp_my_preference` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pythonfratelloapp_my_preference` */

insert  into `pythonfratelloapp_my_preference`(`id`,`email`,`category`) values 
(1,'karthikdheeravath718@gmail.com','I Phone'),
(2,'karthikdheeravath718@gmail.com','A+'),
(3,'karthikdheeravath718@gmail.com','A'),
(4,'karthikdheeravath718@gmail.com','B'),
(5,'karthikdheeravath718@gmail.com','C'),
(6,'admin123@gmail.com','B'),
(7,'admin@123gmail.com','B'),
(8,'k@gmail.com','A'),
(9,'k@gmail.com','C'),
(10,'k@gmail.com','C'),
(11,'k@gmail.com','C'),
(12,'karthikdheeravath718@gmail.com','B'),
(13,'karthikdheeravath718@gmail.com','B'),
(14,'karthikdheeravath718@gmail.com','A'),
(15,'karthikdheeravath718@gmail.com','C'),
(16,'Chiadheeravath718@gmail.com','C'),
(17,'Chiadheeravath718@gmail.com','B'),
(18,'Chiadheeravath718@gmail.com','C'),
(19,'Chiadheeravath718@gmail.com','A'),
(20,'Chiadheeravath718@gmail.com','A'),
(21,'vinodh@123gmail.com','B'),
(22,'vinodh@123gmail.com','A'),
(23,'karthikdheeravath718@gmail.com','B');

/*Table structure for table `pythonfratelloapp_notification` */

DROP TABLE IF EXISTS `pythonfratelloapp_notification`;

CREATE TABLE `pythonfratelloapp_notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `date_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pythonfratelloapp_notification` */

insert  into `pythonfratelloapp_notification`(`id`,`title`,`description`,`date_time`) values 
(1,'Notification','Ecomerce','2024-08-28 04:23:00.168639'),
(2,'Notification','Entertainment','2024-08-31 11:09:56.621288');

/*Table structure for table `pythonfratelloapp_order_products` */

DROP TABLE IF EXISTS `pythonfratelloapp_order_products`;

CREATE TABLE `pythonfratelloapp_order_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `quantity` bigint NOT NULL,
  `cost` bigint NOT NULL,
  `discount` bigint NOT NULL,
  `total` bigint NOT NULL,
  `customer_email` varchar(254) NOT NULL,
  `vendor_email` varchar(254) NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pythonfratelloapp_or_order_id_5360a54e_fk_pythonfra` (`order_id`),
  KEY `pythonfratelloapp_or_product_id_feb0cfd3_fk_pythonfra` (`product_id`),
  CONSTRAINT `pythonfratelloapp_or_order_id_5360a54e_fk_pythonfra` FOREIGN KEY (`order_id`) REFERENCES `pythonfratelloapp_orders` (`id`),
  CONSTRAINT `pythonfratelloapp_or_product_id_feb0cfd3_fk_pythonfra` FOREIGN KEY (`product_id`) REFERENCES `pythonfratelloapp_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pythonfratelloapp_order_products` */

insert  into `pythonfratelloapp_order_products`(`id`,`title`,`quantity`,`cost`,`discount`,`total`,`customer_email`,`vendor_email`,`order_id`,`product_id`) values 
(4,'Product',1,45000,2000,45000,'karthikdheeravath718@gmail.com','vendor123@gmail.com',10,2),
(6,'Product',2,45000,2000,86000,'karthikdheeravath718@gmail.com','vendor123@gmail.com',11,2),
(7,'Product',2,45000,2000,86000,'karthikdheeravath718@gmail.com','vendor123@gmail.com',12,2),
(9,'Product',1,45000,2000,45000,'Lokeshdheeravath718@gmail.com','vendor123@gmail.com',14,2),
(11,'Product',2,45000,2000,86000,'karthikdheeravath718@gmail.com','vendor123@gmail.com',15,2),
(12,'Shirt',3,700,50,1950,'Lokeshdheeravath718@gmail.com','karthikdheeravath718@gmail.com',16,4),
(16,'Shirt',1,700,50,700,'karthikdheeravath718@gmail.com','karthikdheeravath718@gmail.com',21,4),
(17,'Products',3,45000,2000,129000,'karthikdheeravath718@gmail.com','vendor123@gmail.com',22,2),
(18,'Blazzer',2,1000,100,1800,'vinodh@123gmail.com','vendor123@gmail.com',23,5),
(20,'Products',1,45000,2000,45000,'vinodh@123gmail.com','vendor123@gmail.com',23,2),
(21,'Products',1,45000,2000,45000,'karthikdheeravath718@gmail.com','vendor123@gmail.com',24,2),
(22,'Products',1,45000,2000,45000,'karthikdheeravath718@gmail.com','vendor123@gmail.com',25,2);

/*Table structure for table `pythonfratelloapp_orders` */

DROP TABLE IF EXISTS `pythonfratelloapp_orders`;

CREATE TABLE `pythonfratelloapp_orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_email` varchar(254) NOT NULL,
  `vendor_email` varchar(254) NOT NULL,
  `quantity` bigint NOT NULL,
  `cost` bigint NOT NULL,
  `discount` bigint NOT NULL,
  `total` bigint NOT NULL,
  `address` longtext NOT NULL,
  `delivery_date` date NOT NULL,
  `order_datetime` datetime(6) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pythonfratelloapp_orders` */

insert  into `pythonfratelloapp_orders`(`id`,`customer_email`,`vendor_email`,`quantity`,`cost`,`discount`,`total`,`address`,`delivery_date`,`order_datetime`,`status`) values 
(10,'karthikdheeravath718@gmail.com','vendor123@gmail.com',2,65000,2100,62900,'kukatpalle','2024-09-05','2024-09-03 11:27:49.265541','Accepted'),
(11,'karthikdheeravath718@gmail.com','vendor123@gmail.com',2,90000,4000,86000,'hyderabad','2024-09-05','2024-09-03 12:48:22.284023','Cancelled'),
(12,'karthikdheeravath718@gmail.com','vendor123@gmail.com',2,90000,4000,86000,'kukatpalle','2024-09-05','2024-09-04 04:23:31.188068','Cancelled'),
(13,'karthikdheeravath718@gmail.com','vendor123@gmail.com',2,40000,200,39800,'kukatpalle','2024-09-05','2024-09-09 04:29:58.071081','Accepted'),
(14,'Lokeshdheeravath718@gmail.com','vendor123@gmail.com',1,45000,2000,43000,'hyderabad','2024-09-05','2024-09-09 04:30:11.298543','Rejected'),
(15,'karthikdheeravath718@gmail.com','vendor123@gmail.com',4,250000,8000,242000,'kukatpalle','2024-09-10','2024-09-11 05:33:18.712270','Cancelled'),
(16,'Lokeshdheeravath718@gmail.com','karthikdheeravath718@gmail.com',3,2100,150,1950,'kukatpalle','2024-09-13','2024-09-11 05:24:37.268890','Cancelled'),
(17,'karthikdheeravath718@gmail.com','vendor123@gmail.com',1,20000,100,19900,'kukatpalle','2024-09-14','2024-09-11 05:34:27.124444','Cancelled'),
(18,'karthikdheeravath718@gmail.com','vendor123@gmail.com',1,20000,100,19900,'kukatpalle','2024-09-13','2024-09-11 05:35:48.404954','Cancelled'),
(19,'karthikdheeravath718@gmail.com','vendor123@gmail.com',1,20000,100,19900,'hyderabad','2024-09-12','2024-09-11 05:36:57.012324','Cancelled'),
(20,'karthikdheeravath718@gmail.com','vendor123@gmail.com',1,20000,100,19900,'hyderabad','2024-09-13','2024-09-11 05:38:20.969117','Cancelled'),
(21,'karthikdheeravath718@gmail.com','karthikdheeravath718@gmail.com',1,700,50,650,'kukatpally','2024-09-13','2024-09-11 05:40:46.925699','Cancelled'),
(22,'karthikdheeravath718@gmail.com','vendor123@gmail.com',3,135000,6000,129000,'kukatpalle','2024-09-13','2024-09-11 11:26:09.809686','Pending'),
(23,'vinodh@123gmail.com','vendor123@gmail.com',4,67000,2300,64700,'kukatpally','2024-09-14','2024-09-11 12:08:41.201392','Rejected'),
(24,'karthikdheeravath718@gmail.com','vendor123@gmail.com',1,45000,2000,43000,'hyderabad','2024-09-13','2024-09-12 09:51:27.303923','Accepted'),
(25,'karthikdheeravath718@gmail.com','vendor123@gmail.com',1,45000,2000,43000,'kukatpalle','2024-09-12','2024-09-12 09:51:30.500250','Rejected');

/*Table structure for table `pythonfratelloapp_product` */

DROP TABLE IF EXISTS `pythonfratelloapp_product`;

CREATE TABLE `pythonfratelloapp_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `category` varchar(100) NOT NULL,
  `title` varchar(40) NOT NULL,
  `orign` varchar(80) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `brand` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `discount` int NOT NULL,
  `specification` varchar(40) NOT NULL,
  `warranty` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pythonfratelloapp_product` */

insert  into `pythonfratelloapp_product`(`id`,`email`,`category`,`title`,`orign`,`price`,`image`,`description`,`brand`,`model`,`discount`,`specification`,`warranty`) values 
(2,'vendor123@gmail.com','A','Products','Built',45000.00,'I_phone.png','Good Quality','I phone','15',2000,'Durable','4yeares'),
(4,'karthikdheeravath718@gmail.com','A+','Shirt','Manufacture',700.00,'S20_F9wsVZz.jpg','Good Fabric','HighLander','40',50,'Cotton','1'),
(5,'vendor123@gmail.com','A','Blazzer','Built',1000.00,'S30.jpg','Good Looking','HighLander','25',100,'Cotton','2yeares'),
(11,'vendor123@gmail.com','B','Mobile','Built',20000.00,'car6.jpg','Entertainment','Apple','16',2000,'Durable','2yeares');

/*Table structure for table `pythonfratelloapp_vendor` */

DROP TABLE IF EXISTS `pythonfratelloapp_vendor`;

CREATE TABLE `pythonfratelloapp_vendor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mandal` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(40) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(40) NOT NULL,
  `image` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pythonfratelloapp_vendor` */

insert  into `pythonfratelloapp_vendor`(`id`,`name`,`email`,`mandal`,`district`,`state`,`age`,`gender`,`image`,`password`,`status`) values 
(1,'Karthik','vendor123@gmail.com','damercherla','nalgonda','Telangana',28,'Male','IMG_20240211_193754-02.jpeg','1','accepted'),
(3,'Karthik Dheeravath','karthikdheeravath718@gmail.com','Damercherla','Nalgonda','India',23,'Male','a9_SSv48RR.jpg','2','rejected'),
(4,'Karthik Dheeravath','vendor1234@gmail.com','Damercherla','Nalgond','Telangana',22,'Male','mouli.avif','vendor','accepted');

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_email` varchar(254) NOT NULL,
  `reviews` varchar(100) NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `ratings` bigint NOT NULL,
  `orders_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Review_orders_id_a7e4d4ee_fk_pythonfratelloapp_product_id` (`orders_id`),
  CONSTRAINT `Review_orders_id_a7e4d4ee_fk_pythonfratelloapp_product_id` FOREIGN KEY (`orders_id`) REFERENCES `pythonfratelloapp_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `review` */

insert  into `review`(`id`,`customer_email`,`reviews`,`date_time`,`ratings`,`orders_id`) values 
(2,'karthikdheeravath718@gmail.com','Excellent','2024-09-04 12:37:14.802027',4,2),
(9,'karthikdheeravath718@gmail.com','average','2024-09-09 04:25:02.062948',3,2),
(10,'Lokeshdheeravath718@gmail.com','Excellent','2024-09-11 05:28:36.038260',3,4),
(11,'karthikdheeravath718@gmail.com','Excellent','2024-09-11 11:26:45.156639',5,2),
(12,'karthikdheeravath718@gmail.com','Excellent','2024-09-12 05:06:35.013431',1,2),
(13,'karthikdheeravath718@gmail.com','average','2024-09-12 09:45:29.221459',5,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
