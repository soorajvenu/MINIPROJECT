-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2023 at 07:15 PM
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
(6, 10, 'VELLICHAPATTIL (H) PULIMCHUVADU VAIKOM', 'Kerala', 'kottayam', '686141', 'near junction'),
(7, 17, 'illathukarayil', 'kerala', 'kottaym', '686605', 'near junction'),
(8, 16, 'souparnika', 'kerala', 'kottaym', '686141', 'near temple'),
(9, 19, 'rajuvat', 'kerala', 'Ernakulam', '68053', 'lord city'),
(10, 11, 'vellichpattil', 'kerala', 'kottaym', '686141', 'near temple');

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
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(16, 16),
(17, 17),
(18, 18),
(19, 19);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cartdetails`
--

CREATE TABLE `tbl_cartdetails` (
  `cartid` int(11) DEFAULT NULL,
  `productid` varchar(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` decimal(10,4) DEFAULT NULL,
  `trate` decimal(13,3) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cartdetails`
--

INSERT INTO `tbl_cartdetails` (`cartid`, `productid`, `quantity`, `rate`, `trate`, `status`, `orderid`) VALUES
(16, 'G187', 1, 623280.0000, 623280.000, 0, 46),
(16, 'G107', 1, 218148.0000, 218148.000, 0, 46),
(16, 'S111', 1, 19344.0000, 19344.000, 0, 47),
(16, 'G112', 1, 999999.9999, 5274284.400, 0, 48);

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
('G100', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/bangle/Screenshot 2023-10-01 194913.png'),
('G102', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/bangle/BANGLE10.png'),
('G103', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/bangle/BANGLE7.png'),
('G104', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/bangle/BANGLE9.png'),
('G105', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/ring/RING1.png'),
('G106', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/ring/RING6.png'),
('G107', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/ring/Screenshot 2023-10-01 194136.png'),
('G108', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/ring/Screenshot 2023-10-01 194511.png'),
('G109', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/ring/Screenshot 2023-10-01 194504.png'),
('G112', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/necklace/CHAIN4.png'),
('G113', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/necklace/Screenshot 2023-10-01 194732.png'),
('G114', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/chain/Screenshot 2023-07-01 232507.png'),
('G117', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/bangle/COIN1.png'),
('G118', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/coin/COIN2.png'),
('G119', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/necklace/Screenshot 2023-07-01 232554.png'),
('G199', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/necklace/Screenshot 2023-07-01 232646.png'),
('G187', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/earring/ER6.png'),
('G198', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/GOLD/ring/RING5.png');

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
('G100', 'bangle', 12.87, 1, 99.90, 4.000, 5565.00, 'Heavy Stone Bangle', 'GB100'),
('G102', 'bangle', 10.80, 2, 99.90, 5.000, 5565.00, 'Ethnic Bangle', 'GB102'),
('G103', 'bangle', 34.00, 2, 99.90, 34.000, 5565.00, 'gdfg', 'gd4'),
('G104', 'bangle', 14.60, 10, 91.60, 6.000, 5565.00, 'Traditional Design Bangle', 'GB104'),
('G105', 'ring', 2.80, 7, 99.90, 6.000, 5565.00, 'Light Weight Ring', 'GR105'),
('G106', 'ring', 2.07, 7, 91.60, 5.000, 5565.00, 'Feather Design Ring', 'GR106'),
('G107', 'ring', 4.90, 1, 75.00, 8.000, 5565.00, 'Rose Gold Slim Ring', 'GR107'),
('G108', 'ring', 3.70, 6, 75.00, 9.000, 5565.00, 'Rose Gold Ring', 'GR108'),
('G109', 'ring', 5.90, 7, 75.00, 5.000, 5565.00, 'Small Rose Gold Ring', 'GR109'),
('G112', 'necklace', 78.98, 3, 91.60, 12.000, 5565.00, 'Heavy Gold Necklace', 'GN112'),
('G113', 'necklace', 89.76, 3, 91.60, 12.000, 5565.00, 'Antique Style Necklace', 'GN113'),
('G114', 'chain', 13.00, 5, 91.60, 9.000, 5565.00, 'Pendant Style Chain', 'GC114'),
('G117', 'bangle', 2.00, 6, 99.90, 2.000, 5565.00, '2 Garm Gold Coin', 'GC117'),
('G118', 'coin', 1.00, 5, 99.90, 2.000, 5565.00, '1 Garm Gold Coin', 'GC118'),
('G119', 'necklace', 56.00, 4, 91.60, 5.000, 5565.00, 'Light Weight Necklace', 'GN119'),
('G187', 'earring', 14.00, 6, 91.60, 8.000, 5565.00, 'Round Earring Gold', 'GE187'),
('G198', 'ring', 3.89, 7, 91.60, 5.000, 5565.00, 'Gold Ring Stone', 'GR198'),
('G199', 'necklace', 45.09, 6, 91.60, 4.000, 5565.00, 'Gold Necklace Stone Design', 'GN199');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jewelery_orders`
--

