-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 16, 2022 at 01:01 AM
-- Server version: 8.0.28
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkingManagment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `Id` int NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` varchar(100) NOT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `UserType` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`Id`, `Name`, `Email`, `Phone`, `Password`, `UserType`) VALUES
(2, 'aditya', 'aditya@gmail.com', '963852742', 'aditya', 'Admin'),
(3, 'ankita', 'ankita@gmail.com', '963852743', 'ankita', 'Admin'),
(4, 'priyanshu', 'priyanshu@gmail.com', '963852744', 'priyanshu', 'Admin'),
(5, 'shubhangi', 'shubhangi@gmail.com', '963852745', 'shubhangi', 'Admin'),
(6, 'parth', 'parth@gmail.com', '963852746', 'parth', 'Admin'),
(7, 'ankit', 'ankit@gmail.com', '963852747', 'ankit', 'Regular'),
(9, 'Shubham', 'shubham21@gmail.com', '8529675906', 'Shubham08@', 'Regular'),
(10, 'Aditya', 'Aditya@gmail.com', '9764318520', 'Aditya2@', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parking`
--

CREATE TABLE `tbl_parking` (
  `id` int NOT NULL,
  `Vehicle_Number` varchar(155) DEFAULT NULL,
  `Vehicle_Cat` varchar(100) DEFAULT NULL,
  `Rate` varchar(45) DEFAULT NULL,
  `In_Time` varchar(255) DEFAULT NULL,
  `Out_Time` varchar(255) DEFAULT NULL,
  `Total_Time` varchar(255) DEFAULT NULL,
  `Total_Amount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_parking`
--

INSERT INTO `tbl_parking` (`id`, `Vehicle_Number`, `Vehicle_Cat`, `Rate`, `In_Time`, `Out_Time`, `Total_Time`, `Total_Amount`) VALUES
(1, 'HR02AG5104', 'Two', '20', '2022-09-14 09:00:00', '2022-09-14 16:20:00', NULL, 20),
(2, 'HR02AG5105', 'Two', '20', '2022-09-14 09:00:20', '2022-09-14 16:10:00', NULL, 20),
(3, 'HR02AG5106', 'Four', '40', '2022-09-14 09:02:10', '2022-09-14 16:05:00', NULL, 40),
(4, 'HR02AG5107', 'Four', '40', '2022-09-14 09:05:20', '2022-09-14 16:30:00', NULL, 40),
(5, 'HR02AG5104', 'Two', '20', '2022-09-13 09:00:00', '2022-09-13 16:20:00', NULL, 20),
(6, 'HR02AG5105', 'Two', '20', '2022-09-13 09:00:20', '2022-09-13 16:10:00', NULL, 20),
(7, 'HR02AG5106', 'Four', '40', '2022-09-13 09:02:10', '2022-09-13 16:05:00', NULL, 40),
(8, 'HR02AG5107', 'Four', '40', '2022-09-13 09:05:20', '2022-09-13 16:30:00', NULL, 40),
(9, 'HR02AG5104', 'Two', '20', '2022-09-12 09:00:00', '2022-09-12 16:20:00', NULL, 20),
(10, 'HR02AG5105', 'Two', '20', '2022-09-12 09:00:20', '2022-09-12 16:10:00', NULL, 20),
(11, 'HR02AG5106', 'Four', '40', '2022-09-12 09:02:10', '2022-09-12 16:05:00', NULL, 40),
(12, 'HR02AG5107', 'Four', '40', '2022-09-12 09:05:20', '2022-09-12 16:30:00', NULL, 40),
(13, 'HR02AG5104', 'Two', '20', '2022-09-10 09:00:00', '2022-09-10 16:20:00', NULL, 20),
(14, 'HR02AG5105', 'Two', '20', '2022-09-10 09:00:20', '2022-09-10 16:10:00', NULL, 20),
(15, 'HR02AG5106', 'Four', '40', '2022-09-10 09:02:10', '2022-09-10 16:05:00', NULL, 40),
(16, 'HR02AG5107', 'Four', '40', '2022-09-10 09:05:20', '2022-09-10 16:30:00', NULL, 40),
(17, 'HR02AG5104', 'Two', '20', '2022-09-09 09:00:00', '2022-09-09 16:20:00', NULL, 20),
(18, 'HR02AG5105', 'Two', '20', '2022-09-09 09:00:20', '2022-09-09 16:10:00', NULL, 20),
(19, 'HR02AG5106', 'Four', '40', '2022-09-09 09:02:10', '2022-09-09 16:05:00', NULL, 40),
(20, 'HR02AG5107', 'Four', '40', '2022-09-09 09:05:20', '2022-09-09 16:30:00', NULL, 40),
(21, 'HR02AG5104', 'Two', '20', '2022-09-05 09:00:00', '2022-09-05 16:20:00', NULL, 20),
(22, 'HR02AG5105', 'Two', '20', '2022-09-05 09:00:20', '2022-09-05 16:10:00', NULL, 20),
(23, 'HR02AG5106', 'Four', '40', '2022-09-05 09:02:10', '2022-09-05 16:05:00', NULL, 40),
(24, 'HR02AG5107', 'Four', '40', '2022-09-05 09:05:20', '2022-09-05 16:30:00', NULL, 40),
(25, 'HR02AG5104', 'Two', '20', '2022-09-04 09:00:00', '2022-09-04 16:20:00', NULL, 20),
(26, 'HR02AG5105', 'Two', '20', '2022-09-04 09:00:20', '2022-09-04 16:10:00', NULL, 20),
(27, 'HR02AG5106', 'Four', '40', '2022-09-04 09:02:10', '2022-09-04 16:05:00', NULL, 40),
(28, 'HR02AG5107', 'Four', '40', '2022-09-04 09:05:20', '2022-09-04 16:30:00', NULL, 40),
(29, 'HR02AG5104', 'Two', '20', '2022-09-03 09:00:00', '2022-09-03 16:20:00', NULL, 20),
(30, 'HR02AG5105', 'Two', '20', '2022-09-03 09:00:20', '2022-09-03 16:10:00', NULL, 20),
(31, 'HR02AG5106', 'Four', '40', '2022-09-03 09:02:10', '2022-09-03 16:05:00', NULL, 40),
(32, 'HR02AG5107', 'Four', '40', '2022-09-03 09:05:20', '2022-09-03 16:30:00', NULL, 40),
(33, 'HR02AG5104', 'Two', '20', '2022-09-02 09:00:00', '2022-09-02 16:20:00', NULL, 20),
(34, 'HR02AG5105', 'Two', '20', '2022-09-02 09:00:20', '2022-09-02 16:10:00', NULL, 20),
(35, 'HR02AG5106', 'Four', '40', '2022-09-02 09:02:10', '2022-09-02 16:05:00', NULL, 40),
(36, 'HR02AG5107', 'Four', '40', '2022-09-02 09:05:20', '2022-09-02 16:30:00', NULL, 40),
(37, 'HR02AG5104', 'Two', '20', '2022-09-01 09:00:00', '2022-09-01 16:20:00', NULL, 20),
(38, 'HR02AG5105', 'Two', '20', '2022-09-01 09:00:20', '2022-09-01 16:10:00', NULL, 20),
(39, 'HR02AG5106', 'Four', '40', '2022-09-01 09:02:10', '2022-09-01 16:05:00', NULL, 40),
(40, 'HR02AG5107', 'Four', '40', '2022-09-01 09:05:20', '2022-09-01 16:30:00', NULL, 40),
(41, 'HR02AG5104', 'Two', '20', '2022-09-06 09:00:00', '2022-09-06 16:20:00', NULL, 20),
(42, 'HR02AG5105', 'Two', '20', '2022-09-06 09:00:20', '2022-09-06 16:10:00', NULL, 20),
(43, 'HR02AG5106', 'Four', '40', '2022-09-06 09:02:10', '2022-09-06 16:05:00', NULL, 40),
(44, 'HR02AG5107', 'Four', '40', '2022-09-06 09:05:20', '2022-09-06 16:30:00', NULL, 40),
(45, 'HR02AG5104', 'Two', '20', '2022-09-07 09:00:00', '2022-09-07 16:20:00', NULL, 20),
(46, 'HR02AG5105', 'Two', '20', '2022-09-07 09:00:20', '2022-09-07 16:10:00', NULL, 20),
(47, 'HR02AG5106', 'Four', '40', '2022-09-07 09:02:10', '2022-09-07 16:05:00', NULL, 40),
(48, 'HR02AG5107', 'Four', '40', '2022-09-07 09:05:20', '2022-09-07 16:30:00', NULL, 40),
(49, 'HR02AG5104', 'Two', '20', '2022-09-08 09:00:00', '2022-09-08 16:20:00', NULL, 20),
(50, 'HR02AG5105', 'Two', '20', '2022-09-08 09:00:20', '2022-09-08 16:10:00', NULL, 20),
(51, 'HR02AG5106', 'Four', '40', '2022-09-08 09:02:10', '2022-09-08 16:05:00', NULL, 40),
(52, 'HR02AG5107', 'Four', '40', '2022-09-08 09:05:20', '2022-09-08 16:30:00', NULL, 40),
(53, 'HR02AG5103', 'Two', '20', '2022-09-14 09:40:00', '2022-09-14 13:00:00', NULL, 20),
(54, 'HR02AG5104', 'Two', '20', '2022-09-15 09:00:00\r\n\r\n', '2022-09-15 16:20:00\r\n', NULL, 20),
(55, 'HR02AG5105', 'Two', '20', '2022-09-15 09:01:00\r\n\r\n', '2022-09-15 15:20:00\r\n', NULL, 20),
(56, 'HR02AG5105', 'Four', '40', '2022-09-15 09:00:09\r\n', '2022-09-15 16:10:00', NULL, 40),
(57, 'HR02AG5106', 'Four', '40', '2022-09-15 09:03:00\r\n', '2022-09-15 13:20:00', NULL, 40);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_cat`
--

CREATE TABLE `tbl_vehicle_cat` (
  `id` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Rate` varchar(45) NOT NULL,
  `Active` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_vehicle_cat`
--

INSERT INTO `tbl_vehicle_cat` (`id`, `Name`, `Rate`, `Active`) VALUES
(1, 'Two', '50', 'Yes'),
(2, 'Four', '100', 'Yes'),
(3, 'Bycile', '15', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_parking`
--
ALTER TABLE `tbl_parking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tbl_parking_1_idx` (`Vehicle_Cat`);

--
-- Indexes for table `tbl_vehicle_cat`
--
ALTER TABLE `tbl_vehicle_cat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_parking`
--
ALTER TABLE `tbl_parking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_vehicle_cat`
--
ALTER TABLE `tbl_vehicle_cat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
