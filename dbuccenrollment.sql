-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2023 at 04:25 PM
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
(33, 'CSD', 'Computer Science Department');

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
(6, 1000000210, 1, 0, 0, 0, 0, 0, '', '', ''),
(7, 1000000210, 2, 0, 0, 0, 0, 0, '', '', ''),
(8, 1000000210, 3, 0, 0, 0, 0, 0, '', '', ''),
(9, 1000000210, 4, 0, 0, 0, 0, 0, '', '', ''),
(10, 1000000210, 5, 0, 0, 0, 0, 0, '', '', '');

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
(1, '2023-2024', 'First', 21, 1000000208, 'ENROLLED', '2023-12-10 00:00:00', '2023-12-10 00:00:00', 'New'),
(2, '2023-2024', 'First', 21, 1000000209, 'ENROLLED', '2023-12-15 00:00:00', '2023-12-15 00:00:00', 'New'),
(4, '2023-2024', 'First', 21, 1000000210, 'ENROLLED', '2023-12-25 00:00:00', '2023-12-25 00:00:00', 'New');

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
(1531, 1000000206, 1, 1, 'First', '2023-2024', 1, 0, ''),
(1532, 1000000206, 2, 1, 'First', '2023-2024', 1, 0, ''),
(1533, 1000000206, 3, 1, 'First', '2023-2024', 1, 0, ''),
(1534, 1000000206, 4, 1, 'First', '2023-2024', 1, 0, ''),
(1535, 1000000206, 5, 1, 'First', '2023-2024', 1, 0, ''),
(1536, 1000000208, 1, 1, 'First', '2023-2024', 1, 18, 'Failed'),
(1537, 1000000208, 2, 1, 'First', '2023-2024', 1, 0, ''),
(1538, 1000000208, 3, 1, 'First', '2023-2024', 1, 0, ''),
(1539, 1000000208, 4, 1, 'First', '2023-2024', 1, 0, ''),
(1540, 1000000208, 5, 1, 'First', '2023-2024', 1, 0, ''),
(1541, 1000000209, 1, 1, 'First', '2023-2024', 1, 18, 'Failed'),
(1542, 1000000209, 2, 1, 'First', '2023-2024', 1, 72, 'Failed'),
(1543, 1000000209, 3, 1, 'First', '2023-2024', 1, 0, ''),
(1544, 1000000209, 4, 1, 'First', '2023-2024', 1, 0, ''),
(1545, 1000000209, 5, 1, 'First', '2023-2024', 1, 0, ''),
(1546, 1000000210, 1, 1, 'First', '2023-2024', 1, 0, ''),
(1547, 1000000210, 2, 1, 'First', '2023-2024', 1, 0, ''),
(1548, 1000000210, 3, 1, 'First', '2023-2024', 1, 0, ''),
(1549, 1000000210, 4, 1, 'First', '2023-2024', 1, 0, ''),
(1550, 1000000210, 5, 1, 'First', '2023-2024', 1, 0, '');

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
(3, 'SIDNO', 'IDNO', '2015', 1000000, 210, 1),
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
(339, 1, '2023-11-30 05:19:36', 'Administrator', 'Logged out'),
(340, 1, '2023-11-30 05:19:38', 'Administrator', 'Logged in'),
(341, 1, '2023-11-30 05:22:56', 'Administrator', 'Logged out'),
(342, 1, '2023-11-30 05:22:59', 'Administrator', 'Logged in'),
(343, 1, '2023-11-30 05:24:06', 'Administrator', 'Logged out'),
(344, 1, '2023-11-30 05:24:08', 'Administrator', 'Logged in'),
(345, 1, '2023-11-30 05:24:17', 'Administrator', 'Logged out'),
(346, 1, '2023-11-30 05:24:19', 'Administrator', 'Logged in'),
(347, 1, '2023-11-30 05:36:22', 'Administrator', 'Logged out'),
(348, 1, '2023-11-30 05:37:18', 'Administrator', 'Logged in'),
(349, 1, '2023-11-30 05:37:43', 'Administrator', 'Logged out'),
(350, 2, '2023-11-30 05:37:47', 'Administrator', 'Logged in'),
(351, 2, '2023-11-30 05:37:49', 'Administrator', 'Logged out'),
(352, 2, '2023-11-30 05:38:14', 'Administrator', 'Logged in'),
(353, 2, '2023-11-30 05:43:18', 'Administrator', 'Logged out'),
(354, 1, '2023-11-30 05:43:20', 'Administrator', 'Logged in'),
(355, 1, '2023-11-30 05:45:32', 'Administrator', 'Logged out'),
(356, 1, '2023-11-30 05:46:18', 'Administrator', 'Logged in'),
(357, 1, '2023-11-30 05:56:55', 'Administrator', 'Logged out'),
(358, 1, '2023-11-30 05:56:59', 'Administrator', 'Logged in'),
(359, 1, '2023-11-30 05:58:07', 'Administrator', 'Logged out'),
(360, 1, '2023-11-30 06:04:37', 'Administrator', 'Logged in'),
(361, 1, '2023-11-30 06:04:42', 'Administrator', 'Logged out'),
(362, 1, '2023-11-30 06:25:17', 'Administrator', 'Logged in'),
(363, 1, '2023-11-30 06:30:17', 'Administrator', 'Logged in'),
(364, 1, '2023-11-30 06:30:20', 'Administrator', 'Logged out'),
(365, 2, '2023-11-30 06:30:24', 'Administrator', 'Logged in'),
(366, 2, '2023-11-30 06:30:30', 'Administrator', 'Logged out'),
(367, 1, '2023-11-30 06:30:35', 'Administrator', 'Logged in'),
(368, 1, '2023-11-30 06:42:48', 'Administrator', 'Logged out'),
(369, 1, '2023-11-30 06:42:50', 'Administrator', 'Logged in'),
(370, 1, '2023-11-30 06:43:53', 'Administrator', 'Logged out'),
(371, 1, '2023-11-30 06:43:55', 'Administrator', 'Logged in'),
(372, 1, '2023-11-30 06:45:08', 'Administrator', 'Logged out'),
(373, 1, '2023-11-30 06:45:10', 'Administrator', 'Logged in'),
(374, 1, '2023-11-30 11:28:37', 'Administrator', 'Logged in'),
(375, 1, '2023-11-30 11:28:40', 'Administrator', 'Logged out'),
(376, 1, '2023-11-30 11:28:48', 'Administrator', 'Logged in'),
(377, 1, '2023-11-30 11:29:02', 'Administrator', 'Logged out'),
(378, 1, '2023-11-30 11:29:04', 'Administrator', 'Logged in'),
(379, 1, '2023-11-30 11:50:16', 'Administrator', 'Logged out'),
(380, 1, '2023-11-30 11:50:19', 'Administrator', 'Logged in'),
(381, 1, '2023-11-30 11:52:56', 'Administrator', 'Logged out'),
(382, 1, '2023-11-30 11:55:33', 'Administrator', 'Logged in'),
(383, 1000000202, '2023-11-30 11:59:31', 'Student', 'Logged out'),
(384, 1000000202, '2023-11-30 12:00:49', 'Student', 'Logged in'),
(385, 1000000202, '2023-11-30 12:11:29', 'Student', 'Logged out'),
(386, 1000000202, '2023-11-30 12:20:25', 'Student', 'Logged in'),
(387, 1000000202, '2023-11-30 12:21:36', 'Student', 'Logged out'),
(388, 1000000202, '2023-11-30 12:25:17', 'Student', 'Logged in'),
(389, 1000000202, '2023-11-30 12:26:52', 'Student', 'Logged out'),
(390, 1, '2023-11-30 12:28:42', 'Administrator', 'Logged out'),
(391, 1, '2023-11-30 12:28:45', 'Registrar', 'Logged in'),
(392, 1000000202, '2023-11-30 15:12:28', 'Student', 'Logged in'),
(393, 1, '2023-11-30 15:15:13', 'Registrar', 'Logged in'),
(394, 1, '2023-11-30 15:15:33', 'Registrar', 'Logged out'),
(395, 1, '2023-11-30 15:15:36', 'Administrator', 'Logged in'),
(396, 1, '2023-11-30 15:16:14', 'Administrator', 'Logged out'),
(397, 1, '2023-11-30 15:24:51', 'Administrator', 'Logged in'),
(398, 1, '2023-11-30 15:55:49', 'Administrator', 'Logged out'),
(399, 1, '2023-11-30 16:02:56', 'Administrator', 'Logged in'),
(400, 1000000202, '2023-11-30 16:03:05', 'Student', 'Logged out'),
(401, 1000000203, '2023-12-01 05:35:39', 'Student', 'Logged in'),
(402, 1, '2023-12-01 05:36:50', 'Administrator', 'Logged in'),
(403, 1000000203, '2023-12-01 05:57:23', 'Student', 'Logged out'),
(404, 1, '2023-12-01 17:14:39', 'Administrator', 'Logged in'),
(405, 1, '2023-12-02 15:01:13', 'Administrator', 'Logged in'),
(406, 1, '2023-12-02 15:03:14', 'Administrator', 'Logged out'),
(407, 1, '2023-12-02 15:03:16', 'Administrator', 'Logged in'),
(408, 1, '2023-12-02 15:11:24', 'Administrator', 'Logged out'),
(409, 1, '2023-12-02 15:11:26', 'Administrator', 'Logged in'),
(410, 1, '2023-12-02 15:11:46', 'Administrator', 'Logged out'),
(411, 1, '2023-12-02 15:11:48', 'Administrator', 'Logged in'),
(412, 1, '2023-12-02 15:12:09', 'Administrator', 'Logged out'),
(413, 1, '2023-12-02 15:12:11', 'Administrator', 'Logged in'),
(414, 1, '2023-12-02 15:25:25', 'Administrator', 'Logged out'),
(415, 1, '2023-12-02 15:25:27', 'Administrator', 'Logged in'),
(416, 1, '2023-12-02 15:31:21', 'Administrator', 'Logged out'),
(417, 1000000204, '2023-12-02 15:31:31', 'Student', 'Logged in'),
(418, 1000000204, '2023-12-02 15:31:54', 'Student', 'Logged out'),
(419, 1000000204, '2023-12-02 15:33:27', 'Student', 'Logged in'),
(420, 1000000204, '2023-12-02 15:33:58', 'Student', 'Logged out'),
(421, 1, '2023-12-02 15:37:21', 'Administrator', 'Logged in'),
(422, 1000000205, '2023-12-02 15:49:02', 'Student', 'Logged out'),
(423, 1000000205, '2023-12-02 15:49:04', 'Student', 'Logged in'),
(424, 1000000205, '2023-12-02 15:49:44', 'Student', 'Logged out'),
(425, 1000000205, '2023-12-02 15:49:47', 'Student', 'Logged in'),
(426, 1, '2023-12-03 04:31:28', 'Administrator', 'Logged in'),
(427, 1000000205, '2023-12-03 04:37:48', 'Student', 'Logged in'),
(428, 1000000205, '2023-12-03 04:37:56', 'Student', 'Logged out'),
(429, 1000000205, '2023-12-03 04:37:59', 'Student', 'Logged in'),
(430, 1000000205, '2023-12-03 04:38:10', 'Student', 'Logged out'),
(431, 1000000205, '2023-12-03 04:38:12', 'Student', 'Logged in'),
(432, 1000000205, '2023-12-03 04:38:51', 'Student', 'Logged out'),
(433, 1000000206, '2023-12-03 04:45:18', 'Student', 'Logged in'),
(434, 1000000206, '2023-12-03 14:17:28', 'Student', 'Logged in'),
(435, 1, '2023-12-03 15:12:12', 'Administrator', 'Logged in'),
(436, 1, '2023-12-04 04:27:13', 'Administrator', 'Logged in'),
(437, 1, '2023-12-04 04:38:01', 'Administrator', 'Logged in'),
(438, 1000000205, '2023-12-04 04:44:31', 'Student', 'Logged in'),
(439, 1000000205, '2023-12-04 04:46:10', 'Student', 'Logged out'),
(440, 1, '2023-12-04 06:57:29', 'Administrator', 'Logged in'),
(441, 1, '2023-12-04 06:59:01', 'Administrator', 'Logged out'),
(442, 1, '2023-12-04 07:06:09', 'Administrator', 'Logged in'),
(443, 1, '2023-12-04 11:57:09', 'Administrator', 'Logged in'),
(444, 1000000205, '2023-12-04 12:24:46', 'Student', 'Logged in'),
(445, 1000000205, '2023-12-04 12:27:33', 'Student', 'Logged out'),
(446, 1000000205, '2023-12-04 13:09:23', 'Student', 'Logged in'),
(447, 1000000205, '2023-12-04 13:19:29', 'Student', 'Logged out'),
(448, 1, '2023-12-10 01:39:09', 'Administrator', 'Logged in'),
(449, 1, '2023-12-10 01:39:51', 'Administrator', 'Logged out'),
(450, 1, '2023-12-10 01:40:58', 'Administrator', 'Logged in'),
(451, 1, '2023-12-10 01:41:00', 'Administrator', 'Logged out'),
(452, 1, '2023-12-10 01:45:26', 'Administrator', 'Logged in'),
(453, 1, '2023-12-10 03:31:27', 'Administrator', 'Logged in'),
(454, 1000000206, '2023-12-10 05:12:13', 'Student', 'Logged in'),
(455, 1, '2023-12-10 05:12:24', 'Administrator', 'Logged in'),
(456, 1000000206, '2023-12-10 05:12:33', 'Student', 'Logged out'),
(457, 1, '2023-12-10 05:19:25', 'Administrator', 'Logged in'),
(458, 1000000208, '2023-12-15 09:32:15', 'Student', 'Logged in'),
(459, 1000000208, '2023-12-15 12:19:00', 'Student', 'Logged in'),
(460, 1, '2023-12-15 15:26:29', 'Administrator', 'Logged in'),
(461, 1000000208, '2023-12-15 16:38:12', 'Student', 'Logged in'),
(462, 1000000208, '2023-12-15 16:49:01', 'Student', 'Logged out'),
(463, 1000000208, '2023-12-15 16:49:11', 'Student', 'Logged in'),
(464, 1000000208, '2023-12-15 16:50:40', 'Student', 'Logged out'),
(465, 1000000209, '2023-12-16 13:25:54', 'Student', 'Logged in'),
(466, 1000000202, '2023-12-16 13:32:06', 'Student', 'Logged out'),
(467, 1000000209, '2023-12-16 13:32:07', 'Student', 'Logged in'),
(468, 1000000209, '2023-12-23 11:22:26', 'Student', 'Logged in'),
(469, 1, '2023-12-25 14:38:07', 'Administrator', 'Logged in'),
(470, 1, '2023-12-25 14:38:42', 'Administrator', 'Logged out'),
(471, 1, '2023-12-25 14:40:43', 'Administrator', 'Logged in'),
(472, 1000000209, '2023-12-25 15:04:27', 'Student', 'Logged in'),
(473, 1000000209, '2023-12-25 15:43:00', 'Student', 'Logged out'),
(474, 1000000210, '2023-12-25 15:50:22', 'Student', 'Logged in');

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
(1, 'Lucky Dancel', '', '123', 1000000209);

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
(1, 1000000210, 'John Ronan', 'Ramos', 'C', 'Female', '2001-11-08', 'Camarin Caloocan City', 'Single', 0, 'Filipino', 'Catholic', '09091697716', '#65 Block 30 Lot 149 Mangga St. Camarin Caloocan City', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'New', 1, 1, 21, '', 'First', '', 0);

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
  MODIFY `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schoolyr`
--
ALTER TABLE `schoolyr`
  MODIFY `SYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  MODIFY `STUDSUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1551;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `LOGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `PAYMENTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tblsemester`
--
ALTER TABLE `tblsemester`
  MODIFY `SEMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  MODIFY `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
