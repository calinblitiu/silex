-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2018 at 10:04 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silex`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_data` text NOT NULL,
  `post_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_data`, `post_updated`) VALUES
(1, 'test', '2018-04-07 18:42:53'),
(2, 'adfasd', '2018-04-07 18:46:07'),
(3, 'adfasd', '2018-04-07 18:46:14'),
(4, 'adfasd', '2018-04-07 18:50:45'),
(5, 'test', '2018-04-07 18:54:33'),
(6, 'new post test', '2018-04-07 19:00:07'),
(7, 'sdfasd', '2018-04-07 19:00:26'),
(8, 'asdfasdf asdfasdfa adfasdfasdff asdfasdf asdf asdfasdfasd asdfasdf dfadfasdff adfadfdf adfasdfadfasdfadf asdfasdfasd asdfadsfasdf asdfjlsd lasdjflas jlasdkjflaksdjf  asdlfkj alsdkfjasdkfj llksjdf', '2018-04-07 19:02:49'),
(9, 'aasdfasdf askdfjlasdjfla sdfljasldkfj alskdjf asldfjlasdjflasjdflasjf asldkfjalskdjflaskjf lasdjkflajfl adlfjasldf laksjdflasjdflajsdas', '2018-04-07 19:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_pwd` varchar(1024) NOT NULL,
  `user_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_email`, `user_pwd`, `user_updated`) VALUES
(1, 'test@mail.com', '098f6bcd4621d373cade4e832627b4f6', '2018-04-07 07:12:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
