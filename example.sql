-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 18, 2020 at 12:20 PM
-- Server version: 8.0.21-0ubuntu0.20.04.4
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `count` int NOT NULL,
  `date` date DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `type`, `price`, `count`, `date`, `note`) VALUES
(1, 'IphoneX', 'Điện Thoại Fake', 0, 0, '2020-09-18', '0'),
(2, 'Samsung Galaxy S7', 'Điện Thoại', 0, 0, NULL, '0'),
(3, 'Vismart Pro', 'Điện Thoại', 0, 0, '2020-09-18', '0'),
(4, 'Daikin Inverter', 'Điều Hòa', 0, 0, NULL, '0'),
(5, 'Panasonic Inverter', 'Tủ Lạnh', 0, 0, NULL, '0'),
(6, 'Samsung Galaxy J3', 'Điện Thoại', 0, 0, NULL, '0'),
(10, 'Hoàng Quang Nam', 'Tủ lạnh', 3000000, 5, '2020-09-18', 'sadas'),
(11, 'root', 'Điều hòa', 3000000, 5, '2020-09-18', 'sdadas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
