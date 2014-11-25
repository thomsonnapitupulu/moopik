-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2014 at 09:34 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `moopikdotcomdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE IF NOT EXISTS `artist` (
  `artistId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `artistName` varchar(50) NOT NULL,
  `doB` date NOT NULL,
  `proPicUrl` varchar(100) NOT NULL,
  PRIMARY KEY (`artistId`),
  UNIQUE KEY `artistId` (`artistId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE IF NOT EXISTS `awards` (
  `awardsId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `awardsName` varchar(50) NOT NULL,
  `yearPeriod` int(11) NOT NULL,
  `winnerFilm` int(11) NOT NULL,
  PRIMARY KEY (`awardsId`),
  UNIQUE KEY `awardsId` (`awardsId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `castingartists`
--

CREATE TABLE IF NOT EXISTS `castingartists` (
  `ArtistId` int(11) NOT NULL,
  `fimInfoId` int(11) NOT NULL,
  `roleName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `categoryId` int(11) NOT NULL,
  `categoryName` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE IF NOT EXISTS `director` (
  `directorId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `directorName` varchar(50) NOT NULL,
  `doB` date NOT NULL,
  `proPicUrl` varchar(100) NOT NULL,
  PRIMARY KEY (`directorId`),
  UNIQUE KEY `directorId` (`directorId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `directorsfilm`
--

CREATE TABLE IF NOT EXISTS `directorsfilm` (
  `directorId` int(11) NOT NULL,
  `filmInfoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filmcat`
--

CREATE TABLE IF NOT EXISTS `filmcat` (
  `categoryId` int(11) NOT NULL,
  `filmInfoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filminfo`
--

CREATE TABLE IF NOT EXISTS `filminfo` (
  `filmInfoId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `durationInMinute` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `dateReleaseIntl` date NOT NULL,
  `dateReleaseRgnl` date NOT NULL,
  `trailerUrl` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `director` int(50) NOT NULL,
  `ratingImdb` int(11) NOT NULL,
  `photoCoverUrl` varchar(100) NOT NULL,
  PRIMARY KEY (`filmInfoId`),
  UNIQUE KEY `filmInfoId` (`filmInfoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `filmphotos`
--

CREATE TABLE IF NOT EXISTS `filmphotos` (
  `photoId` int(11) NOT NULL,
  `filmInfoId` int(11) NOT NULL,
  `photoUrl` varchar(100) NOT NULL,
  PRIMARY KEY (`photoId`,`filmInfoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `languageId` int(11) NOT NULL,
  `languageName` varchar(50) NOT NULL,
  PRIMARY KEY (`languageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `playedat`
--

CREATE TABLE IF NOT EXISTS `playedat` (
  `filmInfoId` int(11) NOT NULL,
  `studioInfoId` int(11) NOT NULL,
  `datePlayed` date NOT NULL,
  `timePlayedMinute` int(4) NOT NULL,
  `playedStatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productionco`
--

CREATE TABLE IF NOT EXISTS `productionco` (
  `productionCoId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `productionCoName` varchar(50) NOT NULL,
  PRIMARY KEY (`productionCoId`),
  UNIQUE KEY `productionCoId` (`productionCoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `productioncofilm`
--

CREATE TABLE IF NOT EXISTS `productioncofilm` (
  `productionCoId` int(11) NOT NULL,
  `filmInfoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studioinfo`
--

CREATE TABLE IF NOT EXISTS `studioinfo` (
  `studioInfoId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `studioName` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `studioNumb` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  PRIMARY KEY (`studioInfoId`),
  UNIQUE KEY `studioInfoId` (`studioInfoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
