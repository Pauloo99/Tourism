-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2021 at 09:05 PM
-- Server version: 5.7.35
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paradise_pae_tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `beachholidays`
--

CREATE TABLE `beachholidays` (
  `packageid` int(20) NOT NULL,
  `packagename` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `packagedays` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `packagedesc` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `toursummary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Inclusions` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `exclusions` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `itinerary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metadesc` varchar(160) NOT NULL,
  `metatitle` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metakeywords` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `packageimage` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beachholidays`
--

INSERT INTO `beachholidays` (`packageid`, `packagename`, `packagedays`, `packagedesc`, `toursummary`, `Inclusions`, `exclusions`, `itinerary`, `metadesc`, `metatitle`, `metakeywords`, `packageimage`) VALUES
(1, 'Serengeti', '5', '', '', '', '', '', '0', '', '', 'leopard.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `carhire`
--

CREATE TABLE `carhire` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `packageurl` varchar(200) NOT NULL,
  `summary` longtext NOT NULL,
  `toursummary` varchar(800) NOT NULL,
  `fullitinerary` longtext NOT NULL,
  `inclusionexclusion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carhire`
--

INSERT INTO `carhire` (`PackageId`, `PackageName`, `PackageImage`, `packageurl`, `summary`, `toursummary`, `fullitinerary`, `inclusionexclusion`) VALUES
(1, '5 Days Maasai Mara/Lake Naivasha/Nakuru/Bogoria', 'tour.jpg', '3DAYGORILLA.php', '', '', '', ''),
(2, '7 Days Mt.Kilimanjaro Climb', 'kilimanjaro.jpg', '', '', '', '', ''),
(3, '7 Days Honeymoon Holidays in Zanzibar', 'zanzibarhoneymoonCopy.jpg', '', '', '', '', ''),
(7, '7 Days Wild Honeymoon Safaris', 'beaches.jpg', '', '', '', '', ''),
(8, 'Tsavo East & West', 'sutirta-budiman (2).jpg', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `packageid` int(11) UNSIGNED NOT NULL,
  `packagetitle` varchar(150) DEFAULT NULL,
  `nodays` varchar(10) DEFAULT NULL,
  `packageimg` varchar(150) NOT NULL,
  `packagedesc` longtext NOT NULL,
  `toursummary` longtext NOT NULL,
  `itinerary` longtext NOT NULL,
  `inclusion` mediumtext NOT NULL,
  `exclusion` mediumtext NOT NULL,
  `metatitle` varchar(250) NOT NULL,
  `metakeywords` mediumtext NOT NULL,
  `metadesc` varchar(160) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`packageid`, `packagetitle`, `nodays`, `packageimg`, `packagedesc`, `toursummary`, `itinerary`, `inclusion`, `exclusion`, `metatitle`, `metakeywords`, `metadesc`) VALUES
(24, 'Festive Season Dubai 5 days', '5', 'Festive-Season-Dubai-5-Days.jpg', 'Festive Season Dubai 5 days', 'Festive Season Dubai 5 days', 'Festive Season Dubai 5 days', 'Festive Season Dubai 5 days', 'Festive Season Dubai 5 days', 'Festive-Season-Dubai-5-days', 'Festive Season Dubai 5 days', 'Festive Season Dubai 5 days'),
(25, 'Festive Season Zanzibar 5 Days', '5', 'Festive-Season-Zanzibar-5-Days.jpg', 'Festive Season Zanzibar 5 Days', 'Festive Season Zanzibar 5 Days', 'Festive Season Zanzibar 5 Days', 'Festive Season Zanzibar 5 Days', 'Festive Season Zanzibar 5 Days', 'Festive-Season-Zanzibar-5-Days', 'Festive Season Zanzibar 5 Days', 'Festive Season Zanzibar 5 Days');

-- --------------------------------------------------------

--
-- Table structure for table `honeymoon`
--

CREATE TABLE `honeymoon` (
  `packageid` int(11) UNSIGNED NOT NULL,
  `packagetitle` varchar(150) NOT NULL,
  `nodays` varchar(10) NOT NULL,
  `packageimg` varchar(150) NOT NULL,
  `packagedesc` longtext NOT NULL,
  `toursummary` longtext NOT NULL,
  `itinerary` longtext NOT NULL,
  `inclusion` mediumtext NOT NULL,
  `exclusion` mediumtext NOT NULL,
  `metatitle` varchar(250) NOT NULL,
  `metakeywords` mediumtext NOT NULL,
  `metadesc` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `honeymoon`
--

INSERT INTO `honeymoon` (`packageid`, `packagetitle`, `nodays`, `packageimg`, `packagedesc`, `toursummary`, `itinerary`, `inclusion`, `exclusion`, `metatitle`, `metakeywords`, `metadesc`) VALUES
(11, '7 Days Wild Honeymoon Safaris', '7', '7-Days-Wild-Honeymoon-Safaris.jpg', '7 Days Wild Honeymoon Safaris', '7 Days Wild Honeymoon Safaris', '7 Days Wild Honeymoon Safaris', '7 Days Wild Honeymoon Safaris', '7 Days Wild Honeymoon Safaris', '7-Days-Wild-Honeymoon-Safaris', '7 Days Wild Honeymoon Safaris', '7 Days Wild Honeymoon Safaris'),
(12, 'One Week Zanzibar Honeymoon', '7', 'Ultimate-One-Week-Zanzibar-Honeymoon.jpg', 'Ultimate One Week Zanzibar Honeymoon', 'Ultimate One Week Zanzibar Honeymoon', 'Ultimate One Week Zanzibar Honeymoon', 'Ultimate One Week Zanzibar Honeymoon', 'Ultimate One Week Zanzibar Honeymoon', 'Ultimate-One-Week-Zanzibar-Honeymoon', 'Ultimate One Week Zanzibar Honeymoon', 'Ultimate One Week Zanzibar Honeymoon'),
(13, '7 Days Beach HoneyMoon Seychelles', '7', '7-Days-Beach-HoneyMoon-In-The-Seychelles.jpg', '7 Days Beach Honeymoon In Seychelles', '7 Days Beach Honeymoon In Seychelles', '7 Days Beach Honeymoon In Seychelles', '7 Days Beach Honeymoon In Seychelles', '7 Days Beach Honeymoon In Seychelles', '7-Days-Beach-Honeymoon-In-The-Seychelles', '7 Days Beach Honeymoon In Seychelles', '7 Days Beach Honeymoon In Seychelles');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotelid` int(20) NOT NULL,
  `hotelname` varchar(200) NOT NULL,
  `location` varchar(100) NOT NULL,
  `packageimage` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotelid`, `hotelname`, `location`, `packageimage`) VALUES
(2, 'Sarova hotel', 'Mombasa', 'sarovaexample.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `joinedsafaris`
--

CREATE TABLE `joinedsafaris` (
  `packageid` int(20) NOT NULL,
  `packagename` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `packagedays` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `packageimage` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `joinedsafaris`
--

INSERT INTO `joinedsafaris` (`packageid`, `packagename`, `packagedays`, `packageimage`) VALUES
(1, 'The Ultimate Hike', '7', 'MAASAI-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kenyapackage`
--

CREATE TABLE `kenyapackage` (
  `packageid` int(11) UNSIGNED NOT NULL,
  `packagetitle` varchar(200) NOT NULL,
  `nodays` varchar(10) NOT NULL,
  `packageimg` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `packagedesc` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `toursummary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `itinerary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `inclusion` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `exclusion` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metatitle` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metakeywords` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metadesc` varchar(160) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kenyapackage`
--

INSERT INTO `kenyapackage` (`packageid`, `packagetitle`, `nodays`, `packageimg`, `packagedesc`, `toursummary`, `itinerary`, `inclusion`, `exclusion`, `metatitle`, `metakeywords`, `metadesc`) VALUES
(7, '1 Day Lake Nakuru Safari', '1', 'Naivasha2.jpeg', 'The scenic Lake Nakuru National Park established in 1961, is situated in the Great Rift Valley, in Kenya, near Nakuru town, and is home to a variety of wildlife such as the lion, leopard, rhino, giraffe, and buffalo.\r\n\r\nLake Nakuru is a world heritage site famous for its million-plus flamingo population, is also an ornithologist\'s heaven with over 450 plus bird species, and has unique forests of cactus euphorbia trees in addition to a sanctuary for rhinos.\r\nAccommodation inside the park includes Sarova Lion Hill Camp and Lake Nakuru Lodge.', '<li><i class=\'bx  bx-right-arrow\'></i>Lake Nakuru National Park</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Game drive inside the park</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Lunch at the lodge</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Return to Nairobi in the evening</li>\r\n', 'Lake Nakuru National Park is famous for its flamingoes and various other birds found on the lakeshore. Also to be found in the park are gazelles, lions, leopards, rhino, buffalo, and many other smaller game.\r\nDepart for Lake Nakuru National Park in the morning. On arrival take a game drive inside the park and then proceed for lunch at the lodge ( optional extra )and return to Nairobi in the evening. Lake Nakuru with a pink, flamingo outline\r\n', '<li><i class=\'bx  bx-right-arrow\'></i>Park Fees</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>A Full time safari vehicle And Fuel</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Bottled Water</li>\r\n', '<li><i class=\'bx  bx-right-arrow\'></i>International flights</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal expenses</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Alcoholic drinks</li>', '1-Day-Lake-Nakuru-Safari', '1 day Lake Nakuru Safari, Nakuru Safari, Lake Nakuru Flamingoes, Birds Viewing, Lake Nakuru Safari, Flamingoes', 'Enjoy your 1-day tour to Lake Naivasha and have a memorable experience. Paradise Africa Expeditions is here to take you there. Have a great view at the flamingo'),
(8, '3 Days Maasai Mara', '3', '3-Days-Maasai-Mara.jpg', '', '<li><i class=\'bx  bx-right-arrow\'></i>Scenic drive down into the Rift Valley</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full day in Maasai Mara</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Game drive in the Mara</li>', '<h6><b>Day 1</b> -Depart for a scenic drive down into the Rift Valley, to Masai Mara, Kenya\'s world-renowned game reserve. Stop en-route at the Great Rift Valley for the stunning views. Arrive before lunch. The afternoon game drives allow spotting of the unrivalled wildlife in the park. Dinner and overnight at Keekorok Lodge or equivalent.\r\n</h6><br>\r\n<h6><b>Day 2</b> - Full day in Masai Mara. You enjoy two game drives today, one in the morning before breakfast and the other in the late afternoon. As your safari is private your game drive timings are flexible, useful if you are traveling with children, or are on a honeymoon. You may also choose to have a full day game drive [ one for the whole day] with a packed picnic lunch for a small extra cost ranging from USD 15- 20 per person. Return is in the evening for dinner and overnight at the lodge. [Keekorok Lodge or similar ].</h6><br>\r\n<h6><b>Day 3</b> -At the break of dawn, you enjoy your final game drive in the Mara followed by breakfast and departure for Nairobi after an early morning game drive and breakfast. Arrive in Nairobi by lunchtime. Transfer to the airport for your flight home.<br>\r\nKeekorok Lodge is situated in the direct path of the migration, and it was the first lodge to be built in the Masai Mara. At the height of the migration, the area\r\naround Keekorok is surrounded by animals which you can view from the\r\nlodge itself especially from the walkway leading out into the open\r\narea near the lodge.Keekorok Lodge, Masai Mara<br><br>\r\nThe lodge has undergone significant refurbishment in recent years. Keekorok\'s charm is its setting, its ease of access from Nairobi, and the liberal use\r\nof local sand river stone and cedarwood in its construction.\r\nThere is a lounge furnished in leather and tartan and a dining room open terrace allowing fresh breezes and views of the Mara. Rooms at Keekorok are simply but tastefully furnished, many with views of the Mara.\r\nEarly morning and afternoon game drives offer animal encounters unparalleled in the\r\nworld all year-round. 95 species of mammals, amphibians & reptiles have been recorded and over 400 bird species. Nowhere in Africa is wildlife more abundant .</h6>', '<li><i class=\'bx  bx-right-arrow\'></i>Full time English speaking driver/guide</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Park fees, launch cruise, park guide/Ranger</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Bottled water</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Transport in 4X4 vehicle</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>All meals in between journeys</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full board accommodation while on safari</li>', '<li><i class=\'bx  bx-right-arrow\'></i>Accommodation before and after the tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>International flights</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visas</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal expenses</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Alcoholic drinks and laundry</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal insurance</li>', '3-Days-Maasai-Mara', '3 Days Maasai Mara, Maasai Mara safari, masai mara, 3 Days Masai Mara, Kenya Safari, Kenya Masai Mara, Masai Mara Kenya, Kenya masai mara Tour, Masai mara trip, Maasai mara trip tour', '3 Days Maasai Mara is a memorable and exciting safari/tour. Join us today and we guarantee you the best experience.'),
(9, '4 Days Swara Safari', '4', '4-Days-Swara-Safari.jpg', '', '<li><i class=\'bx  bx-right-arrow\'></i>Leave for Amboseli National Park bordering Kilimanjaro</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full day Amboseli game drive</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Depart for the scenic Lake Nakuru National Park</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Depart for Nairobi after breakfast</li>', '<h6><b>Day 1 -Nairobi /Amboseli.</b> On arrival at Jomo Kenyatta International Airport Nairobi, you will be met, briefed, and introduced to your driver guide. You will leave for Amboseli National Park bordering Kilimanjaro in Tanzania. Check-in at Amboseli Serena Lodge for lunch. Afternoon game viewing till dusk. You have a chance to see large herds of Elephants against the backdrop of Africa\'s highest Mountain. Dinner and overnight at the Lodge.\r\n</h6><br>\r\n<h6><b>Day 2</b> -Full day Amboseli. Return to the lodge where you can enjoy a refreshing swim before your buffet lunch. Later in the afternoon, leave for another game drive to explore another part of the reserve. expert game tracking skills of your tour guide cum driver. Enjoy a buffet dinner at the lodge. Overnight at your Keekorok Lodge. Note that on this day there is an option of a picnic lunch in the Mara reserve at no extra cost. You therefore can go </h6><br>\r\n<h6><b>Day 3</b> -After a buffet breakfast, depart for the scenic Lake Nakuru National Park, a bird and rhino sanctuary, and home to a variety of wildlife. This lake is famous for its pink flamingoes. Arrive in time for lunch at your lodge. A late afternoon game drive will allow you to see the many wild animals in the park. You will also be taken to a cliff viewpoint overlooking the lake.\r\n[ see the picture of the lake on the homepage of our site] Dinner and overnight at Sarova Lion Hill Lodge...</h6><br>\r\n<h6><b>Day 4</b> -Depart for Nairobi after breakfast with brief stops at scenic points along Rift Valley Escarpments. Arrive in Nairobi by lunchtime. Transfer to the airport for your flight home.</h6><br>', '<li><i class=\'bx  bx-right-arrow\'></i>Full time English speaking driver/guide</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Park fees, launch cruise, park guide/Ranger</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Bottled water</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Transport in 4X4 vehicle</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>All meals in between journeys</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full board accommodation while on safari</li>', '<li><i class=\'bx  bx-right-arrow\'></i>Accommodation before and after the tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>International flights</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visas</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal expenses</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Alcoholic drinks and laundry</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal insurance</li>', '4-Days-Swara-Safari', '4 Days Swara Safari, Swara Safari, Kenya Swara Safari, Kenya Safaris, Amboseli game drive, game drive, Kenya safari game drive', 'Have the best  4-Day Swara Safari with us here in Kenya. Get the experience of a lifetime and memories to share during this wild 4-Day Swara Safari.');

-- --------------------------------------------------------

--
-- Table structure for table `logdes`
--

CREATE TABLE `logdes` (
  `lodgeid` int(10) NOT NULL,
  `lodgename` varchar(150) NOT NULL,
  `location` varchar(150) NOT NULL,
  `lodgeimage` varchar(200) NOT NULL,
  `details` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logdes`
--

INSERT INTO `logdes` (`lodgeid`, `lodgename`, `location`, `lodgeimage`, `details`) VALUES
(1, 'Sarova hotel', 'Mombasa', 'sarovaexample.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mclimbing`
--

CREATE TABLE `mclimbing` (
  `packageid` int(11) UNSIGNED NOT NULL,
  `packagetitle` varchar(200) NOT NULL,
  `nodays` varchar(10) NOT NULL,
  `packageimg` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `packagedesc` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `toursummary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `itinerary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `inclusion` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `exclusion` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metatitle` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metakeywords` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metadesc` varchar(160) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mclimbing`
--

INSERT INTO `mclimbing` (`packageid`, `packagetitle`, `nodays`, `packageimg`, `packagedesc`, `toursummary`, `itinerary`, `inclusion`, `exclusion`, `metatitle`, `metakeywords`, `metadesc`) VALUES
(7, '5 Days Mt Kenya Climbing: Sirimon – Down Chogoria Route', '5', '5-Days-Mt-Kenya-Climbing.jpg', '', '', '', '', '', '5 Days Mt Kenya Climbing: Sirimon – Down Chogoria Route', '5 Days Mt Kenya Climbing: Sirimon – Down Chogoria Route', '5 Days Mt Kenya Climbing: Sirimon – Down Chogoria Route'),
(8, '4 Days Mount Kenya Climbing: Naro Moru Route', '4', '4-Days-Mount-Kenya-Climbing-Naro-Moru-Route.jpg', '', '', '', '', '', '4-Days-Mount-Kenya-Climbing:-Naro-Moru-Route', '4 Days Mount Kenya Climbing: Naro Moru Route', '4 Days Mount Kenya Climbing: Naro Moru Route'),
(9, '4 Days Mount Kenya Climbing: Sirimon Route', '4', '4-Days-Mount-Kenya-Climbing-Sirimon-Route.jpg', '', '', '', '', '', '4-Days-Mount-Kenya-Climbing-Sirimon-Route', '4 Days Mount Kenya Climbing: Sirimon Route', '4 Days Mount Kenya Climbing: Sirimon Route'),
(10, '6 Days Mt. Kilimanjaro Climbing: Shira Route', '6', '6-Days-Mt-Kilimanjaro-Climbing-Shira-Route.jpg', '', '', '', '', '', '6-Days-Mt-Kilimanjaro-Climbing-Shira-Route', '6 DAYS MT KILIMANJARO CLIMBING: SHIRA ROUTE', '6 DAYS MT KILIMANJARO CLIMBING: SHIRA ROUTE'),
(11, '7 Days Mt Kilimanjaro Climbing: Marangu Route', '7', '7-Days-Mt-Kilimanjaro-Climbing-Marangu-Route.jpg', '', '', '', '', '', '7-Days-Mt-Kilimanjaro-Climbing-Marangu-Route', '7 DAYS MT KILIMANJARO CLIMBING: MARANGU ROUTE', '7 DAYS MT KILIMANJARO CLIMBING: MARANGU ROUTE'),
(12, '7 Days Mt Kilimanjaro Climbing: Rongai Route', '7', '7-Days-Mt-Kilimanjaro-Climbing-Rongai-Route.jpg', '', '', '', '', '', '7-Days-Mt-Kilimanjaro-Climbing-Rongai-Route', '7 Days Mt Kilimanjaro Climbing: Rongai Route', '7 Days Mt Kilimanjaro Climbing: Rongai Route');

-- --------------------------------------------------------

--
-- Table structure for table `populardestinations`
--

CREATE TABLE `populardestinations` (
  `packageid` int(11) UNSIGNED NOT NULL,
  `packagetitle` varchar(150) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `nodays` int(11) NOT NULL,
  `packagedesc` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `packageimg` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `toursummary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `inclusion` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `exclusion` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `itinerary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metadesc` varchar(160) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metatitle` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metakeywords` varchar(600) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `populardestinations`
--

INSERT INTO `populardestinations` (`packageid`, `packagetitle`, `nodays`, `packagedesc`, `packageimg`, `toursummary`, `inclusion`, `exclusion`, `itinerary`, `metadesc`, `metatitle`, `metakeywords`) VALUES
(3, '7 Days in Zanzibar', 7, 'Zanzibar offers everything you could possibly want – palm-fringed beaches, powdery white sand, historical villages and towns, colourful markets, and. This offbeat island, just off the east coast of Africa, is ideal for travellers who enjoy going off the beaten path.', '7-Days-Honeymoon-Holidays-in-Zanzibar.jpg', '<li><i class=\'bx  bx-right-arrow\'></i>Nairobi - Zanzibar</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Zanzibar & Safari Blue excursion to Mnemba Island</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>sunset cruise</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Zanzibar free day</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Zanzibar Beach relaxation and return back home</li>', '<li><i class=\'bx  bx-right-arrow\'></i>Return Economy class Air tickets including all taxes</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Accommodation in a standard room for the specified no. of days</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Meals</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Airport Transfers to the hotel</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Spice island tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Stone town tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full day Safari blue excursion to Mnemba islandr</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Stone town tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Romantic Sunset cruise</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personalized reception by Bonfire Adventures staff</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Snorkeling equipments</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Complimentary seafood lunch during Safari Blue</li>', '<li><i class=\'bx  bx-right-arrow\'></i>Accommodation before and after the tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>International flights</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visas</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal expenses</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Alcoholic drinks and laundry</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal insurance</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Yellow fever certificate</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Optional water sports activities</li>', '<h6><b>DAY 1: Nairobi– Zanzibar</b><br>\r\nWelcome to the honeymoon holiday to Zanzibar. Take a flight to Zanzibar where you will be met by our Staff. Transfer to your hotel via Spice Island and stone town tour.\r\nSpend time relaxing in the room, pool, gardens or take a beach stroll or water sports. Return to the hotel for dinner and overnight.\r\n</h6><br>\r\n<h6><b>DAY 2: Zanzibar</b><br>\r\nAfter breakfast you may spend the whole day at leisure, (Option) sample their spa.</h6><br>\r\n<h6><b>DAY 3: Zanzibar & Safari Blue excursion to Mnemba Island</b><br>\r\nAfter Breakfast our guide will pick you and take you together with others on a full-day tour by dhow to visit an Island where you will spend the day sailing, snookering, and swimming with the dolphins in the serene Indian Ocean. Seafood and barbecue luncheon will be served on the white sandy island as u relax and get a chance to network with other holidaymakers in this excursion from all over the world. Then return to the hotel for further relaxation and freshening up.</h6><br>\r\n<h6><b>DAY 4: Zanzibar and sunset cruise</b><br>\r\nYou may spend the whole day as you please. In the evening, our tour guide will pick you from the hotel together with others and take you to the beach where you will take a motorboat or dhow to enjoy a sunset cruise and sundowners at the best viewpoint as drinks and snacks will be served. Return to hotel for dinner and overnight.</h6><br>\r\n<h6><b>DAY 5: Zanzibar free day</b><br>\r\nAfter breakfast you may spend the whole day at leisure, (Option) sample their spa.</h6><br>\r\n<h6><b>DAY 6: Zanzibar</b><br>\r\nAfter breakfast you may spend the whole day at leisure, (Option) sample their spa.</h6><br>\r\n<h6><b>DAY 7: Zanzibar Beach relaxation before Nairobi Return</b><br>\r\nCheck out your room and relax at the hotel or beach as you capture the last beach pictures. You will be picked by our representative who will transfer you to airport for your flight.</h6><br>', '7 Days Honeymoon Holidays in Zanzibar', '7-Days-Honeymoon-Holidays-in-Zanzibar', '7 Days Honeymoon Holidays in Zanzibar'),
(4, '7 Days In Seychelles', 7, 'Seychelles is a paradise archipelago of 115 islands situated in the middle of the Indian Ocean. The archipelago teems with world-class dive sites and other natural wonders, but with 7 days, you will only be able to explore a small part of it. However, with careful planning and prioritizing, you will be able to maximize your time and see some of the major island destinations. This 7-day itinerary is for those who are short on time but still want to get a good taste of what Seychelles has to offer in one week or less.', '7-Days-Beach-Honeymoon-In-Seychelles.jpeg', '<li><i class=\'bx  bx-right-arrow\'></i>Mahé Island</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Praslin Island</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>La Digue</li>\r\n', '<li><i class=\'bx  bx-right-arrow\'></i>Flight.</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Transfers from one island to another.</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Guides.</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Accommodation.</li>', '<li><i class=\'bx  bx-right-arrow\'></i>All things of personal nature.</li>', '<h6><b>Day 1: Mahé Island</b><br>Victoria is the capital city of Seychelles and is situated on the north-eastern side of Mahé.\r\n</h6><br>\r\n<h6><b>Day 2: Mahé Island to Praslin Island</b><br>Wake up to a delicious breakfast in your private room or get a slice of authentic island life in local bars and restaurants, and try the local delicacy Caris masala. After breakfast, check off the next thing on your wanderlust Wishlist, which is to see the colorful coral reef fish, corals, and other marine species. You can either go on a snorkeling day excursion or go on a diving adventure before you head to your next island destination, Praslin.\r\n</h6><br>\r\n<h6><b>Day 3: Praslin Island</b><br> Sunset over the famous beach Anse Lazio seen from the granite boulders, Praslin island, Seychelles.\r\nDiscover the beauty and diversity of the underwater world or just get away from it all in Praslin Island. You may also explore Vallée de Mai Nature Reserve, one of Seychelles’s two UNESCO World Heritage sites. Vallée de Mai is home to various endangered species like Seychelles sunbird, black parrot, Seychelles blue pigeon, bronze gecko, and the tiger chameleon. It is also here that you will see the largest seed in the world, the Coco de Mer.\r\n</h6><br>\r\n<h6><b>Day 4: Praslin Island to La Digue</b><br> After breakfast in Praslin Island, board the boat and venture into La Digue, the third largest inhabited island of Seychelles. Set on its own steep granite island with postcard-perfect beaches, La Digue provides great swimming, snorkeling, and beach experience plus greater\r\n</h6><br>\r\n<h6><b>Day 5: La Digue</b><br> On day 5, enjoy La Digue’s diversity and beautiful beaches. The island boasts some of the most photographed beaches in the world like Anse aux Cèdres, Anse Banane, Anse Bonnet Carré and Anse Cocos. For people who want to be away from the world for a while and those who want to spend some time in a hammock with views that look like screen savers, then La Digue is for you!\r\n</h6><br>\r\n<h6><b>Day 6: La Digue to Mahé Island</b><br> On your sixth day in Seychelles, avail a day excursion to the islands of Grande Soeur and Petite Soeur, commonly referred to as The Sisters Islands. Grande Soeur is a fantastic destination for swimming, snorkeling, and diving. For lunch, enjoy a customary lunch on the island. Lounge on the beach and savor local specialties and signature favorites. Please note, Grand Soeur is a private island managed by Le Chateau de Feuilles, which charges visitors an entrance fee. Return to Mahé Island in the afternoon.\r\n</h6><br>\r\n<h6><b>Day 7: Mahé Island</b><br>Head to the airport in time to check-in for your international flight home. It’s totally up to you whether you’d extend your stay to other islands of Seychelles, combine the trip with a stopover in Dubai, or a Safari Adventure in South Africa. The decision is all yours!\r\n</h6><br>', '7 Days Beach Honeymoon In Seychelles', '7-Days-Beach-Honeymoon-In-Seychelles', '7 Days Beach Honeymoon In Seychelles'),
(5, '7 Days Wild Honeymoon', 7, '', '7-Days-Wild-Honeymoon.jpg', '<li><i class=\'bx  bx-right-arrow\'></i>Amboseli National Park</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Mt.Kenya Safari club</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Samburu National Reserve</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Masai Mara</li>', '<li><i class=\'bx  bx-right-arrow\'></i>Full time English speaking driver/guide</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Park fees</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Bottled water</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Transport in 4X4 vehicle</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>All meals in between journeys</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full board accommodation while on safari</li', '<li><i class=\'bx  bx-right-arrow\'></i>Accommodation before and after the tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>International flights</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visas</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal expenses</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Alcoholic drinks and laundry</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal insurance</li>', '<h6><b>DAY 1</b><br>\r\nFly to Amboseli National Park. Morning and afternoon game viewing. All meals and overnight at Tortilis camp.\r\n</h6><br>\r\n<h6><b>DAY 2</b><br>\r\nMt.Kenya Safari club - After an early breakfast, fly to Nairobi and transfer by road to sweat waters Tented camp for lunch. Afternoon game viewing. Dinner and overnight at Mt. Kenya safari club.</h6><br>\r\n<h6><b>DAY 3</b><br>\r\nSamburu National Reserve - Breakfast at Mt.Kenya safari club. Rest of the morning at leisure. Lunch at Mt. Kenya safari club. Depart Mt. Kenya to Samburu National Reserve arriving early evening. Dinner and overnight at Larsen\'s tented camp.</h6><br>\r\n<h6><b>DAY 4</b><br>\r\nSamburu - Early morning and afternoon game viewing. All meals and overnight at Larsen\'s Tented camp.</h6><br>\r\n<h6><b>DAY 5</b><br>\r\nMasai Mara - Breakfast in Samburu. Depart for Nairobi arriving at approximately 1300 hrs. Lunch at Nairobi and transfer to Wilson airport for afternoon flight to Masai Mara. Dinner and overnight at Mara safari club or Kichwa Tembo camp.</h6><br>\r\n<h6><b>DAY 6</b><br>\r\nFull day in Masai Mara. Morning and afternoon game viewing. All meals and overnight at Mara safari club or Kichwa Tembo camp.</h6><br>\r\n<h6><b>DAY 7</b><br>\r\nEarly morning game viewing, breakfast, rest of the morning at leisure. Lunch and thereafter depart for Nairobi arriving approximately1700 hrs.</h6><br>', '7 Days Wild Honeymoon', '7-Days-Wild-Honeymoon', '7 Days Wild Honeymoon');

-- --------------------------------------------------------

--
-- Table structure for table `rwandapackage`
--

CREATE TABLE `rwandapackage` (
  `packageid` int(20) UNSIGNED NOT NULL,
  `packagetitle` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `nodays` varchar(10) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `packageimg` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `packagedesc` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `toursummary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `itinerary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Inclusion` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `exclusion` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metatitle` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metakeywords` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metadesc` varchar(160) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rwandapackage`
--

INSERT INTO `rwandapackage` (`packageid`, `packagetitle`, `nodays`, `packageimg`, `packagedesc`, `toursummary`, `itinerary`, `Inclusion`, `exclusion`, `metatitle`, `metakeywords`, `metadesc`) VALUES
(4, '1 Day Kigali City Tour And Genocide Memorial Visit.', '1', '1-DAY-KIGALI-CITY-TOUR-AND-GENOCIDE-MEMORIAL-VISIT.jpg', '1 Day Kigali City Tour takes you for an amazing discovery of Rwanda’s capital. Kigali is the commercial center of Rwanda with most of the important political offices in the country. Kigali is also one of the cleanest and safest cities in Africa. The roads and general transport system are one of the best in Africa. Walk around the city center will lead to impressive 5-star hotels, high-end restaurants, bars, and nightclubs.<br>\r\nApart from the cleanliness, excellent organization, and beautiful hills, Kigali has a good climate throughout the year. The best views of the city can be observed from Jurapark and Mount Kigali. From these strategic points, one can spot all the surrounding hills, business centers, slums, and residential areas.<br>\r\nOur 1 day Tour will take you to discover the culture, history, and progress made ever since the end of the 1994 genocide. The number of places to visit will depend on your preference, general interests, and budget. You can request to exclude some landmarks or to be taken to points of interest that are not listed in this itinerary as long as they are within Kigali.', '<li><i class=\'bx  bx-right-arrow\'></i>Visiting the Kandt House</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visiting the Natural History Museum</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visiting the Presidential Museum</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visiting the Kigali Genocide Memorial Site</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visiting the Campaign against Genocide museum</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visiting Artisan/Craft Centers</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Lunch in a major City Restaurant or Hotel des mille collines (Hotel Rwanda)</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visiting the Kimironko Market</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visiting Mount Kigali</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visiting the Kigali Convention Center</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visiting Lake Nyarutarama</li>', '<h6><b>Mount Kigali:</b> This will probably be the first place you will visit. It is not actually a mountain but the tallest of the many hills in Kigali. Mount Kigali has the highest point in the city enabling visitors to get amazing views of the city, the countryside and beautiful hills. On top the hill is a restaurant and a company organizing horseback safaris.\r\n</h6><br>\r\n<h6><b>The Natural History Museum:</b> Is a Museum of history and former house of Doctor Richard Kandt. The Museum is found between Mount Kigali and Mount Jali. Kandt was a famous German explorer who built the very first modern building in Rwanda. The Natural History Museum is the place to go to if one is interested in learning more about the history of Kigali and the era of colonization in Rwanda. It is the oldest modern building in Rwanda. Through the Museum exhibitions and information from the resident Guides, you will learn that Kigali begun as a colonial outpost in 1907.\r\n</h6><br>\r\n<h6><b>Kigali Convention Center:</b> This is where all the major conferences, meetings and exhibitions are held. The center is close to Kigali International Airport and can accommodate 2,500 people. The center is also home to a five-star accommodation facility known as the Radisson blue hotel with 292 rooms. Other facilities at the Kigali Convention Centre include shopping malls, arcades, small business and offices. It is the perfect place to go to if one wants to visit a modern shopping arena, find good accommodation or mingle with Rwanda’s affluent class.\r\n</h6><br>\r\n<h6><b>The Presidential Museum:</b> After visiting the Kandt House, the next stop is the Presidential Museum. This Museum was the state house or residence of Rwanda’s two former presidents. The Presidential museum is connected to the 1994 Rwandan Genocide in many ways. When President Habyiramana’s plane was short, it landed straight in the compound of presidential house. It was the shooting of the presidential jet and death of Habyarimana in April 1994 that triggered a genocide that had been planned for a long time but not put in effect. You will also get to learn about other events leading to and after the Rwanda genocide after visiting this Museum.\r\n</h6><br>\r\n<h6><b>Campaign against Genocide museum:</b> This relatively new museum helps inform visitors about the role of the Rwandan Patriotic Front in ending the 1994 genocide. The Museum is found at the Parliament House.\r\n</h6><br>\r\n<h6><b>Kigali Genocide Memorial Site:</b> This site is one of the many built around the country to remember over 800,000 people who lost their lives during the 1994 genocide. This particular genocide memorial Full Day Kigali tour site is found in Gisozi were about 2500 people are buried. The Site has three main exhibitions – One focuses on general information about the 1994 genocide while another is a memorial of the innocent children who died during the same genocide. The third exhibition covers genocides that occurred in the different parts of the world. As a visitor, you will learn about the situation before, during and after the genocide through documentaries, videos or personal presentations. The whole experience can be very touching but nevertheless important to educate people about the horrors of genocides so that it never happens anywhere else again.\r\n</h6><br>\r\n<h6><b>Craft Centers:</b> After visiting the Kigali Genocide Center, the driver/Guide will take you to visit the best artisan shops in Kigali where you can buy souvenirs and take back home as a memory of your time in Kigali. The best artisan centers are Inema Art Center, Ivuka Arts studios and Caplaki. Buying souvenirs in centers like the Caplaki Handcrafts Co-operatives is a good way of supporting the local population and especially the women who are involved in making the art pieces.\r\n</h6><br>\r\n<h6><b>A major City Restaurant:</b> This tour involves visiting one of the top city restaurants to taste local Rwandan food during lunch. If you want the more international cuisines, you are free to choose them 1 day tour of Kigali cityover the local food. Dining at a local restaurant offers opportunities to meet the local people. Lunch may instead be taken at the Hotel des mille collines depending on how the tour goes.\r\n</h6><br>\r\n<h6><b>Kimironko Market:</b> Markets are the best place to learn about the culture of a new place. Kimironko is one of the most popular for shopping spices, herbs, vegetables, fruits, salt, meat and fish. You will also find individuals selling different art pieces and more.\r\n</h6><br>\r\n<h6><b>Nyamata church:</b> This is one of the many genocide sites found in the different parts of the country and one of the most prominent in Kigali. About 50,000 people were killed inside this church. On a visit one can still see skulls, bones, blood-stained clothes, national identity cards and machetes that were used by the interahamwe. A mass grave can be seen outside the church were most of the victims were buried.\r\n</h6><br>\r\n<h6><b>Hotel des mille collines:</b> It played a major role during the 1994 Rwanda genocide. Over 1,000 residents were hidden safely within the hotel by the management as uncontrolled killings continued outside. The hotel has excellent international and local cuisines. There is also the daily buffet consisting of local food like Ibijumba and Amateke. The driver may take you to have lunch at this classy hotel as you learn about the significant role it played during the genocide.\r\n</h6><br>\r\n<h6><b>Lake Nyarutarama:</b> Lake Nyarutarama is one of the birding destinations in Rwanda and you can catch sight of species like the African Hobby, Bat Hawk, Cinnamon-chested Bee-eater, Cisticolas, Little Bee-eater, Red-backed Shrike, Red-chested Cuckoo, Spot-flanked Barbet, Squacco Heron, Sunbirds, Swamp Flycatcher, Yellow-billed Duck and so much more.\r\n</h6><br>', '<li><i class=\'bx  bx-right-arrow\'></i>Full time English speaking driver/guide</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Entrance fees to any site requiring it</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Bottled water</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Transport in 4X4 vehicle</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Lunch</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Airport transfers</li>', '<li><i class=\'bx  bx-right-arrow\'></i>Accommodation</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>International flights</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visas</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal expenses</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Alcoholic drinks and laundry</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal insurance</li>', '1-DAY-KIGALI-CITY-TOUR-AND-GENOCIDE-MEMORIAL-VISIT.', 'Kigali city tour, Genocide memorial visit, Presidential Museum, Mount Kigali, Genocide museum, Kandt House, Lake Nyarutarama, Kigali Convention Center', '1 Day Kigali City Tour takes you for an amazing discovery of Rwanda’s capital. Kigali is the commercial center of Rwanda with most of the important political of'),
(5, '2 Days Gorilla Trekk And Mount Bisoke Hike', '2', '2-Days-Gorilla-Trekk-And-Mount-Bisoke-Hike.jpg', 'Gorilla trekking in the Volcanoes National Park is the most popular activity. The reason for this is because Mountain gorillas are the most intriguing primates on earth. They live in high altitudes and because of this have developed thick fur. They are found in only three countries – Uganda, Congo, and Rwanda. Rwanda has about 30 percent of the overall population of Mountain gorillas.\r\nThe Volcanoes National Park has 8 habituated gorilla families. The Volcanoes National Park has five Volcanoes within its boundaries. They include Bisoke, Karisimbi, Muhabura, Gahinga and Sabyinyo. Bisoke is equally popular with hikers because of its remarkable crater Lakes. Mount Bisoke is characterized by lush green vegetation consisting of bamboo, Hagenia forest, and other sub-alpine types.\r\nHiking Mount Bisoke takes you up to the top of the volcano where you will have a great view of the magnificent cater lake. This 2 days gorilla tour and mount Bisoke Hike starts from Kigali. It involves a tour of Kigali city and a visit to the Gisozi genocide memorial site either at the beginning or end of the tour.', '<li><i class=\'bx  bx-right-arrow\'></i>Tour of Kigali city and the Gisozi Genocide memorial site at the beginning or end of your tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Gorilla trekking at the volcanoes national park Rwanda</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Hiking Mount Bisoke</li>', '<h6><b>Day 1: Arrival from Kigali and Transfer to Kinigi –</b><br> Our guide from Paradise Africa Expeditions will pick you up from your hotel and brief you about the tour before proceeding to the volcanoes national park. The journey takes you through the stunning mountainous countryside.<br>\r\nYou will arrive at the Kinigi for briefing. Hiking Mount Bisoke takes 4-6 hours and usually starts at 8:00 am. You will be driven away from the Kinigi park offices to the Bisoke head trail. We recommend that you hire a porter. After viewing the great Crater Lake and surrounding beautiful scenery, you will descend back to the starting point where our guide will be waiting to take you back to your lodge for lunch and rest.<br>\r\nDinner and overnight at Mountain Gorilla View Lodge / The 5 Volcanoes Lodge (Luxury), Le Bambou Gorilla Lodge / Da Vinci Lodge (Mid-range), and The Garden Place Hotel (Budget).\r\n</h6><br>\r\n<h6><b>Day 2: Gorilla Trekking at the volcanoes national park – Departure</b><br> After an early breakfast, you will be briefed by the head guide about the information on gorilla trekking in Rwanda, what to expect and how to act around the gorilla group. You will be assigned a gorilla group at the end of the briefing as well as given a chance to hire a porter. There are 10 habituated gorilla groups in Rwanda. Some live near the park offices while others go deeper into the forest requiring more time tracking. The one hour you will spend with the gorilla family will be one of your memorable lifetime experiences. Mountain gorillas are very calm and peaceful but also playful.<br>\r\nFollow instructions from your guide and always remain calm. Never make sudden movements that might irritate the gorilla family. After spending one hour with the gorilla family, you will go back to the starting point where you will meet our guide from Paradise Africa Expeditions to take you back to your hotel for lunch and later proceed back to Kigali to your hotel.\r\n</h6><br>', '<li><i class=\'bx  bx-right-arrow\'></i>A Full time safari vehicle And Fuel</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>An English speaking Driver/Guide</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Gorilla Permit (1,500USD)</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Hiking fees</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>All meals in between journeys and bottled water</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full board accommodation while on safari</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Tour of Kigali</li>', '<li><i class=\'bx  bx-right-arrow\'></i>Accommodation before and after the tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>International flights</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visas</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal expenses</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Alcoholic drinks and laundry</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal insurance</li>', '2-Days-Gorilla-Trekk-And-Mount-Bisoke-Hike', '2 Days Gorilla Trekk And Mount Bisoke Hike', '2 Days Gorilla Trekk And Mount Bisoke Hike'),
(6, '3 days Rwanda Gorilla And Golden Monkey', '3', '3-days-Rwanda-Gorilla-And-Golden-Monkey.jpg', 'This 3 Days Rwanda gorilla safari and golden Monkey trekking package at the Volcanoes National Park is ideal for primate lovers who wish to see two of Africa’s most endangered primate species. The package includes a tour of the capital Kigali and a visit to the Iby’iwacu Cultural Village to connect with the locals and their traditional culture. Both activities will be done at the Volcanoes National Park in Rwanda. The Volcanoes National Park is the most visited tourism destination in Rwanda. Each year thousands of travelers visit the park to take part in a variety of activities that we will discuss shortly.\r\nThe park is home to about 330 mountain gorillas. This number accounts for about a third of the overall population of the primates. Gorilla trekking is, therefore, the most popular activity in the park Apart from mountain gorillas, the Volcanoes National Park is also home to golden monkeys, hyenas, forest buffaloes, elephants, and over 250 species of birds just to mention a few.', '<li><i class=\'bx  bx-right-arrow\'></i>Touring Kigali city and visiting the Genocide memorial site</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Gorilla Trekking in Rwanda</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>A tour of the Iby’iwacu cultural village</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Golden Monkey Tracking</li>', '<h6><b>Day 1: Kigali city tour – Transfer to the Volcanoes National Park</b><br> The guide will come and pick you up at the airport or your hotel in the morning to start your tour. You will begin by touring the city of Kigali. Kigali is a relatively small city but clean and well planned.<br> The city has many interesting landmarks but you will visit the Gisozi genocide war memorial site, the former presidential palace, the main city market, and artisan shops. The genocide memorial Centre in Kigali was built in remembrance of the thousands of people who died during the 1994 genocide in Rwanda.<br> After learning about what happened during the genocide, you will visit local markets, artisan shops, the former presidential palace (now a museum), and then have lunch before starting the 2 to 3 hours’ journey to the Volcanoes national park. While traveling to the park, you will be kept awake by the beautiful mountainous countryside and see for yourself why Rwanda is often referred to as “The Land of a thousand hills”.<br>\r\nDinner and Overnight at Hotel Muhabura (Budget), Da Vinci Lodge (Mid-range), and Virunga Lodge (Luxury).\r\n</h6><br>\r\n<h6><b>Day 2: Mountain gorilla Tracking – Touring the Iby’iwacu cultural village</b><br>Wake up very early and take breakfast before heading for briefing at the park headquarters in Musanze. The briefing about gorilla tracking takes place at 7:00 am and is conducted by the head park guide. The briefing covers topics about the history of the park, the gorilla groups, Dian Fossey, the rules and requirements for gorilla trekking. You will also be advised on how to act around the gorilla family of your choice. After registration and assignment of gorilla groups, you will be given an opportunity to hire a porter.<br> A gorilla safari in Rwanda involves allocated one of the 10 habituated gorilla families. The allocation is now based on the overall fitness of travelers. This is because some of the gorilla families move deep into the forest and present more challenges for hikers. A gorilla family is amazing to watch. You could spend the whole day just watching as the young ones play and roll around. Then there is the mighty silverback, juveniles, and breastfeeding mothers. While watching mountain gorillas, follow instructions from your guide.<br> Always stay calm and never make sudden movements even when a family member comes close to you.\r\nAfter your one hour with the gorilla group has elapsed, you should head back to the starting point where our company guide would be waiting for you. The driver will take you back to the lodge, have lunch, and rest as you wait for the next activity. Later in the afternoon, our guide will come to pick you up and take you to visit the Iby’iwacu cultural village which is located in Musanze (near the volcanoes national park). Enjoy the cultural dances and learn more about the culture of the people of Rwanda. The Centre is now known as the Gorilla Guardians Village and is said to be one of the best cultural centers in Rwanda.<br>\r\nDinner and Overnight at Hotel Muhabura (Budget), Da Vinci Lodge (Mid-range), and Virunga Lodge (Luxury).\r\n</h6><br>\r\n<h6><b>Day 3: Golden Monkey Tracking at the Volcanoes National Park – Transfer back to Kigali</b><br>After yesterday’s activity, you should have rested early enough and ready for golden monkey trekking. Wake up early and take your breakfast before heading for another briefing about golden monkeys at the park offices.<br> You will then head out to the forest g with your porter and Park Rangers. Golden monkeys are critically endangered like mountain gorillas and several projects have been started to save them from total extinction. The monkeys can be sighted on top of short bamboo trees but will come down to forage on the ground. Take enough photos of the cute primates but do not forget to also observe them.<br> Once you are done, head back to the lodge for lunch, rest, and begin your journey back to Kigali. Our guide will drop you at either the airport or your hotel in Kigali.\r\n.</h6><br>', '<li><i class=\'bx  bx-right-arrow\'></i>A Full time safari vehicle And Fuel</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>An English speaking Driver/Guide</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Gorilla Permit</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Hiking fees</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>All meals in between journeys and bottled water</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full board accommodation while on safari</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Tour of Kigali</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Cultural visit to the Gorilla Guardians Village</li>', '<li><i class=\'bx  bx-right-arrow\'></i>Accommodation before and after the tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>International flights</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visas</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal expenses</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Alcoholic drinks and laundry</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal insurance</li>', '3-days-Rwanda-Gorilla-And-Golden-Monkey', '3 days Rwanda Gorilla And Golden Monkey', '3 days Rwanda Gorilla And Golden Monkey');

-- --------------------------------------------------------

--
-- Table structure for table `tanzaniapackage`
--

CREATE TABLE `tanzaniapackage` (
  `packageid` int(200) UNSIGNED NOT NULL,
  `packagetitle` varchar(300) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `nodays` varchar(10) NOT NULL,
  `packageimg` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `packagedesc` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `toursummary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `itinerary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `inclusion` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `exclusion` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metatitle` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metakeywords` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metadesc` varchar(160) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanzaniapackage`
--

INSERT INTO `tanzaniapackage` (`packageid`, `packagetitle`, `nodays`, `packageimg`, `packagedesc`, `toursummary`, `itinerary`, `inclusion`, `exclusion`, `metatitle`, `metakeywords`, `metadesc`) VALUES
(6, '4 Days Wildlife And Wonders Safari', '4', '4-Days-Wildlife-And-Wonders-Safari.jpg', '', '<li><i class=\'bx  bx-right-arrow\'></i>Ngorongoro Conservation Area</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Crater Tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Tarangire National Park</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Tarangire River</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Morning game drive in the park</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Drive to Arusha</li>\r\n\r\n', '<h6><b>Day 1: ARUSHA - NGORONGORO</b><br>\r\nLunch will be served at Impala Hotel, Arusha, at 1230 hrs. You thereafter depart for Ngorongoro Conservation Area at 1400 hrs. You arrive in time for dinner at the lodge. The lodge sits on the rim of the Ngorongoro Crater from where you get awesome views of the collapsed volcano.<br>\r\n\r\nDinner and overnight at Ngorongoro Serena Lodge or Similar\r\n</h6><br>\r\n\r\n<h6><b>Day 2: NGORONGORO CONSERVATION AREA</b><br>\r\nAfter breakfast you depart for crater tour. The drive commences with the 600 m descent to the crater floor, a magnificent natural amphitheatre. Covering 260 sq. km, the crater is an attraction in its own right and is one of the wonders of the natural world. The crater supports a year round resident population of a variety of wildlife.<br>\r\n\r\nYou will have no trouble spotting lion, elephant, rhino, buffalo and many species of plain animals- wildebeest, zebra, reedbuck, Thompson gazelle and many more. You will have packed lunch in the course of the tour.<br>\r\n\r\nDinner and overnight at Ngorongoro Serena Lodge or Similar</h6><br>\r\n\r\n<h6><b>Day 3: NGORONGORO - TARANGIRE</b><br>\r\nAfter breakfast, you depart at 0800 hrs for Tarangire National Park to arrive in time for lunch at your lodge. At 1500 hrs go for an afternoon game drive. Tarangire is a park of giant baobab trees, rolling savannah and acacia parkland.<br>\r\n\r\nIt is famous for its dense wildlife population, which is most spectacular in the dry season between June and September. It is during this period that thousands of animals- wildebeest, zebra, eland, hartebeest, buffalo, and oryx migrate from the dry Maasai steppe to the Tarangire River in search of water. The predators –lion, leopard and others- as is the custom in the savanna follow closely by. Birds are also abundant here and over 550 species have been recorded.<br>\r\n\r\nDinner and overnight at Tarangire Sopa Lodge or Similar</h6><br>\r\n\r\n<h6><b>Day 4: TARANGIRE - ARUSHA</b><br>\r\n0630 hrs- you will go for an early morning game drive in the park. Temperatures are cool in the early morning period and it is a good time to spot animals. Return to the lodge for breakfast and thereafter check out and drive to Arusha to arrive for lunch at Impala Hotel at 1200 hrs.</h6>', '<li><i class=\'bx  bx-right-arrow\'></i>Transfers from and to the Airport</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Park Fees</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Bottled Water</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full board accommodation including meals</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Transportation in a 4 Wheel Drive car</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Park entrance and ranger fees</li>', '<li><i class=\'bx  bx-right-arrow\'></i>Personal Insurance</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Accommodation before and after the tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Alcoholic drinks and laundry</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Airplane tickets</li>', '4-Days-Wildlife-And-Wonders-Safari', '4 Days Wildlife And Wonders Safari, Tanzania Safari, 4 days wildlife Tanzania Safari, Tanzania Safaris, Tanzania Wonders Safari, Ngorongoro, Ngorongoro Crater, Tarangire National Park,  ', 'Have a memorable experience in our 4 days wildlife and wonders safari. Paradise Africa Expeditions is here to take you to there.'),
(7, '4 Days Triple Spectacle Experience', '4', '4-Days-Triple-Spectacle-Experience.jpg', '', '<li><i class=\'bx  bx-right-arrow\'></i>Depart for Ngorongoro Conservation Area</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Ngorongoro Crater</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Olduvai Gorge</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Game drive in the Serengeti National Park.</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Lake Manyara National Park via Ol duvai gorge</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Drive back to Arusha</li>', '<h6><b>Day 1: ARUSHA - NGORONGORO</b><br>\r\nLunch will be served at Impala Hotel, Arusha, at 1230 hrs. You thereafter depart for Ngorongoro Conservation Area at 1400 hrs. You arrive in time for dinner at the lodge. The lodge sits on the rim of the Ngorongoro Crater from where you get awesome views of the collapsed volcano.<br>\r\nDinner and overnight at Ngorongoro Sopa Lodge</h6><br>\r\n\r\n<h6><b>Day 2: NGORONGORO - SERENGETI</b><br>\r\nAfter breakfast, you depart for a half-day morning tour of the crater. The drive commences with the 600 m descent to the crater floor, a magnificent natural amphitheater. Covering 260 sq. km, the crater is an attraction in its own right and is one of the wonders of the natural world. The crater supports a year-round resident population of a variety of wildlife. You will have no trouble spotting lions, elephants, rhinos, buffalo, and many species of plain animals- wildebeest, zebra, reedbuck, Thompson gazelle, and many more. Return to the lodge for lunch.<br><br>\r\n\r\nAfter lunch, depart at 1400 hrs for Serengeti National Park passing via Olduvai Gorge. Olduvai Gorge is the prehistoric site where Dr. Louis Leakey discovered the remains of Homo habilis (“Handyman”) regarded as mankind’s first step on the path of human evolution. Arrive in Serengeti in the evening and check-in at your lodge.<br><br>\r\nDinner and overnight at Serengeti Sopa Lodge</h6><br>\r\n\r\n<h6><b>Day 3: SERENGETI - LAKE MANYARA</b><br>\r\nAfter breakfast, commence at 0800 hrs on a game drive in the Serengeti National Park. The Serengeti is probably the most famous wildlife sanctuary in the world. Within its 15,000 sq km area it hosts 3 million large mammals. More than 35 species of plain animals- zebra, wildebeest, eland, giraffe, and others are found here. And so for the big five: elephant, lion, buffalo, leopard, and rhino.<br><br>\r\n\r\nThe park is the staging zone for one of the most spectacular events in the natural world- the annual migration of wildebeest. This commences around June when over 1 million wildebeest, zebra, and gazelle head for the Maasai Mara in Kenya in search of pasture. They are closely followed by the predators of the savanna- lion, cheetah, wild dog, jackal, hyena, and vultures. The Serengeti also has over 500 species of birds.\r\nReturn to the lodge for lunch.<br><br>\r\n\r\nAt 1400 hrs proceed to Lake Manyara National Park via Olduvai gorge and check-in at Kirurumu Tented Lodge.<br>\r\nDinner and overnight at Kirurumu Tented Lodge.</h6><br>\r\n\r\n<h6><b>Day 4: LAKE MANYARA - ARUSHA</b><br>\r\nAfter breakfast, start at 0800 hrs with a morning game drive at Lake Manyara National Park. The park covers 330 sq. km, 70% of which is occupied by the lake. The varied ecosystem consists of groundwater forests, acacia woodland, and open grassland along the lakeshore and sustains a wealth of wildlife, including the Big Five -lion, elephant, leopard, rhino, and buffalo. The park is famous for the elusive tree-climbing lions that inhabit the woodland between the lake and the Rift Valley. It is also an ornithologists’ paradise and is host to over 400 species of birds.<br><br>\r\nDrive back to Arusha at 1000 hrs to arrive for lunch at Impala Hotel at 1200 hrs.</h6><br>', '<li><i class=\'bx  bx-right-arrow\'></i>Full time English speaking driver/guide</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Park fees, launch cruise, park guide/Ranger</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Bottled water</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Transport in 4X4 vehicle</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>All meals in between journeys</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full board accommodation while on safari</li>', '<li><i class=\'bx  bx-right-arrow\'></i>Accommodation before and after the tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>International flights</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visas</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal expenses</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Alcoholic drinks and laundry</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal insurance</li>', '4-Days-Triple-Spectacle-Experience', '4 Days Triple Spectacle Experience', '4 Days Triple Spectacle Experience'),
(8, '  6 Days Vintage North Safari', '6', '6-Days-Vintage-North-Safari.jpg', '', '<li><i class=\'bx  bx-right-arrow\'></i>Arusha/ Ngorongoro</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Depart for a day crater tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Depart for Serengeti National Park passing via Olduvai Gorge.</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Serengeti Game Drive.</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Lake Manyara National Park</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Lake Manyara - Arusha</li>\r\n', '<h6><b>Day 1: ARUSHA / NGORONGORO</b><br>\r\nLunch will be served at Impala Hotel, Arusha, at 1230 hrs. Later depart for Ngorongoro Conservation Area at 1400 hrs. You arrive in time for dinner at the lodge. The lodge sits on the rim of the Ngorongoro Crater from where you get awesome views of the collapsed volcano.<br>\r\nDinner and overnight at Ngorongoro Sopa Lodge</h6><br>\r\n\r\n<h6><b>Day 2: NGORONGORO</b><br>\r\nAfter breakfast, you depart for a day crater tour with a picnic lunch. The drive commences with the 600 m descent to the crater floor, a magnificent natural amphitheater. Covering 260 sq. km, the crater is an attraction in its own right and is one of the wonders of the natural world. The crater supports a year-round resident population of a variety of wildlife. You will have no trouble spotting lions, elephants, rhinos, buffalo, and many species of plain animals- wildebeest, zebra, reedbuck, Thompson gazelle, and many more. Return to the lodge for lunch. Afternoon for your relaxation at the lodge.<br>\r\nDinner and overnight at Ngorongoro Sopa Lodge</h6><br>\r\n\r\n<h6><b>Day 3: SERENGETI</b><br>\r\nAfter breakfast, depart for Serengeti National Park passing via Olduvai Gorge. Olduvai Gorge is the prehistoric site where Dr. Louis Leakey discovered the remains of Homo habilis (“Handyman”) regarded as mankind’s first step on the path of human evolution. You arrive in time for lunch at 1200 hrs at your lodge.<br><br>\r\n1500 hrs- you go for an evening game drive in the park. The Serengeti is probably the most famous wildlife sanctuary in the world. Within its 15,000 sq km area it hosts 3 million large mammals. More than 35 species of plain animals- zebra, wildebeest, eland, giraffe, and others are found here. And so for the big five: elephant, lion, buffalo, leopard, and rhino. The park is the staging zone for one of the most spectacular events in the natural world- the annual migration of wildebeest. This commences around June when over 1 million wildebeest, zebra, and gazelle head for the Maasai Mara in Kenya in search of pasture. They are followed closely by the predators of the savanna- lion, cheetah, wild dog, jackal, hyena, and vultures. The Serengeti also has over 500 species of birds.<br><br>\r\nDinner and overnight at Serengeti Sopa Lodge\r\n</h6><br>\r\n\r\n<h6><b>Day 4: SERENGETI</b><br>\r\nYou dedicate this day to Serengeti and take a morning and an afternoon game drive.\r\nMeals and overnight at Serengeti Sopa Lodge</h6><br><br>\r\n\r\n<h6><b>Day 5: LAKE MANYARA</b><br>\r\nAfter breakfast, depart for Lake Manyara National Park to arrive in time for lunch at your lodge. 1500 hrs- you go for an evening game drive in Lake Manyara National Park. The park covers 330 sq. km, 70% of which is occupied by the lake. The varied ecosystem consists of groundwater forests, acacia woodland, and open grassland along the lakeshore and sustains a wealth of wildlife, including the Big Five -lion, elephant, leopard, rhino, and buffalo.<br> The park is famous for the elusive tree-climbing lions that inhabit the woodland between the lake and the Rift Valley. It is also an ornithologists’ paradise and is host to over 400 species of birds. You will spend the night at Kirurumu Tented Lodge. The lodge is perched on the edge of the Mto Wa Mbu escarpment and has great views of the Great Rift Valley and Lake Manyara itself.<br>\r\nDinner and overnight at Lake Kirurumu Tented Lodge</h6><br>\r\n\r\n<h6><b>Day 6: LAKE MANYARA - ARUSHA</b><br>\r\n0800 hrs- Drive to Arusha to arrive for lunch at Impala Hotel at 1200 hrs.</h6><br>', '<li><i class=\'bx  bx-right-arrow\'></i>Full time English speaking driver/guide</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Park fees, park guide/Ranger</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Bottled water</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Transport in 4X4 vehicle</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>All meals in between journeys</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full board accommodation while on safari</li>', '<li><i class=\'bx  bx-right-arrow\'></i>Accommodation before and after the tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>International flights</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visas</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal expenses</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Alcoholic drinks and laundry</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal insurance</li>', '  6-Days-Vintage-North-Safari', '6 Days Vintage North Safari', '6 Days Vintage North Safari');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `bookingid` int(11) NOT NULL,
  `packagetitle` varchar(250) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `checkin` varchar(100) DEFAULT NULL,
  `checkout` varchar(100) DEFAULT NULL,
  `adults-no` int(20) DEFAULT NULL,
  `children-no` int(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `booking-date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `hotel-class` varchar(250) NOT NULL,
  `anything-else` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'anuj', 'anuj.lpu1@gmail.com', '2354235235', 'The standard Lorem Ipsum passage, used since the 1500s', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2017-05-13 22:23:53', 1),
(2, 'efgegter', 'terterte@gmail.com', '3454353453', 'The standard Lorem Ipsum passage', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2017-05-13 22:27:00', 1),
(3, 'fwerwetrwet', 'fwsfhrtre@hdhdhqw.com', '8888888888', 'erwt wet', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2017-05-13 22:28:11', 1),
(4, 'Test', 'test@gm.com', '4747474747', 'Test', 'iidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiid', '2017-05-14 07:54:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '1111111111', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-10 10:38:17', '2019-07-20 20:18:18'),
(3, 'sarita', '9999999999', 'sarita@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2017-05-10 10:50:48', '2017-05-14 07:40:19'),
(7, 'test', '7676767676', 'test@gm.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-10 10:54:56', '0000-00-00 00:00:00'),
(8, 'Anuj kumar', '9999999999', 'demo@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:17:44', '0000-00-00 00:00:00'),
(9, 'XYZabc', '3333333333', 'xyz@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:25:13', '2017-05-14 07:25:42'),
(10, 'Anuj Kumar', '4543534534', 'demo@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:43:23', '2017-05-14 07:46:57'),
(11, 'XYZ', '8888888888', 'abc@g.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:54:32', '2017-05-14 07:55:17'),
(12, 'pau pal', '0708302603', 'billypaulo98@gmail.com', '5aba3fe23bed4235061208dc0779af4b', '2021-11-13 06:53:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ugandapackage`
--

CREATE TABLE `ugandapackage` (
  `packageid` int(100) NOT NULL,
  `packagetitle` varchar(200) NOT NULL,
  `nodays` varchar(10) NOT NULL,
  `packageimg` varchar(200) NOT NULL,
  `packagedesc` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `toursummary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `itinerary` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `inclusion` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `exclusion` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metatitle` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metakeywords` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `metadesc` varchar(160) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ugandapackage`
--

INSERT INTO `ugandapackage` (`packageid`, `packagetitle`, `nodays`, `packageimg`, `packagedesc`, `toursummary`, `itinerary`, `inclusion`, `exclusion`, `metatitle`, `metakeywords`, `metadesc`) VALUES
(6, '2 Days White Water Rafting', '2', '2-Days-White-Water-Rafting.jpg', 'Jinja is Uganda’s second-largest town and former industrial hub. It is in Jinja where you find the exact spot where Lake Victoria releases its waters to the great river Nile (known as the source of the Nile). The town is quiet, serene, and relatively well planned with a lot of interesting activities such as bungee jumping, horseback riding, quad biking, boat rides, nature walks, sightseeing, and of course white water rafting to mention but a few. While on a true Uganda Safari visiting Jinja is one thing you must do.\r\nWhite water rafting is an amazing activity that teaches one how to handle pressure and remain calm under pressure. The activity takes you rowing through the turbulent sections and rapids of the river Nile in Jinja.', '<li><i class=\'bx  bx-right-arrow\'></i>A tour of Mabira forest</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visit the Ssezibwa falls</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Boat ride at the source of the Nile river and the Samuka islands</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>White water rafting</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Bungee jumping, horse riding or quad biking</li>\r\n', '<h6><b>Day 1: Kampala to Jinja with a stop at Sezibwa falls and Mabira forest</b><br> A driver/guide will pick you after breakfast from your hotel in Kampala and proceed to Jinja. You will stop along the way for a guided nature walk around the spectacular Sezibwa falls. Another stopover will be for a nature walk at the Mabira forest. While at Mabira, expect to spot a variety of birds and primates like the red-tailed monkey.<br> You will continue your journey past the eye-catching sugar and tea plantations. Finally, you will cross the newly built Jinja Bridge and continue to your hotel for check-in and lunch. After lunch, you will go for a tour of the town of Jinja and then take a boat ride to explore the source of the Nile and Samuka Island. Samuka Island is a breeding ground for several species of birds.<br> As you leave the boat and the area around the source of the Nile, don’t forget to purchase souvenirs from one of the artisan shops. The driver/guide will take you back to the hotel for a shower, relaxation and mingling.<br>\r\nDinner and overnight at Jinja Nile Resort.\r\n</h6><br>\r\n<h6><b>Day 2: White water rafting, Bungee Jumping, Horse riding, Quad Biking – Departure</b><br> This will be a great day of more adventure. You will have morning breakfast at your hotel and head out for white water rafting along the river Nile. The river Nile in Jinja provides some of the best spots for kayaking and water rafting in Africa. The stretch with rapids used to be over 10km long until a power dam was constructed recently. White water rafting in Jinja is divided into two sessions – morning and afternoon. One can choose to go for a full day of white water rafting but you will only go for the morning shift.<br> The morning session starts at 9 am. You will join your fellow rafters for registration and the briefing. After the briefing, you will be supplied with life jackets, helmets, and other rafting gear. The activity will go on for about 4 hours after which you will be taken for lunch. After lunch, you will go for quad biking, horse riding, and bungee jumping (if open). Each activity takes one hour. After completing the activities, the driver/guide will start the journey back to Kampala.\r\n</h6><br>', '<li><i class=\'bx  bx-right-arrow\'></i>Airport transfers</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>A Full time driver/guide</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Fees for all activities – White water rafting, bungee jumping, Quad biking and horseback riding.</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Bottled water and lunch along the way</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Transport in 4X4 vehicle</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full board accommodation for 2 nights</li>', '<li><i class=\'bx  bx-right-arrow\'></i>International flights</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visa fees</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal expenses (laundry, crafts, drinks, cigars, souvenirs and tips)</li>', '2-Days-White-Water-Rafting', '2 Days White Water Rafting, White Water Rafting, Water rafting, Uganda white water rafting, Uganda Safari, Nile River white water rafting, Ugandan Safari', '2 Days White Water Rafting is an activity worth visiting. Experience the wild-raged surface of the Nile river.'),
(7, '3 Days Gorilla In Natural Habitation', '3', '3-Days-Gorilla-In-Natural-Habitation.jpg', 'There is no known actual definition of the Gorilla Habituation Experience. However, it can simply be known as the act of training wild gorillas to become used to the sight of people. Unlike the usual limit of one-hour interaction with the gorillas, the Gorilla Habituation allows a person more hours (up to four hours) in the company of the gorillas. Clients will be moving with experts who habituate gorillas and spend more time and see how gorillas are habituated.', '<li><i class=\'bx  bx-right-arrow\'></i>Pickup and transfer to Bwindi</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Gorilla Habituation Experience</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Departure to Entebbe or Kampala</li>', '<h6><b>Day 1:</b> Kampala to Bwindi Impenetrable National Park. The Tour will take you through central Uganda with a stopover in Mbarara at the famous Igongo Culture Center for some refreshments. Then proceed to Kabale District passing villages, cultivated farms, and hills before you reach Bwindi. Enjoy the scenic view of Kigezi rolling hills and valleys as you travel to Kisoro or the southern part of Bwindi National Park arriving late in the afternoon for dinner and overnight at the Rushaga Gorilla Camp.\r\n</h6><br>\r\n<h6><b>Day 2:</b> You will wake up early in the morning and head to the headquarters of the park to join other clients for briefing about dos and don’ts while with mountain gorillas on your habituation experience. After the briefing, you will start your trek into the forest, guided by researchers and guides. You will have an opportunity to listen to and observe the researchers doing their work of habituating gorillas and if possible, you will be called upon to participate by collecting samples, naming group members, making calls, and so much more.<br>\r\nDuring your trek, you may encounter several birds, other animals, and primates in the forest. Spend extended time with mountain gorillas in their natural habitat in Bwindi Forest national park. It’s the best way to meet, see, interact face to face and enjoy the human-like characters of mountain gorillas, which make them exceptional creatures.<br>\r\nMuch as most people mistake habituation the experience is a different story. It’s an experience of its own kind, which is surely worth doing by every gorilla lover. You may be wondering what the gorilla habituation experience is all about. The practice is all about training wild gorillas to make them familiar with human presence before they are declared free for trekking.\r\nAfter a very long day, retire back to the camp for dinner and overnight. Having Enjoyed the best of Gorilla Habituation Safari in Uganda.\r\n</h6><br>\r\n<h6><b>Day 3:</b> After breakfast, depart Bwindi Impenetrable National Park and transfer back to Kampala with a stopover at the equator to take photos and scenic experience being in the worlds of Northern and Southern Hemisphere at the same time. Buy a few souvenirs and have a quick cup of coffee and later continue with your journey to Kampala.\r\n</h6><br>', '<li><i class=\'bx  bx-right-arrow\'></i>Gorilla Habituation Permits</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Transfers from and to the Airport</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full board accommodation including meals</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Transportation in a 4 Wheel Drive car</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>An English Speaking Driver/Guide who will be with you throughout the tour.</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Drinking water while traveling</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Park entrance and ranger fees</li>', '<li><i class=\'bx  bx-right-arrow\'></i>Accommodation before and after the tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Airplane tickets</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>A Uganda Visa. This can be got at the airport at a cost of $50.</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Tips to the Guide, hotel staff and park officials</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Alcoholic drinks and laundry</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal insurance</li>', '3-Days-Gorilla-In-Natural-Habitation', '3 Days Gorilla In Natural Habitation', '3 Days Gorilla In Natural Habitation'),
(8, '3 Days Queen Elizabeth Park.', '3', '3-Days-Queen-Elizabeth-Park.jpg', 'This will give you an opportunity to spot Africa’s top mammals, beautiful forests, sprawling savannah, and stunning landscapes. Queen Elizabeth national park is found in the western part of the country covering an area of over 1,900 square kilometers. It has two Lake Craters Edward and George which are connected by the Kazinga channel. Queen Elizabeth is Uganda’s second-largest and most visited park. The park is famous for the Tree Climbing Lions of Ishasha, boat cruising along the Kazinga channel, and chimpanzee trekking in the Kyambura gorge and Maramagambo forest. The park has over 550 species of birds and butterflies.', '<li><i class=\'bx  bx-right-arrow\'></i>Head to Queen Elizabeth National park</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>See Lake Katwe’s Salt mining industry</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Go on a Game drive</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Afternoon boat cruise at the Kazinga channel</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Chimpanzee trekking at Kyambura gorge</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Head back to Kampala</li>', '<h6><b>Day 1: Head to Queen Elizabeth National Park</b><br> An English-speaking guide/driver from Paradise Africa Expeditions will pick you up from your Kampala hotel at around 6 am. The journey to the park takes about 6 hours but you will be treated to great views of the beautiful countryside. You will stop along the way to take photos at the equator.<br>\r\nAs you approach and leave Mbarara, get ready to see great physical landscapes, valleys, and terrain that are dotted with tea plantations and grazing long-horned Ankole cattle. Lunch will be in Mbarara town after which you will proceed to the park. In the evening, you will tour Crater Lake Katwe and the salt mining activities therein. Dinner and overnight will be at either Mweya Safari Lodge (Luxury) or Bush Lodge (Budget) which is strategically built with good views of the Kazinga Channel.\r\n</h6><br>\r\n<h6><b>Day 2: Game drive and Launch cruise at the Kazinga channel</b><br> You will have a very early morning breakfast and proceed to an early morning game drive at the Mweya Peninsular around the Kazinga Channel. The tour will take about 3 hours and you will follow different trails to spot Jackals, buffaloes, forest hogs, warthogs, the Uganda Kob, elephants, lions, and the elusive leopard. You will return back to the lodge for lunch. The two-hour afternoon Cruise at the Kazinga channel will give you opportunities to spot several bird (Kingfishers, pelicans, etc) species, elephants, buffaloes, hippos, crocodiles, and other water animals. Dinner and overnight at either Mweya safari lodge (Luxury) or Bush Lodge (Budget).\r\n</h6><br>\r\n<h6><b>Day 3: Chimpanzee tracking and Departure</b><br> After early morning breakfast you will head to Kyambura Gorge. The underground forest in the Kyambura gorge is home to chimpanzees, Baboons, and many other primates. The forest also has many plants, tree, and bird species. After visiting the Kyambura gorge, the guide will take you back to the lodge for early lunch and then proceed back to Kampala passing through the Maramagambo forest to spot more mammals and primates.<br> Expect to reach Kampala in the evening for your departure flight or stay at your hotel.\r\n</h6><br>', '<li><i class=\'bx  bx-right-arrow\'></i>Full time English speaking driver/guide</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Park fees, launch cruise, park guide/Ranger</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Bottled water</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Transport in 4X4 vehicle</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>All meals in between journeys</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Full board accommodation while on safari</li>', '<li><i class=\'bx  bx-right-arrow\'></i>Accommodation before and after the tour</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>International flights</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Visas</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal expenses</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Alcoholic drinks and laundry</li>\r\n<li><i class=\'bx  bx-right-arrow\'></i>Personal insurance</li>', '3-Days-Queen-Elizabeth-Park.', '3 Days Queen Elizabeth Park.', '3 Days Queen Elizabeth Park.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beachholidays`
--
ALTER TABLE `beachholidays`
  ADD PRIMARY KEY (`packageid`);

--
-- Indexes for table `carhire`
--
ALTER TABLE `carhire`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`packageid`);

--
-- Indexes for table `honeymoon`
--
ALTER TABLE `honeymoon`
  ADD PRIMARY KEY (`packageid`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotelid`);

--
-- Indexes for table `joinedsafaris`
--
ALTER TABLE `joinedsafaris`
  ADD PRIMARY KEY (`packageid`);

--
-- Indexes for table `kenyapackage`
--
ALTER TABLE `kenyapackage`
  ADD PRIMARY KEY (`packageid`);

--
-- Indexes for table `logdes`
--
ALTER TABLE `logdes`
  ADD PRIMARY KEY (`lodgeid`);

--
-- Indexes for table `mclimbing`
--
ALTER TABLE `mclimbing`
  ADD PRIMARY KEY (`packageid`);

--
-- Indexes for table `populardestinations`
--
ALTER TABLE `populardestinations`
  ADD PRIMARY KEY (`packageid`);

--
-- Indexes for table `rwandapackage`
--
ALTER TABLE `rwandapackage`
  ADD PRIMARY KEY (`packageid`);

--
-- Indexes for table `tanzaniapackage`
--
ALTER TABLE `tanzaniapackage`
  ADD PRIMARY KEY (`packageid`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`bookingid`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- Indexes for table `ugandapackage`
--
ALTER TABLE `ugandapackage`
  ADD PRIMARY KEY (`packageid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beachholidays`
--
ALTER TABLE `beachholidays`
  MODIFY `packageid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carhire`
--
ALTER TABLE `carhire`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `packageid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `honeymoon`
--
ALTER TABLE `honeymoon`
  MODIFY `packageid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotelid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kenyapackage`
--
ALTER TABLE `kenyapackage`
  MODIFY `packageid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `logdes`
--
ALTER TABLE `logdes`
  MODIFY `lodgeid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mclimbing`
--
ALTER TABLE `mclimbing`
  MODIFY `packageid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `populardestinations`
--
ALTER TABLE `populardestinations`
  MODIFY `packageid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rwandapackage`
--
ALTER TABLE `rwandapackage`
  MODIFY `packageid` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tanzaniapackage`
--
ALTER TABLE `tanzaniapackage`
  MODIFY `packageid` int(200) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `bookingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ugandapackage`
--
ALTER TABLE `ugandapackage`
  MODIFY `packageid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
