-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2017 at 10:19 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`) VALUES
(1, 'Web Design', '2017-12-16 08:34:19'),
(2, 'JavaScript', '2017-12-16 08:34:19'),
(3, 'HTML', '2017-12-16 08:34:44'),
(4, 'CSS', '2017-12-16 08:34:44'),
(5, 'Freebies', '2017-12-16 08:34:58'),
(6, 'Tutorials', '2017-12-16 08:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `message` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text,
  `description` text,
  `author` int(11) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `status` enum('open','draft') NOT NULL DEFAULT 'draft',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created`) VALUES
(1, 'Eldin Nunnery', 'enunnery0@netlog.com', 'EgOtFTbm1xb', '0000-00-00 00:00:00'),
(2, 'Fianna Itzcak', 'fitzcak1@boston.com', 'QrPs3uQ', '0000-00-00 00:00:00'),
(3, 'Wes Apple', 'wapple2@theglobeandmail.com', 'sYSaSJ3QGrYg', '0000-00-00 00:00:00'),
(4, 'Fairleigh Carlton', 'fcarlton3@slideshare.net', 'uQQ3od69cG', '0000-00-00 00:00:00'),
(5, 'Cloe McCurt', 'cmccurt4@sfgate.com', 'x3YIkGRhNx', '0000-00-00 00:00:00'),
(6, 'Margarete Bennallck', 'mbennallck5@mapquest.com', 'OVTXoCep0Rd', '0000-00-00 00:00:00'),
(7, 'Chryste Spanton', 'cspanton6@woothemes.com', 'kt36xl46gX', '0000-00-00 00:00:00'),
(8, 'Jenda Bachshell', 'jbachshell7@shutterfly.com', 'jCmubqNbvLL', '0000-00-00 00:00:00'),
(9, 'Yulma Lakeman', 'ylakeman8@dagondesign.com', 'svqXEU7', '0000-00-00 00:00:00'),
(10, 'Stacee Kopke', 'skopke9@shinystat.com', '3rvQwvD', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
