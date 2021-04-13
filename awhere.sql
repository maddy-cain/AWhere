--
-- File: awhere.sql
-- Author: Maddy Cain 149010c@acadiau.ca
-- Prepared for COMP 4983 X2
--

--
-- Database: `rankings`
--

-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 05:46 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rankings`
--

CREATE DATABASE `rankings`;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `q_id` int(11) NOT NULL,
  `question` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `question`) VALUES
(1, 'Were you required to wear a mask?'),
(2, 'Were you required to sanitize your hands?'),
(3, 'Was social distancing enforced?'),
(4, 'Were you required to provide contact tracing information?'),
(5, 'Was your temperature taken upon arrival?');

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `resp_id` int(11) NOT NULL,
  `rest_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`resp_id`, `rest_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(70, 1),
(79, 1),
(1, 2),
(5, 2),
(26, 2),
(33, 2),
(78, 2),
(6, 3),
(7, 3),
(28, 3),
(29, 3),
(68, 3),
(8, 4),
(35, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(66, 4),
(67, 4),
(69, 4),
(9, 5),
(20, 5),
(27, 5),
(43, 5),
(44, 5),
(80, 5),
(14, 6),
(31, 6),
(32, 6),
(34, 6),
(11, 7),
(30, 7),
(58, 7),
(59, 7),
(60, 7),
(61, 7),
(21, 8),
(22, 8),
(23, 8),
(25, 8),
(12, 9),
(24, 9),
(49, 9),
(50, 9),
(51, 9),
(52, 9),
(53, 9),
(10, 11),
(13, 11),
(54, 11),
(55, 11),
(56, 11),
(57, 11),
(45, 12),
(46, 12),
(47, 12),
(48, 12),
(36, 13),
(62, 13),
(63, 13),
(64, 13),
(65, 13),
(71, 14),
(72, 14),
(73, 14),
(74, 14),
(75, 14),
(76, 14),
(77, 14);

-- --------------------------------------------------------

--
-- Table structure for table `response_value`
--

CREATE TABLE `response_value` (
  `resp_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `q_val` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `response_value`
--

