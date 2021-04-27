# NOTE: Use 5 first course

#
# TABLE STRUCTURE FOR: train_course
#

DROP TABLE IF EXISTS `train_course`;

CREATE TABLE `train_course` (
  `Course_ID` char(5) NOT NULL COMMENT 'Identify course',
  `Agency_ID` char(5) NOT NULL COMMENT 'Agency that train staff',
  `Course_Detail` text DEFAULT NULL COMMENT 'Subject and description\r\nof course',
  `Course_StartDate` date DEFAULT NULL COMMENT 'Opening date of course',
  `Course_EndDate` date DEFAULT NULL COMMENT 'Close date of course',
  `Status` varchar(20) NOT NULL COMMENT 'Course status: InComing,\r\nInProgress, Completed',
  PRIMARY KEY (`Course_ID`),
  KEY `Agency_ID` (`Agency_ID`),
  CONSTRAINT `train_course_ibfk_1` FOREIGN KEY (`Agency_ID`) REFERENCES `agency_info` (`Agency_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `train_course` (`Course_ID`, `Agency_ID`, `Course_Detail`, `Course_StartDate`, `Course_EndDate`, `Status`) VALUES ('TC001', 'AG001', 'Subject: Master in Agile. Seat: 20. Description: Et eaque ab blanditiis autem molestiae quidem.', '2021-03-01', '2021-03-30', 'Completed');
INSERT INTO `train_course` (`Course_ID`, `Agency_ID`, `Course_Detail`, `Course_StartDate`, `Course_EndDate`, `Status`) VALUES ('TC002', 'AG001', 'Subject: Master in SCRUM. Seat: 20. Description: Enim porro perspiciatis ut ea veniam vel est totam.', '2021-03-01', '2021-03-30', 'Completed');
INSERT INTO `train_course` (`Course_ID`, `Agency_ID`, `Course_Detail`, `Course_StartDate`, `Course_EndDate`, `Status`) VALUES ('TC003', 'AG002', 'Subject: FinanceX. Seat: 10. Description: Omnis vel reiciendis sapiente aut quia ratione eum rerum.', '2021-05-25', '2021-06-23', 'InProgress');
INSERT INTO `train_course` (`Course_ID`, `Agency_ID`, `Course_Detail`, `Course_StartDate`, `Course_EndDate`, `Status`) VALUES ('TC004', 'AG003', 'Subject: SPSS in advance. Seat: 10. Description: Est illum repudiandae voluptatem.', '2021-06-01', '2021-06-29', 'InProgress');
INSERT INTO `train_course` (`Course_ID`, `Agency_ID`, `Course_Detail`, `Course_StartDate`, `Course_EndDate`, `Status`) VALUES ('TC005', 'AG002', 'Subject: FinanceXI.', '2021-11-21', '', 'InComing');
INSERT INTO `train_course` (`Course_ID`, `Agency_ID`, `Course_Detail`, `Course_StartDate`, `Course_EndDate`, `Status`) VALUES ('TC006', 'AG001', 'Et voluptatem ad qui esse eveniet officiis rerum. Omnis quidem quisquam iste quidem cupiditate voluptatem enim quo. Consequatur beatae aut dolorem expedita deserunt ratione praesentium. Et doloribus consequatur fugiat numquam quasi illo quis et.', '2020-03-20', '1995-08-03', 'Completed');
INSERT INTO `train_course` (`Course_ID`, `Agency_ID`, `Course_Detail`, `Course_StartDate`, `Course_EndDate`, `Status`) VALUES ('TC007', 'AG003', 'Saepe sint necessitatibus ad nihil necessitatibus tempora. Minus ut nam est. Sit est atque repellendus. Qui eaque fugit repellat doloribus sequi.', '2014-03-09', '2000-10-26', 'InComing');
INSERT INTO `train_course` (`Course_ID`, `Agency_ID`, `Course_Detail`, `Course_StartDate`, `Course_EndDate`, `Status`) VALUES ('TC008', 'AG002', 'Est architecto quas qui asperiores enim aut. Tenetur cumque enim quasi alias est iste ullam. Ea ea veritatis est asperiores repellat tenetur. Nihil qui totam voluptatem quod officia delectus.', '1989-12-25', '2021-04-22', 'Completed');
INSERT INTO `train_course` (`Course_ID`, `Agency_ID`, `Course_Detail`, `Course_StartDate`, `Course_EndDate`, `Status`) VALUES ('TC009', 'AG002', 'Dolor facere ut commodi minima sit. Vero enim labore rerum occaecati non optio. Exercitationem porro qui fuga ea fugit ut. Ut dolores voluptatem voluptate.', '1992-02-29', '1980-06-28', 'InComing');
INSERT INTO `train_course` (`Course_ID`, `Agency_ID`, `Course_Detail`, `Course_StartDate`, `Course_EndDate`, `Status`) VALUES ('TC010', 'AG001', 'Consequatur ipsa eaque labore voluptatibus aliquam officia aspernatur. Dolor omnis debitis qui sunt consequatur. Necessitatibus molestiae nulla doloribus tempora qui. Illum earum quo non rerum quas. Quia similique sit autem omnis.', '2007-06-20', '2009-03-06', 'Completed');


