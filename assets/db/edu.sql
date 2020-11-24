-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2020 at 11:50 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `email` varchar(255) NOT NULL,
  `eid` text NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`email`, `eid`, `status`) VALUES
('babusunnah@gmail.com', '5e7da0d0b1ea3', 'finished');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'superAdmin', '$2y$10$Y8Qqexsx0AR4DtLhIo7eHuP7tBUl7T4VAOEQJ419VPJH8ciEz8iwK');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `sn` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `sn`, `email`, `eid`, `qid`, `ansid`) VALUES
(61, 1, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dbfff32241', '5e7dbfff481d3b'),
(62, 2, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dbfff8c797', '5e7dbfff9022fc'),
(63, 3, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dbfffaea79', '5e7dbfffbadcaa'),
(64, 4, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dbfffd171f', '5e7dbfffd5b7cd'),
(65, 5, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dbfffe9dc1', '5e7dbfffee21db'),
(66, 6, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc000143cb', '5e7dc00018827c'),
(67, 7, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc0002ca6c', '5e7dc00030ec9b'),
(68, 8, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc0004781e', '5e7dc0004f713a'),
(69, 9, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc000723b9', '5e7dc00075e51c'),
(70, 10, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc0008c7a6', '5e7dc00090c03d'),
(71, 11, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc000a6b94', '5e7dc000aaff0d'),
(72, 12, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc000bf236', '5e7dc000c3692d'),
(73, 13, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc000dbd33', '5e7dc000e0190b'),
(74, 14, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc00100195', '5e7dc00103c2da'),
(75, 15, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc0011cc93', '5e7dc0012072ba'),
(76, 16, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc00135334', '5e7dc00138dcdd'),
(77, 17, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc0014d012', '5e7dc0015146eb'),
(78, 18, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc0016fcb8', '5e7dc00174114d'),
(79, 19, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc0018aa6a', '5e7dc0018e502d'),
(80, 20, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc001a92b4', '5e7dc001acd4cb'),
(81, 21, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc001c53ed', '5e7dc001c984ab'),
(82, 22, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc001e6347', '5e7dc001e9de0c'),
(83, 23, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc0020c4f5', '5e7dc00210951c'),
(84, 24, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc00224b97', '5e7dc00228ff3a'),
(85, 25, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc0023ef84', '5e7dc002433e1c'),
(86, 26, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc00259d36', '5e7dc0025d7ced'),
(87, 27, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc00275e70', '5e7dc0027a2cca'),
(88, 28, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc0028e511', '5e7dc0029296ec'),
(89, 29, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc002a92c3', '5e7dc002b5614b'),
(90, 30, 'babusunnah@gmail.com', '5e7da0d0b1ea3', '5e7dc002cb5a5', '5e7dc002cfa01d');

-- --------------------------------------------------------

--
-- Table structure for table `backup`
--

CREATE TABLE `backup` (
  `id` int(11) NOT NULL,
  `eid` varchar(255) NOT NULL,
  `qid` varchar(255) NOT NULL,
  `qns` text NOT NULL,
  `oa` text NOT NULL,
  `ob` text NOT NULL,
  `oc` text NOT NULL,
  `od` text NOT NULL,
  `oaid` varchar(255) NOT NULL,
  `obid` varchar(255) NOT NULL,
  `ocid` varchar(255) NOT NULL,
  `odid` varchar(255) NOT NULL,
  `ansid` varchar(255) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `item_id` text NOT NULL,
  `item_name` text NOT NULL,
  `item_amount` varchar(50) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'programming'),
(2, 'cooking'),
(3, 'mathematics'),
(4, 'languages'),
(5, 'physics'),
(6, 'sports and gymnastics'),
(7, 'movies'),
(8, 'robotics');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_des` text NOT NULL,
  `comment_date` varchar(50) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_des`, `comment_date`, `comment_author`, `comment_post_id`) VALUES
(1, 'Topping cupcake sweet roll cake biscuit. Lollipop muffin danish bear claw. DragÃ©e oat cake dragÃ©e pastry ice cream powder jelly beans I love. Marshmallow chocolate bar I love tootsie roll jujubes I love danish. I love pudding halvah wafer caramels apple pie. Halvah jujubes ice cream. Toffee jelly beans topping cake chocolate cake powder ice cream. I love chupa chups I love dessert sweet danish candy canes jelly beans I love. Sesame snaps jujubes brownie. Lemon drops chocolate bar soufflÃ©. Gummi bears pastry sugar plum chocolate bar. Apple pie danish macaroon pudding. Lollipop ice cream lollipop muffin. Chocolate pie halvah danish biscuit biscuit jelly-o ice cream powder.', '6 January 2020', 'abiodun jimoh', 3),
(2, 'PICKSUM IPSUMYOUR COOL LOREM IPSUM TEXT GENERATOR ALTERNATIVE\r\nDo you love movies as much as you love making cool websites? Then, boy â€“ have we got the lorem ipsum for you! Our badass text generator will give you the best lines from some of the hardest Hollywood legends â€“ weâ€™re talking Eastwood, Caine, Carrey and Freeman â€“ and mix them up ready to work their magic on your new website. In fact, we reckon youâ€™ll love Picksum Ipsum so much, you might never want to replace it with real text.', '6 January 2020', 'yusuf jamiu', 3),
(3, 'what a good recipe', '6 January 2020', 'balogun Abdulquddus', 4),
(4, 'wow!\r\nnice one', '6 January 2020', 'yusuf jamiu', 4),
(5, 'learnt something new tonight', '6 January 2020', 'ibro', 6),
(6, 'one of the greatest scientist of our time', '6 January 2020', 'balogun Abdulquddus', 7),
(7, 'he is a legend', '6 January 2020', 'abiodun jimoh', 7),
(8, 'vdshjdklfd;lfl;k', '16 January 2020', 'balogun Abdulquddus', 9),
(9, 'Very interesting movie', '16 January 2020', 'Abdullah sulaiman', 9),
(10, 'Awesome', '18 January 2020', 'ISMAILTECH', 9),
(11, 'Interesting write up!!\r\nThank you', '21 January 2020', 'Balogun Abdulquddus', 2),
(12, 'Very interesting topic', '25 January 2020', 'Abdullah sulaiman', 3),
(13, 'i love this piece', '25 March 2020', 'shomope ibrahim', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `start_date` varchar(30) NOT NULL,
  `finish_date` varchar(30) DEFAULT NULL,
  `venue` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` varchar(50) NOT NULL,
  `downloads` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `description`, `name`, `size`, `downloads`) VALUES
(1, 'READ AND PASS', 'GNS 102 READ AND PASS-1.pdf', '1492570', '3');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `timetaken` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `timetaken`, `date`) VALUES
('babusunnah@gmail.com', '5e7e0d13f2243', 30, 30, 30, 0, '02m:03s', '2020-05-16 14:49:58'),
('babusunnah@gmail.com', '5e7e0d13f2243', 30, 30, 30, 0, '01m:44s', '2020-05-16 14:59:48'),
('babusunnah@gmail.com', '5e7da0d0b1ea3', 28, 30, 28, 2, '02m:50s', '2020-05-16 15:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_des` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_cat_id` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL,
  `post_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_des`, `post_image`, `post_date`, `post_author`, `post_cat_id`, `post_status`, `post_comment`) VALUES
(1, 'Whatâ€™s the Difference Between Web Hosting and Domain Hosting?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'download198945.jpg', '27 March 2020', 'Admin', 3, 'Draft', '1'),
(2, 'money heist', 'Money Heist (Spanish: La casa de papel, transl.â€‰The House of Paper) is a Spanish television heist crime drama series. Created by Ãlex Pina, the series was initially intended as a limited series to be told in two parts. It had its original run of 15 episodes on Spanish network Antena 3 from 2 May 2017 through 23 November 2017. Netflix acquired the global streaming rights in late 2017. It re-cut the series into 22 shorter episodes and released them worldwide, beginning with the first part on 20 December 2017, followed by the second part on 6 April 2018. In April 2018, Netflix renewed the series with a significantly increased budget for 16 new episodes total. Part 3, with eight episodes, was released on 19 July 2019. Part 4, also with eight episodes, was released on 3 April 2020. A documentary involving the producers and the cast premiered on Netflix the same day, titled Money Heist: The Phenomenon.\r\n\r\nThe first season revolves around a long-prepared, multi-day assault on the Royal Mint of Spain in Madrid, in which a group of robbers take hostages as part of their plan to print and escape with â‚¬2.4 billion. It involves eight robbers, code-named after cities and led by the Professor (Ãlvaro Morte) from an external location. The story is primarily focused on one of the robbers, Tokyo (Ãšrsula CorberÃ³), as they battle with hostages on the inside and the police on the outside. In the second season, the surviving robbers are forced out of hiding, and with the help of new members, they plan and perform an assault on the Bank of Spain.\r\n\r\nThe series was filmed in Madrid, Spain. Significant portions of part 3 were also filmed in Panama, Thailand and Florence, Italy. The narrative is told in a real-time-like fashion and relies on flashbacks, time-jumps, hidden character motivations and an unreliable narrator for complexity. The series subverts the heist genre by being told from the perspective of a woman (Tokyo) and having a strong Spanish identity, where emotional dynamics offset the perfect strategic crime.\r\n\r\nThe series received critical acclaim for its sophisticated plot, interpersonal dramas, direction and for trying to innovate Spanish television. The Italian anti-fascist song \"Bella ciao\", which plays multiple times throughout the series, became a summer hit across Europe in 2018. By 2018, the series was the most-watched non-English language series and one of the most-watched series overall on Netflix,[4] with a particular resonance coming from viewers from Mediterranean Europe and the Latin world.', 'download240.jpg', '14 April 2020', 'Abdulquddus Balogun', 7, 'Published', ''),
(3, 'Whatâ€™s the Difference Between Web Hosting and Domain Hosting?', 'helo world', 'Koala112.jpg', '14 April 2020', 'Abdulquddus Balogun', 1, 'Published', '');

-- --------------------------------------------------------

--
-- Table structure for table `purchased_courses`
--

CREATE TABLE `purchased_courses` (
  `id` int(11) NOT NULL,
  `course_id` text NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `trials` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchased_courses`
--

INSERT INTO `purchased_courses` (`id`, `course_id`, `user_id`, `trials`) VALUES
(1, 'educare5e7fc627b7715', 'babusunnah@gmail.com', 10),
(2, 'educare5e7fdbb09063d', 'babusunnah@gmail.com', 20),
(3, 'educare5e98c0289c311', 'babusunnah@gmail.com', 5),
(4, 'educare5e990260cf2ab', 'babusunnah@gmail.com', 5),
(6, 'educare5e7e6e81a8dc1', 'babusunnah@gmail.com', 5),
(7, 'educare5eaec272f2c59', 'babusunnah@gmail.com', 5),
(8, '5e7e0d13f2243', 'babusunnah@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `eid` varchar(255) NOT NULL,
  `qid` varchar(255) NOT NULL,
  `qns` text NOT NULL,
  `oa` text NOT NULL,
  `ob` text NOT NULL,
  `oc` text NOT NULL,
  `od` text NOT NULL,
  `oaid` varchar(255) NOT NULL,
  `obid` varchar(255) NOT NULL,
  `ocid` varchar(255) NOT NULL,
  `odid` varchar(255) NOT NULL,
  `ansid` varchar(255) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `oa`, `ob`, `oc`, `od`, `oaid`, `obid`, `ocid`, `odid`, `ansid`, `sn`) VALUES
(6, '5e7da0d0b1ea3', '5e7dbfff32241', 'The technical services department of university library consists of one of the following sections ', 'librarianâ€™s office', 'serials section', 'readers section', 'cataloguing section', '5e7dbfff481d3a', '5e7dbfff481d3b', '5e7dbfff481d3c', '5e7dbfff481d3d', '5e7dbfff481d3d', 1),
(7, '5e7da0d0b1ea3', '5e7dbfff8c797', 'Which of the following library loan systems is operational in Lagos State University', 'brown', 'bookmatic', 'slip', 'none of the above', '5e7dbfff9022fa', '5e7dbfff9022fb', '5e7dbfff9022fc', '5e7dbfff9022fd', '5e7dbfff9022fc', 2),
(8, '5e7da0d0b1ea3', '5e7dbfffaea79', 'One of the following is a publication of the National Library of Nigeria ', 'Nigeria year book', 'Nigeria Periodicals Index ', 'National Bibliography of Nigeria', 'Nigeria Telephone Directory', '5e7dbfffbadcaa', '5e7dbfffbadcab', '5e7dbfffbadcac', '5e7dbfffbadcad', '5e7dbfffbadcac', 3),
(9, '5e7da0d0b1ea3', '5e7dbfffd171f', 'Library service began in Nigeria with the formation of ', 'Lagos Expatriate Club', 'Lagos Civil Service Club ', 'Professional Book Club ', 'Lagos Book Club', '5e7dbfffd5b7ca', '5e7dbfffd5b7cb', '5e7dbfffd5b7cc', '5e7dbfffd5b7cd', '5e7dbfffd5b7cd', 4),
(10, '5e7da0d0b1ea3', '5e7dbfffe9dc1', 'In the library catalogue, A book is usually recorded using ', 'Publisherâ€™s name', 'Surname of Author', 'Edition of the Book ', 'Place of Publication', '5e7dbfffee21da', '5e7dbfffee21db', '5e7dbfffee21dc', '5e7dbfffee21dd', '5e7dbfffee21db', 5),
(11, '5e7da0d0b1ea3', '5e7dc000143cb', 'A computer programme which searches a very large database to find data items is ', 'Internet', 'Local Area Network ', 'Search Engine', 'None of the Above', '5e7dc00018827a', '5e7dc00018827b', '5e7dc00018827c', '5e7dc00018827d', '5e7dc00018827c', 6),
(12, '5e7da0d0b1ea3', '5e7dc0002ca6c', 'Moys classification scheme is used for â€¦.. collections ', 'Engineering', 'Law', 'Medical', 'None of the Above', '5e7dc00030ec9a', '5e7dc00030ec9b', '5e7dc00030ec9c', '5e7dc00030ec9d', '5e7dc00030ec9b', 7),
(13, '5e7da0d0b1ea3', '5e7dc0004781e', 'Bibliotheque Nationale British Museum and Library of Congress are examples of ', 'National Library', 'University Library ', 'Public Library ', 'Research Library', '5e7dc0004f713a', '5e7dc0004f713b', '5e7dc0004f713c', '5e7dc0004f713d', '5e7dc0004f713a', 8),
(14, '5e7da0d0b1ea3', '5e7dc000723b9', 'Which of the following do you think could provide material of current interest in a particular field at a particular time ?', 'Newspapers', 'Magazines', 'Journals', 'All of the Above', '5e7dc00075e51a', '5e7dc00075e51b', '5e7dc00075e51c', '5e7dc00075e51d', '5e7dc00075e51c', 9),
(15, '5e7da0d0b1ea3', '5e7dc0008c7a6', 'Fatiu Ademola Akeusode uses one of these library software to run its database ', 'xLibrary', 'TINLIB ', 'Micro CDS/ISIS ', 'ALICE FOR WINDOWS', '5e7dc00090c03a', '5e7dc00090c03b', '5e7dc00090c03c', '5e7dc00090c03d', '5e7dc00090c03d', 10),
(16, '5e7da0d0b1ea3', '5e7dc000a6b94', 'A researcher who wants to find information on Cambridge University will consult ', 'Encyclopedia Britannica ', 'Europa Year Book ', 'World of Learning ', 'World Almanae and Book of facts', '5e7dc000aaff0a', '5e7dc000aaff0b', '5e7dc000aaff0c', '5e7dc000aaff0d', '5e7dc000aaff0d', 11),
(17, '5e7da0d0b1ea3', '5e7dc000bf236', 'Readers Advisory Service are given at ', 'Reserved Book Section ', 'Reference Section ', 'Special Collection Section ', 'Circulation Section', '5e7dc000c3692a', '5e7dc000c3692b', '5e7dc000c3692c', '5e7dc000c3692d', '5e7dc000c3692d', 12),
(18, '5e7da0d0b1ea3', '5e7dc000dbd33', 'The National Library of Nigeria was established in ', '1970', '1964', '1948', '1991', '5e7dc000e0190a', '5e7dc000e0190b', '5e7dc000e0190c', '5e7dc000e0190d', '5e7dc000e0190b', 13),
(19, '5e7da0d0b1ea3', '5e7dc00100195', 'Who is Who is an example of ', 'Book of World Records', 'Achievement Manual ', 'Dictionary ', 'Directory', '5e7dc00103c2da', '5e7dc00103c2db', '5e7dc00103c2dc', '5e7dc00103c2dd', '5e7dc00103c2da', 14),
(20, '5e7da0d0b1ea3', '5e7dc0011cc93', 'Two classes of reference materials usually found in the library are ', 'General and Subject', 'National and International ', 'Short and Oversize ', 'Brown and Blue', '5e7dc0012072ba', '5e7dc0012072bb', '5e7dc0012072bc', '5e7dc0012072bd', '5e7dc0012072ba', 15),
(21, '5e7da0d0b1ea3', '5e7dc00135334', 'Online Public Access Catalogue can be searched via the following methods except ', 'By title ', 'By author ', 'By keywords in title ', 'Pagination', '5e7dc00138dcda', '5e7dc00138dcdb', '5e7dc00138dcdc', '5e7dc00138dcdd', '5e7dc00138dcdd', 16),
(22, '5e7da0d0b1ea3', '5e7dc0014d012', 'One of the following people was connected with the development of library in Nigeria ', 'Toni Jones ', 'Sir Allan Burns', 'John Harris ', 'Sir James Robertson', '5e7dc0015146ea', '5e7dc0015146eb', '5e7dc0015146ec', '5e7dc0015146ed', '5e7dc0015146eb', 17),
(23, '5e7da0d0b1ea3', '5e7dc0016fcb8', 'Non print material in the library will include the following ', 'Microfiche ', 'Ultra fiche ', 'Video Compact Disc ', 'All of the Above', '5e7dc00174114a', '5e7dc00174114b', '5e7dc00174114c', '5e7dc00174114d', '5e7dc00174114d', 18),
(24, '5e7da0d0b1ea3', '5e7dc0018aa6a', 'Functions of indexes and abstracts are ', 'To provide awareness and access in primary publication', 'To provide awareness and access in Secondary publication', 'To provide awareness and access in tertiary publication', 'None of the Above', '5e7dc0018e502a', '5e7dc0018e502b', '5e7dc0018e502c', '5e7dc0018e502d', '5e7dc0018e502d', 19),
(25, '5e7da0d0b1ea3', '5e7dc001a92b4', 'The Computer comprises of all but one of the following components ', 'Central Processing Unit ', 'Engine Room', 'Output devices ', 'Input devices', '5e7dc001acd4ca', '5e7dc001acd4cb', '5e7dc001acd4cc', '5e7dc001acd4cd', '5e7dc001acd4cb', 20),
(26, '5e7da0d0b1ea3', '5e7dc001c53ed', 'Library of Congress uses all letters of alphabets except one of the following groups ', 'I.O.U.X.Y ', 'I.O.W.X.Y', 'I.O. U.X.Y ', 'I.O.S.X.Y', '5e7dc001c984aa', '5e7dc001c984ab', '5e7dc001c984ac', '5e7dc001c984ad', '5e7dc001c984ab', 21),
(27, '5e7da0d0b1ea3', '5e7dc001e6347', 'Library of Congress call mark is mixed because it uses ', 'Letters of the alphabets ', 'figures ', 'Letters and Figures', 'None of the Above', '5e7dc001e9de0a', '5e7dc001e9de0b', '5e7dc001e9de0c', '5e7dc001e9de0d', '5e7dc001e9de0c', 22),
(28, '5e7da0d0b1ea3', '5e7dc0020c4f5', 'Intellectual works by Nigerians or about Nigeria are collectively known as ', 'Nigerian Publications ', 'Lagosiana', 'Nigeriana', 'Special Document', '5e7dc00210951a', '5e7dc00210951b', '5e7dc00210951c', '5e7dc00210951d', '5e7dc00210951c', 23),
(29, '5e7da0d0b1ea3', '5e7dc00224b97', '..........provides current information on all events and activities that happened in Nigeria ', 'Nigeria Year Book', 'The world of learning ', 'Annual register for world events ', 'World Almanae and Book of Facts', '5e7dc00228ff3a', '5e7dc00228ff3b', '5e7dc00228ff3c', '5e7dc00228ff3d', '5e7dc00228ff3a', 24),
(30, '5e7da0d0b1ea3', '5e7dc0023ef84', 'One of the following organizations provided funds for the establishment of the first public library in Lagos ', 'Ford foundation ', 'Phelps Stoke foundation ', 'Carnegie Foundation', 'Federal Government of Nigeria', '5e7dc002433e1a', '5e7dc002433e1b', '5e7dc002433e1c', '5e7dc002433e1d', '5e7dc002433e1c', 25),
(31, '5e7da0d0b1ea3', '5e7dc00259d36', 'A linked set of computer systems capable of sharing computer power and resources is called', 'Wide Area Network', 'Local Area Network ', 'Internet', 'Network', '5e7dc0025d7cea', '5e7dc0025d7ceb', '5e7dc0025d7cec', '5e7dc0025d7ced', '5e7dc0025d7ced', 26),
(32, '5e7da0d0b1ea3', '5e7dc00275e70', 'Current awareness may be defined as ', 'Knowledge of Recent Developments', 'Circulation control ', 'Machine readable catalogue ', 'None of the Above', '5e7dc0027a2cca', '5e7dc0027a2ccb', '5e7dc0027a2ccc', '5e7dc0027a2ccd', '5e7dc0027a2cca', 27),
(33, '5e7da0d0b1ea3', '5e7dc0028e511', 'Copying is subject to the restrictions imposed by ', 'Decree 50 of 1992 ', 'Miscellaneous offences decree ', 'Copyright Law', 'Laws of Federal Republic of Nigeria', '5e7dc0029296ea', '5e7dc0029296eb', '5e7dc0029296ec', '5e7dc0029296ed', '5e7dc0029296ec', 28),
(34, '5e7da0d0b1ea3', '5e7dc002a92c3', 'Which is the correct spelling for a residence ', 'Acomodation ', 'Accommodation', 'Accomodation ', 'Acommodation', '5e7dc002b5614a', '5e7dc002b5614b', '5e7dc002b5614c', '5e7dc002b5614d', '5e7dc002b5614b', 29),
(35, '5e7da0d0b1ea3', '5e7dc002cb5a5', 'Library collections are put in various classes by', 'Acquisition Section ', 'Serials Section ', 'Circulation Section ', 'Cataloguing and Classification Section', '5e7dc002cfa01a', '5e7dc002cfa01b', '5e7dc002cfa01c', '5e7dc002cfa01d', '5e7dc002cfa01d', 30),
(36, '5e7dc3af0cf3e', '5e7dd005e9792', 'One of the following statements is wrong about reference materials ', 'To be read from cover to cover ', 'To be consulted on spot for items of information ', 'Not to be read from cover to cover', 'They are on closed access', '5e7dd0060a15fa', '5e7dd0060a15fb', '5e7dd0060a15fc', '5e7dd0060a15fd', '5e7dd0060a15fa', 1),
(37, '5e7dc3af0cf3e', '5e7dd006208c4', 'One of the following would provide detailed information on a person ', 'Biographies', 'Bibliographies ', 'Handbook ', 'Bibliography of Bibliographies', '5e7dd00624b2da', '5e7dd00624b2db', '5e7dd00624b2dc', '5e7dd00624b2dd', '5e7dd00624b2da', 2),
(38, '5e7dc3af0cf3e', '5e7dd0063f113', 'Conference proceedings can be defined as ', 'publications published from a conference ', 'Publications read at a conference ', 'Publications presented at a conference', 'Publications of reports originally read at a conference', '5e7dd0064337ca', '5e7dd0064337cb', '5e7dd0064337cc', '5e7dd0064337cd', '5e7dd0064337cd', 3),
(39, '5e7dc3af0cf3e', '5e7dd006577b9', 'The section that is responsible for making book collections physically accessible to users through open shelves is known as ', 'Collection Development section ', 'Serials section ', 'Librarianâ€™s office ', 'Circulation Section', '5e7dd0066bbf6a', '5e7dd0066bbf6b', '5e7dd0066bbf6c', '5e7dd0066bbf6d', '5e7dd0066bbf6d', 4),
(40, '5e7dc3af0cf3e', '5e7dd0069252f', 'One of the following material can provide you quick information on data, procedures and statistics ', 'Indexes', 'Abstracts', 'Handbook', 'Directory', '5e7dd0069d111a', '5e7dd0069d111b', '5e7dd0069d111c', '5e7dd0069d111d', '5e7dd0069d111a', 5),
(41, '5e7dc3af0cf3e', '5e7dd006c55a3', 'Which of the following is the appropriate procedure to locate a library book ? ', 'Title, Author, Classified and Subject', 'Classified, Subject, Title and Author', 'Author, Title, Subject and Classified', 'Subject, Title, Classified and Author', '5e7dd006d5b5fa', '5e7dd006d5b5fb', '5e7dd006d5b5fc', '5e7dd006d5b5fd', '5e7dd006d5b5fb', 6),
(42, '5e7dc3af0cf3e', '5e7dd006ee204', 'A typical University Library has all but one of the following departments ', 'Technical Section ', 'Readers Service Section ', 'Registry', 'Collection Section', '5e7dd006f246da', '5e7dd006f246db', '5e7dd006f246dc', '5e7dd006f246dd', '5e7dd006f246dc', 7),
(43, '5e7dc3af0cf3e', '5e7dd0071266a', '....... and â€¦. are classification scheme for law and medicine ', 'Library of Congress and Moys ', 'Dewey and Moys ', 'Colon and Birds ', 'Moys and National Library of Medicine', '5e7dd00716cbba', '5e7dd00716cbbb', '5e7dd00716cbbc', '5e7dd00716cbbd', '5e7dd00716cbbd', 8),
(44, '5e7dc3af0cf3e', '5e7dd0072cc50', 'Funding for establishment and maintenance of public libraries in Nigeria come mainly from ', 'International Organizations ', 'Religious Bodies ', 'Government', 'Philanthropies', '5e7dd00732dfaa', '5e7dd00732dfab', '5e7dd00732dfac', '5e7dd00732dfad', '5e7dd00732dfac', 9),
(45, '5e7dc3af0cf3e', '5e7dd0074955f', 'A library that deals specifically with a subject or group of related subject is known as ', 'Special Library', 'Classified Library ', 'National Library ', 'Computer Library', '5e7dd0074d7c8a', '5e7dd0074d7c8b', '5e7dd0074d7c8c', '5e7dd0074d7c8d', '5e7dd0074d7c8a', 10),
(46, '5e7dc3af0cf3e', '5e7dd007865fd', 'A literary work containing information on all branches of knowledge is ', 'An Encyclopedia', 'A dictionary ', 'A thesaurus ', 'Guinness Book of Records', '5e7dd0078a47ea', '5e7dd0078a47eb', '5e7dd0078a47ec', '5e7dd0078a47ed', '5e7dd0078a47ea', 11),
(47, '5e7dc3af0cf3e', '5e7dd007a0be3', 'Libraries were developed because of mans need to ', 'develop the book trade ', 'preserve records', 'invent the typing machine ', 'standardize reading', '5e7dd007a4e4ca', '5e7dd007a4e4cb', '5e7dd007a4e4cc', '5e7dd007a4e4cd', '5e7dd007a4e4cb', 12),
(48, '5e7dc3af0cf3e', '5e7dd007b9289', 'The invention of..........brought about information explosion ', 'typing machine ', 'Binding Machine ', 'Computing Machine ', 'Printing machine', '5e7dd007bd4f2a', '5e7dd007bd4f2b', '5e7dd007bd4f2c', '5e7dd007bd4f2d', '5e7dd007bd4f2d', 13),
(49, '5e7dc3af0cf3e', '5e7dd007d5acd', '..............contributed to the development of writing and library by developing an alphabet ', 'Summerians', 'Egyptians', 'phoenicians', 'Greeks', '5e7dd007d9d36a', '5e7dd007d9d36b', '5e7dd007d9d36c', '5e7dd007d9d36d', '5e7dd007d9d36d', 14),
(50, '5e7dc3af0cf3e', '5e7dd007ee173', 'The â€¦. Period was a time of knowledge re-awakening in Europe when libraries became more important ', 'Renaissance ', 'Medieval ', 'Victorian', 'Ancient', '5e7dd007f23dca', '5e7dd007f23dcb', '5e7dd007f23dcc', '5e7dd007f23dcd', '5e7dd007f23dca', 15),
(51, '5e7dc3af0cf3e', '5e7dd008125d9', 'The Lagos Library was opened to the public in ', '1929 ', '1932', '1943 ', '1934', '5e7dd00816842a', '5e7dd00816842b', '5e7dd00816842c', '5e7dd00816842d', '5e7dd00816842b', 16),
(52, '5e7dc3af0cf3e', '5e7dd0082ac7e', 'Public libraries are funded by ', 'NGO ', 'Human Right Organizations ', 'Tax Payers', 'NNPC', '5e7dd00830e28a', '5e7dd00830e28b', '5e7dd00830e28c', '5e7dd00830e28d', '5e7dd00830e28c', 17),
(53, '5e7dc3af0cf3e', '5e7dd00847d5d', 'Binding of damaged books takes place in.......section ', 'Administrative ', 'Collection Development ', 'Technical Services', 'Readersâ€™ services', '5e7dd0084d736a', '5e7dd0084d736b', '5e7dd0084d736c', '5e7dd0084d736d', '5e7dd0084d736c', 18),
(54, '5e7dc3af0cf3e', '5e7dd0087a219', 'The full meaning of OPAC is ', 'Online People Access Catalogue ', 'Online Public Access Catalogue ', 'Online People Access Caption ', 'Online Public Access Caption', '5e7dd0087e482a', '5e7dd0087e482b', '5e7dd0087e482c', '5e7dd0087e482d', '5e7dd0087e482b', 19),
(55, '5e7dc3af0cf3e', '5e7dd00898a68', 'These materials cannot be borrowed out of the library ', 'Reserved and Reference', 'Reserved and Books on open shelves ', 'Journals and Books on open shelves ', 'Books on open shelves and magazines', '5e7dd0089ec12a', '5e7dd0089ec12b', '5e7dd0089ec12c', '5e7dd0089ec12d', '5e7dd0089ec12a', 20),
(56, '5e7dc3af0cf3e', '5e7dd008b72b7', 'This library material will give more information about the usage of a word ', 'Encyclopedia ', 'Dictionary', 'Journals', 'Reserved Book', '5e7dd008c554ba', '5e7dd008c554bb', '5e7dd008c554bc', '5e7dd008c554bd', '5e7dd008c554bb', 21),
(57, '5e7dc3af0cf3e', '5e7dd008d9b14', 'The place where bags are kept in the library is known as ', 'load room ', 'Cloak room', 'bags room ', 'users room', '5e7dd008ddd7da', '5e7dd008ddd7db', '5e7dd008ddd7dc', '5e7dd008ddd7dd', '5e7dd008ddd7db', 22),
(58, '5e7dc3af0cf3e', '5e7dd008f21ba', 'The library staff that answers your queries in the library is ', 'Information librarian ', 'Information scientist ', 'Reference Librarian', 'Acquisition librarian', '5e7dd009021e3a', '5e7dd009021e3b', '5e7dd009021e3c', '5e7dd009021e3d', '5e7dd009021e3c', 23),
(59, '5e7dc3af0cf3e', '5e7dd00922972', 'This is a library software ', 'Alice on Windows ', 'Alice in Windows ', 'Alice for Windows ', 'Alice of Windows ', '5e7dd0092546ba', '5e7dd0092546bb', '5e7dd0092546bc', '5e7dd0092546bd', '5e7dd0092546bc', 24),
(60, '5e7dc3af0cf3e', '5e7dd0093b018', 'One of the services the library renders to its users is ', 'helping them do free photocopying ', 'Training them on utilization of resources', 'arranging excursion visits for them ', 'inflicting injuries on them', '5e7dd0093f281a', '5e7dd0093f281b', '5e7dd0093f281c', '5e7dd0093f281d', '5e7dd0093f281b', 25),
(61, '5e7dc3af0cf3e', '5e7dd0096bd63', 'A peculiar characteristics of reference materials is that they ', 'can be borrowed from the library ', 'are not usually used by readers ', 'are not to be read from cover to cover', 'are mixed with other books on the open shelves', '5e7dd00974235a', '5e7dd00974235b', '5e7dd00974235c', '5e7dd00974235d', '5e7dd00974235c', 26),
(62, '5e7dc3af0cf3e', '5e7dd0098e81b', 'The public library is referred to as Peoples University because it caters for ', 'University Community ', 'Specialized group of people ', 'All groups of users', 'children only', '5e7dd009949c5a', '5e7dd009949c5b', '5e7dd009949c5c', '5e7dd009949c5d', '5e7dd009949c5c', 27),
(63, '5e7dc3af0cf3e', '5e7dd009ab12a', 'Charging in librarianship refers to the process of ', 'paying for library materials', 'returning borrowed books ', 'paying for damaged library materials ', 'borrowing library materials', '5e7dd009aefaba', '5e7dd009aefabb', '5e7dd009aefabc', '5e7dd009aefabd', '5e7dd009aefabd', 28),
(64, '5e7dc3af0cf3e', '5e7dd009c37d0', 'Production of works under fair use must be without ', 'educational advantage', 'undue advantage ', 'commercial advantage', 'any advantage', '5e7dd009c7651a', '5e7dd009c7651b', '5e7dd009c7651c', '5e7dd009c7651d', '5e7dd009c7651c', 29),
(65, '5e7dc3af0cf3e', '5e7dd009f02b2', 'The use of â€¦. Has made it possible to store and retrieve information in different forms in the library ', 'printing press ', 'telephone', 'wide area network', 'information,communication and technology', '5e7dd00a002dba', '5e7dd00a002dbb', '5e7dd00a002dbc', '5e7dd00a002dbd', '5e7dd00a002dbd', 30),
(66, '5e7e0d13f2243', '5e7e1851e2b4f', 'The word library was derived from ', 'Liber', 'Libration', 'Liberty ', 'Literate', '5e7e18520ae36a', '5e7e18520ae36b', '5e7e18520ae36c', '5e7e18520ae36d', '5e7e18520ae36a', 1),
(67, '5e7e0d13f2243', '5e7e185234e20', 'The early monastic libraries consisted of â€¦â€¦ and secular writings', 'Political', 'Christian', 'social', 'Economic', '5e7e18523c352a', '5e7e18523c352b', '5e7e18523c352c', '5e7e18523c352d', '5e7e18523c352b', 2),
(68, '5e7e0d13f2243', '5e7e1852522e7', 'Academic libraries are established in secondary schools ', 'True', 'False', 'Dont know', 'None of the above', '5e7e185256550a', '5e7e185258490b', '5e7e185258490c', '5e7e185258490d', '5e7e185256550a', 3),
(69, '5e7e0d13f2243', '5e7e185272a76', 'Apart from Dewey Decimal and Library of Congress classification schemes, ..â€¦.. is another example of classification schemes ', 'National Library of Medicine', 'Lasu classification ', 'Law', 'John Harris', '5e7e185276cdfa', '5e7e185276cdfb', '5e7e185276cdfc', '5e7e185276cdfd', '5e7e185276cdfa', 4),
(70, '5e7e0d13f2243', '5e7e18528b11c', 'Resources that are consulted for specific kinds of information is called â€¦.. material ', 'Reference', 'Circulation', 'Reserved ', 'Reading', '5e7e18528f385a', '5e7e18528f385b', '5e7e18528f385c', '5e7e18528f385d', '5e7e18528f385a', 5),
(71, '5e7e0d13f2243', '5e7e1852a5638', 'An annual publication which provides up to date information in descriptive and statistical form is known as ', 'statistical book ', 'annual book ', 'Year book', 'national book', '5e7e1852a98a1a', '5e7e1852a98a1b', '5e7e1852a98a1c', '5e7e1852a98a1d', '5e7e1852a98a1c', 6),
(72, '5e7e0d13f2243', '5e7e1852c1903', 'Steps to good research includes ', 'choice of a researchable topic ', 'review of relevant works earlier carried out ', 'determining research limit ', 'All of the above', '5e7e1852c5f54a', '5e7e1852c5f54b', '5e7e1852c5f54c', '5e7e1852c5f54d', '5e7e1852c5f54d', 7),
(73, '5e7e0d13f2243', '5e7e1852f2e1e', 'A right enjoyed by an author even after his death is known as ', 'property right', 'writerâ€™s right ', 'copyright law ', 'authors right', '5e7e185302e47a', '5e7e185302e47b', '5e7e185302e47c', '5e7e185302e47d', '5e7e185302e47a', 8),
(74, '5e7e0d13f2243', '5e7e1853235d7', 'The use of scientific knowledge to solve practical problems is associated with...........research \r\n', 'Applied', 'Pure ', 'Scientific', 'Problematic', '5e7e18532f92aa', '5e7e18532f92ab', '5e7e18532f92ac', '5e7e18532f92ad', '5e7e18532f92aa', 9),
(75, '5e7e0d13f2243', '5e7e185345ca7', 'The constitution of Federal Republic of Nigeria gives recognition to copyright ', 'True', 'False ', 'doesnâ€™t know ', 'None of the above', '5e7e185349f10a', '5e7e185349f10b', '5e7e185349f10c', '5e7e185349f10d', '5e7e185349f10a', 10),
(76, '5e7e0d13f2243', '5e7e18535e34d', '.........allows fast transfer of data between computers and distribution of information \r\n', 'Computer systems ', 'cable ', 'Internet', 'Alice for Windows', '5e7e1853625b6a', '5e7e1853625b6b', '5e7e1853625b6c', '5e7e1853625b6d', '5e7e1853625b6c', 11),
(77, '5e7e0d13f2243', '5e7e185376ddb', '..........engines are used in locating information on the internet ', 'retrieval ', 'Search', 'motorized', 'fixed', '5e7e18537cb9ca', '5e7e18537cb9cb', '5e7e18537cb9cc', '5e7e18537cb9cd', '5e7e18537cb9cb', 12),
(78, '5e7e0d13f2243', '5e7e185393301', '..........Unit makes library materials accessible to users ', 'Acquisition', 'Reference ', 'Circulation', 'Serials', '5e7e18539756aa', '5e7e18539756ab', '5e7e18539756ac', '5e7e18539756ad', '5e7e18539756ac', 13),
(79, '5e7e0d13f2243', '5e7e1853adccf', 'A student who desires to go to another university library will collect a letter of............from the reference librarian ', 'identity ', 'admission ', 'Introduction', 'reading', '5e7e1853b1b50a', '5e7e1853b1b50b', '5e7e1853b1b50c', '5e7e1853b1b50d', '5e7e1853b1b50c', 14),
(80, '5e7e0d13f2243', '5e7e1853c62ab', '.......Classification scheme is used in Fatiu Akuesode library ', 'National Library of Medicine ', 'Library of Congress', 'Moys ', 'Fatiu', '5e7e1853ca12ba', '5e7e1853ca12bb', '5e7e1853ca12bc', '5e7e1853ca12bd', '5e7e1853ca12bb', 15),
(81, '5e7e0d13f2243', '5e7e1853de950', 'Which of these is a national depository in Nigeria ', 'British Council ', 'National Assembly ', 'National Library of Nigeria', 'University of Lagos library', '5e7e1853e2bb9a', '5e7e1853e2bb9b', '5e7e1853e2bb9c', '5e7e1853e2bb9d', '5e7e1853e2bb9c', 16),
(82, '5e7e0d13f2243', '5e7e185402db6', 'All but one of these were libraries in the medieval period ', 'Monastic ', 'Cathedral', 'University ', 'School', '5e7e185404526a', '5e7e185404526b', '5e7e185404526c', '5e7e185404526d', '5e7e185404526d', 17),
(83, '5e7e0d13f2243', '5e7e18541b391', 'Accession number is generated in which of the following department?', 'Collection', 'Technical', 'Readers Service ', 'Administrative', '5e7e18541f5faa', '5e7e18541f5fab', '5e7e18541f5fac', '5e7e18541f5fad', '5e7e18541f5faa', 18),
(84, '5e7e0d13f2243', '5e7e185433a37', 'A book can be located on shelf by ', 'Shelf number ', 'call mark', 'Reference number ', 'ISBN', '5e7e185437ca0a', '5e7e185437ca0b', '5e7e185437ca0c', '5e7e185437ca0d', '5e7e185437ca0b', 19),
(85, '5e7e0d13f2243', '5e7e18544e01d', 'â€¦.. and â€¦.. are the two levels of copyright infringement in Nigeria ', 'Legal, Illegal', ' Civil, Legal', 'Civil, Criminal', ' Lawful, Criminal', '5e7e185452286a', '5e7e185452286b', '5e7e185452286c', '5e7e185452286d', '5e7e185452286c', 20),
(86, 'educare5e7e6e81a8dc1', '5e7e786106289', 'Library collections can be generally categorized as â€¦.. and â€¦.. ', 'Books and Non Books', 'Big and Small ', 'Manual and Electronic ', 'Reading and Non Reading', '5e7e78611dd76a', '5e7e78611dd76b', '5e7e78611dd76c', '5e7e78611dd76d', '5e7e78611dd76a', 1),
(87, 'educare5e7e6e81a8dc1', '5e7e786152d2b', 'Systematic arrangement of documents in a sequence that will make sense to the users is known as ', 'Library', 'Classification', 'Computerization ', 'Careful Arrangement', '5e7e786156baca', '5e7e786156bacb', '5e7e786156bacc', '5e7e786156bacd', '5e7e786156bacb', 2),
(88, 'educare5e7e6e81a8dc1', '5e7e786181b36', 'In the LC and Moys, class K is used to process â€¦. Publications ', 'Law', 'Engineering ', 'Medicine ', 'History', '5e7e786185d9fa', '5e7e786185d9fb', '5e7e786185d9fc', '5e7e786185d9fd', '5e7e786185d9fa', 3),
(89, 'educare5e7e6e81a8dc1', '5e7e78619c11c', 'Combination of alphabets and number on the spine of library books is known as ', 'spine label ', 'Call Number', 'Book number ', 'Book guide', '5e7e7861a4206a', '5e7e7861a4206b', '5e7e7861a4206c', '5e7e7861a4206d', '5e7e7861a4206b', 4),
(90, 'educare5e7e6e81a8dc1', '5e7e7861c8bfe', 'Dewey Decimal classification scheme took its name after ', 'John Dewey ', 'Allan Dewey ', 'Churchill Dewey ', 'Melvin Dewey', '5e7e7861cab3fa', '5e7e7861cab3fb', '5e7e7861cab3fc', '5e7e7861cab3fd', '5e7e7861cab3fd', 5),
(91, 'educare5e7e6e81a8dc1', '5e7e7861db0fb', 'An account of a personâ€™s life written by another person is called', 'Gazette', 'Biography', 'Directory', 'CV', '5e7e7861dd423a', '5e7e7861dd423b', '5e7e7861dd423c', '5e7e7861dd423d', '5e7e7861dd423b', 6),
(92, 'educare5e7e6e81a8dc1', '5e7e7861e938e', 'â€¦.. is a publication that offers geographical information about the world, a continent, local government etc', 'Atlas', 'Gazette ', 'Yearbook', 'Reference', '5e7e7861eb6b6a', '5e7e7861eb6b6b', '5e7e7861eb6b6c', '5e7e7861eb6b6d', '5e7e7861eb6b6a', 7),
(93, 'educare5e7e6e81a8dc1', '5e7e78620570a', 'University Librarian renders services such as ', 'lending services ', 'Reference services ', 'bibliography services ', 'All of the above', '5e7e78620b8b3a', '5e7e78620b8b3b', '5e7e78620b8b3c', '5e7e78620b8b3d', '5e7e78620b8b3d', 8),
(94, 'educare5e7e6e81a8dc1', '5e7e786222bd1', 'Reference materials are usually located in a separate area in the library ', 'Yes', 'No', 'none of the above', 'Don\'t know', '5e7e786225e99a', '5e7e786225e99b', '5e7e786225e99c', '5e7e786225e99d', '5e7e786225e99a', 9),
(95, 'educare5e7e6e81a8dc1', '5e7e786234515', '........Reviews exhaustively the information on a singular topic ', 'Monograph', 'Treaties ', 'Textbook', 'Dictionary', '5e7e78623877ea', '5e7e78623877eb', '5e7e78623877ec', '5e7e78623877ed', '5e7e78623877ea', 10),
(96, 'educare5e7e6e81a8dc1', '5e7e786256fcd', 'One of the requirements for the award of academic degrees is that you must carry out research ', 'No', 'Yes', 'Fallacy', 'Don\'t know', '5e7e78625ae4ea', '5e7e78625ae4eb', '5e7e78625ae4ec', '5e7e78625ae4ed', '5e7e78625ae4eb', 11),
(97, 'educare5e7e6e81a8dc1', '5e7e78626d34a', 'Applied research is useful in such areas as â€¦.. ', 'Medicine ', 'Education', 'Engineering ', 'All of the above', '5e7e7862715b3a', '5e7e7862715b3b', '5e7e7862715b3c', '5e7e7862715b3d', '5e7e7862715b3d', 12),
(98, 'educare5e7e6e81a8dc1', '5e7e786287930', 'The most viable source of material needed for a good research is ', 'Textbook ', 'Classroom', 'Library', 'Newspaper', '5e7e786289c59a', '5e7e786289c59b', '5e7e786289c59c', '5e7e786289c59d', '5e7e786289c59c', 13),
(99, 'educare5e7e6e81a8dc1', '5e7e78629a215', 'Types of research includes the following except ', 'Pure', 'Practical ', 'Developmental ', 'Modern', '5e7e78629e096a', '5e7e78629e096b', '5e7e78629e096c', '5e7e78629e096d', '5e7e78629e096d', 14),
(100, 'educare5e7e6e81a8dc1', '5e7e7862b4be3', 'One of the following library was not available during the middle age ', 'Cathedral ', 'Monastic ', 'Virtual', 'University', '5e7e7862b8a64a', '5e7e7862b8a64b', '5e7e7862b8a64c', '5e7e7862b8a64d', '5e7e7862b8a64c', 15),
(101, 'educare5e7e6e81a8dc1', '5e7e7862c8c38', 'Copyright is important to researchers and libraries because it ', 'checks authorized copying ', 'Allows free copying', 'facilitates easy sales of creative works ', 'none of the above', '5e7e7862caf60a', '5e7e7862caf60b', '5e7e7862caf60c', '5e7e7862caf60d', '5e7e7862caf60a', 16),
(102, 'educare5e7e6e81a8dc1', '5e7e7862d91f3', 'A library that requires payment before users are allowed to consult materials is known as ', 'school library ', 'money library ', 'Subscription Library', 'national library', '5e7e7862dd45ca', '5e7e7862dd45cb', '5e7e7862dd45cc', '5e7e7862dd45cd', '5e7e7862dd45cc', 17),
(103, 'educare5e7e6e81a8dc1', '5e7e7862eb6f0', 'In Nigeria the development of University libraries began in', '1960', '1932', '1970', '1948', '5e7e7862ed630a', '5e7e7862ed630b', '5e7e7862ed630c', '5e7e7862ed630d', '5e7e7862ed630d', 18),
(104, 'educare5e7e6e81a8dc1', '5e7e786305743', '.........library makes it possible for people to access vast collection of information over the internet \r\n', 'Virtual', 'Access', 'Special', 'Subscription', '5e7e786307a6ca', '5e7e786307a6cb', '5e7e786307a6cc', '5e7e786307a6cd', '5e7e786307a6ca', 19),
(105, 'educare5e7e6e81a8dc1', '5e7e786315cff', 'The section of library responsible for processing periodicals is ', 'Kardex', 'Readers Service ', 'Serials Department', 'Cataloguing Section', '5e7e786317c3fa', '5e7e786317c3fb', '5e7e786317c3fc', '5e7e786317c3fd', '5e7e786317c3fc', 20),
(106, 'educare5e7e6e81a8dc1', '5e7e7863281fb', 'The process of acquiring books in the library is the responsibility of â€¦. Department', 'academic', 'management information systems ', 'circulation', 'collection', '5e7e78632a13ca', '5e7e78632a13cb', '5e7e78632a13cc', '5e7e78632a13cd', '5e7e78632a13cd', 21),
(107, 'educare5e7e6e81a8dc1', '5e7e7863387b7', 'Repair of worn out library books and journals are carried out at the ', 'Bindery', 'audiovisual', 'circulation', 'e-library', '5e7e78633a6f7a', '5e7e78633a6f7b', '5e7e78633a6f7c', '5e7e78633a6f7d', '5e7e78633a6f7a', 22),
(108, 'educare5e7e6e81a8dc1', '5e7e78634ef1c', 'Copyright stems from ', 'Intellectual property', 'Intellectual Personal ', 'International', 'Publications', '5e7e786352d9da', '5e7e786352d9db', '5e7e786352d9dc', '5e7e786352d9dd', '5e7e786352d9da', 23),
(109, 'educare5e7e6e81a8dc1', '5e7e786369502', '..â€¦. Is the organization responsible for all matters relating to copyright ', 'National Copyright Council ', 'Nigerian Copyright Council', 'Nigerian Copyright Commission', 'Nigerian Council Commission', '5e7e78636b443a', '5e7e78636b443b', '5e7e78636b443c', '5e7e78636b443d', '5e7e78636b443c', 24),
(110, 'educare5e7e6e81a8dc1', '5e7e7863796d6', 'The concept of fair use in copyright matters is preserved for â€¦. And â€¦. Libraries ', 'Research,Academics', 'National,school', 'Public,School', 'All of the above', '5e7e786389c92a', '5e7e786389c92b', '5e7e786389c92c', '5e7e786389c92d', '5e7e786389c92a', 25),
(111, 'educare5e7e6e81a8dc1', '5e7e78639e0cf', 'www means ', 'wide world web ', 'web wide world ', 'wide web world', 'world wide web', '5e7e7863a03f7a', '5e7e7863a03f7b', '5e7e7863a03f7c', '5e7e7863a03f7d', '5e7e7863a03f7d', 26),
(112, 'educare5e7e6e81a8dc1', '5e7e7863bec46', 'the computers on the internet communicate with one another by', 'signs', 'protocols', 'sound', 'pictures', '5e7e7863c4df0a', '5e7e7863c4df0b', '5e7e7863c4df0c', '5e7e7863c4df0d', '5e7e7863c4df0b', 27),
(113, 'educare5e7e6e81a8dc1', '5e7e7863d1143', 'NPE means ', 'National Providence Environment ', 'National Poverty Eradication ', 'National policy on Education', 'Nigerian Population Education', '5e7e7863d3083a', '5e7e7863d3083b', '5e7e7863d3083c', '5e7e7863d3083d', '5e7e7863d3083c', 28),
(114, 'educare5e7e6e81a8dc1', '5e7e7863e1316', 'Call mark brings together ', 'Books by same author ', 'Books by same title ', 'Books of the same edition ', 'Books by same subject', '5e7e7863e363fa', '5e7e7863e363fb', '5e7e7863e363fc', '5e7e7863e363fd', '5e7e7863e363fd', 29),
(115, 'educare5e7e6e81a8dc1', '5e7e7863ef992', 'Records of holdings in the library can be accessed electronically throughâ€¦.. ', 'Kardex', 'Catalogue Card ', 'OPAC', 'UNIX', '5e7e7863f18d2a', '5e7e7863f18d2b', '5e7e7863f18d2c', '5e7e7863f18d2d', '5e7e7863f18d2c', 30),
(116, 'educare5e7fc627b7715', '5e7fd9a48de5e', 'Which of the following diseases is communicable', 'Rickets', 'Amoebiasis', 'Diabetes', 'Cancer', '5e7fd9a492f2da', '5e7fd9a492f35b', '5e7fd9a492f37c', '5e7fd9a492f39d', '5e7fd9a492f35b', 1),
(117, 'educare5e7fc627b7715', '5e7fd9a496970', 'AIDS virus spreads in the body through', 'Suppressor T-cells', 'Carrier T-cells', 'Helper T-cells', 'Killer T-cells', '5e7fd9a4973cba', '5e7fd9a4973cfb', '5e7fd9a4973d1c', '5e7fd9a4973d3d', '5e7fd9a4973d1c', 2),
(118, 'educare5e7fc627b7715', '5e7fd9a499ae3', 'The cells which act as parasites in the body', 'Schwann cells', 'Hepatocytes', 'KuMycolnharelip', 'Cancer cells', '5e7fd9a499f01a', '5e7fd9a499f05b', '5e7fd9a499f07c', '5e7fd9a499f09d', '5e7fd9a499f09d', 3),
(119, 'educare5e7fc627b7715', '5e7fd9a49cf3b', 'TAB vaccines is useful against', 'Polio', 'Diptheria', 'Pertussis', 'Typhoid', '5e7fd9a49d46ca', '5e7fd9a49d471b', '5e7fd9a49d473c', '5e7fd9a49d475d', '5e7fd9a49d475d', 4),
(120, 'educare5e7fc627b7715', '5e7fd9a4a03ee', 'Which of the following specimen is tested the most for the detection of carrier of typhoid', 'Urine', 'Blood', 'Faeces', 'Sputum', '5e7fd9a4a0efda', '5e7fd9a4a0f02b', '5e7fd9a4a0f04c', '5e7fd9a4a0f06d', '5e7fd9a4a0f04c', 5),
(121, 'educare5e7fc627b7715', '5e7fd9a4a3b7b', 'The pathogen of the typhoid is directly transmitted through', 'Urine', 'Water', 'Blood', 'Cerebrospinal fluid', '5e7fd9a4a4b80a', '5e7fd9a4a4b86b', '5e7fd9a4a4b88c', '5e7fd9a4a4b8ad', '5e7fd9a4a4b86b', 6),
(122, 'educare5e7fc627b7715', '5e7fd9a4a7ce3', 'Scurvy disease is caused by the deficiency of vitamin..........', 'C', 'D', 'K', 'B complex', '5e7fd9a4a876aa', '5e7fd9a4a876fb', '5e7fd9a4a8770c', '5e7fd9a4a8772d', '5e7fd9a4a876aa', 7),
(123, 'educare5e7fc627b7715', '5e7fd9a4ac9f8', 'Select the vital disease', 'Diabetes', 'Tetanus', 'Leprosy', 'Poliomyelitis', '5e7fd9a4ad376a', '5e7fd9a4ad37ab', '5e7fd9a4ad37cc', '5e7fd9a4ad37ed', '5e7fd9a4ad37ed', 8),
(124, 'educare5e7fc627b7715', '5e7fd9a4afa1a', 'A sexually transmitted bacterial disease is', 'AIDS', 'Syphilis', 'Herpes', 'Hepatitis', '5e7fd9a4afe36a', '5e7fd9a4afe3ab', '5e7fd9a4afe3cc', '5e7fd9a4afe3ed', '5e7fd9a4afe3ab', 9),
(125, 'educare5e7fc627b7715', '5e7fd9a4b2cb8', 'AIDS is due to..........', 'Reduction in number of helper T-cells', 'Reduction in number of killer T-cells', 'Autoimmunity', 'Non-production of interferons', '5e7fd9a4b3118a', '5e7fd9a4b311cb', '5e7fd9a4b311ec', '5e7fd9a4b3120d', '5e7fd9a4b3118a', 10),
(126, 'educare5e7fc627b7715', '5e7fd9a4b59da', 'Sarcoma is Cancer of..........', 'Bones', 'Adipose tissue', 'Connective tissue and muscular tissue', 'All of the above', '5e7fd9a4b63fda', '5e7fd9a4b6400b', '5e7fd9a4b6403c', '5e7fd9a4b6404d', '5e7fd9a4b6404d', 11),
(127, 'educare5e7fc627b7715', '5e7fd9a4b8b9c', 'Most of the tumors are', 'Malignant', 'Benign', 'Related to carcinoma', 'Sample boils', '5e7fd9a4b9595a', '5e7fd9a4b959ab', '5e7fd9a4b959cc', '5e7fd9a4b959ed', '5e7fd9a4b959ab', 12),
(128, 'educare5e7fc627b7715', '5e7fd9a4bbc32', 'Inactive Cancer gene is called', 'Transposon', 'Proto-oncogene', 'Tumour promoter gene', 'Tumour suppressor gene', '5e7fd9a4bc062a', '5e7fd9a4bc066b', '5e7fd9a4bc069c', '5e7fd9a4bc06bd', '5e7fd9a4bc066b', 13),
(129, 'educare5e7fc627b7715', '5e7fd9a4be7b6', 'ELISA- atest is helpful for the detection of which of the following', 'Leprosy', 'Cancer', 'AIDS', 'Malaria', '5e7fd9a4c15d7a', '5e7fd9a4c15ddb', '5e7fd9a4c15dfc', '5e7fd9a4c15e1d', '5e7fd9a4c15dfc', 14),
(130, 'educare5e7fc627b7715', '5e7fd9a4c8cd6', 'The symptoms of typhoid called intestinal hemorrhage occurs in........ Week of infection', '1st', '2nd', '3rd', '4th', '5e7fd9a4c92e4a', '5e7fd9a4c92ebb', '5e7fd9a4c92eec', '5e7fd9a4c92f1d', '5e7fd9a4c92eec', 15),
(131, 'educare5e7fc627b7715', '5e7fd9a4cc4a8', 'Swine flu is caused by', 'HIV', 'HINI', 'Herpes Zostr', 'Mumps virus', '5e7fd9a4cceaaa', '5e7fd9a4cceafb', '5e7fd9a4cceb1c', '5e7fd9a4cceb3d', '5e7fd9a4cceafb', 16),
(132, 'educare5e7fc627b7715', '5e7fd9a4cfa09', 'Infection of Ascaris occurs due to........', 'Contaminated food and water', 'Mosquito bite', 'Tsetse fly', 'Sand', '5e7fd9a4d0410a', '5e7fd9a4d0415b', '5e7fd9a4d0417c', '5e7fd9a4d0418d', '5e7fd9a4d0410a', 17),
(133, 'educare5e7fc627b7715', '5e7fd9a4d1f73', 'Excessive bleeding from an injury is due to deficiency of........', 'Vitamin A', 'Vitamin B', 'Vitamin K', 'Vitamin E', '5e7fd9a4d297aa', '5e7fd9a4d297fb', '5e7fd9a4d2981c', '5e7fd9a4d2983d', '5e7fd9a4d2981c', 18),
(134, 'educare5e7fc627b7715', '5e7fd9a4d4902', 'Typhoid is caused by a species of', 'Streptococcus', 'Salmonella', 'Staphylococcus', 'Mycobacterium', '5e7fd9a4d5355a', '5e7fd9a4d535ab', '5e7fd9a4d535cc', '5e7fd9a4d535ed', '5e7fd9a4d535ab', 19),
(135, 'educare5e7fc627b7715', '5e7fd9a4d7957', 'Immune deficiency syndrome could develop due to (AIIMS)', 'Defective liver', 'Defective thymus', 'AIDS virus', 'Weak immune system', '5e7fd9a4d839ba', '5e7fd9a4d83a0b', '5e7fd9a4d83a2c', '5e7fd9a4d83a4d', '5e7fd9a4d83a2c', 20),
(136, 'educare5e7fc627b7715', '5e7fd9a4dbdcb', 'Tumour enclosed in a capsule is', 'Malignant', 'Benign', 'Metastasis', 'Basophilis', '5e7fd9a4dc907a', '5e7fd9a4dc90fb', '5e7fd9a4dc911c', '5e7fd9a4dc914d', '5e7fd9a4dc90fb', 21),
(137, 'educare5e7fc627b7715', '5e7fd9a4df948', 'AIDS causing HIV principally infects', 'All lymphocytes', 'Activator B-cells', 'T4 lymphocytes', 'Cytotoxic T-cells', '5e7fd9a4dfd73a', '5e7fd9a4dfd78b', '5e7fd9a4dfd7ac', '5e7fd9a4dfd7cd', '5e7fd9a4dfd7ac', 22),
(138, 'educare5e7fc627b7715', '5e7fd9a4e2298', 'After entering a T-cell, HIV first forms', 'MRNA', 'ssDNA', 'dsDNA', 'dsRNA', '5e7fd9a4e2cf1a', '5e7fd9a4e2cf7b', '5e7fd9a4e2cf8c', '5e7fd9a4e2cfad', '5e7fd9a4e2cf7b', 23),
(139, 'educare5e7fc627b7715', '5e7fd9a4e4d0c', 'Which of the following is a structural change in Cancer cells', 'Apoplasia', 'Metastasis', 'Both (a) and (b)', 'Neither (a) nor (b)', '5e7fd9a4e5682a', '5e7fd9a4e5686b', '5e7fd9a4e5688c', '5e7fd9a4e568ad', '5e7fd9a4e5682a', 24),
(140, 'educare5e7fc627b7715', '5e7fd9a4e7c66', 'Iodine deficiency causes ......disease', 'Goitre', 'Kwashiorkor', 'Scurvy', 'Anaemia', '5e7fd9a4e80daa', '5e7fd9a4e80dfb', '5e7fd9a4e80e1c', '5e7fd9a4e80e3d', '5e7fd9a4e80daa', 25),
(141, 'educare5e7fc627b7715', '5e7fd9a4ea6b3', 'The branch which deals with the study of defence mechanism against diseases is called......', 'Parasitology', 'Epidemiology', 'Immunology', 'Physiology', '5e7fd9a4eafb9a', '5e7fd9a4eafbfb', '5e7fd9a4eafc1c', '5e7fd9a4eafc4d', '5e7fd9a4eafc1c', 26),
(142, 'educare5e7fc627b7715', '5e7fd9a4ed7c9', 'Disease existing at or before birth is', 'Congenital', 'Communicable', 'Non communicable', 'None of the above', '5e7fd9a4edd12a', '5e7fd9a4edd18b', '5e7fd9a4edd1bc', '5e7fd9a4edd1dd', '5e7fd9a4edd12a', 27),
(143, 'educare5e7fc627b7715', '5e7fd9a4f1c80', 'Osteomalacia is due to deficiency of', 'Vitamin D', 'Vitamin K', 'Vitamin A', 'Vitamin E', '5e7fd9a4f25c9a', '5e7fd9a4f25cfb', '5e7fd9a4f25d2c', '5e7fd9a4f25d4d', '5e7fd9a4f25c9a', 28),
(144, 'educare5e7fc627b7715', '5e7fd9a5008d7', 'A bacterial disease is', 'Leprosy', 'Polio', 'Chicken pox', 'Influenza', '5e7fd9a500df4a', '5e7fd9a500dfab', '5e7fd9a500dfcc', '5e7fd9a500dfed', '5e7fd9a500df4a', 29),
(145, 'educare5e7fc627b7715', '5e7fd9a502f3c', 'AIDS is caused by', 'Fungus', 'Virus', 'Bacterium', 'Helminth', '5e7fd9a503380a', '5e7fd9a503384b', '5e7fd9a503387c', '5e7fd9a503389d', '5e7fd9a503384b', 30),
(146, 'educare5e7fc627b7715', '5e7fd9a5056d4', 'Carcinoma is Cancer of', 'Epithelial cells', 'Connective tissue cells', 'Bone cells', 'Blood cells', '5e7fd9a505a70a', '5e7fd9a505a76b', '5e7fd9a505a78c', '5e7fd9a505a7ad', '5e7fd9a505a70a', 31),
(147, 'educare5e7fc627b7715', '5e7fd9a507737', 'Benign tumour is the one which', 'Shows metastasis', 'Differentiated and capsulated', 'Undifferentiated and non-capsulated', 'Differentiated and non-capsulated', '5e7fd9a507faca', '5e7fd9a507fb2b', '5e7fd9a507fb4c', '5e7fd9a507fb6d', '5e7fd9a507fb2b', 32),
(148, 'educare5e7fc627b7715', '5e7fd9a50a29f', 'Most common type of Salmonella found in India is.........', 'S.arizonae', 'S.enteritidis', 'S.typhi', 'S.typhimurium', '5e7fd9a50b720a', '5e7fd9a50b72cb', '5e7fd9a50b72ec', '5e7fd9a50b730d', '5e7fd9a50b72ec', 33),
(149, 'educare5e7fc627b7715', '5e7fd9a50d9c3', 'Western blot test is used for confirmation of', 'Typhoid', 'HIV', 'Cancer', 'Malaria', '5e7fd9a50ddc6a', '5e7fd9a50ddcab', '5e7fd9a50ddcdc', '5e7fd9a50ddced', '5e7fd9a50ddcab', 34),
(150, 'educare5e7fc627b7715', '5e7fd9a5103a7', 'Leprosy is...........', 'Non-contagious', 'Contagious', 'Allergic', 'Hormonal', '5e7fd9a513279a', '5e7fd9a51327fb', '5e7fd9a513281c', '5e7fd9a513283d', '5e7fd9a51327fb', 35),
(151, 'educare5e7fc627b7715', '5e7fd9a51604e', 'Frost bite is caused by', 'Chemical agent', 'Biological agent', 'Nutrient', 'Physical agent', '5e7fd9a5168fba', '5e7fd9a5168ffb', '5e7fd9a516901c', '5e7fd9a516903d', '5e7fd9a516903d', 36),
(152, 'educare5e7fc627b7715', '5e7fd9a5185f9', 'A disease transferred from mother to child through placenta is', 'German measles', 'Syphilis', 'AIDS', 'All of the above', '5e7fd9a518f7ba', '5e7fd9a518f81b', '5e7fd9a518f83c', '5e7fd9a518f84d', '5e7fd9a518f84d', 37),
(153, 'educare5e7fc627b7715', '5e7fd9a51ae77', 'Kwashiorkor, a disorder of children is due to', 'Protein/essential amino acid deficiency', 'Carbohydrate deficiency', 'Genetic problem', 'Vitamin deficiency', '5e7fd9a51b705a', '5e7fd9a51b70ab', '5e7fd9a51b70cc', '5e7fd9a51b70ed', '5e7fd9a51b705a', 38),
(154, 'educare5e7fc627b7715', '5e7fd9a521206', 'Smoking may cause Cancer of', 'Lung', 'Liver', 'Skin', 'Cervix', '5e7fd9a5215f8a', '5e7fd9a5215fcb', '5e7fd9a5215fec', '5e7fd9a521600d', '5e7fd9a5215f8a', 40),
(155, 'educare5e7fc627b7715', '5e7fd9a52379c', 'AIDS spreads through', 'Blood transfusion', 'Placenta transmission', 'Sexual Contact', 'All of the above', '5e7fd9a523b71a', '5e7fd9a523b76b', '5e7fd9a523b78c', '5e7fd9a523b7ad', '5e7fd9a523b7ad', 41),
(156, 'educare5e7fc627b7715', '5e7fd9a5267e8', 'AIDS is characterised by sharp reduction in number of.......', 'Helper T-cells', 'Killer T-cells', 'Suppressor T-cells', 'B-lymphocytes ', '5e7fd9a527c34a', '5e7fd9a527c39b', '5e7fd9a527c3bc', '5e7fd9a527c3dd', '5e7fd9a527c34a', 42),
(157, 'educare5e7fc627b7715', '5e7fd9a52a7de', 'What is correct??', 'Malignant tumours may exhibit metastasis', 'Patients who have undergone surgery are given cannabinoids to relieve pain', 'Benign tumours show metastasis', 'Heroin accelerates body functions', '5e7fd9a52b0a6a', '5e7fd9a52b0abb', '5e7fd9a52b0adc', '5e7fd9a52b0afd', '5e7fd9a52b0a6a', 43),
(158, 'educare5e7fc627b7715', '5e7fd9a52ce51', 'Widal test is based on', 'Serological interaction', 'Sonography', 'Endoscopy', 'Angiography', '5e7fd9a52d6daa', '5e7fd9a52d6deb', '5e7fd9a52d6e0c', '5e7fd9a52d6e2d', '5e7fd9a52d6daa', 44),
(159, 'educare5e7fc627b7715', '5e7fd9a52f396', 'Malaria is caused by.........', 'Ascaris', 'Plasmodium', 'Entamoeba', 'Trypanosoma', '5e7fd9a52fc60a', '5e7fd9a52fc66b', '5e7fd9a52fc68c', '5e7fd9a52fc69d', '5e7fd9a52fc66b', 45),
(160, 'educare5e7fc627b7715', '5e7fd9a53187b', 'Scurvy is developed due to the deficiency of', 'Iodine', 'Vitamin B', 'Vitamin A', 'Vitamin C', '5e7fd9a531c63a', '5e7fd9a531c67b', '5e7fd9a531c69c', '5e7fd9a531c6bd', '5e7fd9a531c6bd', 46),
(161, 'educare5e7fc627b7715', '5e7fd9a533de9', 'Small pox and rabies are caused by', 'Bacterium', 'Virus', 'Protozoan', 'Nematode', '5e7fd9a53420fa', '5e7fd9a534213b', '5e7fd9a534216c', '5e7fd9a534217d', '5e7fd9a534213b', 47),
(162, 'educare5e7fc627b7715', '5e7fd9a53650d', 'Deficiency of iodine causes', 'Tetany', 'Cretinism', 'Myxodema', 'Goitre', '5e7fd9a5368fca', '5e7fd9a536901b', '5e7fd9a536903c', '5e7fd9a536905d', '5e7fd9a536905d', 48),
(163, 'educare5e7fc627b7715', '5e7fd9a538c27', 'Pair of viral diseases is', 'Ringwork', ' AIDS', 'Typhoid', ' tuberculosis', '5e7fd9a53904ba', '5e7fd9a539050b', '5e7fd9a539052c', '5e7fd9a539054d', '5e7fd9a539054d', 49),
(164, 'educare5e7fc627b7715', '5e7fd9a53c752', 'Which of the following is known as slim disease', 'Leprosy', 'Cancer', 'Typhoid', 'AIDS', '5e7fd9a53d0cba', '5e7fd9a53d0d0b', '5e7fd9a53d0d2c', '5e7fd9a53d0d4d', '5e7fd9a53d0d4d', 50),
(165, 'educare5e7fdbb09063d', '5e7feca10e468', 'Some protection is provided against carcinogens by (AFMC)', 'Penicillic acid ', 'Affatoxin', 'Streptomycin', 'Tocopherol/Vit.E', '5e7feca11085ca', '5e7feca110866b', '5e7feca110869c', '5e7feca11086bd', '5e7feca11086bd', 1),
(166, 'educare5e7fdbb09063d', '5e7feca113783', 'In AIDs the system which fails is (MHT-CET)', 'Digestive', 'Respiratory', 'Defence', 'Sensory', '5e7feca1141ffa', '5e7feca114208b', '5e7feca11420bc', '5e7feca11420ed', '5e7feca11420bc', 2),
(167, 'educare5e7fdbb09063d', '5e7feca118866', 'Responsible for replication of HIV is ?', 'RNA polymerase', 'DNA ligase', 'DNA polymerase', 'Reverse transcriptase', '5e7feca11932ba', '5e7feca119330b', '5e7feca119332c', '5e7feca119334d', '5e7feca119334d', 3),
(168, 'educare5e7fdbb09063d', '5e7feca11ef75', 'Heamophilia disease can transfer through', 'Heredity', 'Metal', 'Pollutant', 'Vector', '5e7feca11fa23a', '5e7feca11fa27b', '5e7feca11fa29c', '5e7feca11fa2bd', '5e7feca11fa23a', 5),
(169, 'educare5e7fdbb09063d', '5e7feca122346', 'Which of the following diseases is non contagious but infectious', 'Leprosy', 'AIDS', 'Measles', 'Mumps', '5e7feca122ea5a', '5e7feca122eadb', '5e7feca122eafc', '5e7feca122eb1d', '5e7feca122eadb', 6),
(170, 'educare5e7fdbb09063d', '5e7feca125ea7', 'A vector borne disease is', 'Scurvy', 'Influenza', 'Kala-azar', 'Tuberculosis', '5e7feca126372a', '5e7feca126376b', '5e7feca126378c', '5e7feca12637bd', '5e7feca126378c', 7),
(171, 'educare5e7fdbb09063d', '5e7feca1293f7', 'Anaemia is mainly due to deficiency of (MP-PMT, AFMC)', 'Ca', 'Fe', 'Na', 'Mg', '5e7feca12989fa', '5e7feca1298a5b', '5e7feca1298a7c', '5e7feca1298a9d', '5e7feca1298a5b', 8),
(172, 'educare5e7fdbb09063d', '5e7feca12c89c', 'Filariasis is caused by', 'Wuchereria', 'Ascaris', 'Taenia', 'FascioMdays', '5e7feca12cd79a', '5e7feca12cd7eb', '5e7feca12cd80c', '5e7feca12cd82d', '5e7feca12cd79a', 9),
(173, 'educare5e7fdbb09063d', '5e7feca130e6e', 'Typhoid fever is caused by', 'Salmonella typhi', 'Vibrio cholerae', 'Treponema pallidium', 'Trichophyton tonsurans', '5e7feca1318caa', '5e7feca1318d0b', '5e7feca1318d3c', '5e7feca1318d6d', '5e7feca1318caa', 10),
(174, 'educare5e7fdbb09063d', '5e7feca1341fe', 'Which type of cancer occurs in lymph nodes and spleen', 'Carcinoma', 'Sarcoma', 'Leukemia', 'Lymphoma', '5e7feca134c46a', '5e7feca134c4bb', '5e7feca134c4dc', '5e7feca134c4fd', '5e7feca134c4bb', 11),
(175, 'educare5e7fdbb09063d', '5e7feca137542', 'Metastasis is connected with', 'Benign tumour', 'Malignant tumour', 'Both A and B', 'Crown gall tumour', '5e7feca137f6da', '5e7feca137f72b', '5e7feca137f74c', '5e7feca137f77d', '5e7feca137f72b', 12),
(176, 'educare5e7fdbb09063d', '5e7feca13aa4f', 'HIV is retrovirus as its genetic information is contained in', 'DNA', 'DNA instead of RNA', 'RNA instead of DNA', 'Protein', '5e7feca13b4c9a', '5e7feca13b4cfb', '5e7feca13b4d1c', '5e7feca13b4d3d', '5e7feca13b4d1c', 13),
(177, 'educare5e7fdbb09063d', '5e7feca13dc4c', 'Which one is vehicle borne', 'Typhoid', 'Cancer', 'Rabies', 'Mumps', '5e7feca13e643a', '5e7feca13e648b', '5e7feca13e64ac', '5e7feca13e64cd', '5e7feca13e643a', 14),
(178, 'educare5e7fdbb09063d', '5e7feca140e5b', 'Ital-itai disease is caused by .......', 'Mercury', 'Lead', 'Cadmium', 'Iron', '5e7feca1412e5a', '5e7feca1412e9b', '5e7feca1412ebc', '5e7feca1412edd', '5e7feca1412ebc', 15),
(179, 'educare5e7fdbb09063d', '5e7feca1456c3', 'Which of the following is not a congenital disease', 'Sickle cell anaemia', 'Albinism', 'Haemophilia', 'Hepatitis', '5e7feca1460eba', '5e7feca1460f1b', '5e7feca1460f3c', '5e7feca1460f5d', '5e7feca1460f5d', 16),
(180, 'educare5e7fdbb09063d', '5e7feca149001', 'A state of complete physical mental and social well being is called', 'Disease', 'Health', 'Hygiene', 'Infirmity', '5e7feca1494b0a', '5e7feca1494b5b', '5e7feca1494b7c', '5e7feca1494bad', '5e7feca1494b5b', 17),
(181, 'educare5e7fdbb09063d', '5e7feca14bad9', 'Dengue is caused by', 'Female Aedes', 'Male Aedes', 'Male anopheles', 'Female anopheles', '5e7feca14c53da', '5e7feca14c541b', '5e7feca14c543c', '5e7feca14c545d', '5e7feca14c53da', 18),
(182, 'educare5e7fdbb09063d', '5e7feca14eded', 'A droplet infection is', 'Tetanus', 'Pneumoniae', 'Syphilis', 'Typhoid', '5e7feca14f84ea', '5e7feca14f853b', '5e7feca14f855c', '5e7feca14f857d', '5e7feca14f853b', 19),
(183, 'educare5e7fdbb09063d', '5e7feca152189', 'Human papilloma virus may cause Cancer of', 'Stomach', 'Uterine cervix', 'Liver', 'Urinary bladder', '5e7feca153bb2a', '5e7feca153bb9b', '5e7feca153bbbc', '5e7feca153bbdd', '5e7feca153bb9b', 20),
(184, 'educare5e7fdbb09063d', '5e7feca156566', 'Blood cancer is', 'Luekemia', 'Thrombosis', 'Haemophilia', 'Hemolysis', '5e7feca157081a', '5e7feca157087b', '5e7feca157089c', '5e7feca15708ad', '5e7feca157081a', 21),
(185, 'educare5e7fdbb09063d', '5e7feca15bfb0', 'Cancerous cells are killed by radiation because they are', 'Dividing rapidly', 'Deprived of oxygen', 'Starved', 'Mutating fast', '5e7feca15caa4a', '5e7feca15caaab', '5e7feca15caadc', '5e7feca15caafd', '5e7feca15caa4a', 22),
(186, 'educare5e7fdbb09063d', '5e7feca160aa0', 'Anaplasia is', 'Transfer of cancer cells', 'Formation of tumour', 'Loss of cells adherence and cell differentiation', 'Action of lysosome over cells', '5e7feca161554a', '5e7feca16155ab', '5e7feca16155cc', '5e7feca16155ed', '5e7feca16155cc', 23),
(187, 'educare5e7fdbb09063d', '5e7feca163dae', 'Which is correct about AIDS', 'Drug addicts are least susceptible', 'Care and nutrition cure AIDS patients', 'Virus enters helper T-cells and reduces their number', 'It can spread through eating food together with infected person', '5e7feca1641f4a', '5e7feca1641fab', '5e7feca1641fcc', '5e7feca1641fed', '5e7feca1641fcc', 24),
(188, 'educare5e7fdbb09063d', '5e7feca1683bc', 'Typhus fever is caused by........', 'Fungi', 'Bacteria', 'Virus', 'Rickettsia', '5e7feca16918ea', '5e7feca169193b', '5e7feca169195c', '5e7feca169197d', '5e7feca169197d', 25),
(189, 'educare5e7fdbb09063d', '5e7feca16cfd9', 'Study of mode of transmission of disease is called', 'Parasitology', 'Epidemiology', 'Nosology', 'Immunology', '5e7feca16dedaa', '5e7feca16dee7b', '5e7feca16dee9c', '5e7feca16deebd', '5e7feca16dee7b', 26);
INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `oa`, `ob`, `oc`, `od`, `oaid`, `obid`, `ocid`, `odid`, `ansid`, `sn`) VALUES
(190, 'educare5e7fdbb09063d', '5e7feca171d58', 'Which of the following is a degenerative disease', 'Cataract', 'Kwashiorkor', 'Cretinism', 'Marasmus', '5e7feca173bf0a', '5e7feca173bfab', '5e7feca173bfdc', '5e7feca173bffd', '5e7feca173bf0a', 27),
(191, 'educare5e7fdbb09063d', '5e7feca17ac5e', 'Which is mismatched??', 'Vitamin K- Beri Beri', 'Vitamin C-scurvy', 'Vitamin A- Xerophthalmia ', 'Vitamin D-Rickets', '5e7feca17b937a', '5e7feca17b93eb', '5e7feca17b941c', '5e7feca17b943d', '5e7feca17b937a', 28),
(192, 'educare5e7fdbb09063d', '5e7feca17fafc', 'Haemophilia is.........', 'Genetic disease', 'Infectious disease', 'Occupational disease', 'Metabolic disorder', '5e7feca1807e7a', '5e7feca1807edb', '5e7feca1807efc', '5e7feca1807f1d', '5e7feca1807e7a', 29),
(193, 'educare5e7fdbb09063d', '5e7feca1846f8', 'Widal test is used for diagnosis of', 'Typhoid', 'Cancer', 'AIDS', 'Malaria', '5e7feca1853bea', '5e7feca1853c4b', '5e7feca1853c6c', '5e7feca1853c8d', '5e7feca1853bea', 30),
(194, 'educare5e7fdbb09063d', '5e7feca189551', 'Sarcoma is Cancer of', 'Epithelial tissue', 'Mesodermal tissue', 'Blood', 'Endodermal tissues', '5e7feca18a2b3a', '5e7feca18a2b9b', '5e7feca18a2bbc', '5e7feca18a2bdd', '5e7feca18a2b9b', 31),
(195, 'educare5e7fdbb09063d', '5e7feca18e30f', 'One of the following is used for treatment of typhoid Cancer (CBSE)', 'U238', 'Ra-224', 'C-14', 'I-131', '5e7feca18efb1a', '5e7feca18efb6b', '5e7feca18efb8c', '5e7feca18efbad', '5e7feca18efbad', 32),
(196, 'educare5e7fdbb09063d', '5e7feca193fbe', 'A person preparing food (e.g..Mary Milton) can be a major source of spread of disease', 'Pneumoniae', 'Syphilis', 'Typhoid', 'Cancer', '5e7feca194c5ea', '5e7feca194c63b', '5e7feca194c65c', '5e7feca194c66d', '5e7feca194c65c', 33),
(197, 'educare5e7fdbb09063d', '5e7feca198c27', 'Treatment of cancer is carried out by', 'Radiation therapy', 'Surgery', 'Immunotherapy', 'All of the above', '5e7feca1998cca', '5e7feca1998d0b', '5e7feca1998d2c', '5e7feca1998d5d', '5e7feca1998d5d', 34),
(198, 'educare5e7fdbb09063d', '5e7feca19d1ba', 'Breast cancer is the example of.........disease', 'Deficiency', 'Hormonal', 'Allergic', 'Malignant', '5e7feca19de58a', '5e7feca19de5db', '5e7feca19de5fc', '5e7feca19de61d', '5e7feca19de61d', 35),
(199, 'educare5e7fdbb09063d', '5e7feca1a2001', 'Which of the following is fourth dimension of health', 'Physical', 'Mental', 'Spiritual', 'Social', '5e7feca1a2d59a', '5e7feca1a2d5eb', '5e7feca1a2d60c', '5e7feca1a2d62d', '5e7feca1a2d60c', 36),
(200, 'educare5e7fdbb09063d', '5e7feca1a6d14', 'Congenital diseases caused by environmental factors are', 'PKU and sickle cell anaemia', 'Haemophilia and colour blindness', 'Cleft palate and harelip', '', '5e7feca1a7a04a', '5e7feca1a7a0bc', '5e7feca1a7a0dd', '', '5e7feca1a7a0dd', 37),
(201, 'educare5e7fdbb09063d', '5e7feca1acb0b', 'Deficiency of vitamin C/Ascorbic acid causes', 'Rickets', 'Beri-Beri', 'Scurvy', 'Night blindness', '5e7feca1adb45a', '5e7feca1adb4db', '5e7feca1adb50c', '5e7feca1adb53d', '5e7feca1adb50c', 38),
(202, 'educare5e7fdbb09063d', '5e7feca1b0271', 'Pneumoniae that infects lung alveoli is caused by', 'Streptococcus species', 'Plasmodium species', 'Salmonella haemophilus', 'None of the above', '5e7feca1b0691a', '5e7feca1b0695b', '5e7feca1b0697c', '5e7feca1b069ad', '5e7feca1b0691a', 39),
(203, 'educare5e7fdbb09063d', '5e7feca1b2fc2', 'Which one is not helminth', 'Taenia', 'Trypanosoma', 'Fasciola', 'Ascaris', '5e7feca1b3ba4a', '5e7feca1b3bb6b', '5e7feca1b3bb8c', '5e7feca1b3bbad', '5e7feca1b3bb6b', 40),
(204, 'educare5e7fdbb09063d', '5e7feca1b6d0a', 'Sarcoma is Cancer of', 'Epithelial tissue', 'Endodermal tissue', 'Ectodermal tissue', 'Mesodermal tissue', '5e7feca1b71cfa', '5e7feca1b71d4b', '5e7feca1b71d6c', '5e7feca1b71d8d', '5e7feca1b71d8d', 41),
(205, 'educare5e7fdbb09063d', '5e7feca1bbf32', 'AZT is used in treatment of', 'Malaria', 'AIDS', 'T.', 'Kala-azar', '5e7feca1bc983a', '5e7feca1bc987b', '5e7feca1bc989c', '5e7feca1bc98cd', '5e7feca1bc987b', 42),
(206, 'educare5e7fdbb09063d', '5e7feca1bee69', 'Cancer of blood is', 'Lymphoma', 'Sarcoma', 'Osteoma', 'Leukaemia', '5e7feca1bf24da', '5e7feca1bf251b', '5e7feca1bf253c', '5e7feca1bf255d', '5e7feca1bf255d', 43),
(207, 'educare5e7fdbb09063d', '5e7feca1c1939', 'Cancer of cervix is caused by', 'Human papilloma virus', 'Pep pills', 'Epstein Barr virus', 'Fatty diet', '5e7feca1c22a5a', '5e7feca1c22aab', '5e7feca1c22acc', '5e7feca1c22aed', '5e7feca1c22a5a', 44),
(208, 'educare5e7fdbb09063d', '5e7feca1cb4c6', 'HIV infects', 'Cytotoxic T-cells', 'Helper T-cells', 'Cells of nervous system', 'B-lymphocytes', '5e7feca1cd26ba', '5e7feca1cd270b', '5e7feca1cd272c', '5e7feca1cd274d', '5e7feca1cd270b', 45),
(209, 'educare5e7fdbb09063d', '5e7feca1d942e', 'Beri-Beri is caused by the deficiency of.......', 'Vitamin B', 'Vitamin D', 'Vitamin C', 'Vitamin E', '5e7feca1db659a', '5e7feca1db65eb', '5e7feca1db660c', '5e7feca1db662d', '5e7feca1db659a', 46),
(210, 'educare5e7fdbb09063d', '5e7feca1e443a', 'Who separated medicines from religion, superstition and philosophy', 'Aristotle', 'Hippocrates', 'Edward', 'Darwin', '5e7feca1e65ada', '5e7feca1e65b2b', '5e7feca1e65b4c', '5e7feca1e65b6d', '5e7feca1e65b2b', 47),
(211, 'educare5e7fdbb09063d', '5e7feca1ef46c', 'Which of the following is a water borne disease', 'Tuberculosis', 'Malaria', 'Cholera', 'Chicken pox', '5e7feca1f1638a', '5e7feca1f1641b', '5e7feca1f1643c', '5e7feca1f1645d', '5e7feca1f1643c', 48),
(212, 'educare5e7fdbb09063d', '5e7feca207920', 'Deficiency of vitamin A causes', 'Cataract', 'Myopia', 'Hyperopia', 'Night blindness', '5e7feca209436a', '5e7feca20943db', '5e7feca209440c', '5e7feca209442d', '5e7feca209442d', 49),
(213, 'educare5e7fdbb09063d', '5e7feca213f36', 'Insulin deficiency causes', 'Diabetes insipidus', 'Goitre', 'Diabetes mellitus', 'All of the above', '5e7feca215b16a', '5e7feca215b1cb', '5e7feca215b1ec', '5e7feca215b20d', '5e7feca215b1ec', 50),
(214, 'educare5e7fdbb09063d', '5e89dfca48647', 'Burkitt\'s lymphoma is caused by', 'HIV', 'Reovirus', 'E-B virus', 'None of the above', '5e89e071c271fa', '5e89e071c271fb', '5e89e071c271fc', '5e89e071c271fd', '5e89e071c271fc', 4),
(215, 'educare5e7fc627b7715', '5e89e169292fa', 'Down\'s syndrome is caused by?', 'Monosomy of 21st chromosome', 'Trisomy of 21st chromosome', 'Deletion in chromosome', 'Duplication of chromosome', '5e89e2532e15ca', '5e89e2532e15cb', '5e89e2532e15cc', '5e89e2532e15cd', '5e89e2532e15cb', 39),
(216, 'educare5e9728e9091c7', '5e97306cae3ed', 'The process of management involves the function of planning, â€¦â€¦â€¦â€¦â€¦., leading and controlling', 'Accounting', 'Creating', 'Innovating', 'Organizing', '5e97306cae3eda', '5e97306cae3edb', '5e97306cae3edc', '5e97306cae3edd', '5e97306cae3edd', 1),
(217, 'educare5e9728e9091c7', '5e97306cc8203', 'An effective manager achieves both high performance results and high levels of â€¦â€¦â€¦â€¦.\r\nAmong people doing the required work\r\n', 'Turnover', 'Effectiveness', 'Satisfaction', 'Stress', '5e97306cc8203a', '5e97306cc8203b', '5e97306cc8203c', '5e97306cc8203d', '5e97306cc8203c', 2),
(218, 'educare5e9728e9091c7', '5e97306cd687e', 'Performance efficiency is a measure of the â€¦â€¦â€¦â€¦â€¦ associated with task accomplishment', 'Resource costs', 'Goal specificity', 'Product quality', 'Product quantity', '5e97306cd687ea', '5e97306cd687eb', '5e97306cd687ec', '5e97306cd687ed', '5e97306cd687ea', 3),
(219, 'educare5e9728e9091c7', '5e97306cea8d3', 'The requirement that a manager answer to higher-level boss for results achieved by a work team is calledâ€¦â€¦â€¦  ', 'Dependency', 'Accountability', 'Authority', 'Empowerment', '5e97306cea8d3a', '5e97306cea8d3b', '5e97306cea8d3c', '5e97306cea8d3d', '5e97306cea8d3b', 4),
(220, 'educare5e9728e9091c7', '5e97306d0aeb8', 'Productivity is a measure of the quality and â€¦â€¦â€¦â€¦ of work produced with resource utilization taken into account', 'Quantity', 'Cost', 'Account', 'Service', '5e97306d0aeb8a', '5e97306d0aeb8b', '5e97306d0aeb8c', '5e97306d0aeb8d', '5e97306d0aeb8a', 5),
(221, 'educare5e9728e9091c7', '5e97306d1cfcc', '...........manager  pay special attention to the external environment,  looking for  problems\r\nand opportunities and finding ways to deal with them\r\n', 'Top', 'Middle', 'Lower', 'First-line', '5e97306d1cfcca', '5e97306d1cfccb', '5e97306d1cfccc', '5e97306d1cfccd', '5e97306d1cfcca', 6),
(222, 'educare5e9728e9091c7', '5e97306d2d970', 'The accounting manager for a local newspaper would be considered.............. manager, whereas the editorial manager would be considered a â€¦â€¦â€¦â€¦â€¦.. manager ', 'General, functional', 'Middle, top', 'Staff, line', 'Senior, Junior', '5e97306d2d970a', '5e97306d2d970b', '5e97306d2d970c', '5e97306d2d970d', '5e97306d2d970c', 7),
(223, 'educare5e9728e9091c7', '5e97306d42195', 'When a team leader clarifies desired work targets and deadlines for a work team, he or she  is  fulfilling  the  management  function  of  â€¦â€¦â€¦.. ', 'Planning', 'Delegating', 'Controlling', 'Supervising', '5e97306d42195a', '5e97306d42195b', '5e97306d42195c', '5e97306d42195d', '5e97306d42195b', 8),
(224, 'educare5e9728e9091c7', '5e97306d463fe', 'The process of building and maintaining good working relationships with others who may help implement a managerâ€™s work agendas is called', 'Governance', 'Networking', 'Authority', 'Entrepreneurship', '5e97306d463fea', '5e97306d463feb', '5e97306d463fec', '5e97306d463fed', '5e97306d463feb', 9),
(225, 'educare5e9728e9091c7', '5e97306d4e4e8', 'In Katzâ€™s framework, top managers tend to rely on their.............Skills', 'Conceptual', 'Human', 'Decision making', 'Technical', '5e97306d4e4e8a', '5e97306d4e4e8b', '5e97306d4e4e8c', '5e97306d4e4e8d', '5e97306d4e4e8a', 10),
(226, 'educare5e9728e9091c7', '5e97306d52751', 'The research of Mintzberg and others concludes that managers â€¦â€¦â€¦â€¦', 'Work at leisurely pace', 'Have blocks of private time for planning', 'Always live with the pressure of performance responsibility', 'Have the advantage of short work weeks', '5e97306d52751a', '5e97306d52751b', '5e97306d52751c', '5e97306d52751d', '5e97306d52751c', 11),
(227, 'educare5e9728e9091c7', '5e97306d565d1', 'When someone with a negative attitude towards minorities make a decision to deny advancement opportunities to Hispanic worker, this is an example of	', 'Discrimination', 'Emotional intelligence', 'Control', 'Prejudice', '5e97306d565d1a', '5e97306d565d1b', '5e97306d565d1c', '5e97306d565d1d', '5e97306d565d1a', 12),
(228, 'educare5e9728e9091c7', '5e97306d5a83a', 'Among the trends in the new work place, one can expect to find	', 'More order giving', 'More valuing people as human assets', 'Less teamwork', 'Reduce concern for work-line balance', '5e97306d5a83aa', '5e97306d5a83ab', '5e97306d5a83ac', '5e97306d5a83ad', '5e97306d5a83ab', 13),
(229, 'educare5e9728e9091c7', '5e97306d5eaa3', 'The managerâ€™s role in the â€œupside down pyramidâ€ view of organization is best described as providing â€¦â€¦â€¦.. so that operating workers can directly serve.............', 'Direct, top management', 'Leadership, organisational goals', 'Support, customers', 'Agenda, networking', '5e97306d5eaa3a', '5e97306d5eaa3b', '5e97306d5eaa3c', '5e97306d5eaa3d', '5e97306d5eaa3c', 14),
(230, 'educare5e9728e9091c7', '5e97306d68ace', 'The management function of â€¦â€¦â€¦ is being performed when a retail manage measures daily sales in the dress department and compares them with daily sales targets ', 'Planning', 'Agenda setting', 'Controlling', 'Delegating', '5e97306d68acea', '5e97306d68aceb', '5e97306d68acec', '5e97306d68aced', '5e97306d68acec', 15),
(231, 'educare5e9728e9091c7', '5e97306d6ec77', 'The assumption that people are complex with widely needs is most associated with the  â€¦â€¦â€¦..  management  approaches', 'Classical', 'Neo-classical', 'Behavioural', 'Modern', '5e97306d6ec77a', '5e97306d6ec77b', '5e97306d6ec77c', '5e97306d6ec77d', '5e97306d6ec77c', 16),
(232, 'educare5e9728e9091c7', '5e97306d72ee0', 'The father of scientific management is â€¦â€¦ ', 'Weber', 'Taylor', 'Mintzberg', 'Katz', '5e97306d72ee0a', '5e97306d72ee0b', '5e97306d72ee0c', '5e97306d72ee0d', '5e97306d72ee0b', 17),
(233, 'educare5e9728e9091c7', '5e97306d7908a', 'The Hawthorne studies are important because they raised awareness of the important influences of â€¦â€¦â€¦.. on productivity', 'Structures', 'Human factors', 'Physical work conditions', 'Pay and reward', '5e97306d7908aa', '5e97306d7908ab', '5e97306d7908ac', '5e97306d7908ad', '5e97306d7908ac', 18),
(234, 'educare5e9728e9091c7', '5e97306d7f233', 'Advice to study a job and carefully train workers to do that job with financial incentives tied to job performance would most likely come from', 'Scientific management', 'Contingency management', 'Henri Fayol', 'Abraham Maslow', '5e97306d7f233a', '5e97306d7f233b', '5e97306d7f233c', '5e97306d7f233d', '5e97306d7f233a', 19),
(235, 'educare5e9728e9091c7', '5e97306d8349c', 'The highest level in Maslowâ€™s level hierarchy is the level of â€¦â€¦ need ', 'Safety', 'Esteem', 'Self-actualization ', 'Physiological', '5e97306d8349ca', '5e97306d8349cb', '5e97306d8349cc', '5e97306d8349cd', '5e97306d8349cc', 20),
(236, 'educare5e9728e9091c7', '5e97306d87705', 'Conflict between the mature adult personality and a rigid organization was a major concern of', 'Argyris', 'Follet', 'Gantt', 'Fuller', '5e97306d87705a', '5e97306d87705b', '5e97306d87705c', '5e97306d87705d', '5e97306d87705a', 21),
(237, 'educare5e9728e9091c7', '5e97306d8d4c6', 'When people perform in a situation as they are expected to, this is sometimes called the â€¦â€¦. Effect ', 'Hawthorne', 'Bureaucratic ', 'Contingency', 'Open-system', '5e97306d8d4c6a', '5e97306d8d4c6b', '5e97306d8d4c6c', '5e97306d8d4c6d', '5e97306d8d4c6c', 22),
(238, 'educare5e9728e9091c7', '5e97306d9172f', 'Linear programming and queuing theory are examples of techniques found in the â€¦â€¦.. approach to management\r\n', 'Classical', 'Quantitative', 'Bureaucratic organisation', 'Modern', '5e97306d9172fa', '5e97306d9172fb', '5e97306d9172fc', '5e97306d9172fd', '5e97306d9172fb', 23),
(239, 'educare5e9728e9091c7', '5e97306da1ceb', 'Resource acquisition and customer satisfaction are important when an organization is viewed as a(an)....................', 'Bureaucracy', 'Closed system', 'Open system', 'Pyramid', '5e97306da1ceba', '5e97306da1cebb', '5e97306da1cebc', '5e97306da1cebd', '5e97306da1cebc', 24),
(240, 'educare5e9728e9091c7', '5e97306da9dd5', 'Long-term employment and consensus decision making are characteristics of the â€¦â€¦â€¦â€¦ management framework \r\n', 'Theory X', 'Theory Y', 'Theory Z', 'Contingency', '5e97306da9dd5a', '5e97306da9dd5b', '5e97306da9dd5c', '5e97306da9dd5d', '5e97306da9dd5c', 25),
(241, 'educare5e9728e9091c7', '5e97306db22a7', 'When your local bank or credit union is viewed as an open system, the loan processing department  would  be considered a ', 'Subsystem', 'Closed system', 'Resource input', 'Value centre', '5e97306db22a7a', '5e97306db22a7b', '5e97306db22a7c', '5e97306db22a7d', '5e97306db22a7a', 26),
(242, 'educare5e9728e9091c7', '5e97306dbc6b9', 'When a manager notices that Oladimeji has strong social needs and puts him in a job that involves customer relations, while also being sure to give Mosunmola lots of praise because of her strong ego needs, the manager is displaying ', 'Systems thinking', 'Theory X', 'Motion study', 'Contingency thinking', '5e97306dbc6b9a', '5e97306dbc6b9b', '5e97306dbc6b9c', '5e97306dbc6b9d', '5e97306dbc6b9d', 27),
(243, 'educare5e9728e9091c7', '5e97306dc47a3', 'If you conducted a value chain analysis of a business, you would study...................	', 'Customer satisfaction with products', 'How much quality TMQ affect profits', 'Flow of activities that transform resources into goods and services', 'Links between performance and rewards', '5e97306dc47a3a', '5e97306dc47a3b', '5e97306dc47a3c', '5e97306dc47a3d', '5e97306dc47a3c', 28),
(244, 'educare5e9728e9091c7', '5e97306dc8624', 'In a learning organization, as described by Peter Senge, one would expect to find â€¦â€¦..', 'Priority placed on following rules and procedures', 'Promotion based on seniority', 'Employees who are willing to set aside old thinking and embrace new ways', 'A strict hierarchy of authority', '5e97306dc8624a', '5e97306dc8624b', '5e97306dc8624c', '5e97306dc8624d', '5e97306dc8624c', 29),
(245, 'educare5e9728e9091c7', '5e97306dcc88d', '21st  century leaders must be able to add value to organizations by', 'Taking action to make things happen', 'Building efficient structures', 'Keeping customers happy', 'Using mathematics for decision making', '5e97306dcc88da', '5e97306dcc88db', '5e97306dcc88dc', '5e97306dcc88dd', '5e97306dcc88da', 30),
(246, 'educare5e9892f2ec85e', '5e98a6780f2df', 'Planning is the process of â€¦â€¦. and â€¦â€¦â€¦.. ', 'developing premises about the future, evaluating them', 'measuring results, taking corrective action', 'measuring past performance,  targeting  future  performance', 'setting objectives, deciding how to accomplish them', '5e98a6780f2dfa', '5e98a6780f2dfb', '5e98a6780f2dfc', '5e98a6780f2dfd', '5e98a6780f2dfd', 1),
(247, 'educare5e9892f2ec85e', '5e98a6781bff4', 'The benefits of planning includes .................	', 'improved focus', 'lower labour costs', 'more accurate forecasts', 'guaranteed profits', '5e98a6781bff4a', '5e98a6781bff4b', '5e98a6781bff4c', '5e98a6781bff4d', '5e98a6781bff4a', 2),
(248, 'educare5e9892f2ec85e', '5e98a6782bddd', 'In order to help implement its strategy, a business firm would likely develop a(an)â€¦â€¦â€¦â€¦ plan for the marketing function\r\n', 'IT', 'operational', 'productivity', 'zero-based', '5e98a6782bddda', '5e98a6782bdddb', '5e98a6782bdddc', '5e98a6782bdddd', '5e98a6782bdddb', 3),
(249, 'educare5e9892f2ec85e', '5e98a67842732', '.............Planning identifies alternative courses of action that can be taken if and when certain situations arise\r\n', 'benchmark', 'participative', 'strategic', 'contingency', '5e98a67842732a', '5e98a67842732b', '5e98a67842732c', '5e98a67842732d', '5e98a67842732d', 4),
(250, 'educare5e9892f2ec85e', '5e98a67854c2b', 'The first step in the control process is to.................	', 'measure actual performance', 'establish objectives and standards', 'compare results with objectives', 'take corrective actions', '5e98a67854c2ba', '5e98a67854c2bb', '5e98a67854c2bc', '5e98a67854c2bd', '5e98a67854c2bb', 5),
(251, 'educare5e9892f2ec85e', '5e98a6786bf45', 'The practice of giving attention to situation showing the greatest need for action is called management by', 'objectives', 'results', 'efficiency', 'exception', '5e98a6786bf45a', '5e98a6786bf45b', '5e98a6786bf45c', '5e98a6786bf45d', '5e98a6786bf45d', 6),
(252, 'educare5e9892f2ec85e', '5e98a6787f7c6', 'â€˜No Smokingâ€™ rule and a sexual harassment policy are examples of ..................plans used by organizations\r\n', 'long-range', 'single-use', 'standing-use', 'operational', '5e98a6787f7c6a', '5e98a6787f7c6b', '5e98a6787f7c6c', '5e98a6787f7c6d', '5e98a6787f7c6b', 7),
(253, 'educare5e9892f2ec85e', '5e98a67891cbf', 'A manager following the â€˜hot stove rulesâ€™ of progressive discipline would ', 'avoid giving the employees too much information about what was wrong', 'stay flexible, reprimanding only at  random', 'focus the reprimand on actions, not personality', 'delay reprimands until positive can also be discussed', '5e98a67891cbfa', '5e98a67891cbfb', '5e98a67891cbfc', '5e98a67891cbfd', '5e98a67891cbfc', 8),
(254, 'educare5e9892f2ec85e', '5e98a678a10e4', 'Review of an employeeâ€™s performance accomplishments in an MBO system is done by  â€¦â€¦â€¦.. ', 'the employee', 'the employeeâ€™s  supervisor', 'the employee and the supervisor', 'the employee, the supervisor, and a lawyer', '5e98a678a10e4a', '5e98a678a10e4b', '5e98a678a10e4c', '5e98a678a10e4d', '5e98a678a10e4c', 9),
(255, 'educare5e9892f2ec85e', '5e98a678aa361', 'A good performance objective is written in such a way that it.................	', 'has no precise timetable', 'is general and not too specific', 'is almost impossible to accomplish', 'can be easily measured', '5e98a678aa361a', '5e98a678aa361b', '5e98a678aa361c', '5e98a678aa361d', '5e98a678aa361d', 10),
(256, 'educare5e9892f2ec85e', '5e98a678ae7bd', 'When a manager is asked to justify a new budget proposal on the basis of projected activities  rather  than  past  practices,  this  is  an  example  of  â€¦â€¦â€¦â€¦  budgeting', 'zero- based ', 'variable', 'fixed', 'contingency', '5e98a678ae7bda', '5e98a678ae7bdb', '5e98a678ae7bdc', '5e98a678ae7bdd', '5e98a678ae7bda', 11),
(257, 'educare5e9892f2ec85e', '5e98a678bc85a', 'One of the benefits of participatory planning is..........	', 'reduce time for planning', 'less need for forecasting', 'greater attention to contingencies', 'more commitment to implement', '5e98a678bc85aa', '5e98a678bc85ab', '5e98a678bc85ac', '5e98a678bc85ad', '5e98a678bc85ad', 12),
(258, 'educare5e9892f2ec85e', '5e98a678bf92e', 'When an automobile manufacturer is careful to purchase only the highest-quality raw materials to be used in production, this is an example of â€¦â€¦. control', 'concurrent', 'statistical', 'inventory', 'feed forward', '5e98a678bf92ea', '5e98a678bf92eb', '5e98a678bf92ec', '5e98a678bf92ed', '5e98a678bf92ed', 13),
(259, 'educare5e9892f2ec85e', '5e98a678c6e5f', 'In break-even analysis, the break-even point occurs where â€¦â€¦â€¦â€¦â€¦ ', 'fixed-cost = variable costs', 'profits = expenses', 'assets = liabilities', 'revenue = total costs', '5e98a678c6e5fa', '5e98a678c6e5fb', '5e98a678c6e5fc', '5e98a678c6e5fd', '5e98a678c6e5fd', 14),
(260, 'educare5e9892f2ec85e', '5e98a678ced53', 'A manager is failing to live up to the concept of MBO when he or she..............', 'sets performance objectives for subordinates', 'actively supports subordinates in their work', 'jointly review performance results with subordinates ', 'keeps a written record of subordinateâ€™s performance objectives', '5e98a678ced53a', '5e98a678ced53b', '5e98a678ced53c', '5e98a678ced53d', '5e98a678ced53a', 15),
(261, 'educare5e9892f2ec85e', '5e98a678d760c', 'The main purpose of organizing as a management function is to â€¦â€¦â€¦â€¦. ', 'make sure that results match  plans', 'arrange people and resources to accomplish work', 'create enthusiasm for the work to be done', 'match strategies with operational plans', '5e98a678d760ca', '5e98a678d760cb', '5e98a678d760cc', '5e98a678d760cd', '5e98a678d760cb', 16),
(262, 'educare5e9892f2ec85e', '5e98a678db0a4', 'â€¦â€¦.. is the system of tasks, reporting relationships, and communication that links together the various parts of an organization ', 'structure', 'staff', 'decentralization', 'differentiation', '5e98a678db0a4a', '5e98a678db0a4b', '5e98a678db0a4c', '5e98a678db0a4d', '5e98a678db0a4a', 17),
(263, 'educare5e9892f2ec85e', '5e98a678df500', 'Transmission of rumors and resistance to change is a potential disadvantage often associated with â€¦â€¦..', 'virtual organization', 'informal structures', 'delegation ', 'specialized staff', '5e98a678df500a', '5e98a678df500b', '5e98a678df500c', '5e98a678df500d', '5e98a678df500b', 18),
(264, 'educare5e9892f2ec85e', '5e98a678e2f98', 'An organization chart showing vice presidents of marketing, finance, manufacturing, and purchasing all reporting to the president is depicting a................structure', 'functional', 'matrix ', 'network ', 'product', '5e98a678e2f98a', '5e98a678e2f98b', '5e98a678e2f98c', '5e98a678e2f98d', '5e98a678e2f98a', 19),
(265, 'educare5e9892f2ec85e', '5e98a678e73f5', 'The two-boss systems of reporting relationship is found in the â€¦â€¦.. structure', 'functional ', 'matrix ', 'network ', 'product', '5e98a678e73f5a', '5e98a678e73f5b', '5e98a678e73f5c', '5e98a678e73f5d', '5e98a678e73f5b', 20),
(266, 'educare5e9892f2ec85e', '5e98a678eb851', 'A manufacturing business with a functional structure has recently developed two new product lines. The president of the company might consider shifting to a/an â€¦â€¦â€¦â€¦structure to gain a stronger focus on each product \r\n', 'virtual ', 'informal ', 'divisional', 'network', '5e98a678eb851a', '5e98a678eb851b', '5e98a678eb851c', '5e98a678eb851d', '5e98a678eb851c', 21),
(267, 'educare5e9892f2ec85e', '5e98a678ef2e9', 'Better lower-level teamwork and more top level strategic management are among the expected  advantages  of  a  â€¦â€¦  structure', 'divisional  ', 'matrix ', 'geographical  ', 'product', '5e98a678ef2e9a', '5e98a678ef2e9b', '5e98a678ef2e9c', '5e98a678ef2e9d', '5e98a678ef2e9b', 22),
(268, 'educare5e9892f2ec85e', '5e98a67903962', 'â€˜Tallâ€™ organizations tend to have long chains of command and...........spans of control', 'wide ', 'narrow ', 'informal ', 'informal ', '5e98a67903962a', '5e98a67903962b', '5e98a67903962c', '5e98a67903962d', '5e98a67903962b', 23),
(269, 'educare5e9892f2ec85e', '5e98a6791009b', 'The unity-of-command principle is intentionally violated in the â€¦â€¦â€¦ structure', 'network ', 'matrix ', 'geographical ', 'product', '5e98a6791009ba', '5e98a6791009bb', '5e98a6791009bc', '5e98a6791009bd', '5e98a6791009bb', 24),
(270, 'educare5e9892f2ec85e', '5e98a67918185', 'In delegation, â€¦â€¦.. is the right of subordinate to act in ways needed to carry out the assigned task', 'authority ', 'responsibility ', 'accountability ', 'centrality', '5e98a67918185a', '5e98a67918185b', '5e98a67918185c', '5e98a67918185d', '5e98a67918185a', 25),
(271, 'educare5e9892f2ec85e', '5e98a6791c006', 'The functional chimneys problem occurs when people are in a different function â€¦â€¦â€¦', 'fail to communicate with one another', 'try to help each other work with customers', 'spend too much time coordinating decision ', 'focus on product rather than function', '5e98a6791c006a', '5e98a6791c006b', '5e98a6791c006c', '5e98a6791c006d', '5e98a6791c006a', 26),
(272, 'educare5e9892f2ec85e', '5e98a6792026f', 'A â€¦â€¦.. structure tries to combine the best element of the functional and divisional forms', 'matrix ', 'boundary less', 'team ', 'virtual', '5e98a6792026fa', '5e98a6792026fb', '5e98a6792026fc', '5e98a6792026fd', '5e98a6792026fa', 27),
(273, 'educare5e9892f2ec85e', '5e98a679244d8', 'Outsourcing plays a central role in the â€¦â€¦â€¦â€¦.. organization', 'functional ', 'divisional ', 'network ', 'team', '5e98a679244d8a', '5e98a679244d8b', '5e98a679244d8c', '5e98a679244d8d', '5e98a679244d8c', 28),
(274, 'educare5e9892f2ec85e', '5e98a67928358', 'A student volunteers to gather information on a company for a group case analysis project. The other members of the group agree and tell her that she can choose the information sources. This group is giving the student â€¦â€¦â€¦ to fulfill the agreed-upon task', 'responsibility ', 'accountability ', 'authority ', 'decentralization', '5e98a67928358a', '5e98a67928358b', '5e98a67928358c', '5e98a67928358d', '5e98a67928358c', 29),
(275, 'educare5e9892f2ec85e', '5e98a6792c5c1', 'The current trend in the use of staff in organizations is to..............', 'give staff personnel more functional authority over line operation', 'reduce the number of staff personnel overall ', 'better utilize IT to give staff more centralized control', 'combine all staff function in one department', '5e98a6792c5c1a', '5e98a6792c5c1b', '5e98a6792c5c1c', '5e98a6792c5c1d', '5e98a6792c5c1b', 30),
(276, 'educare5e98c0289c311', '5e98c94cc5ba2', 'Someone with a clear sense of the future and action needed to get there is considered a â€¦â€¦â€¦. leader', 'task-oriented ', 'people-oriented', 'transactional', 'visionary', '5e98c94cc5ba2a', '5e98c94cc5ba2b', '5e98c94cc5ba2c', '5e98c94cc5ba2d', '5e98c94cc5ba2d', 1),
(277, 'educare5e98c0289c311', '5e98c94cd327b', 'A manager who says â€œBecause I am the boss, you must do what I askâ€ is relying onâ€¦â€¦â€¦â€¦. power \r\n', 'reward ', 'legitimate ', 'expert ', 'referent', '5e98c94cd327ba', '5e98c94cd327bb', '5e98c94cd327bc', '5e98c94cd327bd', '5e98c94cd327bb', 2),
(278, 'educare5e98c0289c311', '5e98c94ce26a0', 'The personal traits now considered important for managerial success include â€¦â€¦â€¦.', 'self confidence ', 'gender ', 'age ', 'personality', '5e98c94ce26a0a', '5e98c94ce26a0b', '5e98c94ce26a0c', '5e98c94ce26a0d', '5e98c94ce26a0a', 3),
(279, 'educare5e98c0289c311', '5e98c94cf41d5', 'According to Blake and Mouton model of leader behaviors, the most successful leader is one who acts with	...............', 'high initiating structure', 'high consideration', 'high concern for task and high concern for people', 'low job stress and high task goals', '5e98c94cf41d5a', '5e98c94cf41d5b', '5e98c94cf41d5c', '5e98c94cf41d5d', '5e98c94cf41d5c', 4),
(280, 'educare5e98c0289c311', '5e98c94d0af5e', 'Vision, charisma, integrity, and symbolism are all on the list of attributes typically associated  with  â€¦â€¦â€¦..  leaders', 'contingency  ', 'informal  ', 'transformational ', 'transactional', '5e98c94d0af5ea', '5e98c94d0af5eb', '5e98c94d0af5ec', '5e98c94d0af5ed', '5e98c94d0af5ec', 5),
(281, 'educare5e98c0289c311', '5e98c94d1a383', 'â€¦â€¦â€¦.. leadership theory suggests that leadership success is achieved by correctly matching leadership styles with situations', 'Fiedlerâ€™s ', 'transformational ', 'trait ', 'Blake and Moutonâ€™s', '5e98c94d1a383a', '5e98c94d1a383b', '5e98c94d1a383c', '5e98c94d1a383d', '5e98c94d1a383a', 6),
(282, 'educare5e98c0289c311', '5e98c94d28420', 'In the leader-behaviour approaches to leadership, someone who does a very good job of planning work, setting standards, and monitoring results would be considered a(an)â€¦â€¦â€¦â€¦.  leader\r\n', 'task-oriented ', 'control-oriented  ', 'achievement  oriented  ', 'employee centered', '5e98c94d28420a', '5e98c94d28420b', '5e98c94d28420c', '5e98c94d28420d', '5e98c94d28420a', 7),
(283, 'educare5e98c0289c311', '5e98c94d3bca1', 'When a leader assumes that others will do as he asks because they want to positively identify with him, he is relying on........... power to influence their behavior', 'expert ', 'referent ', 'legitimate ', 'reward', '5e98c94d3bca1a', '5e98c94d3bca1b', '5e98c94d3bca1c', '5e98c94d3bca1d', '5e98c94d3bca1b', 8),
(284, 'educare5e98c0289c311', '5e98c94d40ac1', 'The interactive leadership style often associated with women is characterized byâ€¦â€¦â€¦..', 'inclusion and information sharing ', 'use of rewards and punishments ', 'command and control ', 'emphasis on position power', '5e98c94d40ac1a', '5e98c94d40ac1b', '5e98c94d40ac1c', '5e98c94d40ac1d', '5e98c94d40ac1a', 9),
(285, 'educare5e98c0289c311', '5e98c94d44f1d', 'A leader whose actions indicate an attitude of â€œdo as you want and donâ€™t bother meâ€ would be described as having a(an)...........leadership style ', 'autocratic ', 'country club', 'democratic ', 'laissez-faire', '5e98c94d44f1da', '5e98c94d44f1db', '5e98c94d44f1dc', '5e98c94d44f1dd', '5e98c94d44f1dd', 10),
(286, 'educare5e98c0289c311', '5e98c94d4937a', 'The four interrelated  functions of management process', 'planning, organizing, directing and controlling ', 'planning, organizing,   leading and controlling ', 'planning, staffing, reporting and controlling ', 'planning, coordinating, directing and controlling', '5e98c94d4937aa', '5e98c94d4937ab', '5e98c94d4937ac', '5e98c94d4937ad', '5e98c94d4937aa', 11),
(287, 'educare5e98c0289c311', '5e98c94d4ce12', 'A group of two or more people who work together in a consciously structured setting to achieve group goals  is called', 'organization ', 'management ', 'collaboration ', 'conglomerate', '5e98c94d4ce12a', '5e98c94d4ce12b', '5e98c94d4ce12c', '5e98c94d4ce12d', '5e98c94d4ce12a', 12),
(288, 'educare5e98c0289c311', '5e98c94d5126e', 'The ten (10) managerial roles were identified by', 'Henry Fayol ', 'Chester Bernard', 'Adam Smith ', 'Henry Mintzberg', '5e98c94d5126ea', '5e98c94d5126eb', '5e98c94d5126ec', '5e98c94d5126ed', '5e98c94d5126ed', 13),
(289, 'educare5e98c0289c311', '5e98c94d556ca', 'A manager who oversees all the functions and activities in a single organizational unit is  called ', 'functional  manager  ', 'project  manager  ', 'general manager ', 'sales manager', '5e98c94d556caa', '5e98c94d556cab', '5e98c94d556cac', '5e98c94d556cad', '5e98c94d556cac', 14),
(290, 'educare5e98c0289c311', '5e98c94d59163', 'Management expert; Robert Likert identified three (3) basic skills that managers need as', 'conceptual  skills,  organization  skills  and  technical  skills  ', 'conceptual skills, interpersonal skills and technical skills ', 'conceptual   skills,   human   skills   and organization skills ', 'behavioural skills, administrative skills and technical skills', '5e98c94d59163a', '5e98c94d59163b', '5e98c94d59163c', '5e98c94d59163d', '5e98c94d59163b', 15),
(291, 'educare5e98c0289c311', '5e98c94d5d5bf', 'â€¦â€¦ is the ability enabling people to use knowledge, method, techniques and equipments to perform specialized tasks', 'conceptual skills ', 'interpersonal skills ', 'behavioural skills ', 'technical skills', '5e98c94d5d5bfa', '5e98c94d5d5bfb', '5e98c94d5d5bfc', '5e98c94d5d5bfd', '5e98c94d5d5bfd', 16),
(292, 'educare5e98c0289c311', '5e98c94d61a1b', 'The three levels of management in an organization are', 'top-level, middle-level and first-level ', 'top-level, middle-level and departmental level ', 'divisional level, first-level and top-level ', 'middle-level, departmental level and divisional level', '5e98c94d61a1ba', '5e98c94d61a1bb', '5e98c94d61a1bc', '5e98c94d61a1bd', '5e98c94d61a1ba', 17),
(293, 'educare5e98c0289c311', '5e98c94d654b3', 'A person who establishes and operates an innovative business is called', 'manager', 'innovator ', 'entrepreneur ', 'idealist', '5e98c94d654b3a', '5e98c94d654b3b', '5e98c94d654b3c', '5e98c94d654b3d', '5e98c94d654b3c', 18),
(294, 'educare5e98c0289c311', '5e98c94d69910', 'All the following are forces that shape or affect the development of management theory  except  ', 'technological  forces  ', 'leadership forces ', 'economic forces  ', 'political forces', '5e98c94d69910a', '5e98c94d69910b', '5e98c94d69910c', '5e98c94d69910d', '5e98c94d69910b', 19),
(295, 'educare5e98c0289c311', '5e98c94d6dd6c', 'All the following except one were the early pioneer of management thoughts, were practitioners who wrote about their successes in solving the problems of handling large organizations', 'Charles  Babbage  ', 'Frederick  Taylor  ', 'Robert  Owen  ', 'Henry Townsend', '5e98c94d6dd6ca', '5e98c94d6dd6cb', '5e98c94d6dd6cc', '5e98c94d6dd6cd', '5e98c94d6dd6cd', 20),
(296, 'educare5e98c0289c311', '5e98c94d71804', 'The following are the 14 principles of management except ', 'division of work ', 'discipline ', 'unity of command ', 'decentralization', '5e98c94d71804a', '5e98c94d71804b', '5e98c94d71804c', '5e98c94d71804d', '5e98c94d71804d', 21),
(297, 'educare5e98c0289c311', '5e98c94d75c61', 'The principles of management that requires a combination of kindness and justice is', 'order ', 'equity ', 'centralization ', 'decentralization', '5e98c94d75c61a', '5e98c94d75c61b', '5e98c94d75c61c', '5e98c94d75c61d', '5e98c94d75c61b', 22),
(298, 'educare5e98c0289c311', '5e98c94d7a0bd', '...........is the management principle which states that each subordinates should report to only one superior ', 'span of management ', 'span of executive control ', 'unity of command ', 'unity of direction ', '5e98c94d7a0bda', '5e98c94d7a0bdb', '5e98c94d7a0bdc', '5e98c94d7a0bdd', '5e98c94d7a0bdc', 23),
(299, 'educare5e98c0289c311', '5e98c94d8a86a', 'according to Fayol,............ is the right to give orders and the power to exert obedience', 'responsibility ', 'authority ', 'management ', 'reporting ', '5e98c94d8a86aa', '5e98c94d8a86ab', '5e98c94d8a86ac', '5e98c94d8a86ad', '5e98c94d8a86ab', 24),
(300, 'educare5e98c0289c311', '5e98c94d913d6', 'Which of the following is not considered one of the managerial functions ', 'planning', 'directing ', 'organizing', 'motivating ', '5e98c94d913d6a', '5e98c94d913d6b', '5e98c94d913d6c', '5e98c94d913d6d', '5e98c94d913d6d', 25),
(301, 'educare5e98c0289c311', '5e98c94d98907', 'An organization is: ', 'a cultural structure ', 'an administrative structure ', 'a functional structure', 'b and c above ', '5e98c94d98907a', '5e98c94d98907b', '5e98c94d98907c', '5e98c94d98907d', '5e98c94d98907d', 26),
(302, 'educare5e98c0289c311', '5e98c94da2547', 'The Hawthorne effect is a phenomena credited to', 'Peter Drucker ', 'Elton Mayo ', 'Abraham Maslow ', 'Parker Follet ', '5e98c94da2f0ba', '5e98c94da2f0bb', '5e98c94da2f0bc', '5e98c94da2f0bd', '5e98c94da2f0bb', 27),
(303, 'educare5e98c0289c311', '5e98c94da69a4', 'Which of the following would not be considered as a basis for departmentalization ', 'function ', 'place ', 'authority ', 'customer ', '5e98c94da69a4a', '5e98c94da69a4b', '5e98c94da69a4c', '5e98c94da69a4d', '5e98c94da69a4c', 28),
(304, 'educare5e98c0289c311', '5e98c94daae00', 'Success  of  a  manager  is  a  function  of  managerial  ability,  desire  and .......... ', 'the right personality ', 'opportunity   ', 'intuition   ', 'degree in Business Administration', '5e98c94daae00a', '5e98c94daae00b', '5e98c94daae00c', '5e98c94daae00d', '5e98c94daae00a', 29),
(305, 'educare5e98c0289c311', '5e98c94dae898', 'In a changing environment, management is a problem solving process of effectively achieving organizational objectives through the efficient use of', 'time and money ', 'human effort ', 'scarce resources ', 'all of the above', '5e98c94dae898a', '5e98c94dae898b', '5e98c94dae898c', '5e98c94dae898d', '5e98c94dae898d', 30),
(306, 'educare5e990260cf2ab', '5e990bc3b3ebf', 'Leadership is formally defined as a process of ', 'authoritarian ', 'political influence', 'goal seeking ', 'influence', '5e990bc3b3ebfa', '5e990bc3b3ebfb', '5e990bc3b3ebfc', '5e990bc3b3ebfd', '5e990bc3b3ebfd', 1),
(307, 'educare5e990260cf2ab', '5e990bc3c0212', 'The first step in planning process is', 'forecasting ', 'scanning the environment ', 'selecting of courses of action ', 'controlling', '5e990bc3c0212a', '5e990bc3c0212b', '5e990bc3c0212c', '5e990bc3c0212d', '5e990bc3c0212b', 2),
(308, 'educare5e990260cf2ab', '5e990bc3e8a8c', 'The meaning of control involves', 'manipulating others towards a goal ', 'moral influence over societyâ€™s performance ', 'forcing others to perform activities ', 'measuring and guiding performance', '5e990bc3e8a8ca', '5e990bc3e8a8cb', '5e990bc3e8a8cc', '5e990bc3e8a8cd', '5e990bc3e8a8cd', 3),
(309, 'educare5e990260cf2ab', '5e990bc4026f7', 'A system is characterized by a(an)', 'linkages of communication among other systems  ', 'orderly grouping of identical components  ', 'a design oriented towards goal attainment ', 'a and b only', '5e990bc4026f7a', '5e990bc4026f7b', '5e990bc4026f7c', '5e990bc4026f7d', '5e990bc4026f7c', 4),
(310, 'educare5e990260cf2ab', '5e990bc417ebc', 'A system operating without exchange from the outside is referred to as', 'closed system', 'boundary versatile system ', 'unsophisticated system ', 'open system', '5e990bc417ebca', '5e990bc417ebcb', '5e990bc417ebcc', '5e990bc417ebcd', '5e990bc417ebca', 5),
(311, 'educare5e990260cf2ab', '5e990bc42fd91', 'Among the developers of management thought â€¦â€¦â€¦â€¦â€¦.. is not on the list of behavioural scientists', 'Argyris ', 'Maslow ', 'McGregor ', 'Taylor ', '5e990bc42fd91a', '5e990bc42fd91b', '5e990bc42fd91c', '5e990bc42fd91d', '5e990bc42fd91d', 6),
(312, 'educare5e990260cf2ab', '5e990bc433c12', 'One of the following is not a widely used method of forecasting', 'Hunches ', 'market survey ', 'time series ', 'Gantt Chart ', '5e990bc433c12a', '5e990bc433c12b', '5e990bc433c12c', '5e990bc433c12d', '5e990bc433c12a', 7),
(313, 'educare5e990260cf2ab', '5e990bc439dbc', 'Which of the following is not interpersonal?', 'spokesman ', 'figurehead ', 'leadership ', 'liaison ', '5e990bc439dbca', '5e990bc439dbcb', '5e990bc439dbcc', '5e990bc439dbcd', '5e990bc439dbca', 8),
(314, 'educare5e990260cf2ab', '5e990bc43ff65', 'Which of the following traits is inborn?', 'initiative ', 'maturity ', 'ambition ', 'ability to get along with others ', '5e990bc43ff65a', '5e990bc43ff65b', '5e990bc43ff65c', '5e990bc43ff65d', '5e990bc43ff65d', 9),
(315, 'educare5e990260cf2ab', '5e990bc4441ce', 'The management theorist who is referred to as the â€œfather of personnel managementâ€ is', 'Charles Babbage ', 'Lyndall Urwick ', 'Robert Owen ', 'Mary Parker Follet ', '5e990bc4441cea', '5e990bc4441ceb', '5e990bc4441cec', '5e990bc4441ced', '5e990bc4441cec', 10),
(316, 'educare5e990260cf2ab', '5e990bc44804f', 'The management theorist who is remembered for his book titled â€œ the humanside of enterpriseâ€ is', 'George Elton Mayo ', 'Douglas McGregor ', 'Fredrick Herzberg ', 'Peter Drucker ', '5e990bc44804fa', '5e990bc44804fb', '5e990bc44804fc', '5e990bc44804fd', '5e990bc44804fb', 11),
(317, 'educare5e990260cf2ab', '5e990bc44c2b8', 'Line authority is', 'an application of the principle of Unity of Command ', 'is best used sparingly ', 'is somewhat advisory in nature ', 'is the power to make decisions', '5e990bc44c2b8a', '5e990bc44c2b8b', '5e990bc44c2b8c', '5e990bc44c2b8d', '5e990bc44c2b8a', 12),
(318, 'educare5e990260cf2ab', '5e990bc450521', 'In describing the levels of management, the managers that coordinate input and output are the', 'administrative managers ', 'institutionary managers ', 'first line managers ', 'top managers', '5e990bc450521a', '5e990bc450521b', '5e990bc450521c', '5e990bc450521d', '5e990bc450521d', 13),
(319, 'educare5e990260cf2ab', '5e990bc4543a2', 'Management levels in an organization exist in order to bring about coordinated authority and responsibility. The method by which this is achieved is called', 'accountability ', 'delegative process ', 'scalar process ', 'managerial process', '5e990bc4543a2a', '5e990bc4543a2b', '5e990bc4543a2c', '5e990bc4543a2d', '5e990bc4543a2c', 14),
(320, 'educare5e990260cf2ab', '5e990bc458223', 'Which of the following management scientists is not a classical scientist ', 'Frank and Lillian Gilbert ', 'Charles Babbage ', 'C.J. Bernard ', 'Rensis Likert', '5e990bc45860ba', '5e990bc45860bb', '5e990bc45860bc', '5e990bc45860bd', '5e990bc45860bc', 15),
(321, 'educare5e990260cf2ab', '5e990bc45d044', 'The degree to which individuals and organizations achieve the organizational goals with effectiveness   and efficiency is called', 'productivity ', 'management   ', 'profitability ', 'performance', '5e990bc45d044a', '5e990bc45d044b', '5e990bc45d044c', '5e990bc45d044d', '5e990bc45d044a', 16),
(322, 'educare5e990260cf2ab', '5e990bc4606f5', 'All except one are proponents of behavioral theory of management', 'Max Weber ', 'Abraham Maslow ', 'Herzberg ', 'Douglas McGregor', '5e990bc4606f5a', '5e990bc4606f5b', '5e990bc4606f5c', '5e990bc4606f5d', '5e990bc4606f5a', 17),
(323, 'educare5e990260cf2ab', '5e990bc46689e', 'Resources used by a manager to accomplish their objectives are the following except', 'human  resources  ', 'financial  resources  ', 'physical  resources  ', 'decision resources', '5e990bc46689ea', '5e990bc46689eb', '5e990bc46689ec', '5e990bc46689ed', '5e990bc46689ed', 18),
(324, 'educare5e990260cf2ab', '5e990bc46ab07', 'Job enrichment attempts to', 'make  work  more  increasing  ', 'make work more intrinsically satisfying ', 'manipulation of workers ', 'take the drudger out of work ', '5e990bc46ab07a', '5e990bc46ab07b', '5e990bc46ab07c', '5e990bc46ab07d', '5e990bc46ab07b', 19),
(325, 'educare5e990260cf2ab', '5e990bc46e988', 'Organizational goals are measured in terms  of ', 'synergy  ', 'performance ', 'bureaucracy ', 'management', '5e990bc46e988a', '5e990bc46e988b', '5e990bc46e988c', '5e990bc46e988d', '5e990bc46e988b', 20),
(326, 'educare5e990260cf2ab', '5e990bc47ef44', 'The measure of optimum resource utilization by firms is called', 'effectiveness ', 'performance ', 'efficiency ', 'management', '5e990bc47ef44a', '5e990bc47ef44b', '5e990bc47ef44c', '5e990bc47ef44d', '5e990bc47ef44c', 21),
(327, 'educare5e990260cf2ab', '5e990bc4831ad', '............is a person who is responsible for the work performance of group members', 'supervisor ', 'manager ', 'foreman ', 'inspector', '5e990bc4831ada', '5e990bc4831adb', '5e990bc4831adc', '5e990bc4831add', '5e990bc4831ada', 22),
(328, 'educare5e990260cf2ab', '5e990bc489356', 'The proponent of Management by Objective (MBO) is', 'Victor Vroom ', 'McGregor', 'Peter Drucker ', 'Maslow', '5e990bc489356a', '5e990bc489356b', '5e990bc489356c', '5e990bc489356d', '5e990bc489356c', 23),
(329, 'educare5e990260cf2ab', '5e990bc48d5bf', 'A set of management theories that focus on increasing the efficiency of the organization as a whole is called', 'classical management ', 'scientific management', 'behavioral management ', 'contingency management', '5e990bc48d5bfa', '5e990bc48d5bfb', '5e990bc48d5bfc', '5e990bc48d5bfd', '5e990bc48d5bfa', 24),
(330, 'educare5e990260cf2ab', '5e990bc491440', 'Henry Fayol is best known for his', 'behavioral management principle ', 'bureaucratic   principle   ', 'administrative management principle ', 'quantitative management', '5e990bc491440a', '5e990bc491440b', '5e990bc491440c', '5e990bc491440d', '5e990bc491440c', 25),
(331, 'educare5e990260cf2ab', '5e990bc4956a9', 'All the following except one is a proponent of scientific management thought', 'Charles Babbage ', 'Frederick Taylor ', 'Lillian Gilbreth ', 'Hamingo Emerson', '5e990bc4956a9a', '5e990bc4956a9b', '5e990bc4956a9c', '5e990bc4956a9d', '5e990bc4956a9a', 26),
(332, 'educare5e990260cf2ab', '5e990bc499912', 'A management theory that views employees as responding to the interpersonal process  within  the  work  unit  is  called', 'human relatives movement ', 'behavioral movement ', 'administrative movement ', 'contingency movement', '5e990bc499912a', '5e990bc499912b', '5e990bc499912c', '5e990bc499912d', '5e990bc499912a', 27),
(333, 'educare5e990260cf2ab', '5e990bc4a5c65', 'A management philosophy in which employees are seen as lazy, unambituous and in need of coercion to complete work tasks is referred to as', 'theory Y', 'theory Z', 'theory W', 'theory X', '5e990bc4a5c65a', '5e990bc4a5c65b', '5e990bc4a5c65c', '5e990bc4a5c65d', '5e990bc4a5c65d', 28),
(334, 'educare5e990260cf2ab', '5e990bc4add4f', 'Management philosophy which sees employees as interested in assuming responsibilities, capable of innovative approach to work problems, and having no inherent distaste for work is', 'theory Z', 'theory Y', 'theory X', 'theory W', '5e990bc4add4fa', '5e990bc4add4fb', '5e990bc4add4fc', '5e990bc4add4fd', '5e990bc4add4fb', 29),
(335, 'educare5e990260cf2ab', '5e990bc4b3ef8', 'Which of the following emphasizes teamwork and group effort in achieving organization objectives ', 'scalar chain ', 'initiatives ', 'espirit-de-corps ', 'stability of tenure', '5e990bc4b3ef8a', '5e990bc4b3ef8b', '5e990bc4b3ef8c', '5e990bc4b3ef8d', '5e990bc4b3ef8c', 30),
(336, '5e7e0d13f2243', '5e998170629b8', 'Which of these is not a reference material', 'Encyclopedia ', 'Dictionaries ', 'Journals', 'Atlases', '5e998170629b8a', '5e998170629b8b', '5e998170629b8c', '5e998170629b8d', '5e998170629b8c', 21),
(337, '5e7e0d13f2243', '5e99817097193', 'in the Deweys classification scheme, class 800 stands for', 'Arts', 'Literature', 'Education', 'Law', '5e99817097193a', '5e99817097193b', '5e99817097193c', '5e99817097193d', '5e99817097193b', 22),
(338, '5e7e0d13f2243', '5e998170ab3d9', 'A concise summary of a book or journal article is known as', 'Abstract', 'Introduction ', 'Review', 'Preface', '5e998170ab3d9a', '5e998170ab3d9b', '5e998170ab3d9c', '5e998170ab3d9d', '5e998170ab3d9a', 23),
(339, '5e7e0d13f2243', '5e998170bf61e', 'Materials on the recent accession shelves in libraries are', 'current awareness publications ', 'Accession books ', 'Recently Acquired Materials', 'recent events', '5e998170bf61ea', '5e998170bf61eb', '5e998170bf61ec', '5e998170bf61ed', '5e998170bf61ec', 24),
(340, '5e7e0d13f2243', '5e998170c9c23', 'The placement of books into relevant fields is known as', 'Accessioning ', 'Classification', 'Arranging ', 'Sorting', '5e998170c9c23a', '5e998170c9c23b', '5e998170c9c23c', '5e998170c9c23d', '5e998170c9c23b', 25),
(341, '5e7e0d13f2243', '5e998170cd6bb', 'The acknowledgement of full sources used in the course of research is', 'Copyright ', 'Referencing', 'Fair Use ', 'Cataloguing', '5e998170cd6bba', '5e998170cd6bbb', '5e998170cd6bbc', '5e998170cd6bbd', '5e998170cd6bbb', 26),
(342, '5e7e0d13f2243', '5e998170d1b17', 'Tertiary publications do not include one of the following', 'Textbooks ', 'Encyclopedias ', 'Abstracting Journals', 'Handbooks', '5e998170d1b17a', '5e998170d1b17b', '5e998170d1b17c', '5e998170d1b17d', '5e998170d1b17c', 27),
(343, '5e7e0d13f2243', '5e998170d7cbf', 'The British Council arrived Nigeria and established its library in', '1943 ', '1936', '1842', '1970', '5e998170d7cbfa', '5e998170d7cbfb', '5e998170d7cbfc', '5e998170d7cbfd', '5e998170d7cbfa', 28),
(344, '5e7e0d13f2243', '5e998170dc11c', 'The classification scheme that divides the whole body of knowledge into 21 main classes is', 'UDC ', 'LC ', 'Moys', 'All of the Above', '5e998170dc11ca', '5e998170dc11cb', '5e998170dc11cc', '5e998170dc11cd', '5e998170dc11cb', 29),
(345, '5e7e0d13f2243', '5e998170e4010', 'The classification schemes that divides the whole body of knowledge into 10 main classes is', 'Moys', 'LC', 'Dewey Decimal', 'National Library of Medicine', '5e998170e4010a', '5e998170e4010b', '5e998170e4010c', '5e998170e4010d', '5e998170e4010c', 30),
(351, 'educare5eaec272f2c59', '5eaed0f2badea', 'Call Number of a Book Means', 'Book Number', 'Class Number', 'Both (A) and (B) are true', 'None of the above', '5eaed0f2badeaa', '5eaed0f2badeab', '5eaed0f2badeac', '5eaed0f2badead', '5eaed0f2badeac', 1),
(352, 'educare5eaec272f2c59', '5eaed0f2e49ec', 'Accession Number means', 'Call Number of a book', 'Unique Number for a book inside a particular library', 'Book Number', 'Class number', '5eaed0f2e49eca', '5eaed0f2e49ecb', '5eaed0f2e49ecc', '5eaed0f2e49ecd', '5eaed0f2e49ecb', 2),
(353, 'educare5eaec272f2c59', '5eaed0f31170c', 'How many digits have in the ISSN', '10', '8', '13', '15', '5eaed0f31170ca', '5eaed0f31170cb', '5eaed0f31170cc', '5eaed0f31170cd', '5eaed0f31170cb', 3),
(354, 'educare5eaec272f2c59', '5eaed0f3178b5', 'How many columns are there in the accession register?', '10', '12', '14', '16', '5eaed0f3178b5a', '5eaed0f3178b5b', '5eaed0f3178b5c', '5eaed0f3178b5d', '5eaed0f3178b5c', 5);
INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `oa`, `ob`, `oc`, `od`, `oaid`, `obid`, `ocid`, `odid`, `ansid`, `sn`) VALUES
(355, 'educare5eaec272f2c59', '5eaed0f31f99f', 'Payments for the books purchased can be made only after', 'Accessioning', 'Classification', 'Cataloguing', 'Arrangement in the shelve', '5eaed0f31f99fa', '5eaed0f31f99fb', '5eaed0f31f99fc', '5eaed0f31f99fd', '5eaed0f31f99fa', 6),
(356, 'educare5eaec272f2c59', '5eaed0f323c08', 'The standard size of an accession register is ?', '15â€ x 13â€', '16\" x 13â€', '12â€ x 5â€', '5â€ x 3â€', '5eaed0f323c08a', '5eaed0f323c08b', '5eaed0f323c08c', '5eaed0f323c08d', '5eaed0f323c08b', 7),
(357, 'educare5eaec272f2c59', '5eaed0f327a89', 'Classification section performs mainly two functions namely classification and.......................', 'Accessioning', 'Bills payment', 'Cataloguing', 'shelving', '5eaed0f327a89a', '5eaed0f327a89b', '5eaed0f327a89c', '5eaed0f327a89d', '5eaed0f327a89c', 8),
(358, 'educare5eaec272f2c59', '5eaed0f32bcf2', 'Getting books back from the users and releasing the borrowerâ€™s ticket is known as', 'Charging', 'Holding', 'Reserving', 'Discharging', '5eaed0f32bcf2a', '5eaed0f32bcf2b', '5eaed0f32bcf2c', '5eaed0f32bcf2d', '5eaed0f32bcf2d', 9),
(359, 'educare5eaec272f2c59', '5eaed0f32ff5b', 'While entering the library, the personal belongings of a reader is kept in....................	', 'Cloak Room', 'Property Counter', 'Gate counter', 'Store room', '5eaed0f32ff5ba', '5eaed0f32ff5bb', '5eaed0f32ff5bc', '5eaed0f32ff5bd', '5eaed0f32ff5ba', 10),
(360, 'educare5eaec272f2c59', '5eaed0f336105', 'Books misplaced on the shelves by readers are restored. This work is referred to as', 'Shelving', 'Stock verification', 'Shelf rectification', 'Shifting', '5eaed0f336105a', '5eaed0f336105b', '5eaed0f336105c', '5eaed0f336105d', '5eaed0f336105c', 11),
(361, 'educare5eaec272f2c59', '5eaed0f339f85', 'Outdated and seldom used books are withdrawn from the library is known as................. 	', 'Shelving', 'Weeding', 'circulating', 'Guiding', '5eaed0f339f85a', '5eaed0f339f85b', '5eaed0f339f85c', '5eaed0f339f85d', '5eaed0f339f85b', 12),
(362, 'educare5eaec272f2c59', '5eaed0f33e1ee', 'The objective of library binding is...... of the library materials', 'Proper organisation', 'Accessibility', 'Durability', 'Humidity control', '5eaed0f33e1eea', '5eaed0f33e1eeb', '5eaed0f33e1eec', '5eaed0f33e1eed', '5eaed0f33e1eec', 13),
(363, 'educare5eaec272f2c59', '5eaed0f342457', 'part and pages of a volume are correctly sequenced in the first stage of binding. this process is known as?', 'Sewing', 'Guard', 'pulling', 'collation', '5eaed0f342457a', '5eaed0f342457b', '5eaed0f342457c', '5eaed0f342457d', '5eaed0f342457d', 14),
(364, 'educare5eaec272f2c59', '5eaed0f3462d8', 'Sheets before and after the text of a book are called...............', 'End papers', 'Attach cover', 'Head bands', 'Gilding', '5eaed0f3462d8a', '5eaed0f3462d8b', '5eaed0f3462d8c', '5eaed0f3462d8d', '5eaed0f3462d8a', 15),
(365, 'educare5eaec272f2c59', '5eaed0f35aafd', '...............is one of the records of circulation section', 'Accession Register', 'Day book', 'Catalogue Card', 'AACR-2 (R)', '5eaed0f35aafda', '5eaed0f35aafdb', '5eaed0f35aafdc', '5eaed0f35aafdd', '5eaed0f35aafda', 16),
(366, 'educare5eaec272f2c59', '5eaed0f35ed66', 'Physical condition of the books should be property maintained. This is known as', 'Collation', 'Conservation', 'Shelf-arrangement', 'Organization', '5eaed0f35ed66a', '5eaed0f35ed66b', '5eaed0f35ed66c', '5eaed0f35ed66d', '5eaed0f35ed66b', 17),
(367, 'educare5eaec272f2c59', '5eaed0f362be7', '................is an important record of books, which shows the position of any book on the shelves.', 'Bay Guide', 'Authority File', 'Accession List', 'Shelf List', '5eaed0f362be7a', '5eaed0f362be7b', '5eaed0f362be7c', '5eaed0f362be7d', '5eaed0f362be7d', 18),
(368, 'educare5eaec272f2c59', '5eaed0f366e50', 'Three great achievements in U.S.A. were noticed i.e. enunciation of DDC classification scheme, formation of American Library Association and the publication of 1st Journal of the librarianship in the year', '1857', '1859', '1876', '1901', '5eaed0f366e50a', '5eaed0f366e50b', '5eaed0f366e50c', '5eaed0f366e50d', '5eaed0f366e50c', 19),
(369, 'educare5eaec272f2c59', '5eaed0f36cff9', 'Books lost from the library are known through...............', 'Stock verification', 'Charging and discharging', 'Shelf list', 'Accession Register', '5eaed0f36cff9a', '5eaed0f36cff9b', '5eaed0f36cff9c', '5eaed0f36cff9d', '5eaed0f36cff9a', 20),
(370, 'educare5eaec272f2c59', '5eaed0f371262', 'is the Library Association of', 'Manipur', 'Andhra Pradesh', 'Great Britain', 'Canada', '5eaed0f371262a', '5eaed0f371262b', '5eaed0f371262c', '5eaed0f371262d', '5eaed0f371262c', 21),
(371, 'educare5eaec272f2c59', '5eaed0f3750e3', 'the following libraries in India, which one is the oldest library?', 'Asiatic Society Library, Bombay', 'Connemara Public Library, Madras', 'Delhi Public Library, Delhi', 'National Library of India, Calcutta.', '5eaed0f3750e3a', '5eaed0f3750e3b', '5eaed0f3750e3c', '5eaed0f3750e3d', '5eaed0f3750e3d', 22),
(372, 'educare5eaec272f2c59', '5eaed0f37934c', 'The first centre to use computer in the library and information activities in India is', 'DESIDOC', 'INSDOC', 'DRTC', 'UGC', '5eaed0f37934ca', '5eaed0f37934cb', '5eaed0f37934cc', '5eaed0f37934cd', '5eaed0f37934cb', 23),
(373, 'educare5eaec272f2c59', '5eaed0f37d5b5', 'NICNET and INDONET are the networks of which category?', 'LAN', 'MAN', 'WAN', 'IN', '5eaed0f37d5b5a', '5eaed0f37d5b5b', '5eaed0f37d5b5c', '5eaed0f37d5b5d', '5eaed0f37d5b5c', 24),
(374, 'educare5eaec272f2c59', '5eaed0f381436', 'Resource sharing is a part of â€¦', 'Library cooperation', 'Library administration', 'Library management', 'Library cataloguing', '5eaed0f381436a', '5eaed0f381436b', '5eaed0f381436c', '5eaed0f381436d', '5eaed0f381436a', 25),
(375, 'educare5eaec272f2c59', '5eaed0f3875e0', 'Which one is a full text e-Resource?', 'JCCC', 'ISID', 'Science finder scholar', 'ACS', '5eaed0f3879c8a', '5eaed0f3879c8b', '5eaed0f3879c8c', '5eaed0f3879c8d', '5eaed0f3879c8d', 26),
(376, 'educare5eaec272f2c59', '5eaed0f38b849', 'Which one is E-Bibliographic database?', 'Nature', 'Blackwell', 'ISID', 'Springer', '5eaed0f38b849a', '5eaed0f38b849b', '5eaed0f38b849c', '5eaed0f38b849d', '5eaed0f38b849c', 27),
(377, 'educare5eaec272f2c59', '5eaed0f38fab2', 'Virtua accommodates Different version of the MARC Standard?', 'USMARC', 'UKMARC', 'CANMARC', 'SWEMARC/All of above', '5eaed0f38fab2a', '5eaed0f38fab2b', '5eaed0f38fab2c', '5eaed0f38fab2d', '5eaed0f38fab2d', 28),
(378, 'educare5eaec272f2c59', '5eaed0f393d1b', 'Which is the journal of Library and Information Science', 'Abacus', 'Acta numerica', 'Interlending and Document supply', 'All of above', '5eaed0f393d1ba', '5eaed0f393d1bb', '5eaed0f393d1bc', '5eaed0f393d1bd', '5eaed0f393d1bc', 29),
(379, 'educare5eaec272f2c59', '5eaed0f397b9b', 'The Electronic Library is......................', 'A Magazine', 'A Journal Name', 'A LIbrary', 'An Encyclopeadia', '5eaed0f397b9ba', '5eaed0f397b9bb', '5eaed0f397b9bc', '5eaed0f397b9bd', '5eaed0f397b9bb', 30),
(380, 'educare5eaec272f2c59', '5eaede9e8cf4f', 'what is the use of Shelf list', 'Cataloguing', 'Circulation', 'Stock verification', 'Book selection', '5eaede9e8cf4fa', '5eaede9e8cf4fb', '5eaede9e8cf4fc', '5eaede9e8cf4fd', '5eaede9e8cf4fc', 4),
(383, 'educare5eb07b104c91c', '5eb0859ea5654', 'The two major types of research design in education are', 'Descriptive and correlative', 'Experimental and survey', 'Experimental and descriptive', 'Descriptive and survey', '5eb0859ea5654a', '5eb0859ea5654b', '5eb0859ea5654c', '5eb0859ea5654d', '5eb0859ea5654c', 1),
(384, 'educare5eb07b104c91c', '5eb0859ebb5e6', 'Sampling could be?', 'probability and randomization', 'non-probability and randomization', 'accidental and probability', 'probability and non-probability', '5eb0859ebb5e6a', '5eb0859ebb5e6b', '5eb0859ebb5e6c', '5eb0859ebb5e6d', '5eb0859ebb5e6d', 2),
(385, 'educare5eb07b104c91c', '5eb0859eca047', 'A sampling technique in which each element or member of a population has equal chances of been selected is known as', 'Stratified sampling', 'Purposive sampling', 'Proportionate sampling', 'Probability sampling', '5eb0859eca047a', '5eb0859eca047b', '5eb0859eca047c', '5eb0859eca047d', '5eb0859eca047d', 3),
(386, 'educare5eb07b104c91c', '5eb0859edffd8', '.................is a process of selecting units from much larger populations.', 'Probability', 'Randomization', 'Manipulation', 'Sampling', '5eb0859edffd8a', '5eb0859edffd8b', '5eb0859edffd8c', '5eb0859edffd8d', '5eb0859edffd8d', 4),
(387, 'educare5eb07b104c91c', '5eb0859f0c32e', 'A sampling technique in which a research does not have a way of predicting, estimating or guaranteeing that each element in the population will be represent in the sampling is', 'Quota', 'Snowball', 'Purposive', 'Non-probability', '5eb0859f0c32ea', '5eb0859f0c32eb', '5eb0859f0c32ec', '5eb0859f0c32ed', '5eb0859f0c32ed', 5),
(388, 'educare5eb07b104c91c', '5eb0859f0fdc6', '..........is a complete list of individuals in a population from which a researcher selects.', 'Population', 'Population frame', 'Population size', 'Population density', '5eb0859f0fdc6a', '5eb0859f0fdc6b', '5eb0859f0fdc6c', '5eb0859f0fdc6d', '5eb0859f0fdc6b', 6),
(389, 'educare5eb07b104c91c', '5eb0859f15f6f', '..................is a group of individual that have one or more characteristics in common which are of interest to the researcher.', 'Population', 'Population frame', 'population density', 'population size', '5eb0859f15f6fa', '5eb0859f15f6fb', '5eb0859f15f6fc', '5eb0859f15f6fd', '5eb0859f15f6fa', 7),
(390, 'educare5eb07b104c91c', '5eb0859f1a623', 'The purpose of sampling include the following except', 'Problem of large size', 'Time constraint', 'Weight of report', 'Randomization', '5eb0859f1a623a', '5eb0859f1a623b', '5eb0859f1a623c', '5eb0859f1a623d', '5eb0859f1a623d', 8),
(391, 'educare5eb07b104c91c', '5eb0859f1e313', 'The sampling involving starting with a small number of consenting subjects from which other possible subjects are obtained is', 'Accidental', 'Quota', 'Snowball', 'Convenience', '5eb0859f1e313a', '5eb0859f1e313b', '5eb0859f1e313c', '5eb0859f1e313d', '5eb0859f1e313c', 9),
(392, 'educare5eb07b104c91c', '5eb0859f24713', '...........is not one of the major types of research.', 'Listed population', 'Homogeneous', 'Heterogeneous', 'Unlisted', '5eb0859f24713a', '5eb0859f24713b', '5eb0859f24713c', '5eb0859f24713d', '5eb0859f24713d', 10),
(393, 'educare5eb07b104c91c', '5eb0859f28b6f', 'What type of research design best describe the relationship between two variable?', 'Expost-facto', 'Relational', 'Correlational', 'Survey', '5eb0859f28b6fa', '5eb0859f28b6fb', '5eb0859f28b6fc', '5eb0859f28b6fd', '5eb0859f28b6fc', 11),
(394, 'educare5eb07b104c91c', '5eb0859f2c608', 'All are components of a research design except', 'Population', 'Sampling', 'Grouping', 'Data analysis', '5eb0859f2c608a', '5eb0859f2c608b', '5eb0859f2c608c', '5eb0859f2c608d', '5eb0859f2c608c', 12),
(395, 'educare5eb07b104c91c', '5eb0859f327b0', 'A framework or structure to be followed in conducting a research is known as', 'Strategy', 'Sampling techniques', 'Research methodology', 'Research design', '5eb0859f327b0a', '5eb0859f327b0b', '5eb0859f327b0c', '5eb0859f327b0d', '5eb0859f327b0d', 13),
(396, 'educare5eb07b104c91c', '5eb0859f36c0c', 'Activities carried out within a design specifications are', 'Sampling techniques', 'Research method', 'Research design', 'Research methodology', '5eb0859f36c0ca', '5eb0859f36c0cb', '5eb0859f36c0cc', '5eb0859f36c0cd', '5eb0859f36c0cb', 14),
(397, 'educare5eb07b104c91c', '5eb0859f3b069', 'A survey research topic could start with any of the following phrases except', 'Influence of', 'Impact of', 'Effect of', 'Perception of', '5eb0859f3b069a', '5eb0859f3b069b', '5eb0859f3b069c', '5eb0859f3b069d', '5eb0859f3b069d', 15),
(398, 'educare5eb07b104c91c', '5eb0859f3eb01', 'Scale of data does not include', 'Ordinal', 'Interval', 'Dichotomy', 'Nominal', '5eb0859f3eb01a', '5eb0859f3eb01b', '5eb0859f3eb01c', '5eb0859f3eb01d', '5eb0859f3eb01c', 16),
(399, 'educare5eb07b104c91c', '5eb0859f42f5d', 'The two types of statistics are', 'Descriptive and non-parametric', 'Descriptive and inferential', 'Descriptive and t-test', 'Inferential and parametric', '5eb0859f42f5da', '5eb0859f42f5db', '5eb0859f42f5dc', '5eb0859f42f5dd', '5eb0859f42f5db', 17),
(400, 'educare5eb07b104c91c', '5eb0859f49105', '.............is a variable that cannot be controlled or measured directly but may have important effect upon the outcome', 'Moderator variable', 'Extraneous variable', 'Intervening variable', 'Dependent variable', '5eb0859f49105a', '5eb0859f49105b', '5eb0859f49105c', '5eb0859f49105d', '5eb0859f49105c', 18),
(401, 'educare5eb07b104c91c', '5eb0859f4d562', 'Treatment of data to reduce them to a point that they can be meaningfully interpreted is called', 'Data collection', 'Findings', 'Data interpretation', 'Data and analysis', '5eb0859f4d562a', '5eb0859f4d562b', '5eb0859f4d562c', '5eb0859f4d562d', '5eb0859f4d562a', 19),
(402, 'educare5eb07b104c91c', '5eb0859f50ffa', 'One of the purpose of a research design includes to', 'Collect data', 'Identify variables', 'Answer research question', 'Carry out experiment', '5eb0859f50ffaa', '5eb0859f50ffab', '5eb0859f50ffac', '5eb0859f50ffad', '5eb0859f50ffac', 20),
(403, 'educare5eb07b104c91c', '5eb0859f55456', 'Population of unlisted members or individuals who are known to exist together in different location is 	population', 'Grouped', 'Scattered', 'Accessible', 'Clustered', '5eb0859f55456a', '5eb0859f55456b', '5eb0859f55456c', '5eb0859f55456d', '5eb0859f55456d', 21),
(404, 'educare5eb07b104c91c', '5eb0859f63eb7', 'How do we classify all university lecturers of a country?', 'Group of population', 'Scattered  population', 'Clustered population', 'Target population', '5eb0859f63eb7a', '5eb0859f63eb7b', '5eb0859f63eb7c', '5eb0859f63eb7d', '5eb0859f63eb7b', 22),
(405, 'educare5eb07b104c91c', '5eb0859f6794f', 'A research designed to investigate cause and effect relationship is', 'Correlational', 'Quasi-experimental', 'Experimental', 'Expost-facto', '5eb0859f6794fa', '5eb0859f6794fb', '5eb0859f6794fc', '5eb0859f6794fd', '5eb0859f6794fd', 23),
(406, 'educare5eb07b104c91c', '5eb0859f6daf8', '.............is the quantitative analysis or investigation of the strength of relationship between two or more variables', 'Correlational', 'Quasi-experimental', 'Experimental', 'Expost-facto', '5eb0859f6daf8a', '5eb0859f6daf8b', '5eb0859f6daf8c', '5eb0859f6daf8d', '5eb0859f6daf8a', 24),
(407, 'educare5eb07b104c91c', '5eb0859f71f54', '..............research involves comparing a group that receives an intervention with another that does not receive the intervention.', 'Expost-facto', 'Quasi-experimental', 'Correlational', 'Experimental', '5eb0859f71f54a', '5eb0859f71f54b', '5eb0859f71f54c', '5eb0859f71f54d', '5eb0859f71f54c', 25),
(408, 'educare5eb07b104c91c', '5eb0859f759ec', 'A research whose data may be prone to errors or bias mostly is', 'Historical', 'Cross-sectional', 'Clinical', 'Descriptive', '5eb0859f759eca', '5eb0859f759ecb', '5eb0859f759ecc', '5eb0859f759ecd', '5eb0859f759eca', 26),
(409, 'educare5eb07b104c91c', '5eb0859f79e48', 'Library, field, clinical, laboratory and cross- sectional are classes of research based on', 'Purpose', 'Methods', 'Setting', 'Nature of knowledge', '5eb0859f79e48a', '5eb0859f79e48b', '5eb0859f79e48c', '5eb0859f79e48d', '5eb0859f79e48c', 27),
(410, 'educare5eb07b104c91c', '5eb0859f7e2a5', 'Experimental, Expost-facto, quasi-experimental and historical are classes of research based on', 'Methods', 'Setting', 'Purpose', 'Nature of knowledge', '5eb0859f7e2a5a', '5eb0859f7e2a5b', '5eb0859f7e2a5c', '5eb0859f7e2a5d', '5eb0859f7e2a5a', 28),
(411, 'educare5eb07b104c91c', '5eb0859f81d3d', 'Researches serve the following purposes except', 'Stating the objectives of phenomena', 'Describing and explaining of events', 'Answering professional questions', 'Making informed decisions', '5eb0859f81d3da', '5eb0859f81d3db', '5eb0859f81d3dc', '5eb0859f81d3dd', '5eb0859f81d3da', 29),
(412, 'educare5eb07b104c91c', '5eb0859f87ee5', 'A process of making reference to past authors who had worked on studies similar to current study is generally referred to as', 'Citation of literature', 'Review of literature', 'Literature citation', 'Literature review', '5eb0859f87ee5a', '5eb0859f87ee5b', '5eb0859f87ee5c', '5eb0859f87ee5d', '5eb0859f87ee5d', 30),
(413, 'educare5eb9830a55663', '5eb9905bc8c79', '..............stratified management into three (3) tiers ', 'Gibson ', 'Breach ', 'Koontz ', 'Pedomade', '5eb9905bc8c79a', '5eb9905bc8c79b', '5eb9905bc8c79c', '5eb9905bc8c79d', '5eb9905bc8c79b', 1),
(414, 'educare5eb9830a55663', '5eb9905bde246', 'The term a tree does not make a forest is emphasized by........', 'dunshine', 'adam ', 'Florence ', 'Perlomode', '5eb9905bde246a', '5eb9905bde246b', '5eb9905bde246c', '5eb9905bde246d', '5eb9905bde246d', 2),
(415, 'educare5eb9830a55663', '5eb9905be43ee', 'Poscorb is known as a ........given by Gulick and Urwick ', 'Hyperbole ', 'Phrase ', 'mnemonic ', 'programme', '5eb9905be43eea', '5eb9905be43eeb', '5eb9905be43eec', '5eb9905be43eed', '5eb9905be43eec', 3),
(416, 'educare5eb9830a55663', '5eb9905be920f', '..........was a notable contributor	towards crific management approach', 'Fredrick Winslow Taylor', 'Adams Smith', 'Chester I Bonnard', 'Charles modrick', '5eb9905be920fa', '5eb9905be920fb', '5eb9905be920fc', '5eb9905be920fd', '5eb9905be920fb', 4),
(417, 'educare5eb9830a55663', '5eb9905bef3b7', 'The  behavioral  school  of  thought  focus  on the............and.............of human being', 'inner and outer behavior', 'open and hidden behavior', 'overt and covert behavior', 'under and over behavior', '5eb9905bef3b7a', '5eb9905bef3b7b', '5eb9905bef3b7c', '5eb9905bef3b7d', '5eb9905bef3b7c', 5),
(418, 'educare5eb9830a55663', '5eb9905c0f3bc', '...................listed the managerial functions as planning, organizing, commanding, coordinating and controlling', 'Urwick ', 'Gulick ', 'Hennfayol ', 'Elton Mayo', '5eb9905c0f3bca', '5eb9905c0f3bcb', '5eb9905c0f3bcc', '5eb9905c0f3bcd', '5eb9905c0f3bcc', 6),
(419, 'educare5eb9830a55663', '5eb9905c1c0d1', 'among the following is a chief proponents of the universal principles of movement', 'Henri Fayol', 'Herbert Simon', 'Douglass ', 'Elton Mayo', '5eb9905c1c0d1a', '5eb9905c1c0d1b', '5eb9905c1c0d1c', '5eb9905c1c0d1d', '5eb9905c1c0d1a', 7),
(420, 'educare5eb9830a55663', '5eb9905c2052d', '...............refer to the creation of a structure of functions and duties to be performed by a group of people for the purpose of a achieving a set goal', 'planning ', 'organizing ', 'controlling ', 'budgeting', '5eb9905c2052da', '5eb9905c2052db', '5eb9905c2052dc', '5eb9905c2052dd', '5eb9905c2052db', 8),
(421, 'educare5eb9830a55663', '5eb9905c266d6', '.................gave the three organizational analysis  based on the needs and purposes of the organization', 'Mohammed ', 'Peter Driecker', 'Gibson ', 'Etzoni', '5eb9905c266d6a', '5eb9905c266d6b', '5eb9905c266d6c', '5eb9905c266d6d', '5eb9905c266d6b', 9),
(422, 'educare5eb9830a55663', '5eb9905c2b4f6', 'When the activities of two or more people are consciously coordinate towards a common goal then a..........comes into existence', 'informal organization', 'semi-formal organization', 'formal organization', 'all of the above', '5eb9905c2b4f6a', '5eb9905c2b4f6b', '5eb9905c2b4f6c', '5eb9905c2b4f6d', '5eb9905c2b4f6c', 10),
(423, 'educare5eb9830a55663', '5eb9905c3169e', '..............views informal organization as the product of interaction among the people in a formal organization', 'peter Drucker', 'Etzoni ', 'Mohammed ', 'Peretomode', '5eb9905c3169ea', '5eb9905c3169eb', '5eb9905c3169ec', '5eb9905c3169ed', '5eb9905c3169ec', 11),
(424, 'educare5eb9830a55663', '5eb9905c3ed77', '................and...............postulated four assumptions upon which formal organization are based ', 'Uriwick & Gulick', 'Gibson & Elton', 'Blau & Scott', 'Gotzel & Guba', '5eb9905c3f73ba', '5eb9905c3f73bb', '5eb9905c3f73bc', '5eb9905c3f73bd', '5eb9905c3f73bc', 12),
(425, 'educare5eb9830a55663', '5eb9905c49d40', '....................and..................see the school as a social system involving two classes of phenomena ', 'Getzed and Guba ', 'Gibson and Elton', 'Uriwick and Gulick', 'Lipham & Hoeh', '5eb9905c49d40a', '5eb9905c49d40b', '5eb9905c49d40c', '5eb9905c49d40d', '5eb9905c49d40d', 13),
(426, 'educare5eb9830a55663', '5eb9905c4eb60', '...............is described as a nucleus of	patomalism and authoritarianism within educational institutions', 'polytheism ', 'monotheism ', 'morale ', 'idiographic', '5eb9905c4eb60a', '5eb9905c4eb60b', '5eb9905c4eb60c', '5eb9905c4eb60d', '5eb9905c4eb60b', 14),
(427, 'educare5eb9830a55663', '5eb9905c5a4ed', 'Adam contributed to the definition of administration in the year', '1995 ', '1913 ', '1980 ', '1973', '5eb9905c5a4eda', '5eb9905c5a4edb', '5eb9905c5a4edc', '5eb9905c5a4edd', '5eb9905c5a4edb', 15),
(428, 'educare5eb9830a55663', '5eb9905c73553', '..............law implies no	work, no	pay', 'management', 'administration ', 'labour ', 'scientific management', '5eb9905c73553a', '5eb9905c73553b', '5eb9905c73553c', '5eb9905c73553d', '5eb9905c73553c', 16),
(429, 'educare5eb9830a55663', '5eb9905c7f8a3', 'Administration is that part of management which is concerned with the.........and.........of the procedures by which programmes plans and targets are laid down and communicated', 'guidance and principles', 'installation and carryout', 'performance and result', 'rules and principles', '5eb9905c7f8a3a', '5eb9905c7f8a3b', '5eb9905c7f8a3c', '5eb9905c7f8a3d', '5eb9905c7f8a3b', 17),
(430, 'educare5eb9830a55663', '5eb9905c85a4c', 'The	general	acceptable definition of administration is	given by...............in the year..............', 'Gibson 1975', 'Breach 1957', 'Breach 1597 ', 'Breach 1975', '5eb9905c85a4ca', '5eb9905c85a4cb', '5eb9905c85a4cc', '5eb9905c85a4cd', '5eb9905c85a4cd', 18),
(431, 'educare5eb9830a55663', '5eb9905c8a86c', '...............and.............put forward the three basic administrative skill ', 'Katz and Khan 1955', 'Katz and Khan 1965', 'Kart and Khan 1975 ', 'Kartz and Karhn 1955', '5eb9905c8a86ca', '5eb9905c8a86cb', '5eb9905c8a86cc', '5eb9905c8a86cd', '5eb9905c8a86ca', 19),
(432, 'educare5eb9830a55663', '5eb9905c90a14', 'According to.............., everyone is a garbage carrier', 'Samuel ', 'Etzioni ', 'Martins ', 'Hodteke', '5eb9905c90a14a', '5eb9905c90a14b', '5eb9905c90a14c', '5eb9905c90a14d', '5eb9905c90a14a', 20),
(433, 'educare5eb9830a55663', '5eb9905c992cd', '..............is where decision are made', 'Garbage ', 'Model ', 'Can', 'Court', '5eb9905c992cda', '5eb9905c992cdb', '5eb9905c992cdc', '5eb9905c992cdd', '5eb9905c992cdd', 21),
(434, 'educare5eb9830a55663', '5eb9905c9d729', '...............communication is hierarchical in nature', 'horizontal ', 'gesticulation ', 'oral ', 'Vertical', '5eb9905c9d729a', '5eb9905c9d729b', '5eb9905c9d729c', '5eb9905c9d729d', '5eb9905c9d729d', 22),
(435, 'educare5eb9830a55663', '5eb9905ca38d2', '...............is the most appropriate communication', 'vertical ', 'written ', 'verbal ', 'non- verbal', '5eb9905ca38d2a', '5eb9905ca38d2b', '5eb9905ca38d2c', '5eb9905ca38d2d', '5eb9905ca38d2b', 23),
(436, 'educare5eb9830a55663', '5eb9905cae89a', 'See no evil, hear no evil and do no evil is a ........leadership style', 'democratic ', 'autocratic ', 'laissez faire', 'totalitarian', '5eb9905cae89aa', '5eb9905cae89ab', '5eb9905cae89ac', '5eb9905cae89ad', '5eb9905cae89ac', 24),
(437, 'educare5eb9830a55663', '5eb9905cb36bb', '..............is seen as an act of selecting a choice between alternative courses of action', 'leadership ', 'authority ', 'communication ', 'decision-making', '5eb9905cb36bba', '5eb9905cb36bbb', '5eb9905cb36bbc', '5eb9905cb36bbd', '5eb9905cb36bbd', 25),
(438, 'educare5eb9830a55663', '5eb9905cb8e9f', 'The theory that postulates that average human being has inherent dislike for work and should be cornered is known as', 'theory Y ', 'theory X', 'theory Z ', 'all of the above', '5eb9905cb8e9fa', '5eb9905cb8e9fb', '5eb9905cb8e9fc', '5eb9905cb8e9fd', '5eb9905cb8e9fb', 26),
(439, 'educare5eb9830a55663', '5eb9905cc82c4', '27.	Robber R. Blake and James S Mouton evolved a conceptualization of leadership which they labeled.................', 'managerial Grid', 'task oriented', 'balanced leadership', 'theories X an Y', '5eb9905cc82c4a', '5eb9905cc82c4b', '5eb9905cc82c4c', '5eb9905cc82c4d', '5eb9905cc82c4a', 27),
(440, 'educare5eb9830a55663', '5eb9905ccee30', '............attempted to make a clear distinction between autocratic and democratic styles of leadership', 'Blake ', 'Getzel ', 'McGregor', 'Devanport', '5eb9905ccee30a', '5eb9905ccee30b', '5eb9905ccee30c', '5eb9905ccee30d', '5eb9905ccee30c', 28),
(441, 'educare5eb9830a55663', '5eb9905cd3c51', 'The transmission of information and understanding from one body to another is................', 'motivation ', 'communication ', 'decision -making', 'leadership', '5eb9905cd3c51a', '5eb9905cd3c51b', '5eb9905cd3c51c', '5eb9905cd3c51d', '5eb9905cd3c51b', 29),
(442, 'educare5eb9830a55663', '5eb9905cd9df9', 'The basic principle of administration as postulated by Gulick and Urwick has..............mnemonic ', 'POSCOB ', 'PODCORB ', 'POSCORB', 'POSDCORB', '5eb9905cd9df9a', '5eb9905cd9df9b', '5eb9905cd9df9c', '5eb9905cd9df9d', '5eb9905cd9df9d', 30),
(443, 'educare5eb9830a55663', '5eb9905cdec19', 'There are two types of organization namely', 'formal and informal', 'verbal and nonverbal', 'church and mosque ', 'school and home', '5eb9905cdec19a', '5eb9905cdec19b', '5eb9905cdec19c', '5eb9905cdec19d', '5eb9905cdec19a', 31),
(444, 'educare5eb9830a55663', '5eb9905ce43fe', '.............and.............assert that administration is the process of actual operation', 'Katz and Kalm', 'Florence and Tead ', 'Urwick and Gulick', 'Gibson and Breach', '5eb9905ce43fea', '5eb9905ce43feb', '5eb9905ce43fec', '5eb9905ce43fed', '5eb9905ce43feb', 32),
(445, 'educare5eb9830a55663', '5eb9905ced67a', '.................postulated that there are many definition of administration as there are many people in the field', 'peretomode ', 'Miewald ', 'Nwankwo ', 'Dunshire', '5eb9905ced67aa', '5eb9905ced67ab', '5eb9905ced67ac', '5eb9905ced67ad', '5eb9905ced67ad', 33),
(446, 'educare5eb9830a55663', '5eb9905cf1ad7', 'The definition given by sherlekar in 1984, introduces an applied field of psychology known as ...........	', 'supervision ', 'guidance ', 'counselling ', 'bureaucracy', '5eb9905cf1ad7a', '5eb9905cf1ad7b', '5eb9905cf1ad7c', '5eb9905cf1ad7d', '5eb9905cf1ad7b', 34),
(447, 'educare5eb9830a55663', '5eb9905d03a3f', 'Among the few scholars that initiated the distinction between administration and management was', 'Henri Fayol', 'Huther Gulick', 'Oliver Sheldon', 'Herbert Simon', '5eb9905d03a3fa', '5eb9905d03a3fb', '5eb9905d03a3fc', '5eb9905d03a3fd', '5eb9905d03a3fc', 35);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `sahi`, `total`, `time`, `intro`, `date`, `price`) VALUES
(1, '5e7da0d0b1ea3', 'GNS 101(TYPE A)', 1, 30, 7, 'USE OF LIBRARY', '2020-04-17 19:15:42', 'free'),
(2, '5e7dc3af0cf3e', 'GNS 101(TYPE B)', 1, 30, 7, 'USE OF LIBRARY', '2020-04-17 19:15:04', 'free'),
(3, '5e7e0d13f2243', 'GNS 101(TYPE C)', 1, 30, 7, 'USE OF LIBRARY', '2020-05-11 16:22:53', '50'),
(4, 'educare5e7e6e81a8dc1', 'GNS 101(TYPE D)', 1, 30, 7, 'USE OF LIBRARY', '2020-05-11 16:23:10', '50'),
(5, 'educare5e7fc627b7715', 'GNS 301(TYPE A)', 1, 50, 15, 'MAN AND SCIENCE', '2020-05-11 16:24:36', 'free'),
(6, 'educare5e7fdbb09063d', 'GNS 301(TYPE B)', 1, 50, 15, 'MAN AND SCIENCE', '2020-04-17 19:19:48', '50'),
(7, 'educare5e9728e9091c7', 'BUS 102(TYPE A)', 1, 30, 7, 'ELEMENTS OF MANAGEMENT', '2020-04-17 19:19:19', 'free'),
(8, 'educare5e9892f2ec85e', 'BUS 102(TYPE B)', 1, 30, 7, 'ELEMENTS OF MANAGEMENT', '2020-04-17 19:18:10', 'free'),
(9, 'educare5e98c0289c311', 'BUS 102(TYPE C)', 1, 30, 7, 'ELEMENTS OF MANAGEMENT', '2020-05-11 16:24:58', '50'),
(10, 'educare5e990260cf2ab', 'BUS 102(TYPE D)', 1, 30, 7, 'ELEMENTS OF MANAGEMENT', '2020-05-11 16:25:18', '50'),
(12, 'educare5eaec272f2c59', 'GNS 101(TYPE E)', 1, 30, 7, 'USE OF LIBRARY', '2020-05-11 16:24:15', '50'),
(13, 'educare5eb07b104c91c', 'EST 398(TYPE A)', 1, 30, 7, 'EDUCATIONAL RESEARCH METHODS', '2020-05-04 20:29:04', 'free'),
(14, 'educare5eb9830a55663', 'EDM 101(TYPE A)', 1, 35, 10, 'FUNDAMENTALS OF EDUCATION MANAGEMENT', '2020-05-11 16:53:30', 'free');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `timetaken` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `eid`, `score`, `timetaken`, `time`) VALUES
('babusunnah@gmail.com', '5e7e0d13f2243', 30, '01m:44s', '2020-05-16 14:59:48'),
('babusunnah@gmail.com', '5e7da0d0b1ea3', 28, '02m:50s', '2020-05-16 15:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('babusunnah@gmail.com', 'educare5e7fc627b7715', 0, 0, 0, 0, '2020-05-16 15:11:16'),
('babusunnah@gmail.com', '5e7da0d0b1ea3', 28, 30, 28, 2, '2020-05-16 15:14:49'),
('babusunnah@gmail.com', 'educare5e9728e9091c7', 0, 0, 0, 0, '2020-05-16 15:17:00'),
('babusunnah@gmail.com', '5e7e0d13f2243', 0, 0, 0, 0, '2020-05-16 15:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `authorization` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(30) NOT NULL,
  `user_dept` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `referral_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_dept`, `user_password`, `referral_code`) VALUES
(1, 'Abdulquddus Balogun', 'babusunnah@gmail.com', '08085744967', 'mathematics', '$2y$12$OzMpd6Kf7MdIIPvJKtmNIOwmFj/vB2pxUv0FHxwbtSMsFSIRe9DMC', '5eb583247ce84');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `wallet_amount` varchar(20) NOT NULL DEFAULT '0',
  `coins` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `email`, `wallet_amount`, `coins`) VALUES
(1, 'babusunnah@gmail.com', '850', '40');

-- --------------------------------------------------------

--
-- Table structure for table `wrong`
--

CREATE TABLE `wrong` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wrong`
--

INSERT INTO `wrong` (`eid`, `qid`, `email`) VALUES
('5e7da0d0b1ea3', '5e7dbfff32241', 'babusunnah@gmail.com'),
('5e7da0d0b1ea3', '5e7dbfffaea79', 'babusunnah@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `purchased_courses`
--
ALTER TABLE `purchased_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `backup`
--
ALTER TABLE `backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchased_courses`
--
ALTER TABLE `purchased_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=448;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
