-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 11:26 AM
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

--
-- Dumping data for table `agency_info`
--

INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES
('AG001', 'Weissnat-Grimes', 'kautzer.verona@shanahan.info', '031707012'),
('AG002', 'O\'Conner PLC', 'anolan@block.com', '025444305'),
('AG003', 'Medhurst-Lemke', 'emery.keebler@hills.com', '075632092');

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

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`Contract_ID`, `Staff_ID`, `Contract_StartDate`, `Contract_EndDate`) VALUES
('CO001', 'ST001', '2020-01-01', '2021-01-01'),
('CO002', 'ST002', '2020-01-01', '2021-01-01'),
('CO003', 'ST003', '2020-01-01', '2021-01-01'),
('CO004', 'ST004', '2020-01-01', '2021-01-01'),
('CO005', 'ST005', '2020-01-01', '2021-01-01'),
('CO006', 'ST006', '2020-01-01', '2021-01-01'),
('CO007', 'ST007', '2020-01-01', '2021-01-01'),
('CO008', 'ST008', '2020-01-01', '2021-01-01'),
('CO009', 'ST009', '2020-01-01', '2021-01-01'),
('CO010', 'ST010', '2020-01-01', '2021-01-01'),
('CO011', 'ST011', '2020-06-01', '2021-06-01'),
('CO012', 'ST012', '2020-06-01', '2021-06-01'),
('CO013', 'ST013', '2020-08-01', '2021-08-01'),
('CO014', 'ST014', '2020-08-01', '2021-08-01'),
('CO015', 'ST015', '2020-08-01', '2021-08-01'),
('CO016', 'ST001', '2021-01-01', '2022-01-01'),
('CO017', 'ST002', '2021-01-01', '2022-01-01'),
('CO018', 'ST003', '2021-01-01', '2022-01-01'),
('CO019', 'ST004', '2021-01-01', '2022-01-01'),
('CO020', 'ST005', '2021-01-01', '2022-01-01'),
('CO021', 'ST006', '2021-01-01', '2022-01-01'),
('CO022', 'ST007', '2021-01-01', '2022-01-01'),
('CO023', 'ST008', '2021-01-01', '2022-01-01'),
('CO024', 'ST009', '2021-01-01', '2022-01-01'),
('CO025', 'ST010', '2021-01-01', '2022-01-01'),
('CO026', 'ST011', '2021-06-01', '2022-06-01'),
('CO027', 'ST012', '2021-06-01', '2022-06-01');

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

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_ID`, `Department_Name`) VALUES
('DE001', 'Human Resource Management'),
('DE002', 'Accounting and Finance'),
('DE003', 'Research and Development');

-- --------------------------------------------------------

--
-- Table structure for table `enroll_course`
--

CREATE TABLE `enroll_course` (
  `Enroll_ID` char(9) NOT NULL COMMENT 'Identify enrolling (Surrogate key)',
  `Course_ID` char(5) NOT NULL COMMENT 'Course that staff enroll',
  `Staff_ID` char(5) DEFAULT NULL COMMENT 'Staff that enroll course'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enroll_course`
--

