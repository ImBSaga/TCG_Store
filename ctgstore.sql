-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2020 at 04:48 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ctgstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(1, 'admin1', 'min@mail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `order_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Product` varchar(200) NOT NULL,
  `Amount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `Total_price` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'ordered',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`order_id`, `name`, `user_id`, `Product`, `Amount`, `price`, `Total_price`, `status`, `date`) VALUES
(10, 'zaki', 5, 'Yu-Gi-Oh - Wing Raiders Booster Pack', 3, 35000, 105000, 'purchased', '2020-07-25'),
(13, 'arul', 2, 'd', 5, 1000, 5000, 'ordered', '2020-07-25'),
(15, 'intan', 4, 'Yu-Gi-Oh - Wing Raiders Booster Pack', 2, 35000, 70000, 'purchased', '2020-07-25'),
(16, 'saga', 6, 'Hologram Game Card Sleeves', 2, 20000, 40000, 'purchased', '2020-07-25'),
(18, 'saga', 6, 'Exclusive SideWinder XenoSkin Deck Case - Black', 1, 140000, 140000, 'ordered', '2020-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `pic` varchar(500) NOT NULL,
  `detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `stock`, `price`, `pic`, `detail`) VALUES
(1, 'Pokemon - Hidden Fates Booster Pack', 'Booster Pack', 50, 40000, 'https://target.scene7.com/is/image/Target/GUEST_7a555811-2add-40cd-b340-e58011d5400c?wid=488&hei=488&fmt=pjpeg', 'Pokemon TCG Booster Pack'),
(2, 'Yu-Gi-Oh - Wing Raiders Booster Pack', 'Booster Pack', 50, 35000, 'https://cdn.discordapp.com/attachments/732460538025607260/735334686812930148/yugioh-wing-raiders-booster-pack-sealed-konami-pre-order-ships-february-8__98773.1461393363.jpg', 'Yugioh TCG Booster pack'),
(3, 'Vanguard - Demonic Advent Booster Pack', 'Booster Pack', 150, 28000, 'https://cdn.discordapp.com/attachments/732460538025607260/735334684908585040/vancarddemonicadventpk__18508.1574368645.jpg', 'Vanguard TCG Booster Pack'),
(4, 'Hologram Game Card Sleeves', 'Card Sleeve', 80, 20000, 'https://cdn.discordapp.com/attachments/732460538025607260/735334672804085760/HTB1YagxKeuSBuNjy1Xcq6AYjFXao.jpg', 'TCG Card Sleeves'),
(5, 'Hoopana Unbound Card Sleeves', 'Card Sleeve', 40, 15000, 'https://cdn.discordapp.com/attachments/732460538025607260/735334674540527646/P2656_291-76006_02.jpg', 'Pokemon Card Sleeve'),
(7, 'Exclusive SideWinder XenoSkin Deck Case - Black', 'Deck Box', 10, 140000, 'https://ultimateguard.com/10668-large_default/sidewinder-80-xenoskin-2020-exclusive.jpg', 'TCG Deck Box'),
(8, 'SideWinder XenoSkin Deck Case - Purple', 'Deck Box', 14, 100000, 'https://cdn.discordapp.com/attachments/732460538025607260/735334668785811486/5189rMUpoL.jpg', 'TCG Deck Box'),
(9, 'SideWinder XenoSkin Deck Case - White', 'Deck Box', 7, 100000, 'https://www.magicmadhouse.co.uk/images/sidewinder-80-standard-size-xenoskin-deck-box-white-p251673-335060_medium.jpg', 'TCG Card Box');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `password`, `address`) VALUES
(1, 'Arul', 'satu', 'satu', 'Jl kepiting Rawamangun, RT 8 RW 10'),
(2, 'roi', 'dua2', 'dua2', 'Jl kepiting Rawamangun, RT 8 RW 12'),
(3, 'kamu', 'sas@mail.com', '1234', 'Jl kepiting Rawamangun, RT 1 RW 29'),
(4, 'intan', 'bg@cans.com', '1234', 'Jl kepiting Rawamangun, RT 9 RW 10'),
(5, 'zaki', 'zakuy@mail.com', '2222', 'Jl. margonda depok rt 8 rw 24'),
(6, 'saga', 'saga20@gmail.com', 'saga', 'Frozen Road, London');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`name`) REFERENCES `user` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
