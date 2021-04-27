#Use first 25 petition

#
# TABLE STRUCTURE FOR: petition
#

DROP TABLE IF EXISTS `petition`;

CREATE TABLE `petition` (
  `Petition_ID` char(5) NOT NULL COMMENT 'ID of petition',
  `Staff_ID` char(5) DEFAULT NULL COMMENT 'ID of petition owner',
  `Petition_Date` date NOT NULL COMMENT 'Petition submission date',
  `Petition_Content` text NOT NULL COMMENT 'Petition content',
  `Petition_Status` varchar(20) NOT NULL COMMENT 'Petition status: Unread,\r\nRead, Star',
  PRIMARY KEY (`Petition_ID`),
  KEY `Staff_ID` (`Staff_ID`),
  CONSTRAINT `petition_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff_info` (`Staff_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE001', 'ST002', '2020-01-05', 'And the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Gryphon: \'I went to the Classics master,.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE002', 'ST003', '2020-01-09', 'SOUP!\' \'Chorus again!\' cried the Gryphon, and the Mock Turtle had just begun to repeat it, when a.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE003', 'ST009', '2020-01-15', 'How puzzling all these changes are! I\'m never sure what I\'m going to be, from one minute to.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE004', 'ST003', '2020-01-15', 'King repeated angrily, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE005', 'ST005', '2020-01-31', 'I can\'t remember,\' said the Hatter. \'You MUST remember,\' remarked the King, \'or I\'ll have you.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE006', 'ST004', '2020-02-25', 'She waited for some time without hearing anything more: at last came a rumbling of little.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE007', 'ST001', '2020-04-02', 'Cheshire cat,\' said the Duchess, \'and that\'s why. Pig!\' She said the last word with such sudden.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE008', 'ST001', '2020-04-09', 'Rabbit\'s little white kid gloves while she was talking. \'How CAN I have done that?\' she thought..', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE009', 'ST002', '2020-06-05', 'Hatter. He had been looking at Alice for some time with great curiosity, and this was his first.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE010', 'ST008', '2020-06-22', 'Mouse only shook its head impatiently, and said, without opening its eyes, \'Of course, of course;.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE011', 'ST002', '2020-06-24', 'Fish-Footman was gone, and the other was sitting on the ground near the door, staring stupidly up.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE012', 'ST007', '2020-06-24', 'Alice, \'it would be of very little use without my shoulders. Oh, how I wish I could shut up like a.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE013', 'ST003', '2020-07-17', 'AT ALL. Soup does very well without--Maybe it\'s always pepper that makes people hot-tempered,\' she.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE014', 'ST006', '2020-08-04', 'King. On this the White Rabbit blew three blasts on the trumpet, and called out, \'First witness!\'.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE015', 'ST006', '2020-08-30', 'I BEG your pardon!\' she exclaimed in a tone of great surprise. \'Of course not,\' said the Mock.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE016', 'ST012', '2020-10-16', 'Now I growl when I\'m pleased, and wag my tail when I\'m angry. Therefore I\'m mad.\' \'I call it.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE017', 'ST007', '2020-12-15', 'She hastily put down the bottle, saying to herself \'That\'s quite enough--I hope I shan\'t grow any.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE018', 'ST013', '2020-12-19', 'Cheshire cat,\' said the Duchess, \'and that\'s why. Pig!\' She said the last word with such sudden.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE019', 'ST008', '2021-01-11', 'So they had to fall a long way. So they got their tails fast in their mouths. So they couldn\'t get.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE020', 'ST009', '2021-01-24', 'Footman\'s head: it just grazed his nose, and broke to pieces against one of the trees behind him..', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE021', 'ST007', '2021-02-11', 'While she was trying to fix on one, the cook took the cauldron of soup off the fire, and at once.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE022', 'ST003', '2021-02-23', 'Alice could think of nothing else to say but \'It belongs to the Duchess: you\'d better ask HER.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE023', 'ST015', '2021-03-09', 'But her sister sat still just as she left her, leaning her head on her hand, watching the setting.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE024', 'ST014', '2021-04-02', 'Alice! when she got to the door, she found she had forgotten the little golden key, and unlocking.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE025', 'ST003', '2021-04-03', 'Dormouse, who was sitting next to her. \'I can hardly breathe.\' \'I can\'t help it,\' said Alice very.', 'Unread');

INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE026', 'ST047', '2020-09-19', 'Then she went to work nibbling at the mushroom (she had kept a piece of it in her pocket) till she.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE027', 'ST015', '2020-08-31', 'I don\'t remember where.\' \'Well, it must be removed,\' said the King very decidedly, and he called.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE028', 'ST079', '2020-12-25', 'What happened to you? Tell us all about it!\' Last came a little feeble, squeaking voice, (\'That\'s.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE029', 'ST048', '2020-08-15', 'Alice and all her wonderful Adventures, till she too began dreaming after a fashion, and this was.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE030', 'ST083', '2020-10-15', 'Alice, and she told her sister, as well as she could remember them, all these strange Adventures.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE031', 'ST074', '2020-05-01', 'Alice, every now and then treading on her toes when they passed too close, and waving their.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE032', 'ST091', '2020-11-30', 'Then she went to work nibbling at the mushroom (she had kept a piece of it in her pocket) till she.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE033', 'ST095', '2020-01-29', 'Mouse did not notice this question, but hurriedly went on, \'\"--found it advisable to go with Edgar.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE034', 'ST024', '2020-09-11', 'I had it written down: but I can\'t quite follow it as you say it.\' \'That\'s nothing to what I could.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE035', 'ST062', '2020-01-14', 'Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course not,\' Alice replied very readily:.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE036', 'ST039', '2020-08-03', 'Queen. \'It proves nothing of the sort!\' said Alice. \'Why, you don\'t even know what they\'re about!\'.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE037', 'ST019', '2020-06-30', 'And oh, I wish you could see her after the birds! Why, she\'ll eat a little bird as soon as look at.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE038', 'ST078', '2020-03-23', 'Queen. First came ten soldiers carrying clubs; these were all shaped like the three gardeners,.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE039', 'ST060', '2020-01-15', 'Queen turned angrily away from him, and said to the Knave \'Turn them over!\' The Knave did so, very.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE040', 'ST040', '2020-08-28', 'However, on the second time round, she came upon a low curtain she had not noticed before, and.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE041', 'ST086', '2020-04-17', 'Majesty,\' he began. \'You\'re a very poor speaker,\' said the King. Here one of the guinea-pigs.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE042', 'ST084', '2020-07-30', 'THE.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE043', 'ST034', '2020-10-27', 'She was walking by the White Rabbit, who was peeping anxiously into her face. \'Very,\' said Alice:.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE044', 'ST044', '2020-10-20', 'I!\' said the Lory hastily. \'I thought you did,\' said the Mouse. \'--I proceed. \"Edwin and Morcar,.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE045', 'ST093', '2020-05-09', 'I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE046', 'ST057', '2020-02-13', 'Luckily for Alice, the little magic bottle had now had its full effect, and she grew no larger:.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE047', 'ST065', '2020-07-01', 'King eagerly, and he hurried off. Alice thought she might as well go back, and see how the game.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE048', 'ST036', '2020-08-15', 'And concluded the banquet--] \'What IS the use of repeating all that stuff,\' the Mock Turtle.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE049', 'ST016', '2020-10-08', 'Footman\'s head: it just grazed his nose, and broke to pieces against one of the trees behind him..', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE050', 'ST090', '2020-09-27', 'Alice, feeling very glad that it was over at last: \'and I do so like that curious song about the.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE051', 'ST026', '2020-04-08', 'Pigeon went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE052', 'ST096', '2020-01-09', 'QUITE as much use in the trial one way up as the other.\' As soon as the jury had a little.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE053', 'ST052', '2020-12-04', 'Alice noticed with some surprise that the pebbles were all turning into little cakes as they lay.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE054', 'ST068', '2020-01-11', 'The Duchess took no notice of them even when they hit her; and the baby was howling so much.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE055', 'ST018', '2020-03-01', 'Trims his belt and his buttons, and turns out his toes.\' [later editions continued as follows The.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE056', 'ST081', '2020-01-08', 'Majesty,\' said the White Rabbit, jumping up in a great hurry; \'this paper has just been picked.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE057', 'ST005', '2020-04-21', 'Caterpillar; and it put the hookah into its mouth and began smoking again. This time Alice waited.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE058', 'ST003', '2020-05-10', 'After a while, finding that nothing more happened, she decided on going into the garden at once;.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE059', 'ST011', '2020-04-03', 'Alice recognised the White Rabbit: it was talking in a hurried nervous manner, smiling at.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE060', 'ST041', '2020-01-02', 'Queen was in a furious passion, and went stamping about, and shouting \'Off with his head!\' or \'Off.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE061', 'ST075', '2020-02-11', 'ME\' beautifully printed on it in large letters. It was all very well to say \'Drink me,\' but the.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE062', 'ST000', '2020-10-23', 'She was a good deal frightened by this very sudden change, but she felt that there was no time to.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE063', 'ST002', '2020-07-25', 'I to do?\' said Alice. \'Anything you like,\' said the Footman, and began whistling. \'Oh, there\'s no.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE064', 'ST010', '2020-03-19', 'CHAPTER IX. The Mock Turtle\'s Story \'You can\'t think how glad I am to see you again, you dear old.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE065', 'ST028', '2020-09-01', 'OLD, FATHER WILLIAM,\"\' said the Caterpillar. Alice folded her hands, and began:-- \'You are old,.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE066', 'ST088', '2020-09-07', 'That your eye was as steady as ever; Yet you balanced an eel on the end of your nose-- What made.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE067', 'ST080', '2020-02-16', 'This time there were TWO little shrieks, and more sounds of broken glass. \'What a number of.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE068', 'ST064', '2020-07-13', 'Alice, who always took a great interest in questions of eating and drinking. \'They lived on.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE069', 'ST054', '2020-11-09', 'So she set to work, and very soon finished off the cake. * * * * * * * * * * * * * * * * * * * * *.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE070', 'ST049', '2020-11-27', 'Very soon the Rabbit noticed Alice, as she went hunting about, and called out to her in an angry.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE071', 'ST085', '2020-09-12', 'King. Here one of the guinea-pigs cheered, and was immediately suppressed by the officers of the.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE072', 'ST035', '2020-07-22', 'March Hare said to itself in a whisper.) \'That would be grand, certainly,\' said Alice.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE073', 'ST098', '2020-11-28', 'Alice to herself, \'in my going out altogether, like a candle. I wonder what I should be like.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE074', 'ST027', '2020-05-29', 'Alice noticed with some surprise that the pebbles were all turning into little cakes as they lay.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE075', 'ST046', '2020-06-27', 'You see the earth takes twenty-four hours to turn round on its axis--\' \'Talking of axes,\' said the.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE076', 'ST056', '2020-06-29', 'I should understand that better,\' Alice said very politely, \'if I had it written down: but I can\'t.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE077', 'ST038', '2020-06-14', 'WAS a narrow escape!\' said Alice, a good deal frightened at the sudden change, but very glad to.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE078', 'ST013', '2020-10-03', 'Alice had been looking over his shoulder with some curiosity. \'What a funny watch!\' she remarked..', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE079', 'ST014', '2020-10-22', 'Duck and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE080', 'ST022', '2020-08-18', 'Alice thought to herself, \'I wonder what they WILL do next! If they had any sense, they\'d take the.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE081', 'ST092', '2020-08-19', 'White Rabbit with pink eyes ran close by her. There was nothing so VERY remarkable in that; nor.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE082', 'ST017', '2020-11-15', 'English coast you find a number of bathing machines in the sea, some children digging in the sand.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE083', 'ST006', '2020-06-14', 'Off--\' \'Nonsense!\' said Alice, very loudly and decidedly, and the Queen was silent. The King laid.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE084', 'ST007', '2020-12-06', 'While she was looking at the place where it had been, it suddenly appeared again. \'By-the-bye,.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE085', 'ST067', '2020-12-02', 'While she was looking at the place where it had been, it suddenly appeared again. \'By-the-bye,.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE086', 'ST021', '2020-09-11', 'She was close behind it when she turned the corner, but the Rabbit was no longer to be seen: she.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE087', 'ST099', '2020-05-01', 'This seemed to Alice a good opportunity for making her escape; so she set off at once, and ran.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE088', 'ST031', '2020-08-10', 'Alice \'without pictures or conversations?\' So she was considering in her own mind (as well as she.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE089', 'ST069', '2020-04-11', 'I didn\'t,\' said Alice: \'I don\'t think it\'s at all a pity. I said \"What for?\"\' \'She boxed the.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE090', 'ST009', '2020-10-23', 'I\'m not the same, the next question is, Who in the world am I? Ah, THAT\'S the great puzzle!\' And.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE091', 'ST063', '2020-12-15', 'Alice was not a bit hurt, and she jumped up on to her feet in a moment: she looked up, but it was.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE092', 'ST004', '2020-10-18', 'Alice angrily. \'It wasn\'t very civil of you to offer it,\' said Alice angrily. \'It wasn\'t very.', 'Star');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE093', 'ST072', '2020-06-23', 'It doesn\'t look like one, but it is.\' \'I quite agree with you,\' said the Duchess; \'and the moral.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE094', 'ST012', '2020-04-26', 'Alice went timidly up to the door, and tried to open it; but, as the door opened inwards, and.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE095', 'ST059', '2020-04-17', 'King replied. Here the other guinea-pig cheered, and was suppressed. \'Come, that finished the.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE096', 'ST087', '2020-09-10', 'How queer everything is to-day! And yesterday things went on just as usual. I wonder if I\'ve been.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE097', 'ST055', '2020-03-21', 'Dormouse, who was sitting next to her. \'I can hardly breathe.\' \'I can\'t help it,\' said Alice very.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE098', 'ST066', '2020-08-28', 'I\'d gone to see the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a table set out under.', 'Unread');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE099', 'ST077', '2020-03-10', 'WOULD always get into her eyes--and still as she listened, or seemed to listen, the whole place.', 'Read');
INSERT INTO `petition` (`Petition_ID`, `Staff_ID`, `Petition_Date`, `Petition_Content`, `Petition_Status`) VALUES ('PE100', 'ST045', '2020-01-14', 'Gryphon. \'Then, you know,\' the Mock Turtle went on, \'you throw the--\' \'The lobsters!\' shouted the.', 'Unread');
