-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2022 at 12:09 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `anbar`
--

CREATE TABLE `anbar` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `count` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `status` int(11) DEFAULT NULL,
  `pcounts` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) DEFAULT NULL,
  `starter_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `msg` text,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `favorits`
--

CREATE TABLE `favorits` (
  `id` int(11) DEFAULT NULL,
  `pids` text,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) DEFAULT NULL,
  `buys_id` text,
  `uid` int(11) DEFAULT NULL,
  `review_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `options` text,
  `pid` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `id` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `carts_id` text,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `images` text,
  `rate` int(11) DEFAULT NULL,
  `reviews_id` text,
  `vendors_id` text,
  `location` text,
  `send_time` text,
  `sells` int(11) DEFAULT NULL,
  `off` text,
  `price` text,
  `descr` text,
  `cats_id` text,
  `type` text,
  `anbar_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `descr` text,
  `pid` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ip` text,
  `device_info` text,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `date` date DEFAULT NULL,
  `sells` int(11) DEFAULT NULL,
  `products_count` int(11) DEFAULT NULL,
  `logo_url` text,
  `about` text,
  `reviews` text,
  `location` text,
  `last_visit` text,
  `vendors_id` text,
  `sells_credit` text,
  `history_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) DEFAULT NULL,
  `username` text,
  `password` text,
  `email` text,
  `phone` text,
  `reg_date` text,
  `codemeli` text,
  `name` text,
  `avatar` text,
  `buys_id` text,
  `type` text,
  `last_visit` text,
  `status` int(11) DEFAULT NULL,
  `location` text,
  `address` text,
  `reviews_id` text,
  `postalcode` text,
  `ip` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `type` enum('join','admin') DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
