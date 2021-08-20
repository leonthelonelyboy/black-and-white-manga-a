-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2021 at 11:19 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manga_proj`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` int(11) NOT NULL,
  `chapter_number` int(11) NOT NULL,
  `content` varchar(60) NOT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp(),
  `manga_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `chapter_number`, `content`, `updated_date`, `manga_id`) VALUES
(1, 1, 'images/manga/manganame/Chapter-1.pdf', '2021-07-02 22:20:13', 1),
(2, 1, 'sss.pdf', '2021-07-02 22:21:13', 2),
(3, 2, 'sth.pdf', '2021-07-02 22:22:15', 1),
(4, 2, 'sss.pdf', '2021-07-02 22:23:15', 2),
(5, 1, 'sthsfs.pdf', '2021-07-02 22:24:31', 3),
(6, 3, 'sss.pdf', '2021-07-02 22:25:31', 2),
(29, 1, 'images/manga/demo/chapter-1.pdf', '2021-07-04 23:38:04', 25),
(30, 3, 'images/manga/dreamcide/chapter-3.pdf', '2021-07-04 23:39:15', 1),
(31, 4, 'images/manga/cheese_in_the_trap/chapter-4.pdf', '2021-07-04 23:39:28', 2),
(32, 1, 'naruto/ch-1.pdf', '2021-07-05 22:31:23', 0),
(33, 2, 'naruto/ch-2.pdf', '2021-07-05 22:31:23', 0),
(34, 3, 'naruto/ch-3.pdf', '2021-07-05 22:31:23', 0),
(35, 4, 'naruto/ch-4.pdf', '2021-07-05 22:31:23', 0),
(36, 5, 'naruto/ch-5.pdf', '2021-07-05 22:31:23', 0),
(37, 1, 'one_piece/chp-1.pdf', '2021-07-05 22:34:44', 28),
(38, 2, 'one_piece/chp-2.pdf', '2021-07-05 22:34:44', 28),
(39, 3, 'one_piece/chp-3.pdf', '2021-07-05 22:34:44', 28);

-- --------------------------------------------------------

--
-- Table structure for table `manga`
--

CREATE TABLE `manga` (
  `id` int(11) NOT NULL,
  `manga_name` varchar(60) NOT NULL,
  `manga_link` varchar(50) NOT NULL,
  `chapters` int(11) NOT NULL DEFAULT 0,
  `genre` varchar(70) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(12) NOT NULL DEFAULT 'On going',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp(),
  `cover_photo` varchar(50) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manga`
--

INSERT INTO `manga` (`id`, `manga_name`, `manga_link`, `chapters`, `genre`, `description`, `status`, `created_date`, `updated_date`, `cover_photo`, `views`, `active`) VALUES
(1, 'Dreamcide', '', 3, 'action, fantasy, supernatural, webtoon', 'Some cool horror one', 'On going', '2021-07-02 22:03:55', '2021-07-02 22:22:15', 'images/manga_covers/dreamcide.jpg', 19, 1),
(2, 'Cheese in the trap', '', 4, 'romance, slice of life, webtoon', 'Difficulties about life and love.', 'On going', '2021-07-02 22:03:55', '2021-07-02 22:25:15', 'images/manga_covers/cheese_in_the_trap.jpg', 47, 1),
(3, 'Bastard', '', 1, 'action, horror, webtoon', 'Hidden human natures.', 'On going', '2021-07-02 22:04:43', '2021-07-02 22:24:15', 'images/manga_covers/bastard.jpg', 19, 1),
(25, 'Demo', 'demo link', 1, 'action, supernatural', 'awesome manga', 'Completed', '2021-07-04 22:46:34', '2021-07-04 22:46:34', 'images/manga_covers/demo.jpg', 0, 1),
(27, 'naruto', 'link naruto', 5, 'action', 'description', 'Completed', '2021-07-05 22:31:23', '2021-07-05 22:31:23', 'images/manga_covers/lol.jpg', 0, 1),
(28, 'one piece', 'link', 3, 'action', 'ok', 'Completed', '2021-07-05 22:34:44', '2021-07-05 22:34:44', 'images/manga_covers/sfa.jpg', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manga_id` (`manga_id`);

--
-- Indexes for table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `manga`
--
ALTER TABLE `manga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