INSERT INTO `enroll_course` (`Enroll_ID`, `Course_ID`, `Staff_ID`) VALUES
('EC001', 'TC001', 'ST001'),
('EC002', 'TC001', 'ST002'),
('EC003', 'TC001', 'ST003'),
('EC004', 'TC001', 'ST004'),
('EC005', 'TC001', 'ST005'),
('EC006', 'TC001', 'ST006'),
('EC007', 'TC001', 'ST007'),
('EC008', 'TC001', 'ST008'),
('EC009', 'TC001', 'ST009'),
('EC010', 'TC001', 'ST010'),
('EC011', 'TC001', 'ST011'),
('EC012', 'TC001', 'ST012'),
('EC013', 'TC001', 'ST013'),
('EC014', 'TC001', 'ST014'),
('EC015', 'TC001', 'ST015'),
('EC016', 'TC002', 'ST001'),
('EC017', 'TC002', 'ST002'),
('EC018', 'TC002', 'ST003'),
('EC019', 'TC002', 'ST004'),
('EC020', 'TC002', 'ST005'),
('EC021', 'TC002', 'ST006'),
('EC022', 'TC002', 'ST007'),
('EC023', 'TC002', 'ST008'),
('EC024', 'TC002', 'ST009'),
('EC025', 'TC002', 'ST010'),
('EC026', 'TC002', 'ST011'),
('EC027', 'TC002', 'ST012'),
('EC028', 'TC002', 'ST013'),
('EC029', 'TC002', 'ST014'),
('EC030', 'TC002', 'ST015'),
('EC031', 'TC003', 'ST006'),
('EC032', 'TC003', 'ST007'),
('EC033', 'TC004', 'ST009'),
('EC034', 'TC004', 'ST010'),
('EC035', 'TC004', 'ST013'),
('EC036', 'TC004', 'ST014');

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

--
-- Dumping data for table `petition`
--

INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES
('PE001', 'ST002', '2020-01-05', 'And the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Gryphon: \'I went to the Classics master,.', 'Star'),
('PE002', 'ST003', '2020-01-09', 'SOUP!\' \'Chorus again!\' cried the Gryphon, and the Mock Turtle had just begun to repeat it, when a.', 'Read'),
('PE003', 'ST009', '2020-01-15', 'How puzzling all these changes are! I\'m never sure what I\'m going to be, from one minute to.', 'Star'),
('PE004', 'ST003', '2020-01-15', 'King repeated angrily, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor.', 'Read'),
('PE005', 'ST005', '2020-01-31', 'I can\'t remember,\' said the Hatter. \'You MUST remember,\' remarked the King, \'or I\'ll have you.', 'Read'),
('PE006', 'ST004', '2020-02-25', 'She waited for some time without hearing anything more: at last came a rumbling of little.', 'Read'),
('PE007', 'ST001', '2020-04-02', 'Cheshire cat,\' said the Duchess, \'and that\'s why. Pig!\' She said the last word with such sudden.', 'Unread'),
('PE008', 'ST001', '2020-04-09', 'Rabbit\'s little white kid gloves while she was talking. \'How CAN I have done that?\' she thought..', 'Star'),
('PE009', 'ST002', '2020-06-05', 'Hatter. He had been looking at Alice for some time with great curiosity, and this was his first.', 'Read'),
('PE010', 'ST008', '2020-06-22', 'Mouse only shook its head impatiently, and said, without opening its eyes, \'Of course, of course;.', 'Unread'),
('PE011', 'ST002', '2020-06-24', 'Fish-Footman was gone, and the other was sitting on the ground near the door, staring stupidly up.', 'Star'),
('PE012', 'ST007', '2020-06-24', 'Alice, \'it would be of very little use without my shoulders. Oh, how I wish I could shut up like a.', 'Star'),
('PE013', 'ST003', '2020-07-17', 'AT ALL. Soup does very well without--Maybe it\'s always pepper that makes people hot-tempered,\' she.', 'Unread'),
('PE014', 'ST006', '2020-08-04', 'King. On this the White Rabbit blew three blasts on the trumpet, and called out, \'First witness!\'.', 'Unread'),
('PE015', 'ST006', '2020-08-30', 'I BEG your pardon!\' she exclaimed in a tone of great surprise. \'Of course not,\' said the Mock.', 'Read'),
('PE016', 'ST012', '2020-10-16', 'Now I growl when I\'m pleased, and wag my tail when I\'m angry. Therefore I\'m mad.\' \'I call it.', 'Star'),
('PE017', 'ST007', '2020-12-15', 'She hastily put down the bottle, saying to herself \'That\'s quite enough--I hope I shan\'t grow any.', 'Unread'),
('PE018', 'ST013', '2020-12-19', 'Cheshire cat,\' said the Duchess, \'and that\'s why. Pig!\' She said the last word with such sudden.', 'Star'),
('PE019', 'ST008', '2021-01-11', 'So they had to fall a long way. So they got their tails fast in their mouths. So they couldn\'t get.', 'Star'),
('PE020', 'ST009', '2021-01-24', 'Footman\'s head: it just grazed his nose, and broke to pieces against one of the trees behind him..', 'Star'),
('PE021', 'ST007', '2021-02-11', 'While she was trying to fix on one, the cook took the cauldron of soup off the fire, and at once.', 'Unread'),
('PE022', 'ST003', '2021-02-23', 'Alice could think of nothing else to say but \'It belongs to the Duchess: you\'d better ask HER.', 'Read'),
('PE023', 'ST015', '2021-03-09', 'But her sister sat still just as she left her, leaning her head on her hand, watching the setting.', 'Star'),
('PE024', 'ST014', '2021-04-02', 'Alice! when she got to the door, she found she had forgotten the little golden key, and unlocking.', 'Star'),
('PE025', 'ST003', '2021-04-03', 'Dormouse, who was sitting next to her. \'I can hardly breathe.\' \'I can\'t help it,\' said Alice very.', 'Unread');

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

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`Department_ID`, `Position_ID`, `Position_Name`, `MinSalary`, `MaxSalary`, `Position_Detail`) VALUES
('DE001', 'PO001', 'Chief Human Resources Officer', 100000, 2000000, 'C-level HR Executive'),
('DE001', 'PO002', 'Human Resources Administrator', 50000, 300000, 'Admin of HR Department'),
('DE001', 'PO003', 'Human Resources Assistant', 30000, 150000, 'Assistand of HR Admin'),
('DE001', 'PO004', 'Recruiter', 10000, 50000, 'Interview and recruit new staff'),
('DE002', 'PO001', 'Chief Financial Officer', 100000, 2000000, 'C-level Financial Executive'),
('DE002', 'PO002', 'Financial Manager', 40000, 200000, 'Manage account of company'),
('DE002', 'PO003', 'Financial Auditor', 30000, 150000, 'Proving account'),
('DE003', 'PO001', 'Research and Development Manager', 50000, 300000, 'Manage research in company'),
('DE003', 'PO002', 'Clinical Researcher', 40000, 200000, 'Perform clinical research'),
('DE003', 'PO003', 'Clinical Research Associate', 0, 0, '');

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

