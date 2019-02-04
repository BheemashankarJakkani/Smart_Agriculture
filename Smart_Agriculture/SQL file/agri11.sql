-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2018 at 07:31 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agri`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCrops` ()  select * from crop_details$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getFarmers` ()  select * from farmer_details$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getFertilizer` ()  select * from fertilizer$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getMarket` ()  select * from market$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getSuggested` ()  select * from suggested_crop$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getWeather` ()  select * from weather$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`email`, `password`) VALUES
('admin@org.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `crop_details`
--

CREATE TABLE `crop_details` (
  `crop_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `crop_yield` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop_details`
--

INSERT INTO `crop_details` (`crop_name`, `location`, `crop_yield`) VALUES
('Bajra', 'Hassan ', 2),
('Bajra', 'Hosanagara ', 2),
('Bajra', 'Mahalingapur', 2),
('Bajra', 'Mulbagal ', 3),
('Bajra', 'Sindhnur ', 2),
('Bajra', 'Siruguppa ', 2),
('Bajra', 'Supa', 2),
('Bajra', 'Tirumakudal - Narsipur ', 2),
('Bajra', 'Tumkur ', 2),
('Bengalgram', 'Bangalore North', 3),
('Bengalgram', 'Bijapur', 3),
('Bengalgram', 'Challakere ', 3),
('Bengalgram', 'Gadag', 3),
('Bengalgram', 'Kumta ', 3),
('Bengalgram', 'Mangalore', 3),
('Bengalgram', 'Sidlaghatta ', 3),
('Bengalgram', 'Udupi', 3),
('Bengalgram', 'Yelandur ', 3),
('Blackgram', 'Ankola ', 3),
('Blackgram', 'Bagepalli ', 3),
('Blackgram', 'Bangalore', 3),
('Blackgram', 'Chamarajanagar ', 3),
('Blackgram', 'Dakshina Kannada', 3),
('Blackgram', 'Hungund', 3),
('Blackgram', 'Koppal ', 3),
('Blackgram', 'Kundapura ', 3),
('Blackgram', 'Molakalmuru ', 3),
('cassava', 'Bhadravati ', 3),
('cassava', 'Chikkaballapura', 3),
('cassava', 'Gundlupet ', 3),
('cassava', 'Hole Narsipur ', 3),
('cassava', 'Kudligi ', 3),
('cassava', 'Kushtagi ', 3),
('cassava', 'Mudhol', 3),
('cassava', 'Mundgod ', 3),
('cassava', 'Turuvekere ', 3),
('Chana', 'Solapur', 14),
('Corn', 'Alur ', 2),
('Corn', 'Bellary ', 2),
('Corn', 'Chamarajanagar', 2),
('Corn', 'Chikkaballapura', 3),
('Corn', 'Gubbi ', 2),
('Corn', 'Haliyal ', 2),
('Corn', 'Jamkhandi', 2),
('Corn', 'Koppal', 2),
('Corn', 'Tirthahalli', 2),
('Cotton', 'Devadurga ', 1),
('Cotton', 'Hadagalli', 1),
('Cotton', 'Kolar ', 2),
('Cotton', 'Mysore ', 1),
('Cotton', 'Parasgad', 1),
('Cotton', 'Pavagada ', 1),
('Cotton', 'Sagar ', 1),
('Cotton', 'Sakleshpur ', 1),
('Cotton', 'Uttara Kannada', 1),
('Cowpeas', 'Bangalore South', 4),
('Cowpeas', 'Bantval ', 4),
('Cowpeas', 'Chintamani ', 2),
('Cowpeas', 'Chitradurga ', 4),
('Cowpeas', 'Indi', 4),
('Cowpeas', 'Karkal ', 4),
('Cowpeas', 'Kollegal ', 4),
('Cowpeas', 'Nargund ', 4),
('Cowpeas', 'Siddapur ', 4),
('Greengram', 'Badami', 3),
('Greengram', 'Channarayapatna', 3),
('Greengram', 'Chitradurga', 3),
('Greengram', 'Gangawati ', 3),
('Greengram', 'Gudibanda ', 4),
('Greengram', 'Gundlupet ', 3),
('Greengram', 'Kunigal ', 3),
('Greengram', 'Sirsi ', 3),
('Greengram', 'Udupi', 3),
('Groundnut', 'Bellary', 2),
('Groundnut', 'Hassan', 2),
('Groundnut', 'Krishnarajanagara ', 2),
('Groundnut', 'Kundgol ', 2),
('Groundnut', 'Lingsugur ', 2),
('Groundnut', 'Sampgaon', 2),
('Groundnut', 'Shimoga', 2),
('Groundnut', 'Sira ', 2),
('Groundnut', 'Srinivaspur ', 2),
('Horsegram', 'Channagiri ', 3),
('Horsegram', 'Chiknayakanhalli ', 3),
('Horsegram', 'Hunsur ', 3),
('Horsegram', 'Kalghatgi ', 3),
('Horsegram', 'Kanakapura ', 2),
('Horsegram', 'Khanapur', 3),
('Horsegram', 'Kolar', 2),
('Horsegram', 'Malavalli ', 3),
('Horsegram', 'Raichur', 3),
('Horsegram', 'Ranibennur ', 3),
('jola', 'Jamaga', 4),
('jola', 'Jidaga', 13),
('Jola', 'Kawalaga', 11),
('Jowar', 'Anekal', 3),
('Jowar', 'Basavana Bagevadi', 3),
('Jowar', 'Bhalki ', 3),
('Jowar', 'Bhatkal ', 3),
('Jowar', 'Chincholi ', 3),
('Jowar', 'Gadag', 3),
('Jowar', 'Hangal ', 3),
('Jowar', 'Harapanahalli ', 3),
('Jowar', 'Hosdurga ', 3),
('Jowar', 'Hubli', 3),
('Jowar', 'Kadur ', 3),
('Jowar', 'Nelamangala ', 3),
('Jowar', 'Pandavapura ', 3),
('Jowar', 'Puttur', 3),
('Jowar', 'Ramanagara', 4),
('Jowar', 'Raybag ', 3),
('Jowar', 'Somvarpet ', 3),
('Jowar', 'Sringeri ', 3),
('Jowar', 'Yadgir', 4),
('kusubi', 'Banglore', 14),
('kusubi', 'Chennai', 10),
('Maize', 'Belgaum', 4),
('Maize', 'Channapatna ', 1),
('Maize', 'Hirekerur ', 4),
('Maize', 'Homnabad ', 4),
('Maize', 'Honnali ', 4),
('Maize', 'Hubli', 4),
('Maize', 'Maddur ', 4),
('Maize', 'Piriyapatna ', 4),
('Maize', 'Tumkur', 4),
('Maize', 'Yadgir ', 1),
('Niger', 'Arsikere ', 2),
('Niger', 'Bagalkot ', 2),
('Niger', 'Bangarapet ', 3),
('Niger', 'Hospet ', 2),
('Niger', 'Karwar ', 2),
('Niger', 'Koratagere ', 2),
('Niger', 'Manvi ', 2),
('Niger', 'Nanjangud ', 2),
('Niger', 'Shikarpur', 2),
('Peas', 'Bangalore East', 3),
('Peas', 'Bangalore Rural', 3),
('Peas', 'Beltangadi ', 3),
('Peas', 'Chikmagalur', 3),
('Peas', 'Gulbarga', 3),
('Peas', 'Holalkere ', 3),
('Peas', 'Honavar ', 3),
('Peas', 'Ron ', 3),
('Peas', 'Sindgi', 3),
('Raagi', 'Aurad ', 4),
('Raagi', 'Chikmagalur ', 4),
('Raagi', 'Dharwad', 4),
('Raagi', 'Gokak', 4),
('Raagi', 'Haveri ', 4),
('Raagi', 'Jagalur ', 4),
('Raagi', 'Magadi ', 3),
('Raagi', 'Shorapur ', 3),
('Raagi', 'Shrirangapattana ', 4),
('Raagi', 'Virajpet ', 4),
('Rice', 'Athni', 3),
('Rice', 'Basavakalyan ', 3),
('Rice', 'Dharwad', 3),
('Rice', 'Harihar ', 3),
('Rice', 'Hosakote ', 2),
('Rice', 'Jevargi ', 2),
('Rice', 'Madikeri ', 3),
('Rice', 'Nagamangala ', 3),
('Rice', 'Savanur ', 3),
('Rice', 'Tarikere ', 3),
('Sorghum', 'Bidar ', 2),
('Sorghum', 'Byadgi ', 2),
('Sorghum', 'Davanagere ', 2),
('Sorghum', 'Hukeri', 2),
('Sorghum', 'Mandya ', 2),
('Sorghum', 'Mudigere ', 2),
('Sorghum', 'Mysore', 2),
('Sorghum', 'Navalgund ', 2),
('Sorghum', 'Ramanagara', 2),
('Sorghum', 'Shahpur', 2),
('Soyabean', 'Belur ', 2),
('Soyabean', 'Dandeli', 2),
('Soyabean', 'Hagaribommanahalli', 2),
('Soyabean', 'Heggadadevankote ', 2),
('Soyabean', 'Madhugiri ', 2),
('Soyabean', 'Malur ', 2),
('Soyabean', 'Raichur ', 2),
('Soyabean', 'Ramdurg', 2),
('Soyabean', 'Sorab ', 2),
('Sunflower', 'Belgaum', 2),
('Sunflower', 'Dod Ballapur ', 3),
('Sunflower', 'Haveri', 2),
('Sunflower', 'Hiriyur ', 2),
('Sunflower', 'Koppa ', 2),
('Sunflower', 'Mandya', 2),
('Sunflower', 'Muddebihal', 2),
('Sunflower', 'Sedam ', 3),
('Sunflower', 'Shirhatti ', 2),
('Sunflower', 'Sulya ', 2),
('suryakanti', 'Jamaga', 5),
('suryakanti', 'Jidaga', 10),
('suryakanti', 'Kawalaga', 12),
('Togari', 'Gulbarga', 14),
('togari', 'Jamaga', 3),
('togari', 'Jidaga', 12),
('togari', 'Kawalaga', 10),
('Toordal', 'Afzalpur ', 2),
('Toordal', 'Aland ', 3),
('Toordal', 'Gulbarga ', 3),
('Wheat', 'Arkalgud ', 3),
('Wheat', 'Bidar', 3),
('Wheat', 'Bilgi', 3),
('Wheat', 'Chikodi', 3),
('Wheat', 'Chitapur ', 4),
('Wheat', 'Davanagere', 3),
('Wheat', 'Devanahalli ', 4),
('Wheat', 'Gauribidanur ', 3),
('Wheat', 'Gundlupet ', 3),
('Wheat', 'Kodagu', 3),
('Wheat', 'Krishnarajpet ', 3),
('Wheat', 'Mundargi ', 3),
('Wheat', 'Narasimharajapura ', 3),
('Wheat', 'Sandur ', 3),
('Wheat', 'Shiggaon ', 3),
('Wheat', 'Shimoga ', 3),
('Wheat', 'Tiptur ', 3),
('Wheat', 'Yelbarga ', 3),
('Wheat', 'Yellapur ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `farmer_details`
--

CREATE TABLE `farmer_details` (
  `email` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `crop` varchar(50) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer_details`
