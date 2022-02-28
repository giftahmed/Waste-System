-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2021 at 06:31 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gabbage`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '12345'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nat_id` int(11) NOT NULL,
  `password` text NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `location` text NOT NULL,
  `mobile_no` text NOT NULL,
  `gabbage_type` text NOT NULL,
  `application_date` text NOT NULL,
  `confirmation_code` text NOT NULL,
  `payment_status` text NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `nat_id`, `password`, `f_name`, `l_name`, `location`, `mobile_no`, `gabbage_type`, `application_date`, `confirmation_code`, `payment_status`, `amount`) VALUES
(1, 29949298, 'f925916e2754e5e03f75dd58a5733251', 'karanja', 'wakio', 'Thika town', '0775846954', 'Harzadous', 'May 28, 2015', '', '0', 0),
(2, 29949299, 'f925916e2754e5e03f75dd58a5733251', 'Jermiah', 'walia', 'Landless', '0725545465', 'Degrdable', 'May 28, 2015', 'ADBREKWKE', '1', 1700),
(3, 44444444, 'f925916e2754e5e03f75dd58a5733251', 'Njoroge', 'Kamau', 'Makonge', '0758469584', 'Degrdable', 'May 28, 2015', 'GWT10525YT', '1', 1270),
(29, 44444442, '827ccb0eea8a706c4c34a16891f84e7b', 'Gift', 'Ahmed', 'FULokoja', '8140864252', 'Harzadous', 'November 16, 2021', '11111', '1', 1500),
(30, 44444443, '827ccb0eea8a706c4c34a16891f84e7b', 'Gift', 'Ahmed', 'FULokoja', '814086111', 'Degrdable', 'November 16, 2021', '11111', '0', 1800);

-- --------------------------------------------------------

--
-- Table structure for table `gabbage_type`
--

CREATE TABLE `gabbage_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `charges` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gabbage_type`
--

INSERT INTO `gabbage_type` (`id`, `name`, `charges`) VALUES
(1, 'Harzadous', '500'),
(3, 'degrdable', '800'),
(5, 'Bio', '500');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `location` text NOT NULL,
  `charges` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location`, `charges`) VALUES
(10, 'FULokoja', '1000'),
(11, 'AdnLokoja', '2880');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `date` text NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `date`, `details`) VALUES
(13, 'Tuesday 16th November 2021 ', 'hello this is a teat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gabbage_type`
--
ALTER TABLE `gabbage_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `gabbage_type`
--
ALTER TABLE `gabbage_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