INSERT INTO `response_value` (`resp_id`, `q_id`, `q_val`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(2, 1, 1),
(2, 2, 1),
(2, 3, 0),
(2, 4, 1),
(2, 5, 0),
(3, 1, 0),
(3, 2, 1),
(3, 3, 0),
(3, 4, 1),
(3, 5, 0),
(4, 1, 1),
(4, 2, 1),
(4, 3, 0),
(4, 4, 0),
(4, 5, 1),
(5, 1, 1),
(5, 2, 1),
(5, 3, 0),
(5, 4, 0),
(5, 5, 1),
(6, 1, 0),
(6, 2, 0),
(6, 3, 1),
(6, 4, 1),
(6, 5, 0),
(7, 1, 0),
(7, 2, 1),
(7, 3, 0),
(7, 4, 1),
(7, 5, 1),
(8, 1, 1),
(8, 2, 1),
(8, 3, 0),
(8, 4, 1),
(8, 5, 1),
(9, 1, 1),
(9, 2, 0),
(9, 3, 0),
(9, 4, 0),
(9, 5, 0),
(10, 1, 1),
(10, 2, 1),
(10, 3, 0),
(10, 4, 0),
(10, 5, 1),
(11, 1, 1),
(11, 2, 0),
(11, 3, 0),
(11, 4, 0),
(11, 5, 1),
(12, 1, 1),
(12, 2, 0),
(12, 3, 0),
(12, 4, 0),
(12, 5, 0),
(13, 1, 1),
(13, 2, 0),
(13, 3, 1),
(13, 4, 0),
(13, 5, 0),
(14, 1, 1),
(14, 2, 0),
(14, 3, 1),
(14, 4, 1),
(14, 5, 0),
(15, 1, 1),
(15, 2, 1),
(15, 3, 0),
(15, 4, 0),
(15, 5, 1),
(16, 1, 1),
(16, 2, 0),
(16, 3, 0),
(16, 4, 0),
(16, 5, 1),
(17, 1, 1),
(17, 2, 0),
(17, 3, 1),
(17, 4, 0),
(17, 5, 1),
(18, 1, 0),
(18, 2, 0),
(18, 3, 1),
(18, 4, 0),
(18, 5, 1),
(19, 1, 0),
(19, 2, 0),
(19, 3, 1),
(19, 4, 1),
(19, 5, 1),
(20, 1, 1),
(20, 2, 1),
(20, 3, 0),
(20, 4, 0),
(20, 5, 0),
(21, 1, 1),
(21, 2, 1),
(21, 3, 0),
(21, 4, 1),
(21, 5, 0),
(22, 1, 1),
(22, 2, 1),
(22, 3, 1),
(22, 4, 1),
(22, 5, 0),
(23, 1, 1),
(23, 2, 1),
(23, 3, 1),
(23, 4, 1),
(23, 5, 0),
(24, 1, 1),
(24, 2, 0),
(24, 3, 0),
(24, 4, 1),
(24, 5, 0),
(25, 1, 1),
(25, 2, 1),
(25, 3, 0),
(25, 4, 1),
(25, 5, 0),
(26, 1, 1),
(26, 2, 1),
(26, 3, 0),
(26, 4, 1),
(26, 5, 0),
(27, 1, 1),
(27, 2, 1),
(27, 3, 0),
(27, 4, 1),
(27, 5, 0),
(28, 1, 1),
(28, 2, 0),
(28, 3, 0),
(28, 4, 1),
(28, 5, 0),
(29, 1, 1),
(29, 2, 1),
(29, 3, 0),
(29, 4, 1),
(29, 5, 0),
(30, 1, 0),
(30, 2, 0),
(30, 3, 1),
(30, 4, 1),
(30, 5, 0),
(31, 1, 1),
(31, 2, 0),
(31, 3, 0),
(31, 4, 0),
(31, 5, 0),
(32, 1, 0),
(32, 2, 1),
(32, 3, 0),
(32, 4, 0),
(32, 5, 0),
(33, 1, 1),
(33, 2, 1),
(33, 3, 0),
(33, 4, 1),
(33, 5, 0),
(34, 1, 1),
(34, 2, 0),
(34, 3, 1),
(34, 4, 1),
(34, 5, 0),
(35, 1, 0),
(35, 2, 1),
(35, 3, 0),
(35, 4, 1),
(35, 5, 1),
(36, 1, 0),
(36, 2, 0),
(36, 3, 0),
(36, 4, 1),
(36, 5, 0),
(42, 1, 1),
(42, 2, 0),
(42, 3, 0),
(42, 4, 1),
(42, 5, 1),
(43, 1, 1),
(43, 2, 0),
(43, 3, 0),
(43, 4, 1),
(43, 5, 1),
(44, 1, 1),
(44, 2, 1),
(44, 3, 1),
(44, 4, 0),
(44, 5, 0),
(45, 1, 1),
(45, 2, 1),
(45, 3, 1),
(45, 4, 1),
(45, 5, 1),
(46, 1, 1),
(46, 2, 1),
(46, 3, 1),
(46, 4, 1),
(46, 5, 1),
(47, 1, 1),
(47, 2, 1),
(47, 3, 0),
(47, 4, 0),
(47, 5, 1),
(48, 1, 1),
(48, 2, 0),
(48, 3, 1),
(48, 4, 0),
(48, 5, 0),
(49, 1, 1),
(49, 2, 0),
(49, 3, 0),
(49, 4, 1),
(49, 5, 1),
(50, 1, 1),
(50, 2, 0),
(50, 3, 0),
(50, 4, 1),
(50, 5, 0),
(51, 1, 1),
(51, 2, 1),
(51, 3, 0),
(51, 4, 0),
(51, 5, 0),
(52, 1, 1),
(52, 2, 0),
(52, 3, 1),
(52, 4, 1),
(52, 5, 1),
(53, 1, 0),
(53, 2, 1),
(53, 3, 0),
(53, 4, 0),
(53, 5, 0),
(54, 1, 1),
(54, 2, 1),
(54, 3, 1),
(54, 4, 1),
(54, 5, 1),
(55, 1, 0),
(55, 2, 1),
(55, 3, 1),
(55, 4, 0),
(55, 5, 0),
(56, 1, 1),
(56, 2, 1),
(56, 3, 1),
(56, 4, 0),
(56, 5, 0),
(57, 1, 1),
(57, 2, 0),
(57, 3, 0),
(57, 4, 0),
(57, 5, 1),
(58, 1, 1),
(58, 2, 1),
(58, 3, 1),
(58, 4, 1),
(58, 5, 1),
(59, 1, 0),
(59, 2, 1),
(59, 3, 1),
(59, 4, 0),
(59, 5, 0),
(60, 1, 1),
(60, 2, 1),
(60, 3, 1),
(60, 4, 0),
(60, 5, 0),
(61, 1, 1),
(61, 2, 0),
(61, 3, 0),
(61, 4, 0),
(61, 5, 1),
(62, 1, 1),
(62, 2, 0),
(62, 3, 0),
(62, 4, 1),
(62, 5, 1),
(63, 1, 1),
(63, 2, 1),
(63, 3, 1),
(63, 4, 0),
(63, 5, 0),
(64, 1, 0),
(64, 2, 1),
(64, 3, 0),
(64, 4, 0),
(64, 5, 0),
(65, 1, 1),
(65, 2, 1),
(65, 3, 0),
(65, 4, 0),
(65, 5, 1),
(66, 1, 1),
(66, 2, 0),
(66, 3, 0),
(66, 4, 1),
(66, 5, 1),
(67, 1, 0),
(67, 2, 0),
(67, 3, 1),
(67, 4, 1),
(67, 5, 1),
(68, 1, 1),
(68, 2, 1),
(68, 3, 0),
(68, 4, 1),
(68, 5, 0),
(69, 1, 1),
(69, 2, 1),
(69, 3, 0),
(69, 4, 1),
(69, 5, 0),
(70, 1, 1),
(70, 2, 0),
(70, 3, 0),
(70, 4, 1),
(70, 5, 0),
(71, 1, 1),
(71, 2, 0),
(71, 3, 0),
(71, 4, 1),
(71, 5, 1),
(72, 1, 1),
(72, 2, 1),
(72, 3, 1),
(72, 4, 0),
(72, 5, 0),
(73, 1, 0),
(73, 2, 1),
(73, 3, 0),
(73, 4, 0),
(73, 5, 0),
(74, 1, 1),
(74, 2, 1),
(74, 3, 0),
(74, 4, 0),
(74, 5, 1),
(75, 1, 1),
(75, 2, 0),
(75, 3, 0),
(75, 4, 1),
(75, 5, 1),
(76, 1, 1),
(76, 2, 1),
(76, 3, 1),
(76, 4, 0),
(76, 5, 0),
(77, 1, 1),
(77, 2, 1),
(77, 3, 1),
(77, 4, 1),
(77, 5, 1),
(78, 1, 1),
(78, 2, 1),
(78, 3, 0),
(78, 4, 1),
(78, 5, 0),
(79, 1, 1),
(79, 2, 1),
(79, 3, 0),
(79, 4, 1),
(79, 5, 0),
(80, 1, 1),
(80, 2, 1),
(80, 3, 1),
(80, 4, 0),
(80, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rest_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rest_id`, `name`) VALUES
(1, 'Joe\'s Food Emporium'),
(2, 'Paddy\'s Brew Pub'),
(3, 'The Church Brewing Co'),
(4, 'The Library Pub'),
(5, 'Just Us! Coffee House'),
(6, 'Troy Restaurant and Grill'),
(7, 'The Naked Crepe Bistro'),
(8, 'The Rolled Oat Cafe'),
(9, 'Kings Arms Commons'),
(10, 'Annapolis Cider Company'),
(11, 'The Axe Bar and Grill'),
(12, 'T.A.N. Coffee'),
(13, 'Juniper'),
(14, 'Restaurant X');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`resp_id`),
  ADD KEY `rest_id` (`rest_id`);

--
-- Indexes for table `response_value`
--
ALTER TABLE `response_value`
  ADD PRIMARY KEY (`resp_id`,`q_id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rest_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `response`
--
ALTER TABLE `response`
  MODIFY `resp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `response`
--
ALTER TABLE `response`
  ADD CONSTRAINT `rest_id` FOREIGN KEY (`rest_id`) REFERENCES `restaurant` (`rest_id`);

--
-- Constraints for table `response_value`
--
ALTER TABLE `response_value`
  ADD CONSTRAINT `q_id` FOREIGN KEY (`q_id`) REFERENCES `question` (`q_id`),
  ADD CONSTRAINT `resp_id` FOREIGN KEY (`resp_id`) REFERENCES `response` (`resp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
