-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2017 at 06:34 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartuni`
--

-- --------------------------------------------------------

--
-- Table structure for table `sm_course`
--

DROP TABLE IF EXISTS `sm_course`;
CREATE TABLE IF NOT EXISTS `sm_course` (
  `deg_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `credits` int(2) NOT NULL,
  `cyear` int(1) NOT NULL,
  `csemester` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_degree`
--

DROP TABLE IF EXISTS `sm_degree`;
CREATE TABLE IF NOT EXISTS `sm_degree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fac_id` int(11) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_department`
--

DROP TABLE IF EXISTS `sm_department`;
CREATE TABLE IF NOT EXISTS `sm_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `fac_id` int(11) NOT NULL,
  `hod_title` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `hod_name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_faculty`
--

DROP TABLE IF EXISTS `sm_faculty`;
CREATE TABLE IF NOT EXISTS `sm_faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `dean_title` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `dean_name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_feedbackform`
--

DROP TABLE IF EXISTS `sm_feedbackform`;
CREATE TABLE IF NOT EXISTS `sm_feedbackform` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `added_time` datetime NOT NULL,
  `active_minutes` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_feedbackscore`
--

DROP TABLE IF EXISTS `sm_feedbackscore`;
CREATE TABLE IF NOT EXISTS `sm_feedbackscore` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `feedbackform_id` int(11) NOT NULL,
  `added_time` datetime NOT NULL,
  `q1` int(11) NOT NULL,
  `q2` int(11) NOT NULL,
  `q3` int(11) NOT NULL,
  `q4` int(11) NOT NULL,
  `q5` int(11) NOT NULL,
  `q6` int(11) NOT NULL,
  `q7` int(11) NOT NULL,
  `q8` int(11) NOT NULL,
  `q9` int(11) NOT NULL,
  `q10` int(11) NOT NULL,
  `comment` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `student_id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_hall`
--

DROP TABLE IF EXISTS `sm_hall`;
CREATE TABLE IF NOT EXISTS `sm_hall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_lecturematerial`
--

DROP TABLE IF EXISTS `sm_lecturematerial`;
CREATE TABLE IF NOT EXISTS `sm_lecturematerial` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `added_time` datetime NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `downloadlink` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_lecturer`
--

DROP TABLE IF EXISTS `sm_lecturer`;
CREATE TABLE IF NOT EXISTS `sm_lecturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) NOT NULL,
  `firstname` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `mobileno` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(300) COLLATE utf8mb4_bin NOT NULL,
  `activation` varchar(8) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `appinstalled` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_lecturing`
--

DROP TABLE IF EXISTS `sm_lecturing`;
CREATE TABLE IF NOT EXISTS `sm_lecturing` (
  `course_id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  PRIMARY KEY (`course_id`,`lecturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_message`
--

DROP TABLE IF EXISTS `sm_message`;
CREATE TABLE IF NOT EXISTS `sm_message` (
  `id` datetime NOT NULL,
  `from_user` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `to_user` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `is_open` int(1) NOT NULL,
  PRIMARY KEY (`id`,`from_user`,`to_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_notification`
--

DROP TABLE IF EXISTS `sm_notification`;
CREATE TABLE IF NOT EXISTS `sm_notification` (
  `id` datetime NOT NULL,
  `type` int(1) NOT NULL,
  `type_id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `type_opt` int(11) NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student`
--

DROP TABLE IF EXISTS `sm_student`;
CREATE TABLE IF NOT EXISTS `sm_student` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `deg_id` int(11) NOT NULL,
  `firstname` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `cyear` int(1) NOT NULL,
  `csemester` int(1) NOT NULL,
  `mobileno` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `activation` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `appinstalled` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_timeslot`
--

DROP TABLE IF EXISTS `sm_timeslot`;
CREATE TABLE IF NOT EXISTS `sm_timeslot` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `hall_id` int(11) NOT NULL,
  `slot_date` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `is_extra` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sm_user`
--

DROP TABLE IF EXISTS `sm_user`;
CREATE TABLE IF NOT EXISTS `sm_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
