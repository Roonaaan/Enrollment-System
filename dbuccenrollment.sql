-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 02:28 PM
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
  `COURSE_NAME` varchar(50) NOT NULL,
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
(21, 'BS Computer Science', '1', '', 'Bachelor of Science Computer Science ', 33, '1'),
(22, 'BS Information Technology', '1', '', 'Bachelor of Science in Information Technology', 33, '1'),
(23, 'BS Entertainment and Multimedi', '1', '', 'Bachelor of Science in Entertainment and Multimedia Computing', 33, '1'),
(24, 'BS Information System', '1', '', 'Bachelor of Science in Information Systems', 33, '1');

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
(33, 'CLAS', 'College of Liberal Arts and Science');

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
(6, '2024-2025', 'Second', 21, 1000000211, 'ENROLLED', '2024-01-12 00:00:00', '2024-01-12 00:00:00', 'New'),
(7, '2024-2025', 'First', 21, 1000000212, 'ENROLLED', '2024-01-12 00:00:00', '2024-01-12 00:00:00', 'New'),
(8, '2024-2025', 'First', 21, 1000000212, 'ENROLLED', '2024-01-12 00:00:00', '2024-01-12 00:00:00', 'Old'),
(9, '2024-2025', 'First', 21, 1000000214, 'ENROLLED', '2024-01-12 00:00:00', '2024-01-12 00:00:00', 'New'),
(10, '2024-2025', 'First', 21, 1000000214, 'ENROLLED', '2024-01-12 00:00:00', '2024-01-12 00:00:00', 'Old'),
(11, '2024-2025', 'First', 21, 1000000214, 'ENROLLED', '2024-01-12 00:00:00', '2024-01-12 00:00:00', 'Old'),
(12, '2024-2025', 'First', 21, 1000000214, 'ENROLLED', '2024-01-14 00:00:00', '2024-01-14 00:00:00', 'Old'),
(13, '2024-2025', 'First', 21, 1000000214, 'ENROLLED', '2024-01-14 00:00:00', '2024-01-14 00:00:00', 'Old'),
(14, '2024-2025', 'First', 21, 1000000214, 'ENROLLED', '2024-01-14 00:00:00', '2024-01-14 00:00:00', 'Old'),
(15, '2024-2025', 'First', 21, 1000000220, 'ENROLLED', '2024-01-14 00:00:00', '2024-01-14 00:00:00', 'New'),
(16, '2024-2025', 'First', 21, 1000000220, 'ENROLLED', '2024-01-14 00:00:00', '2024-01-14 00:00:00', 'Old'),
(17, '2024-2025', 'First', 21, 1000000220, 'ENROLLED', '2024-01-14 00:00:00', '2024-01-14 00:00:00', 'Old'),
(18, '2024-2025', 'First', 21, 1000000223, 'ENROLLED', '2024-01-14 00:00:00', '2024-01-14 00:00:00', 'New'),
(19, '2024-2025', 'First', 21, 1000000223, 'ENROLLED', '2024-01-14 00:00:00', '2024-01-14 00:00:00', 'Old'),
(20, '2024-2025', 'First', 21, 1000000225, 'ENROLLED', '2024-01-14 00:00:00', '2024-01-14 00:00:00', 'New'),
(21, '2024-2025', 'First', 21, 1000000226, 'ENROLLED', '2024-01-14 00:00:00', '2024-01-14 00:00:00', 'New'),
(22, '2024-2025', 'First', 21, 1000000226, 'ENROLLED', '2024-01-14 00:00:00', '2024-01-14 00:00:00', 'Old'),
(23, '2024-2025', 'First', 21, 1000000228, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'New'),
(24, '2024-2025', 'First', 21, 1000000228, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'Old'),
(25, '2024-2025', 'First', 21, 1000000228, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'Old'),
(26, '2024-2025', 'First', 21, 1000000228, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'Old'),
(27, '2024-2025', 'First', 21, 1000000232, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'New'),
(28, '2024-2025', 'First', 21, 1000000232, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'Old'),
(29, '2024-2025', 'First', 21, 1000000232, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'Old'),
(30, '2024-2025', 'First', 21, 1000000232, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'Old'),
(31, '2024-2025', 'First', 21, 1000000232, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'Old'),
(32, '2024-2025', 'First', 21, 1000000232, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'Old'),
(33, '2024-2025', 'First', 21, 1000000238, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'New'),
(34, '2024-2025', 'First', 21, 1000000238, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'Old'),
(35, '2024-2025', 'First', 21, 1000000238, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'Old'),
(36, '2024-2025', 'First', 21, 1000000241, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'New'),
(37, '2024-2025', 'First', 21, 1000000241, 'ENROLLED', '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'Old');

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
(1, 'CS112', 'Social Issues and Professional Practice 1', 3, 'None', 21, '', 'First', 0),
(2, 'CS 116', 'Algorithm and Complexity', 3, 'None', 21, '', 'First', 0),
(3, 'CS 118', 'CS Thesis Writing 1', 5, 'None', 21, '', 'First', 0),
(4, 'CSE 103', 'Computational Science', 3, 'None', 21, '', 'First', 0),
(5, 'CSE 104', 'Intelligent Systems', 3, 'None', 21, '', 'First', 0);

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
(3, 'SIDNO', 'IDNO', '2015', 1000000, 243, 1),
(4, 'EMPLOYEE', 'EMPID', '020010', 0, 2, 1);

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
(500, 1, '2024-01-12 12:49:49', 'Administrator', 'Logged in'),
(501, 1000000211, '2024-01-12 13:03:17', 'Student', 'Logged out'),
(502, 1, '2024-01-12 17:17:09', 'Administrator', 'Logged in'),
(503, 1000000202, '2024-01-12 17:37:40', 'Student', 'Logged out'),
(504, 1000000214, '2024-01-12 17:37:42', 'Student', 'Logged in'),
(505, 1000000202, '2024-01-12 17:55:02', 'Student', 'Logged out'),
(506, 1000000214, '2024-01-12 17:55:04', 'Student', 'Logged in'),
(507, 1000000214, '2024-01-12 17:55:14', 'Student', 'Logged out'),
(508, 1000000214, '2024-01-12 17:55:17', 'Student', 'Logged in'),
(509, 1000000214, '2024-01-12 17:59:55', 'Student', 'Logged out'),
(510, 1000000214, '2024-01-12 17:59:57', 'Student', 'Logged in'),
(511, 1000000214, '2024-01-14 12:15:35', 'Student', 'Logged in'),
(512, 1000000202, '2024-01-14 12:58:50', 'Student', 'Logged out'),
(513, 1000000214, '2024-01-14 12:58:52', 'Student', 'Logged in'),
(514, 1000000214, '2024-01-14 15:18:45', 'Student', 'Logged in'),
(515, 1000000202, '2024-01-14 15:24:56', 'Student', 'Logged out'),
(516, 1000000214, '2024-01-14 15:24:59', 'Student', 'Logged in'),
(517, 1000000214, '2024-01-14 15:41:33', 'Student', 'Logged out'),
(518, 1, '2024-01-14 15:42:58', 'Administrator', 'Logged in'),
(519, 1000000202, '2024-01-14 15:48:38', 'Student', 'Logged out'),
(520, 1000000220, '2024-01-14 15:48:41', 'Student', 'Logged in'),
(521, 1000000202, '2024-01-14 15:54:28', 'Student', 'Logged out'),
(522, 1000000220, '2024-01-14 15:54:31', 'Student', 'Logged in'),
(523, 1000000220, '2024-01-14 15:57:25', 'Student', 'Logged out'),
(524, 1000000220, '2024-01-14 15:58:19', 'Student', 'Logged in'),
(525, 1000000220, '2024-01-14 15:58:49', 'Student', 'Logged out'),
(526, 1000000223, '2024-01-14 16:08:48', 'Student', 'Logged out'),
(527, 1000000225, '2024-01-14 16:13:09', 'Student', 'Logged out'),
(528, 1000000225, '2024-01-14 16:13:11', 'Student', 'Logged in'),
(529, 1000000225, '2024-01-14 16:15:11', 'Student', 'Logged out'),
(530, 1000000225, '2024-01-14 16:15:13', 'Student', 'Logged in'),
(531, 1000000225, '2024-01-14 16:15:47', 'Student', 'Logged out'),
(532, 1000000225, '2024-01-14 16:17:08', 'Student', 'Logged in'),
(533, 1000000225, '2024-01-14 16:18:03', 'Student', 'Logged out'),
(534, 1000000226, '2024-01-14 16:27:45', 'Student', 'Logged out'),
(535, 1000000228, '2024-01-14 19:29:53', 'Student', 'Logged in'),
(536, 1000000228, '2024-01-14 19:30:27', 'Student', 'Logged out'),
(537, 1, '2024-01-14 19:30:40', 'Administrator', 'Logged in'),
(538, 1000000228, '2024-01-15 12:41:28', 'Student', 'Logged in'),
(539, 1, '2024-01-15 12:47:54', 'Administrator', 'Logged in'),
(540, 1000000202, '2024-01-15 13:00:46', 'Student', 'Logged out'),
(541, 1000000228, '2024-01-15 13:00:49', 'Student', 'Logged in'),
(542, 1000000228, '2024-01-15 13:15:54', 'Student', 'Logged out'),
(543, 1000000232, '2024-01-15 13:53:04', 'Student', 'Logged out'),
(544, 1000000232, '2024-01-15 13:53:07', 'Student', 'Logged in'),
(545, 1000000232, '2024-01-15 13:54:17', 'Student', 'Logged out'),
(546, 1000000232, '2024-01-15 13:54:23', 'Student', 'Logged in'),
(547, 1000000232, '2024-01-15 13:54:51', 'Student', 'Logged out'),
(548, 1000000232, '2024-01-15 13:54:53', 'Student', 'Logged in'),
(549, 1000000232, '2024-01-15 13:55:35', 'Student', 'Logged out'),
(550, 1000000238, '2024-01-15 13:58:03', 'Student', 'Logged out'),
(551, 1000000238, '2024-01-15 13:58:05', 'Student', 'Logged in'),
(552, 1000000238, '2024-01-15 14:15:43', 'Student', 'Logged out'),
(553, 1000000241, '2024-01-15 14:26:59', 'Student', 'Logged out');

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
(52, 1000000220, 21, 1, 'First', 0, 0, 0, 0, 0),
(53, 1000000220, 21, 1, 'First', 0, 0, 0, 0, 0),
(54, 1000000223, 21, 1, 'First', 0, 0, 0, 0, 0),
(55, 1000000226, 21, 1, 'First', 0, 0, 0, 0, 0),
(56, 1000000228, 21, 1, 'First', 320, 0, 320, 0, 0),
(57, 1000000228, 21, 1, 'First', 320, 0, 320, 0, 0),
(58, 1000000228, 21, 1, 'First', 320, 0, 320, 0, 0),
(59, 1000000232, 21, 1, 'First', 320, 0, 320, 0, 0),
(60, 1000000232, 21, 1, 'First', 320, 0, 320, 0, 0),
(61, 1000000232, 21, 1, 'First', 320, 0, 320, 0, 0),
(62, 1000000232, 21, 1, 'First', 320, 0, 320, 0, 0),
(63, 1000000232, 21, 1, 'First', 320, 0, 320, 0, 0),
(64, 1000000238, 21, 1, 'First', 320, 0, 320, 0, 0),
(65, 1000000238, 21, 1, 'First', 320, 0, 320, 0, 0),
(66, 1000000241, 21, 1, 'First', 320, 0, 320, 0, 0);

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
(1, 'Ronan Ramos', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 1234, 'photos/login.jpg'),
(2, 'Lucky Dancel', 'lucky', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 1235, ''),
(3, 'Christopher Bulawan', 'chris', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 1236, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_ID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GRADE_ID`);

--
-- Indexes for table `schoolyr`
--
ALTER TABLE `schoolyr`
  ADD PRIMARY KEY (`SYID`);

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
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `schoolyr`
--
ALTER TABLE `schoolyr`
  MODIFY `SYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  MODIFY `STUDSUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1706;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `LOGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=554;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `PAYMENTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tblsemester`
--
ALTER TABLE `tblsemester`
  MODIFY `SEMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  MODIFY `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
