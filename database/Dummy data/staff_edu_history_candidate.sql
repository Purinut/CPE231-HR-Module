# Use first 5 candidate

#
# TABLE STRUCTURE FOR: staff_edu_history
#

DROP TABLE IF EXISTS `staff_edu_history`;

CREATE TABLE `staff_edu_history` (
  `Staff_ID` char(5) NOT NULL COMMENT 'ID of staff for education\r\nhistory',
  `StaffEdu_Level` varchar(20) NOT NULL COMMENT 'Education level of staff:\r\nElementary, Secondary,\r\nBachelor, Master,\r\nDoctorate',
  `StaffEdu_Institution` varchar(50) NOT NULL COMMENT 'Education Institution of\r\nstaff in each level',
  `StaffEdu_Duration` tinyint(4) NOT NULL COMMENT 'Education duration of\r\nstaff in each institution',
  `StaffEdu_Grade` decimal(3,2) NOT NULL COMMENT 'GPA of staff',
  PRIMARY KEY (`Staff_ID`,`StaffEdu_Level`,`StaffEdu_Institution`),
  KEY `Staff_ID` (`Staff_ID`),
  CONSTRAINT `staff_edu_history_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff_info` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA000', 'Elementary', 'East Forestland', 5, '1.87');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA000', 'Elementary', 'Port Hilma', 6, '0.26');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA000', 'Secondary', 'New Westley', 6, '2.86');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA001', 'Bachelor', 'Laneberg', 6, '3.73');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA001', 'Master', 'South Theresamouth', 2, '1.36');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA001', 'Master', 'West Mafalda', 6, '0.54');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA002', 'Bachelor', 'Beierberg', 2, '1.68');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA002', 'Bachelor', 'Port Louland', 5, '2.92');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA002', 'Doctorate', 'Meggieport', 1, '3.05');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA003', 'Bachelor', 'South Kenneth', 2, '3.16');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA003', 'Elementary', 'West Earlene', 4, '3.18');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA004', 'Bachelor', 'Hammesfort', 4, '2.90');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA004', 'Bachelor', 'Heidenreichville', 1, '1.93');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA005', 'Secondary', 'Purdyville', 1, '2.40');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA005', 'Secondary', 'West Nathan', 3, '1.29');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA006', 'Master', 'South Sanford', 1, '2.32');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA006', 'Master', 'Wolffside', 2, '1.59');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA007', 'Bachelor', 'East Libbie', 3, '2.22');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA007', 'Elementary', 'North Fernando', 1, '0.01');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA008', 'Bachelor', 'North Estherburgh', 5, '0.65');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA008', 'Elementary', 'East Eleonoremouth', 5, '2.74');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA009', 'Bachelor', 'Emmittland', 1, '3.43');
INSERT INTO `staff_edu_history` (`Staff_ID`, `StaffEdu_Level`, `StaffEdu_Institution`, `StaffEdu_Duration`, `StaffEdu_Grade`) VALUES ('CA009', 'Secondary', 'East Gregoria', 1, '3.50');


