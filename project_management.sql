-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2020 at 07:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `create_uid` int(11) DEFAULT NULL,
  `create_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_uid` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `customer`, `create_uid`, `create_datetime`, `modify_uid`, `modify_datetime`) VALUES
(1, 'TKOH', 1, '0000-00-00 00:00:00', 1, '2020-08-18 16:15:06'),
(2, 'UCH', 2, '0000-00-00 00:00:00', 3, '2020-08-18 18:23:22'),
(3, 'TMH', 1, '0000-00-00 00:00:00', 5, '2020-08-18 19:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `cust_system`
--

CREATE TABLE `cust_system` (
  `cust_system_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `system_id` int(11) NOT NULL,
  `create_uid` int(11) DEFAULT NULL,
  `create_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_uid` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_system`
--

INSERT INTO `cust_system` (`cust_system_id`, `cust_id`, `system_id`, `create_uid`, `create_datetime`, `modify_uid`, `modify_datetime`) VALUES
(1, 1, 1, 1, '0000-00-00 00:00:00', 6, '2020-08-18 19:08:34'),
(2, 2, 7, 1, '0000-00-00 00:00:00', 2, '2020-08-18 19:08:34'),
(3, 3, 1, 1, '0000-00-00 00:00:00', 1, '2020-08-18 19:08:34'),
(4, 2, 7, 5, '0000-00-00 00:00:00', 6, '2020-08-18 19:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `details_id` int(11) NOT NULL,
  `system_id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `task` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `uat/prod_target` text DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `days` float DEFAULT NULL,
  `other` text DEFAULT NULL,
  `create_uid` int(11) DEFAULT NULL,
  `create_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_uid` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`details_id`, `system_id`, `type_id`, `state_id`, `task`, `remarks`, `uat/prod_target`, `staff_id`, `start_date`, `end_date`, `days`, `other`, `create_uid`, `create_datetime`, `modify_uid`, `modify_datetime`) VALUES
(3, 1, 1, 4, 'new RFID reader Driver + Background program', 'on-site installation on 2020-02-28', 'UAT Target 2020 Q1', 2, '2020-02-25', '2020-02-28', 3, '1 RFID', 1, '2020-08-18 20:29:38', 2, '2020-08-18 17:03:09'),
(9, 7, 4, 8, 'Check and Create DB/program daily backup', 'UCH 無機', NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-08-18 20:29:38', 6, '2020-08-18 19:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `permission` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `permission`) VALUES
(1, 'read'),
(2, 'write');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `position_id` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `create_uid` int(11) DEFAULT NULL,
  `create_datatime` datetime DEFAULT NULL,
  `modify_uid` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`position_id`, `position`, `create_uid`, `create_datatime`, `modify_uid`, `modify_datetime`) VALUES
(1, 'Solution Consultant', NULL, NULL, NULL, NULL),
(2, 'Programmer', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state` varchar(30) NOT NULL,
  `create_uid` int(11) DEFAULT NULL,
  `create_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_uid` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state`, `create_uid`, `create_datetime`, `modify_uid`, `modify_datetime`) VALUES
(1, 'Not start', 1, '2020-08-18 20:35:28', 1, '2020-08-18 20:44:30'),
(2, 'WIP', 2, '2020-08-18 20:35:28', 2, '2020-08-18 20:44:56'),
(3, 'DEV', 2, '2020-08-18 20:35:28', 2, '2020-08-18 21:43:15'),
(4, 'UAT', 1, '2020-08-18 20:35:28', 5, '2020-08-18 21:42:36'),
(5, 'Done', 2, '2020-08-18 20:35:28', 5, '2020-08-18 21:42:48'),
(6, 'Pending', 5, '2020-08-18 20:35:28', 5, '2020-08-18 21:45:48'),
(7, 'Waived', 6, '2020-08-18 20:35:28', 6, '2020-08-18 21:42:10'),
(8, 'Hold', 1, '2020-08-18 20:35:28', 1, '2020-08-18 21:41:22');

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `system_id` int(11) NOT NULL,
  `system` varchar(50) NOT NULL,
  `create_uid` int(11) DEFAULT NULL,
  `create_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_uid` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`system_id`, `system`, `create_uid`, `create_datetime`, `modify_uid`, `modify_datetime`) VALUES
(1, 'PNIS', 1, '2020-08-18 20:36:55', 1, '2020-08-18 21:42:47'),
(2, 'PAA', 5, '2020-08-18 20:36:55', 5, '2020-08-18 21:46:49'),
(5, 'Dashbroad', 5, '2020-08-18 20:36:55', 5, '2020-08-18 21:44:07'),
(7, 'Bed Panel', 6, '2020-08-18 20:36:55', 6, '2020-08-18 21:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `create_uid` int(11) DEFAULT NULL,
  `create_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_uid` int(11) DEFAULT NULL,
  `modify_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type`, `create_uid`, `create_datetime`, `modify_uid`, `modify_datetime`) VALUES
(1, 'Develop', 2, '2020-08-18 20:38:33', 2, '2020-08-18 21:43:41'),
(2, 'Debug', 3, '2020-08-18 20:38:33', 3, '2020-08-18 21:47:45'),
(3, 'CR+Debug', 5, '2020-08-18 20:38:33', 5, '2020-08-18 21:45:02'),
(4, 'Support', 6, '2020-08-18 20:38:33', 3, '2020-08-18 21:45:12'),
(5, 'Infrastructure', 1, '2020-08-18 20:38:33', 2, '2020-08-18 21:48:23'),
(6, 'Testing', 5, '2020-08-18 20:38:33', 3, '2020-08-18 21:48:31'),
(7, 'Demo', 3, '2020-08-18 20:38:33', 5, '2020-08-18 21:48:39'),
(8, 'Meeting', 5, '2020-08-18 20:38:33', 6, '2020-08-18 21:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `position_id` int(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstName`, `lastName`, `position_id`, `email`, `password`) VALUES
(1, 'Micky', 'Chan', 1, 'micky@gmail.com', '123'),
(2, 'Ben', 'A', 2, 'ben@gmail.com', '456'),
(3, 'Tony', 'B', 2, 'tony@gmail.com', '789'),
(5, 'Leslie', 'C', 2, 'leslie@gmail.com', '852'),
(6, 'Walter', 'D', 2, 'walter@gmail.com', '963');

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE `user_permission` (
  `user_permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`user_permission_id`, `user_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 1),
(5, 5, 1),
(6, 5, 2),
(7, 6, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `createdata_staffid` (`create_uid`,`modify_uid`),
  ADD KEY `modifydata_staffid` (`modify_uid`);

--
-- Indexes for table `cust_system`
--
ALTER TABLE `cust_system`
  ADD PRIMARY KEY (`cust_system_id`),
  ADD KEY `cust_id` (`cust_id`,`system_id`),
  ADD KEY `system_id` (`system_id`),
  ADD KEY `createdata_staffid` (`create_uid`,`modify_uid`),
  ADD KEY `modifydata_staffid` (`modify_uid`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`details_id`),
  ADD KEY `#` (`system_id`),
  ADD KEY `type` (`type_id`,`state_id`,`staff_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `createdata_staffid` (`create_uid`,`modify_uid`),
  ADD KEY `modifydata_staffid` (`modify_uid`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`),
  ADD KEY `create_uid` (`create_uid`,`modify_uid`),
  ADD KEY `modify_uid` (`modify_uid`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `createdata_staffid` (`create_uid`,`modify_uid`),
  ADD KEY `modifydata_staffid` (`modify_uid`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`system_id`),
  ADD KEY `system` (`system`),
  ADD KEY `createdata_staffid` (`create_uid`,`modify_uid`),
  ADD KEY `modifydata_staffid` (`modify_uid`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `createdata_staffid` (`create_uid`,`modify_uid`),
  ADD KEY `modifydata_staffid` (`modify_uid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `position` (`position_id`);

--
-- Indexes for table `user_permission`
--
ALTER TABLE `user_permission`
  ADD PRIMARY KEY (`user_permission_id`),
  ADD KEY `user_id` (`user_id`,`permission_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cust_system`
--
ALTER TABLE `cust_system`
  MODIFY `cust_system_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `system_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_permission`
--
ALTER TABLE `user_permission`
  MODIFY `user_permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`modify_uid`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`create_uid`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `cust_system`
--
ALTER TABLE `cust_system`
  ADD CONSTRAINT `cust_system_ibfk_1` FOREIGN KEY (`system_id`) REFERENCES `system` (`system_id`),
  ADD CONSTRAINT `cust_system_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `cust_system_ibfk_3` FOREIGN KEY (`modify_uid`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `cust_system_ibfk_4` FOREIGN KEY (`create_uid`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`),
  ADD CONSTRAINT `details_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `details_ibfk_3` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`),
  ADD CONSTRAINT `details_ibfk_4` FOREIGN KEY (`system_id`) REFERENCES `system` (`system_id`),
  ADD CONSTRAINT `details_ibfk_5` FOREIGN KEY (`modify_uid`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `details_ibfk_6` FOREIGN KEY (`create_uid`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `position_ibfk_1` FOREIGN KEY (`create_uid`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `position_ibfk_2` FOREIGN KEY (`modify_uid`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_ibfk_1` FOREIGN KEY (`modify_uid`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `state_ibfk_2` FOREIGN KEY (`create_uid`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `system`
--
ALTER TABLE `system`
  ADD CONSTRAINT `system_ibfk_1` FOREIGN KEY (`modify_uid`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `system_ibfk_2` FOREIGN KEY (`create_uid`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `type_ibfk_1` FOREIGN KEY (`modify_uid`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `type_ibfk_2` FOREIGN KEY (`create_uid`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`);

--
-- Constraints for table `user_permission`
--
ALTER TABLE `user_permission`
  ADD CONSTRAINT `user_permission_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_permission_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
