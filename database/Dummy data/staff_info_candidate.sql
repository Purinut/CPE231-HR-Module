# Use first 5 candidate

#
# TABLE STRUCTURE FOR: staff_info
#

DROP TABLE IF EXISTS `staff_info`;

CREATE TABLE `staff_info` (
  `Staff_ID` char(5) NOT NULL COMMENT 'Identify staff and job\r\ncandidate',
  `Staff_FirstName` varchar(20) NOT NULL COMMENT 'First name of staff',
  `Staff_LastName` varchar(20) NOT NULL COMMENT 'Last name of staff',
  `Staff_Sex` char(1) NOT NULL COMMENT 'Sex of staff: M, F',
  `Staff_DoB` date NOT NULL COMMENT 'Date of birth of staff',
  `Staff_Address` text NOT NULL COMMENT 'Address of staff',
  `Staff_Email` varchar(80) NOT NULL COMMENT 'Email of staff',
  `Staff_Tel` char(10) NOT NULL COMMENT 'Phone numbers of staff',
  `Staff_Status` varchar(20) DEFAULT NULL COMMENT 'Marital status of staff:\r\nSingle, Married, Divorced',
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `staff_info` (`Staff_ID`, `Staff_FirstName`, `Staff_LastName`, `Staff_Sex`, `Staff_DoB`, `Staff_Address`, `Staff_Email`, `Staff_Tel`, `Staff_Status`) VALUES ('CA000', 'Cyril', 'Hodkiewicz', 'F', '2004-12-01', '98115 Adela Plains Suite 940\nLake Hailiehaven, SD 53735-4363', 'kayden09@gmail.com', '0343912465', 'Single');
INSERT INTO `staff_info` (`Staff_ID`, `Staff_FirstName`, `Staff_LastName`, `Staff_Sex`, `Staff_DoB`, `Staff_Address`, `Staff_Email`, `Staff_Tel`, `Staff_Status`) VALUES ('CA001', 'Eileen', 'Carter', 'M', '1997-01-02', '7359 Crist Court Apt. 592\nRobertaville, IN 17833-5390', 'sgusikowski@gmail.com', '0071621608', 'Divorced');
INSERT INTO `staff_info` (`Staff_ID`, `Staff_FirstName`, `Staff_LastName`, `Staff_Sex`, `Staff_DoB`, `Staff_Address`, `Staff_Email`, `Staff_Tel`, `Staff_Status`) VALUES ('CA002', 'Kelsi', 'Hansen', 'M', '1987-07-09', '597 Annabelle Ford Apt. 824\nSouth Clemensborough, SD 96378-9144', 'era59@gmail.com', '0892338306', '');
INSERT INTO `staff_info` (`Staff_ID`, `Staff_FirstName`, `Staff_LastName`, `Staff_Sex`, `Staff_DoB`, `Staff_Address`, `Staff_Email`, `Staff_Tel`, `Staff_Status`) VALUES ('CA003', 'Isom', 'Witting', 'M', '1971-01-11', '895 Wilderman Path Apt. 788\nPort Meganeberg, DC 86455-5456', 'suzanne.kris@gmail.com', '0297310558', 'Married');
INSERT INTO `staff_info` (`Staff_ID`, `Staff_FirstName`, `Staff_LastName`, `Staff_Sex`, `Staff_DoB`, `Staff_Address`, `Staff_Email`, `Staff_Tel`, `Staff_Status`) VALUES ('CA004', 'Abbey', 'Rempel', 'M', '1990-04-30', '5067 Eryn Mill\nPourostown, CO 01129-6502', 'qwolf@yahoo.com', '0706671315', '');
INSERT INTO `staff_info` (`Staff_ID`, `Staff_FirstName`, `Staff_LastName`, `Staff_Sex`, `Staff_DoB`, `Staff_Address`, `Staff_Email`, `Staff_Tel`, `Staff_Status`) VALUES ('CA005', 'Elody', 'Deckow', 'F', '1975-08-26', '11797 Tromp Camp\nPrestonton, ME 64106-9967', 'ernesto05@yahoo.com', '0974489873', '');
INSERT INTO `staff_info` (`Staff_ID`, `Staff_FirstName`, `Staff_LastName`, `Staff_Sex`, `Staff_DoB`, `Staff_Address`, `Staff_Email`, `Staff_Tel`, `Staff_Status`) VALUES ('CA006', 'Finn', 'Howe', 'F', '1993-12-14', '026 D\'Amore Valley\nCorkeryburgh, NE 13274-9258', 'heidenreich.devonte@yahoo.com', '0876580858', '');
INSERT INTO `staff_info` (`Staff_ID`, `Staff_FirstName`, `Staff_LastName`, `Staff_Sex`, `Staff_DoB`, `Staff_Address`, `Staff_Email`, `Staff_Tel`, `Staff_Status`) VALUES ('CA007', 'Nikita', 'Nicolas', 'M', '1984-08-08', '0465 Oceane Lane Apt. 968\nPort Aniyah, NV 88474', 'yvonne.gibson@gmail.com', '0135215048', 'Single');
INSERT INTO `staff_info` (`Staff_ID`, `Staff_FirstName`, `Staff_LastName`, `Staff_Sex`, `Staff_DoB`, `Staff_Address`, `Staff_Email`, `Staff_Tel`, `Staff_Status`) VALUES ('CA008', 'Stefanie', 'Heller', 'F', '1975-08-09', '909 Breitenberg Isle Apt. 879\nPrudenceport, HI 42725-2544', 'utowne@hotmail.com', '0409439894', 'Divorced');
INSERT INTO `staff_info` (`Staff_ID`, `Staff_FirstName`, `Staff_LastName`, `Staff_Sex`, `Staff_DoB`, `Staff_Address`, `Staff_Email`, `Staff_Tel`, `Staff_Status`) VALUES ('CA009', 'Juston', 'Hettinger', 'F', '1980-03-17', '1781 Strosin Harbor Apt. 545\nJoanniefurt, DC 49074', 'lottie.walsh@hotmail.com', '0464314755', 'Single');


