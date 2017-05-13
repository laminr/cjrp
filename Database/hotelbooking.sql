-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 17, 2013 at 05:36 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

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
-- Table structure for table `hotelbooking`
--

CREATE TABLE IF NOT EXISTS `hotelbooking` (
  `hotelBooking_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50)  DEFAULT NULL,
  `island` varchar(45)  NOT NULL,
  `city` varchar(45)  NOT NULL,
  `type` varchar(20)  DEFAULT NULL,
  `perDay` double(6,2) DEFAULT NULL,
  `taxe` double(6,2) DEFAULT NULL,
  `govLevy` double(6,2) DEFAULT NULL,
  `chargePerDay` double(6,2) DEFAULT NULL,
  PRIMARY KEY (`hotelBooking_id`),
  UNIQUE KEY `hotelBooking_id_UNIQUE` (`hotelBooking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 ;

--
-- Dumping data for table `hotelbooking`
--

INSERT INTO `hotelbooking` (`hotelBooking_id`, `name`, `island`, `city`, `type`, `perDay`, `taxe`, `govLevy`, `chargePerDay`) VALUES
(1, 'The Pool House', 'Anguilla', '', 'One Bedroom Suites', 119.00, 2.00, 119.20, 10.00),
(2, 'La Vue', 'Anguilla', 'The Valley', 'One Bedroom Suites', 200.00, 2.00, 200.00, 10.00),
(3, 'La Vue', 'Anguilla', 'The Valley', 'Two Bedroom Suites', 322.00, 2.00, 322.00, 10.00);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
