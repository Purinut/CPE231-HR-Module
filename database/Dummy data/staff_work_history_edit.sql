# Use all history

#
# TABLE STRUCTURE FOR: staff_work_history
#

DROP TABLE IF EXISTS `staff_work_history`;

CREATE TABLE `staff_work_history` (
  `Staff_ID` char(5) NOT NULL COMMENT 'ID of staff for work history',
  `StaffWH_Workplace` varchar(50) NOT NULL COMMENT '50) Workplace of staff',
  `StaffWH_Position` varchar(50) NOT NULL COMMENT 'Position of staff in each\r\nworkplace',
  `StaffWH_StartDate` date NOT NULL COMMENT 'First date of work in each\r\nposition',
  `StaffWH_EndDate` date NOT NULL COMMENT 'Last date of work in each\r\nposition',
  PRIMARY KEY (`Staff_ID`,`StaffWH_Workplace`,`StaffWH_Position`),
  KEY `Staff_ID` (`Staff_ID`),
  CONSTRAINT `staff_work_history_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff_info` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('CA001', 'Rempel Group', 'Clinical Research Associate', '2018-04-23', '2019-06-30');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('CA003', 'Hilll-Waelchi', 'Chief Human Resources Officer', '2007-11-10', '2009-07-08');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('CA003', 'Lind-Kohler', 'Clinical Researcher', '2009-09-22', '2019-04-09');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('CA004', 'Dickens Group', 'Financial Manager', '1994-06-28', '2013-01-14');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('CA004', 'Legros and Sons', 'Chief Financial Officer', '2013-03-15', '2019-04-13');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('CA005', 'Blanda Inc', 'Financial Auditor', '2013-12-04', '2016-04-22');

INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST001', 'Bruen PLC', 'Chief Human Resources Officer', '2003-01-24', '2013-03-05');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST001', 'Medhurst, Kulas and Jast', 'Chief Financial Officer', '2013-07-18', '2019-08-22');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST002', 'Johnson-Kub', 'Human Resources Assistant', '2017-03-28', '2019-07-22');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST003', 'Dach and Sons', 'Human Resources Administrator', '1994-05-19', '2002-05-18');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST003', 'Kris, Hand and Boehm', 'Clinical Researcher', '2002-10-21', '2013-01-13');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST003', 'Lockman Ltd', 'Research and Development Manager', '2013-10-29', '2018-04-19');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST004', 'Denesik and Sons', 'Chief Human Resources Officer', '2007-07-27', '2011-08-25');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST004', 'Wolf, Bernier and Williamson', 'Human Resources Assistant', '2012-01-25', '2018-03-15');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST005', 'Bartell, Harvey and Tremblay', 'Chief Human Resources Officer', '2016-04-11', '2017-11-02');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST005', 'Spinka, Franecki and Mann', 'Clinical Research Associate', '2017-11-10', '2019-12-27');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST006', 'Connelly and Sons', 'Chief Human Resources Officer', '2005-06-24', '2008-04-09');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST006', 'Cruickshank, Mosciski and McKenzie', 'Clinical Research Associate', '2008-12-24', '2019-02-27');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST007', 'Metz, Thiel and Turner', 'Human Resources Administrator', '2017-02-27', '2019-03-23');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST008', 'Lehner-Leffler', 'Chief Financial Officer', '2010-01-26', '2016-03-21');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST008', 'Mills-Johnson', 'Human Resources Administrator', '2016-04-06', '2019-10-01');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST009', 'Kihn, Batz and Dicki', 'Research and Development Manager', '2005-05-04', '2010-10-07');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST009', 'Torphy-O\'Conner', 'Clinical Researcher', '2011-01-10', '2018-08-18');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST010', 'Jast-Kiehn', 'Research and Development Manager', '2016-11-05', '2019-03-01');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST011', 'Lueilwitz-Schroeder', 'Recruiter', '1999-09-05', '2006-03-30');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST011', 'Fadel, Lang and Langosh', 'Clinical Research Associate', '2006-07-13', '2011-12-05');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST011', 'Gleason, Kub and Casper', 'Clinical Researcher', '2011-05-04', '2017-01-21');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST012', 'Cummings-Lebsack', 'Clinical Research Associate', '2008-06-23', '2010-06-03');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST012', 'Schulist Inc', 'Chief Human Resources Officer', '2010-06-15', '2019-04-22');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST013', 'Hills, Nader and Mann', 'Chief Financial Officer', '2005-07-02', '2014-03-18');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST013', 'Murray, Considine and Crist', 'Human Resources Assistant', '2014-11-30', '2019-07-11');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST014', 'Greenfelder LLC', 'Financial Auditor', '1996-07-25', '2000-02-24');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST014', 'Wisoky and Sons', 'Clinical Research Associate', '2000-07-22', '2017-09-13');
INSERT INTO `staff_work_history` (`Staff_ID`, `StaffWH_Workplace`, `StaffWH_Position`, `StaffWH_StartDate`, `StaffWH_EndDate`) VALUES ('ST015', 'Boyle, Gulgowski and Schamberger', 'Human Resources Administrator', '2005-04-18', '2016-02-25');


