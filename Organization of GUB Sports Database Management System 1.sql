--Organization of GUB Sports Database Management System
--Abu Jafor Hadi
--abujaforhadi@gmail.com
-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2022 at 05:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `alumni_ID` int(11) NOT NULL,
  `Occupation` varchar(15) DEFAULT NULL,
  `contract_no` int(11) DEFAULT NULL,
  `student_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`alumni_ID`, `Occupation`, `contract_no`, `student_ID`) VALUES
(1, 'Teacher', 1956215485, 151002001),
(2, 'GOVT Employe', 1765478932, 161001048),
(3, 'IT Engineer', 1658947150, 163002043),
(4, 'GOVT Employe', 1495412002, 181002068),
(5, 'banker', 1761781245, 153002002),
(6, 'Software Engine', 1315464896, 171002001);

-- --------------------------------------------------------

--
-- Table structure for table `current_student`
--

CREATE TABLE `current_student` (
  `student_roll` int(11) NOT NULL,
  `student_ID` int(11) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `contract_no` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `current_student`
--

INSERT INTO `current_student` (`student_roll`, `student_ID`, `semester`, `contract_no`) VALUES
(2, 171002002, '11th', 1716865605),
(5, 222002005, '2th', 1721561005),
(7, 203002007, '6th', 1711561005),
(9, 221002009, '8th', 1716961005),
(11, 182002011, '7th', 130020454),
(13, 203002013, '6th', 1719561005),
(48, 203002048, '6th', 1303744717),
(54, 203002054, '6th', 1956482384),
(65, 211002065, '4th', 1700561005),
(81, 221003081, '6th', 1856482384);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_date` date NOT NULL,
  `event_name` varchar(15) DEFAULT NULL,
  `student_roll` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_date`, `event_name`, `student_roll`) VALUES
('2022-09-02', 'lodo', 7),
('2022-09-03', 'Cricket', 11),
('2022-08-31', 'Cards', 13),
('2022-09-02', 'Chess', 5),
('2022-09-02', 'lodo', 5),
('2022-08-31', 'Cards', 65),
('2022-09-02', 'lodo', 7),
('2022-09-01', 'Football', 54),
('2022-09-03', 'Cricket', 13),
('2022-09-01', 'Football', 9),
('2022-08-31', 'Cards', 11),
('2022-09-01', 'Football', 48),
('2022-09-03', 'Cricket', 48),
('2022-09-01', 'Football', 81),
('2022-09-01', 'Football', 11),
('2022-09-03', 'Cricket', 81),
('2022-09-02', 'Chess', 65),
('2022-08-31', 'Cards', 48);

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `alumni_ID` int(11) DEFAULT NULL,
  `account_no` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`alumni_ID`, `account_no`, `balance`) VALUES
(1, 151002, 3000),
(2, 161001, 7000),
(3, 181005, 15000),
(4, 16003, 9000),
(5, 15001, 1000),
(6, 17007, 8500);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `prayer_ID` int(11) NOT NULL,
  `student_roll` int(11) DEFAULT NULL,
  `student_ID` int(11) DEFAULT NULL,
  `sports_name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`prayer_ID`, `student_roll`, `student_ID`, `sports_name`) VALUES
(1, 7, 203002007, 'ludo'),
(2, 54, 203002054, 'ludo'),
(3, 5, 222002005, 'ludo'),
(4, 7, 203002007, 'ludo'),
(5, 9, 221002009, 'Football'),
(6, 7, 203002007, 'Chess'),
(7, 11, 182002011, 'Football'),
(8, 13, 203002013, 'Cricket'),
(9, 13, 203002013, 'Cards'),
(10, 11, 182002011, 'Football'),
(11, 81, 221003081, 'Football'),
(12, 11, 182002011, 'Cards'),
(13, 11, 182002011, 'Cricket'),
(14, 48, 203002048, 'Cards'),
(15, 13, 203002013, 'Cricket'),
(16, 65, 211002065, 'Chess'),
(17, 65, 211002065, 'Cards'),
(18, 48, 203002048, 'Football'),
(19, 9, 221002009, 'Football'),
(20, 9, 221002009, 'Chess'),
(21, 81, 221003081, 'Cricket'),
(22, 54, 203002054, 'Football'),
(23, 54, 203002054, 'Football');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `student_ID` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `batch` varchar(5) DEFAULT NULL,
  `dept_name` varchar(10) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL CHECK (`Age` >= 18),
  `Gender` enum('Male','Female') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`student_ID`, `name`, `batch`, `dept_name`, `Age`, `Gender`) VALUES
