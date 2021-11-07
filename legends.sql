-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2021 at 08:44 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `legends`
--

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE `ordertable` (
  `order_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `total` int(11) NOT NULL,
  `CName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`order_id`, `p_id`, `order_date`, `total`, `CName`) VALUES
(1, 1, '2021-11-06', 500, 'Shalini'),
(2, 1, '2021-11-06', 500, 'Shalini'),
(3, 1, '2021-11-06', 500, 'Shalini'),
(4, 2, '2021-11-06', 500, 'Shalini'),
(5, 1, '2021-11-06', 500, 'Maria'),
(6, 3, '2021-11-06', 500, 'Maria'),
(7, 1, '2021-11-06', 500, 'Maria'),
(8, 0, '0000-00-00', 0, 'Maria'),
(9, 0, '0000-00-00', 0, 'Maria'),
(10, 1, '2021-11-06', 500, 'Maria'),
(11, 1, '2021-11-06', 500, 'Maria'),
(12, 1, '2021-11-06', 500, 'Maria'),
(13, 3, '2021-11-06', 500, 'Maria');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pID` int(11) NOT NULL,
  `pImg` text NOT NULL,
  `pName` varchar(100) NOT NULL,
  `pPrice` int(11) NOT NULL,
  `pDesc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pID`, `pImg`, `pName`, `pPrice`, `pDesc`) VALUES
(1, 'shop/product1.jpg', 'product 1 name', 500, 'ABCDEFG'),
(2, 'shop/product2.jpg', 'product 2 name', 500, 'asdfghjkll'),
(3, 'shop/product3.jpg', 'product 3 name', 500, 'asdfghjkll'),
(4, 'shop/product4.jpg', 'product 4 name', 500, 'asdfghjkll'),
(5, 'shop/product5.jpeg', 'product 5 name', 500, 'asdfghjkll');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_name`, `password`) VALUES
('Maria', 'asd'),
('Shalini', 'smp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `prodId` (`p_id`) USING BTREE;

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pID`),
  ADD UNIQUE KEY `pName` (`pName`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `password` (`password`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
