-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 03:28 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university hall management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `h_id` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `s_id` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `name`, `address`, `contact`, `h_id`, `code`, `s_id`, `email`) VALUES
('329', 'shima', 'Barishal', 'c&b road', '1234', '1121', '4495', 'Shima@gmail.com'),
('322', 'rahman', 'dhumki_potuakhali', 'dhumki', '1239', '1111', '4455', 'jhhhv@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `websites` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`code`, `name`, `location`, `websites`, `phone_no`, `email`) VALUES
('1111', 'Shere_bangla_hall', 'University_of_BU', 'URL1', '09876543210', 'jjhvjhi@gamil.com'),
('1121', 'Seikh_Hasina_hall', 'University_of_BU', 'URL2', '09737819178', 'wetddhi@gamil.com');

-- --------------------------------------------------------

--
-- Table structure for table `house_tutor`
--

CREATE TABLE `house_tutor` (
  `h_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `p_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house_tutor`
--

INSERT INTO `house_tutor` (`h_id`, `name`, `email`, `contact`, `address`, `p_id`) VALUES
('1234', 'jakia_begum', 'ggcguu@gmail.com', 'rupatoli', 'rupatoli_barisal', '0011'),
('1239', 'Abdul_rahman', 'aaaa@gmail.com', 'rupatoli', 'rupatoli_barisal', '0099');

-- --------------------------------------------------------

--
-- Table structure for table `provost`
--

CREATE TABLE `provost` (
  `p_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provost`
--

INSERT INTO `provost` (`p_id`, `name`, `email`, `contact`, `address`, `code`) VALUES
('0011', 'Rahar_foysal', 'asgf@gamil.com', 'rupatoli', 'Barishal', '1121'),
('0099', 'Cinmoi_poddar', 'asgf@gamil.com', 'rupatoli', 'rupatoli', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_no` varchar(50) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `floor_no` int(50) NOT NULL,
  `h_id` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_no`, `capacity`, `controller`, `floor_no`, `h_id`, `code`) VALUES
('2000', '12', 'jkaiya_begum', 2, '1234', '1111'),
('2001', '10', 'jkaiya_begum', 2, '1239', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Name` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `session` varchar(50) NOT NULL,
  `s_id` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `h_id` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Name`, `dept`, `session`, `s_id`, `email`, `contact`, `address`, `h_id`, `code`) VALUES
('karim', 'cse', '2028_19', '4455', 'guu@gmail.com', '876543211', 'Barishal', '1234', '1121'),
('shelina', 'BNG', '2028_19', '4495', 'uuyu@gmail.com', 'rupatoli', 'Barishal', '1234', '1111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`address`),
  ADD KEY `h_id` (`h_id`),
  ADD KEY `s_id` (`s_id`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `house_tutor`
--
ALTER TABLE `house_tutor`
  ADD PRIMARY KEY (`h_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `provost`
--
ALTER TABLE `provost`
  ADD PRIMARY KEY (`p_id`,`email`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_no`),
  ADD KEY `h_id` (`h_id`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `h_id` (`h_id`),
  ADD KEY `code` (`code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `house_tutor` (`h_id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`code`) REFERENCES `hall` (`code`);

--
-- Constraints for table `house_tutor`
--
ALTER TABLE `house_tutor`
  ADD CONSTRAINT `house_tutor_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `provost` (`p_id`);

--
-- Constraints for table `provost`
--
ALTER TABLE `provost`
  ADD CONSTRAINT `provost_ibfk_1` FOREIGN KEY (`code`) REFERENCES `hall` (`code`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `house_tutor` (`h_id`),
  ADD CONSTRAINT `room_ibfk_2` FOREIGN KEY (`code`) REFERENCES `hall` (`code`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `house_tutor` (`h_id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`code`) REFERENCES `hall` (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
