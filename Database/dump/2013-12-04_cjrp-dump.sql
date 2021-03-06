-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 04, 2013 at 09:32 AM
-- Server version: 5.5.31-0ubuntu0.12.04.2
-- PHP Version: 5.4.16

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cjrp`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE IF NOT EXISTS `car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `make_label_id` int(11) NOT NULL,
  `model` varchar(45) DEFAULT NULL,
  `type_label_id` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  UNIQUE KEY `car_id_UNIQUE` (`car_id`),
  KEY `fk_car_label1_idx` (`make_label_id`),
  KEY `fk_car_label2_idx` (`type_label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `carrating`
--

CREATE TABLE IF NOT EXISTS `carrating` (
  `carRating_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `perDay` double(6,2) NOT NULL,
  `perWeek` double(6,2) NOT NULL,
  `fee` double(6,2) NOT NULL,
  `ratioChargePerWeek` double(5,4) NOT NULL,
  PRIMARY KEY (`carRating_id`),
  UNIQUE KEY `rating_id_UNIQUE` (`carRating_id`),
  KEY `fk_rating_company1_idx` (`company_id`),
  KEY `fk_rating_car1_idx` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `island_label_id` int(11) NOT NULL,
  `city_label_id` int(11) NOT NULL,
  `type_label_id` int(11) NOT NULL COMMENT 'hotel or car',
  `rating` double(2,1) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`company_id`),
  UNIQUE KEY `company_id_UNIQUE` (`company_id`),
  KEY `fk_company_label_idx` (`island_label_id`),
  KEY `fk_company_label1_idx` (`city_label_id`),
  KEY `fk_company_label2_idx` (`type_label_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `name`, `island_label_id`, `city_label_id`, `type_label_id`, `rating`, `description`) VALUES
(1, 'The Pull House', 5, 24, 4, 3.0, NULL),
(2, 'La Vue', 5, 26, 4, 3.0, NULL),
(3, 'Cap Juluca', 5, 61, 4, 3.0, NULL),
(4, 'Frangipani Beach Hotel', 5, 61, 4, 3.0, NULL),
(5, 'Paradise Cove', 5, 28, 4, 3.0, ''),
(6, 'Cuisinart Resort & Spa', 5, 29, 4, 3.0, NULL),
(7, 'Gumbsie Car Rental', 5, 24, 3, 3.0, NULL),
(8, 'Marriott Resort And The Royal Beach Casino', 16, 53, 4, 4.0, NULL),
(9, 'Courtyard Marriott', 7, 47, 4, 4.0, NULL),
(10, 'Time Out', 8, 48, 4, 3.0, NULL),
(11, 'Carl''s Unique Inn', 19, 52, 4, 3.0, NULL),
(12, 'Anchorage', 9, 65, 4, 3.0, NULL),
(13, 'Anacaona Boutique H', 5, 33, 4, 3.0, NULL),
(14, 'Le Bleu', 5, 34, 4, 3.0, NULL),
(15, 'Evadney Apartment', 5, 28, 4, 3.0, NULL),
(16, 'Ani Villas', 5, 28, 4, 3.0, NULL),
(17, 'Villa Fay', 5, 36, 4, 3.0, NULL),
(18, 'Pinnacle Villa', 5, 36, 4, 3.0, NULL),
(19, 'Villa Lockrum', 5, 54, 4, 3.0, NULL),
(20, 'Villa Gardenia', 5, 24, 4, 3.0, NULL),
(21, 'The Retreat', 5, 38, 4, 3.0, NULL),
(22, 'Clarion In Lake', 15, 24, 4, 3.0, NULL),
(23, 'HRH All Suite', 15, 24, 4, 3.0, NULL),
(24, 'Sandy Lane', 8, 46, 4, 3.0, NULL),
(25, 'DIVI South Winds Beach Resort', 8, 48, 4, 3.0, NULL),
(26, 'The Crane Resort', 8, 49, 4, 3.0, NULL),
(27, 'Bougainvillea Beach Resort', 8, 50, 4, 3.0, NULL),
(28, 'Lamblion Holiday Apartment', 6, 51, 4, 3.0, NULL),
(29, 'Dominica''s Guest House and Restaurant', 9, 56, 4, 3.0, NULL),
(30, 'Evergreen Hotel', 9, 57, 4, 3.0, NULL),
(31, 'Icis Villas', 70, 55, 4, 3.0, NULL),
(32, 'Fort Recovery Beachfront Villa and Suites', 70, 69, 4, 3.0, NULL),
(33, 'Frenchmans', 70, 59, 4, 3.0, NULL),
(34, 'Biras Creek Resort', 71, 62, 4, 3.0, NULL),
(35, 'Katitche Point Greathouse', 71, 68, 4, 3.0, NULL),
(36, 'Guavaberry Spring Bay Vacation Homes', 71, 66, 4, 3.0, NULL),
(37, 'Pinneys Beach Resort', 17, 64, 4, 3.0, NULL),
(38, 'Nisbet Plantation Beach Club', 17, 67, 4, 3.0, NULL),
(39, 'Ouali Beach Resort', 17, 63, 4, 3.0, NULL),
(40, 'Windward Passage Hotel', 72, 58, 4, 3.0, NULL),
(41, 'Galleon House Bed Breakfast Inn', 72, 58, 4, 3.0, NULL),
(42, 'Marriott Frenchman''s Reef and Morning Star Be', 72, 73, 4, 3.0, NULL),
(43, 'Ocean Terrace Inn', 16, 39, 4, 3.0, NULL),
(44, 'Timothy Beach Resort', 16, 53, 4, 3.0, NULL),
(45, 'Le Manapany Cottages and Spa', 74, 31, 4, 3.0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotelrating`
--

CREATE TABLE IF NOT EXISTS `hotelrating` (
  `hotelRating_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `perDay` double(8,2) NOT NULL,
  `taxe` double(5,4) NOT NULL,
  `government` double(8,2) NOT NULL,
  `fee` double(6,2) NOT NULL,
  `room_id` int(11) NOT NULL,
  PRIMARY KEY (`hotelRating_id`),
  UNIQUE KEY `rating_id_UNIQUE` (`hotelRating_id`),
  KEY `fk_rating_company1_idx` (`company_id`),
  KEY `fk_hotelRating_room1_idx` (`room_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `hotelrating`
--

INSERT INTO `hotelrating` (`hotelRating_id`, `company_id`, `perDay`, `taxe`, `government`, `fee`, `room_id`) VALUES
(1, 1, 119.20, 0.1997, 2.00, 10.00, 19),
(2, 2, 200.00, 0.0000, 0.00, 10.00, 1),
(3, 2, 322.00, 0.0000, 1.00, 10.00, 2),
(4, 3, 595.00, 0.1000, 1.00, 10.00, 3),
(5, 3, 1810.00, 0.1000, 1.00, 10.00, 4),
(6, 3, 995.00, 0.1000, 1.00, 10.00, 5),
(7, 3, 1300.00, 0.1000, 1.00, 10.00, 6),
(8, 3, 1410.00, 0.1000, 1.00, 10.00, 7),
(9, 3, 3810.00, 0.1000, 1.00, 10.00, 8),
(10, 3, 4910.00, 0.1000, 1.00, 10.00, 9),
(11, 3, 5862.00, 0.1000, 1.00, 10.00, 10),
(12, 3, 7010.00, 0.1000, 1.00, 10.00, 11),
(13, 3, 8010.00, 0.1000, 1.00, 10.00, 12),
(14, 4, 1328.00, 0.1000, 1.00, 10.00, 13),
(15, 4, 1688.00, 0.1000, 1.00, 10.00, 14),
(16, 4, 1849.00, 0.1000, 1.00, 10.00, 15),
(17, 4, 2500.00, 0.1000, 1.00, 10.00, 16),
(18, 5, 340.00, 0.1000, 1.00, 10.00, 17),
(19, 5, 400.00, 0.1000, 1.00, 10.00, 18),
(20, 5, 375.00, 0.1000, 1.00, 10.00, 1),
(21, 5, 530.00, 0.1000, 1.00, 10.00, 2),
(22, 5, 650.00, 0.1000, 1.00, 10.00, 18),
(23, 6, 5088.00, 0.1000, 1.00, 50.88, 13),
(24, 10, 130.00, 0.0000, 0.00, 10.00, 3);

-- --------------------------------------------------------

--
-- Table structure for table `label`
--

CREATE TABLE IF NOT EXISTS `label` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `label_id_UNIQUE` (`label_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `label`
--

INSERT INTO `label` (`label_id`, `type`, `value`) VALUES
(1, 'ROOM_TYPE', 'HOTEL'),
(2, 'ROOM_TYPE', 'VILLA'),
(3, 'COMP_TYPE', 'VEHICULE'),
(4, 'COMP_TYPE', 'HOUSING'),
(5, 'ISLAND', 'Anguilla'),
(6, 'ISLAND', 'Antigua '),
(7, 'ISLAND', 'Barbuda'),
(8, 'ISLAND', 'Barbados'),
(9, 'ISLAND', 'Dominica'),
(10, 'ISLAND', 'Dominican Republic'),
(11, 'ISLAND', 'Grenada'),
(12, 'ISLAND', 'Guadeloupe'),
(13, 'ISLAND', 'Jamaica'),
(14, 'ISLAND', 'Martinique'),
(15, 'ISLAND', 'Puerto Rico'),
(16, 'ISLAND', 'Saint Kitts '),
(17, 'ISLAND', 'Nevis'),
(18, 'ISLAND', 'Saint Lucia'),
(19, 'ISLAND', 'Saint Martin'),
(20, 'ISLAND', 'Trinidad'),
(21, 'ISLAND', 'Tobago'),
(22, 'ISLAND', 'US Virgin Islands'),
(23, 'ISLAND', 'Trinidad (POS)'),
(24, 'CITY', ''),
(25, 'CITY', 'The Valley'),
(26, 'CITY', 'South Hill'),
(27, 'CITY', 'Meads Bay'),
(28, 'CITY', 'The Cove'),
(29, 'CITY', 'Rendezvous'),
(30, 'CITY', 'George Hill'),
(31, 'CITY', 'Anse des Cayes Gustavia'),
(32, 'CITY', 'The Cove'),
(33, 'CITY', 'WRST End'),
(34, 'CITY', 'Little Harbour'),
(36, 'CITY', 'Cul de Sac'),
(37, 'CITY', 'Bolwing Point'),
(38, 'CITY', 'East End'),
(39, 'CITY', 'Basseterre'),
(40, 'CITY', 'Conrad Sunset'),
(41, 'CITY', 'Blue Bay'),
(42, 'CITY', 'Gozumel'),
(43, 'CITY', 'Park Royal'),
(44, 'CITY', 'Secrets Cerpin'),
(45, 'CITY', 'Valentine'),
(46, 'CITY', 'St. James'),
(47, 'CITY', 'Hastings'),
(48, 'CITY', 'St. Lawrence'),
(49, 'CITY', 'St. Phillip'),
(50, 'CITY', 'Christ Church'),
(51, 'CITY', 'St. Johns'),
(52, 'CITY', 'Colebay'),
(53, 'CITY', 'Frigate Bay'),
(54, 'CITY', 'Blowing point'),
(55, 'CITY', 'Brewer''s Bay'),
(56, 'CITY', 'Castle Bruse'),
(57, 'CITY', 'Castle Comfort'),
(58, 'CITY', 'Charlotte Amalie'),
(59, 'CITY', 'Frenchman Cay'),
(61, 'CITY', 'Meads Bay'),
(62, 'CITY', 'North Sound'),
(63, 'CITY', 'Oualie Bay'),
(64, 'CITY', 'Pinneys Beach'),
(65, 'CITY', 'South of Roseau'),
(66, 'CITY', 'Spring Bay'),
(67, 'CITY', 'St. James Parish'),
(68, 'CITY', 'The Valley Plum Bay Road'),
(69, 'CITY', 'West End'),
(70, 'ISLAND', 'Tortola'),
(71, 'ISLAND', 'Virgin Gorda'),
(72, 'ISLAND', 'Saint Thomas'),
(73, 'CITY', '5 Estate Bakkeroe'),
(74, 'ISLAND', 'Saint Barts');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `when` datetime NOT NULL,
  `title` varchar(70) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `when`, `title`, `content`) VALUES
(1, '2013-10-10 12:00:00', 'Releasing a new Website', 'CJRP Travel is thrilled to announce the launch a new website'),
(2, '2013-11-23 12:00:00', 'Online hotel booking reservation', 'CJRP Travel has released a new functionality to its website. Now, you can search hotel promotions directly online and make your reservation at great CJRP rates!');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT '1',
  `ownerType_label_id` int(11) NOT NULL,
  PRIMARY KEY (`room_id`),
  UNIQUE KEY `room_id_UNIQUE` (`room_id`),
  KEY `fk_room_label1_idx` (`ownerType_label_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `description`, `capacity`, `ownerType_label_id`) VALUES
(1, 'One Bedroom Suite', 2, 1),
(2, 'Two Bedroom Suite', 2, 1),
(3, 'Standard', 2, 1),
(4, 'Ocean front junior', 2, 1),
(5, 'Ocean front Superior', 2, 1),
(6, 'Ocean front premier', 2, 1),
(7, 'Ocean front Luxury', 2, 1),
(8, 'Oeean one bedroom', 2, 1),
(9, 'Ocean front two bedroom', 4, 1),
(10, 'Ocean front three bedroom', 6, 1),
(11, 'Ocean front four bedroom', 8, 1),
(12, 'Ocean front five bedroom', 10, 1),
(13, 'Luxury room', 2, 1),
(14, 'Ocean luxury', 2, 1),
(15, 'Queens junior suite o/f', 2, 1),
(16, 'Studio suite', 2, 1),
(17, 'Garden view', 2, 1),
(18, 'Penthouse', 2, 1),
(19, 'Villa', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `taxe`
--

CREATE TABLE IF NOT EXISTS `taxe` (
  `taxe_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `value` double(6,2) DEFAULT NULL,
  `isPercent` tinyint(1) DEFAULT NULL,
  `carRating_id` int(11) NOT NULL,
  `hotelRating_id` int(11) NOT NULL,
  PRIMARY KEY (`taxe_id`),
  UNIQUE KEY `taxe_id_UNIQUE` (`taxe_id`),
  KEY `fk_taxe_carRating1_idx` (`carRating_id`),
  KEY `fk_taxe_hotelRating1_idx` (`hotelRating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `fk_car_label1` FOREIGN KEY (`make_label_id`) REFERENCES `label` (`label_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_car_label2` FOREIGN KEY (`type_label_id`) REFERENCES `label` (`label_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `carrating`
--
ALTER TABLE `carrating`
  ADD CONSTRAINT `fk_rating_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rating_car1` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `fk_company_label` FOREIGN KEY (`island_label_id`) REFERENCES `label` (`label_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_company_label1` FOREIGN KEY (`city_label_id`) REFERENCES `label` (`label_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_company_label2` FOREIGN KEY (`type_label_id`) REFERENCES `label` (`label_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hotelrating`
--
ALTER TABLE `hotelrating`
  ADD CONSTRAINT `fk_rating_company10` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hotelRating_room1` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fk_room_label1` FOREIGN KEY (`ownerType_label_id`) REFERENCES `label` (`label_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `taxe`
--
ALTER TABLE `taxe`
  ADD CONSTRAINT `fk_taxe_carRating1` FOREIGN KEY (`carRating_id`) REFERENCES `carrating` (`carRating_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_taxe_hotelRating1` FOREIGN KEY (`hotelRating_id`) REFERENCES `hotelrating` (`hotelRating_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
