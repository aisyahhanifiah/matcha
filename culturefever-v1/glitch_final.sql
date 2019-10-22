-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 22, 2019 at 02:48 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `glitch_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`) VALUES
(1, 'Gesture'),
(2, 'Etiquette');

-- --------------------------------------------------------

--
-- Table structure for table `practices`
--

DROP TABLE IF EXISTS `practices`;
CREATE TABLE IF NOT EXISTS `practices` (
  `practiceID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `typeID` int(11) NOT NULL,
  `pracName` varchar(255) DEFAULT NULL,
  `pracDesc` longtext NOT NULL,
  `pracCountry` varchar(255) DEFAULT NULL,
  `pracPicture` varchar(255) NOT NULL,
  `pracUp` int(11) NOT NULL DEFAULT '0',
  `pracDown` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`practiceID`),
  KEY `fk_user_id` (`userID`),
  KEY `fk_category_id` (`categoryID`),
  KEY `fk_type_id` (`typeID`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practices`
--

INSERT INTO `practices` (`practiceID`, `userID`, `categoryID`, `typeID`, `pracName`, `pracDesc`, `pracCountry`, `pracPicture`, `pracUp`, `pracDown`) VALUES
(1, 5, 1, 1, 'Air Kiss', 'It is common to air-kiss an elder\'s hand as a traditional form of respectful greeting. Instead of pursing one\'s lips, the younger person exhaling through his nose softly on the hand before drawing the hand to the younger person\'s forehead.', 'Malaysia', 'https://i2.wp.com/www.anakmuslimstudio.com/wp-content/uploads/2018/03/doa-untuk-orang-tua-thumbnail.png?fit=1000%2C563&ssl=1', 376, 3),
(17, 5, 1, 9, 'Fingers all together', 'A motion to show you\'ll only be a minute.', 'Italy', 'https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/8Ofcko1/videoblocks-caucasian-male-hand-in-long-sleeve-jacket-making-cash-sign-gesture-rubbing-fingers-together-on-black-background-close-up-isolated_reqbmzr5g_thumbnail-full08.png', 543, 2),
(15, 5, 1, 9, 'Fingers all together', 'A sign for a small amount of something.', 'Democratic Republic of the Congo', 'https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/8Ofcko1/videoblocks-caucasian-male-hand-in-long-sleeve-jacket-making-cash-sign-gesture-rubbing-fingers-together-on-black-background-close-up-isolated_reqbmzr5g_thumbnail-full08.png', 66, 7),
(16, 5, 1, 9, 'Fingers all together', 'Indicates that something is beautiful or well.', 'Turkey', 'http://www.robinesrock.com/uploads/1/0/3/3/10338764/7185276_orig.jpg', 54, 1),
(14, 5, 1, 9, 'Fingers all together', '\'What is this?\' or \'What do you want?\' - usually done with a flick of the wrist', 'Italy', 'http://www.robinesrock.com/uploads/1/0/3/3/10338764/7185276_orig.jpg', 7876, 400),
(13, 5, 1, 9, 'Horn fingers', 'In other parts of the world, to make this sign at someone is to tell them their wife is cheating on them', 'Spain', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVI7e6StLIbAVuOK7i7JlyQOuUE-cyj4sffyStnqHbiSM0FMe5', 655, 32),
(11, 5, 1, 9, 'Horn fingers', 'In other parts of the world, to make this sign at someone is to tell them their wife is cheating on them', 'Colombia', 'https://thoughtcatalog.files.wordpress.com/2018/03/rockandroll.jpg?w=1140&h=762&resize=1140,761&quality=95&strip=all&crop=1', 97, 0),
(12, 5, 1, 9, 'Horn fingers', 'In other parts of the world, to make this sign at someone is to tell them their wife is cheating on them', 'Portugal', 'https://thoughtcatalog.files.wordpress.com/2018/03/rockandroll.jpg?w=1140&h=762&resize=1140,761&quality=95&strip=all&crop=1', 78, 44),
(8, 5, 1, 9, 'Horn fingers', 'In other parts of the world, to make this sign at someone is to tell them their wife is cheating on them', 'United States', 'https://thoughtcatalog.files.wordpress.com/2018/03/rockandroll.jpg?w=1140&h=762&resize=1140,761&quality=95&strip=all&crop=1', 444, 7),
(9, 5, 1, 9, 'Horn fingers', 'In other parts of the world, to make this sign at someone is to tell them their wife is cheating on them', 'Italy', 'https://thoughtcatalog.files.wordpress.com/2018/03/rockandroll.jpg?w=1140&h=762&resize=1140,761&quality=95&strip=all&crop=1', 67, 98),
(7, 5, 1, 9, 'Horn fingers', 'Adopted by rockers as a sign of approval, and in essence, to \'rock on\'.', 'United States', 'http://madbrad.podbean.com/mf/web/9f9hj/HORNS_CONCERT.jpg', 375, 33),
(6, 5, 1, 5, 'OK sign', 'If the okay sign is turned upside down it is considered a rude gesture, equivalent to the one finger salute', 'Brazil', 'https://img.buzzfeed.com/buzzfeed-static/static/2014-06/4/14/campaign_images/webdr08/the-dos-and-donts-of-the-2014-world-cup-in-brazil-2-26731-1401905263-23_dblbig.jpg', 8752, 65),
(3, 5, 1, 1, 'OK sign', 'Indicates satisfaction', 'United Kingdom', 'https://vignette.wikia.nocookie.net/iranyitok/images/1/1f/A-ok-sign.jpg/revision/latest?cb=20131216183119&path-prefix=hu', 777, 7),
(4, 5, 1, 1, 'OK sign', 'Indicates satisfaction', 'United States', 'https://qph.fs.quoracdn.net/main-qimg-612366ca00c5d67de91f016d09e90f8e-c', 235, 74),
(5, 5, 1, 1, 'OK sign', 'Indicates satisfaction', 'Canada', 'https://thoughtcatalog.files.wordpress.com/2018/03/a-ok.jpg?resize=3232,2160&quality=95&strip=all&crop=1', 765, 56),
(10, 5, 1, 9, 'Horn fingers', 'In other parts of the world, to make this sign at someone is to tell them their wife is cheating on them', 'Brazil', 'https://thoughtcatalog.files.wordpress.com/2018/03/rockandroll.jpg?w=1140&h=762&resize=1140,761&quality=95&strip=all&crop=1', 437, 4),
(2, 5, 1, 6, 'V sign', 'Seen as rude and frequently used to signify contempt or defiance towards authority', 'Australia', 'https://thoughtcatalog.files.wordpress.com/2018/03/peace.jpg?w=3232&h=2160', 865, 10),
(18, 5, 1, 1, 'Thumbs Up', 'A sign of approval', 'Australia', 'https://i0.wp.com/workouttrends.com/wp-content/uploads/2014/09/appreciation-thumbs-up.-jpg.jpg?fit=2304%2C3456&ssl=1', 547, 16),
(19, 5, 1, 1, 'Thumbs Up', 'A sign of approval', 'United States', 'https://openclipart.org/download/298173/hand-3214804.svg', 458, 40),
(20, 5, 1, 1, 'Thumbs Up', 'A sign of approval', 'United Kingdom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt1accDCTtQMu_xOIcQ4BV_tSsX6xJA1WwLkQdPngo6dfaLVq9Bw', 684, 25),
(21, 5, 1, 1, 'Thumbs Up', 'A sign of approval', 'Canada', 'https://images.pexels.com/photos/327533/pexels-photo-327533.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', 222, 50),
(22, 5, 1, 1, 'Thumbs Up', 'A sign of approval', 'Russia', 'https://images.pexels.com/photos/193821/pexels-photo-193821.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', 151, 2),
(23, 5, 1, 1, 'Thumbs Up', 'In other parts of the world, this is seen as an \'up yours\'', 'Africa', 'https://cdn.pixabay.com/photo/2017/09/01/11/56/finger-2704016_960_720.jpg', 249, 5),
(24, 5, 1, 1, 'Thumbs Up', 'In other parts of the world, this is seen as an \'up yours\'', 'Iran', 'https://images.pexels.com/photos/684385/pexels-photo-684385.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', 157, 13),
(25, 5, 1, 1, 'Thumbs Up', 'In other parts of the world, this is seen as an \'up yours\'', 'Iraq', 'https://images.pexels.com/photos/653429/pexels-photo-653429.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', 235, 20),
(26, 5, 1, 1, 'Thumbs Up', 'In other parts of the world, this is seen as an \'up yours\'', 'Afghanistan', 'https://images.pexels.com/photos/1102608/pexels-photo-1102608.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 167, 9),
(27, 5, 1, 9, 'Crossed Fingers', 'To cross one\'s fingers is to wish for good luck', 'Australia', 'https://www.reillysalestraining.com/wp-content/uploads/crossed-fingers-sign-of-the-cross-resembles-the-salvation-of-mankind-through-Christs-crucifix.jpg', 301, 14),
(28, 5, 1, 9, 'Crossed Fingers', 'To cross one\'s fingers is to wish for good luck', 'United States', 'https://previews.123rf.com/images/stylephotographs/stylephotographs1509/stylephotographs150900045/45072210-crossed-fingers-of-an-old-woman-telling-the-truth.jpg', 424, 31),
(29, 5, 1, 9, 'Crossed Fingers', 'To cross one\'s fingers is to wish for good luck', 'United Kingdom', 'https://img.artrabbit.com/events/fingers-crossed/images/O1Mjoosq1FXN/960x960/1091478670690585275054c9041a5b154.jpg', 195, 3),
(30, 5, 1, 9, 'Crossed Fingers', 'To cross one\'s fingers is to wish for good luck', 'Canada', 'https://st.depositphotos.com/1000633/4186/i/950/depositphotos_41863355-stock-photo-crossed-fingers-symbolizing-good-luck.jpg', 268, 10),
(31, 5, 1, 9, 'Crossed Fingers', 'Crossed fingers are said to resemble female genitals, hence this gesture is seen as lewd', 'Vietnam', 'https://img.clipartxtras.com/14fa1a0d36ba023d90fbfe004dfd8ac8_crossed-fingers-by-slushee1-on-deviantart-fingers-crossed-drawing_867-921.jpeg', 124, 55),
(32, 5, 1, 4, 'V sign', 'A harmless backwards sign for peace', 'United States', 'https://stronglang.files.wordpress.com/2015/10/morris-et-al.jpg', 444, 18),
(33, 5, 1, 4, 'V sign', 'Seen as rude and frequently used to signify contempt or defiance towards authority', 'United Kingdom', 'https://image.shutterstock.com/image-photo/v-sign-260nw-540436801.jpg', 521, 20),
(34, 5, 1, 4, 'V sign', 'Seen as rude and frequently used to signify contempt or defiance towards authority', 'Ireland', 'https://timedotcom.files.wordpress.com/2014/08/v-sign.jpg', 321, 1),
(35, 5, 1, 4, 'V sign', 'Seen as rude and frequently used to signify contempt or defiance towards authority', 'New Zealand', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Xy0kHToRt0HAIcLqpHZidsK29qqGuhkhy5otl_tO7XThjbmi', 125, 6),
(36, 5, 1, 4, 'Come Here sign', 'Gesture is used to motion somebody to come over', 'Australia', 'https://us.123rf.com/450wm/milkos/milkos1708/milkos170802409/84400599-male-hand-beckoning-isolated-on-white-background-man-gesturing-with-one-finger-come-here-symbol.jpg?ver=6', 584, 34),
(37, 5, 1, 4, 'Come Here sign', 'Gesture is used to motion somebody to come over', 'United States', 'https://southbourneschool.co.uk/wp-content/uploads/2016/09/come-here-please.jpg', 189, 7),
(38, 5, 1, 4, 'Come Here sign', 'Gesture is used to motion somebody to come over', 'United Kingdom', 'https://ak9.picdn.net/shutterstock/videos/21138739/thumb/8.jpg', 222, 21),
(39, 5, 1, 4, 'Come Here sign', 'Gesture is used to motion somebody to come over', 'Canada', 'https://cdn2.vectorstock.com/i/thumb-large/29/06/hand-gestures-come-here-vector-4752906.jpg', 145, 10),
(40, 5, 1, 9, 'Come Here sign', 'Considered highly offensive when motioned to another person, as this gesture is reserved for dogs', 'Philippines', 'https://rlv.zcache.com.au/come_here_hand_sign_gesture_postcard-r824956f945254b6f9c5effd8f643064e_vgbaq_8byvr_307.jpg', 95, 5),
(41, 5, 1, 5, 'Pointing sign', 'A gesture for the number 2', 'Belgium', 'https://s3.pixers.pics/pixers/700/FO/44/59/22/84/700_FO44592284_074fbbd9b8ef15db74414894e935a581.jpg', 200, 19),
(42, 5, 1, 5, 'Pointing sign', 'A gesture for the number 2', 'Netherland', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Pointing_%283454365347%29.jpg/800px-Pointing_%283454365347%29.jpg', 184, 8),
(43, 5, 1, 9, 'Pointing sign', 'A gesture for the number 2', 'Germany', 'https://melbournechapter.net/images/thumb-clipart-10.png', 224, 14),
(44, 5, 1, 5, 'Pointing sign', 'A gesture for the number 2', 'Austria', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcFcgoR-Hhyqf8NE7vu7XoJSJMD_2DqFTw5sDMJrO69XlMqbFZ', 198, 18),
(45, 5, 1, 5, 'Pointing sign', 'A gesture for the number 8', 'China', 'https://www.simplybodylanguage.com/image-files/xpointing-finger.jpg.pagespeed.ic.VYywR3KStO.jpg', 174, 21),
(46, 5, 1, 9, 'Pointing sign', 'Indicates something is not good', 'Italy', 'https://cdn.shopify.com/s/files/1/2009/8293/products/P1480.jpg?v=1515008732', 230, 30),
(47, 5, 1, 1, 'Downwards Palm Wave', '\'Go away\' - this gesture is used to shoo somebody off', 'Australia', 'http://2.bp.blogspot.com/-PX8_50d4T1k/UPjiN0uLpmI/AAAAAAAAANE/vhS5fBIeauI/s1600/Whatever.gif', 541, 48),
(48, 5, 1, 1, 'Downwards Palm Wave', '\'Go away\' - this gesture is used to shoo somebody off', 'United States', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_zznOhWmZia7jx6MEo3wJQtj0626xQX262iv_lI3mBBEZ-Qgu', 254, 12),
(49, 5, 1, 1, 'Downwards Palm Wave', '\'Go away\' - this gesture is used to shoo somebody off', 'United Kingdom', 'https://img-s3.onedio.com/id-574cb9f649db82bb65ec0b08/rev-0/w-635/listing/f-jpg-webp/s-2199429c75c768ff5406222014f383e1f5e7482e.webp', 183, 18),
(50, 5, 1, 1, 'Downwards Palm Wave', '\'Go away\' - this gesture is used to shoo somebody off', 'Canada', 'https://files.tofugu.com/articles/japan/2014-01-30-japanese-body-language/japanese-body-language-gesture-come-here-1.jpg', 174, 11),
(51, 5, 1, 1, 'Downwards Palm Wave', '\'Come here!\' - having an upwards palm is considered rude in certain countries, hence the downwards palm approach', 'Philippines', 'http://2.bp.blogspot.com/-PX8_50d4T1k/UPjiN0uLpmI/AAAAAAAAANE/vhS5fBIeauI/s1600/Whatever.gif', 324, 2),
(52, 5, 1, 1, 'Downwards Palm Wave', '\'Come here!\' - having an upwards palm is considered rude in certain countries, hence the downwards palm approach', 'Vietnam', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_zznOhWmZia7jx6MEo3wJQtj0626xQX262iv_lI3mBBEZ-Qgu', 324, 2),
(53, 5, 1, 1, 'Downwards Palm Wave', '\'Come here!\' - having an upwards palm is considered rude in certain countries, hence the downwards palm approach', 'India', 'https://files.tofugu.com/articles/japan/2014-01-30-japanese-body-language/japanese-body-language-gesture-come-here-1.jpg', 324, 2),
(54, 5, 1, 1, 'Downwards Palm Wave', '\'Come here!\' - having an upwards palm is considered rude in certain countries, hence the downwards palm approach', 'Ghana', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_zznOhWmZia7jx6MEo3wJQtj0626xQX262iv_lI3mBBEZ-Qgu', 324, 2),
(55, 5, 1, 9, 'Chin Flick', 'Is used to express supreme disinterest, or to tell somebody to \'get lost\'', 'France', 'https://www.telegraph.co.uk/content/dam/Travel/Destinations/North%20America/USA/rude1.jpg', 245, 20),
(56, 5, 1, 9, 'Chin Flick', 'Is used to express supreme disinterest, or to tell somebody to \'get lost\'', 'Belgium', 'https://aloraslak.files.wordpress.com/2013/05/103_5149.jpg', 124, 17),
(57, 5, 1, 9, 'Chin Flick', 'Is used to express supreme disinterest, or to tell somebody to \'get lost\'', 'Tunisia', 'https://s3-us-west-2.amazonaws.com/hispotion-prod/wp-content/uploads/2016/06/chin-flick.jpg', 211, 12),
(58, 5, 1, 9, 'Chin Flick', 'It means \'I don\'t give a damn\'', 'Italy', 'http://lh5.ggpht.com/_nHPS76Hpj2w/TY5xfsxA1MI/AAAAAAAAAzE/0T5B-tueP9Y/Chin%20Flick%5B7%5D.jpg?imgmax=800', 143, 27),
(59, 5, 1, 9, 'Fist and elbow sign', 'In many Latin American countries, this gestures meaning stingy - illustrates that the recipient rarely extends their arm to pay the bills', 'America', 'https://contentwriterindonesia.files.wordpress.com/2017/04/the-fist-and-elbow.jpg', 214, 18),
(60, 5, 1, 9, 'Fist and elbow sign', 'Indicates that the recipient is an idiot, and their brain is in their elbow', 'Austria', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuDMdXzXlhpkcgJIJahVyBrNvwKMzm_rlCDdYmLtc_2rCc6B9K', 147, 10),
(61, 5, 1, 9, 'Fist and elbow sign', 'Indicates that the recipient is an idiot, and their brain is in their elbow', 'Germany', 'https://mbtskoudsalg.com/images/elbow-clipart-force-10.jpg', 247, 48),
(62, 5, 1, 9, 'Forehead Fist', 'Most effective with multiple grunts, it is to indicates stupidity', 'Brazil', 'http://www.mademan.com/wp-content/uploads/gallery/eff-me-eff-you-8-delightfully-offensive-gestures-from-around-the-world/4.jpg', 421, 42),
(63, 5, 1, 5, 'Thumb in a fist', 'A commonly playful gesture used by adults towards children, pretending to have stolen a child\'s nose.', 'Australia', 'https://i.pinimg.com/236x/b5/75/52/b57552ecce8c3f6856310eeaad3e3fab--yoga-mudra-middle-fingers.jpg', 214, 15),
(64, 5, 1, 5, 'Thumb in a fist', 'A commonly playful gesture used by adults towards children, pretending to have stolen a child\'s nose.', 'United Kingdom', 'https://qph.fs.quoracdn.net/main-qimg-d8262fd217f216b08ac33d787c6defd8.webp', 187, 34),
(65, 5, 1, 5, 'Thumb in a fist', 'A commonly playful gesture used by adults towards children, pretending to have stolen a child\'s nose.', 'Canada', 'https://image1.masterfile.com/getImage/NjUzLTAyNjM0NTE2ZW4uMDAwMDAwMDA=AJfpui/653-02634516en_Masterfile.jpg', 351, 10),
(66, 5, 1, 5, 'Thumb in a fist', 'This is seen as aggressive and rude.', 'Turkey', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyyZyIZonrxR5-TJDDKvftgU1OpHYyRTl2Dsr1AAMKf3LWsU_Oow', 146, 5),
(67, 5, 1, 5, 'Outward Hand', 'Seen as insulting or confrontational. This evolved from the traditional practice of rubbing dirt, feaces or ashes into the faces of convicts.', 'Greece', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Single_Moutza.jpg/225px-Single_Moutza.jpg', 300, 17),
(68, 5, 1, 5, 'Outward Hand', 'Seen as insulting or confrontational. This evolved from the traditional practice of rubbing dirt, feaces or ashes into the faces of convicts.', 'Africa', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv-FrTMAFJ10KYtP7SNhJSzgeZ8dX5GoXjv3eybMxR29TyceYp', 154, 24),
(69, 5, 1, 5, 'Outward Hand', 'Seen as insulting or confrontational. This evolved from the traditional practice of rubbing dirt, feaces or ashes into the faces of convicts.', 'Pakistan', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjv5wPTY5gdFgIQRzyVlRzeLWOgkQnapJM6F-jJJVKPSwLNHd5vg', 259, 18),
(70, 5, 1, 9, 'Awkward Turtle', 'Public acknowledgment that one\'s gaffe has caused social embarrassment. In American sign language, awkward turtle means \'platypus\'', 'United States', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/When_in_an_awkward_conversation_or_situation_just_make_an_awkward_turtle.jpg/220px-When_in_an_awkward_conversation_or_situation_just_make_an_awkward_turtle.jpg', 324, 2),
(71, 5, 1, 1, 'Asking for menu sign', 'When in the restaurant, this sign is used to ask for the menu.', 'Malaysia', 'https://images.says.com/uploads/story_source/source_image/564911/f777.gif', 200, 15),
(72, 5, 1, 1, 'Bill Please Sign', 'This sign means to ask for the bills. it is usually happen in any restaurants.', 'Malaysia', 'https://images.says.com/uploads/story_source/source_image/564965/8bcf.gif', 184, 20),
(73, 5, 1, 1, 'Thumbs up', 'Indicates everything is good', 'Malaysia', 'https://78.media.tumblr.com/556d038fc9e48dbbab585cf811dea0c3/tumblr_mhwnncT1Q11rtccoco1_400.gif', 458, 21),
(74, 5, 1, 9, 'Looking at the watch', 'This sign means \'I\'m in hurry\' or \'It\'s time!\'.', 'Malaysia', 'https://blog.busuu.com/wp-content/uploads/2015/05/4.HandGestures_watch.png', 521, 10),
(75, 5, 1, 1, 'Downwards Palm Wave', '\'Come here!\' - having an upwards palm is considered rude in certain countries, hence the downwards palm approach', 'Malaysia', '', 200, 5),
(76, 5, 1, 9, 'Fingers all together', 'Asking \'Have you eaten?\' or \'Let\'s go out to eat\'', 'Malaysia', 'https://i.kym-cdn.com/photos/images/newsfeed/001/232/748/392', 168, 14),
(77, 5, 1, 1, 'OK sign', 'Indicates everything is fine', 'Malaysia', 'https://ih0.redbubble.net/image.491156696.5911/raf,750x1000,075,t,fafafa:ca443f4786.jpg', 641, 24),
(78, 5, 2, 13, 'Small Gifts', 'Commonly exchanged with family members, close friends and neighbours on birthday and Christmas.', 'Australia', 'https://blog.ffr.com/wp-content/uploads/2014/10/holiday-gifts.jpg', 547, 5),
(79, 5, 2, 13, 'Gifts for trades people', 'Trades people may be given a small amount of cash, or more likely a bottle of wine or a six-pack of beer!', 'Australia', 'https://www.funkypigeon.com/Static%20Cards/StaticAlcohol/1_Trio_Beer_GiftBox.jpg', 350, 12),
(80, 5, 2, 13, 'Gifts for dinner', 'If invited to someone\'s home for dinner, it is polite to bring a box of chocolates or flowers to the hostess.', 'Australia', 'https://4.imimg.com/data4/DQ/HB/MY-11275158/corporate-chocolate-gift-box-500x500.png', 476, 15),
(81, 5, 2, 10, 'Greetings', 'Australians are not very formal so greetings are casual and relaxed. A handshake and smile suffices.', 'Australia', 'https://www.ivyvest.com/system/images/W1siZiIsIjIwMTMvMDIvMDUvMDEvMDUvMjgvMjAyL3JlZ2lzdGVyZWRfaW52ZXN0bWVudF9hZHZpc29yX29yX2Jyb2tlcl81NzM2Mjk3NC5qcGciXV0/registered_investment_advisor_or_broker_57362974.jpg', 521, 34),
(82, 5, 2, 12, 'BBQ invitation', 'Guests to a berbeque typically bring wine or beer for their personal consumption. In a very informal berbeques may suggest that you bring your own meat.', 'Australia', 'https://www.budgetdirect.com.au/blog/wp-content/uploads/2013/10/How-To-BBQ-Hero-951x512.jpg', 367, 11),
(83, 5, 2, 14, 'Fork and knife', 'Table manners are Continental - hold fork on left hand while knife in right hand while eating.', 'Australia', 'https://png.pngtree.com/element_pic/17/02/16/cff3029edb41d30cec9f5a3dcd48e51f.jpg', 148, 2),
(84, 5, 2, 14, 'Indicating Finished eating', 'Indicate you have finished eating by laying your knife and fork parallel on your plate with the handles facing to the right.', 'Australia', 'http://blogs-images.forbes.com/work-in-progress/files/2012/02/Forbes-Dining-Cont-Finish.jpg', 333, 12),
(85, 5, 2, 14, 'Elbows and hands', 'Keep your elbows off the table and your hands above the table when eating', 'Australia', 'https://s-i.huffpost.com/gen/4264162/thumbs/o-CUTLERY-570.jpg?7', 123, 3),
(86, 5, 2, 19, 'Punctual', 'Punctuality is important in business situations. It is better to arrive a few minutes early than to keep someone waiting', 'Australia', 'https://img-aws.ehowcdn.com/600x600p/photos.demandstudios.com/getty/article/154/146/CC000592.jpg', 544, 10),
(87, 5, 2, 19, 'Negotiating', 'Negotiation proceed quickly. Bargaining is not customary. They will wxpect your initial proposal to have only a small margin for negotiation. They do not like high-pressure techniques.', 'Australia', 'https://www.insidehighered.com/sites/default/server_files/styles/large/public/media/gaia%20negotiation.jpg?itok=-wnldjiz', 222, 14),
(88, 5, 2, 19, 'Decision Making', 'Decision-making is concentrated at the top of the company, although decisions are made after consultation with subordinates, which can make decision making slow and protracted.', 'Australia', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkkROLFuEPkZqz51haTo6iQZacj1OXn5qNt9xwISL7TW2yd7BA', 147, 13),
(89, 5, 2, 10, 'Greetings', 'A handshake is the most common greeting accompanied with the word \'Selamat\'.Many Indonesians may give a slight bow or place their hands on their heart after shaking your hand.', 'Indonesia', 'https://lukmantanjung.files.wordpress.com/2015/02/dian-be.jpg', 385, 21),
(90, 5, 2, 10, 'Greetings', 'The handshake is commonly used when greeting westerners. During the greeting, by lower their eyes as a sign of respect.', 'Hong Kong', 'https://pilbox.themuse.com/image.jpg?url=https%3A%2F%2Fassets.themuse.com%2Fuploaded%2Fattachments%2F16096.jpg%3Fv%3De7619af4a2d0f77ea20a926ecc96ef3f15bec659f629e29195b8b1abbf5af147&h=367&prog=1', 364, 20),
(91, 5, 2, 10, 'Greetings', 'Ensure that you address your hosts with either their professional title or their honorific title and their surname. Also, maintaining eye contact coupled with a firm handshake, you shake hands with all attendees on both arrival and departure.', 'Sweden', 'https://media.kimmel.com/assets/img/uploads/2542-5-interview-mistakes-before-you-ever-open-your-mouth/firm-handshake.jpeg', 225, 13),
(92, 5, 2, 20, 'Introduced to people', 'If you are being introduced to several people, always start with the eldest or most senior person first', 'Indonesia', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTEhEWFhUWFhUYFhYVGRUVFRUSFRcXFhUXFhcYHSggGBolHRUWITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0lHx8tLSstLS0tLS0tLS0tLS0tLy0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKQBNAMBIgACEQEDEQH/', 267, 1),
(93, 5, 2, 12, 'Invitation to home', 'If you are invited to a Swede’s home then it is suggested that you take the same type of gift as you would give in the UK e.g. a bouquet of flowers or, a box of chocolates.', 'Sweden', 'https://d3cif2hu95s88v.cloudfront.net/live-site-2016/product-image/04thJan/pink-love-250x250.JPG', 117, 28),
(94, 5, 2, 16, 'Flowers at Funerals', 'White lilies or chrysanthemums typically given at funerals.', 'Sweden', 'https://i.pinimg.com/236x/ed/74/1b/ed741b14c480ab31917e7c0867e2145b.jpg', 245, 22),
(95, 5, 2, 10, 'Greetings', 'It is becoming more common in social situations not to shake hands upon meeting and simply smile or nod. When people are introduced handshakes are common accompanied with a “How d’ya do?”, “How you doing?” or “How are you”? depending on where in the US you are. ', 'United States', 'https://media.giphy.com/media/3o7TKN15gZc0x3FGPS/giphy.gif', 123, 10),
(96, 5, 2, 10, 'Greetings', 'Although the British may appear on the surface to be reserved and perhaps even aloof, they are in fact friendly people and welcoming to foreign visitors. Greeting is to shake hands with all those present, even children.', 'United Kingdom', 'https://theartofrespect.files.wordpress.com/2010/09/man-boy-handshake2.jpg', 224, 3),
(97, 5, 2, 10, 'Greetings', 'Handshake are the most common form of greetings. Greetings are formal and the oldest person is always greeted first.', 'China', 'https://thenanfang.com/wp-content/uploads/2014/11/abe-xi-handshake-01.jpg', 359, 34),
(98, 5, 2, 13, 'Gifts', 'The Chinese like food and a nice food basket will make a great gift.', 'China', 'https://i.pinimg.com/originals/c2/f5/00/c2f500a91f261a509140009486794562.jpg', 134, 13),
(99, 5, 2, 14, 'Chopsticks', 'In China, most of the people will use chopstick and spoon to eat. Chopsticks should not be placed upwards in a bowl of rice as this is seen as bad luck.', 'China', 'https://bkamk2n4huw2aiwkri2v375z-wpengine.netdna-ssl.com/wp-content/uploads/2013/05/Kotobukiya-Big-Chap-Alien-Chopsticks.jpg', 336, 30),
(100, 5, 2, 14, 'Sitting', 'Wait to be told where to sit. The guest of honour will be given a seat facing the door.', 'China', 'https://amp.businessinsider.com/images/5797a58edd089505568b46c5-750-494.jpg', 112, 14),
(101, 5, 2, 10, 'Greetings', 'The handshake is a common form of greeting. Friends may greet each other by lightly kissing on the cheeks, once on the left cheek and once on the right cheek.', 'France', 'https://secure.i.telegraph.co.uk/multimedia/archive/02514/kissNEW_2514897c.jpg', 246, 35),
(102, 5, 2, 10, 'Entering shop', 'You are expected to say \'bonjour\' or \'bonsoir\' (good morning and good evening) with the honorific title Monsieur or Madame when entering a shop and \'au revoir\' (good-bye) when leaving.', 'France', 'https://rlv.zcache.com.au/bonjour_french_word_art_with_red_heart_postcard-rd46da5a1bead4f45ba9149e3a0590f44_vgbaq_8byvr_540.jpg', 213, 10),
(103, 5, 2, 13, 'Flowers', 'Flowers should be given in odd numbers but not 13, which is considered unlucky.', 'France', 'http://www.laosflower.com/image/cache/data/Products/11%20pink%20roses%20with%20babybreath%20and%20greens-270x270.jpg', 325, 14),
(104, 5, 2, 16, 'Flowers at funerals', 'White lilies or chrysanthemums as they are used at funerals', 'France', 'http://www.sgflowerflorist.com/media/catalog/product/cache/8/image/500x500/9df78eab33525d08d6e5fb8d27136e95/s/y/sy014.jpg', 315, 21),
(105, 5, 2, 14, 'Fork and knife', 'Table manners are Continental - hold fork on left hand while knife in right hand while eating.', 'France', 'http://2.bp.blogspot.com/-1qUlgovDoKo/UWsAw1xCg8I/AAAAAAAABU8/nMNKXs00tqA/s1600/fork+and+knife.jpg', 325, 34),
(106, 5, 2, 15, 'Bon Appetit', 'Do not begin eating until the hostess says \'bon appetit\'.', 'France', 'https://ae01.alicdn.com/kf/HTB1vTT_tYSYBuNjSspiq6xNzpXat/Food-kitchen-room-decoration-Kitchen-Stickers-Bon-Appetit-Wall-Stickers-diy-vinyl-adesivo-de-paredes-home.jpg_640x640.jpg', 325, 13),
(107, 5, 2, 14, 'Elbows and hands', 'Do not rest your elbows on the table, although your hands should be visible and not in your lap.', 'France', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCT1bPQsxJSs92ugxyFhYKGFZtU5HFNu6rDmT2h742K96GEVD0', 215, 20),
(108, 5, 2, 19, 'Appointments', 'Appointments are necessary and should be made at least 2 weeks in advance. Appointments may be made in writing or by telephone and, depending upon the level of the person you are meeting, are often handled by the secretary.', 'France', 'https://hiring-assets.careerbuilder.com/media/attachments/careerbuilder-original-2459.jpg?1469654621', 226, 3),
(109, 5, 2, 19, 'Dress', 'Men should wear dark-coloured, conservative business suits for the initial meeting. How you dress later is largely dependent upon the personality of the company with which you are conducting business. Women should wear either business suits or elegant dresses in soft colours.', 'France', 'https://image.dhgate.com/0x0/f2/albu/g5/M00/65/54/rBVaJFnFwcCAIIfDAAFlSTYbEBs444.jpg', 111, 11),
(110, 5, 2, 12, 'Invitation to home', 'If you are invited to someone\'s home, bring good quality sweets, fruit, flowers, or imported spirits to the hostess.', 'Hong Kong', 'https://media.timeout.com/images/103956955/630/472/image.jpg', 225, 10),
(111, 5, 2, 13, 'Gifts Giving 1', 'Do not give scissors, knives or other cutting utensils, as they indicate that you want to sever the relationship.', 'Hong Kong', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnI_tuGa2DkT6jA1VhS_cm7rLdpfq5CUT1kdWffoLZVRmgQEah', 314, 14),
(112, 5, 2, 13, 'Gifts Giving 2', 'Do not give clocks, handkerchiefs or straw sandals, as they are associated with funerals and death.', 'Hong Kong', 'https://www.dhresource.com/0x0s/f2-albu-g2-M01-DD-E3-rBVaG1aNyiSAZLzZAAjJQ74OCOE000.jpg/new-arrivel-12pcs-lots-ladies-handkerchief.jpg', 264, 36),
(113, 5, 2, 13, 'Eight \'8\'', 'Eight is a particularly auspicious number, so giving eight of something bestows good fortune on the recipient.', 'Hong Kong', 'https://blognumbers.files.wordpress.com/2010/09/81.jpg', 101, 3),
(114, 5, 2, 14, 'Chopsticks', 'When you have finished eating, place your chopsticks in the chopstick rest or on the table. Do not place your chopsticks across the top of your bowl.', 'Hong Kong', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZrfNluQY1RITOe4ldcQ9E0ObtonfUtBjyrBz9Kg0BDoGpwWmf', 215, 12),
(115, 5, 2, 15, 'Burping', 'Burping is considered a compliment.', 'Hong Kong', 'https://www.thoughtco.com/thmb/Bg8JU7OsU5ns_4jih-n9un2BVm8=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-536874339-56cca2f35f9b5879cc5ab8f3.jpg', 254, 23),
(116, 5, 2, 19, 'First meeting', 'When you first meet, expect a fair amount of small talk. Your Hong Kong colleagues will want to get to know you well enough that they are comfortable working with you.', 'Hong Kong', 'https://www.tourism.gov.hk/resources/english/paperreport_doc/press/2010-05-10/Photo1_.JPG', 215, 14),
(117, 5, 2, 19, 'Sucks air through teeth', 'If someone sucks air through his/her teeth while you are speaking, it means that they are unhappy with what you have just said. If at all possible, try to re-state your position or modify your request, since you have made the other person extremely unhappy.', 'Hong Kong', 'https://images.agoramedia.com/everydayhealth/gcms/pg-dental-health-04-full.jpg', 132, 11),
(118, 5, 2, 15, 'Shared dishes', 'Food is often taken from a shared dish in the middle. You will be served the food and it would not be considered rude if you helped yourself after that.', 'Indonesia', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStwOdBONq9u0ERo19kmQn0lvc6C1Srwgzs_-09VdiFF71P7H3nDg', 212, 12),
(119, 5, 2, 15, 'Buffet style', 'If food is served buffet style then the guest is generally asked to help themselves first. It is considered polite that the guest insist others go before him/her but this would never happen.', 'Indonesia', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQffX9hCyoAPV88swmNLguN9eQIxxt-fAxfdPyy3YGXevptfLK', 164, 17),
(120, 5, 2, 19, 'Dress', 'Women should dress conservatively ensuring that they are well covered from ankle to neck. Tight fitting clothes are best avoided.', 'Indonesia', 'https://cdn.expatwoman.com/s3fs-public/editorial/muslim_woman_abaya.jpg', 112, 1),
(121, 5, 2, 19, 'Communications', 'Indonesians are indirect communicators. This means they do not always say what they mean. It is up to the listener to read between the lines or pay attention to gestures and body language to get the real message.', 'Indonesia', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuz0harQsyKE6Zf1HUpftOuZ68HeM2oBtzUDHud7vSYqz4pDXE', 124, 10),
(122, 5, 2, 10, 'Greetings', 'Foreign men should always wait for a Malaysian woman to extend her hand. Foreign women should also wait for a Malaysian man to extend his hand.', 'Malaysia', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3VGtO4AMit9Ph8fPctxeajTxka2pI8gFqWay-3bW18zu7GRY-', 151, 12),
(123, 5, 2, 13, 'Small gifts', 'It is customary to take a small gift for the host if invited to their home. This is usually either a bottle of wine, flowers or chocolates. Some people may send flowers in advance of a dinner party but it is equally acceptable to take them on the day. Gifts are opened on receipt.', 'United Kingdom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-d2Mnjz4RWoSizxKt7C1q1RrsNpQfqrnDVlljno10zwGeSeag', 289, 18),
(124, 5, 2, 14, 'Fork and knife', 'Table manners are Continental - hold fork on left hand while knife in right hand while eating.', 'United Kingdom', 'https://i.pinimg.com/originals/99/67/c3/9967c3e80f7de089164b5c6509d7e601.jpg', 112, 17),
(125, 5, 2, 17, 'Pay a round', 'When in a pub, it is common practice to pay for a round of drinks for everyone in your group.', 'United Kingdom', 'https://m.wsj.net/video/20130409/040913mwbars/040913mwbars_640x360.jpg', 176, 12),
(126, 5, 2, 12, 'Invitation to home', 'Unlike many European cultures, the British enjoy entertaining people in their homes. It is not always required to remove your shoes when entering a British home, but it is recommended that you ask upon entry whether or not shoes can be worn.', 'United Kingdom', 'https://img.wikinut.com/img/1lkdtn2.53wlagnx/jpeg/180x300/visiting.jpeg', 571, 11),
(127, 5, 2, 19, 'Dress', 'More conservative businesses still expect men to wear a suit and tie and women to dress smartly. This may involve a smart, unfussy dress and shoes but it is also acceptable for women to wear trousers, a smart blouse and jacket.', 'United Kingdom', 'https://cdn.shopify.com/s/files/1/1751/5137/products/product-image-592362526_1024x1024.jpg?v=1523807628', 116, 11),
(128, 5, 2, 19, 'Meetings', 'Meetings always have a clearly defined purpose, which may include an agenda. There will be a brief amount of small talk before getting down to the business at hand', 'United Kingdom', 'https://cdn.p-r-i.org/wp-content/uploads/2012/09/09120259/Meetings2.jpg', 184, 20),
(129, 5, 2, 19, 'Presentation', 'If you make a presentation, avoid making exaggerated claims. Make brief eye contact with the team members to encourage a feeling of inclusion. Make certain your presentation and any materials provided appear professional and well thought out.', 'United Kingdom', 'http://bahaiblog.net/site/wp-content/uploads/2014/07/London-Reflection-Meeting.jpg', 275, 24),
(130, 5, 2, 14, 'Napkins', 'Napkins if provided are placed on the lap.', 'United States', 'https://www.wikihow.com/images/thumb/a/a0/Use-a-Napkin-with-Proper-Table-Etiquette-Step-1.jpg/aid3830550-v4-728px-Use-a-Napkin-with-Proper-Table-Etiquette-Step-1.jpg', 84, 6),
(131, 3, 2, 14, 'Feet on Table Sign', 'Do not put your feet on a table (especially while talking to others) because the feet are considered dirty in China.', 'China', 'https://i0.wp.com/www.pure-t.ru/wp-content/uploads/2018/05/1526273640-39078d47ca3456677b2c661dfc31b936.jpg', 0, 0),
(132, 3, 1, 1, 'Heart Shaped Finger', 'It means \'Love You\'.', 'China', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgUxuif-8eTtmjtDBms_kanzeemvZRQ_l7CpuRJJhOWoSmNiBy', 0, 0),
(133, 3, 1, 6, 'Finger Pointing', 'No finger-pointing at others in China because it is considered extremely rude\r\n', 'China', 'https://images.unsplash.com/photo-1520006507663-f34ed4a17b4c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8a8317dd058035250bcbf8c93a511b58&auto=format&fit=crop&w=1050&q=80', 0, 0),
(134, 3, 2, 15, 'Stick Chopsticks Straight up', 'Don’t stick chopsticks straight up in a bowl of rice because it represents offering food to the dead people. \r\n', 'China', 'https://www.chinlingo.com/daily/upload/ueditor/image/20160712/80051468305587142.jpg', 0, 0),
(135, 3, 2, 15, 'Play with Chopsticks', 'Use chopsticks to click a bowl and make noises is impolite, because it means beggar for food. ', 'China', 'https://www.refoxrelocation.com/wp-content/uploads/2018/03/1f7c0001daa7649cfc04.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `typeID` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`typeID`, `typeName`) VALUES
(1, 'Friendly gestures'),
(2, 'Gestures of respect'),
(3, 'Salutes'),
(4, 'Celebratory gestures'),
(6, 'Obscene gestures'),
(7, 'Taunts'),
(8, 'Head motions'),
(9, 'Other gestures'),
(10, 'Greetings'),
(11, 'Making payment'),
(12, 'Visiting someone\'s house'),
(13, 'Gifts and gift-giving'),
(14, 'Table manners'),
(15, 'Eating and drinking'),
(16, 'Funerals'),
(17, 'Bars and restaurants'),
(18, 'Driving'),
(19, 'Business etiquette'),
(20, 'Hierarchy and honoring the elder'),
(5, 'Finger-counting');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `user_n` (`username`),
  UNIQUE KEY `user_e` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `password`, `email`, `country`) VALUES
(1, 'gary', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'gary@live.com', 'Australia'),
(2, 'mary', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'mary@live.com', 'Lebanon'),
(3, 'terry', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'terry@live.com', 'Australia'),
(4, 'amelie', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'amelie@live.com', 'Malaysia'),
(5, 'Admin', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'admin@live.com', 'Malaysia'),
(6, 'Syafiqah', '25f9e794323b453885f5181f1b624d0b', 'syafieqafeqa96@gmail.com', 'Australia');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
