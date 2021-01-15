-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2021 at 07:28 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `blocker` varchar(255) NOT NULL,
  `blocked` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `writer` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `writer`, `post_id`, `date`, `text`) VALUES
(1, 'menan381@gmail.com', 37, '2021-01-15 05:20:10', 'first comment');

-- --------------------------------------------------------

--
-- Table structure for table `friend`
--

CREATE TABLE `friend` (
  `user_1` varchar(255) NOT NULL,
  `user_2` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend`
--

INSERT INTO `friend` (`user_1`, `user_2`, `date`) VALUES
('menan381@gmail.com', 'ahmad@gmail.com', '2021-01-15 06:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `phone_num` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`phone_num`, `email`) VALUES
('4124124', 'menan381@gmail.com'),
('51252', 'menan381@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `writer` varchar(255) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_public` tinyint(1) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `writer`, `caption`, `date`, `is_public`, `image`) VALUES
(2, 'ahmad@gmail.com', 'hello', '2021-01-04 22:00:00', 1, 'uploads/5fff993b443208.88037092.jpg'),
(3, 'ahmad@gmail.com', NULL, '2021-01-05 22:00:00', 1, NULL),
(4, 'ahmad@gmail.com', NULL, '2021-01-12 22:00:00', 1, NULL),
(5, 'ahmad@gmail.com', NULL, '2020-12-31 22:00:00', 0, NULL),
(6, 'ahmad@gmail.com', NULL, '2020-12-31 22:00:00', 0, NULL),
(7, 'ahmad@gmail.com', NULL, '2020-12-31 22:00:00', 0, NULL),
(8, 'ahmad@gmail.com', 's', '2020-12-31 22:00:00', 0, NULL),
(9, 'ahmad@gmail.com', 'dsdf', '2020-12-31 22:00:00', 1, NULL),
(10, 'ahmad@gmail.com', 'dsdf', '2020-12-31 22:00:00', 1, NULL),
(11, 'ahmad@gmail.com', 'dsdf', '2020-12-31 22:00:00', 1, NULL),
(12, 'ahmad@gmail.com', 'fff', '2020-12-31 22:00:00', 0, 'vv'),
(15, 'ahmad@gmail.com', 'dsgfdggffgdfgdfg', '2020-12-31 22:00:00', 1, NULL),
(16, 'ahmad@gmail.com', 'dsgfdggffgdfgdfg', '2020-12-31 22:00:00', 1, NULL),
(17, 'ahmad@gmail.com', 'sdfljhkjsdfkjhsdf', '2020-12-31 22:00:00', 1, NULL),
(18, 'ahmad@gmail.com', NULL, '2020-12-31 22:00:00', 0, '/opt/lampp/temp/phpFNLwzW'),
(19, 'ahmad@gmail.com', 'dd', '2020-12-31 22:00:00', 0, NULL),
(20, 'ahmad@gmail.com', 'dd', '2020-12-31 22:00:00', 0, NULL),
(21, 'ahmad@gmail.com', 'dd', '2020-12-31 22:00:00', 0, NULL),
(22, 'ahmad@gmail.com', NULL, '2020-12-31 22:00:00', 0, NULL),
(23, 'ahmad@gmail.com', NULL, '2020-12-31 22:00:00', 0, NULL),
(24, 'ahmad@gmail.com', 'simple post caption', '2021-01-02 22:00:00', 1, NULL),
(26, 'menan381@gmail.com', 'new caption', '2021-01-02 22:00:00', 1, 'uploads/5ff1b92ad933b3.25135529.png'),
(27, 'menan381@gmail.com', 'new caption', '2021-01-02 22:00:00', 1, 'uploads/5ff1b96c11c834.17123965.jpg'),
(28, 'menan381@gmail.com', 'new caption', '2021-01-02 22:00:00', 1, 'uploads/5ff1b9e9aea5c4.85073530.jpg'),
(29, 'menan381@gmail.com', 'last one please', '2021-01-02 22:00:00', 1, 'uploads/5ff1b9fe8b3502.59180699.png'),
(33, 'menan381@gmail.com', 'new', '2021-01-09 22:00:00', 1, ''),
(34, 'menan381@gmail.com', '', '2021-01-11 22:00:00', 1, ''),
(35, 'menan381@gmail.com', 'mina  naeem updated his profile picture', '2021-01-15 03:02:24', 0, 'uploads/600105c019d7c2.78303860.png'),
(36, 'menan381@gmail.com', 'mina  naeem updated his profile picture', '2021-01-15 03:02:31', 0, 'uploads/600105c6981dc3.69373642.png'),
(37, 'menan381@gmail.com', 'freeedom', '2021-01-15 04:35:29', 1, 'uploads/6001346a87b159.13634686.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `react`
--

CREATE TABLE `react` (
  `post_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `react`
--

INSERT INTO `react` (`post_id`, `email`, `date`) VALUES
(35, 'menan381@gmail.com', '2021-01-15 05:59:36'),
(36, 'menan381@gmail.com', '2021-01-15 05:54:43'),
(37, 'menan381@gmail.com', '2021-01-15 06:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `response` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`sender`, `receiver`, `date`, `response`) VALUES
('menan381@gmail.com', 'ahmad@gmail.com', '2021-01-15 04:20:06', 'accept');

-- --------------------------------------------------------

--
-- Table structure for table `share`
--

CREATE TABLE `share` (
  `post_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `share`
--

INSERT INTO `share` (`post_id`, `email`, `date`) VALUES
(27, 'menan381@gmail.com', '2021-01-15 06:00:26'),
(34, 'menan381@gmail.com', '2021-01-15 06:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`name`) VALUES
('another_one'),
('hello52'),
('one'),
('two');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `email` varchar(400) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `password` varchar(300) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birth_date` date NOT NULL,
  `picture` varchar(200) NOT NULL,
  `home_town` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `about_me` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`email`, `first_name`, `last_name`, `nick_name`, `password`, `gender`, `birth_date`, `picture`, `home_town`, `status`, `about_me`) VALUES
('ahmad@gmail.com', 'ahmed', 'mehanna', 'mehanna.cw', '1234', 'male', '2020-12-16', 'images/profile_pic.jpg', 'dddd', 'single', 'bla bla bla bla'),
('email_1_please@gmail.com', 'please_1', 'please_1_1', '', '$2y$10$iTQTOS71cz/d5WEu.7yVC.pHgMAUE9xc7oaiIDg52FcJFi1Divoo2', 'male', '2019-04-15', '', '', '', 'this is amazing about me'),
('menan381@gmail.com', 'mina ', 'naeem', '', '$2y$10$y/ZFoJq8TjwS//OdMgV0j.ArI6g2judxkvrv1KUqUXMt5BGJ0pSiO', 'male', '1999-03-05', 'uploads/600105c6981dc3.69373642.png', '', '', 'test about me');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`blocker`,`blocked`),
  ADD KEY `FK_2` (`blocked`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `FK_13` (`post_id`),
  ADD KEY `FK_14` (`writer`);

--
-- Indexes for table `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`user_1`,`user_2`),
  ADD KEY `FK_4` (`user_2`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phone_num`,`email`),
  ADD KEY `FK_7` (`email`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `FK_12` (`writer`);

--
-- Indexes for table `react`
--
ALTER TABLE `react`
  ADD PRIMARY KEY (`post_id`,`email`),
  ADD KEY `FK_9` (`email`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`sender`,`receiver`,`date`) USING BTREE,
  ADD KEY `FK_6` (`receiver`);

--
-- Indexes for table `share`
--
ALTER TABLE `share`
  ADD PRIMARY KEY (`post_id`,`email`),
  ADD KEY `FK_11` (`email`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `block`
--
ALTER TABLE `block`
  ADD CONSTRAINT `FK_1` FOREIGN KEY (`blocker`) REFERENCES `User` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_2` FOREIGN KEY (`blocked`) REFERENCES `User` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_13` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_14` FOREIGN KEY (`writer`) REFERENCES `User` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `friend`
--
ALTER TABLE `friend`
  ADD CONSTRAINT `FK_3` FOREIGN KEY (`user_1`) REFERENCES `User` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_4` FOREIGN KEY (`user_2`) REFERENCES `User` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `FK_7` FOREIGN KEY (`email`) REFERENCES `User` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_12` FOREIGN KEY (`writer`) REFERENCES `User` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `react`
--
ALTER TABLE `react`
  ADD CONSTRAINT `FK_8` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_9` FOREIGN KEY (`email`) REFERENCES `User` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `FK_5` FOREIGN KEY (`sender`) REFERENCES `User` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_6` FOREIGN KEY (`receiver`) REFERENCES `User` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `share`
--
ALTER TABLE `share`
  ADD CONSTRAINT `FK_10` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_11` FOREIGN KEY (`email`) REFERENCES `User` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;