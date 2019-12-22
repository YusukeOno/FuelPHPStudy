-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- ホスト: db
-- 生成日時: 2019 年 12 月 22 日 14:13
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
-- データベース: `fuel_test`
--
CREATE DATABASE IF NOT EXISTS `fuel_test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fuel_test`;

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

--
-- テーブルのデータのダンプ `cf_form`
--

INSERT INTO `cf_form` (`id`, `name`, `email`, `comment`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, '小野小町', 'komachi@example.jp', '花の色は 移りにけりな いたづらに\n我が身世にふる ながめせし間に', '192.168.1.1', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:11.0) Gecko/20100101 Firefox/11.0', 1333524234, 1333524234),
(2, '文也康英', 'yasu@example.jp', '吹くからに 秋の草木の しをるれば\nむべ山風を 嵐といふらむ', '10.10.10.10', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:9.0.1) Gecko/20100101 Firefox/9.0.1', 1333534305, 1333534305),
(3, '清原元輔', 'motosuke@example.jp', 'ちぎりきな かたみに袖を しぼりつつ\n末の松山 浪こさじとは', '172.16.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.7 (KHTML, like Gecko) Chrome', 1333535267, 1333535267),
(4, '藤原義孝', 'yoshitaka@example.jp', '君がため 惜しからざりし 命さえ 長くもがなと 思ひけるかな', '10.11.12.13', 'Mozilla/2.02 (Macintosh; I; PPC)', 1577023712, 1577023712);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
