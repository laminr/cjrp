-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 16, 2013 at 08:22 PM
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
CREATE DATABASE `cjrp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cjrp`;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE IF NOT EXISTS `car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `make_label_id` int(11) NOT NULL,
  `model` varchar(45) DEFAULT NULL,
  `type_label_id` int(11) NOT NULL,
  `seats` int(11) DEFAULT NULL,
  PRIMARY KEY (`car_id`,`make_label_id`,`type_label_id`),
  KEY `fk_car_label1_idx` (`make_label_id`),
  KEY `fk_car_label2_idx` (`type_label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `carbooking`
--

CREATE TABLE IF NOT EXISTS `carbooking` (
  `carBooking_id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `island` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `type` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `make` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `model` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `seats` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `island_label_id` int(11) NOT NULL,
  PRIMARY KEY (`company_id`,`island_label_id`),
  KEY `fk_company_label_idx` (`island_label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hotelbooking`
--

CREATE TABLE IF NOT EXISTS `hotelbooking` (
  `hotelBooking_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `island` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `type` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `perDay` double(6,2) DEFAULT NULL,
  `taxe` double(6,2) DEFAULT NULL,
  `govLevy` double(6,2) DEFAULT NULL,
  `chargePerDay` double(6,2) DEFAULT NULL,
  PRIMARY KEY (`hotelBooking_id`),
  UNIQUE KEY `hotelBooking_id_UNIQUE` (`hotelBooking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hotelbooking`
--

INSERT INTO `hotelbooking` (`hotelBooking_id`, `name`, `island`, `city`, `type`, `perDay`, `taxe`, `govLevy`, `chargePerDay`) VALUES
(1, 'The Pool House', 'Anguilla', '', 'One Bedroom Suites', 119.00, 2.00, 119.20, 10.00),
(2, 'La Vue', 'Anguilla', 'The Valley', 'One Bedroom Suites', 200.00, 2.00, 200.00, 10.00),
(3, 'La Vue', 'Anguilla', 'The Valley', 'Two Bedroom Suites', 322.00, 2.00, 322.00, 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `label`
--

CREATE TABLE IF NOT EXISTS `label` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `delay_label_id` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `charge` decimal(8,2) NOT NULL,
  PRIMARY KEY (`rating_id`,`company_id`,`car_id`,`delay_label_id`),
  UNIQUE KEY `rating_id_UNIQUE` (`rating_id`),
  KEY `fk_rating_company1_idx` (`company_id`),
  KEY `fk_rating_car1_idx` (`car_id`),
  KEY `fk_rating_label1_idx` (`delay_label_id`)
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
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `fk_company_label` FOREIGN KEY (`island_label_id`) REFERENCES `label` (`label_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_rating_car1` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rating_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rating_label1` FOREIGN KEY (`delay_label_id`) REFERENCES `label` (`label_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
