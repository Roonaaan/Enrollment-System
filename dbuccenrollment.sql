-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2024 at 09:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbuccenrollment`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_NAME` varchar(30) NOT NULL,
  `COURSE_LEVEL` varchar(50) NOT NULL DEFAULT '1',
  `COURSE_MAJOR` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_DESC` varchar(255) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `SETSEMESTER` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`, `COURSE_LEVEL`, `COURSE_MAJOR`, `COURSE_DESC`, `DEPT_ID`, `SETSEMESTER`) VALUES
(60, 'BS Computer Science', '1', 'Computer Science', 'Bachelor of Science in Computer Science', 37, ''),
(61, 'BS Information Technology', '1', 'Information Technology', 'Bachelor of Science in Information Technology', 37, ''),
(62, 'BS Information System', '1', 'Information System', 'Bachelor of Science in Information System', 37, ''),
(63, 'BS Entertainment and Multimedi', '1', 'Entertainment and Multimedia C', 'Bachelor of Science in Entertainment and Multimedia Computing', 37, ''),
(64, 'BS Computer Science ', '2', 'None', 'Bachelor of Science in Computer Science', 37, '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `DEPARTMENT_DESC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_ID`, `DEPARTMENT_NAME`, `DEPARTMENT_DESC`) VALUES
(37, 'CLAS', 'College of Liberal Arts                \r\n         ');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GRADE_ID` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `FIRST` int(11) NOT NULL,
  `SECOND` int(11) NOT NULL,
  `THIRD` int(11) NOT NULL,
  `FOURTH` int(11) NOT NULL,
  `AVE` float NOT NULL,
  `REMARKS` text NOT NULL,
  `COMMENT` text NOT NULL,
  `SEMS` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GRADE_ID`, `IDNO`, `SUBJ_ID`, `FIRST`, `SECOND`, `THIRD`, `FOURTH`, `AVE`, `REMARKS`, `COMMENT`, `SEMS`) VALUES
(1530, 1000000217, 359, 90, 90, 90, 90, 90, 'Passed', '', 'First'),
(1531, 1000000217, 360, 90, 90, 90, 90, 90, 'Passed', '', 'First'),
(1532, 1000000217, 361, 90, 90, 90, 90, 90, 'Passed', '', ''),
(1533, 1000000217, 362, 90, 90, 90, 90, 90, 'Passed', '', ''),
(1534, 1000000217, 363, 0, 0, 0, 0, 0, '', '', ''),
(1535, 1000000217, 364, 0, 0, 0, 0, 0, '', '', ''),
(1536, 1000000217, 363, 0, 0, 0, 0, 0, '', '', ''),
(1537, 1000000217, 364, 0, 0, 0, 0, 0, '', '', ''),
(1538, 1000000223, 359, 90, 90, 90, 90, 90, 'Passed', '', 'First'),
(1539, 1000000223, 360, 90, 90, 90, 90, 90, 'Passed', '', 'First');

-- --------------------------------------------------------

--
-- Table structure for table `schoolyr`
--