CREATE TABLE `tbl_jewelery_orders` (
  `order_id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `customer_name` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `cartid` int(11) NOT NULL,
  `order_total` varchar(255) NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `paymentmethod` varchar(20) DEFAULT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `orderstatus` enum('paid','unpaid') NOT NULL DEFAULT 'unpaid',
  `orderst` enum('accept','reject','hold') DEFAULT 'hold'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_jewelery_orders`
--

INSERT INTO `tbl_jewelery_orders` (`order_id`, `userid`, `customer_name`, `order_date`, `cartid`, `order_total`, `payment_date`, `shipping_address`, `paymentmethod`, `contact_email`, `contact_phone`, `orderstatus`, `orderst`) VALUES
(46, 16, 'sooraj venu', '2023-10-12', 16, '866670.84', '2023-10-12 14:56:31', 'souparnika, kerala, kottaym, 686141, near temple', 'card', 'soorajvenuvaikom@gmail.com', '7994426297', 'paid', 'accept'),
(47, 16, 'sooraj venu', '2023-10-12', 16, '19924.32', '2023-10-12 15:11:51', 'souparnika, kerala, kottaym, 686141, near temple', 'card', 'soorajvenuvaikom@gmail.com', '7994426297', 'paid', 'accept'),
(48, 16, 'sooraj venu', '2023-10-13', 16, '5432512.932', '2023-10-13 18:57:58', 'VELLICHAPATTIL (H) PULIMCHUVADU VAIKOM, Kerala, kottaym, 686141, near temple', 'card', 'soorajvenuvaikom@gmail.com', '8547197212', 'paid', 'hold');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productsalereport`
--

CREATE TABLE `tbl_productsalereport` (
  `productid` varchar(20) NOT NULL,
  `saledquantity` int(11) NOT NULL,
  `productcategory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_productsalereport`
--

INSERT INTO `tbl_productsalereport` (`productid`, `saledquantity`, `productcategory`) VALUES
('G100', 7, 'bangle'),
('G187', 3, 'earring'),
('G198', 0, 'ring'),
('G105', 5, 'earring'),
('G108', 10, 'ring');

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
('S102', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/SILVER/bangle/Screenshot 2023-10-01 213245.png'),
('S107', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/SILVER/bangle/Screenshot 2023-10-01 213234.png'),
('S108', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/SILVER/chain/SCHAIN2.png'),
('S111', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/SILVER/ring/Screenshot 2023-10-01 213318.png'),
('S100', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/SILVER/chain/SCHAIN1.png'),
('S105', '/xampp/htdocs/PROJECT 2023/MINIPROJECT/code/IMG/SILVER/bangle/Screenshot 2023-10-01 213329.png');

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
('S100', 'chain', 13.09, 8, 92.50, 19.000, 100.00, 'Combo Silver Chain'),
('S102', 'bangle', 19.08, 4, 99.90, 15.000, 100.00, 'Hollow Silver Bangle'),
('S105', 'bangle', 9.80, 10, 99.90, 28.500, 100.00, 'Peacock Ring Silver'),
('S107', 'bangle', 6.09, 6, 92.50, 37.000, 100.00, 'Light Weight Silver Bangle'),
('S108', 'chain', 50.87, 5, 99.90, 15.000, 100.00, 'Combo SIlver Chain'),
('S111', 'ring', 12.09, 2, 83.50, 16.000, 100.00, 'Green Silver Ring');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `username`, `email`, `password`) VALUES
(8, 'aravind sunilkumar', 'aravind@gmail.com', '8547197212'),
(9, 'sanjay', 'sanjay@gmail.com', '8547197212'),
(10, 'venu g', 'venu@gmail.com', '8547197212'),
(11, 'bindu venu', 'bindu@gmail.com', '7994426297'),
(12, 'kk', 'kk@gmail.com', '123'),
(13, 'basil', 'basil@gmail.com', '12345'),
(16, 'sooraj venu', 'soorajvenuvaikom@gmail.com', '7994426297'),
(17, 'joyal sunish', 'joyalsunish@gmail.com', 'joyal@123'),
(18, 'Paily Saji', 'pailysaji08@gmail.com', 'pass@1234'),
(19, 'aravindh', 'aravindhsunilkumar@gmail.com', '123');

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
-- Indexes for table `tbl_jewelery_orders`
--
ALTER TABLE `tbl_jewelery_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `userid` (`userid`);

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
  MODIFY `addressid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_jewelery_orders`
--
ALTER TABLE `tbl_jewelery_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
-- Constraints for table `tbl_jewelery_orders`
--
ALTER TABLE `tbl_jewelery_orders`
  ADD CONSTRAINT `tbl_jewelery_orders_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `tbl_user` (`userid`);

--
-- Constraints for table `tbl_silverimage`
--
ALTER TABLE `tbl_silverimage`
  ADD CONSTRAINT `tbl_silverimage_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `tbl_silverproduct` (`productid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
