-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- ホスト: db
-- 生成日時: 2019 年 12 月 24 日 06:16
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
-- テーブルの構造 `cf_forms`
--

CREATE TABLE `cf_forms` (
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
('app', 'default', '001_create_form'),
('app', 'default', '002_create_s'),
('app', 'default', '003_create_forms'),
('app', 'default', '004_drop_form'),
('package', 'auth', '001_auth_create_usertables'),
('package', 'auth', '002_auth_create_grouptables'),
('package', 'auth', '003_auth_create_roletables'),
('package', 'auth', '004_auth_create_permissiontables'),
('package', 'auth', '005_auth_create_authdefaults'),
('package', 'auth', '006_auth_add_authactions'),
('package', 'auth', '007_auth_add_permissionsfilter'),
('package', 'auth', '008_auth_create_providers'),
('package', 'auth', '009_auth_create_oauth2tables'),
('package', 'auth', '010_auth_fix_jointables'),
('package', 'auth', '011_auth_group_optional');

-- --------------------------------------------------------

--
-- テーブルの構造 `cf_users`
--

CREATE TABLE `cf_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `group` int(11) NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `last_login` varchar(25) NOT NULL,
  `login_hash` varchar(255) NOT NULL,
  `profile_fields` text NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `cf_users`
--

INSERT INTO `cf_users` (`id`, `username`, `password`, `group`, `email`, `last_login`, `login_hash`, `profile_fields`, `created_at`, `updated_at`) VALUES
(1, 'admin', '41ELPWgdHEqOX3QI7QHJ45d5df4jsOty6VZjWL03ZXo=', 100, 'admin@example.jp', '1577167480', 'a7d1c7757488c044857b79f68a60a7503b0da2e4', 'a:0:{}', 1577167180, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `cf_forms`
--
ALTER TABLE `cf_forms`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `cf_users`
--
ALTER TABLE `cf_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `cf_forms`
--
ALTER TABLE `cf_forms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `cf_users`
--
ALTER TABLE `cf_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
