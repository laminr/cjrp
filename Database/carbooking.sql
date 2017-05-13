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
-- Table structure for table `carbooking`
--

CREATE TABLE IF NOT EXISTS `carbooking` (
  `carBooking_id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  `island` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `make` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `seats` varchar(5) DEFAULT NULL,
  `perDay` double(6,2) DEFAULT NULL,
  `perWeek` double(6,2) DEFAULT NULL,
  `chargePerDay` double(6,2) DEFAULT NULL,
  `ratioChargePerWeek` double(3,2) DEFAULT NULL,
  PRIMARY KEY (`carBooking_id`),
  UNIQUE KEY `carBooking_id_UNIQUE` (`carBooking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `carbooking`
--

INSERT INTO `carbooking` (`carBooking_id`, `company`, `island`, `type`, `make`, `model`, `seats`, `perDay`, `perWeek`, `chargePerDay`, `ratioChargePerWeek`) VALUES
(20, 'Gumbsie Car Rental', 'Anguilla', 'Jeep', 'Suzuki', 'Grand Vitara XL7', '7', 75.00, 450.00, 10.00, 1.00),
(21, 'Gumbsie Car Rental', 'Anguilla', 'Jeep', 'Suzuki', 'Vitara', '4/5', 60.00, 360.00, 10.00, 1.00),
(22, 'Gumbsie Car Rental', 'Anguilla', 'Jeep', 'Ford', 'Escape', '4/5', 60.00, 360.00, 10.00, 1.00),
(23, 'Gumbsie Car Rental', 'Anguilla', 'Jeep', 'Diahatsu', '', '4/5', 60.00, 360.00, 10.00, 1.00),
(24, 'Gumbsie Car Rental', 'Anguilla', 'Jeep', 'Mitsubishi', '', '4/5', 60.00, 360.00, 10.00, 1.00),
(25, 'Gumbsie Car Rental', 'Anguilla', 'Jeep', 'Hyundai', 'Tuscon', '4/5', 60.00, 360.00, 10.00, 1.00),
(26, 'Gumbsie Car Rental', 'Anguilla', 'Jeep', 'Toyota', '', '4/5', 60.00, 360.00, 10.00, 1.00),
(27, 'Gumbsie Car Rental', 'Anguilla', 'Cars', 'Toyota', '', '5', 50.00, 300.00, 10.00, 1.00),
(28, 'Gumbsie Car Rental', 'Anguilla', 'Cars', 'Mazda', '', '5', 50.00, 300.00, 10.00, 1.00),
(29, 'Gumbsie Car Rental', 'Anguilla', 'Cars', 'Mitsubishi', '', '5', 50.00, 300.00, 10.00, 1.00),
(30, 'Gumbsie Car Rental', 'Anguilla', 'Cars', 'Suzuki', '', '5', 50.00, 300.00, 10.00, 1.00),
(31, 'Gumbsie Car Rental', 'Anguilla', 'MiniVans', 'Any', '', '8/10', 95.00, 540.00, 10.00, 1.00),
(32, 'Gumbsie Car Rental', 'Anguilla', 'MiniVans', 'Any', '', '12', 100.00, 600.00, 10.00, 1.00),
(33, 'Gumbsie Car Rental', 'Anguilla', 'Jeep', 'Jeep', 'Wrangler', '5', 75.00, 450.00, 10.00, 1.00),
(34, 'Gumbsie Car Rental', 'Anguilla', 'Jeep', 'Jeep', 'Wrangler', '6', 85.00, 510.00, 10.00, 1.00),
(35, 'Gumbsie Car Rental', 'Anguilla', 'Jeep', 'Crystler', 'Aspen', '7', 95.00, 590.00, 10.00, 1.00),
(36, 'Gumbsie Car Rental', 'Anguilla', 'SUV', 'Nissan', 'Quest', '7', 100.00, 600.00, 10.00, 1.00);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
