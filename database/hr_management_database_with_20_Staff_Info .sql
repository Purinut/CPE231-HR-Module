-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 09:08 AM
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
  `Agency_Name` varchar(50) NOT NULL COMMENT 'Name of agency company',
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
  `Department_Name` varchar(50) NOT NULL COMMENT 'Name of Department'
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
  `Position_Name` char(5) NOT NULL COMMENT 'Name of Position',
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

--
-- Dumping data for table `staff_info`
--

INSERT INTO `staff_info` (`Staff_ID`, `Staff_FirstName`, `Staff_LastName`, `Staff_Sex`, `Staff_DoB`, `Staff_Address`, `Staff_Email`, `Staff_Tel`, `Staff_Status`) VALUES
('CA001', 'Cyril', 'Hodkiewicz', 'F', '2004-12-01', '98115 Adela Plains Suite 940\nLake Hailiehaven, SD 53735-4363', 'kayden09@gmail.com', '0343912465', 'Single'),
('CA002', 'Eileen', 'Carter', 'M', '1997-01-02', '7359 Crist Court Apt. 592\nRobertaville, IN 17833-5390', 'sgusikowski@gmail.com', '0071621608', 'Divorced'),
('CA003', 'Kelsi', 'Hansen', 'M', '1987-07-09', '597 Annabelle Ford Apt. 824\nSouth Clemensborough, SD 96378-9144', 'era59@gmail.com', '0892338306', ''),
('CA004', 'Isom', 'Witting', 'M', '1971-01-11', '895 Wilderman Path Apt. 788\nPort Meganeberg, DC 86455-5456', 'suzanne.kris@gmail.com', '0297310558', 'Married'),
('CA005', 'Abbey', 'Rempel', 'M', '1990-04-30', '5067 Eryn Mill\nPourostown, CO 01129-6502', 'qwolf@yahoo.com', '0706671315', ''),
('ST001', 'Willie', 'Sporer', 'F', '1980-04-21', '24131 Rachel Islands Suite 117\nWest Tevinborough, SD 31793', 'leopoldo93@hotmail.com', '0840244097', ''),
('ST002', 'Shad', 'Cartwright', 'M', '1999-09-09', '858 Tess Common\nNew Cristal, AR 38754', 'leora32@hotmail.com', '0501629000', 'Married'),
('ST003', 'Vanessa', 'Waters', 'F', '1978-11-07', '8452 Jeffry Common\nClaudieton, MT 18415-8807', 'shaniya02@gmail.com', '0128069369', 'Married'),
('ST004', 'Zander', 'Cronin', 'F', '1986-07-17', '359 Aurelio Spurs\nWatsicashire, CO 88082', 'jbailey@gmail.com', '0790290825', 'Single'),
('ST005', 'Clark', 'Jenkins', 'M', '1997-06-15', '95943 Terry Pass\nEast Laurel, AR 04092-4270', 'mschultz@yahoo.com', '0030166902', 'Divorced'),
('ST006', 'Vaughn', 'Wiza', 'M', '1985-08-05', '581 Bernier Square\nNew Aurelie, NV 51731-6619', 'hilll.duane@yahoo.com', '0213633348', ''),
('ST007', 'Margaret', 'Schneider', 'F', '1999-01-24', '14894 Doyle Dam\nNorth Donavonland, KY 21742', 'macejkovic.jonas@hotmail.com', '0110207551', 'Married'),
('ST008', 'Mario', 'Lang', 'F', '1987-10-07', '44735 Murazik Knolls\nWest Gordon, DE 54942', 'burdette.keeling@yahoo.com', '0898515695', 'Single'),
('ST009', 'Garnett', 'King', 'F', '1982-07-14', '30482 Crona Curve\nWaelchihaven, TN 40271-3125', 'rowland01@yahoo.com', '0203625226', ''),
('ST010', 'Hunter', 'Fisher', 'M', '1996-04-26', '003 Elmer Inlet\nEast Nora, OH 98036-5651', 'nanderson@hotmail.com', '0261606968', ''),
('ST011', 'Mariah', 'Paucek', 'F', '1978-02-12', '3307 Angelica Knoll Apt. 579\nPort Giovani, ID 64312-7736', 'adrain65@gmail.com', '0390133642', 'Single'),
('ST012', 'Thelma', 'Funk', 'F', '1985-10-26', '2399 Berge Field Apt. 507\nNorth Bellastad, CA 60472-0471', 'hartmann.brody@gmail.com', '0334120165', 'Divorced'),
('ST013', 'Ayana', 'Balistreri', 'F', '1983-06-26', '8112 Marquardt Islands Suite 508\nJayceeshire, DE 21771', 'uschamberger@gmail.com', '0114503006', 'Divorced'),
('ST014', 'Kylee', 'Lind', 'F', '1972-06-02', '3532 Diego Forge\nNew Freddy, AZ 33026-3788', 'buster.muller@yahoo.com', '0564851579', 'Single'),
('ST015', 'Jillian', 'Sauer', 'M', '1974-05-26', '52028 Mills Well Suite 895\nEast Benedicthaven, NJ 50458', 'jherman@gmail.com', '0892240288', 'Married');

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
