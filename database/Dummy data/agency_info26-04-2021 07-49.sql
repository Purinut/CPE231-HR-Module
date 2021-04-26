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

INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0000', 'Balistreri, Fahey an', 'manley61@hintz.org', '097336418');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0001', 'Robel-Berge', 'eichmann.josie@skiles.info', '011737827');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0002', 'Huel, Crona and Kihn', 'qstark@cummingssipes.com', '068306085');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0003', 'Walter Group', 'davis.keagan@mayertschimmel.com', '063805029');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0004', 'Wuckert, Gerlach and', 'verona.treutel@borer.info', '092192877');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0005', 'Fahey, Rutherford an', 'ulises.mcdermott@feeney.com', '027084916');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0006', 'Rolfson Ltd', 'ldare@ebert.com', '057302735');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0007', 'Toy, Leffler and Sch', 'fritz.o\'kon@turcotterolfson.net', '082342044');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0008', 'Steuber-Medhurst', 'tracy.ritchie@bahringer.com', '067247630');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0009', 'Abernathy, Koepp and', 'adolphus.deckow@runte.info', '045063367');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0010', 'Ullrich Ltd', 'mac.haley@beier.com', '093293328');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0011', 'Rosenbaum, Lehner an', 'goldner.tate@markskoepp.info', '003753407');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0012', 'Sipes Group', 'yweber@marks.org', '084636663');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0013', 'Klein, Krajcik and K', 'jaron.adams@walter.com', '096374690');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0014', 'Smitham-Schultz', 'huels.peggie@dickens.net', '034984826');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0015', 'Heller, Jones and Wy', 'omohr@gislason.com', '057663862');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0016', 'Schmeler Ltd', 'toy.shana@ricemacejkovic.com', '038074000');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0017', 'Orn Group', 'cwisozk@reichel.com', '095468765');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0018', 'Wunsch and Sons', 'carter.mariano@weimann.com', '057435785');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0019', 'Nolan, Ernser and Ku', 'roosevelt94@wilderman.net', '071236228');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0020', 'Schmeler-Kerluke', 'metz.herminio@okon.biz', '062285500');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0021', 'Gleason and Sons', 'chagenes@witting.com', '033764947');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0022', 'Brakus, Turner and N', 'pmayert@dooley.com', '048693498');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0023', 'Fisher-Marvin', 'alize.weissnat@dickensratke.info', '073701973');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0024', 'Abernathy-Miller', 'randall87@hilpertkling.com', '094445768');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0025', 'Pollich Ltd', 'hudson.jonathon@langosh.info', '028532203');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0026', 'Huel PLC', 'keely.breitenberg@hanebartoletti.biz', '037817069');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0027', 'Lemke, Casper and Ma', 'jacobs.breana@reillyflatley.info', '091901544');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0028', 'Bauch-Ernser', 'ethelyn.kling@yundt.info', '081733445');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0029', 'Wiza Inc', 'kulas.stanton@rowe.com', '040893965');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0030', 'Hartmann and Sons', 'jess.leffler@kuhlman.com', '026667626');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0031', 'Kirlin-Aufderhar', 'lonny.powlowski@auer.info', '048895499');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0032', 'Cronin-Carroll', 'reinhold85@wilderman.com', '014775886');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0033', 'Sanford, Turcotte an', 'jarred50@ziemann.com', '057552388');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0034', 'Boyle Ltd', 'wunsch.brendon@mcglynn.org', '065387501');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0035', 'Weber Group', 'yasmin.pollich@krajciklarson.com', '065293734');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0036', 'Jacobi, Hegmann and ', 'emilie79@labadie.org', '071975315');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0037', 'Rempel, Batz and Hei', 'orpha.adams@adams.org', '091061724');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0038', 'Lemke-Stehr', 'oreynolds@casperledner.com', '050321245');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0039', 'Rolfson-Luettgen', 'hallie.wolff@weissnatstreich.biz', '035083973');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0040', 'Beahan, Hand and Cro', 'leuschke.edwardo@jastheller.com', '019731069');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0041', 'Roberts, Douglas and', 'hkeeling@ullrich.com', '056715010');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0042', 'Bogisich, Padberg an', 'lhermiston@greenholt.com', '022663854');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0043', 'Koch-Cartwright', 'ebba.stroman@runolfsdottir.com', '033759873');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0044', 'Ferry, Goodwin and K', 'winnifred.hagenes@oconnergerhold.org', '086798852');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0045', 'Walker, Smith and Or', 'streich.freida@balistreri.com', '092247711');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0046', 'Douglas, Orn and Bru', 'ankunding.daija@feestsanford.com', '052049507');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0047', 'Feest Ltd', 'sroob@kirlin.com', '051095136');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0048', 'Nader, Zieme and Fra', 'ambrose.gibson@kris.com', '017852773');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0049', 'Barton, O\'Hara and R', 'lromaguera@heathcote.com', '084428992');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0050', 'Hills-Harvey', 'hswaniawski@mosciski.com', '087963198');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0051', 'Nolan Inc', 'pacocha.patrick@terrybradtke.com', '064517757');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0052', 'Rath and Sons', 'asha.herman@medhursttillman.org', '095415856');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0053', 'Kuhic Group', 'gluettgen@stroman.com', '078441599');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0054', 'Murray, Blick and Wa', 'guiseppe.bartoletti@grimes.biz', '055293606');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0055', 'Halvorson LLC', 'vkuvalis@kubcummings.biz', '027378623');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0056', 'Pagac-Upton', 'mona21@bayerfeest.com', '019162903');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0057', 'Koss Ltd', 'skiles.timmothy@colelueilwitz.info', '059772176');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0058', 'Sawayn, Thiel and Ba', 'ilegros@thompsonosinski.com', '063945802');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0059', 'Hamill, Kunze and Do', 'uschimmel@torphy.com', '094740402');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0060', 'Kassulke-D\'Amore', 'gottlieb.magdalen@roob.info', '039501449');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0061', 'Bruen-Cartwright', 'keaton.mohr@little.biz', '094613529');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0062', 'Graham Ltd', 'lynch.griffin@wehner.com', '029266657');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0063', 'Abbott, Witting and ', 'wrippin@zemlak.info', '059412871');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0064', 'Gorczany Ltd', 'ulangworth@jast.net', '055189265');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0065', 'McCullough-Pouros', 'harris.nigel@brown.com', '092647618');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0066', 'Parker-Langworth', 'xdaugherty@ondrickametz.org', '034272065');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0067', 'Swift, Ledner and O\'', 'trever.bernier@wehnerquigley.biz', '006698415');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0068', 'Gutkowski Group', 'christy.prosacco@halvorson.net', '023611233');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0069', 'Kuhic, Beier and Row', 'loyce.wehner@anderson.org', '048646101');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0070', 'Miller Inc', 'abe95@feeney.com', '000822490');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0071', 'Schuster Inc', 'jaida87@dooleymorar.com', '004871400');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0072', 'Kozey-Marvin', 'bret.west@hesselhauck.com', '018007170');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0073', 'Hilpert, Schaefer an', 'zmacejkovic@johnston.biz', '034961467');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0074', 'Klocko, Swift and Sc', 'eveline.greenfelder@heathcote.com', '016537645');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0075', 'Gleason, Deckow and ', 'jeanette.rau@brakusmoen.com', '041977281');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0076', 'Goldner-Gorczany', 'elvera74@hansenbarton.com', '024440249');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0077', 'Dooley and Sons', 'eloise.mccullough@durgantreutel.com', '073416110');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0078', 'Farrell Inc', 'pat68@carrollkeebler.org', '039982664');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0079', 'Waelchi-Fritsch', 'xsanford@collins.com', '053329604');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0080', 'Stoltenberg, Price a', 'lon.von@braun.com', '062654377');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0081', 'Schaefer-Moore', 'wisoky.roxanne@hamill.com', '018407979');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0082', 'Lebsack LLC', 'clyde.bartell@okon.com', '094518061');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0083', 'Satterfield-Mayer', 'raven82@borer.com', '089889423');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0084', 'Keeling Inc', 'jaqueline.reichel@ferryaltenwerth.com', '067183424');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0085', 'Bruen, Balistreri an', 'lucious.corkery@durganzieme.com', '019015133');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0086', 'Zieme, Pfannerstill ', 'schultz.elva@hammes.com', '022780128');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0087', 'Bins PLC', 'donny.greenholt@rutherford.com', '098327720');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0088', 'Lubowitz-Walker', 'jritchie@cristschroeder.com', '092565624');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0089', 'Kuhlman, Bins and Sc', 'keon23@schaden.com', '040588341');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0090', 'Bogisich Ltd', 'devante66@ankundingwilliamson.org', '077896847');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0091', 'Rempel-Cole', 'pkuhic@dickens.com', '016059235');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0092', 'Steuber Inc', 'kiley.denesik@kerlukemccullough.org', '037002076');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0093', 'Aufderhar LLC', 'rene29@wisoky.info', '086729152');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0094', 'Cremin PLC', 'hbrakus@haley.info', '016874406');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0095', 'Lubowitz-Hayes', 'rbayer@klein.com', '025936864');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0096', 'Collins Inc', 'ntorp@johnston.com', '071847796');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0097', 'Rutherford Ltd', 'minerva.bernhard@mclaughlin.com', '066356657');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0098', 'Baumbach Group', 'sandy24@jaskolski.info', '063383202');
INSERT INTO `agency_info` (`Agency_ID`, `Agency_Name`, `Agency_Email`, `Agency_Tel`) VALUES ('A0099', 'Jerde-Funk', 'general.walsh@haagtorp.com', '019298783');


