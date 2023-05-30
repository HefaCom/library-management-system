-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 02:41 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` int(10) UNSIGNED NOT NULL,
  `security_ques` varchar(45) NOT NULL,
  `answer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `name`, `password`, `security_ques`, `answer`) VALUES
('FAITH', 'JASMINE', 1349, 'What is your mother toungue?', 'LUO'),
('hezron', 'Hezron Ouma', 1349, 'What is your nick name?', 'Ronny'),
('jude', 'angel jude', 123, 'What is your mother toungue?', 'bangla');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `edition` int(10) UNSIGNED NOT NULL,
  `publisher` varchar(35) NOT NULL,
  `price` int(8) UNSIGNED NOT NULL,
  `stock` int(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `edition`, `publisher`, `price`, `stock`) VALUES
(92, 'The River Between', 4, 'MacMillan', 32, 23),
(401, 'Things Fall Apart', 1, 'Oxford', 60, 11),
(563, 'Advanced Programming', 3, 'Phoenix', 50, 10),
(655, 'Understanding CSS/HTML and Javascript', 4, 'Fox Printers', 13, 14),
(951, 'Caucassian Chalk Circle', 4, 'Oxford University', 55, 33),
(1000, 'Core PHP', 4, 'Time Series', 46, 18);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` int(5) UNSIGNED NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int(5) UNSIGNED NOT NULL,
  `stock` int(5) UNSIGNED NOT NULL,
  `stu_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(25) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(10) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `doi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`book_id`, `b_name`, `edition`, `publisher`, `price`, `stock`, `stu_id`, `s_name`, `f_name`, `course`, `branch`, `year`, `semister`, `doi`) VALUES
(1000, 'Core PHP', 4, 'Time Series', 46, 19, 430, 'HOPE', 'HEZRON', 'BBA', 'MAIN BRANCH', '2nd', '3rd', '2021-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `returntbl`
--

CREATE TABLE `returntbl` (
  `stu_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` varchar(25) NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `doi` date NOT NULL,
  `doreturn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returntbl`
--

INSERT INTO `returntbl` (`stu_id`, `s_name`, `f_name`, `course`, `branch`, `year`, `semister`, `book_id`, `b_name`, `edition`, `publisher`, `price`, `stock`, `doi`, `doreturn`) VALUES
(110, 'Hezron Okoko', 'Charles Okoko', 'BSc', 'Main', '4th', '2nd', 951, 'Caucassian Chalk Circle', '4', 'Oxford University', 55, 30, '2021-10-10', '2022-05-05'),
(334, 'adrian', 'arnulfo', 'BBA', 'bear branch', '4th', '2nd', 401, 'Things Fall Apart', '1', 'Oxford', 60, 10, '2022-07-10', '2022-07-13'),
(110, 'Hezron Okoko', 'Charles Okoko', 'BSc', 'Main', '4th', '2nd', 951, 'Caucassian Chalk Circle', '4', 'Oxford University', 55, 31, '2022-03-10', '2022-07-14'),
(334, 'adrian', 'arnulfo', 'BBA', 'bear branch', '4th', '2nd', 92, 'The River Between', '4', 'MacMillan', 32, 21, '2022-07-13', '2022-07-14'),
(430, 'HOPE', 'HEZRON', 'BBA', 'MAIN BRANCH', '2nd', '3rd', 1000, 'Core PHP', '4', 'Time Series', 46, 16, '2022-05-17', '2022-07-14'),
(334, 'adrian', 'arnulfo', 'BBA', 'bear branch', '4th', '2nd', 1000, 'Core PHP', '4', 'Time Series', 46, 17, '2022-07-14', '2022-07-14'),
(430, 'HOPE', 'HEZRON', 'BBA', 'MAIN BRANCH', '2nd', '3rd', 92, 'The River Between', '4', 'MacMillan', 32, 22, '2022-07-14', '2022-07-14'),
(110, 'Hezron Okoko', 'Charles Okoko', 'BSc', 'Main', '4th', '2nd', 951, 'Caucassian Chalk Circle', '4', 'Oxford University', 55, 32, '2022-07-14', '2022-07-14'),
(430, 'HOPE', 'HEZRON', 'BBA', 'MAIN BRANCH', '2nd', '3rd', 1000, 'Core PHP', '4', 'Time Series', 46, 18, '2022-07-14', '2022-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `fathers_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `fathers_name`, `course`, `branch`, `year`, `semister`) VALUES
(110, 'Hezron Okoko', 'Charles Okoko', 'BSc', 'Main', '4th', '2nd'),
(334, 'adrian', 'arnulfo', 'BBA', 'bear branch', '4th', '2nd'),
(430, 'HOPE', 'HEZRON', 'BBA', 'MAIN BRANCH', '2nd', '3rd'),
(862, 'Jasmine', 'Hezron', 'BBA', 'Main', '1st', '2nd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