--
-- Dumping data for table `promote_history`
--

INSERT INTO `promote_history` (`Staff_ID`, `Promote_Date`, `Department_ID`, `Position_ID`) VALUES
('ST001', '2020-01-01', 'DE001', 'PO001'),
('ST002', '2020-01-01', 'DE001', 'PO002'),
('ST004', '2021-01-01', 'DE001', 'PO002'),
('ST003', '2020-01-01', 'DE001', 'PO003'),
('ST004', '2020-07-01', 'DE001', 'PO003'),
('ST011', '2020-10-01', 'DE001', 'PO003'),
('ST004', '2020-01-01', 'DE001', 'PO004'),
('ST011', '2020-06-01', 'DE001', 'PO004'),
('ST012', '2020-06-01', 'DE001', 'PO004'),
('ST015', '2020-08-01', 'DE001', 'PO004'),
('ST005', '2020-01-01', 'DE002', 'PO001'),
('ST006', '2020-01-01', 'DE002', 'PO002'),
('ST007', '2020-01-01', 'DE002', 'PO003'),
('ST008', '2020-01-01', 'DE003', 'PO001'),
('ST009', '2021-01-01', 'DE003', 'PO001'),
('ST009', '2020-01-01', 'DE003', 'PO002'),
('ST010', '2020-01-01', 'DE003', 'PO002'),
('ST013', '2020-08-01', 'DE003', 'PO002'),
('ST014', '2020-08-01', 'DE003', 'PO002');

-- --------------------------------------------------------

--
-- Table structure for table `recruit_apply`
--

