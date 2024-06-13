-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 29, 2023 at 01:13 AM
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
-- Database: `dairy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `phone_number`, `password`) VALUES
(1, 'joseph', 'joseph@gm.com', '0790771314', '1234'),
(2, 'joseph', 'joseph@gmail.com', '0790771314', '1234'),
(3, 'Demo', 'demoAdmin@gmail.com', '0794891377', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `breedOfCow` text NOT NULL,
  `password` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`id`, `name`, `email`, `telephone`, `location`, `breedOfCow`, `password`, `created_at`) VALUES
(1, 'martha', 'martha@gmail.com', '0790771314', 'kiharu', 'Ayrshire', '1234', '2023-11-15 02:14:13'),
(2, 'Purity', 'purity@gmail.com', '0790771314', 'mukuyu', 'Jersey', '1234', '2023-11-15 02:14:56'),
(3, 'Jeff Maina', 'jeff@gmail.com', '0798437645', 'Mukuyu', 'Ayrshire', '1234', '2023-11-15 02:15:30'),
(4, 'Naina', 'naina@gmail.com', '0790771314', 'kiharu', 'Guernsey', '6789', '2023-11-15 02:16:02'),
(5, 'joan', 'joan@gmail.com', '0790771314', 'mukuyu', 'Sahiwal', '1234', '2023-11-15 02:16:39'),
(6, 'Mboche', 'mboche@gmail.com', '0790771314', 'Town', 'Sahiwal', '1234', '2023-11-15 02:17:10'),
(7, 'jose', 'jose@gmail.com', '0790771314', 'mukuyu', 'Ayrshire', '1234', '2023-11-15 02:18:38'),
(8, 'waitiki naina', 'waitiki@gmail.com', '0794891377', 'kiharu', 'Mixed', '1234', '2023-11-21 08:28:55'),
(9, 'Demo farmer', 'demo@gmail.com', '1234567', 'mukuyu', 'Ayrshire', '1234', '2023-11-21 09:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_table`
--

CREATE TABLE `feedback_table` (
  `feedback_id` int(11) NOT NULL,
  `farmer_id` int(11) DEFAULT NULL,
  `farmer_name` varchar(255) DEFAULT NULL,
  `feedback_message` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_table`
--

INSERT INTO `feedback_table` (`feedback_id`, `farmer_id`, `farmer_name`, `feedback_message`, `timestamp`, `is_read`) VALUES
(1, NULL, NULL, 'message_check()', '2023-11-26 15:20:32', 1),
(2, 3, 'Jeff', 'message_check()', '2023-11-26 15:28:51', 1),
(3, 3, 'Jeff', 'reeeeeeeeeee', '2023-11-26 15:29:05', 1),
(4, 3, 'Jeff', 'weeeeeeey', '2023-11-26 15:38:12', 1),
(5, 1, 'martha', 'After running these commands, the permissions for your htdocs directory and its contents should be set to more typical values, allowing for appropriate read and execute permissions for directories and read permissions for files.', '2023-11-28 16:26:05', 1),
(6, 1, 'martha', 'After running these commands, the permissions for your htdocs directory and its contents should be set to more typical values, allowing for appropriate read and execute permissions for directories and read permissions for files.', '2023-11-28 16:37:03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `farmer_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `original_quantity` int(11) DEFAULT NULL,
  `updated_quantity` int(11) DEFAULT NULL,
  `original_rate` decimal(10,2) DEFAULT NULL,
  `updated_rate` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `farmer_id`, `message`, `timestamp`, `is_read`, `original_quantity`, `updated_quantity`, `original_rate`, `updated_rate`) VALUES
