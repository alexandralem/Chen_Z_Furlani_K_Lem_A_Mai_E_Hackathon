-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 20, 2022 at 03:34 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_HouseCon_Group7`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card`
--

CREATE TABLE `tbl_card` (
  `card_id` int(10) NOT NULL,
  `card_icon` varchar(50) NOT NULL COMMENT 'icon svg',
  `card_info` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_card`
--

INSERT INTO `tbl_card` (`card_id`, `card_icon`, `card_info`) VALUES
(1, 'gear.svg', 'Provides state-of-the-art technology for security'),
(2, 'people.svg', 'Most people\'s security the system is preferred and trustworthy'),
(3, 'eye.svg', 'The machine is intelligently monitored around the clock');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_choose`
--

CREATE TABLE `tbl_choose` (
  `choose_id` int(10) NOT NULL,
  `choose_name` varchar(150) NOT NULL,
  `choose_content` varchar(500) NOT NULL,
  `choose_image` varchar(100) NOT NULL COMMENT 'image.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_choose`
--

INSERT INTO `tbl_choose` (`choose_id`, `choose_name`, `choose_content`, `choose_image`) VALUES
(1, 'control', 'Stay in control of your home \r\nno matter where you are! \r\nwith our ThermoSecurity app,\r\nyou can change the settings of your home while you’re out! \r\nWant to turn on some relaxing\r\nmusic for your dog? Worried you left the light on? We got you covered!', 'control.jpg'),
(2, 'Conserve', 'With ThermoSecurity you \r\ncan save up to 20% on your heating bill!  Our smart\r\ntechnology ThermoSecurity \r\ncan detect when to turn down \r\nand up your heat for you, saving you energy and money!', 'conserve.jpg'),
(3, 'Security', 'We have your safety covered! \r\nWe know how important your family’s safety is to you. With our advanced sensor \r\ntechnology, we can alert you of any suspicious activity. Have peace of mind being able to \r\ncheck your live feed anywhere.', 'secuirty.jpg'),
(4, 'Play', 'While ThermoSecurity keeps you covered outside, you can stay comfortable inside! ThermoSecurity connects\r\nto Bluetooth and Spotify, and our surround sound system can have music playing all over the house.', 'play.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `contact_icon` varchar(100) NOT NULL,
  `contact_info` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `contact_icon`, `contact_info`) VALUES
(1, 'phone.svg', '4192932937'),
(2, 'fax.svg', '123 3748 23'),
(3, 'mail.svg', 'thermosecuirty@kavorka.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data`
--

CREATE TABLE `tbl_data` (
  `data_id` int(10) NOT NULL,
  `data_number` varchar(100) NOT NULL,
  `data_info` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_data`
--

INSERT INTO `tbl_data` (`data_id`, `data_number`, `data_info`) VALUES
(1, '1236', 'Since its inception, ThermoSecurity has guarded a total of 1,236 homes.'),
(2, '45%', 'A total of 45 percent of households in Ontario choose ThermoSecurity.');

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
-- Table structure for table `tbl_function`
--

CREATE TABLE `tbl_function` (
  `function_id` int(10) NOT NULL,
  `function_content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_function`
--

INSERT INTO `tbl_function` (`function_id`, `function_content`) VALUES
(1, 'Adjust your temperature with just a tap.\r\nThermoSecurity has you covered, even\r\nwhen you’re away from home.'),
(2, 'Stay comfortable knowing ThermoSecurity\r\nkeeps you protected. Our advanced camera\r\nand sensor technology helps detect any\r\nUnexpected activity. Check the camera for\r\nLive video feed to give yourself peace of\r\nmind.'),
(3, 'Connect your ThermoSecurity to Bluetooth\r\nor Spotify. ThermoSecurity has a built-in\r\nsurround sound, connecting you with the\r\nwhole home!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gall_id` int(10) NOT NULL,
  `gall_name` varchar(100) NOT NULL,
  `gall_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gall_id`, `gall_name`, `gall_image`) VALUES
(1, 'number 1', 'gall1.jpg'),
(2, 'number 2', 'gall2.jpg'),
(3, 'number 3', 'gall3.jpg'),
(4, 'number 4', 'gall4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `image_id` int(10) NOT NULL,
  `image_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_image`
--

INSERT INTO `tbl_image` (`image_id`, `image_name`) VALUES
(1, 'heroimg.jpg'),
(2, 'phoneFeature.jpg'),
(3, 'device.jpg');

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
-- Table structure for table `tbl_intro`
--

CREATE TABLE `tbl_intro` (
  `intro_id` int(10) NOT NULL,
  `intro_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_intro`
--

INSERT INTO `tbl_intro` (`intro_id`, `intro_text`) VALUES
(1, 'Your new go to smart thermostat, ThermoSecurity\r\nhas your family covered. Our new energy saving\r\nTechnology will save you up to 20% on your heating\r\nand air conditioner bills.\r\nUse code: THERMO20 to save 20% on your first\r\npurchase!');

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
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_desc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_desc`) VALUES
(1, 'ThermoSecurity', 'Your new go to smart thermostat, ThermoSecurity \r\nhas your family covered. Our new energy saving \r\nTechnology will save you up to 20% on your heating\r\nand air conditioner bills. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thermosecurity_section`
--

CREATE TABLE `tbl_thermosecurity_section` (
  `section_id` int(11) NOT NULL,
  `section_name` varchar(150) NOT NULL,
  `section_title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_thermosecurity_section`
--

INSERT INTO `tbl_thermosecurity_section` (`section_id`, `section_name`, `section_title`) VALUES
(1, 'introduction', 'ALL NEW ThermoSecurity'),
(2, 'why choose us', 'Why choose ThermoSecurity'),
(3, 'feature display', 'ThermoSecurity allows you easy access to control your home\'s thermostat and security with our app.\r\nCompatible with Apple and Android.'),
(4, 'card', ''),
(5, 'data', 'Always Attentive To Provide You With The Best Service.'),
(6, 'image gallery', 'ThermoSecurity');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_card`
--
ALTER TABLE `tbl_card`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `tbl_choose`
--
ALTER TABLE `tbl_choose`
  ADD PRIMARY KEY (`choose_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_data`
--
ALTER TABLE `tbl_data`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `tbl_function`
--
ALTER TABLE `tbl_function`
  ADD PRIMARY KEY (`function_id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gall_id`);

--
-- Indexes for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `tbl_intro`
--
ALTER TABLE `tbl_intro`
  ADD PRIMARY KEY (`intro_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_thermosecurity_section`
--
ALTER TABLE `tbl_thermosecurity_section`
  ADD PRIMARY KEY (`section_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_card`
--
ALTER TABLE `tbl_card`
  MODIFY `card_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_choose`
--
ALTER TABLE `tbl_choose`
  MODIFY `choose_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_data`
--
ALTER TABLE `tbl_data`
  MODIFY `data_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_function`
--
ALTER TABLE `tbl_function`
  MODIFY `function_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gall_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_intro`
--
ALTER TABLE `tbl_intro`
  MODIFY `intro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_thermosecurity_section`
--
ALTER TABLE `tbl_thermosecurity_section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
