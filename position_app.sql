-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 20, 2021 at 11:16 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `position_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE IF NOT EXISTS `request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `me` int(11) NOT NULL,
  `other` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_requeststatus` (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `me`, `other`, `status_id`) VALUES
(1, 1, 2, 1),
(2, 5, 6, 1),
(3, 5, 6, 1),
(4, 5, 6, 1),
(5, 5, 6, 1),
(6, 5, 6, 1),
(7, 5, 6, 1),
(8, 1, 5, 1),
(9, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_status` varchar(11) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `label_status`) VALUES
(1, 'EN_ATTENTE'),
(2, 'REFUSE'),
(3, 'ACCEPTE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(255) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(10) NOT NULL,
  `photo` blob,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `user_name`, `password`, `photo`, `latitude`, `longitude`) VALUES
(1, 'yasmine', '1558', NULL, '16,25', '15'),
(4, 'marwa', '2535', NULL, '20.585', '25.55'),
(3, 'othmane', '1558', NULL, '25.369', '15'),
(5, 'ali', '789', NULL, '20.585', '25.55'),
(6, 'yhh', 'tcg', NULL, '33.34', '21.42'),
(7, 'yhh', 'tcg', NULL, '33.34', '21.42'),
(8, 'yhh', 'tcg', NULL, '33.34', '21.42'),
(9, 'yhh', 'tcg', NULL, '33.34', '21.42'),
(10, 'abla', 'ujhh', NULL, '33.34', '21.42'),
(11, 'aicha', 'jfvj', NULL, '36.75', '47.86'),
(44, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(13, 'asd', 'gdh', NULL, '56.68', '47.76'),
(43, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(41, 'mehdi', '6r5', NULL, '57.67', '57.97'),
(40, 'mehdi', '6r5', NULL, '57.67', '57.97'),
(39, 'mehdi', '6r5', NULL, '57.67', '57.97'),
(38, 'mehdi', '6r5', NULL, '57.67', '57.97'),
(37, 'mehdi', '6r5', NULL, '57.67', '57.97'),
(36, 'mehdi', '6r5', NULL, '57.67', '57.97'),
(35, 'mehdi', '6r5', NULL, '57.67', '57.97'),
(23, 'ucj', 'kcuf', NULL, '74.7', '79.64'),
(24, 'ggv', 'fbbh', NULL, '35.64', '36.75'),
(25, 'ggv', 'fbbh', NULL, '35.64', '36.75'),
(26, 'ggv', 'fbbh', NULL, '35.64', '36.75'),
(27, 'ggv', 'fbbh', NULL, '35.64', '36.75'),
(28, 'ggv', 'fbbh', NULL, '35.64', '36.75'),
(29, 'ggv', 'fbbh', NULL, '35.64', '36.75'),
(30, 'ggv', 'fbbh', NULL, '35.64', '36.75'),
(31, 'ggv', 'fbbh', NULL, '35.64', '36.75'),
(32, 'ggv', 'fbbh', NULL, '35.64', '36.75'),
(42, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(34, 'ggv', 'fbbh', NULL, '35.64', '36.75'),
(45, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(46, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(47, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(48, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(49, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(50, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(51, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(52, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(53, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(54, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(55, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(56, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(57, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(58, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(59, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(60, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(61, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(62, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(63, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(64, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(65, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(66, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(67, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(68, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(69, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(70, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(71, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(72, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(73, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(74, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(75, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(76, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(77, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(78, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(79, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(80, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(81, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(82, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(83, 'ghdb', 'kdvvd', NULL, 'null', 'null'),
(84, 'yxt', 'yxtc', NULL, 'null', 'null'),
(85, 'yxt', 'yxtc', NULL, 'null', 'null'),
(86, 'yxt', 'yxtc', NULL, 'null', 'null'),
(87, 'yxt', 'yxtc', NULL, 'null', 'null'),
(88, 'yxt', 'yxtc', NULL, 'null', 'null'),
(89, 'yxt', 'yxtc', NULL, 'null', 'null'),
(90, 'yxt', 'yxtc', NULL, 'null', 'null'),
(91, 'yxt', 'yxtc', NULL, 'null', 'null'),
(92, 'yxt', 'yxtc', NULL, 'null', 'null'),
(93, 'yxt', 'yxtc', NULL, 'null', 'null'),
(94, 'yxt', 'yxtc', NULL, 'null', 'null'),
(95, 'yxt', 'yxtc', NULL, 'null', 'null'),
(96, 'yxt', 'yxtc', NULL, 'null', 'null'),
(97, 'yxt', 'yxtc', NULL, 'null', 'null'),
(98, 'yxt', 'yxtc', NULL, 'null', 'null'),
(99, 'yxt', 'yxtc', NULL, 'null', 'null'),
(100, 'yxt', 'yxtc', NULL, 'null', 'null'),
(101, 'yxt', 'yxtc', NULL, 'null', 'null'),
(102, 'yxt', 'yxtc', NULL, 'null', 'null'),
(103, 'yxthgvb', 'yxtc', NULL, 'null', 'null'),
(104, 'jshb', 'udhb', NULL, 'null', 'null');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