(19207080, 'Azad', '191', 'EEE', 25, 'Male'),
(19207081, 'Bijoy', '192', 'CSE', 23, 'Male'),
(151002001, 'Rafia', '151', 'CSE', 30, 'Female'),
(153002002, 'Hadi', '162', 'CSE', 24, 'Male'),
(161001048, 'Faisal', '161', 'CSE', 20, 'Male'),
(163002001, 'Emon', '163', 'CSE', 30, 'Male'),
(163002043, 'Shuvo', '163', 'CSE', 28, 'Male'),
(171002001, 'Shihab', '171', 'EEE', 20, 'Male'),
(171002002, 'Opi', '171', 'CSE', 20, 'Male'),
(173002081, 'Munna', '173', ' BBA', 22, 'Male'),
(181002068, 'Rafi', '181', 'EEE', 31, 'Male'),
(182002011, 'Reyan', '182', 'TEX', 19, 'Male'),
(183001015, 'Tahmid', '218', 'TEX', 26, 'Male'),
(201002015, 'Parvej', '201', 'CSE', 22, 'Male'),
(201002016, 'Arnob', '201', 'CSE', 24, 'Male'),
(202002003, 'mahbuba', '202', 'BBA', 26, 'Female'),
(203002007, 'Muntajima', '203', 'CSE', 20, 'Female'),
(203002013, 'Ismail', '203', 'CSE', 25, 'Male'),
(203002048, 'jafor', '6th', 'CSE', 20, 'Male'),
(203002054, 'Huda', '203', 'EEE', 20, 'Male'),
(211002065, 'Mustafiz', '211', 'CSE', 27, 'Male'),
(211002082, 'Mahmuda', '211', 'CSE', 25, 'Female'),
(213002015, 'Shoriful', '213', 'CSE', 23, 'Male'),
(213002088, 'Shovon', '213', 'CSE', 19, 'Male'),
(221002009, 'Rasul', '221', 'CSE', 21, 'Male'),
(221003081, 'Nazmul', '221', ' BBA', 35, 'Male'),
(222002001, 'sohel', '222', 'EEE', 26, 'Male'),
(222002005, 'Misty', '192', 'CSE', 19, 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`alumni_ID`),
  ADD KEY `student_ID` (`student_ID`);

--
-- Indexes for table `current_student`
--
ALTER TABLE `current_student`
  ADD PRIMARY KEY (`student_roll`),
  ADD KEY `student_ID` (`student_ID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD KEY `student_roll` (`student_roll`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD KEY `alumni_ID` (`alumni_ID`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`prayer_ID`),
  ADD KEY `student_roll` (`student_roll`),
  ADD KEY `student_ID` (`student_ID`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`student_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`student_ID`) REFERENCES `student_info` (`student_ID`);

--
-- Constraints for table `current_student`
--
ALTER TABLE `current_student`
  ADD CONSTRAINT `current_student_ibfk_1` FOREIGN KEY (`student_ID`) REFERENCES `student_info` (`student_ID`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`student_roll`) REFERENCES `current_student` (`student_roll`);

--
-- Constraints for table `funds`
--
ALTER TABLE `funds`
  ADD CONSTRAINT `funds_ibfk_1` FOREIGN KEY (`alumni_ID`) REFERENCES `alumni` (`alumni_ID`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`student_roll`) REFERENCES `current_student` (`student_roll`),
  ADD CONSTRAINT `players_ibfk_2` FOREIGN KEY (`student_ID`) REFERENCES `student_info` (`student_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