CREATE TABLE `recruit_apply` (
  `RecruitApply_ID` char(9) NOT NULL COMMENT 'Identiry recruitment (Surrogate key)',
  `Recruit_ID` char(5) NOT NULL COMMENT 'The recruitment which a\r\ncandidate applies for',
  `Staff_ID` char(5) DEFAULT NULL COMMENT 'ID of candidate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recruit_apply`
--

INSERT INTO `recruit_apply` (`RecruitApply_ID`, `Recruit_ID`, `Staff_ID`) VALUES
('RA001', 'RE001', 'ST001'),
('RA002', 'RE002', 'ST002'),
('RA003', 'RE003', 'ST003'),
('RA004', 'RE004', 'ST004'),
('RA005', 'RE005', 'ST005'),
('RA006', 'RE006', 'ST006'),
('RA007', 'RE007', 'ST007'),
('RA008', 'RE008', 'ST008'),
('RA009', 'RE009', 'ST009'),
('RA010', 'RE009', 'ST010'),
('RA011', 'RE010', 'ST011'),
('RA012', 'RE010', 'ST012'),
('RA013', 'RE011', 'ST013'),
('RA014', 'RE011', 'ST014'),
('RA015', 'RE010', 'ST015'),
('RA016', 'RE012', 'CA001'),
('RA017', 'RE013', 'CA001'),
('RA018', 'RE013', 'CA002'),
('RA019', 'RE014', 'CA003'),
('RA020', 'RE015', 'CA003'),
('RA021', 'RE015', 'CA004'),
('RA022', 'RE014', 'CA005');

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

--
-- Dumping data for table `recruit_spec`
--

INSERT INTO `recruit_spec` (`Recruit_ID`, `Department_ID`, `Position_ID`, `Recruit_Amount`) VALUES
('RE001', 'DE001', 'PO001', 1),
('RE002', 'DE001', 'PO002', 1),
('RE003', 'DE001', 'PO003', 1),
('RE004', 'DE001', 'PO004', 1),
('RE005', 'DE002', 'PO001', 1),
('RE006', 'DE002', 'PO002', 1),
('RE007', 'DE002', 'PO003', 1),
('RE008', 'DE003', 'PO001', 1),
('RE009', 'DE003', 'PO002', 2),
('RE010', 'DE001', 'PO004', 3),
('RE011', 'DE003', 'PO002', 2),
('RE012', 'DE001', 'PO002', 1),
('RE013', 'DE002', 'PO003', 1),
('RE014', 'DE003', 'PO003', 0),
('RE015', 'DE003', 'PO002', 0);

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

--
-- Dumping data for table `staff_edu_history`
--

INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES
('CA001', 'Bachelor', 'Laneberg', 6, '3.73'),
('CA001', 'Master', 'South Theresamouth', 2, '1.36'),
('CA001', 'Master', 'West Mafalda', 6, '0.54'),
('CA002', 'Bachelor', 'Beierberg', 2, '1.68'),
('CA002', 'Bachelor', 'Port Louland', 5, '2.92'),
('CA002', 'Doctorate', 'Meggieport', 1, '3.05'),
('CA003', 'Bachelor', 'South Kenneth', 2, '3.16'),
('CA003', 'Elementary', 'West Earlene', 4, '3.18'),
('CA004', 'Bachelor', 'Hammesfort', 4, '2.90'),
('CA004', 'Bachelor', 'Heidenreichville', 1, '1.93'),
('CA005', 'Secondary', 'Purdyville', 1, '2.40'),
('CA005', 'Secondary', 'West Nathan', 3, '1.29'),
('ST001', 'Bachelor', 'East Isadorechester', 2, '3.41'),
('ST001', 'Secondary', 'Citlallibury', 4, '1.57'),
('ST001', 'Secondary', 'East Michele', 1, '1.46'),
('ST002', 'Bachelor', 'New Carmela', 2, '0.30'),
('ST002', 'Bachelor', 'Thompsonberg', 3, '0.45'),
('ST002', 'Doctorate', 'New Mason', 6, '1.99'),
('ST003', 'Doctorate', 'West Ottis', 1, '3.91'),
('ST003', 'Elementary', 'Groverside', 1, '0.14'),
('ST003', 'Master', 'Lowefurt', 1, '1.26'),
('ST004', 'Elementary', 'Dachtown', 3, '3.14'),
('ST004', 'Master', 'North Jeremieburgh', 4, '3.19'),
('ST004', 'Master', 'South Eusebio', 1, '3.96'),
('ST005', 'Bachelor', 'East Rossiemouth', 4, '3.82'),
('ST005', 'Doctorate', 'East Estellmouth', 3, '3.03'),
('ST006', 'Doctorate', 'South Isabell', 4, '1.42'),
('ST006', 'Master', 'North Sandrineberg', 2, '2.92'),
('ST007', 'Bachelor', 'Aryannafort', 1, '3.39'),
('ST007', 'Secondary', 'East Helenamouth', 5, '3.16'),
('ST008', 'Elementary', 'Nelsonfort', 4, '0.96'),
('ST008', 'Master', 'Kraigborough', 6, '2.33'),
('ST009', 'Bachelor', 'New Anthony', 1, '2.96'),
('ST009', 'Master', 'East Alshire', 3, '3.86'),
('ST010', 'Bachelor', 'West Clementberg', 4, '0.47'),
('ST010', 'Elementary', 'Jennieshire', 5, '2.68'),
('ST011', 'Bachelor', 'Lake Rico', 3, '3.69'),
('ST011', 'Secondary', 'Gideonfurt', 5, '2.55'),
('ST012', 'Bachelor', 'East Montymouth', 5, '3.38'),
('ST012', 'Doctorate', 'East Weldonland', 1, '0.15'),
('ST013', 'Doctorate', 'East Gunnar', 1, '0.71'),
('ST013', 'Elementary', 'Jaredmouth', 3, '1.88'),
('ST014', 'Doctorate', 'Rolfsonview', 4, '3.93'),
('ST014', 'Master', 'East Abdiel', 1, '2.55'),
('ST015', 'Bachelor', 'New Gabriellemouth', 6, '1.86'),
('ST015', 'Doctorate', 'New Margarettown', 2, '0.38');

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

--
-- Dumping data for table `staff_work_history`
--

INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES
('CA001', 'Rempel Group', 'Clinical Research Associate', '2018-04-23', '2019-06-30'),
('CA003', 'Hilll-Waelchi', 'Chief Human Resources Officer', '2007-11-10', '2009-07-08'),
('CA003', 'Lind-Kohler', 'Clinical Researcher', '2009-09-22', '2019-04-09'),
('CA004', 'Dickens Group', 'Financial Manager', '1994-06-28', '2013-01-14'),
('CA004', 'Legros and Sons', 'Chief Financial Officer', '2013-03-15', '2019-04-13'),
('CA005', 'Blanda Inc', 'Financial Auditor', '2013-12-04', '2016-04-22'),
('ST001', 'Bruen PLC', 'Chief Human Resources Officer', '2003-01-24', '2013-03-05'),
('ST001', 'Medhurst, Kulas and Jast', 'Chief Financial Officer', '2013-07-18', '2019-08-22'),
('ST002', 'Johnson-Kub', 'Human Resources Assistant', '2017-03-28', '2019-07-22'),
('ST003', 'Dach and Sons', 'Human Resources Administrator', '1994-05-19', '2002-05-18'),
('ST003', 'Kris, Hand and Boehm', 'Clinical Researcher', '2002-10-21', '2013-01-13'),
('ST003', 'Lockman Ltd', 'Research and Development Manager', '2013-10-29', '2018-04-19'),
('ST004', 'Denesik and Sons', 'Chief Human Resources Officer', '2007-07-27', '2011-08-25'),
('ST004', 'Wolf, Bernier and Williamson', 'Human Resources Assistant', '2012-01-25', '2018-03-15'),
('ST005', 'Bartell, Harvey and Tremblay', 'Chief Human Resources Officer', '2016-04-11', '2017-11-02'),
('ST005', 'Spinka, Franecki and Mann', 'Clinical Research Associate', '2017-11-10', '2019-12-27'),
('ST006', 'Connelly and Sons', 'Chief Human Resources Officer', '2005-06-24', '2008-04-09'),
('ST006', 'Cruickshank, Mosciski and McKenzie', 'Clinical Research Associate', '2008-12-24', '2019-02-27'),
('ST007', 'Metz, Thiel and Turner', 'Human Resources Administrator', '2017-02-27', '2019-03-23'),
('ST008', 'Lehner-Leffler', 'Chief Financial Officer', '2010-01-26', '2016-03-21'),
('ST008', 'Mills-Johnson', 'Human Resources Administrator', '2016-04-06', '2019-10-01'),
('ST009', 'Kihn, Batz and Dicki', 'Research and Development Manager', '2005-05-04', '2010-10-07'),
('ST009', 'Torphy-O\'Conner', 'Clinical Researcher', '2011-01-10', '2018-08-18'),
('ST010', 'Jast-Kiehn', 'Research and Development Manager', '2016-11-05', '2019-03-01'),
('ST011', 'Fadel, Lang and Langosh', 'Clinical Research Associate', '2006-07-13', '2011-12-05'),
('ST011', 'Gleason, Kub and Casper', 'Clinical Researcher', '2011-05-04', '2017-01-21'),
('ST011', 'Lueilwitz-Schroeder', 'Recruiter', '1999-09-05', '2006-03-30'),
('ST012', 'Cummings-Lebsack', 'Clinical Research Associate', '2008-06-23', '2010-06-03'),
('ST012', 'Schulist Inc', 'Chief Human Resources Officer', '2010-06-15', '2019-04-22'),
('ST013', 'Hills, Nader and Mann', 'Chief Financial Officer', '2005-07-02', '2014-03-18'),
('ST013', 'Murray, Considine and Crist', 'Human Resources Assistant', '2014-11-30', '2019-07-11'),
('ST014', 'Greenfelder LLC', 'Financial Auditor', '1996-07-25', '2000-02-24'),
('ST014', 'Wisoky and Sons', 'Clinical Research Associate', '2000-07-22', '2017-09-13'),
('ST015', 'Boyle, Gulgowski and Schamberger', 'Human Resources Administrator', '2005-04-18', '2016-02-25');

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
  `Course_Name` varchar(50) NOT NULL COMMENT 'Name of the course',
  `Course_Seat` tinyint(4) DEFAULT NULL COMMENT 'Seat available of the course',
  `Course_Detail` text DEFAULT NULL COMMENT 'Description of the course\r\nof course',
  `Course_StartDate` date DEFAULT NULL COMMENT 'Opening date of course',
  `Course_EndDate` date DEFAULT NULL COMMENT 'Close date of course',
  `Status` varchar(20) NOT NULL COMMENT 'Course status: InComing,\r\nInProgress, Completed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train_course`
--

INSERT INTO `train_course` (`Course_ID`, `Agency_ID`, `Course_Name`, `Course_Seat`, `Course_Detail`, `Course_StartDate`, `Course_EndDate`, `Status`) VALUES
('TC001', 'AG001', 'Master in Agile', 20, 'Et eaque ab blanditiis autem molestiae quidem.', '2021-03-01', '2021-03-30', 'Completed'),
('TC002', 'AG001', 'Master in SCRUM', 20, 'Enim porro perspiciatis ut ea veniam vel est totam.', '2021-03-01', '2021-03-30', 'Completed'),
('TC003', 'AG002', 'FinanceX', 10, 'Omnis vel reiciendis sapiente aut quia ratione eum rerum.', '2021-05-25', '2021-06-23', 'InProgress'),
('TC004', 'AG003', 'SPSS in advance', 10, 'Est illum repudiandae voluptatem.', '2021-06-01', '2021-06-29', 'InProgress'),
('TC005', 'AG002', 'FinanceXI', 0, '', '2021-11-21', '0000-00-00', 'InComing');

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