CREATE TABLE `schoolyr` (
  `SYID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `IDNO` int(30) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL DEFAULT 'ENROLLED',
  `DATE_RESERVED` datetime NOT NULL,
  `DATE_ENROLLED` datetime NOT NULL,
  `STATUS` varchar(30) NOT NULL DEFAULT 'New'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schoolyr`
--

INSERT INTO `schoolyr` (`SYID`, `AY`, `SEMESTER`, `COURSE_ID`, `IDNO`, `CATEGORY`, `DATE_RESERVED`, `DATE_ENROLLED`, `STATUS`) VALUES
(150, '2016-2017', 'First', 30, 100000076, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(151, '2016-2017', 'First', 30, 100000077, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(152, '2016-2017', 'First', 42, 100000079, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(153, '2016-2017', 'First', 21, 1000000100, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(154, '2016-2017', 'First', 30, 100000092, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(155, '2016-2017', 'First', 30, 1000000126, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(156, '2016-2017', 'First', 30, 1000000127, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(157, '2016-2017', 'First', 42, 1000000190, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(158, '2016-2017', 'First', 42, 1000000201, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(159, '2016-2017', 'First', 42, 1000000200, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(160, '2016-2017', 'First', 42, 1000000199, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(161, '2016-2017', 'First', 42, 1000000198, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(162, '2016-2017', 'First', 42, 1000000197, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(163, '2016-2017', 'First', 42, 1000000196, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(164, '2016-2017', 'First', 42, 1000000195, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(165, '2016-2017', 'First', 42, 1000000194, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(166, '2016-2017', 'First', 42, 1000000193, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(167, '2016-2017', 'First', 42, 1000000192, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(168, '2016-2017', 'First', 42, 1000000191, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(169, '2016-2017', 'First', 42, 1000000189, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(170, '2016-2017', 'First', 42, 1000000188, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(171, '2016-2017', 'First', 42, 1000000187, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(172, '2016-2017', 'First', 42, 1000000186, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(173, '2016-2017', 'First', 42, 1000000185, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(174, '2016-2017', 'First', 42, 1000000184, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(175, '2016-2017', 'First', 42, 1000000183, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(176, '2016-2017', 'First', 42, 1000000182, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(177, '2016-2017', 'First', 42, 1000000181, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(178, '2016-2017', 'First', 42, 1000000180, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(179, '2016-2017', 'First', 42, 1000000179, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(180, '2016-2017', 'First', 42, 1000000178, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(181, '2016-2017', 'First', 42, 1000000177, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(182, '2016-2017', 'First', 42, 1000000176, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(183, '2016-2017', 'First', 42, 1000000175, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(184, '2016-2017', 'First', 42, 1000000174, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(185, '2016-2017', 'First', 42, 1000000173, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(186, '2016-2017', 'First', 42, 1000000172, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(187, '2016-2017', 'First', 42, 1000000171, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(188, '2016-2017', 'First', 42, 1000000170, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(189, '2016-2017', 'First', 42, 1000000169, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(190, '2016-2017', 'First', 42, 1000000168, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(191, '2016-2017', 'First', 42, 1000000167, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(192, '2016-2017', 'First', 42, 1000000166, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(193, '2016-2017', 'First', 42, 1000000165, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(194, '2016-2017', 'First', 42, 1000000164, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(195, '2016-2017', 'First', 42, 1000000163, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(196, '2016-2017', 'First', 21, 1000000162, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(197, '2016-2017', 'First', 42, 100000098, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(198, '2016-2017', 'First', 42, 1000000156, 'ENROLLED', '2016-10-07 00:00:00', '2016-10-07 00:00:00', 'New'),
(199, '2024-2025', 'Second', 60, 1000000202, 'ENROLLED', '2024-01-24 00:00:00', '2024-01-24 00:00:00', 'New'),
(200, '2024-2025', 'First', 60, 1000000203, 'ENROLLED', '2024-01-24 00:00:00', '2024-01-24 00:00:00', 'New'),
(201, '2024-2025', 'First', 60, 1000000204, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'New'),
(202, '2024-2025', 'First', 60, 1000000205, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'New'),
(203, '2024-2025', 'First', 60, 1000000205, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(204, '2024-2025', 'First', 60, 1000000205, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(205, '2024-2025', 'First', 60, 1000000205, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(206, '2024-2025', 'Second', 60, 1000000205, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(207, '2024-2025', 'First', 60, 1000000210, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'New'),
(208, '2024-2025', 'First', 60, 1000000210, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(209, '2024-2025', 'First', 60, 1000000210, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(210, '2024-2025', 'First', 60, 1000000210, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(211, '2024-2025', 'First', 60, 1000000210, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(212, '2024-2025', 'First', 60, 1000000210, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(213, '2024-2025', 'First', 60, 1000000210, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(214, '2024-2025', 'First', 60, 1000000217, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'New'),
(215, '2024-2025', 'First', 60, 1000000217, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(216, '2024-2025', 'First', 60, 1000000217, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(217, '2024-2025', 'Second', 60, 1000000217, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(218, '2024-2025', 'First', 64, 1000000217, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(219, '2024-2025', 'First', 64, 1000000217, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old'),
(220, '2024-2025', 'First', 60, 1000000223, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'New'),
(221, '2024-2025', 'First', 60, 1000000223, 'ENROLLED', '2024-01-25 00:00:00', '2024-01-25 00:00:00', 'Old');

-- --------------------------------------------------------

--
-- Table structure for table `studentschedule`
--

CREATE TABLE `studentschedule` (
  `CLASS_ID` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `schedID` int(11) NOT NULL,
  `AY` varchar(11) NOT NULL,
  `DAY` varchar(20) NOT NULL,
  `C_TIME` varchar(30) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `ROOM` text NOT NULL,
  `CSECTION` varchar(30) NOT NULL DEFAULT 'NONE',
  `COURSE_ID` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentsubjects`
--

CREATE TABLE `studentsubjects` (
  `STUDSUBJ_ID` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `LEVEL` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SY` text NOT NULL,
  `ATTEMP` int(11) NOT NULL,
  `AVERAGE` double NOT NULL,
  `OUTCOME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `studentsubjects`
--

INSERT INTO `studentsubjects` (`STUDSUBJ_ID`, `IDNO`, `SUBJ_ID`, `LEVEL`, `SEMESTER`, `SY`, `ATTEMP`, `AVERAGE`, `OUTCOME`) VALUES
(1530, 1000000217, 359, 1, 'First', '2024-2025', 1, 90, 'Passed'),
(1531, 1000000217, 360, 1, 'First', '2024-2025', 1, 90, 'Passed'),
(1532, 1000000217, 361, 1, 'Second', '2024-2025', 1, 90, 'Passed'),
(1533, 1000000217, 362, 1, 'Second', '2024-2025', 1, 90, 'Passed'),
(1534, 1000000217, 363, 2, 'First', '2024-2025', 1, 0, ''),
(1535, 1000000217, 364, 2, 'First', '2024-2025', 1, 0, ''),
(1536, 1000000217, 363, 2, 'First', '2024-2025', 1, 0, ''),
(1538, 1000000223, 359, 1, 'First', '2024-2025', 1, 90, 'Passed'),
(1539, 1000000223, 360, 1, 'First', '2024-2025', 1, 90, 'Passed');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SUBJ_ID` int(11) NOT NULL,
  `SUBJ_CODE` varchar(30) NOT NULL,
  `SUBJ_DESCRIPTION` varchar(255) NOT NULL,
  `UNIT` int(2) NOT NULL,
  `PRE_REQUISITE` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_ID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `PreTaken` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJ_ID`, `SUBJ_CODE`, `SUBJ_DESCRIPTION`, `UNIT`, `PRE_REQUISITE`, `COURSE_ID`, `AY`, `SEMESTER`, `PreTaken`) VALUES
(359, 'CCS 101', 'Introduction to Computing', 3, 'None ', 60, '', 'First', 0),
(360, 'CCS 102', 'Fundamentals of Programming', 5, 'None ', 60, '', 'First', 0),
(361, 'CCS 103', 'Intermediate Programming', 5, 'None', 60, '', 'Second', 0),
(362, 'CCS 107', 'Web Systems and Technologies', 5, 'None', 60, '', 'Second', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblauto`
--

CREATE TABLE `tblauto` (
  `ID` int(11) NOT NULL,
  `autocode` varchar(255) DEFAULT NULL,
  `autoname` varchar(255) DEFAULT NULL,
  `appendchar` varchar(255) DEFAULT NULL,
  `autostart` int(11) DEFAULT 0,
  `autoend` int(11) DEFAULT 0,
  `incrementvalue` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tblauto`
--

INSERT INTO `tblauto` (`ID`, `autocode`, `autoname`, `appendchar`, `autostart`, `autoend`, `incrementvalue`) VALUES
(1, 'Asset', 'Asset', 'ASitem', 0, 3, 1),
(2, 'Trans', 'Transaction', 'TrAnS', 1, 5, 1),
(3, 'SIDNO', 'IDNO', '2015', 1000000, 225, 1),
(4, 'EMPLOYEE', 'EMPID', '020010', 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblinstructor`
--

CREATE TABLE `tblinstructor` (
  `INST_ID` int(11) NOT NULL,
  `INST_NAME` varchar(90) NOT NULL,
  `INST_MAJOR` varchar(90) NOT NULL,
  `INST_CONTACT` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblinstructor`
--

INSERT INTO `tblinstructor` (`INST_ID`, `INST_NAME`, `INST_MAJOR`, `INST_CONTACT`) VALUES
(1, 'Joker Villanueva', 'Programming', '091873648495'),
(2, 'Melanie M. Katigbak', 'English', '09801127665'),
(3, 'Kenneth John L. Mayo', 'IT', '09097767654'),
(4, 'Cliff A. Belano', 'Physics', '09347787366'),
(5, 'Heidi U. Ignacio', 'Accounting', '09127767746'),
(6, 'Lorelie B. Bustos', 'Mathematics', '09127738774'),
(7, 'Jenard G. Ticong', 'Physical Education', '09127786774'),
(8, 'Gina D. Parilla', 'English', '09887764746'),
(9, 'Fernando R. Reyes', 'Mathematics', '09127787654'),
(10, 'Virgil K. Delatin', 'IT', '09127787664'),
(11, 'Lovelyn A. Durano', 'Filipino', '09667877637'),
(12, 'Ramon Alamda', 'Mathematics', '09275663345'),
(13, 'Richard Alamada', 'Psycology', '09264566789'),
(14, 'Daemon Gomez', 'Economics', '09098756443'),
(15, 'Noemi Mangelen', 'History', '09265644765'),
(16, 'Kenneth Almazan', 'Marketing', '09254566451'),
(17, 'Rene Alabra', 'Philosophy', '09256744585'),
(18, 'Regine Razor', 'Literature', '09267544673'),
(19, 'Shai Regardos', 'Nat Sci', '09265473223'),
(20, 'Hana James', 'Law', '09287656778'),
(21, 'Amy Musali', 'Political Science', '09098756772'),
(22, 'Fhai Kilosyo', 'Business Enterprenuership', '09278744678'),
(23, 'Kim Fajardo', 'Social Science', '09275644563'),
(24, 'Hana Hugo', 'English', '09098767445'),
(25, 'Johari Samadalan', 'Biology', '09254675334'),
(26, 'Kinohi Arakashi', 'General Science', '09256734876'),
(27, 'Sharmine Hidalgo', 'Filipino', '09264734621'),
(28, 'Tantan Exiomo', 'English', '09253234532'),
(29, 'Gerald Bustos', 'Humanities', '09284537593'),
(30, 'Kay Abad', 'Financial Management', '09287635452'),
(31, 'Recardo Piang', 'English', '09264537432'),
(32, 'Edgard Sumayaw', 'Physical Education', '09276438532');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `LOGID` int(11) NOT NULL,
  `USERID` int(11) NOT NULL,
  `LOGDATETIME` datetime NOT NULL,
  `LOGROLE` varchar(55) NOT NULL,
  `LOGMODE` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbllogs`
--

INSERT INTO `tbllogs` (`LOGID`, `USERID`, `LOGDATETIME`, `LOGROLE`, `LOGMODE`) VALUES
(1, 1, '2016-09-22 21:46:01', 'Administrator', 'Logged in'),
(2, 100000022, '2016-09-22 21:46:29', 'Student', 'Logged out'),
(3, 100000015, '2016-09-23 05:00:38', 'Student', 'Logged in'),
(4, 100000015, '2016-09-23 05:00:45', 'Student', 'Logged out'),
(5, 100000025, '2016-09-23 05:02:31', 'Student', 'Logged in'),
(6, 100000025, '2016-09-23 05:02:55', 'Student', 'Logged out'),
(7, 100000025, '2016-09-23 05:03:53', 'Student', 'Logged in'),
(8, 100000025, '2016-09-23 05:11:40', 'Student', 'Logged out'),
(44, 1, '2016-09-28 15:59:30', 'Administrator', 'Logged in'),
(45, 100000071, '2016-09-28 16:03:54', 'Student', 'Logged in'),
(46, 100000071, '2016-09-28 16:08:44', 'Student', 'Logged out'),
(47, 1, '2016-09-28 16:35:55', 'Administrator', 'Logged out'),
(48, 1, '2016-09-28 16:36:01', 'Administrator', 'Logged in'),
(49, 1, '2016-09-28 16:37:41', 'Administrator', 'Logged out'),
(50, 2, '2016-09-28 16:37:46', 'Registrar', 'Logged in'),
(51, 2, '2016-09-28 16:37:53', 'Registrar', 'Logged in'),
(52, 2, '2016-09-28 16:38:00', 'Registrar', 'Logged in'),
(53, 1, '2016-09-28 16:38:05', 'Administrator', 'Logged in'),
(54, 1, '2016-09-28 16:38:19', 'Administrator', 'Logged out'),
(55, 2, '2016-09-28 16:38:25', 'Registrar', 'Logged in'),
(56, 2, '2016-09-28 16:38:34', 'Registrar', 'Logged in'),
(57, 1, '2016-09-28 16:38:44', 'Administrator', 'Logged in'),
(58, 1, '2016-09-28 17:11:31', 'Administrator', 'Logged in'),
(59, 1, '2016-09-28 17:12:57', 'Administrator', 'Logged out'),
(60, 2, '2016-09-28 17:13:03', 'Registrar', 'Logged in'),
(61, 2, '2016-09-28 17:13:22', 'Registrar', 'Logged out'),
(62, 1, '2016-09-28 17:16:24', 'Administrator', 'Logged in'),
(63, 100000073, '2016-09-29 00:09:36', 'Student', 'Logged out'),
(64, 100000076, '2016-09-29 02:28:04', 'Student', 'Logged out'),
(65, 2, '2016-09-29 03:16:04', 'Registrar', 'Logged in'),
(66, 2, '2016-09-29 03:59:22', 'Registrar', 'Logged in'),
(67, 2, '2016-09-29 04:48:52', 'Registrar', 'Logged in'),
(68, 100000079, '2016-09-29 04:49:11', 'Student', 'Logged out'),
(69, 100000080, '2016-09-29 04:53:17', 'Student', 'Logged out'),
(70, 100000073, '2016-09-29 04:53:53', 'Student', 'Logged in'),
(71, 2, '2016-09-29 05:29:19', 'Registrar', 'Logged in'),
(72, 2, '2016-09-29 05:29:32', 'Registrar', 'Logged out'),
(73, 1, '2016-09-29 05:29:42', 'Administrator', 'Logged in'),
(74, 100000073, '2016-09-29 05:30:16', 'Student', 'Logged out'),
(75, 100000080, '2016-09-29 05:30:25', 'Student', 'Logged in'),
(76, 1, '2016-09-29 07:19:58', 'Administrator', 'Logged in'),
(77, 2, '2016-09-29 08:48:03', 'Registrar', 'Logged in'),
(78, 2, '2016-09-29 08:49:03', 'Registrar', 'Logged out'),
(79, 1, '2016-09-29 08:49:32', 'Administrator', 'Logged in'),
(80, 100000081, '2016-09-29 08:53:32', 'Student', 'Logged out'),
(81, 100000079, '2016-09-29 08:53:55', 'Student', 'Logged in'),
(82, 100000079, '2016-09-29 10:15:53', 'Student', 'Logged out'),
(83, 100000083, '2016-09-29 10:20:12', 'Student', 'Logged out'),
(84, 100000084, '2016-09-29 10:23:29', 'Student', 'Logged out'),
(85, 100000085, '2016-09-29 10:28:26', 'Student', 'Logged out'),
(86, 100000086, '2016-09-29 10:31:39', 'Student', 'Logged out'),
(87, 100000087, '2016-09-29 10:35:43', 'Student', 'Logged out'),
(88, 100000086, '2016-09-29 10:35:51', 'Student', 'Logged in'),
(89, 100000086, '2016-09-29 10:40:03', 'Student', 'Logged out'),
(90, 100000073, '2016-09-29 10:40:10', 'Student', 'Logged in'),
(91, 100000073, '2016-09-29 10:40:41', 'Student', 'Logged out'),
(92, 100000081, '2016-09-29 10:43:26', 'Student', 'Logged in'),
(93, 100000081, '2016-09-29 10:46:48', 'Student', 'Logged out'),
(94, 1, '2016-09-29 10:47:56', 'Administrator', 'Logged out'),
(95, 2, '2016-09-29 10:48:02', 'Registrar', 'Logged in'),
(96, 2, '2016-09-29 10:48:22', 'Registrar', 'Logged out'),
(97, 1, '2016-09-29 10:48:29', 'Administrator', 'Logged in'),
(98, 100000088, '2016-09-29 10:50:11', 'Student', 'Logged out'),
(99, 100000073, '2016-09-29 10:50:18', 'Student', 'Logged in'),
(100, 100000073, '2016-09-29 11:01:04', 'Student', 'Logged out'),
(101, 100000090, '2016-09-29 11:02:07', 'Student', 'Logged out'),
(102, 100000091, '2016-09-29 11:06:07', 'Student', 'Logged out'),
(103, 100000086, '2016-09-29 11:06:17', 'Student', 'Logged in'),
(104, 100000086, '2016-09-29 11:06:53', 'Student', 'Logged out'),
(105, 100000073, '2016-09-29 11:07:02', 'Student', 'Logged in'),
(106, 100000073, '2016-09-29 11:07:20', 'Student', 'Logged out'),
(107, 100000092, '2016-09-29 11:30:44', 'Student', 'Logged out'),
(108, 100000093, '2016-09-29 11:34:39', 'Student', 'Logged out'),
(109, 100000073, '2016-09-29 11:36:12', 'Student', 'Logged in'),
(110, 100000073, '2016-09-29 11:36:17', 'Student', 'Logged out'),
(111, 100000094, '2016-09-29 11:37:59', 'Student', 'Logged out'),
(112, 100000094, '2016-09-29 11:38:09', 'Student', 'Logged in'),
(113, 100000094, '2016-09-29 11:40:37', 'Student', 'Logged out'),
(114, 100000095, '2016-09-29 11:42:30', 'Student', 'Logged out'),
(115, 100000096, '2016-09-29 11:44:16', 'Student', 'Logged out'),
(116, 100000097, '2016-09-29 11:46:46', 'Student', 'Logged out'),
(117, 100000098, '2016-09-29 11:57:01', 'Student', 'Logged out'),
(118, 100000099, '2016-09-29 11:58:45', 'Student', 'Logged out'),
(119, 100000099, '2016-09-29 11:58:52', 'Student', 'Logged in'),
(120, 100000099, '2016-09-29 11:58:58', 'Student', 'Logged out'),
(121, 1000000100, '2016-09-29 12:01:01', 'Student', 'Logged out'),
(122, 1000000101, '2016-09-29 12:02:54', 'Student', 'Logged out'),
(123, 1000000102, '2016-09-29 12:04:18', 'Student', 'Logged out'),
(124, 1000000103, '2016-09-29 12:07:27', 'Student', 'Logged out'),
(125, 1000000104, '2016-09-29 12:08:50', 'Student', 'Logged out'),
(126, 1000000105, '2016-09-29 12:10:44', 'Student', 'Logged out'),
(127, 1000000106, '2016-09-29 12:13:13', 'Student', 'Logged out'),
(128, 1000000107, '2016-09-29 12:14:57', 'Student', 'Logged out'),
(129, 1000000108, '2016-09-29 12:16:53', 'Student', 'Logged out'),
(130, 1, '2016-09-29 16:37:39', 'Administrator', 'Logged in'),
(131, 1, '2016-09-29 16:38:17', 'Administrator', 'Logged out'),
(132, 1, '2016-09-29 16:38:21', 'Administrator', 'Logged in'),
(133, 1, '2016-09-29 16:39:19', 'Administrator', 'Logged out'),
(134, 1, '2016-09-29 16:39:23', 'Administrator', 'Logged in'),
(135, 1000000109, '2016-09-29 16:49:15', 'Student', 'Logged out'),
(136, 100000073, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(137, 100000073, '2016-09-29 17:07:59', 'Student', 'Logged out'),
(138, 100000073, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(139, 1, '2016-09-29 17:53:03', 'Administrator', 'Logged in'),
(140, 100000073, '2016-09-29 18:09:53', 'Student', 'Logged out'),
(141, 1000000110, '2016-09-29 18:15:25', 'Student', 'Logged out'),
(142, 1000000111, '2016-09-29 18:19:26', 'Student', 'Logged out'),
(143, 1000000112, '2016-09-29 18:22:58', 'Student', 'Logged out'),
(144, 1000000113, '2016-09-29 18:25:01', 'Student', 'Logged out'),
(145, 1000000114, '2016-09-29 18:26:55', 'Student', 'Logged out'),
(146, 1000000115, '2016-09-29 18:28:09', 'Student', 'Logged out'),
(147, 1000000116, '2016-09-29 18:29:09', 'Student', 'Logged out'),
(148, 1000000117, '2016-09-29 18:31:08', 'Student', 'Logged out'),
(149, 1000000118, '2016-09-29 18:32:45', 'Student', 'Logged out'),
(150, 1000000119, '2016-09-29 18:34:05', 'Student', 'Logged out'),
(151, 1000000120, '2016-09-29 18:43:34', 'Student', 'Logged out'),
(152, 1000000121, '2016-09-29 18:44:47', 'Student', 'Logged out'),
(153, 1000000122, '2016-09-29 18:45:53', 'Student', 'Logged out'),
(154, 1000000123, '2016-09-29 18:50:13', 'Student', 'Logged out'),
(155, 1000000124, '2016-09-29 18:51:24', 'Student', 'Logged out'),
(156, 1000000125, '2016-09-29 18:52:34', 'Student', 'Logged out'),
(157, 1000000126, '2016-09-29 18:53:39', 'Student', 'Logged out'),
(158, 1000000120, '2016-09-29 18:53:49', 'Student', 'Logged in'),
(159, 1000000120, '2016-09-29 18:54:03', 'Student', 'Logged out'),
(160, 1000000127, '2016-09-29 18:55:34', 'Student', 'Logged out'),
(161, 1000000128, '2016-09-29 18:56:39', 'Student', 'Logged out'),
(162, 1000000129, '2016-09-29 18:57:42', 'Student', 'Logged out'),
(163, 1000000130, '2016-09-29 18:59:04', 'Student', 'Logged out'),
(164, 1, '2016-09-29 19:07:28', 'Administrator', 'Logged in'),
(165, 1000000121, '2016-09-29 19:07:43', 'Student', 'Logged in'),
(166, 1000000121, '2016-09-29 19:07:50', 'Student', 'Logged out'),
(167, 1000000131, '2016-09-29 19:08:04', 'Student', 'Logged in'),
(168, 1000000131, '2016-09-29 19:08:39', 'Student', 'Logged out'),
(169, 1000000121, '2016-09-29 19:14:18', 'Student', 'Logged in'),
(170, 1000000121, '2016-09-29 19:15:12', 'Student', 'Logged out'),
(171, 1000000132, '2016-09-29 19:17:36', 'Student', 'Logged out'),
(172, 1, '2016-09-29 23:50:06', 'Administrator', 'Logged in'),
(173, 1, '2016-09-29 23:54:23', 'Administrator', 'Logged in'),
(174, 1000000133, '2016-09-30 01:34:28', 'Student', 'Logged out'),
(175, 1000000134, '2016-09-30 01:38:26', 'Student', 'Logged out'),
(176, 1000000135, '2016-09-30 01:44:48', 'Student', 'Logged out'),
(177, 1, '2016-09-30 01:46:34', 'Administrator', 'Logged in'),
(178, 1, '2016-09-30 02:42:22', 'Administrator', 'Logged in'),
(179, 1000000136, '2016-09-30 02:50:21', 'Student', 'Logged out'),
(180, 1000000137, '2016-09-30 03:23:48', 'Student', 'Logged out'),
(181, 100000073, '2016-09-30 03:23:57', 'Student', 'Logged in'),
(182, 1, '2016-10-03 00:58:29', 'Administrator', 'Logged in'),
(183, 1, '2016-10-04 09:59:35', 'Administrator', 'Logged in'),
(184, 100000087, '2016-10-04 10:05:41', 'Student', 'Logged in'),
(185, 100000087, '2016-10-04 10:09:59', 'Student', 'Logged out'),
(186, 1000000139, '2016-10-04 10:43:22', 'Student', 'Logged out'),
(187, 1, '2016-10-04 14:20:22', 'Administrator', 'Logged in'),
(188, 1, '2016-10-04 23:35:32', 'Administrator', 'Logged in'),
(189, 1000000116, '2016-10-05 01:21:09', 'Student', 'Logged in'),
(190, 1, '2016-10-05 01:34:20', 'Administrator', 'Logged in'),
(191, 1000000116, '2016-10-05 02:30:47', 'Student', 'Logged out'),
(192, 1000000133, '2016-10-05 02:30:55', 'Student', 'Logged in'),
(193, 1, '2016-10-05 02:59:26', 'Administrator', 'Logged in'),
(194, 1000000133, '2016-10-05 03:36:18', 'Student', 'Logged in'),
(195, 1000000133, '2016-10-05 03:49:32', 'Student', 'Logged out'),
(196, 1000000140, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(197, 1000000140, '2016-10-05 06:50:22', 'Student', 'Logged out'),
(198, 100000077, '2016-10-05 06:50:30', 'Student', 'Logged in'),
(199, 100000077, '2016-10-05 06:51:25', 'Student', 'Logged out'),
(200, 1000000140, '2016-10-05 06:51:33', 'Student', 'Logged in'),
(201, 1000000140, '2016-10-05 06:52:38', 'Student', 'Logged out'),
(202, 1000000140, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(203, 1000000140, '2016-10-05 06:53:27', 'Student', 'Logged out'),
(204, 100000077, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(205, 100000077, '2016-10-05 06:59:20', 'Student', 'Logged out'),
(206, 1000000140, '2016-10-05 06:59:49', 'Student', 'Logged in'),
(207, 1000000140, '2016-10-05 07:02:13', 'Student', 'Logged out'),
(208, 1, '2016-10-05 08:55:14', 'Administrator', 'Logged in'),
(209, 1000000121, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(210, 1000000121, '2016-10-05 09:28:07', 'Student', 'Logged out'),
(211, 1000000140, '2016-10-05 09:28:13', 'Student', 'Logged in'),
(212, 1000000142, '2016-10-06 08:40:16', 'Student', 'Logged out'),
(213, 1, '2016-10-06 08:44:09', 'Administrator', 'Logged in'),
(214, 1000000143, '2016-10-06 08:44:29', 'Student', 'Logged out'),
(215, 1000000144, '2016-10-06 08:48:51', 'Student', 'Logged out'),
(216, 1000000144, '2016-10-06 08:49:01', 'Student', 'Logged in'),
(217, 1000000144, '2016-10-06 08:49:10', 'Student', 'Logged out'),
(218, 1000000145, '2016-10-06 08:57:58', 'Student', 'Logged out'),
(219, 100000073, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(220, 100000073, '2016-10-06 09:05:17', 'Student', 'Logged out'),
(221, 100000086, '2016-10-06 09:07:20', 'Student', 'Logged in'),
(222, 100000086, '2016-10-06 09:08:00', 'Student', 'Logged out'),
(223, 100000096, '2016-10-06 09:08:37', 'Student', 'Logged in'),
(224, 100000096, '2016-10-06 09:26:06', 'Student', 'Logged out'),
(225, 100000096, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(226, 100000096, '2016-10-06 09:26:27', 'Student', 'Logged out'),
(227, 100000096, '2016-10-06 09:26:33', 'Student', 'Logged in'),
(228, 1, '2016-10-06 14:03:43', 'Administrator', 'Logged in'),
(229, 1000000146, '2016-10-06 14:16:14', 'Student', 'Logged out'),
(230, 100000073, '2016-10-06 14:16:25', 'Student', 'Logged in'),
(231, 1, '2016-10-06 14:16:41', 'Administrator', 'Logged in'),
(232, 100000073, '2016-10-06 14:45:24', 'Student', 'Logged out'),
(233, 100000073, '2016-10-06 14:49:12', 'Student', 'Logged in'),
(234, 100000073, '2016-10-06 15:20:54', 'Student', 'Logged out'),
(235, 100000096, '2016-10-06 15:21:07', 'Student', 'Logged in'),
(236, 100000096, '2016-10-06 15:29:37', 'Student', 'Logged out'),
(237, 100000096, '2016-10-06 15:29:57', 'Student', 'Logged in'),
(238, 100000096, '2016-10-06 15:31:13', 'Student', 'Logged out'),
(239, 100000096, '2016-10-06 15:50:34', 'Student', 'Logged in'),
(240, 1, '2016-10-07 00:26:28', 'Administrator', 'Logged in'),
(241, 1, '2016-10-07 01:09:04', 'Administrator', 'Logged in'),
(242, 100000073, '2016-10-07 01:17:39', 'Student', 'Logged in'),
(243, 100000073, '2016-10-07 01:20:53', 'Student', 'Logged out'),
(244, 1000000148, '2016-10-07 01:24:45', 'Student', 'Logged out'),
(245, 1000000149, '2016-10-07 01:40:59', 'Student', 'Logged out'),
(246, 100000096, '2016-10-07 01:41:53', 'Student', 'Logged in'),
(247, 100000096, '2016-10-07 02:24:12', 'Student', 'Logged out'),
(248, 1000000149, '2016-10-07 02:24:17', 'Student', 'Logged in'),
(249, 1000000149, '2016-10-07 06:27:56', 'Student', 'Logged out'),
(250, 1000000152, '2016-10-07 06:32:26', 'Student', 'Logged out'),
(251, 1000000153, '2016-10-07 06:34:59', 'Student', 'Logged out'),
(252, 1000000154, '2016-10-07 06:37:58', 'Student', 'Logged out'),
(253, 1000000155, '2016-10-07 06:39:39', 'Student', 'Logged out'),
(254, 1000000156, '2016-10-07 06:41:05', 'Student', 'Logged out'),
(255, 1000000157, '2016-10-07 06:44:26', 'Student', 'Logged out'),
(256, 1000000158, '2016-10-07 06:46:32', 'Student', 'Logged out'),
(257, 1000000159, '2016-10-07 06:48:24', 'Student', 'Logged out'),
(258, 1000000160, '2016-10-07 06:50:16', 'Student', 'Logged out'),
(259, 1000000161, '2016-10-07 07:14:03', 'Student', 'Logged out'),
(260, 1000000162, '2016-10-07 07:16:34', 'Student', 'Logged out'),
(261, 1000000140, '2016-10-07 07:16:48', 'Student', 'Logged in'),
(262, 1000000140, '2016-10-07 07:30:19', 'Student', 'Logged out'),
(263, 1000000140, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(264, 1000000140, '2016-10-07 07:31:20', 'Student', 'Logged out'),
(265, 1000000161, '2016-10-07 07:31:28', 'Student', 'Logged in'),
(266, 1000000161, '2016-10-07 07:42:46', 'Student', 'Logged out'),
(267, 1000000161, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(268, 1000000163, '2016-10-07 13:17:15', 'Student', 'Logged out'),
(269, 1000000164, '2016-10-07 13:20:44', 'Student', 'Logged out'),
(270, 1000000165, '2016-10-07 13:26:27', 'Student', 'Logged out'),
(271, 1000000166, '2016-10-07 13:30:09', 'Student', 'Logged out'),
(272, 1000000167, '2016-10-07 13:34:10', 'Student', 'Logged out'),
(273, 1000000168, '2016-10-07 13:37:31', 'Student', 'Logged out'),
(274, 1000000169, '2016-10-07 13:40:41', 'Student', 'Logged out'),
(275, 1000000170, '2016-10-07 13:42:53', 'Student', 'Logged out'),
(276, 1000000171, '2016-10-07 13:48:06', 'Student', 'Logged out'),
(277, 1000000172, '2016-10-07 13:50:37', 'Student', 'Logged out'),
(278, 1000000173, '2016-10-07 13:55:45', 'Student', 'Logged out'),
(279, 1000000174, '2016-10-07 14:01:20', 'Student', 'Logged out'),
(280, 1000000175, '2016-10-07 14:04:13', 'Student', 'Logged out'),
(281, 1000000176, '2016-10-07 14:06:41', 'Student', 'Logged out'),
(282, 1000000177, '2016-10-07 14:12:44', 'Student', 'Logged out'),
(283, 1, '2016-10-07 14:12:57', 'Administrator', 'Logged in'),
(284, 1000000140, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(285, 1000000140, '2016-10-07 14:17:04', 'Student', 'Logged out'),
(286, 1000000178, '2016-10-07 14:24:09', 'Student', 'Logged out'),
(287, 1000000179, '2016-10-07 14:28:17', 'Student', 'Logged out'),
(288, 1000000180, '2016-10-07 14:32:34', 'Student', 'Logged out'),
(289, 1000000181, '2016-10-07 14:34:47', 'Student', 'Logged out'),
(290, 1000000182, '2016-10-07 14:56:22', 'Student', 'Logged out'),
(291, 1000000140, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(292, 1000000140, '2016-10-07 15:01:26', 'Student', 'Logged out'),
(293, 1000000183, '2016-10-07 15:03:38', 'Student', 'Logged out'),
(294, 1000000184, '2016-10-07 15:07:07', 'Student', 'Logged out'),
(295, 1000000185, '2016-10-07 15:16:27', 'Student', 'Logged out'),
(296, 1000000186, '2016-10-07 15:18:29', 'Student', 'Logged out'),
(297, 1000000187, '2016-10-07 15:19:53', 'Student', 'Logged out'),
(298, 1000000188, '2016-10-07 15:21:13', 'Student', 'Logged out'),
(299, 1000000189, '2016-10-07 15:22:55', 'Student', 'Logged out'),
(300, 1000000190, '2016-10-07 15:24:47', 'Student', 'Logged out'),
(301, 1000000191, '2016-10-07 15:26:21', 'Student', 'Logged out'),
(302, 1000000192, '2016-10-07 15:28:19', 'Student', 'Logged out'),
(303, 1000000193, '2016-10-07 15:29:59', 'Student', 'Logged out'),
(304, 1000000194, '2016-10-07 15:31:22', 'Student', 'Logged out'),
(305, 1000000195, '2016-10-07 15:33:16', 'Student', 'Logged out'),
(306, 1000000196, '2016-10-07 15:34:57', 'Student', 'Logged out'),
(307, 1000000197, '2016-10-07 15:36:17', 'Student', 'Logged out'),
(308, 1000000198, '2016-10-07 15:37:54', 'Student', 'Logged out'),
(309, 1000000199, '2016-10-07 15:39:23', 'Student', 'Logged out'),
(310, 1000000200, '2016-10-07 15:41:08', 'Student', 'Logged out'),
(311, 1000000201, '2016-10-07 15:50:13', 'Student', 'Logged out'),
(312, 1000000167, '2016-10-07 15:54:23', 'Student', 'Logged in'),
(313, 1000000167, '2016-10-07 15:55:46', 'Student', 'Logged out'),
(314, 1000000166, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(315, 1000000166, '2016-10-07 15:58:22', 'Student', 'Logged out'),
(316, 1000000168, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(317, 1000000168, '2016-10-07 15:59:13', 'Student', 'Logged out'),
(318, 1000000174, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(319, 1000000174, '2016-10-07 16:00:36', 'Student', 'Logged out'),
(320, 1000000201, '2016-10-07 16:00:45', 'Student', 'Logged in'),
(321, 1000000201, '2016-10-07 16:04:18', 'Student', 'Logged out'),
(322, 1000000201, '2016-10-07 16:04:26', 'Student', 'Logged in'),
(323, 1000000201, '2016-10-07 16:12:13', 'Student', 'Logged out'),
(324, 100000098, '2016-10-07 16:12:21', 'Student', 'Logged in'),
(325, 100000098, '2016-10-07 16:21:49', 'Student', 'Logged out'),
(326, 100000077, '0000-00-00 00:00:00', 'Student', 'Logged in'),
(327, 100000077, '2016-10-07 16:23:43', 'Student', 'Logged out'),
(328, 1000000102, '2016-10-07 16:25:15', 'Student', 'Logged in'),
(329, 1000000102, '2016-10-07 17:35:17', 'Student', 'Logged out'),
(330, 1000000100, '2016-10-07 17:36:28', 'Student', 'Logged in'),
(331, 1000000100, '2016-10-07 18:14:44', 'Student', 'Logged out'),
(332, 100000098, '2016-10-07 18:14:54', 'Student', 'Logged in'),
(333, 100000098, '2016-10-07 18:24:59', 'Student', 'Logged out'),
(334, 1000000201, '2016-10-07 18:25:05', 'Student', 'Logged in'),
(335, 1000000201, '2016-10-07 18:32:57', 'Student', 'Logged out'),
(336, 1000000156, '2016-10-07 18:33:06', 'Student', 'Logged in'),
(337, 1000000156, '2016-10-07 19:07:05', 'Student', 'Logged out'),
(338, 100000098, '2016-10-07 19:07:23', 'Student', 'Logged in'),
(339, 1000000217, '2024-01-24 10:49:24', 'Student', 'Logged out'),
(340, 2, '2024-01-24 10:50:40', 'Administrator', 'Logged out'),
(341, 1, '2024-01-24 10:50:45', 'Administrator', 'Logged in'),
(342, 2, '2024-01-24 11:31:17', 'Administrator', 'Logged out'),
(343, 2, '2024-01-24 11:31:36', 'Administrator', 'Logged in'),
(344, 1000000202, '2024-01-24 11:41:54', 'Student', 'Logged out'),
(345, 1000000203, '2024-01-24 11:45:47', 'Student', 'Logged out'),
(346, 1000000203, '2024-01-24 11:45:56', 'Student', 'Logged in'),
(347, 1000000209, '2024-01-24 14:20:52', 'Student', 'Logged out'),
(348, 1, '2024-01-25 02:33:56', 'Administrator', 'Logged in'),
(349, 1000000204, '2024-01-25 03:06:24', 'Student', 'Logged out'),
(350, 1000000208, '2024-01-25 03:29:00', 'Student', 'Logged out'),
(351, 1000000204, '2024-01-25 03:29:02', 'Student', 'Logged in'),
(352, 1000000204, '2024-01-25 03:57:46', 'Student', 'Logged out'),
(353, 1000000208, '2024-01-25 04:22:33', 'Student', 'Logged out'),
(354, 1000000205, '2024-01-25 04:22:35', 'Student', 'Logged in'),
(355, 1000000208, '2024-01-25 04:26:49', 'Student', 'Logged out'),
(356, 1000000205, '2024-01-25 04:26:51', 'Student', 'Logged in'),
(357, 1000000208, '2024-01-25 04:35:16', 'Student', 'Logged out'),
(358, 1000000205, '2024-01-25 04:35:20', 'Student', 'Logged in'),
(359, 1000000205, '2024-01-25 04:36:28', 'Student', 'Logged out'),
(360, 1000000205, '2024-01-25 04:36:30', 'Student', 'Logged in'),
(361, 1000000205, '2024-01-25 07:17:56', 'Student', 'Logged in'),
(362, 1000000211, '2024-01-25 07:30:21', 'Student', 'Logged out'),
(363, 1000000205, '2024-01-25 07:30:24', 'Student', 'Logged in'),
(364, 1000000208, '2024-01-25 07:37:30', 'Student', 'Logged out'),
(365, 1000000205, '2024-01-25 07:37:33', 'Student', 'Logged in'),
(366, 1000000208, '2024-01-25 07:44:24', 'Student', 'Logged out'),
(367, 1000000205, '2024-01-25 07:44:26', 'Student', 'Logged in'),
(368, 1000000208, '2024-01-25 07:47:07', 'Student', 'Logged out'),
(369, 1000000210, '2024-01-25 07:52:19', 'Student', 'Logged out'),
(370, 1000000210, '2024-01-25 07:52:24', 'Student', 'Logged in'),
(371, 1000000208, '2024-01-25 08:10:22', 'Student', 'Logged out'),
(372, 1000000210, '2024-01-25 08:10:25', 'Student', 'Logged in'),
(373, 1000000208, '2024-01-25 08:12:13', 'Student', 'Logged out'),
(374, 1000000210, '2024-01-25 08:12:16', 'Student', 'Logged in'),
(375, 1000000213, '2024-01-25 08:24:28', 'Student', 'Logged out'),
(376, 1000000210, '2024-01-25 08:24:30', 'Student', 'Logged in'),
(377, 1000000210, '2024-01-25 08:24:50', 'Student', 'Logged out'),
(378, 1000000208, '2024-01-25 08:37:31', 'Student', 'Logged out'),
(379, 1000000217, '2024-01-25 08:37:33', 'Student', 'Logged in'),
(380, 1000000217, '2024-01-25 09:23:14', 'Student', 'Logged out'),
(381, 1000000217, '2024-01-25 09:23:17', 'Student', 'Logged in'),
(382, 1000000217, '2024-01-25 09:42:59', 'Student', 'Logged out'),
(383, 1000000217, '2024-01-25 09:43:11', 'Student', 'Logged in'),
(384, 1000000217, '2024-01-25 09:44:39', 'Student', 'Logged out'),
(385, 1000000208, '2024-01-25 09:52:28', 'Student', 'Logged out'),
(386, 1000000223, '2024-01-25 09:52:33', 'Student', 'Logged in'),
(387, 1000000223, '2024-01-25 09:52:45', 'Student', 'Logged out');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `PAYMENTID` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_LEVEL` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `ENTRANCEFEE` double NOT NULL,
  `TOTALUNITS` double NOT NULL,
  `TOTALSEMESTER` double NOT NULL,
  `PARTIALPAYMENT` double NOT NULL,
  `BALANCE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`PAYMENTID`, `IDNO`, `COURSE_ID`, `COURSE_LEVEL`, `SEMESTER`, `ENTRANCEFEE`, `TOTALUNITS`, `TOTALSEMESTER`, `PARTIALPAYMENT`, `BALANCE`) VALUES
(45, 1000000205, 60, 1, 'First', 320, 0, 320, 0, 0),
(46, 1000000205, 60, 1, 'First', 320, 0, 320, 0, 0),
(47, 1000000205, 60, 1, 'First', 320, 0, 320, 0, 0),
(48, 1000000205, 60, 1, 'Second', 320, 0, 320, 0, 0),
(49, 1000000210, 60, 1, 'First', 320, 0, 320, 0, 0),
(50, 1000000210, 60, 1, 'First', 320, 0, 320, 0, 0),
(51, 1000000210, 60, 1, 'First', 320, 0, 320, 0, 0),
(52, 1000000210, 60, 1, 'First', 320, 0, 320, 0, 0),
(53, 1000000210, 60, 1, 'First', 320, 0, 320, 0, 0),
(54, 1000000210, 60, 1, 'First', 320, 0, 320, 0, 0),
(55, 1000000217, 60, 1, 'First', 320, 0, 320, 0, 0),
(56, 1000000217, 60, 1, 'First', 320, 0, 320, 0, 0),
(57, 1000000217, 60, 1, 'Second', 320, 0, 320, 0, 0),
(58, 1000000217, 64, 2, 'First', 320, 0, 320, 0, 0),
(59, 1000000217, 64, 2, 'First', 320, 0, 320, 0, 0),
(60, 1000000223, 60, 1, 'First', 320, 0, 320, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblschedule`
--

CREATE TABLE `tblschedule` (
  `schedID` int(11) NOT NULL,
  `TIME_FROM` varchar(90) NOT NULL,
  `TIME_TO` varchar(90) NOT NULL,
  `sched_time` varchar(30) NOT NULL,
  `sched_day` varchar(30) NOT NULL,
  `sched_semester` varchar(30) NOT NULL,
  `sched_sy` varchar(30) NOT NULL,
  `sched_room` varchar(30) NOT NULL,
  `SECTION` varchar(30) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `INST_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblschedule`
--

INSERT INTO `tblschedule` (`schedID`, `TIME_FROM`, `TIME_TO`, `sched_time`, `sched_day`, `sched_semester`, `sched_sy`, `sched_room`, `SECTION`, `COURSE_ID`, `SUBJ_ID`, `INST_ID`) VALUES
(260, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'First', '2016-2017', '5', '1', 21, 176, 2),
(261, '09:30 am', '10:30 am', '09:30 am-10:30 am', 'MWF', 'First', '2016-2017', '1', '1', 21, 177, 11),
(262, '10:30 am', '11:30 am', '10:30 am-11:30 am', 'MWF', 'First', '2016-2017', '19', '1', 21, 178, 6),
(263, '12:30 pm', '01:30 pm', '12:30 pm-01:30 pm', 'MWF', 'First', '2016-2017', '7', '1', 21, 179, 3),
(264, '07:30 am', '09:30 am', '07:30 am-09:30 am', 'T', 'First', '2016-2017', '4', '1', 21, 181, 1),
(265, '10:30 am', '12:00 pm', '10:30 am-12:00 pm', 'TTH', 'First', '2016-2017', '1', '1', 21, 182, 8),
(267, '03:30 pm', '04:30 pm', '03:30 pm-04:30 pm', 'MWF', 'First', '2016-2017', '20', '1', 21, 180, 5),
(268, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'Second', '2016-2017', '10', '1', 21, 206, 2),
(269, '08:30 am', '09:30 am', '08:30 am-09:30 am', 'MWF', 'Second', '2016-2017', '5', '1', 21, 207, 11),
(270, '10:30 am', '11:30 am', '10:30 am-11:30 am', 'MWF', 'Second', '2016-2017', '3', '1', 21, 208, 6),
(271, '12:30 pm', '02:30 pm', '12:30 pm-02:30 pm', 'M', 'Second', '2016-2017', '2', '1', 21, 212, 7),
(272, '03:30 pm', '04:30 pm', '03:30 pm-04:30 pm', 'MWF', 'Second', '2016-2017', '9', '1', 21, 209, 8),
(273, '07:30 am', '09:00 am', '07:30 am-09:00 am', 'TTH', 'Second', '2016-2017', '9', '1', 21, 213, 8),
(274, '09:00 am', '10:30 am', '09:00 am-10:30 am', 'TTH', 'Second', '2016-2017', '10', '1', 21, 210, 5),
(275, '01:30 pm', '03:00 pm', '01:30 pm-03:00 pm', 'TTH', 'Second', '2016-2017', '9', '1', 21, 211, 5),
(276, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'First', '2016-2017', '17', '1', 57, 183, 5),
(277, '08:30 am', '09:30 am', '08:30 am-09:30 am', 'MWF', 'First', '2016-2017', '9', '1', 57, 184, 14),
(278, '10:30 am', '11:30 am', '10:30 am-11:30 am', 'MWF', 'First', '2016-2017', '4', '1', 57, 185, 13),
(279, '11:30 am', '12:30 pm', '11:30 am-12:30 pm', 'MWF', 'First', '2016-2017', '8', '1', 57, 186, 6),
(280, '01:30 pm', '02:30 pm', '01:30 pm-02:30 pm', 'MWF', 'First', '2016-2017', '14', '1', 57, 187, 5),
(281, '07:30 am', '09:00 am', '07:30 am-09:00 am', 'TTH', 'First', '2016-2017', '20', '1', 57, 188, 15),
(282, '09:00 am', '10:30 am', '09:00 am-10:30 am', 'TTH', 'First', '2016-2017', '1', '1', 57, 189, 2),
(283, '01:30 pm', '03:30 pm', '01:30 pm-03:30 pm', 'T', 'First', '2016-2017', '5', '1', 57, 190, 7),
(284, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'Second', '2016-2017', '6', '1', 57, 215, 16),
(285, '08:30 am', '09:30 am', '08:30 am-09:30 am', 'MWF', 'Second', '2016-2017', '1', '1', 57, 216, 14),
(286, '10:30 am', '11:30 am', '10:30 am-11:30 am', 'MWF', 'Second', '2016-2017', '19', '1', 57, 217, 17),
(287, '11:30 am', '12:30 pm', '11:30 am-12:30 pm', 'MWF', 'Second', '2016-2017', '2', '1', 57, 218, 9),
(288, '01:30 pm', '02:30 pm', '01:30 pm-02:30 pm', 'MWF', 'Second', '2016-2017', '11', '1', 57, 219, 5),
(289, '03:30 pm', '04:30 pm', '03:30 pm-04:30 pm', 'MWF', 'Second', '2016-2017', '1', '1', 57, 220, 18),
(290, '09:00 am', '10:30 am', '09:00 am-10:30 am', 'TTH', 'Second', '2016-2017', '6', '1', 57, 221, 19),
(291, '03:00 pm', '05:00 pm', '03:00 pm-05:00 pm', 'TH', 'Second', '2016-2017', '2', '1', 57, 222, 7),
(292, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'First', '2016-2017', '2', '1', 58, 191, 8),
(293, '08:30 am', '09:30 am', '08:30 am-09:30 am', 'MWF', 'First', '2016-2017', '12', '1', 58, 192, 6),
(294, '10:30 am', '11:30 am', '10:30 am-11:30 am', 'MWF', 'First', '2016-2017', '6', '', 58, 193, 5),
(295, '11:30 am', '12:30 pm', '11:30 am-12:30 pm', 'MWF', 'First', '2016-2017', '1', '1', 58, 194, 14),
(296, '01:30 pm', '02:30 pm', '01:30 pm-02:30 pm', 'MWF', 'First', '2016-2017', '7', '1', 58, 195, 1),
(297, '07:30 am', '09:00 am', '07:30 am-09:00 am', 'TTH', 'First', '2016-2017', '1', '1', 58, 196, 20),
(298, '04:30 pm', '06:00 pm', '04:30 pm-06:00 pm', 'TTH', 'First', '2016-2017', '15', '1', 58, 197, 21),
(299, '03:30 pm', '04:30 pm', '03:30 pm-04:30 pm', 'MWF', 'First', '2016-2017', '2', '1', 58, 198, 9),
(300, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'Second', '2016-2017', '15', '1', 58, 231, 1),
(301, '09:30 am', '10:30 am', '09:30 am-10:30 am', 'MWF', 'Second', '2016-2017', '5', '1', 58, 232, 22),
(302, '01:30 pm', '02:30 pm', '01:30 pm-02:30 pm', 'MWF', 'Second', '2016-2017', '10', '1', 58, 235, 20),
(303, '02:30 pm', '03:30 pm', '02:30 pm-03:30 pm', 'MWF', 'Second', '2016-2017', '16', '1', 58, 236, 5),
(304, '04:30 pm', '05:30 pm', '04:30 pm-05:30 pm', 'MWF', 'Second', '2016-2017', '11', '1', 58, 233, 5),
(305, '07:30 am', '09:00 am', '07:30 am-09:00 am', 'TTH', 'Second', '2016-2017', '5', '1', 58, 234, 22),
(306, '09:00 am', '10:30 am', '09:00 am-10:30 am', 'TTH', 'Second', '2016-2017', '17', '1', 58, 237, 22),
(307, '01:30 pm', '03:00 pm', '01:30 pm-03:00 pm', 'TTH', 'Second', '2016-2017', '8', '1', 58, 238, 9),
(308, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'First', '2016-2017', '12', '1', 59, 199, 14),
(309, '09:30 am', '10:30 am', '09:30 am-10:30 am', 'MWF', 'First', '2016-2017', '9', '1', 59, 200, 22),
(310, '01:30 pm', '02:30 pm', '01:30 pm-02:30 pm', 'MWF', 'First', '2016-2017', '12', '1', 59, 201, 20),
(311, '03:30 pm', '04:30 pm', '03:30 pm-04:30 pm', 'MWF', 'First', '2016-2017', '19', '1', 59, 202, 19),
(312, '04:30 pm', '05:30 pm', '04:30 pm-05:30 pm', 'MWF', 'First', '2016-2017', '5', '1', 59, 203, 22),
(313, '09:00 am', '10:30 am', '09:00 am-10:30 am', 'TTH', 'First', '2016-2017', '9', '1', 59, 204, 23),
(314, '01:30 pm', '03:00 pm', '01:30 pm-03:00 pm', 'TTH', 'First', '2016-2017', '12', '1', 59, 205, 22),
(315, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'Second', '2016-2017', '18', '1', 59, 246, 23),
(316, '09:30 am', '10:30 am', '09:30 am-10:30 am', 'MWF', 'Second', '2016-2017', '7', '1', 59, 247, 22),
(317, '10:30 am', '11:30 am', '10:30 am-11:30 am', 'MWF', 'Second', '2016-2017', '9', '1', 59, 248, 5),
(318, '09:00 am', '10:30 am', '09:00 am-10:30 am', 'TTH', 'Second', '2016-2017', '8', '1', 59, 249, 9),
(319, '10:30 am', '12:00 pm', '10:30 am-12:00 pm', 'TTH', 'Second', '2016-2017', '15', '1', 59, 250, 22),
(320, '01:30 pm', '03:00 pm', '01:30 pm-03:00 pm', 'TTH', 'Second', '2016-2017', '10', '1', 59, 251, 22),
(321, '07:30 am', '09:00 am', '07:30 am-09:00 am', 'TTH', 'First', '2016-2017', '3', '1', 42, 79, 24),
(322, '09:00 am', '11:00 am', '09:00 am-11:00 am', 'TH', 'First', '2016-2017', '6', '1', 42, 85, 7),
(323, '01:30 pm', '02:30 pm', '01:30 pm-02:30 pm', 'MWF', 'First', '2016-2017', '13', '1', 42, 78, 3),
(324, '04:30 pm', '05:30 pm', '04:30 pm-05:30 pm', 'MWF', 'First', '2016-2017', '2', '1', 42, 86, 8),
(325, '01:30 pm', '03:00 pm', '01:30 pm-03:00 pm', 'TTH', 'First', '2016-2017', '1', '1', 42, 81, 6),
(326, '04:30 pm', '06:00 pm', '04:30 pm-06:00 pm', 'TTH', 'First', '2016-2017', '4', '1', 42, 83, 24),
(327, '07:30 am', '09:30 am', '07:30 am-09:30 am', 'W', 'First', '2016-2017', '2', '1', 42, 85, 7),
(328, '07:30 am', '09:30 am', '07:30 am-09:30 am', 'W', 'Second', '2016-2017', '2', '1', 42, 142, 7),
(329, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'First', '2016-2017', '9', '1', 42, 80, 11),
(330, '10:30 am', '11:30 am', '10:30 am-11:30 am', 'MWF', 'Second', '2016-2017', '8', '1', 42, 135, 24),
(331, '01:30 pm', '02:30 pm', '01:30 pm-02:30 pm', 'MWF', 'Second', '2016-2017', '4', '1', 42, 136, 11),
(332, '02:30 pm', '03:30 pm', '02:30 pm-03:30 pm', 'MWF', 'Second', '2016-2017', '7', '1', 42, 137, 9),
(333, '04:30 pm', '05:30 pm', '04:30 pm-05:30 pm', 'MWF', 'Second', '2016-2017', '8', '1', 42, 138, 25),
(334, '07:30 am', '09:00 am', '07:30 am-09:00 am', 'TTH', 'Second', '2016-2017', '10', '1', 42, 139, 26),
(335, '10:30 am', '12:00 pm', '10:30 am-12:00 pm', 'TTH', 'Second', '2016-2017', '13', '1', 42, 140, 18),
(336, '01:30 pm', '03:00 pm', '01:30 pm-03:00 pm', 'TTH', 'Second', '2016-2017', '13', '1', 42, 141, 8),
(337, '03:00 pm', '04:30 pm', '03:00 pm-04:30 pm', 'TTH', 'Second', '2016-2017', '14', '1', 42, 143, 8),
(338, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'First', '2016-2017', '20', '1', 43, 90, 23),
(339, '08:30 am', '09:30 am', '08:30 am-09:30 am', 'MWF', 'First', '2016-2017', '2', '1', 43, 89, 18),
(340, '10:30 am', '11:30 am', '10:30 am-11:30 am', 'MWF', 'First', '2016-2017', '2', '1', 43, 91, 2),
(341, '01:30 pm', '02:30 pm', '01:30 pm-02:30 pm', 'MWF', 'First', '2016-2017', '6', '1', 43, 95, 6),
(342, '03:30 pm', '05:30 pm', '03:30 pm-05:30 pm', 'M', 'First', '2016-2017', '1', '1', 43, 96, 7),
(343, '09:00 am', '10:30 am', '09:00 am-10:30 am', 'MWF', 'First', '2016-2017', '8', '1', 43, 92, 8),
(344, '10:30 am', '12:00 pm', '10:30 am-12:00 pm', 'TTH', 'First', '2016-2017', '5', '1', 43, 87, 24),
(345, '01:30 pm', '03:00 pm', '01:30 pm-03:00 pm', 'TTH', 'First', '2016-2017', '11', '1', 43, 94, 24),
(346, '03:00 pm', '04:00 pm', '03:00 pm-04:00 pm', 'T', 'First', '2016-2017', '13', '1', 43, 93, 2),
(347, '04:30 pm', '06:00 pm', '04:30 pm-06:00 pm', 'TTH', 'First', '2016-2017', '1', '1', 43, 88, 11),
(348, '08:30 am', '09:30 am', '08:30 am-09:30 am', 'MWF', 'Second', '2016-2017', '17', '1', 31, 155, 24),
(349, '10:30 am', '11:30 am', '10:30 am-11:30 am', 'MWF', 'Second', '2016-2017', '20', '1', 43, 128, 8),
(350, '11:30 am', '12:30 pm', '11:30 am-12:30 pm', 'MWF', 'Second', '2016-2017', '18', '1', 43, 344, 2),
(351, '08:30 am', '09:30 am', '08:30 am-09:30 am', 'M', 'Second', '2016-2017', '12', '1', 43, 129, 24),
(352, '10:30 am', '12:00 pm', '10:30 am-12:00 pm', 'TTH', 'Second', '2016-2017', '19', '1', 43, 126, 2),
(353, '09:00 am', '10:30 am', '09:00 am-10:30 am', 'TTH', 'Second', '2016-2017', '2', '1', 43, 131, 11),
(354, '01:30 pm', '03:00 pm', '01:30 pm-03:00 pm', 'TTH', 'Second', '2016-2017', '3', '1', 43, 132, 12),
(355, '04:30 pm', '06:30 pm', '04:30 pm-06:30 pm', 'T', 'Second', '2016-2017', '3', '1', 43, 133, 7),
(356, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'First', '2016-2017', '4', '1', 44, 98, 12),
(357, '09:30 am', '10:30 am', '09:30 am-10:30 am', 'MWF', 'First', '2016-2017', '8', '1', 44, 105, 0),
(358, '09:30 am', '10:30 am', '09:30 am-10:30 am', 'MWF', 'First', '2016-2017', '8', '1', 44, 105, 0),
(359, '10:30 am', '11:30 am', '10:30 am-11:30 am', 'MWF', 'First', '2016-2017', '1', '1', 44, 106, 12),
(360, '01:30 pm', '02:30 pm', '01:30 pm-02:30 pm', 'MWF', 'First', '2016-2017', '2', '1', 44, 103, 26),
(361, '03:30 pm', '04:30 pm', '03:30 pm-04:30 pm', 'MWF', 'First', '2016-2017', '4', '1', 44, 104, 26),
(362, '05:30 pm', '06:30 pm', '05:30 pm-06:30 pm', 'F', 'First', '2016-2017', '5', '1', 44, 102, 2),
(363, '07:30 am', '09:00 am', '07:30 am-09:00 am', 'TTH', 'First', '2016-2017', '5', '1', 44, 99, 0),
(364, '09:30 am', '10:30 am', '09:30 am-10:30 am', 'MWF', 'First', '2016-2017', '17', '1', 44, 105, 27),
(365, '07:30 am', '09:00 am', '07:30 am-09:00 am', 'THH', 'First', '2016-2017', '6', '1', 44, 99, 2),
(366, '09:00 am', '10:30 am', '09:00 am-10:30 am', 'TTH', 'First', '2016-2017', '4', '1', 44, 100, 28),
(367, '12:00 pm', '01:30 pm', '12:00 pm-01:30 pm', 'TTH', 'First', '2016-2017', '2', '1', 44, 101, 0),
(369, '03:00 pm', '04:30 pm', '03:00 pm-04:30 pm', 'TTH', 'First', '2016-2017', '19', '1', 44, 107, 28),
(370, '04:30 pm', '05:30 pm', '04:30 pm-05:30 pm', 'MWF', 'Second', '2016-2017', '12', '1', 44, 118, 2),
(371, '07:30 am', '09:00 am', '07:30 am-09:00 am', 'TTH', 'Second', '2016-2017', '11', '1', 44, 119, 2),
(372, '09:00 am', '10:30 am', '09:00 am-10:30 am', 'T', 'Second', '2016-2017', '18', '1', 44, 120, 2),
(373, '01:30 pm', '03:00 pm', '01:30 pm-03:00 pm', 'TTH', 'Second', '2016-2017', '15', '1', 44, 116, 2),
(374, '03:00 pm', '04:30 pm', '03:00 pm-04:30 pm', 'TTH', 'Second', '2016-2017', '15', '1', 44, 122, 2),
(375, '01:30 pm', '03:00 pm', '01:30 pm-03:00 pm', 'TTH', 'Second', '2016-2017', '17', '1', 44, 123, 29),
(376, '04:30 pm', '06:00 pm', '04:30 pm-06:00 pm', 'TTH', 'Second', '2016-2017', '2', '1', 44, 124, 14),
(377, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'Second', '2016-2017', '16', '1', 44, 125, 26),
(378, '08:30 am', '09:30 am', '08:30 am-09:30 am', 'MWF', 'Second', '2016-2017', '10', '1', 44, 116, 2),
(379, '09:30 am', '10:30 am', '09:30 am-10:30 am', 'MWF', 'Second', '2016-2017', '2', '1', 44, 121, 18),
(380, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'First', '2016-2017', '1', '1', 45, 114, 28),
(381, '08:30 am', '09:30 am', '08:30 am-09:30 am', 'M', 'First', '2016-2017', '7', '1', 45, 109, 2),
(382, '10:30 am', '11:30 am', '10:30 am-11:30 am', 'WMF', 'First', '2016-2017', '5', '1', 45, 108, 28),
(383, '01:30 pm', '02:30 pm', '01:30 pm-02:30 pm', 'MWF', 'First', '2016-2017', '5', '1', 45, 111, 29),
(384, '07:30 am', '09:00 am', '07:30 am-09:00 am', 'TTH', 'First', '2016-2017', '4', '1', 45, 113, 23),
(385, '10:30 am', '12:00 am', '10:30 am-12:00 am', 'TTH', 'First', '2016-2017', '6', '1', 45, 110, 2),
(388, '03:00 pm', '04:30 pm', '03:00 pm-04:30 pm', 'TTH', 'First', '2016-2017', '5', '1', 21, 345, 30),
(390, '03:00 pm', '04:30 pm', '03:00 pm-04:30 pm', 'TTH', 'First', '2016-2017', '7', '1', 45, 144, 8),
(391, '08:30 am', '09:30 am', '08:30 am-09:30 am', 'M', 'Second', '2016-2017', '8', '1', 45, 115, 8),
(392, '12:00 pm', '01:30 pm', '12:00 pm-01:30 pm', 'TTH', 'First', '2016-2017', '3', '1', 42, 84, 13),
(393, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'First', '2016-2017', '7', '2', 42, 84, 13),
(394, '08:30 am', '09:30 am', '08:30 am-09:30 am', 'MWF', 'First', '2016-2017', '4', '2', 42, 79, 8),
(395, '10:30 am', '11:30 am', '10:30 am-11:30 am', 'MWF', 'First', '2016-2017', '7', '2', 42, 78, 1),
(396, '02:30 pm', '03:30 pm', '02:30 pm-03:30 pm', 'MWF', 'First', '2016-2017', '1', '2', 42, 80, 11),
(397, '04:30 pm', '05:30 pm', '04:30 pm-05:30 pm', 'MWF', 'First', '2016-2017', '1', '2', 42, 81, 12),
(398, '09:00 am', '10:30 am', '09:00 am-10:30 am', 'TTH', 'First', '2016-2017', '5', '2', 42, 78, 26),
(399, '07:30 am', '09:00 am', '07:30 am-09:00 am', 'TTH', 'First', '2016-2017', '7', '2', 42, 83, 28),
(402, '01:30 pm', '03:30 pm', '01:30 pm-03:30 pm', 'T', 'First', '2016-2017', '2', '2', 42, 85, 32),
(403, '04:30 pm', '06:00 pm', '04:30 pm-06:00 pm', 'TTH', 'First', '2016-2017', '5', '2', 42, 86, 8),
(404, '08:30 am', '09:30 am', '08:30 am-09:30 am', 'MWF', 'Second', '2016-2017', '6', '2', 42, 135, 28),
(405, '07:30 am', '09:00 am', '07:30 am-09:00 am', 'TTH', 'Second', '2016-2017', '8', '2', 42, 136, 11),
(406, '07:30 am', '08:30 am', '07:30 am-08:30 am', 'MWF', 'Second', '2016-2017', '8', '2', 42, 137, 6),
(407, '10:30 am', '11:30 am', '10:30 am-11:30 am', 'MWF', 'Second', '2016-2017', '10', '2', 42, 138, 25),
(408, '02:30 pm', '03:30 pm', '02:30 pm-03:30 pm', 'MWF', 'Second', '2016-2017', '4', '2', 42, 139, 26),
(409, '01:30 pm', '03:00 pm', '01:30 pm-03:00 pm', 'TTH', 'Second', '2016-2017', '6', '2', 42, 140, 18),
(410, '03:00 pm', '04:30 pm', '03:00 pm-04:30 pm', 'MWF', 'Second', '2016-2017', '3', '2', 42, 141, 31),
(411, '04:30 pm', '06:30 pm', '04:30 pm-06:30 pm', 'TH', 'Second', '2016-2017', '1', '2', 42, 142, 32),
(412, '09:30 am', '10:30 am', '09:30 am-10:30 am', 'MWF', 'Second', '2016-2017', '3', '2', 42, 143, 31);

-- --------------------------------------------------------

--
-- Table structure for table `tblsemester`
--

CREATE TABLE `tblsemester` (
  `SEMID` int(11) NOT NULL,
  `SEMESTER` varchar(90) NOT NULL,
  `SETSEM` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsemester`
--

INSERT INTO `tblsemester` (`SEMID`, `SEMESTER`, `SETSEM`) VALUES
(1, 'First', 1),
(2, 'Second', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblstuddetails`
--

CREATE TABLE `tblstuddetails` (
  `DETAIL_ID` int(11) NOT NULL,
  `GUARDIAN` varchar(255) NOT NULL,
  `GUARDIAN_ADDRESS` varchar(255) NOT NULL,
  `GCONTACT` varchar(40) NOT NULL,
  `IDNO` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstuddetails`
--

INSERT INTO `tblstuddetails` (`DETAIL_ID`, `GUARDIAN`, `GUARDIAN_ADDRESS`, `GCONTACT`, `IDNO`) VALUES
(134, 'John Doe', '', '0987654321', 1000000204),
(135, 'John Doe', '', '0987654321', 1000000205),
(136, 'John Doe', '', '0987654321', 1000000210),
(137, 'John Doe', '', '0987654321', 1000000217),
(138, 'John Doe', '', '123', 1000000223);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `S_ID` int(11) NOT NULL,
  `IDNO` int(20) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `LNAME` varchar(40) NOT NULL,
  `MNAME` varchar(40) NOT NULL,
  `SEX` varchar(10) NOT NULL DEFAULT 'Male',
  `BDAY` date NOT NULL,
  `BPLACE` text NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `AGE` int(30) NOT NULL,
  `NATIONALITY` varchar(40) NOT NULL,
  `RELIGION` varchar(255) NOT NULL,
  `CONTACT_NO` varchar(40) NOT NULL,
  `HOME_ADD` text NOT NULL,
  `ACC_USERNAME` varchar(255) NOT NULL,
  `ACC_PASSWORD` text NOT NULL,
  `student_status` text NOT NULL,
  `YEARLEVEL` int(11) NOT NULL,
  `STUDSECTION` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `STUDPHOTO` varchar(255) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SYEAR` varchar(30) NOT NULL,
  `NewEnrollees` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`S_ID`, `IDNO`, `FNAME`, `LNAME`, `MNAME`, `SEX`, `BDAY`, `BPLACE`, `STATUS`, `AGE`, `NATIONALITY`, `RELIGION`, `CONTACT_NO`, `HOME_ADD`, `ACC_USERNAME`, `ACC_PASSWORD`, `student_status`, `YEARLEVEL`, `STUDSECTION`, `COURSE_ID`, `STUDPHOTO`, `SEMESTER`, `SYEAR`, `NewEnrollees`) VALUES
(137, 1000000223, 'John Ronan', 'Ramos', 'C', 'Male', '2000-01-01', 'Caloocan City', 'Single', 0, 'Filipino', 'Catholic', '123', 'Caloocan City', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Regular', 1, 1, 60, '', 'First', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL,
  `EMPID` int(11) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`, `EMPID`, `USERIMAGE`) VALUES
(1, 'John Ronan Ramos', 'Ronan', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 1234, 'photos/LoginRed.jpg'),
(2, 'Lucky Dancel', 'Lucky', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 0, 'photos/MARIO.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_ID`),
  ADD KEY `DEPT_ID` (`DEPT_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_ID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GRADE_ID`),
  ADD KEY `IDNO` (`IDNO`);

--
-- Indexes for table `schoolyr`
--
ALTER TABLE `schoolyr`
  ADD PRIMARY KEY (`SYID`),
  ADD KEY `IDNO` (`IDNO`);

--
-- Indexes for table `studentschedule`
--
ALTER TABLE `studentschedule`
  ADD PRIMARY KEY (`CLASS_ID`),
  ADD KEY `IDNO` (`IDNO`),
  ADD KEY `schedID` (`schedID`);

--
-- Indexes for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  ADD PRIMARY KEY (`STUDSUBJ_ID`),
  ADD KEY `IDNO` (`IDNO`),
  ADD KEY `SUBJ_ID` (`SUBJ_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SUBJ_ID`),
  ADD KEY `COURSE_ID` (`COURSE_ID`);

--
-- Indexes for table `tblauto`
--
ALTER TABLE `tblauto`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `autocode` (`autocode`);

--
-- Indexes for table `tblinstructor`
--
ALTER TABLE `tblinstructor`
  ADD PRIMARY KEY (`INST_ID`);

--
-- Indexes for table `tbllogs`
--
ALTER TABLE `tbllogs`
  ADD PRIMARY KEY (`LOGID`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`PAYMENTID`),
  ADD KEY `IDNO` (`IDNO`);

--
-- Indexes for table `tblschedule`
--
ALTER TABLE `tblschedule`
  ADD PRIMARY KEY (`schedID`),
  ADD KEY `COURSE_ID` (`COURSE_ID`),
  ADD KEY `SUBJ_ID` (`SUBJ_ID`);

--
-- Indexes for table `tblsemester`
--
ALTER TABLE `tblsemester`
  ADD PRIMARY KEY (`SEMID`);

--
-- Indexes for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  ADD PRIMARY KEY (`DETAIL_ID`),
  ADD KEY `IDNO` (`IDNO`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`S_ID`),
  ADD UNIQUE KEY `IDNO` (`IDNO`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`ACCOUNT_ID`),
  ADD UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1540;

--
-- AUTO_INCREMENT for table `schoolyr`
--
ALTER TABLE `schoolyr`
  MODIFY `SYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `studentschedule`
--
ALTER TABLE `studentschedule`
  MODIFY `CLASS_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  MODIFY `STUDSUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1540;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `tblauto`
--
ALTER TABLE `tblauto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblinstructor`
--
ALTER TABLE `tblinstructor`
  MODIFY `INST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `LOGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `PAYMENTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tblschedule`
--
ALTER TABLE `tblschedule`
  MODIFY `schedID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `tblsemester`
--
ALTER TABLE `tblsemester`
  MODIFY `SEMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  MODIFY `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
