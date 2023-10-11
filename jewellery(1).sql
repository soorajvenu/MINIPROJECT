-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 07:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewellery`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aboutus`
--

CREATE TABLE `tbl_aboutus` (
  `description_au` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_aboutus`
--

INSERT INTO `tbl_aboutus` (`description_au`) VALUES
('we are in the field of jewellery for the past 60 years');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `addressid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `housename` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`addressid`, `userid`, `housename`, `state`, `district`, `pincode`, `landmark`) VALUES
(4, 5, 'newhouse', 'Kerala', 'kottayam', '686141', 'near junction'),
(5, 6, 'VELLICHAPATTIL (H) PULIMCHUVADU VAIKOM', 'tamil', 'kottayam', '686141', 'near junction');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `userid` int(11) DEFAULT NULL,
  `cartid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`userid`, `cartid`) VALUES
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cartdetails`
--

CREATE TABLE `tbl_cartdetails` (
  `cartid` int(11) DEFAULT NULL,
  `productid` varchar(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` decimal(10,4) DEFAULT NULL,
  `trate` decimal(13,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cartdetails`
--

INSERT INTO `tbl_cartdetails` (`cartid`, `productid`, `quantity`, `rate`, `trate`) VALUES
(5, 'G106', 2, 314364.0000, 943092.000),
(5, 'G109', 2, 291128.4000, 873385.200),
(5, 'G100', 1, 238848.3000, 238848.300),
(5, 'G110', 1, 999999.9999, 1161780.000),
(5, 'S103', 1, 80960.0000, 80960.000),
(6, 'G109', 1, 291128.4000, 291128.400),
(6, 'G106', 1, 314364.0000, 314364.000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_goldimage`
--

CREATE TABLE `tbl_goldimage` (
  `productid` varchar(20) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_goldimage`
--

INSERT INTO `tbl_goldimage` (`productid`, `image_path`) VALUES
('G106', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/earring/ER1.png'),
('G109', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/earring/ER2.png'),
('G100', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/bangle/BANGLE2.png'),
('G105', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/bangle/BANGLE9.png'),
('G110', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/bangle/BANGLE7.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_goldproduct`
--

CREATE TABLE `tbl_goldproduct` (
  `productid` varchar(20) NOT NULL,
  `productcategory` varchar(255) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL,
  `purity` decimal(4,2) DEFAULT NULL,
  `makingcharge` decimal(6,3) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `totalrate` decimal(10,2) GENERATED ALWAYS AS (`weight` * `rate` * `makingcharge`) STORED,
  `description` varchar(100) DEFAULT NULL,
  `huid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_goldproduct`
--

INSERT INTO `tbl_goldproduct` (`productid`, `productcategory`, `weight`, `stock`, `purity`, `makingcharge`, `rate`, `description`, `huid`) VALUES
('G100', 'bangle', 13.98, 6, 91.60, 3.000, 5695.00, 'bangle', 'BG456'),
('G105', 'bangle', 14.78, 9, 91.60, 4.000, 5695.00, 'sdfdsfs', 'BG109'),
('G106', 'earring', 13.80, 5, 99.90, 4.000, 5695.00, 'dsdgd', 'GH123'),
('G109', 'earring', 12.78, 3, 99.90, 4.000, 5695.00, 'earring', 'ER354'),
('G110', 'bangle', 34.00, 2, 91.60, 6.000, 5695.00, '22K Gold Bangle', 'BG123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_silverimage`
--

CREATE TABLE `tbl_silverimage` (
  `productid` varchar(20) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_silverimage`
--

INSERT INTO `tbl_silverimage` (`productid`, `image_path`) VALUES
('S100', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/SILVER/earring/SER4.png'),
('S103', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/SILVER/earring/SER4.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_silverproduct`
--

CREATE TABLE `tbl_silverproduct` (
  `productid` varchar(20) NOT NULL,
  `productcategory` varchar(255) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL,
  `purity` decimal(4,2) DEFAULT NULL,
  `makingcharge` decimal(6,3) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `totalrate` decimal(10,2) GENERATED ALWAYS AS (`weight` * `rate` * `makingcharge`) STORED,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_silverproduct`
--

INSERT INTO `tbl_silverproduct` (`productid`, `productcategory`, `weight`, `stock`, `purity`, `makingcharge`, `rate`, `description`) VALUES
('S100', 'earring', 23.00, 0, 99.90, 13.000, 110.00, 'fgfxgf'),
('S103', 'earring', 23.00, 10, 92.50, 32.000, 110.00, 'dsdgd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `username`, `email`, `password`) VALUES
(5, 'venu g', 'venu@gmail.com', '8547197212'),
(6, 'bindu venu', 'bindu@gmail.com', '9497397279'),
(7, 'sanjay natesan', 'sanjay@gmail.com', '8569764585'),
(8, 'aravind sunilkumar', 'aravind@gmail.com', '8547197212'),
(9, 'sanjay', 'sanjay@gmail.com', '8547197212');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`addressid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tbl_goldimage`
--
ALTER TABLE `tbl_goldimage`
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `tbl_goldproduct`
--
ALTER TABLE `tbl_goldproduct`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `tbl_silverimage`
--
ALTER TABLE `tbl_silverimage`
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `tbl_silverproduct`
--
ALTER TABLE `tbl_silverproduct`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `addressid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD CONSTRAINT `tbl_address_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `tbl_user` (`userid`);

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `tbl_user` (`userid`);

--
-- Constraints for table `tbl_goldimage`
--
ALTER TABLE `tbl_goldimage`
  ADD CONSTRAINT `tbl_goldimage_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `tbl_goldproduct` (`productid`);

--
-- Constraints for table `tbl_silverimage`
--
ALTER TABLE `tbl_silverimage`
  ADD CONSTRAINT `tbl_silverimage_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `tbl_silverproduct` (`productid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
