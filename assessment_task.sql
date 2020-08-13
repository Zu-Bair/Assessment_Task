-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2020 at 12:21 AM
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
-- Database: `assessment_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` bigint(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `description`, `location`, `created_at`) VALUES
(1, 'mobile', 'samsung A51', 'rawalpindi', '0000-00-00 00:00:00'),
(4, 'ABC', 'klsdjlkfjsdlfkj', 'dslkjfsdlkjfsdlkjf', '2020-08-09 19:00:00'),
(5, 'mobile', 'samsung A51', 'rawalpindi', '2020-08-11 19:00:00'),
(6, 'hgfj', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(7, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(8, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(9, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(10, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(11, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(12, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(13, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(14, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(15, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(16, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(17, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(18, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(19, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(20, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(21, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(22, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(23, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(24, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(25, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(28, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(29, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(30, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(31, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(32, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(33, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(34, 'aslkdjflksdajflksdjfklsdajflksd', 'lkhgf', 'jfhgd', '2020-08-05 19:00:00'),
(38, 'testing change', 'abc change', 'marir change', '2015-08-05 19:00:00'),
(39, 'laptop accessories', 'Lenovo laptop accessories', 'Lahore anar kali', '2010-12-11 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `item_pic`
--

CREATE TABLE `item_pic` (
  `id` bigint(11) NOT NULL,
  `item_id` bigint(11) NOT NULL,
  `pic_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_pic`
--

INSERT INTO `item_pic` (`id`, `item_id`, `pic_name`) VALUES
(15, 38, 'IMG_20200717_010313.jpg'),
(16, 38, 'IMG_20200717_010426.jpg'),
(20, 39, 'IMG_20200717_010236.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useremail` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `useremail`, `password`) VALUES
(1, 'roy', 'roy@gmail.com', 'pbkdf2:sha256:150000$k1Ud5dzh$d0347f416e89ea486b33c988c9be65730329b2dd6d712f73c9920103a006a82e'),
(2, 'Soumitra', 'contact@roytuts.com', 'pbkdf2:sha256:150000$6NJIHQ47$39dc6802aae5fd4dcdb9d8a7bbf76c51c563dcb98bf3dbf7f02bc816fbc59610'),
(3, 'zubair', 'zubair@gmail.com', 'pbkdf2:sha256:150000$ZclRIZzr$cef44e726803800f6c5dd0dcdeb61b8b2a58cf243b1591d89a048ace8c6af7b3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_pic`
--
ALTER TABLE `item_pic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `item_pic`
--
ALTER TABLE `item_pic`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
