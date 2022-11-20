-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: fdb34.awardspace.net
-- Generation Time: Nov 20, 2022 at 08:40 PM
-- Server version: 5.7.20-log
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3931222_jhonny`
--

-- --------------------------------------------------------

--
-- Table structure for table `quiz_category`
--

CREATE TABLE `quiz_category` (
  `ID` int(32) NOT NULL,
  `category` varchar(64) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_category`
--

INSERT INTO `quiz_category` (`ID`, `category`) VALUES
(1, 'math'),
(2, 'programming'),
(3, 'tech');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `ID` int(32) NOT NULL,
  `question` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer1` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer2` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer3` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer4` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer` int(2) NOT NULL,
  `category_ID` int(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`ID`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `answer`, `category_ID`) VALUES
(1, 'what is 24+12?', '32', '36', '31', '38', 1, 1),
(2, 'what is the numbers of pi?', '3.14...', '2.14...', '3.41...', '3.12...', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_result`
--

CREATE TABLE `quiz_result` (
  `ID` int(11) NOT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total_questions` int(11) NOT NULL,
  `right_ans` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_result`
--

INSERT INTO `quiz_result` (`ID`, `username`, `category`, `total_questions`, `right_ans`) VALUES
(1, 'kaspariks', '1', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_user`
--

CREATE TABLE `quiz_user` (
  `ID` int(32) NOT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_user`
--

INSERT INTO `quiz_user` (`ID`, `username`) VALUES
(166, 'vcbc'),
(165, 'cx'),
(164, 'ggg'),
(163, 'ggg'),
(162, 'ggg'),
(161, 'ggg'),
(160, 'ggg'),
(159, 'ggg'),
(158, 'ggg'),
(157, 'ggg'),
(156, 'ggg'),
(155, 'ggg'),
(154, 'ggg'),
(153, ''),
(152, ''),
(151, ''),
(150, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quiz_category`
--
ALTER TABLE `quiz_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `quiz_result`
--
ALTER TABLE `quiz_result`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quiz_category`
--
ALTER TABLE `quiz_category`
  MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_result`
--
ALTER TABLE `quiz_result`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quiz_user`
--
ALTER TABLE `quiz_user`
  MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
