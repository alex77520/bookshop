-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-19 16:06:37
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelshop`
--

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 'Title 0', 'Body 0', 1, '2017-11-19 00:28:40', '2017-11-19 00:28:40'),
(12, 'Title 1', 'Body 1', 1, '2017-11-19 00:28:40', '2017-11-19 00:28:40'),
(13, 'Title 2', 'Body 2', 1, '2017-11-19 00:28:40', '2017-11-19 00:28:40'),
(14, 'Title 3', 'Body 3', 1, '2017-11-19 00:28:40', '2017-11-19 00:28:40'),
(15, 'Title 4', 'Body 4', 1, '2017-11-19 00:28:40', '2017-11-19 00:28:40'),
(16, 'Title 5', 'Body 5', 1, '2017-11-19 00:28:40', '2017-11-19 00:28:40'),
(17, 'Title 6', 'Body 6', 1, '2017-11-19 00:28:40', '2017-11-19 00:28:40'),
(18, 'Title 7', 'Body 7', 1, '2017-11-19 00:28:40', '2017-11-19 00:28:40'),
(19, 'Title 8', 'Body 8', 1, '2017-11-19 00:28:40', '2017-11-19 00:28:40'),
(20, 'Title 9', 'Body 9', 1, '2017-11-19 00:28:40', '2017-11-19 00:28:40'),
(21, 'er', 'fd', 1, '2017-11-19 04:24:47', '2017-11-19 04:24:47');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(20) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `category_no` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `preview` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `category_no`, `preview`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'test', 'test@test.com', '$2y$10$DUhpdYHx/aysQyHPq9xpHO5FCL4i4cGipEP0Xb', '2016-10-21 23:35:12', '2017-11-12 10:26:17', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `nickname`, `email`, `website`, `content`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'adf', 'df@dfd', 'fd', 'rgf', 7, '2017-11-18 09:31:56', '2017-11-18 09:31:56');

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE `member` (
  `id` int(10) UNSIGNED NOT NULL,
  `nickname` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(20) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`id`, `nickname`, `phone`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 0, '$2y$10$DUhpdYHx/aysQyHPq9xpHO5FCL4i4cGipEP0XbtovhMdQGdMvZLzO', '2016-10-21 23:35:12', '2017-11-12 10:26:17', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
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
-- 表的结构 `password_reset`
--

CREATE TABLE `password_reset` (
  `email` varchar(255) NOT NULL DEFAULT '',
  `token` varchar(255) NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000' ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- 转存表中的数据 `password_reset`
--

INSERT INTO `password_reset` (`email`, `token`, `create_at`) VALUES
('you', 'df', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('youxianyen@sina.com', '740cd0de7ebcc064b239db2a2e50ba8250429307435391e039755d7e6c75a5e4', '2017-11-18 10:38:23');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `preview` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(45,0) DEFAULT NULL,
  `summary` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '概述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `name`, `preview`, `category_id`, `price`, `summary`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 'test@test.com', '$2y$10$DUhpdYHx/aysQyHPq9xpHO5FCL4i4cGipEP0XbtovhMdQGdMvZLzO', '0', '0', '2016-10-21 23:35:12', '2017-11-12 10:26:17', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `product_content`
--

CREATE TABLE `product_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(32) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `product_content`
--

INSERT INTO `product_content` (`id`, `content`, `product_id`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 0, '$2y$10$DUhpdYHx/aysQyHPq9xpHO5FCL4i4cGipEP0XbtovhMdQGdMvZLzO', 'sXZB5swUfDzjV4VfqLONmgUAe8pcK0Exgx6pQIrCPLpR6Nl3nvYnnmf6a6u5', '2016-10-21 23:35:12', '2017-11-12 10:26:17', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(32) NOT NULL,
  `image_no` int(35) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `image_no`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 0, 0, '$2y$10$DUhpdYHx/aysQyHPq9xpHO5FCL4i4cGipEP0XbtovhMdQGdMvZLzO', 'sXZB5swUfDzjV4VfqLONmgUAe8pcK0Exgx6pQIrCPLpR6Nl3nvYnnmf6a6u5', '2016-10-21 23:35:12', '2017-11-12 10:26:17', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 'test@test.com', '$2y$10$DUhpdYHx/aysQyHPq9xpHO5FCL4i4cGipEP0XbtovhMdQGdMvZLzO', 'sXZB5swUfDzjV4VfqLONmgUAe8pcK0Exgx6pQIrCPLpR6Nl3nvYnnmf6a6u5', '2016-10-21 23:35:12', '2017-11-12 10:26:17', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@test.com', '$2y$10$.8xeQHjO8ebxApzL7kxFpe5NolhqCbbwaOsQmZpW47NB9QMRPalv2', 'tqbbfFCkE5MM9SLR8aIPZlXDtcga9LcZ9zeQ39p1nOj27GVMBAxuL6zVxe92', '2017-11-18 09:32:51', '2017-11-18 10:36:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`category_no`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`phone`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`preview`);

--
-- Indexes for table `product_content`
--
ALTER TABLE `product_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`image_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `product_content`
--
ALTER TABLE `product_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
