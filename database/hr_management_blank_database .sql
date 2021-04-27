-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 04:14 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `agency_info`
--

CREATE TABLE `agency_info` (
  `Agency_ID` char(5) NOT NULL COMMENT 'Identify agency',
  `Agency_Name` varchar(20) NOT NULL COMMENT 'Name of agency company',
  `Agency_Email` varchar(80) NOT NULL COMMENT 'Email of agency company',
  `Agency_Tel` char(9) DEFAULT NULL COMMENT 'Business phone numbers\r\nof agency company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `Contract_ID` char(5) NOT NULL COMMENT 'Identify contract between\r\nstaff and company',
  `Staff_ID` char(5) NOT NULL COMMENT 'Staff ID of contract party',
  `Contract_StartDate` date NOT NULL COMMENT 'First date of work by\r\ncontract',
  `Contract_EndDate` date NOT NULL COMMENT 'Last date of work by\r\ncontract'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `daily_time_ record`
--

CREATE TABLE `daily_time_ record` (
  `Staff_ID` char(5) NOT NULL COMMENT 'ID of record owner',
  `Work_Date` date NOT NULL COMMENT 'Date of work',
  `Work_StartTime` datetime DEFAULT NULL COMMENT 'Start work time',
  `Work_EndTime` datetime DEFAULT NULL COMMENT 'Off-work time',
  `Status` varchar(20) NOT NULL COMMENT 'Work record status:\r\nOnTime, Late, Absent,\r\nSickLeave, PersonalLeave'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_ID` char(5) NOT NULL COMMENT 'Identify department',
  `Department_Name` varchar(20) NOT NULL COMMENT 'Name of Department'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `enroll_course`
--

CREATE TABLE `enroll_course` (
  `Enroll_ID` char(9) NOT NULL COMMENT 'Identify enrolling (Surrogate key)',
  `Course_ID` char(5) NOT NULL COMMENT 'Course that staff enroll',
  `Staff_ID` char(5) DEFAULT NULL COMMENT 'Staff that enroll course'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `petition`
--

CREATE TABLE `petition` (
  `Petition_ID` char(5) NOT NULL COMMENT 'ID of petition',
  `Staff_ID` char(5) DEFAULT NULL COMMENT 'ID of petition owner',
  `Petition_Date` date NOT NULL COMMENT 'Petition submission date',
  `Petition_Content` text NOT NULL COMMENT 'Petition content',
  `Petition_Status` varchar(20) NOT NULL COMMENT 'Petition status: Unread,\r\nRead, Star'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `Department_ID` char(5) NOT NULL COMMENT 'Department ID for\r\nidentify position',
  `Position_ID` char(5) NOT NULL COMMENT 'Identify position',
  `Position_Name` varchar(50) NOT NULL COMMENT 'Name of Position',
  `MinSalary` int(11) DEFAULT NULL COMMENT 'Minimum Salary for\r\nposition',
  `MaxSalary` int(11) DEFAULT NULL COMMENT 'Maximum Salary for\r\nposition',
  `Position_Detail` text DEFAULT NULL COMMENT 'Duty of position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `promote_history`
--

CREATE TABLE `promote_history` (
  `Staff_ID` char(5) NOT NULL COMMENT 'ID of promotion owner',
  `Promote_Date` date NOT NULL COMMENT 'Date of promotion',
  `Department_ID` char(5) NOT NULL COMMENT 'Department from\r\npromotion',
  `Position_ID` char(5) NOT NULL COMMENT 'Position from from\r\npromotion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recruit_apply`
--

CREATE TABLE `recruit_apply` (
  `RecruitApply_ID` char(9) NOT NULL COMMENT 'Identiry recruitment (Surrogate key)',
  `Recruit_ID` char(5) NOT NULL COMMENT 'The recruitment which a\r\ncandidate applies for',
  `Staff_ID` char(5) DEFAULT NULL COMMENT 'ID of candidate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recruit_spec`
--

CREATE TABLE `recruit_spec` (
  `Recruit_ID` char(5) NOT NULL COMMENT 'Identify recruitment',
  `Department_ID` char(5) NOT NULL COMMENT 'Department that are open recruitment',
  `Position_ID` char(5) NOT NULL COMMENT 'Position that are open recruitment',
  `Recruit_Amount` tinyint(4) DEFAULT NULL COMMENT 'Number of candidates in each recruitment'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff_edu_history`
--

CREATE TABLE `staff_edu_history` (
  `Staff_ID` char(5) NOT NULL COMMENT 'ID of staff for education\r\nhistory',
  `StaffEdu_Level` varchar(20) NOT NULL COMMENT 'Education level of staff:\r\nElementary, Secondary,\r\nBachelor, Master,\r\nDoctorate',
  `StaffEdu_Institution` varchar(50) NOT NULL COMMENT 'Education Institution of\r\nstaff in each level',
  `StaffEdu_Duration` tinyint(4) NOT NULL COMMENT 'Education duration of\r\nstaff in each institution',
  `StaffEdu_Grade` decimal(3,2) NOT NULL COMMENT 'GPA of staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff_info`
--

CREATE TABLE `staff_info` (
  `Staff_ID` char(5) NOT NULL COMMENT 'Identify staff and job\r\ncandidate',
  `Staff_FirstName` varchar(20) NOT NULL COMMENT 'First name of staff',
  `Staff_LastName` varchar(20) NOT NULL COMMENT 'Last name of staff',
  `Staff_Sex` char(1) NOT NULL COMMENT 'Sex of staff: M, F',
  `Staff_DoB` date NOT NULL COMMENT 'Date of birth of staff',
  `Staff_Address` text NOT NULL COMMENT 'Address of staff',
  `Staff_Email` varchar(80) NOT NULL COMMENT 'Email of staff',
  `Staff_Tel` char(10) NOT NULL COMMENT 'Phone numbers of staff',
  `Staff_Status` varchar(20) DEFAULT NULL COMMENT 'Marital status of staff:\r\nSingle, Married, Divorced'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff_work_history`
--

CREATE TABLE `staff_work_history` (
  `Staff_ID` char(5) NOT NULL COMMENT 'ID of staff for work history',
  `StaffWH_Workplace` varchar(50) NOT NULL COMMENT '50) Workplace of staff',
  `StaffWH_Position` varchar(50) NOT NULL COMMENT 'Position of staff in each\r\nworkplace',
  `StaffWH_StartDate` date NOT NULL COMMENT 'First date of work in each\r\nposition',
  `StaffWH_EndDate` date NOT NULL COMMENT 'Last date of work in each\r\nposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff_work_performance`
--

CREATE TABLE `staff_work_performance` (
  `Staff_ID` char(5) NOT NULL COMMENT 'ID of performance owner',
  `Perform_Date` date NOT NULL COMMENT 'Date of evaluation\r\nperformance',
  `Perform_Score` decimal(5,2) NOT NULL COMMENT 'Performance score of\r\nstaff between 0 and 100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `train_course`
--

CREATE TABLE `train_course` (
  `Course_ID` char(5) NOT NULL COMMENT 'Identify course',
  `Agency_ID` char(5) NOT NULL COMMENT 'Agency that train staff',
  `Course_Detail` text DEFAULT NULL COMMENT 'Subject and description\r\nof course',
  `Course_StartDate` date DEFAULT NULL COMMENT 'Opening date of course',
  `Course_EndDate` date DEFAULT NULL COMMENT 'Close date of course',
  `Status` varchar(20) NOT NULL COMMENT 'Course status: InComing,\r\nInProgress, Completed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agency_info`
--
ALTER TABLE `agency_info`
  ADD PRIMARY KEY (`Agency_ID`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`Contract_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `daily_time_ record`
--
ALTER TABLE `daily_time_ record`
  ADD PRIMARY KEY (`Staff_ID`,`Work_Date`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_ID`);

--
-- Indexes for table `enroll_course`
--
ALTER TABLE `enroll_course`
  ADD PRIMARY KEY (`Enroll_ID`),
  ADD KEY `Course_ID` (`Course_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `petition`
--
ALTER TABLE `petition`
  ADD PRIMARY KEY (`Petition_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`Department_ID`,`Position_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- Indexes for table `promote_history`
--
ALTER TABLE `promote_history`
  ADD PRIMARY KEY (`Staff_ID`,`Promote_Date`),
  ADD KEY `Department_ID` (`Department_ID`,`Position_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `recruit_apply`
--
ALTER TABLE `recruit_apply`
  ADD PRIMARY KEY (`RecruitApply_ID`),
  ADD KEY `Recruit_ID` (`Recruit_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `recruit_spec`
--
ALTER TABLE `recruit_spec`
  ADD PRIMARY KEY (`Recruit_ID`),
  ADD KEY `Department_ID` (`Department_ID`,`Position_ID`);

--
-- Indexes for table `staff_edu_history`
--
ALTER TABLE `staff_edu_history`
  ADD PRIMARY KEY (`Staff_ID`,`StaffEdu_Level`,`StaffEdu_Institution`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `staff_info`
--
ALTER TABLE `staff_info`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `staff_work_history`
--
ALTER TABLE `staff_work_history`
  ADD PRIMARY KEY (`Staff_ID`,`StaffWH_Workplace`,`StaffWH_Position`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `staff_work_performance`
--
ALTER TABLE `staff_work_performance`
  ADD PRIMARY KEY (`Staff_ID`,`Perform_Date`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `train_course`
--
ALTER TABLE `train_course`
  ADD PRIMARY KEY (`Course_ID`),
  ADD KEY `Agency_ID` (`Agency_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff_info` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `daily_time_ record`
--
ALTER TABLE `daily_time_ record`
  ADD CONSTRAINT `daily_time_ record_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff_info` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enroll_course`
--
ALTER TABLE `enroll_course`
  ADD CONSTRAINT `enroll_course_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `train_course` (`Course_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `enroll_course_ibfk_2` FOREIGN KEY (`Staff_ID`) REFERENCES `staff_info` (`Staff_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `petition`
--
ALTER TABLE `petition`
  ADD CONSTRAINT `petition_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff_info` (`Staff_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `position_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`Department_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promote_history`
--
ALTER TABLE `promote_history`
  ADD CONSTRAINT `promote_history_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff_info` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promote_history_ibfk_2` FOREIGN KEY (`Department_ID`,`Position_ID`) REFERENCES `position` (`Department_ID`, `Position_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recruit_apply`
--
ALTER TABLE `recruit_apply`
  ADD CONSTRAINT `recruit_apply_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff_info` (`Staff_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `recruit_apply_ibfk_2` FOREIGN KEY (`Recruit_ID`) REFERENCES `recruit_spec` (`Recruit_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recruit_spec`
--
ALTER TABLE `recruit_spec`
  ADD CONSTRAINT `recruit_spec_ibfk_1` FOREIGN KEY (`Department_ID`,`Position_ID`) REFERENCES `position` (`Department_ID`, `Position_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_edu_history`
--
ALTER TABLE `staff_edu_history`
  ADD CONSTRAINT `staff_edu_history_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff_info` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_work_history`
--
ALTER TABLE `staff_work_history`
  ADD CONSTRAINT `staff_work_history_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff_info` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_work_performance`
--
ALTER TABLE `staff_work_performance`
  ADD CONSTRAINT `staff_work_performance_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff_info` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `train_course`
--
ALTER TABLE `train_course`
  ADD CONSTRAINT `train_course_ibfk_1` FOREIGN KEY (`Agency_ID`) REFERENCES `agency_info` (`Agency_ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
