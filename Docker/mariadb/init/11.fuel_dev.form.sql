-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- ホスト: db
-- 生成日時: 2019 年 12 月 22 日 14:12
-- サーバのバージョン： 5.5.64-MariaDB-1~trusty
-- PHP のバージョン: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `fuel_dev`
--
CREATE DATABASE IF NOT EXISTS `fuel_dev` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fuel_dev`;

-- --------------------------------------------------------

--
-- テーブルの構造 `cf_form`
--

CREATE TABLE `cf_form` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` varchar(400) NOT NULL,
  `ip_address` varchar(39) NOT NULL,
  `user_agent` varchar(512) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `cf_migration`
--

CREATE TABLE `cf_migration` (
  `type` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `migration` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `cf_migration`
--

INSERT INTO `cf_migration` (`type`, `name`, `migration`) VALUES
('app', 'default', '001_create_form');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `cf_form`
--
ALTER TABLE `cf_form`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `cf_form`
--
ALTER TABLE `cf_form`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
