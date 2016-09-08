-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2016 at 09:55 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `php`
--

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birth` int(11) NOT NULL,
  `death` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `firstname`, `lastname`, `birth`, `death`) VALUES
(1, 'Terry', 'Bradshaw', 1923, 1944),
(2, 'Kim', 'Catrell', 1912, 1936),
(3, 'Ethel', 'Merman', 1902, 1984),
(4, 'Leroy', 'Barton', 1922, 1978),
(5, 'Garrett', 'Foxworth', 1934, 1999),
(6, 'Samual', 'Cragey', 1935, 1977),
(7, 'Mary', 'Shepard', 1956, 0),
(8, 'Gopi', 'Madaswamy', 1978, 0),
(9, 'Sanjeeb', 'Mishra', 1922, 1982),
(10, 'Kendall', 'Barker', 1945, 1999),
(11, 'Juliette', 'Capulet', 1900, 1913),
(12, 'Rachel', 'Angel', 1999, 0),
(13, 'James', 'Camron', 1932, 1988),
(17, 'Mark', 'Lucus', 1944, 1989),
(18, 'Tie', 'Breaker', 1955, 1955);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE IF NOT EXISTS `years` (
  `year` int(4) NOT NULL,
  `population` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`year`, `population`) VALUES
(1900, 1),
(1901, 1),
(1900, 1),
(1901, 1),
(1902, 2),
(1903, 2),
(1904, 2),
(1905, 2),
(1906, 2),
(1907, 2),
(1908, 2),
(1909, 2),
(1910, 2),
(1911, 2),
(1912, 3),
(1913, 3),
(1914, 2),
(1915, 2),
(1916, 2),
(1917, 2),
(1918, 2),
(1919, 2),
(1920, 2),
(1921, 2),
(1922, 4),
(1923, 5),
(1924, 5),
(1925, 5),
(1926, 5),
(1927, 5),
(1928, 5),
(1929, 5),
(1930, 5),
(1931, 5),
(1932, 6),
(1933, 6),
(1934, 7),
(1935, 8),
(1936, 8),
(1937, 7),
(1938, 7),
(1939, 7),
(1940, 7),
(1941, 7),
(1942, 7),
(1943, 7),
(1944, 8),
(1945, 8),
(1946, 8),
(1947, 8),
(1948, 8),
(1949, 8),
(1950, 8),
(1951, 8),
(1952, 8),
(1953, 8),
(1954, 8),
(1955, 9),
(1956, 8),
(1957, 8),
(1958, 8),
(1959, 8),
(1960, 8),
(1961, 8),
(1962, 8),
(1963, 8),
(1964, 8),
(1965, 8),
(1966, 8),
(1967, 8),
(1968, 8),
(1969, 8),
(1970, 8),
(1971, 8),
(1972, 8),
(1973, 8),
(1974, 8),
(1975, 8),
(1976, 8),
(1977, 8),
(1978, 7),
(1979, 6),
(1980, 6),
(1981, 6),
(1982, 6),
(1983, 5),
(1984, 5),
(1985, 4),
(1986, 4),
(1987, 4),
(1988, 4),
(1989, 3),
(1990, 2),
(1991, 2),
(1992, 2),
(1993, 2),
(1994, 2),
(1995, 2),
(1996, 2),
(1997, 2),
(1998, 2),
(1999, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
