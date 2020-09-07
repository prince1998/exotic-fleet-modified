-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2020 at 07:05 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '1', 1, '2020-04-08 17:14:01', 'Debit / Credit card', NULL),
(2, 1, '1', 1, '2020-04-08 22:58:24', 'Debit / Credit card', NULL),
(3, 1, '1', 1, '2020-04-08 23:02:45', '', NULL),
(4, 1, '1', 1, '2020-04-08 23:12:01', '', NULL),
(5, 1, '1', 1, '2020-04-08 23:12:27', '', NULL),
(6, 1, '1', 1, '2020-04-08 23:16:27', '', NULL),
(7, 1, '1', 1, '2020-04-09 00:43:30', '', NULL),
(8, 1, '1', 1, '2020-04-09 09:16:19', '', NULL),
(9, 1, '1', 1, '2020-04-09 09:20:28', '', NULL),
(10, 1, '2', 1, '2020-04-09 11:45:59', '', NULL),
(11, 1, '1', 1, '2020-04-09 11:55:28', '', NULL),
(12, 1, '2', 1, '2020-04-09 11:55:28', '', NULL),
(13, 1, '1', 1, '2020-04-09 11:59:03', '', NULL),
(14, 1, '3', 1, '2020-04-09 12:26:39', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(1, 1, 1, 1, 1, 'Prince', 'prince', 'prince', '2020-04-08 21:00:25'),
(2, 1, 1, 1, 1, 'Prince', 'prince', 'prince', '2020-04-08 21:00:57'),
(3, 1, 1, 1, 1, 'Prince', 'prince', 'prince', '2020-04-08 21:01:12'),
(4, 1, 1, 1, 1, 'Prince', 'prince', 'prince', '2020-04-08 21:01:29'),
(5, 1, 1, 1, 1, 'Prince', 'prince', 'prince', '2020-04-08 21:01:45'),
(6, 1, 1, 1, 1, 'Prince', 'prince', 'prince', '2020-04-08 21:02:03'),
(7, 1, 5, 5, 5, 'Priyansh', 'Test Review', 'Test Review', '2020-04-09 12:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Audi A8 - White', 'Audi', 15600000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Fuel Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Petrol</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Transmission</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Automatic</li></ul></li></ul>', 'Audi_A8.jpg', 'audi-a8-2.jpg', 'audi-a8-3.jpg', 0, 'In Stock', '2017-01-30 16:54:35', ''),
(2, 4, 3, 'BMW M3 - Blue', 'BMW', 13000000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Fuel Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Petrol</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Transmission</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Automatic</li></ul></li></ul>', 'BMW-M3-1.jpg', 'BMW-M3-2.jpg', 'BMW-M3-3.jpg', 0, 'In Stock', '2017-01-30 16:54:35', ''),
(3, 4, 3, 'Bugatti Chiron - Black', 'Bugatti', 192100000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Fuel Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Petrol</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Transmission</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Automatic</li></ul></li></ul>', 'Bugatti-Chiron-1.jpg', 'Bugatti-Chiron-2.jpg', 'Bugatti-Chiron-3.jpg', 0, 'In Stock', '2017-01-30 16:54:35', ''),
(4, 4, 3, 'Dodge Demon - Red', 'Dodge', 6463000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Fuel Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Petrol</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Transmission</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Automatic</li></ul></li></ul>', 'dodge-demon-1.jpg', 'dodge-demon-2.jpg', 'dodge-demon-3.jpg', 0, 'In Stock', '2017-01-30 16:54:35', ''),
(5, 4, 3, 'Ferrari LaFerrari - Red', 'Ferrari', 70000000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Fuel Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Petrol</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Transmission</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Automatic</li></ul></li></ul>', 'ferrari1.jpeg', 'ferrari2.jpeg', 'ferrari3.jpg', 0, 'In Stock', '2017-01-30 16:54:35', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(31, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-06 07:16:53', NULL, 1),
(32, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-06 10:37:23', NULL, 0),
(33, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-06 10:37:28', '06-04-2020 04:13:17 PM', 1),
(34, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-07 11:10:08', NULL, 1),
(35, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 15:42:06', '08-04-2020 09:12:14 PM', 1),
(36, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 17:13:58', '08-04-2020 11:43:12 PM', 1),
(37, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 18:57:17', '09-04-2020 12:27:20 AM', 1),
(38, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 18:57:28', '09-04-2020 12:27:41 AM', 1),
(39, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 18:57:47', '09-04-2020 12:28:40 AM', 1),
(40, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 18:58:42', '09-04-2020 12:28:44 AM', 1),
(41, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 18:58:47', '09-04-2020 12:28:49 AM', 1),
(42, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:00:08', NULL, 1),
(43, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:00:10', NULL, 1),
(44, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:50:45', NULL, 1),
(45, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:52:15', NULL, 1),
(46, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:52:17', NULL, 1),
(47, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:52:43', NULL, 1),
(48, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:52:49', NULL, 1),
(49, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:53:09', '09-04-2020 01:23:51 AM', 1),
(50, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:54:05', '09-04-2020 01:24:07 AM', 1),
(51, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:54:14', '09-04-2020 01:24:20 AM', 1),
(52, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:54:32', '09-04-2020 01:24:34 AM', 1),
(53, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:54:37', '09-04-2020 01:24:40 AM', 1),
(54, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:54:52', '09-04-2020 01:24:54 AM', 1),
(55, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:57:46', NULL, 1),
(56, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:58:17', '09-04-2020 01:28:20 AM', 1),
(57, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 19:58:29', '09-04-2020 01:28:31 AM', 1),
(58, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 20:00:19', '09-04-2020 01:30:22 AM', 1),
(59, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 20:00:25', '09-04-2020 01:31:26 AM', 1),
(60, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 20:01:49', '09-04-2020 01:50:43 AM', 1),
(61, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 20:20:53', '09-04-2020 01:51:03 AM', 1),
(62, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 20:21:06', '09-04-2020 01:51:30 AM', 1),
(63, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 20:21:32', '09-04-2020 01:53:49 AM', 1),
(64, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 20:23:54', '09-04-2020 01:53:56 AM', 1),
(65, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 20:24:46', '09-04-2020 01:54:48 AM', 1),
(66, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 20:25:19', '09-04-2020 01:55:21 AM', 1),
(67, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 21:48:08', '09-04-2020 03:18:39 AM', 1),
(68, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 21:48:42', '09-04-2020 03:18:43 AM', 1),
(69, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 21:48:48', '09-04-2020 03:18:53 AM', 1),
(70, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 22:58:18', NULL, 1),
(71, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 23:02:40', NULL, 1),
(72, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-09 00:43:28', NULL, 1),
(73, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-09 07:08:12', '09-04-2020 02:40:05 PM', 1),
(74, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-09 09:12:03', '09-04-2020 02:45:27 PM', 1),
(75, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-09 09:16:16', NULL, 1),
(76, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-09 11:43:31', '09-04-2020 05:22:22 PM', 1),
(77, 'priyanshramnani21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-09 11:54:19', '09-04-2020 05:57:05 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Priyansh Ramnani', 'priyanshramnani21@gmail.com', 9167167510, 'f925916e2754e5e03f75dd58a5733251', '103, A Wing, Talati Apartment, Santa Cruz, Near Royal Enfield Showroom, Vile Parle (W), Mumbai', 'Maharashtra', 'Mumbai', 400053, '103, A Wing, Talati Apartment, Santa Cruz, Near Royal Enfield Showroom, Vile Parle (W), Mumbai', 'Maharashtra', 'Mumbai', 400053, '2017-02-04 19:30:50', ''),
(2, 'Yash Shete', 'yashshete10@gmail.com', 9167577751, '5c428d8875d2948607f3e3fe134d71b4', 'C102 Mary Chs Andheri (W)', 'Maharashtra', 'Mumbai', 400058, 'C102 Mary Chs Andheri (W)', 'Maharashtra', 'Mumbai', 400058, '2017-03-15 17:21:22', ''),
(3, 'Siddharth Sekar', 'siddharthsekar32@gmail.com', 9820872972, '827ccb0eea8a706c4c34a16891f84e7b', '303, Sai Jyot Building, SV Road, Vile Parle West', 'Maharashtra', 'Mumbai', 400055, '303, Sai Jyot Building, SV Road, Vile Parle West', 'Maharashtra', 'Mumbai', 400055, '2018-04-29 09:30:32', ''),
(5, 'Test', 'test@gmail.com', 123, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 21:04:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 1, 1, '2020-04-09 09:14:07'),
(3, 1, 2, '2020-04-09 11:56:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
