DROP DATABASE IF EXISTS `sh800`;
CREATE DATABASE `sh800` DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
USE `sh800`;

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) NOT NULL auto_increment,
  `parent_category_id` int(10),
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `msg_count` int(10) NOT NULL default 0,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL auto_increment,
  `user_id` bigint(20),
  `password` varchar(255),
  `category_id` int(10) NOT NULL,
  `city_id` int(10),
  `area_id` int(10),
  `title` varchar(255) NOT NULL,
  `publish_time` timestamp NOT NULL,
  `location` varchar(255) NOT NULL,
  `other_attrs` varchar(4096),
  `content` varchar(65535),
  `images_path` varchar(4096),
  `view_count` int(10) NOT NULL default 0,
  `ip` varchar(255),
  `status` enum('ACTIVE','IN_ACTIVE','DELETED') NOT NULL DEFAULT 'ACTIVE',
  `is_zhiding` tinyint(1) NOT NULL default 0,
  `is_tuiguang` tinyint(1) NOT NULL default 0,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(10) NOT NULL auto_increment,
  `province_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(10) NOT NULL auto_increment,
  `city_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL auto_increment,
  `login` varchar(255) NOT NULL,
  `salt` varchar(40) NOT NULL,
  `crypted_password` varchar(40) NOT NULL,
  `email` varchar(40),
  `phone` varchar(40),
  `created_at` timestamp NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;