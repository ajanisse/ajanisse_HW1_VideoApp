-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 10, 2018 at 03:06 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `videoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` int(250) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(20) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Horror'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movie_id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(100) NOT NULL,
  `movie_cover` varchar(50) NOT NULL,
  `movie_year` varchar(10) NOT NULL,
  `movie_runtime` varchar(10) NOT NULL,
  `movie_desc` text NOT NULL,
  `movie_trailer` varchar(250) NOT NULL,
  `movie_release` varchar(10) NOT NULL,
  `movie_rating` varchar(10) NOT NULL,
  `movie_isKids` tinyint(1) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_title`, `movie_cover`, `movie_year`, `movie_runtime`, `movie_desc`, `movie_trailer`, `movie_release`, `movie_rating`, `movie_isKids`) VALUES
(1, 'Hellraiser', 'hellraiser.jpg', '1987', '94 Min', 'An unfaithful wife encounters the zombie of her dead lover; the demonic cenobites are pursuing him after he escaped their sadomasochistic underworld. ', 'Hellraiser.mp4', '18 Sept', '7', 0),
(2, 'Deadpool', 'deadpool.jpg', '2016', '108 Min', 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge. ', 'Deadpool.mp4', '12 Feb', '9', 0),
(3, 'Coco', 'coco.jpg', '2017', '105 Min', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.', '', ' 21 Nov', '6.5', 1),
(4, 'Ghost in the Shell', 'ghost_shell.jpg', '2017', '107 Min', 'In the near future, Major is the first of her kind: A human saved from a terrible crash, who is cyber-enhanced to be a perfect soldier devoted to stopping the world\'s most dangerous criminals.', '', ' 31 March', '10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie_genre`
--

DROP TABLE IF EXISTS `tbl_movie_genre`;
CREATE TABLE IF NOT EXISTS `tbl_movie_genre` (
  `movie_genre_id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_id` int(50) NOT NULL,
  `movie_genre` int(50) NOT NULL,
  PRIMARY KEY (`movie_genre_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