--

INSERT INTO `farmer_details` (`email`, `fname`, `address`, `contact_no`, `crop`, `quantity`) VALUES
('anushka@gmail.com', 'anushka', 'hsr', '1234567890', 'Jowar', 122),
('man@man.com', 'man', 'hdjdh', '68475485', 'asra', 12),
('kala@kala.com', 'kala', 'kawalaga', '9343039106', 'Toordal', 4),
('nimesh09091997@gmail.com', 'stunner', 'nimesh09091997@gmail.com', '9632741722', 'all', 100),
('bheemashankarsj8556@gmail.com', 'Bheema', 'kawalaga', '987654321', 'Jowar', 123),
('manoj@pes.com', 'manoj', 'koramangala', '9887676765', 'Tomato', 45),
('user1@gmail.com', 'user1', 'bijapur', '9900317555', 'rice', 75),
('bheemq@gmail.com', 'Bheemashankar', 'Banglore', '9972442581', 'rice', 5);

-- --------------------------------------------------------

--
-- Table structure for table `fertilizer`
--

CREATE TABLE `fertilizer` (
  `crop_name` varchar(50) NOT NULL,
  `problem` varchar(50) NOT NULL,
  `fertilizer` varchar(50) DEFAULT NULL,
  `F_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fertilizer`
--

INSERT INTO `fertilizer` (`crop_name`, `problem`, `fertilizer`, `F_price`) VALUES
('Chana', 'reddots', 'm14', 1400),
('kusubi', 'Reddots', 'm13', 1000),
('Togari', 'dots', 'DAP', 1100);

-- --------------------------------------------------------

--
-- Table structure for table `g_chat`
--

CREATE TABLE `g_chat` (
  `chat_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `msg` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `g_chat`
--

INSERT INTO `g_chat` (`chat_id`, `user`, `msg`) VALUES
(44, 'Farmer', 'What is a tract of land used for raising crops or livestock called?'),
(45, 'Admin', 'Land has many specific designated names. The names can depend on what is on the land, for what purpose the land is used, and whether or not the land is owned by a public or private entity.'),
(46, 'Farmer', 'How seed treatment can be done? '),
(47, 'Admin', 'Seed treatment is done to control seed borne diseases.  Bavistin @ 2.5 g/kg of seeds.  or Beam 75 @ 0.6 g/kg of seeds. '),
(48, 'Farmer', 'What will be the planting distance for high yielding varieties, hybrid rice and SRI method? '),
(49, 'Admin', 'Seed treatment is done to control seed borne diseases.  Bavistin @ 2.5 g/kg of seeds.  or Beam 75 @ 0.6 g/kg of seeds. '),
(50, 'Admin', 'Seed treatment is done to control seed borne diseases.  Bavistin @ 2.5 g/kg of seeds.  or Beam 75 @ 0.6 g/kg of seeds. '),
(51, 'Admin', 'Planting distance  for HYV 20cmX10cm or 20cmX15cm or 15cmX10cm   Hybrid rice 20cmX20cm   SRI method 25cmX25cm or 30cmX30cm '),
(52, 'Farmer', 'What is Kisan call centre? '),
(53, 'Admin', 'The objective of schme has been to make Agriculture knowledge available at free of cost to the farmers as and when desired.  Kisan call centre No. is 1551 '),
(54, 'Farmer', 'why is my rice red in color?'),
(55, 'Admin', 'woking on it, sir!'),
(56, 'Farmer', 'à²à²•à³† à²¨à²¨à³à²¨ à²…à²•à³à²•à²¿ à²•à³†à²‚à²ªà³ à²¬à²£à³à²£à²¦à²²à³à²²à²¿à²¦à³†'),
(58, 'Admin', 'à²•à³†à²‚à²ªà³ à²…à²¨à³à²¨à²µà³ à²†à²‚à²¥à³‹à²¸à²¯à²¾à²¨à²¿à²¨à³ à²…à²‚à²¶à²¦à²¿à²‚à²¦ à²•à³†à²‚à²ªà³ à²¬à²£à³à²£à²µà²¨à³à²¨à³ à²¹à³Šà²‚à²¦à²¿à²°à³à²µ à²µà²¿à²µà²¿à²§ à²…à²•à³à²•à²¿à²¯à²¾à²—à²¿à²¦à³†. à²‡à²¦à²¨à³à²¨à³ à²¸à²¾à²®à²¾à²¨à³à²¯à²µà²¾à²—à²¿ à²¤à²¿à²¨à³à²¨à³à²¤à³à²¤à²¦à³† à²…à²¥à²µà²¾ à²­à²¾à²—à²¶à²ƒ à²¸à³à²°à²¿à²¯à²²à²¾à²—à³à²¤à³à²¤à²¦à³†, à²®à²¤à³à²¤à³ à²¸à²¾à²®à²¾à²¨à³à²¯ à²•à²‚à²¦à³ à²¬à²£à³à²£à²•à³à²•à²¿à²‚à²¤ à²¹à³†à²šà³à²šà²¾à²—à²¿ à²•à³†à²‚à²ªà³ à²¹à³Šà²Ÿà³à²Ÿà³ à²¹à³Šà²‚à²¦à²¿à²°à³à²¤à³à²¤à²¦à³†. à²•à³†à²‚à²ªà³ à²…à²•à³à²•à²¿ à²’à²‚à²¦à³ à²‰à²¦à³à²—à²¾à²° à²¸à³à²µà²¾à²¸à²¨à³†à²¯à²¨à³à²¨à³ à²¹à³Šà²‚à²¦à²¿à²°à³à²¤à³à²¤à²¦à³†. à²¨à²¯à²—à³Šà²³à²¿à²¸à²¿à²¦ à²…à²•à³à²•à²¿à²—à³† à²¹à³‹à²²à²¿à²¸à²¿à²¦à²°à³†, à²‡à²¦à³ à²œà³€à²µà²¾à²£à³à²µà²¿à²¨à³Šà²‚à²¦à²¿à²—à³† à²¤à²¿à²¨à³à²¨à³à²µ à²¹à³†à²šà³à²šà²¿à²¨ à²ªà³Œà²·à³à²Ÿà²¿à²•à²¤à³†à²¯ à²®à³Œà²²à³à²¯à²µà²¨à³à²¨à³ à²¹à³Šà²‚à²¦à²¿à²¦à³†.'),
(59, 'Farmer', 'à²à²•à³† à²¨à³†à²²à³†à²¸à²¿à²¦ à²•à³ƒà²·à²¿ à²®à³Šà²¦à²²à³ à²šà³€à²¨à²¾à²¦à²²à³à²²à²¿ à²•à²‚à²¡à³à²¬à²‚à²¦à²¿à²¦à³†'),
(60, 'Admin', 'à²šà³€à²¨à²¾à²¦à²²à³à²²à²¿ à²¨à²¿à²¶à³à²šà²¿à²¤ à²•à³ƒà²·à²¿à²¯ à²¨à²¿à²–à²° à²¦à²¿à²¨à²¾à²‚à²• à²¤à²¿à²³à²¿à²¦à²¿à²²à³à²²à²µà²¾à²¦à²°à³‚, à²‰à²¤à³à²¤à²° à²šà³€à²¨à²¾à²¦à²²à³à²²à²¿ 6250 à²¬à²¿.à²¸à²¿. à²ˆ à²¸à²®à²¯à²¦à²²à³à²²à²¿ à²‰à²¤à³à²¤à²° à²ªà³à²°à²¾à²‚à²¤à³à²¯à²—à²³à²²à³à²²à²¿ à²°à²¾à²—à²¿ à²ªà²³à²—à²¿à²¸à³à²µà³à²¦à²•à³à²•à³† à²¸à²¾à²•à³à²·à³à²¯à²¾à²§à²¾à²°à²—à²³à²¿à²µà³†. à²†à²¦à²¾à²—à³à²¯à³‚, à²°à²¾à²—à²¿ à²¤à³à²‚à²¬à²¾ à²•à²¡à²¿à²®à³† à²®à²¾à²¨à²µ à²¸à²‚à²µà²¹à²¨ à²…à²—à²¤à³à²¯à²µà²¿à²°à³à²¤à³à²¤à²¦à³† à²®à²¤à³à²¤à³ à²µà³à²¯à²¾à²ªà²•à²µà²¾à²—à²¿ à²¸à³‡à²µà²¿à²¸à²²à³à²ªà²¡à³à²µà³à²¦à²¿à²²à³à²², à²†à²¦à³à²¦à²°à²¿à²‚à²¦ à²‡à²¦à³ à²¸à³à²¥à²¿à²°à²µà²¾à²¦ à²•à³ƒà²·à²¿à²¯ à²†à²°à²‚à²­à²µà²¾à²—à²¿ à²µà²¿à²µà²¾à²¦à²¾à²¸à³à²ªà²¦à²µà²¾à²—à²¿à²¦à³†. à²…à²•à³à²•à²¿ à²¸à²¾à²—à³à²µà²³à²¿, à²†à²¦à²¾à²—à³à²¯à³‚, à²•à³ƒà²·à²¿à²—à³† à²¨à³†à²²à³†à²¸à²¿à²¦ à²¹à³†à²šà³à²šà³ à²¨à²¿à²°à³à²£à²¾à²¯à²• à²†à²°à²‚à²­à²µà³ à²¸à²°à²¿à²¸à³à²®à²¾à²°à²¾à²—à²¿ 7,700 à²µà²°à³à²·à²—à²³ à²¹à²¿à²‚à²¦à³† à²ªà³à²°à²¾à²°à²‚à²­à²µà²¾à²¯à²¿à²¤à³'),
(61, 'Farmer', 'à²¹à²¤à³à²¤à²¿ à²œà²¿à²¨à³ à²œà²µà²³à²¿ à²‰à²¦à³à²¯à²®à²µà²¨à³à²¨à³ à²¹à³‡à²—à³† à²¬à²¦à²²à²¾à²¯à²¿à²¸à²¿à²¤à³?'),
(62, 'Admin', 'à²¹à²¤à³à²¤à²¿ à²œà²¿à²¨à³ à²µà²¸à³à²¤à³à²°à³‹à²¦à³à²¯à²®à²¦ à²‰à²¦à³à²¯à²®à²µà²¨à³à²¨à³ à²¬à²¦à²²à²¿à²¸à³à²µ à²®à³‚à²²à²• à²¹à²¤à³à²¤à²¿à²µà²¨à³à²¨à³ à²¸à³à²²à²­à²—à³Šà²³à²¿à²¸à³à²µ à²®à³‚à²²à²• à²¸à³à²²à²­à²µà²¾à²—à²¿ à²¬à²¦à²²à²¾à²—à³à²¤à³à²¤à²¿à²¤à³à²¤à³, à²‡à²¦à²°à²¿à²‚à²¦à²¾à²—à²¿ à²²à²­à³à²¯à²µà²¿à²°à³à²µ à²¹à²¤à³à²¤à²¿à²¦ à²‰à²¤à³à²ªà²¾à²¦à²¨à³†à²¯à³ à²¹à³†à²šà³à²šà²¾à²—à³à²¤à³à²¤à²¦à³† à²®à²¤à³à²¤à³ à²‡à²¦à²°à²¿à²‚à²¦ à²¬à³†à²²à³† à²•à²¡à²¿à²®à³†à²¯à²¾à²—à³à²¤à³à²¤à²¦à³†. à²¹à²¤à³à²¤à²¿ à²œà²¿à²¨à³ à²¬à³€à²œà²—à²³à³ à²®à²¤à³à²¤à³ à²•à³Šà²³à²•à³à²—à²³à²¿à²‚à²¦ à²«à³à²¯à²¾à²¬à³à²°à²¿à²•à³ à²†à²—à²¿ à²¤à²¯à²¾à²°à²¿à²¸à²²à³à²ªà²¡à³à²µ à²¹à²¤à³à²¤à²¿ à²‰à²œà³à²œà³à²µà²¿à²•à³†à²¯à²¨à³à²¨à³ à²¬à³‡à²°à³à²ªà²¡à²¿à²¸à³à²µ à²®à³‚à²²à²• à²•à²¾à²°à³à²¯à²¨à²¿à²°à³à²µà²¹à²¿à²¸à³à²¤à³à²¤à²¦à³†. à²¹à²¿à²‚à²¦à³†, à²¹à²¤à³à²¤à²¿à²¦à²¿à²‚à²¦ à²ˆ à²¬à³€à²œà²—à²³à²¨à³à²¨à³ à²¤à³†à²—à³†à²¦à³à²•à³Šà²‚à²¡à³ à²¸à²®à²¯ à²®à²¤à³à²¤à³ à²¶à²•à³à²¤à²¿à²¯à²¨à³à²¨à³ à²¹à³†à²šà³à²šà²¿à²¨ à²ªà³à²°à²®à²¾à²£à²¦à²²à³à²²à²¿ à²¤à³†à²—à³†à²¦à³à²•à³Šà²‚à²¡à²¿à²¤à³, à²†à²¦à²°à³† 1794 à²°à²²à³à²²à²¿ à²¹à²¤à³à²¤à²¿ à²œà²¿à²¨à³ à²†à²µà²¿à²·à³à²•à²¾à²°à²µà²¨à³à²¨à³ à²ªà³à²°à²•à³à²°à²¿à²¯à³†à²—à³† à²¦à²¾à²°à²¿ à²®à²¾à²¡à²¿à²•à³Šà²Ÿà³à²Ÿà²¿à²¤à³, à²‡à²¦à²°à²¿à²‚à²¦à²¾à²—à²¿ à²¸à²¾à²•à²£à³† à²¹à³†à²šà³à²šà³ à²¹à²¤à³à²¤à²¿ à²‰à²¤à³à²ªà²¾à²¦à²¿à²¸à²²à³ à²®à²¤à³à²¤à³ à²¬à²Ÿà³à²Ÿà³† à²¤à²¯à²¾à²°à²¿à²¸à²²à³ à²¹à²¤à³à²¤à²¿ à²ªà³à²°à²®à²¾à²£à²µà²¨à³à²¨à³ à²¹à³†à²šà³à²šà²¿à²¸à²¿à²¤à³.'),
(63, 'Farmer', 'à²­à²¾à²°à²¤à²¦ à²ªà³à²°à²®à³à²– à²•à³ƒà²·à²¿ à²ªà³à²°à²­à³‡à²¦ à²¯à²¾à²µà³à²¦à³?'),
(64, 'Admin', 'à²­à²¾à²°à²¤à²¦ à²ªà³à²°à²®à³à²– à²•à³ƒà²·à²¿ à²ªà³à²°à²­à³‡à²¦ à²•à³ƒà²·à²¿à²¯à²¾à²—à²¿à²¦à³†. à²‡à²¦à²°à²²à³à²²à²¿, à²°à³ˆà²¤à²°à³ à²¤à²®à³à²®à²¨à³à²¨à³ à²®à²¤à³à²¤à³ à²…à²µà²° à²…à²µà²²à²‚à²¬à²¿à²¤à²°à²¿à²—à³† à²†à²¹à²¾à²°à²•à³à²•à²¾à²—à²¿ à²†à²¹à²¾à²° à²¬à³†à²³à³†à²¯à³à²¤à³à²¤à²¾à²°à³†. à²…à²µà²°à³ à²µà³à²¯à²¾à²ªà²¾à²° à²®à²¤à³à²¤à³ à²µà²¾à²£à²¿à²œà³à²¯à²•à³à²•à²¾à²—à²¿ à²¤à²®à³à²® à²•à³ƒà²·à²¿ à²‡à²³à³à²µà²°à²¿à²¯à²¨à³à²¨à³ à²¬à²³à²¸à³à²µà³à²¦à²¿à²²à³à²². à²…à²µà²°à³ à²—à³Šà²¬à³à²¬à²°à²µà²¨à³à²¨à³ à²°à²¸à²—à³Šà²¬à³à²¬à²°à²µà²¾à²—à²¿ à²¬à²³à²¸à³à²¤à³à²¤à²¾à²°à³† à²®à²¤à³à²¤à³ à²¨à³€à²°à²¾à²µà²°à²¿ à²µà³à²¯à²µà²¸à³à²¥à³†à²¯à³ à²¸à²¹ à²¸à²°à²³à²µà²¾à²—à²¿à²¦à³†. à²®à²¾à²¨à³à²¸à³‚à²¨à³à²—à²³à²¿à²‚à²¦ à²ªà³à²°à²­à²¾à²µà²¿à²¤à²µà²¾à²—à²¿à²°à³à²µ à²®à²³à³†à²—à²¾à²²à²¦ à²®à²¾à²¦à²°à²¿à²¯à²¨à³à²¨à³ à²­à²¾à²°à²¤à³€à²¯ à²°à³ˆà²¤à²°à³ à²—à²®à²¨à²¿à²¸à²¬à³‡à²•à³.  à²­à²¾à²°à²¤à²¦ à²Žà²²à³à²²à²¾ à²­à²¾à²—à²—à²³à²²à³à²²à²¿ à²œà³€à²µà²¨à²¾à²§à²¾à²° à²•à³ƒà²·à²¿ à²ªà³à²°à²§à²¾à²¨à²µà²¾à²—à²¿à²°à³à²µà³à²¦à²°à²¿à²‚à²¦, à²•à³ƒà²·à²¿à²—à³† à²­à²¾à²°à²¤à³€à²¯ à²†à²°à³à²¥à²¿à²•à²¤à³†à²¯à²²à³à²²à²¿ à²‡à²¤à²¿à²¹à²¾à²¸à²µà²¿à²¦à³† à²®à²¤à³à²¤à³ à²‡à²¦à³ GDP à²—à³† à²†à²§à³à²¨à²¿à²• à²•à³Šà²¡à³à²—à³†à²¯à²¾à²—à²¿à²¦à³†. à²­à²¾à²°à²¤à²µà³ à²…à²•à³à²•à²¿, à²¬à³€à²œà²—à²³à³, à²®à²¸à²¾à²²à³†à²—à²³à³ à²®à²¤à³à²¤à³ à²¸à²•à³à²•à²°à³† à²®à²¤à³à²¤à³ à²ªà³à²°à²¾à²£à²¿à²—à²³ à²®à²°à³†à²®à²¾à²¡à³à²µà²‚à²¤à²¹ à²ªà³à²°à²¾à²£à²¿ à²‰à²¤à³à²ªà²¨à³à²¨à²—à²³à²‚à²¤à²¹ à²•à³ƒà²·à²¿ à²‰à²¤à³à²ªà²¨à³à²¨à²—à²³à²¨à³à²¨à³ à²°à²«à³à²¤à³ à²®à²¾à²¡à³à²¤à³à²¤à²¦à³†.'),
(65, 'Farmer', 'à²¸à²£à³à²£ à²°à³ˆà²¤à²°à²¿à²—à³† à²¬à³†à²³à³† à²¹à²•à³à²•à²¿à²¨ à²µà³à²¯à²µà²¸à³à²¥à³† à²à²•à³† à²•à³†à²Ÿà³à²Ÿà²¦à³?'),
(66, 'Admin', 'à²…à²‚à²¤à²°à³à²¯à³à²¦à³à²§à²¦ à²…à²‚à²¤à³à²¯à²¦ à²¨à²¡à³à²µà³† 1860 à²° à²¦à²¶à²• à²®à²¤à³à²¤à³ 1930 à²° à²¦à²¶à²•à²¦à²²à³à²²à²¿, à²¸à²£à³à²£ à²°à³ˆà²¤à²°à³, à²®à³à²–à³à²¯à²µà²¾à²—à²¿ à²¦à²•à³à²·à²¿à²£ à²¯à³à²¨à³ˆà²Ÿà³†à²¡à³ à²¸à³à²Ÿà³‡à²Ÿà³à²¸à³à²¨à²²à³à²²à²¿à²¦à³à²¦à²°à³. à²¸à³à²¥à²³à³€à²¯ à²µà³à²¯à²¾à²ªà²¾à²°à²¿à²—à²³à²¿à²‚à²¦ à²¬à³‡à²¸à²¾à²¯à²•à³à²•à³† à²¬à³‡à²•à²¾à²—à³à²µ à²¸à²²à²•à²°à²£à³†à²—à²³à²¨à³à²¨à³ à²¬à²¾à²¡à²¿à²—à³†à²—à³† à²¨à³€à²¡à²¬à²¹à³à²¦à³. à²®à³à²‚à²¦à²¿à²¨ à²¬à³†à²³à²µà²£à²¿à²—à³†à²¯ à²‹à²¤à³à²µà²¿à²¨à²²à³à²²à²¿ à²…à²µà²°à³ à²‰à²¤à³à²ªà²¾à²¦à²¿à²¸à³à²µ à²¬à³†à²³à³†à²—à²³ à²†à²§à²¾à²°à²¦ à²®à³‡à²²à³† à²ˆ à²¬à²¾à²¡à²¿à²—à³†à²—à³† à²¸à²¾à²²à²µà²¨à³à²¨à³ à²ªà²¡à³†à²¯à³à²¤à³à²¤à²¾à²°à³†. à²…à²®à³†à²°à²¿à²•à²¾à²¦ à²¦à²•à³à²·à²¿à²£à²¦ à²¸à³à²¤à³à²¤à²²à²¿à²¨ à²°à³ˆà²¤à²°à³ à²®à²¤à³à²¤à³ à²ªà²¾à²²à³à²¦à²¾à²°à²°à³ à²•à²¡à²¿à²®à³† à²¹à²£à²µà²¨à³à²¨à³ à²¹à³Šà²‚à²¦à²¿à²¦à³à²¦à²°à³, à²¤à³à²¦à²¿à²—à²³à²¨à³à²¨à³ à²ªà³‚à²°à³ˆà²¸à²²à³ à²¹à³†à²£à²—à²¾à²¡à³à²¤à³à²¤à²¾à²°à³†, à²®à²¤à³à²¤à³ à²†à²—à²¾à²—à³à²—à³† à²•à³ƒà²·à²¿ à²‰à²ªà²•à²°à²£à²—à²³à²¨à³à²¨à³ à²¹à³Šà²‚à²¦à²¿à²²à³à²²');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('anushka@gmail.com', 'a03da782025a0f53973537ecc0308d54'),
('asj@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
('bheemashankarsj8556@gmail.com', 'dd1c6b58f1b3bf011d0ca383251f41f5'),
('bheemq@gmail.com', '04b924f8b3e7dd98d53676f03a1c5a1e'),
('chutki@gmail.com', 'a5f1bfd769f02ac51d27027970cb7d47'),
('HI@mail.com', '1234'),
('kala@kala.com', '81dc9bdb52d04dc20036dbd8313ed055'),
('man@man.com', '81dc9bdb52d04dc20036dbd8313ed055'),
('manoj@pes.com', '5e81f9859d223ea420aca993c647b839'),
('nimesh09091997@gmail.com', 'b8fdd7f0c34fae8432259a6329299e6d'),
('nimesh@gmail.com', 'b786d5c5737fa6c3331eed0c71cf5f79'),
('user1@gmail.com', '59029276955677351421b3ff6bf5ee4c');

--
-- Triggers `login`
--
DELIMITER $$
CREATE TRIGGER `Log` AFTER INSERT ON `login` FOR EACH ROW INSERT INTO log_details values(NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `log_details`
--

CREATE TABLE `log_details` (
  `logtime` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_details`
--

INSERT INTO `log_details` (`logtime`) VALUES
('2018-11-10 12:11:18'),
('2018-11-10 20:39:42'),
('2018-11-11 19:01:43'),
('2018-11-16 09:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE `market` (
  `crop_name` varchar(50) DEFAULT NULL,
  `crop_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `market`
--

INSERT INTO `market` (`crop_name`, `crop_price`) VALUES
('jola', 12222),
('togari', 222),
('Jowar', 2400),
('Sunflower', 5400),
('Wheat', 1840),
('Rice', 1550),
('Jowar', 2400),
('Raagi', 2900),
('Sorghum', 1500),
('Maize', 1700),
('Horsegram', 9500),
('Groundnut', 4900),
('Cotton', 5200),
('Soyabean', 3400),
('Niger', 5900),
('Bajra', 1500),
('Corn', 1700),
('Wheat', 1840),
('cassava', 1300),
('Greengram', 5500),
('Blackgram', 4000),
('Bengalgram', 3600),
('Cowpeas', 6000),
('Peas', 5000),
('Toordal', 5300);

-- --------------------------------------------------------

--
-- Table structure for table `suggested_crop`
--

CREATE TABLE `suggested_crop` (
  `location` varchar(50) DEFAULT NULL,
  `crop_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggested_crop`
--

INSERT INTO `suggested_crop` (`location`, `crop_name`) VALUES
('Banglore', 'jola'),
('Banglore', 'kusubi'),
('Belgaum', 'Maize'),
('Chikodi', 'Maize'),
('Athni', 'Maize'),
('Raybag ', 'Maize'),
('Gokak', 'Maize'),
('Hukeri', 'Maize'),
('Khanapur', 'Maize'),
('Sampgaon', 'Maize'),
('Parasgad', 'Maize'),
('Ramdurg', 'Maize'),
('Bagalkot ', 'Jowar'),
('Mahalingapur', 'Jowar'),
('Jamkhandi', 'Jowar'),
('Bilgi', 'Jowar'),
('Mudhol', 'Jowar'),
('Badami', 'Jowar'),
('Hungund', 'Jowar'),
('Bijapur', 'BengalGram'),
('Indi', 'BengalGram'),
('Sindgi', 'BengalGram'),
('Basavana Bagevadi', 'BengalGram'),
('Muddebihal', 'BengalGram'),
('Bidar', 'Peas'),
('Basavakalyan ', 'Peas'),
('Bhalki ', 'Peas'),
('Aurad ', 'Peas'),
('Homnabad ', 'Peas'),
('Raichur', 'Redgram'),
('Lingsugur ', 'Redgram'),
('Devadurga ', 'Redgram'),
('Raichur ', 'Redgram'),
('Manvi ', 'Redgram'),
('Sindhnur ', 'Redgram'),
('Koppal', 'Groundnut'),
('Yelbarga ', 'Groundnut'),
('Kushtagi ', 'Groundnut'),
('Gangawati ', 'Groundnut'),
('Koppal ', 'Groundnut'),
('Gadag', 'Wheat'),
('Nargund ', 'Wheat'),
('Ron ', 'Wheat'),
('Gadag', 'Wheat'),
('Shirhatti ', 'Wheat'),
('Mundargi ', 'Wheat'),
('Hubli', 'Maize'),
('Dharwad', 'Maize'),
('Navalgund ', 'Maize'),
('Kalghatgi ', 'Maize'),
('Kundgol ', 'Maize'),
('Uttara Kannada', 'Rice'),
('Dandeli', 'Rice'),
('Karwar ', 'Rice'),
('Supa', 'Rice'),
('Haliyal ', 'Rice'),
('Yellapur ', 'RIce'),
('Mundgod ', 'Rice'),
('Sirsi ', 'Rice'),
('Ankola ', 'Rice'),
('Kumta ', 'Rice'),
('Siddapur ', 'RIce'),
('Honavar ', 'Rice'),
('Bhatkal ', 'Rice'),
('Haveri', 'Ragi'),
('Shiggaon ', 'Ragi'),
('Savanur ', 'Ragi'),
('Hangal ', 'Ragi'),
('Byadgi ', 'Ragi'),
('Hirekerur ', 'Ragi'),
('Ranibennur ', 'Ragi'),
('Bellary', 'Cotton'),
('Hadagalli', 'Cotton'),
('Hagaribommanahalli', 'Cotton'),
('Hospet ', 'Cotton'),
('Siruguppa ', 'Cotton'),
('Bellary ', 'Cotton'),
('Sandur ', 'Cotton'),
('Kudligi ', 'Cotton'),
('Chitradurga', 'Ragi'),
('Molakalmuru ', 'Ragi'),
('Challakere ', 'Ragi'),
('Holalkere ', 'Ragi'),
('Hosdurga ', 'Maize'),
('Hiriyur ', 'Maize'),
('Davanagere', 'Maize'),
('Harihar ', 'Maize'),
('Harapanahalli ', 'Maize'),
('Jagalur ', 'Maize'),
('Davanagere ', 'Maize'),
('Honnali ', 'Maize'),
('Channagiri ', 'Maize'),
('Shimoga', 'Maize'),
('Sagar ', 'Jowar'),
('Sorab ', 'Jowar'),
('Shikarpur', 'Jowar'),
('Hosanagara ', 'Jowar'),
('Tirthahalli', 'Jowar'),
('Shimoga ', 'Jowar'),
('Bhadravati ', 'Jowar'),
('Udupi', 'BengalGram'),
('Kundapura ', 'BengalGram'),
('Udupi', 'BengalGram'),
('Karkal ', 'BengalGram'),
('Chikmagalur', 'BengalGram'),
('Sringeri ', 'Peas'),
('Koppa ', 'Maize'),
('Narasimharajapura ', 'Maize'),
('Tarikere ', 'Maize'),
('Kadur ', 'Maize'),
('Chikmagalur ', 'Maize'),
('Mudigere ', 'Maize'),
('Tumkur', 'Maize'),
('Chiknayakanhalli ', 'Maize'),
('Sira ', 'Maize'),
('Pavagada ', 'Maize'),
('Madhugiri ', 'Jowar'),
('Koratagere ', 'Jowar'),
('Tumkur ', 'Jowar'),
('Gubbi ', 'Jowar'),
('Tiptur ', 'Jowar'),
('Turuvekere ', 'Jowar'),
('Kunigal ', 'Jowar'),
('Bangalore', 'BengalGram'),
('Bangalore North', 'BengalGram'),
('Bangalore South', 'BengalGram'),
('Bangalore East', 'BengalGram'),
('Anekal', 'BengalGram'),
('Mandya', 'Peas'),
('Krishnarajpet ', 'BengalGram'),
('Nagamangala ', 'BengalGram'),
('Pandavapura ', 'BengalGram'),
('Shrirangapattana ', 'BengalGram'),
('Mandya ', 'BengalGram'),
('Maddur ', 'Peas'),
('Malavalli ', 'Jowar'),
('Hassan', 'Jowar'),
('Sakleshpur ', 'Jowar'),
('Belur ', 'Jowar'),
('Arsikere ', 'Jowar'),
('Hassan ', 'BengalGram'),
('Alur ', 'BengalGram'),
('Arkalgud ', 'BengalGram'),
('Hole Narsipur ', 'BengalGram'),
('Channarayapatna', 'BengalGram'),
('Dakshina Kannada', 'Peas'),
('Mangalore', 'Peas'),
('Bantval ', 'Peas'),
('Beltangadi ', 'Peas'),
('Puttur', 'Peas'),
('Sulya ', 'Redgram'),
('Kodagu', 'Redgram'),
('Madikeri ', 'Redgram'),
('Somvarpet ', 'Redgram'),
('Virajpet ', 'Redgram'),
('Mysore', 'Redgram'),
('Piriyapatna ', 'Groundnut'),
('Hunsur ', 'Groundnut'),
('Krishnarajanagara ', 'Groundnut'),
('Mysore ', 'Groundnut'),
('Heggadadevankote ', 'Groundnut'),
('Nanjangud ', 'Wheat'),
('Tirumakudal - Narsipur ', 'Wheat'),
('Chamarajanagar', 'Wheat'),
('Gundlupet ', 'Wheat'),
('Gundlupet ', 'Wheat'),
('Gundlupet ', 'Wheat'),
('Chamarajanagar ', 'Maize'),
('Yelandur ', 'Maize'),
('Kollegal ', 'Maize'),
('Gulbarga', 'Toordal'),
('Aland ', 'Toordal'),
('Afzalpur ', 'Toordal'),
('Chincholi ', 'Toordal'),
('Sedam ', 'Toordal'),
('Chitapur ', 'Toordal'),
('Jevargi ', 'Toordal'),
('Yadgir', 'Toordal'),
('Shorapur ', 'Toordal'),
('Shahpur', 'Toordal'),
('Yadgir ', 'Toordal'),
('Kolar', 'Rice'),
('Srinivaspur ', 'RIce'),
('Kolar ', 'Rice'),
('Malur ', 'Rice'),
('Bangarapet ', 'Ragi'),
('Mulbagal ', 'Ragi'),
('Chikkaballapura', 'Ragi'),
('Gauribidanur ', 'Ragi'),
('Chikkaballapura', 'Ragi'),
('Gudibanda ', 'Ragi'),
('Bagepalli ', 'Ragi'),
('Sidlaghatta ', 'Cotton'),
('Chintamani ', 'Cotton'),
('Bangalore Rural', 'Cotton'),
('Nelamangala ', 'Cotton'),
('Dod Ballapur ', 'Cotton'),
('Devanahalli ', 'Cotton'),
('Hosakote ', 'Cotton'),
('Ramanagara', 'Cotton'),
('Magadi ', 'Ragi'),
('Ramanagara', 'Ragi'),
('Channapatna ', 'Ragi'),
('Kanakapura ', 'Ragi');

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `location` varchar(50) NOT NULL,
  `humidity` int(11) DEFAULT NULL,
  `temp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`location`, `humidity`, `temp`) VALUES
('Afzalpur ', 47, 25),
('Aland ', 48, 30),
('Alur ', 57, 28),
('Anekal', 47, 28),
('Ankola ', 47, 25),
('Arkalgud ', 56, 30),
('Arsikere ', 57, 29),
('Athni', 56, 28),
('Aurad ', 55, 29),
('Badami', 47, 28),
('Bagalkot ', 47, 26),
('Bagepalli ', 48, 30),
('Bangalore', 48, 30),
('Bangalore East', 47, 25),
('Bangalore North', 45, 28),
('Bangalore Rural', 47, 25),
('Bangalore South', 48, 30),
('Bangarapet ', 58, 30),
('Banglore', 80, 32),
('Bantval ', 45, 28),
('Basavakalyan ', 57, 30),
('Basavana Bagevadi', 28, 31),
('Belgaum', 58, 31),
('Bellary', 57, 29),
('Beltangadi ', 48, 30),
('Belur ', 54, 30),
('Bhadravati ', 47, 26),
('Bhalki ', 56, 28),
('Bhatkal ', 29, 34),
('Bidar', 58, 31),
('Bijapur', 28, 34),
('Bilgi', 48, 30),
('Busanoor', 65, 37),
('Byadgi ', 56, 28),
('Challakere ', 47, 25),
('Chamarajanagar', 58, 30),
('Channagiri ', 55, 29),
('Channapatna ', 28, 35),
('Channarayapatna', 60, 32),
('Chennai', 123, 34),
('Chikkaballapura', 56, 30),
('Chikmagalur', 47, 28),
('Chiknayakanhalli ', 56, 28),
('Chikodi', 57, 30),
('chincholi', 50, 33),
('Chintamani ', 48, 30),
('Chitapur ', 29, 34),
('Chitradurga', 45, 28),
('Dakshina Kannada', 47, 26),
('Dandeli', 56, 30),
('Davanagere', 34, 31),
('Devadurga ', 56, 30),
('Devanahalli ', 28, 34),
('Dhangapur', 51, 32),
('Dharwad', 58, 31),
('Dod Ballapur ', 46, 28),
('Gadag', 46, 28),
('Gangawati ', 47, 25),
('Gauribidanur ', 57, 31),
('Gokak', 54, 30),
('Gubbi ', 56, 30),
('Gudibanda ', 47, 26),
('Gulbarga', 65, 45),
('Gundlupet ', 57, 28),
('Hadagalli', 58, 30),
('Hagaribommanahalli', 57, 28),
('Haliyal ', 47, 26),
('Hangal ', 58, 31),
('Harapanahalli ', 28, 34),
('Harihar ', 28, 31),
('Hassan', 56, 28),
('Haveri', 34, 31),
('Heggadadevankote ', 55, 29),
('Hirekerur ', 55, 29),
('Hiriyur ', 29, 34),
('Holalkere ', 46, 28),
('Hole Narsipur ', 57, 31),
('Homnabad ', 57, 29),
('Honavar ', 28, 34),
('Honnali ', 56, 28),
('Hosakote ', 29, 34),
('Hosanagara ', 56, 30),
('Hosdurga ', 28, 34),
('Hospet ', 56, 30),
('Hubli', 57, 30),
('Hukeri', 57, 29),
('Hungund', 46, 28),
('Hunsur ', 58, 31),
('Indi', 29, 34),
('Jagalur ', 58, 31),
('Jamaga', 58, 35),
('Jamkhandi', 45, 28),
('Jevargi ', 34, 31),
('Jidaga', 51, 30),
('Kadur ', 28, 31),
('Kalghatgi ', 57, 29),
('Kanakapura ', 59, 32),
('Karkal ', 47, 25),
('Karwar ', 57, 31),
('Kawalaga', 50, 40),
('Khanapur', 57, 28),
('Kodagu', 46, 28),
('Kolar', 56, 28),
('Kollegal ', 48, 30),
('Koppa ', 28, 34),
('Koppal', 48, 30),
('Koratagere ', 58, 30),
('Krishnarajanagara ', 57, 30),
('Krishnarajpet ', 28, 34),
('Kudligi ', 48, 30),
('Kumta ', 47, 28),
('Kundapura ', 45, 28),
('Kundgol ', 58, 30),
('Kunigal ', 47, 26),
('Kushtagi ', 48, 30),
('Lingsugur ', 57, 28),
('Maddur ', 58, 31),
('Madhugiri ', 57, 29),
('Madikeri ', 28, 34),
('Madiyal', 53, 31),
('Magadi ', 28, 31),
('Mahalingapur', 48, 30),
('Malavalli ', 57, 30),
('Malur ', 57, 29),
('Mandya', 46, 28),
('Mangalore', 48, 30),
('Manvi ', 60, 32),
('Molakalmuru ', 48, 30),
('Muddebihal', 28, 34),
('Mudhol', 47, 25),
('Mudigere ', 58, 31),
('Mulbagal ', 57, 28),
('Mundargi ', 28, 34),
('Mundgod ', 45, 28),
('Mysore', 28, 31),
('Nagamangala ', 29, 34),
('Nanjangud ', 54, 30),
('Narasimharajapura ', 29, 34),
('Nargund ', 28, 34),
('Navalgund ', 55, 29),
('Nelamangala ', 47, 28),
('Pandavapura ', 34, 31),
('Parasgad', 57, 31),
('Pavagada ', 54, 30),
('Piriyapatna ', 28, 34),
('Puttur', 47, 25),
('Raichur', 58, 30),
('Ramanagara', 34, 31),
('Ramdurg', 60, 32),
('Ranibennur ', 54, 30),
('Raybag ', 55, 29),
('Ron ', 29, 34),
('Sagar ', 57, 29),
('Sakleshpur ', 55, 29),
('Sampgaon', 56, 30),
('Sandur ', 47, 26),
('Savanur ', 28, 34),
('Sedam ', 28, 34),
('Shahpur', 58, 31),
('shekapur', 54, 34),
('Shiggaon ', 28, 31),
('Shikarpur', 57, 28),
('Shimoga', 54, 30),
('Shirhatti ', 28, 31),
('Shorapur ', 28, 34),
('Shrirangapattana ', 28, 31),
('Siddapur ', 46, 28),
('Sidlaghatta ', 45, 28),
('Sindgi', 34, 31),
('Sindhnur ', 47, 26),
('Sira ', 55, 29),
('Sirsi ', 48, 30),
('Siruguppa ', 57, 31),
('Solapur', 67, 38),
('Somvarpet ', 29, 34),
('Sorab ', 58, 30),
('Sringeri ', 46, 28),
('Srinivaspur ', 55, 29),
('Sulya ', 47, 28),
('Supa', 60, 32),
('Tarikere ', 34, 31),
('Tiptur ', 57, 31),
('Tirthahalli', 57, 31),
('Tirumakudal - Narsipur ', 57, 29),
('Tumkur', 57, 30),
('Turuvekere ', 60, 32),
('Udupi', 48, 30),
('Uttara Kannada', 57, 28),
('Virajpet ', 34, 31),
('wadi', 65, 37),
('Yadgir', 28, 31),
('Yelandur ', 47, 26),
('Yelbarga ', 45, 28),
('Yellapur ', 48, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `crop_details`
--
ALTER TABLE `crop_details`
  ADD PRIMARY KEY (`crop_name`,`location`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `farmer_details`
--
ALTER TABLE `farmer_details`
  ADD PRIMARY KEY (`contact_no`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `fertilizer`
--
ALTER TABLE `fertilizer`
  ADD PRIMARY KEY (`crop_name`,`problem`);

--
-- Indexes for table `g_chat`
--
ALTER TABLE `g_chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `market`
--
ALTER TABLE `market`
  ADD KEY `crop_name` (`crop_name`);

--
-- Indexes for table `suggested_crop`
--
ALTER TABLE `suggested_crop`
  ADD KEY `location` (`location`);

--
-- Indexes for table `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`location`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `g_chat`
--
ALTER TABLE `g_chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `crop_details`
--
ALTER TABLE `crop_details`
  ADD CONSTRAINT `crop_details_ibfk_1` FOREIGN KEY (`location`) REFERENCES `weather` (`location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `farmer_details`
--
ALTER TABLE `farmer_details`
  ADD CONSTRAINT `farmer_details_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fertilizer`
--
ALTER TABLE `fertilizer`
  ADD CONSTRAINT `fertilizer_ibfk_1` FOREIGN KEY (`crop_name`) REFERENCES `crop_details` (`crop_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `market`
--
ALTER TABLE `market`
  ADD CONSTRAINT `market_ibfk_1` FOREIGN KEY (`crop_name`) REFERENCES `crop_details` (`crop_name`);

--
-- Constraints for table `suggested_crop`
--
ALTER TABLE `suggested_crop`
  ADD CONSTRAINT `suggested_crop_ibfk_1` FOREIGN KEY (`location`) REFERENCES `weather` (`location`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
