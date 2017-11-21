-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-20 19:51:51
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Title 0', 'Body 0', 1, '2017-11-20 02:45:44', '2017-11-20 02:45:44'),
(2, 'Title 1', 'Body 1', 1, '2017-11-20 02:45:44', '2017-11-20 02:45:44'),
(3, 'Title 2', 'Body 2', 1, '2017-11-20 02:45:45', '2017-11-20 02:45:45'),
(4, 'Title 3', 'Body 3', 1, '2017-11-20 02:45:45', '2017-11-20 02:45:45'),
(5, 'Title 4', 'Body 4', 1, '2017-11-20 02:45:45', '2017-11-20 02:45:45'),
(6, 'Title 5', 'Body 5', 1, '2017-11-20 02:45:45', '2017-11-20 02:45:45'),
(7, 'Title 6', 'Body 6', 1, '2017-11-20 02:45:45', '2017-11-20 02:45:45'),
(8, 'Title 7', 'Body 7', 1, '2017-11-20 02:45:45', '2017-11-20 02:45:45'),
(9, 'Title 8', 'Body 8', 1, '2017-11-20 02:45:45', '2017-11-20 02:45:45'),
(10, 'Title 9', 'Body 9', 1, '2017-11-20 02:45:45', '2017-11-20 02:45:45');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `category_no` int(20) NOT NULL,
  `preview` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`category_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `name`, `category_no`, `preview`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'test', 0, '$2y$10$DUhpdYHx/aysQyHPq9xpHO5FCL4i4cGipEP0XbtovhMdQGdMvZLzO', 0, '2016-10-21 23:35:12', '2017-11-12 10:26:17');

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `nickname`, `email`, `website`, `content`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'fffffffffffffffffff', 'afffffffffffffff@fd', 'sfffffffffffffffffffff', 'dffffffffffff', 1, '2017-11-20 02:49:53', '2017-11-20 02:49:53');

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`phone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`id`, `nickname`, `phone`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 'test@test.com', '$2y$10$DUhpdYHx/aysQyHPq9xpHO5FCL4i4cGipEP0XbtovhMdQGdMvZLzO', '2016-10-21 23:35:12', '2017-11-12 10:26:17', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_08_18_151805_create_article_table', 1),
('2017_08_18_161825_create_comments_table', 1);

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `pdt_content`
--

CREATE TABLE IF NOT EXISTS `pdt_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pdt_content`
--

INSERT INTO `pdt_content` (`id`, `content`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 0, '2016-10-21 23:35:12', '2017-11-12 10:26:17', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `pdt_images`
--

CREATE TABLE IF NOT EXISTS `pdt_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image_no` int(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`image_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pdt_images`
--

INSERT INTO `pdt_images` (`id`, `image_path`, `image_no`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'test', 0, 0, '2016-10-21 23:35:12', '2017-11-12 10:26:17');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `summary` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '产品概述',
  `price` decimal(10,2) NOT NULL,
  `preview` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`summary`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `category_id`, `summary`, `price`, `preview`, `created_at`, `updated_at`, `deleted_at`, `name`) VALUES
(1, 0, 'test@test.com', '0.00', 'sXZB5swUfDzjV4VfqLONmgUAe8pcK0Exgx6pQIrCPLpR6Nl3nvYnnmf6a6u5', '2016-10-21 23:35:12', '2017-11-12 10:26:17', NULL, 'dfd');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 'test@test.com', '$2y$10$DUhpdYHx/aysQyHPq9xpHO5FCL4i4cGipEP0XbtovhMdQGdMvZLzO', 'sXZB5swUfDzjV4VfqLONmgUAe8pcK0Exgx6pQIrCPLpR6Nl3nvYnnmf6a6u5', '2016-10-21 23:35:12', '2017-11-12 10:26:17', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
