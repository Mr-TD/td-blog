-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2020 at 11:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_flask`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_num` bigint(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'd', 'd@gmail.com', 1234567890, 'gh hgfh ghgrfhgh tghgthgfh ', '2020-05-22 21:34:43'),
(2, 's', 's@gmail.com', 1234567890, 'fgvb fghfdg hg', '2020-05-22 22:05:12'),
(3, 's', 's@gmail.com', 1234567890, 'fgvb fghfdg hg', '2020-05-22 22:08:45'),
(4, 'd', 'd@gmail.com', 1223456789, 'ghjnggg ghgtfh jjgj', '2020-05-22 22:10:42'),
(5, 'td', 'td@gmail.com', 1234567890, 'my first message of today', '2020-05-26 21:10:16'),
(6, 't', 't@gmail.com', 1234567890, 'my secondmessage of today', '2020-05-26 21:17:58'),
(7, 'd', 'd@gmail.com', 1234567890, 'fdg hrfgbh brghrtg hrhb', '2020-05-26 21:58:06'),
(8, 'd', 'd@gmail.com', 1234567890, 'fdg hrfgbh brghrtg hrhb', '2020-05-26 22:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `img_file` varchar(1000) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `slug` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `content`, `img_file`, `date`, `slug`) VALUES
(7, 'Safety Gym', 'Safety Gym', 'We’re releasing Safety Gym, a suite of environments and tools for measuring progress towards reinforcement learning agents that respect safety constraints while training. We also provide a standardized method of comparing algorithms and how well they avoi', '', '2020-05-29 14:23:32', 'Safety-Gym');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
