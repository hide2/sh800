-- create database
DROP DATABASE IF EXISTS `sh800`;
CREATE DATABASE `sh800` DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
USE `sh800`;

-- create table category
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) NOT NULL auto_increment,
  `parent_category_id` int(10),
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `priority` int(10) NOT NULL default 1,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- create table message
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL auto_increment,
  `site` varchar(20) NOT NULL default '800',
  `site_url` varchar(255),
  `user_id` bigint(20),
  `password` varchar(255),
  `parent_category_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `area_id` int(10),
  `location_id` int(10),
  `title` varchar(255) NOT NULL,
  `publish_time` datetime NOT NULL,
  `other_attrs` varchar(4096),
  `content` varchar(65535),
  `images_path` varchar(4096),
  `views_count` int(10) NOT NULL default 0,
  `ip` varchar(255),
  `status` enum('ACTIVE','IN_ACTIVE','DELETED') NOT NULL DEFAULT 'ACTIVE',
  `is_zhiding` tinyint(1) NOT NULL default 0,
  `is_tuiguang` tinyint(1) NOT NULL default 0,
  `is_deleted` tinyint(1) NOT NULL default 0,
  `is_archived` tinyint(1) NOT NULL default 0,
  `created_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- create table messages_count
DROP TABLE IF EXISTS `messages_count`;
CREATE TABLE `messages_count` (
  `id` bigint(20) NOT NULL auto_increment,
  `category_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `area_id` int(10),
  `messages_count` int(10) NOT NULL default 0,
  `created_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- create table province
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- create table city
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(10) NOT NULL auto_increment,
  `province_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_capital` tinyint(1) NOT NULL default 0,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- create table area
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(10) NOT NULL auto_increment,
  `city_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- create table location
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(10) NOT NULL auto_increment,
  `area_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- create table user
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL auto_increment,
  `login` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `crypted_password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;