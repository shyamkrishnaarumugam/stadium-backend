-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 04:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stadium`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `id` int(11) NOT NULL,
  `alert` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alert`
--

INSERT INTO `alert` (`id`, `alert`) VALUES
(89, 'new Alerts\r\n'),
(90, 'alets\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(91, 'Linto'),
(92, 'This is a mistake. Here, we’ll refer to some time-honored typesetting conventions, with an emphasis on readability, and offer guidance on adapting them effectively for devices and screens. We’ll see that the ability to embed fonts with @font-face is not by itself a solution to all of our typographic challenges.\r\nThis is a mistake. Here, we’ll refer to some time-honored typesetting conventions, with an emphasis on readability, and offer guidance on adapting them effectively for devices and screens. We’ll see that the ability to embed fonts with @font-face is not by itself a solution to all of our typographic challenges.This is a mistake. Here, we’ll refer to some time-honored typesetting conventions, with an emphasis on readability, and offer guidance on adapting them effectively for devices and screens. We’ll see that the ability to embed fonts with @font-face is not by itself a solution to all of our typographic challenges.'),
(93, 'neww\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `badminton`
--

CREATE TABLE `badminton` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `games` text NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `direction` text NOT NULL,
  `contact` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `amount` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `badminton`
--

INSERT INTO `badminton` (`id`, `name`, `games`, `address`, `city`, `direction`, `contact`, `description`, `image`, `amount`) VALUES
(3, 'fdfd', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'uploads/footer-2.jpg', '6546'),
(4, 'stadium name', 'badminton, cricket', 'No.28 first cross', 'villianur', 'undefined', 'tel:+91214568974', 'undefined', 'uploads/badminton-venue.jpeg', '800');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` int(11) NOT NULL,
  `date` text NOT NULL,
  `slot` text NOT NULL,
  `amount` int(11) NOT NULL,
  `venue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `name`, `phone`, `date`, `slot`, `amount`, `venue`) VALUES
(39, 'shine', 654656, '2024-05-11', '02AM-03AM', 600, 'double double'),
(40, 'shine', 654656, '2024-05-11', '02AM-03AM', 600, 'double double'),
(41, 'shine', 654656, '2024-04-26', '01PM-02PM', 600, 'double double'),
(42, 'shine', 654656, '2024-05-01', '11PM-12AM', 600, 'double double'),
(43, 'linto', 625765457, '2024-04-27', '10AM-11AM', 600, 'double double'),
(44, 'linto', 625765457, '2024-05-02', '04PM-05PM', 800, 'stadium name'),
(45, 'linto', 625765457, '2024-05-03', '04AM-05AM', 800, 'stadium name'),
(46, 'linto', 625765457, '2024-05-03', '04AM-05AM', 800, 'stadium name'),
(47, 'linto', 625765457, '2024-04-27', '07PM-08PM', 445684, 'gfdg'),
(48, 'shine', 654656, '2024-05-03', '01PM-02PM', 445684, 'gfdg');

-- --------------------------------------------------------

--
-- Table structure for table `cricket`
--

CREATE TABLE `cricket` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `games` text NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `direction` text NOT NULL,
  `contact` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `amount` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cricket`
--

INSERT INTO `cricket` (`id`, `name`, `games`, `address`, `city`, `direction`, `contact`, `description`, `image`, `amount`) VALUES
(104, 'undefined', 'undefined', 'undefined', 'undefined', 'https://www.google.com/maps/place/Mambalam/@13.0405505,80.2198428,16z/data=!4m15!1m8!3m7!1s0x3a5266fc68182047:0x1baa5e42876dcb9a!2sRamakrishnapuram,+West+Mambalam,+Chennai,+Tamil+Nadu+600033!3b1!8m2!3d13.0409793!4d80.2243127!16s%2Fg%2F1v42d6lt!3m5!1s0x3a5266fe6211e327:0x1b344ab398563c4f!8m2!3d13.0386972!4d80.2278655!16s%2Fm%2F0nfvrrp?entry=ttu', 'undefined', 'undefined', 'uploads/cricket-venue1.jpg', 'undefined');

-- --------------------------------------------------------

--
-- Table structure for table `football`
--

CREATE TABLE `football` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `games` text NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `direction` text NOT NULL,
  `contact` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `amount` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `football`
--

INSERT INTO `football` (`id`, `name`, `games`, `address`, `city`, `direction`, `contact`, `description`, `image`, `amount`) VALUES
(4, 'gfdg', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'uploads/football-venue1.jpeg', '445684');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(255) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `name` text NOT NULL,
  `phone` int(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `name`, `phone`, `password`) VALUES
(63, 'shine', 'shine@', 'shine', 654656, 'shine'),
(64, 'linto', 'linto@gmail.com', 'linto', 625765457, 'linto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `badminton`
--
ALTER TABLE `badminton`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cricket`
--
ALTER TABLE `cricket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `football`
--
ALTER TABLE `football`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
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
-- AUTO_INCREMENT for table `alert`
--
ALTER TABLE `alert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `badminton`
--
ALTER TABLE `badminton`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cricket`
--
ALTER TABLE `cricket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `football`
--
ALTER TABLE `football`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
