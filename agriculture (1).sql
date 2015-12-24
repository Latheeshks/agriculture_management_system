-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2015 at 10:33 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agriculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(10) NOT NULL,
  `stock_name` varchar(100) NOT NULL,
  `stock_quantity` varchar(10) NOT NULL,
  `usernamecart` varchar(100) NOT NULL,
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(25) NOT NULL,
  `status` int(1) NOT NULL,
  `email` varchar(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `usertype`, `status`, `email`, `name`, `contact`) VALUES
(1, 'admin', 'admin', 'admin', 1, 'admin@email.com', 'Admin NAME', '1234567890'),
(15, 'user', 'user', 'user', 1, 'a@b.com', 'testuser', '1234567890'),
(16, 'Latheesh KS', 'LATHEESH', 'user', 1, 'latheesh@yahoo.com', 'Latheesh', '7894567891'),
(17, 'kc', 'chandran', 'user', 1, 'kiluchandran@gmail.com', 'kilu', '9446157663'),
(19, 'vidya', 'vidya', 'user', 1, 'makku@gmail.com', 'vidya', '1231231230'),
(20, 'jeby5', '123', 'user', 1, 'jeby5@outlook.com', 'jeby', '8156877454'),
(21, 'Nakul', 'NAKUL', 'user', 1, 'nakul@gmail.com', 'Nakul Kumar', '7898800070');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_by` varchar(100) NOT NULL,
  `order_address` varchar(100) NOT NULL,
  `items` varchar(200) NOT NULL,
  `delevered_status` varchar(10) NOT NULL,
  `current_status` varchar(100) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `deli_date` varchar(50) NOT NULL,
  `pay_method` varchar(100) NOT NULL,
  `pay_amount` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `order_by`, `order_address`, `items`, `delevered_status`, `current_status`, `order_date`, `deli_date`, `pay_method`, `pay_amount`) VALUES
(1, 'user', 'abc , abc', 'flower seeds,cocunut ,tomato,', '0', '2', '18-10-2015', '18-10-2015', 'Net Banking', '145'),
(2, 'Latheesh KS', 'Latheesh , Kollam', 'Brinjal,', '0', '0', '18-10-2015', '19-10-2015', 'COD', '225'),
(3, 'kc', 'kilu , veliyakath', 'vegitable seeds,flower seeds,jackfruit,Brinjal,', '0', '1', '18-10-2015', '23-10-2015', 'Net Banking', '160'),
(4, 'Latheesh KS', 'f , l', 'mango seed,jackfruit,', '0', '2', '18-10-2015', '21-10-2015', 'Net Banking', '90'),
(5, 'user', 'fdsfsdf , dfdsfsdf', 'Brinjal,Potato,tomato,cocunut ,mango seed,jackfruit,flower seeds,vegitable seeds,', '0', '2', '18-10-2015', '30-10-2015', 'COD', '220'),
(6, 'user', 'vidhya , abc', 'Potato,cocunut ,tomato,jackfruit,flower seeds,vegitable seeds,', '0', '2', '18-10-2015', '20-10-2015', 'COD', '185'),
(7, 'user', 'jeby , karichal', 'tomato,', '0', '2', '18-10-2015', '18-10-2015', 'Net Banking', '20');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(100) NOT NULL,
  `s_amount` varchar(100) NOT NULL,
  `s_count` int(5) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`s_id`, `s_name`, `s_amount`, `s_count`) VALUES
(1, 'vegitable seeds', '50', 197),
(2, 'flower seeds', '30', 96),
(3, 'jackfruit', '50', 96),
(4, 'mango seed', '20', 47),
(5, 'cocunut ', '25', 25),
(6, 'tomato', '20', 95),
(7, 'Potato', '10', 68),
(8, 'Brinjal', '15', 22);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
