-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2019 年 07 月 29 日 18:27
-- 伺服器版本: 10.1.36-MariaDB
-- PHP 版本： 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `cdc_new`
--

-- --------------------------------------------------------

--
-- 資料表結構 `address_book`
--

CREATE TABLE `address_book` (
  `ID` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `sex` int(11) NOT NULL,
  `tel` varchar(16) NOT NULL,
  `address` text NOT NULL,
  `e_mail` text NOT NULL,
  `del` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `address_book`
--

INSERT INTO `address_book` (`ID`, `name`, `sex`, `tel`, `address`, `e_mail`, `del`) VALUES
(1, 'aaa1', 1, 'sdfsdf3', 'asdfsdf4', 'sss', 0),
(2, 'asdfsdf1', 2, 'sdfsdf3', 'aaa4', 'rrr5', 0),
(3, 'qqq1', 1, 'fff3', 'asdfsdf4', 'asdfdsf5', 0),
(4, 'aa1', 2, 'ff3', 'gg4', 'hh5', 0),
(5, 'asdfsdf1', 1, 'sdfsdf3', 'asdfsdf4', 'asdfdsf5', 0),
(6, 'addd', 2, 'haa', 'jsss', 'ka', 0),
(7, 'ggg', 1, 'jjj', 'kkk', 'lll', 0),
(8, '111', 2, '3333333', '4444', '555555', 0),
(9, 'hhh', 1, 'kkkkk', 'lll', 'www', 0),
(10, 'd', 2, 'g', 'h', 'j', 0),
(11, 'aaaaa', 1, '0987-654321', 's', 'a', 0),
(12, 'aaaaa', 2, '0987-654321', 's', 'aaa@aaaaa.com', 0),
(13, 'ccccvvvv', 1, '0987-654321', 's', 'aaa@aaaaa.com', 0),
(14, 'aaaaa', 2, '0911-666666', 'd', 'a@sss.cpm', 0),
(15, 'qwertyu121212', 1, '0912-345678', 'aSDFGHJKLZXCVBB', 'abc.erteter@aaa.com', 0),
(16, '987654321111111', 2, '0987-654321', 'aSDFGHJKLZXCVBB', 'bbb@ccc.com', 0),
(17, '121212', 1, '0911-666666', 'aSDFGHJKLZXCVBB', 'abc.erteter@aaa.com', 0);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`ID`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `address_book`
--
ALTER TABLE `address_book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