(164, 7, 'rrrrrrrrrrrrrrrrrrr. Sent by: joseph (Admin-ID: 1) on 2023-11-29 00:25:32', '2023-11-28 23:25:32', 0, NULL, NULL, NULL, NULL),
(165, 7, 'NZZZZZZZZZZZZZZZZZZZZ. Sent by: joseph (Admin-ID: 1) on 2023-11-29 00:26:58', '2023-11-28 23:26:58', 0, NULL, NULL, NULL, NULL),
(166, 7, 'Collaboration and Standards: The tech industry, including e-commerce, may need to collaborate to establish standards and best practices for adapting to emerging technologies. This could involve international efforts to ensure a consistent and secure online environment.. Sent by: joseph (Admin-ID: 1) on 2023-11-29 00:28:04', '2023-11-28 23:28:04', 0, NULL, NULL, NULL, NULL),
(167, 1, 'Collaboration and Standards: The tech industry, including e-commerce, may need to collaborate to establish standards and best practices for adapting to emerging technologies. This could involve international efforts to ensure a consistent and secure online environment.. Sent by: joseph (Admin-ID: 1) on 2023-11-29 00:33:07', '2023-11-28 23:33:07', 0, NULL, NULL, NULL, NULL),
(168, 1, 'Collaboration and Standards: The tech industry, including e-commerce, may need to collaborate to establish standards and best practices for adapting to emerging technologies. This could involve international efforts to ensure a consistent and secure online environment.. Sent by: joseph (Admin-ID: 1) on 2023-11-29 00:38:10', '2023-11-28 23:38:10', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`name`, `value`) VALUES
('rate', '50');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `record_Id` int(11) NOT NULL,
  `farmer_Id` int(11) NOT NULL,
  `farmer_name` varchar(255) NOT NULL,
  `breedOfCow` text NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `date_time` datetime NOT NULL,
  `original_date_time` datetime DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `updated_by_admin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`record_Id`, `farmer_Id`, `farmer_name`, `breedOfCow`, `quantity`, `rate`, `date_time`, `original_date_time`, `update_date_time`, `updated_by_admin`) VALUES
(17, 6, 'Mboche', 'Sahiwal', 67.00, 50.00, '2023-11-13 21:20:00', '2023-11-13 21:20:00', '2023-11-27 08:49:35', 'joseph'),
(18, 7, 'jose', 'Ayrshire', 35.00, 50.00, '2023-11-13 21:20:00', '2023-11-13 21:20:00', '2023-11-25 02:08:55', 'joseph'),
(24, 6, 'Mboche', 'Sahiwal', 6.00, 50.00, '2023-11-13 21:20:00', NULL, NULL, NULL),
(25, 7, 'jose', 'Ayrshire', 25.00, 50.00, '2023-11-14 21:22:00', '2023-11-14 21:22:00', '2023-11-25 20:18:24', 'joseph'),
(29, 9, 'Demo farmer', 'Ayrshire', 67.00, 50.00, '2023-11-23 03:06:00', NULL, NULL, NULL),
(30, 9, 'Demo farmer', 'Ayrshire', 4.00, 60.00, '2023-11-24 19:56:00', '2023-11-24 19:56:00', '2023-11-24 20:12:29', NULL),
(31, 1, 'martha', 'Ayrshire', 90.00, 50.00, '2023-11-24 22:48:00', '2023-11-24 22:48:00', '2023-11-28 13:45:59', 'joseph'),
(32, 1, 'martha', 'Ayrshire', 49.00, 55.00, '2023-11-23 22:49:00', '2023-11-23 22:49:00', '2023-11-24 22:52:34', 'joseph'),
(33, 1, 'martha', 'Ayrshire', 44.00, 60.00, '2023-11-22 22:49:00', NULL, NULL, NULL),
(34, 1, 'martha', 'Ayrshire', 47.00, 60.00, '2023-11-20 22:50:00', NULL, NULL, NULL),
(35, 1, 'martha', 'Ayrshire', 44.00, 50.00, '2023-11-25 22:51:00', '2023-11-21 22:51:00', '2023-11-24 22:53:01', 'joseph'),
(36, 2, 'Purity', 'Jersey', 52.00, 50.00, '2023-11-26 00:40:00', '2023-11-26 00:40:00', '2023-11-26 00:08:06', 'joseph'),
(37, 2, 'Purity', 'Jersey', 19.00, 50.00, '2023-11-26 01:47:00', '2023-11-26 01:47:00', '2023-11-26 00:08:36', 'joseph'),
(38, 2, 'Purity', 'Jersey', 95.00, 50.00, '2023-11-25 01:56:00', '2023-11-25 01:56:00', '2023-11-26 00:08:23', 'joseph'),
(39, 2, 'Purity', 'Jersey', 13.00, 13.00, '2023-11-25 02:09:00', '2023-11-25 02:09:00', '2023-11-25 23:51:03', 'joseph'),
(40, 6, 'Mboche', 'Sahiwal', 20.00, 50.00, '2023-11-27 14:58:00', '2023-11-25 14:58:00', '2023-11-26 01:24:25', 'Demo'),
(41, 6, 'Mboche', 'Sahiwal', 45.00, 50.00, '2023-11-26 14:59:00', '2023-11-26 14:59:00', '2023-11-26 00:21:09', 'Demo'),
(42, 3, 'Jeff', 'Fresian', 54.00, 50.00, '2023-11-27 01:23:00', '2023-11-25 01:23:00', '2023-11-26 01:24:48', 'Demo'),
(43, 5, 'joan', 'Sahiwal', 210.00, 60.00, '2023-11-26 13:46:00', '2023-11-26 13:46:00', '2023-11-26 16:39:00', 'Demo'),
(44, 3, 'Jeff', 'Fresian', 175.00, 50.00, '2023-11-27 15:56:00', '2023-11-27 15:56:00', '2023-11-26 16:39:44', 'Demo'),
(45, 3, 'Jeff', 'Fresian', 100.00, 50.00, '2023-11-28 15:57:00', '2023-11-28 15:57:00', '2023-11-26 16:05:56', 'Demo'),
(46, 3, 'Jeff', 'Fresian', 80.00, 45.00, '2023-11-27 03:56:00', '2023-11-27 03:56:00', '2023-11-27 03:56:58', 'Demo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_table`
--
ALTER TABLE `feedback_table`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `farmer_id` (`farmer_id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`record_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feedback_table`
--
ALTER TABLE `feedback_table`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `record_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`farmer_id`) REFERENCES `farmers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
