# NOTE: Use only 3 agency

#
# TABLE STRUCTURE FOR: agency_info
#

DROP TABLE IF EXISTS `agency_info`;

CREATE TABLE `agency_info` (
  `Agency_ID` char(5) NOT NULL COMMENT 'Identify agency',
  `Agency_Name` varchar(20) NOT NULL COMMENT 'Name of agency company',
  `Agency_Email` varchar(80) NOT NULL COMMENT 'Email of agency company',
  `Agency_Tel` char(9) DEFAULT NULL COMMENT 'Business phone numbers\r\nof agency company',
  PRIMARY KEY (`Agency_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('AG001', 'Weissnat-Grimes', 'kautzer.verona@shanahan.info', '031707012');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('AG002', 'O\'Conner PLC', 'anolan@block.com', '025444305');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('AG003', 'Medhurst-Lemke', 'emery.keebler@hills.com', '075632092');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('AG004', 'Schiller, Daugherty ', 'alanis20@wuckert.biz', '035534327');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('AG005', 'Lynch PLC', 'crist.milton@hesselmraz.biz', '076410043');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('AG006', 'Doyle, Keeling and P', 'hauck.muhammad@champlinspinka.com', '026521010');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('AG007', 'Erdman Ltd', 'ebony.oberbrunner@luettgen.com', '049800783');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('AG008', 'Tremblay LLC', 'smith.kyler@quitzonbeahan.com', '001829289');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('AG009', 'Wintheiser-Jones', 'wswaniawski@ferry.net', '041026282');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('AG010', 'Torphy, Monahan and ', 'treutel.filomena@steuber.org', '064831805');

