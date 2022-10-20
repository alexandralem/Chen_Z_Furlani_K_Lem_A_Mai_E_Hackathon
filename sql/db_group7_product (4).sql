-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 20, 2022 at 04:38 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_group7_product`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_desc`
--

CREATE TABLE `tbl_desc` (
  `desc_id` int(11) NOT NULL,
  `desc_info` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_desc`
--

INSERT INTO `tbl_desc` (`desc_id`, `desc_info`) VALUES
(1, 'The classic ThermoSecurity watch helps you link with your house at all times and check the status.'),
(2, 'The new ThermoSecurity watch with added waterproof function can better accompany your life.'),
(3, 'The computer remotely tracks the home security environment, giving you more peace of mind.'),
(4, 'Use the mobile phone to check the house status, making the control more convenient and fast.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_img`
--

CREATE TABLE `tbl_img` (
  `img_id` int(11) NOT NULL,
  `img_jpg` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_img`
--

INSERT INTO `tbl_img` (`img_id`, `img_jpg`) VALUES
(1, 'watch1.jpg'),
(2, 'watch2.jpg'),
(3, 'phone.jpg'),
(4, 'laptop.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_price`
--

CREATE TABLE `tbl_price` (
  `price_id` int(11) NOT NULL,
  `price_number` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_price`
--

INSERT INTO `tbl_price` (`price_id`, `price_number`) VALUES
(1, '89$'),
(2, '71$'),
(3, '49$'),
(4, '61$');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `price_id` int(11) NOT NULL,
  `img_id` int(11) NOT NULL,
  `desc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `price_id`, `img_id`, `desc_id`) VALUES
(1, 'watch type 1', 1, 1, 1),
(2, 'watch type 2', 2, 2, 2),
(3, 'laptop', 3, 3, 3),
(4, 'phone', 4, 4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_desc`
--
ALTER TABLE `tbl_desc`
  ADD PRIMARY KEY (`desc_id`);

--
-- Indexes for table `tbl_img`
--
ALTER TABLE `tbl_img`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `tbl_price`
--
ALTER TABLE `tbl_price`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_price_price_id` (`price_id`),
  ADD KEY `product_img_img_id` (`img_id`),
  ADD KEY `product_desc_desc_id` (`desc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_desc`
--
ALTER TABLE `tbl_desc`
  MODIFY `desc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_img`
--
ALTER TABLE `tbl_img`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_price`
--
ALTER TABLE `tbl_price`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `product_desc_desc_id` FOREIGN KEY (`desc_id`) REFERENCES `tbl_desc` (`desc_id`),
  ADD CONSTRAINT `product_img_img_id` FOREIGN KEY (`img_id`) REFERENCES `tbl_img` (`img_id`),
  ADD CONSTRAINT `product_price_price_id` FOREIGN KEY (`price_id`) REFERENCES `tbl_price` (`price_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
