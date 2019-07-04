-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2019 年 7 月 04 日 08:54
-- サーバのバージョン： 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gsf_d03_db26`
--
CREATE DATABASE IF NOT EXISTS `gsf_d03_db26` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `gsf_d03_db26`;

-- --------------------------------------------------------

--
-- テーブルの構造 `php02_table`
--

CREATE TABLE `php02_table` (
  `id` int(12) NOT NULL,
  `task` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `indate`) VALUES
(4, 'PSP02test', '2019-01-04', 'コメントいれるよ....\r\n', '2019-06-08 15:39:12'),
(5, 'PSP02test', '2019-01-05', 'コメントいれるよ', '2019-06-08 15:39:12'),
(6, 'PSP02test', '2019-01-06', 'コメントいれるよ', '2019-06-08 15:39:12'),
(7, 'PSP02test', '2019-01-07', 'コメントいれるよ', '2019-06-08 15:39:12'),
(8, 'PSP02test', '2019-01-08', 'コメントいれるよ', '2019-06-08 15:40:39'),
(9, 'PSP02test', '2019-01-09', 'コメ９', '2019-06-08 15:40:39'),
(10, 'PSP02test', '2019-01-10', 'コメ１０', '2019-06-08 15:40:39'),
(11, 'test', '2019-06-03', 'testcomment', '2019-06-08 16:42:35'),
(12, 'test', '2019-06-03', 'testcomment', '2019-06-08 16:42:46'),
(13, 'testtesttest', '2019-06-07', 'testtest', '2019-06-08 16:43:11'),
(14, 'test', '2019-06-07', 'testtest', '2019-06-15 14:48:49'),
(15, 'test', '2019-06-30', 'testtesttest', '2019-06-15 14:49:05');

-- --------------------------------------------------------

--
-- テーブルの構造 `t_divisionname`
--

CREATE TABLE `t_divisionname` (
  `divisioncode` int(3) NOT NULL,
  `namecode` int(3) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `t_divisionname`
--

INSERT INTO `t_divisionname` (`divisioncode`, `namecode`, `name`) VALUES
(1, 1, 'PS４'),
(1, 2, 'NINTENDO SWITCH'),
(2, 1, 'めっちゃおもろい'),
(2, 2, 'まぁまぁおもろい'),
(2, 3, '普通'),
(2, 4, 'くそげー'),
(2, 5, '超くそげー'),
(3, 1, '全クリ'),
(3, 2, '未クリ');

-- --------------------------------------------------------

--
-- テーブルの構造 `t_mygamelist`
--

CREATE TABLE `t_mygamelist` (
  `id` int(12) NOT NULL,
  `gamedivision` int(1) NOT NULL,
  `gamename` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `omoshirodivision` int(1) NOT NULL,
  `allcleardivision` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `t_mygamelist`
--

INSERT INTO `t_mygamelist` (`id`, `gamedivision`, `gamename`, `omoshirodivision`, `allcleardivision`) VALUES
(1, 1, 'グランドセフトオート５', 2, 2),
(7, 2, 'ゼルダの伝説　ブレスオブザ・ワイルドaa', 1, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'test', 'test', 'test', 0, 0),
(3, 'test3', 'test3', 'test3', 1, 0),
(4, 'test4', 'test4', 'test4', 1, 0),
(5, 'test4', 'test4', 'test4', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `php02_table`
--
ALTER TABLE `php02_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_divisionname`
--
ALTER TABLE `t_divisionname`
  ADD PRIMARY KEY (`divisioncode`,`namecode`);

--
-- Indexes for table `t_mygamelist`
--
ALTER TABLE `t_mygamelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `php02_table`
--
ALTER TABLE `php02_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `t_mygamelist`
--
ALTER TABLE `t_mygamelist`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
