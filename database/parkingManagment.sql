-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 13, 2022 at 01:14 AM
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
  `Phone` int DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `UserType` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`Id`, `Name`, `Email`, `Phone`, `Password`, `UserType`) VALUES
(1, 'shubham', 'shubham@gmail.com', 963852741, 'shubham', 'Admin'),
(2, 'aditya', 'aditya@gmail.com', 963852742, 'aditya', 'Admin'),
(3, 'ankita', 'ankita@gmail.com', 963852743, 'ankita', 'Admin'),
(4, 'priyanshu', 'priyanshu@gmail.com', 963852744, 'priyanshu', 'Admin'),
(5, 'shubhangi', 'shubhangi@gmail.com', 963852745, 'shubhangi', 'Admin'),
(6, 'parth', 'parth@gmail.com', 963852746, 'parth', 'Admin'),
(7, 'ankit', 'ankit@gmail.com', 963852747, 'ankit', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parking`
--

CREATE TABLE `tbl_parking` (
  `id` int NOT NULL,
  `Vehicle_Cat_ID` varchar(100) DEFAULT NULL,
  `Rate_id` int DEFAULT NULL,
  `In_Time` varchar(255) DEFAULT NULL,
  `Out_Time` varchar(255) DEFAULT NULL,
  `Total_Time` varchar(255) DEFAULT NULL,
  `Total_Amount` int DEFAULT NULL,
  `Paid_Status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rate`
--

CREATE TABLE `tbl_rate` (
  `id` int NOT NULL,
  `Vehicle_cat_ID` varchar(100) DEFAULT NULL,
  `Rate` varchar(150) NOT NULL,
  `Active` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_rate`
--

INSERT INTO `tbl_rate` (`id`, `Vehicle_cat_ID`, `Rate`, `Active`) VALUES
(1, 'Two', '50', 'Yes'),
(2, 'Four', '100', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_cat`
--

CREATE TABLE `tbl_vehicle_cat` (
  `id` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Active` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_vehicle_cat`
--

INSERT INTO `tbl_vehicle_cat` (`id`, `Name`, `Active`) VALUES
(1, 'Two', 'Yes'),
(2, 'Four', 'Yes');

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
  ADD KEY `fk_tbl_parking_1_idx` (`Rate_id`);

--
-- Indexes for table `tbl_rate`
--
ALTER TABLE `tbl_rate`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_parking`
--
ALTER TABLE `tbl_parking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_rate`
--
ALTER TABLE `tbl_rate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_vehicle_cat`
--
ALTER TABLE `tbl_vehicle_cat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_parking`
--
ALTER TABLE `tbl_parking`
  ADD CONSTRAINT `fk_tbl_parking_1` FOREIGN KEY (`Rate_id`) REFERENCES `tbl_rate` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
