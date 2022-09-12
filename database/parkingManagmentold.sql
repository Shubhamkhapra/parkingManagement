-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 12, 2022 at 01:19 PM
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
-- Table structure for table `tbl_Guest`
--

CREATE TABLE `tbl_Guest` (
  `Id` int NOT NULL,
  `Name` varchar(155) DEFAULT NULL,
  `Phone` int DEFAULT NULL,
  `Vechile_cat` varchar(155) DEFAULT NULL,
  `Vechile_no` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_Guest`
--

INSERT INTO `tbl_Guest` (`Id`, `Name`, `Phone`, `Vechile_cat`, `Vechile_no`) VALUES
(1, 'Mr. Kamal Gupta', 986532741, 'Two', 'HR02AS4501'),
(2, 'Ms. Jyoti Bala', 986532742, 'Two', 'HR02AS4502'),
(3, 'Mr. Nitesh Saini', 986532743, 'Two', 'HR02AS4503'),
(4, 'Ms. Swati Verma', 986532744, 'Two', 'HR02AS4504'),
(5, 'Mr. Amit Kapoor', 986532745, 'Two', 'HR02AS4505'),
(6, 'Ms. Harpreet Kaur', 986532746, 'Two', 'HR02AS4506'),
(7, 'Ms. Vinty Dhiman', 986532747, 'Two', 'HR02AS4507'),
(8, 'Ms. Meenakshi Sharma', 986532748, 'Two', 'HR02AS4508');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `Rollno` bigint NOT NULL,
  `Name` varchar(155) DEFAULT NULL,
  `Email` varchar(155) DEFAULT NULL,
  `Phone` int DEFAULT NULL,
  `Course` varchar(100) DEFAULT NULL,
  `Semester` varchar(100) DEFAULT NULL,
  `Vechile_cat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Vechile_no` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`Rollno`, `Name`, `Email`, `Phone`, `Course`, `Semester`, `Vechile_cat`, `Vechile_no`) VALUES
(201001, 'Anmol', 'Anmol@gmail.com', 976431982, 'BBA', '3rd Year', 'Four', 'HR01YZ6461'),
(201002, 'Yogita Verma', 'Yogita Verma@gmail.com', 976431983, 'BBA', '3rd Year', 'Four', 'HR01YZ6462'),
(201003, 'Abhishek Singh', 'Abhishek Singh@gmail.com', 976431984, 'BBA', '3rd Year', 'Four', 'HR01YZ6463'),
(201004, 'Abhishek Baurai', 'Abhishek Baurai@gmail.com', 976431985, 'BBA', '3rd Year', 'Two', 'HR01YZ6464'),
(201005, 'Kuldeep Sharma', 'Kuldeep Sharma@gmail.com', 976431986, 'BBA', '3rd Year', 'Two', 'HR01YZ6465'),
(201006, 'Neha', 'Neha@gmail.com', 976431987, 'BBA', '3rd Year', NULL, NULL),
(201007, 'Abhishek', 'Abhishek@gmail.com', 976431988, 'BBA', '3rd Year', NULL, NULL),
(201008, 'Kartik', 'Kartik@gmail.com', 976431989, 'BBA', '3rd Year', NULL, NULL),
(201009, 'Shanu Sharma', 'Shanu Sharma@gmail.com', 976431990, 'BBA', '3rd Year', NULL, NULL),
(201010, 'Shweta Rani', 'Shweta Rani@gmail.com', 976431991, 'BBA', '3rd Year', 'Two', 'HR01YZ6470'),
(203004, 'Shivangi Gupta', 'Chetan@gmail.com', 895623794, 'BCA', '3rd Year', 'Two', 'HR02AG1054'),
(203005, 'Ujjawal Singh', 'Ujjawal Singh@gmail.com', 895623795, 'BCA', '3rd Year', 'Two', 'HR02AG1055'),
(203007, 'Prateek Saini', 'Prateek Saini@gmail.com', 895623796, 'BCA', '3rd Year', 'Two', 'HR02AG1056'),
(203008, 'Yogesh Kumar', 'Yogesh Kumar@gmail.com', 895623797, 'BCA', '3rd Year', 'Two', 'HR02AG1057'),
(203009, 'Shubhangi Chauhan', 'Shubhangi Chauhan@gmail.com', 895623798, 'BCA', '3rd Year', 'Two', 'HR02AG1058'),
(203010, 'Vimal Kumar', 'Vimal Kumar@gmail.com', 895623799, 'BCA', '3rd Year', 'Two', 'HR02AG1059'),
(203011, 'Taranpreet Kaur', 'Taranpreet Kaur@gmail.com', 895623800, 'BCA', '3rd Year', 'Two', 'HR02AG1060'),
(203012, 'Rinki Rani', 'Rinki Rani@gmail.com', 895623801, 'BCA', '3rd Year', 'Two', 'HR02AG1061'),
(203013, 'Urmi Rani', 'Urmi Rani@gmail.com', 895623802, 'BCA', '3rd Year', 'Two', 'HR02AG1062'),
(203014, 'Rishita Rana', 'Rishita Rana@gmail.com', 895623803, 'BCA', '3rd Year', 'Two', 'HR02AG1063'),
(203015, 'Nikunj Bansal', 'Nikunj Bansal@gmail.com', 895623804, 'BCA', '3rd Year', 'Two', 'HR02AG1064'),
(203016, 'Kartik', 'Kartik@gmail.com', 895623805, 'BCA', '3rd Year', 'Two', 'HR02AG1065'),
(203017, 'Vanshita Sharma', 'Vanshita Sharma@gmail.com', 895623806, 'BCA', '3rd Year', 'Two', 'HR02AG1066'),
(203019, 'Abhishek Kumar', 'Abhishek Kumar@gmail.com', 895623807, 'BCA', '3rd Year', 'Two', 'HR02AG1067'),
(203020, 'Abhishek Parkash', 'Abhishek Parkash@gmail.com', 895623808, 'BCA', '3rd Year', 'Two', 'HR02AG1068'),
(203022, 'Hemant Dhiman', 'Hemant Dhiman@gmail.com', 895623809, 'BCA', '3rd Year', 'Four', 'HR02AG1069'),
(203024, 'Ramandeep Singh', 'Ramandeep Singh@gmail.com', 895623810, 'BCA', '3rd Year', 'Four', 'HR02AG1070'),
(203025, 'Vijay', 'Vijay@gmail.com', 895623811, 'BCA', '3rd Year', 'Four', 'HR02AG1071'),
(203026, 'Dipti Rani', 'Dipti Rani@gmail.com', 895623812, 'BCA', '3rd Year', 'Four', 'HR02AG1072'),
(203027, 'Sumit Kumar', 'Sumit Kumar@gmail.com', 895623813, 'BCA', '3rd Year', 'Four', 'HR02AG1073'),
(203028, 'Gourav Bansal', 'Gourav Bansal@gmail.com', 895623814, 'BCA', '3rd Year', 'Four', 'HR02AG1074'),
(203029, 'Anurag Vig', 'Anurag Vig@gmail.com', 895623815, 'BCA', '3rd Year', 'Four', 'HR02AG1075'),
(203031, 'Sarvjeet Kaur', 'Sarvjeet Kaur@gmail.com', 895623816, 'BCA', '3rd Year', 'Four', 'HR02AG1076'),
(203032, 'Vishal Kumar', 'Vishal Kumar@gmail.com', 895623817, 'BCA', '3rd Year', 'Two', 'HR02AG1077'),
(203033, 'Shashikant Kumar', 'Shashikant Kumar@gmail.com', 895623818, 'BCA', '3rd Year', 'Two', 'HR02AG1078'),
(203034, 'Ayush Sharma', 'Ayush Sharma@gmail.com', 895623819, 'BCA', '3rd Year', 'Two', 'HR02AG1079'),
(203036, 'Ranjeet Singh', 'Ranjeet Singh@gmail.com', 895623820, 'BCA', '3rd Year', 'Two', 'HR02AG1080'),
(203037, 'Priyanshu Sharma', 'Priyanshu Sharma@gmail.com', 895623821, 'BCA', '3rd Year', 'Two', 'HR02AG1081'),
(203039, 'Harsh ', 'Harsh @gmail.com', 895623822, 'BCA', '3rd Year', 'Two', 'HR02AG1082'),
(203040, 'Ravi Kumar', 'Ravi Kumar@gmail.com', 895623823, 'BCA', '3rd Year', 'Two', 'HR02AG1083'),
(203041, 'Kajal Parjapat', 'Kajal Parjapat@gmail.com', 895623824, 'BCA', '3rd Year', 'Two', 'HR02AG1084'),
(203043, 'Rajat', 'Rajat@gmail.com', 895623825, 'BCA', '3rd Year', 'Two', 'HR02AG1085'),
(203044, 'Tanisha Chauhan', 'Tanisha Chauhan@gmail.com', 895623826, 'BCA', '3rd Year', 'Two', 'HR02AG1086'),
(203045, 'Aashu ', 'Aashu @gmail.com', 895623827, 'BCA', '3rd Year', 'Two', 'HR02AG1087'),
(203046, 'Ayush Sharma', 'Ayush Sharma@gmail.com', 895623828, 'BCA', '3rd Year', 'Two', 'HR02AG1088'),
(203047, 'Abhay Chauhan', 'Abhay Chauhan@gmail.com', 895623829, 'BCA', '3rd Year', 'Two', 'HR02AG1089'),
(203048, 'Ishika Singhal', 'Ishika Singhal@gmail.com', 895623830, 'BCA', '3rd Year', NULL, NULL),
(203049, 'Shalini Pandey', 'Shalini Pandey@gmail.com', 895623831, 'BCA', '3rd Year', NULL, NULL),
(203050, 'Amandeep Singh', 'Amandeep Singh@gmail.com', 895623832, 'BCA', '3rd Year', NULL, NULL),
(203051, 'Ritu Rawal', 'Ritu Rawal@gmail.com', 895623833, 'BCA', '3rd Year', NULL, NULL),
(203052, 'Jatin Kumar', 'Jatin Kumar@gmail.com', 895623834, 'BCA', '3rd Year', NULL, NULL),
(203053, 'Sangram Singh', 'Sangram Singh@gmail.com', 895623835, 'BCA', '3rd Year', NULL, NULL),
(203054, 'Shubham Partap', 'Shubham Partap@gmail.com', 895623836, 'BCA', '3rd Year', NULL, NULL),
(203056, 'Himanshu Gupta', 'Himanshu Gupta@gmail.com', 895623837, 'BCA', '3rd Year', NULL, NULL),
(203058, 'Taranjeet Singh', 'Taranjeet Singh@gmail.com', 895623838, 'BCA', '3rd Year', NULL, NULL),
(203059, 'Parth Mittal', 'Parth Mittal@gmail.com', 895623839, 'BCA', '3rd Year', NULL, NULL),
(203060, 'Harsimran Singh', 'Harsimran Singh@gmail.com', 895623840, 'BCA', '3rd Year', NULL, NULL),
(203061, 'Arun Kumar', 'Arun Kumar@gmail.com', 895623841, 'BCA', '3rd Year', NULL, NULL),
(203062, 'Sumit Kumar', 'Sumit Kumar@gmail.com', 895623842, 'BCA', '3rd Year', NULL, NULL),
(203063, 'Praduman Kumar', 'Praduman Kumar@gmail.com', 895623843, 'BCA', '3rd Year', NULL, NULL),
(203064, 'Aman Sobti', 'Aman Sobti@gmail.com', 895623844, 'BCA', '3rd Year', NULL, NULL),
(203065, 'Shivam Kamboj', 'Shivam Kamboj@gmail.com', 895623845, 'BCA', '3rd Year', NULL, NULL),
(203066, 'Tarun Verma', 'Tarun Verma@gmail.com', 895623846, 'BCA', '3rd Year', NULL, NULL),
(203067, 'Tannu Rani', 'Tannu Rani@gmail.com', 895623847, 'BCA', '3rd Year', NULL, NULL),
(211001, 'Anjali', 'Anjali@gmail.com', 976431992, 'BBA', '2nd Year', 'Two', 'HR01YZ6471'),
(211002, 'Sheena', 'Sheena@gmail.com', 976431993, 'BBA', '2nd Year', 'Two', 'HR01YZ6472'),
(211003, 'Chetan', 'Chetan@gmail.com', 976431994, 'BBA', '2nd Year', 'Two', 'HR01YZ6473'),
(211004, 'Shivangi Gupta', 'Shivangi Gupta@gmail.com', 976431995, 'BBA', '2nd Year', 'Two', 'HR01YZ6474'),
(211005, 'Ujjawal Singh', 'Ujjawal Singh@gmail.com', 976431996, 'BBA', '2nd Year', NULL, NULL),
(211006, 'Prateek Saini', 'Prateek Saini@gmail.com', 976431997, 'BBA', '2nd Year', NULL, NULL),
(211007, 'Yogesh Kumar', 'Yogesh Kumar@gmail.com', 976431998, 'BBA', '2nd Year', NULL, NULL),
(211008, 'Shubhangi Chauhan', 'Shubhangi Chauhan@gmail.com', 976431999, 'BBA', '2nd Year', NULL, NULL),
(211009, 'Vimal Kumar', 'Vimal Kumar@gmail.com', 976432000, 'BBA', '2nd Year', 'Four', 'HR01YZ6479'),
(211010, 'Taranpreet Kaur', 'Taranpreet Kaur@gmail.com', 976432001, 'BBA', '2nd Year', 'Four', 'HR01YZ6480'),
(212001, 'Shivani', 'Shivani@gmail.com', 976431962, 'MBA', '2nd Year', 'Four', 'HR01YZ6441'),
(212002, 'Paras Sharma', 'Paras Sharma@gmail.com', 976431963, 'MBA', '2nd Year', 'Four', 'HR01YZ6442'),
(212003, 'Rinchu Verma', 'Rinchu Verma@gmail.com', 976431964, 'MBA', '2nd Year', 'Four', 'HR01YZ6443'),
(212004, 'Akash', 'Akash@gmail.com', 976431965, 'MBA', '2nd Year', 'Two', 'HR01YZ6444'),
(212005, 'Dharya Soni', 'Dharya Soni@gmail.com', 976431966, 'MBA', '2nd Year', 'Two', 'HR01YZ6445'),
(212006, 'Sarvjeet Kaur', 'Sarvjeet Kaur@gmail.com', 976431967, 'MBA', '2nd Year', 'Two', 'HR01YZ6446'),
(212007, 'Raj Rani', 'Raj Rani@gmail.com', 976431968, 'MBA', '2nd Year', 'Two', 'HR01YZ6447'),
(212008, 'Aarzoo', 'Aarzoo@gmail.com', 976431969, 'MBA', '2nd Year', NULL, NULL),
(212009, 'Vinay Kumar', 'Vinay Kumar@gmail.com', 976431970, 'MBA', '2nd Year', NULL, NULL),
(212010, 'Krishna Verma', 'Krishna Verma@gmail.com', 976431971, 'MBA', '2nd Year', NULL, NULL),
(212011, 'Lokesh Kumar', 'Lokesh Kumar@gmail.com', 976431972, 'MBA', '2nd Year', NULL, NULL),
(212012, 'Shivender Singh', 'Shivender Singh@gmail.com', 976431973, 'MBA', '2nd Year', NULL, NULL),
(212013, 'Aditya', 'Aditya@gmail.com', 976431974, 'MBA', '2nd Year', NULL, NULL),
(212014, 'Darishti', 'Darishti@gmail.com', 976431975, 'MBA', '2nd Year', 'Two', 'HR01YZ6454'),
(212015, 'Farukh Ali', 'Farukh Ali@gmail.com', 976431976, 'MBA', '2nd Year', 'Two', 'HR01YZ6455'),
(212016, 'Shiv Kumar Mehta', 'Shiv Kumar Mehta@gmail.com', 976431977, 'MBA', '2nd Year', 'Two', 'HR01YZ6456'),
(212017, 'Himanshi', 'Himanshi@gmail.com', 976431978, 'MBA', '2nd Year', 'Two', 'HR01YZ6457'),
(212018, 'Sourabh', 'Sourabh@gmail.com', 976431979, 'MBA', '2nd Year', 'Four', 'HR01YZ6458'),
(212019, 'Om Parkash', 'Om Parkash@gmail.com', 976431980, 'MBA', '2nd Year', 'Four', 'HR01YZ6459'),
(212020, 'Shivani', 'Shivani@gmail.com', 976431981, 'MBA', '2nd Year', 'Four', 'HR01YZ6460'),
(213001, 'Rajat', 'Rajat@gmail.com', 976431852, 'BCA', '2nd Year', 'Two', 'HR01YZ6341'),
(213002, 'Tanisha Chauhan', 'Tanisha Chauhan@gmail.com', 976431853, 'BCA', '2nd Year', 'Two', 'HR01YZ6342'),
(213003, 'Aashu ', 'Aashu @gmail.com', 976431854, 'BCA', '2nd Year', 'Two', 'HR01YZ6343'),
(213004, 'Ayush Sharma', 'Ayush Sharma@gmail.com', 976431855, 'BCA', '2nd Year', 'Four', 'HR01YZ6344'),
(213005, 'Abhay Chauhan', 'Abhay Chauhan@gmail.com', 976431856, 'BCA', '2nd Year', 'Four', 'HR01YZ6345'),
(213006, 'Ishika Singhal', 'Ishika Singhal@gmail.com', 976431857, 'BCA', '2nd Year', 'Four', 'HR01YZ6346'),
(213007, 'Shalini Pandey', 'Shalini Pandey@gmail.com', 976431858, 'BCA', '2nd Year', 'Four', 'HR01YZ6347'),
(213008, 'Amandeep Singh', 'Amandeep Singh@gmail.com', 976431859, 'BCA', '2nd Year', 'Two', 'HR01YZ6348'),
(213009, 'Ritu Rawal', 'Ritu Rawal@gmail.com', 976431860, 'BCA', '2nd Year', 'Two', 'HR01YZ6349'),
(213010, 'Jatin Kumar', 'Jatin Kumar@gmail.com', 976431861, 'BCA', '2nd Year', 'Two', 'HR01YZ6350'),
(213011, 'Sangram Singh', 'Sangram Singh@gmail.com', 976431862, 'BCA', '2nd Year', 'Two', 'HR01YZ6351'),
(213012, 'Shubham Partap', 'Shubham Partap@gmail.com', 976431863, 'BCA', '2nd Year', 'Two', 'HR01YZ6352'),
(213013, 'Himanshu Gupta', 'Himanshu Gupta@gmail.com', 976431864, 'BCA', '2nd Year', 'Two', 'HR01YZ6353'),
(213014, 'Taranjeet Singh', 'Taranjeet Singh@gmail.com', 976431865, 'BCA', '2nd Year', 'Two', 'HR01YZ6354'),
(213015, 'Parth Mittal', 'Parth Mittal@gmail.com', 976431866, 'BCA', '2nd Year', 'Two', 'HR01YZ6355'),
(213016, 'Harsimran Singh', 'Harsimran Singh@gmail.com', 976431867, 'BCA', '2nd Year', NULL, NULL),
(213017, 'Arun Kumar', 'Arun Kumar@gmail.com', 976431868, 'BCA', '2nd Year', NULL, NULL),
(213018, 'Sumit Kumar', 'Sumit Kumar@gmail.com', 976431869, 'BCA', '2nd Year', NULL, NULL),
(213019, 'Praduman Kumar', 'Praduman Kumar@gmail.com', 976431870, 'BCA', '2nd Year', NULL, NULL),
(213020, 'Aman Sobti', 'Aman Sobti@gmail.com', 976431871, 'BCA', '2nd Year', NULL, NULL),
(213021, 'Shivam Kamboj', 'Shivam Kamboj@gmail.com', 976431872, 'BCA', '2nd Year', 'Four', 'HR01YZ6356'),
(213022, 'Tarun Verma', 'Tarun Verma@gmail.com', 976431873, 'BCA', '2nd Year', 'Four', 'HR01YZ6357'),
(213023, 'Tannu Rani', 'Tannu Rani@gmail.com', 976431874, 'BCA', '2nd Year', 'Four', 'HR01YZ6358'),
(213024, 'Ramandeep Singh', 'Ramandeep Singh@gmail.com', 976431875, 'BCA', '2nd Year', 'Four', 'HR01YZ6359'),
(213025, 'Vijay', 'Vijay@gmail.com', 976431876, 'BCA', '2nd Year', 'Two', 'HR01YZ6360'),
(213026, 'Dipti Rani', 'Dipti Rani@gmail.com', 976431877, 'BCA', '2nd Year', 'Two', 'HR01YZ6361'),
(213027, 'Sumit Kumar', 'Sumit Kumar@gmail.com', 976431878, 'BCA', '2nd Year', 'Two', 'HR01YZ6362'),
(213028, 'Gourav Bansal', 'Gourav Bansal@gmail.com', 976431879, 'BCA', '2nd Year', 'Two', 'HR01YZ6363'),
(213029, 'Anurag Vig', 'Anurag Vig@gmail.com', 976431880, 'BCA', '2nd Year', 'Two', 'HR01YZ6364'),
(213030, 'Sarvjeet Kaur', 'Sarvjeet Kaur@gmail.com', 976431881, 'BCA', '2nd Year', 'Two', 'HR01YZ6365'),
(214001, 'Vipul Kumar', 'Vipul Kumar@gmail.com', 895623741, 'MCA', '2st Year', 'Two', 'HR02AG1001'),
(214002, 'Kawan Preet Kaur Batra', 'Kawan Preet Kaur Batra@gmail.com', 895623742, 'MCA', '2st Year', 'Two', 'HR02AG1002'),
(214004, 'Shubham Khapra', 'Shubham Khapra@gmail.com', 895623743, 'MCA', '2st Year', 'Two', 'HR02AG1003'),
(214005, 'Jatin Bhaal', 'Jatin Bhaal@gmail.com', 895623744, 'MCA', '2st Year', 'Two', 'HR02AG1004'),
(214006, 'Himanshu', 'Himanshu@gmail.com', 895623745, 'MCA', '2st Year', 'Two', 'HR02AG1005'),
(214007, 'Harshit', 'Harshit@gmail.com', 895623746, 'MCA', '2st Year', 'Two', 'HR02AG1006'),
(214008, 'Yash Prashar', 'Yash Prashar@gmail.com', 895623747, 'MCA', '2st Year', 'Two', 'HR02AG1007'),
(214009, 'Mehak', 'Mehak@gmail.com', 895623748, 'MCA', '2st Year', 'Two', 'HR02AG1008'),
(214011, 'Inderjeet Singh', 'Inderjeet Singh@gmail.com', 895623749, 'MCA', '2st Year', 'Two', 'HR02AG1009'),
(214012, 'Hanisha', 'Hanisha@gmail.com', 895623750, 'MCA', '2st Year', 'Two', 'HR02AG1010'),
(214013, 'Prachi', 'Prachi@gmail.com', 895623751, 'MCA', '2st Year', 'Two', 'HR02AG1011'),
(214014, 'Shivani', 'Shivani@gmail.com', 895623752, 'MCA', '2st Year', 'Two', 'HR02AG1012'),
(214015, 'Paras Sharma', 'Paras Sharma@gmail.com', 895623753, 'MCA', '2st Year', 'Two', 'HR02AG1013'),
(214017, 'Rinchu Verma', 'Rinchu Verma@gmail.com', 895623754, 'MCA', '2st Year', 'Two', 'HR02AG1014'),
(214018, 'Akash', 'Akash@gmail.com', 895623755, 'MCA', '2st Year', 'Two', 'HR02AG1015'),
(214019, 'Dharya Soni', 'Dharya Soni@gmail.com', 895623756, 'MCA', '2st Year', 'Two', 'HR02AG1016'),
(214020, 'Sarvjeet Kaur', 'Sarvjeet Kaur@gmail.com', 895623757, 'MCA', '2st Year', 'Two', 'HR02AG1017'),
(214021, 'Raj Rani', 'Raj Rani@gmail.com', 895623758, 'MCA', '2st Year', 'Two', 'HR02AG1018'),
(214022, 'Aarzoo', 'Aarzoo@gmail.com', 895623759, 'MCA', '2st Year', 'Two', 'HR02AG1019'),
(214023, 'Vinay Kumar', 'Vinay Kumar@gmail.com', 895623760, 'MCA', '2st Year', 'Two', 'HR02AG1020'),
(214024, 'Krishna Verma', 'Krishna Verma@gmail.com', 895623761, 'MCA', '2st Year', 'Two', 'HR02AG1021'),
(214025, 'Lokesh Kumar', 'Lokesh Kumar@gmail.com', 895623762, 'MCA', '2st Year', 'Two', 'HR02AG1022'),
(214026, 'Shivender Singh', 'Shivender Singh@gmail.com', 895623763, 'MCA', '2st Year', 'Two', 'HR02AG1023'),
(214028, 'Aditya', 'Aditya@gmail.com', 895623764, 'MCA', '2st Year', 'Two', 'HR02AG1024'),
(214029, 'Darishti', 'Darishti@gmail.com', 895623765, 'MCA', '2st Year', 'Two', 'HR02AG1025'),
(214030, 'Farukh Ali', 'Farukh Ali@gmail.com', 895623766, 'MCA', '2st Year', 'Four', 'HR02AG1026'),
(214031, 'Shiv Kumar Mehta', 'Shiv Kumar Mehta@gmail.com', 895623767, 'MCA', '2st Year', 'Four', 'HR02AG1027'),
(214032, 'Himanshi', 'Himanshi@gmail.com', 895623768, 'MCA', '2st Year', 'Four', 'HR02AG1028'),
(214033, 'Sourabh', 'Sourabh@gmail.com', 895623769, 'MCA', '2st Year', 'Four', 'HR02AG1029'),
(214034, 'Om Parkash', 'Om Parkash@gmail.com', 895623770, 'MCA', '2st Year', 'Four', 'HR02AG1030'),
(214035, 'Shivani', 'Shivani@gmail.com', 895623771, 'MCA', '2st Year', 'Four', 'HR02AG1031'),
(214036, 'Arvinder Kaur', 'Arvinder Kaur@gmail.com', 895623772, 'MCA', '2st Year', 'Four', 'HR02AG1032'),
(214037, 'Diksha', 'Diksha@gmail.com', 895623773, 'MCA', '2st Year', 'Two', 'HR02AG1033'),
(214038, 'Ankita', 'Ankita@gmail.com', 895623774, 'MCA', '2st Year', 'Two', 'HR02AG1034'),
(214039, 'Prince', 'Prince@gmail.com', 895623775, 'MCA', '2st Year', 'Two', 'HR02AG1035'),
(214040, 'Mansi Malik', 'Mansi Malik@gmail.com', 895623776, 'MCA', '2st Year', 'Two', 'HR02AG1036'),
(214041, 'Priyanka', 'Priyanka@gmail.com', 895623777, 'MCA', '2st Year', 'Two', 'HR02AG1037'),
(214043, 'Sahil', 'Sahil@gmail.com', 895623778, 'MCA', '2st Year', 'Two', 'HR02AG1038'),
(214044, 'Tanya', 'Tanya@gmail.com', 895623779, 'MCA', '2st Year', 'Two', 'HR02AG1039'),
(214045, 'Sourabh Rana', 'Sourabh Rana@gmail.com', 895623780, 'MCA', '2st Year', 'Two', 'HR02AG1040'),
(214046, 'Anmol', 'Anmol@gmail.com', 895623781, 'MCA', '2st Year', 'Two', 'HR02AG1041'),
(214047, 'Yogita Verma', 'Yogita Verma@gmail.com', 895623782, 'MCA', '2st Year', NULL, NULL),
(214048, 'Abhishek Singh', 'Abhishek Singh@gmail.com', 895623783, 'MCA', '2st Year', NULL, NULL),
(214049, 'Abhishek Baurai', 'Abhishek Baurai@gmail.com', 895623784, 'MCA', '2st Year', NULL, NULL),
(214050, 'Kuldeep Sharma', 'Kuldeep Sharma@gmail.com', 895623785, 'MCA', '2st Year', NULL, NULL),
(214051, 'Neha', 'Neha@gmail.com', 895623786, 'MCA', '2st Year', NULL, NULL),
(214052, 'Abhishek', 'Abhishek@gmail.com', 895623787, 'MCA', '2st Year', NULL, NULL),
(214053, 'Kartik', 'Kartik@gmail.com', 895623788, 'MCA', '2st Year', NULL, NULL),
(214054, 'Shanu Sharma', 'Shanu Sharma@gmail.com', 895623789, 'MCA', '2st Year', NULL, NULL),
(214055, 'Shweta Rani', 'Shweta Rani@gmail.com', 895623790, 'MCA', '2st Year', NULL, NULL),
(214057, 'Anjali', 'Anjali@gmail.com', 895623791, 'MCA', '2st Year', NULL, NULL),
(214058, 'Sheena', 'Sheena@gmail.com', 895623792, 'MCA', '2st Year', NULL, NULL),
(214059, 'Chetan', 'Chetan@gmail.com', 895623793, 'MCA', '2st Year', NULL, NULL),
(221001, 'Rinki Rani', 'Rinki Rani@gmail.com', 976432002, 'BBA', '1st Year', 'Four', 'HR01YZ6481'),
(221002, 'Urmi Rani', 'Urmi Rani@gmail.com', 976432003, 'BBA', '1st Year', 'Four', 'HR01YZ6482'),
(221003, 'Rishita Rana', 'Rishita Rana@gmail.com', 976432004, 'BBA', '1st Year', 'Four', 'HR01YZ6483'),
(221004, 'Nikunj Bansal', 'Nikunj Bansal@gmail.com', 976432005, 'BBA', '1st Year', 'Two', 'HR01YZ6484'),
(221005, 'Kartik', 'Kartik@gmail.com', 976432006, 'BBA', '1st Year', NULL, NULL),
(221006, 'Vanshita Sharma', 'Vanshita Sharma@gmail.com', 976432007, 'BBA', '1st Year', NULL, NULL),
(221007, 'Abhishek Kumar', 'Abhishek Kumar@gmail.com', 976432008, 'BBA', '1st Year', NULL, NULL),
(221008, 'Abhishek Parkash', 'Abhishek Parkash@gmail.com', 976432009, 'BBA', '1st Year', NULL, NULL),
(221009, 'Hemant Dhiman', 'Hemant Dhiman@gmail.com', 976432010, 'BBA', '1st Year', 'Two', 'HR01YZ6489'),
(221010, 'Ramandeep Singh', 'Ramandeep Singh@gmail.com', 976432011, 'BBA', '1st Year', 'Two', 'HR01YZ6490'),
(222001, 'Tanisha Chauhan', 'Tanisha Chauhan@gmail.com', 976431942, 'MBA', '1st Year', 'Four', 'HR01YZ6421'),
(222002, 'Aashu ', 'Aashu @gmail.com', 976431943, 'MBA', '1st Year', 'Four', 'HR01YZ6422'),
(222003, 'Ayush Sharma', 'Ayush Sharma@gmail.com', 976431944, 'MBA', '1st Year', 'Four', 'HR01YZ6423'),
(222004, 'Abhay Chauhan', 'Abhay Chauhan@gmail.com', 976431945, 'MBA', '1st Year', 'Four', 'HR01YZ6424'),
(222005, 'Ishika Singhal', 'Ishika Singhal@gmail.com', 976431946, 'MBA', '1st Year', 'Four', 'HR01YZ6425'),
(222006, 'Shalini Pandey', 'Shalini Pandey@gmail.com', 976431947, 'MBA', '1st Year', 'Two', 'HR01YZ6426'),
(222007, 'Amandeep Singh', 'Amandeep Singh@gmail.com', 976431948, 'MBA', '1st Year', 'Two', 'HR01YZ6427'),
(222008, 'Ritu Rawal', 'Ritu Rawal@gmail.com', 976431949, 'MBA', '1st Year', 'Two', 'HR01YZ6428'),
(222009, 'Jatin Kumar', 'Jatin Kumar@gmail.com', 976431950, 'MBA', '1st Year', 'Two', 'HR01YZ6429'),
(222010, 'Sangram Singh', 'Sangram Singh@gmail.com', 976431951, 'MBA', '1st Year', NULL, NULL),
(222011, 'Shubham Partap', 'Shubham Partap@gmail.com', 976431952, 'MBA', '1st Year', NULL, NULL),
(222012, 'Himanshu Gupta', 'Himanshu Gupta@gmail.com', 976431953, 'MBA', '1st Year', NULL, NULL),
(222013, 'Taranjeet Singh', 'Taranjeet Singh@gmail.com', 976431954, 'MBA', '1st Year', NULL, NULL),
(222014, 'Parth Mittal', 'Parth Mittal@gmail.com', 976431955, 'MBA', '1st Year', NULL, NULL),
(222015, 'Harsimran Singh', 'Harsimran Singh@gmail.com', 976431956, 'MBA', '1st Year', 'Two', 'HR01YZ6435'),
(222016, 'Arun Kumar', 'Arun Kumar@gmail.com', 976431957, 'MBA', '1st Year', 'Two', 'HR01YZ6436'),
(222017, 'Sumit Kumar', 'Sumit Kumar@gmail.com', 976431958, 'MBA', '1st Year', 'Two', 'HR01YZ6437'),
(222018, 'Praduman Kumar', 'Praduman Kumar@gmail.com', 976431959, 'MBA', '1st Year', 'Two', 'HR01YZ6438'),
(222019, 'Aman Sobti', 'Aman Sobti@gmail.com', 976431960, 'MBA', '1st Year', 'Four', 'HR01YZ6439'),
(222020, 'Shivam Kamboj', 'Shivam Kamboj@gmail.com', 976431961, 'MBA', '1st Year', 'Four', 'HR01YZ6440'),
(223001, 'Dharya Soni', 'Dharya Soni@gmail.com', 976431882, 'BCA', '1st Year', 'Four', 'HR01YZ6366'),
(223002, 'Sarvjeet Kaur', 'Sarvjeet Kaur@gmail.com', 976431883, 'BCA', '1st Year', 'Four', 'HR01YZ6367'),
(223003, 'Raj Rani', 'Raj Rani@gmail.com', 976431884, 'BCA', '1st Year', 'Four', 'HR01YZ6368'),
(223004, 'Aarzoo', 'Aarzoo@gmail.com', 976431885, 'BCA', '1st Year', 'Four', 'HR01YZ6369'),
(223005, 'Vinay Kumar', 'Vinay Kumar@gmail.com', 976431886, 'BCA', '1st Year', 'Four', 'HR01YZ6370'),
(223006, 'Krishna Verma', 'Krishna Verma@gmail.com', 976431887, 'BCA', '1st Year', 'Two', 'HR01YZ6371'),
(223007, 'Lokesh Kumar', 'Lokesh Kumar@gmail.com', 976431888, 'BCA', '1st Year', 'Two', 'HR01YZ6372'),
(223008, 'Shivender Singh', 'Shivender Singh@gmail.com', 976431889, 'BCA', '1st Year', 'Two', 'HR01YZ6373'),
(223009, 'Aditya', 'Aditya@gmail.com', 976431890, 'BCA', '1st Year', 'Two', 'HR01YZ6374'),
(223010, 'Darishti', 'Darishti@gmail.com', 976431891, 'BCA', '1st Year', 'Two', 'HR01YZ6375'),
(223011, 'Farukh Ali', 'Farukh Ali@gmail.com', 976431892, 'BCA', '1st Year', 'Two', 'HR01YZ6376'),
(223012, 'Shiv Kumar Mehta', 'Shiv Kumar Mehta@gmail.com', 976431893, 'BCA', '1st Year', 'Two', 'HR01YZ6377'),
(223013, 'Himanshi', 'Himanshi@gmail.com', 976431894, 'BCA', '1st Year', NULL, NULL),
(223014, 'Sourabh', 'Sourabh@gmail.com', 976431895, 'BCA', '1st Year', NULL, NULL),
(223015, 'Om Parkash', 'Om Parkash@gmail.com', 976431896, 'BCA', '1st Year', NULL, NULL),
(223016, 'Shivani', 'Shivani@gmail.com', 976431897, 'BCA', '1st Year', NULL, NULL),
(223017, 'Arvinder Kaur', 'Arvinder Kaur@gmail.com', 976431898, 'BCA', '1st Year', NULL, NULL),
(223018, 'Diksha', 'Diksha@gmail.com', 976431899, 'BCA', '1st Year', 'Two', 'HR01YZ6378'),
(223019, 'Ankita', 'Ankita@gmail.com', 976431900, 'BCA', '1st Year', 'Two', 'HR01YZ6379'),
(223020, 'Prince', 'Prince@gmail.com', 976431901, 'BCA', '1st Year', 'Two', 'HR01YZ6380'),
(223021, 'Mansi Malik', 'Mansi Malik@gmail.com', 976431902, 'BCA', '1st Year', 'Two', 'HR01YZ6381'),
(223022, 'Priyanka', 'Priyanka@gmail.com', 976431903, 'BCA', '1st Year', 'Two', 'HR01YZ6382'),
(223023, 'Sahil', 'Sahil@gmail.com', 976431904, 'BCA', '1st Year', 'Two', 'HR01YZ6383'),
(223024, 'Tanya', 'Tanya@gmail.com', 976431905, 'BCA', '1st Year', 'Two', 'HR01YZ6384'),
(223025, 'Sourabh Rana', 'Sourabh Rana@gmail.com', 976431906, 'BCA', '1st Year', 'Two', 'HR01YZ6385'),
(223026, 'Anmol', 'Anmol@gmail.com', 976431907, 'BCA', '1st Year', 'Two', 'HR01YZ6386'),
(223027, 'Yogita Verma', 'Yogita Verma@gmail.com', 976431908, 'BCA', '1st Year', 'Two', 'HR01YZ6387'),
(223028, 'Abhishek Singh', 'Abhishek Singh@gmail.com', 976431909, 'BCA', '1st Year', 'Four', 'HR01YZ6388'),
(223029, 'Abhishek Baurai', 'Abhishek Baurai@gmail.com', 976431910, 'BCA', '1st Year', 'Four', 'HR01YZ6389'),
(223030, 'Kuldeep Sharma', 'Kuldeep Sharma@gmail.com', 976431911, 'BCA', '1st Year', 'Four', 'HR01YZ6390'),
(224001, 'Yash Prashar', 'Yash Prashar@gmail.com', 976431912, 'MCA', '1st Year', 'Four', 'HR01YZ6391'),
(224002, 'Mehak', 'Mehak@gmail.com', 976431913, 'MCA', '1st Year', 'Four', 'HR01YZ6392'),
(224003, 'Inderjeet Singh', 'Inderjeet Singh@gmail.com', 976431914, 'MCA', '1st Year', 'Four', 'HR01YZ6393'),
(224004, 'Hanisha', 'Hanisha@gmail.com', 976431915, 'MCA', '1st Year', 'Four', 'HR01YZ6394'),
(224005, 'Prachi', 'Prachi@gmail.com', 976431916, 'MCA', '1st Year', 'Four', 'HR01YZ6395'),
(224006, 'Shivani', 'Shivani@gmail.com', 976431917, 'MCA', '1st Year', 'Four', 'HR01YZ6396'),
(224007, 'Paras Sharma', 'Paras Sharma@gmail.com', 976431918, 'MCA', '1st Year', 'Two', 'HR01YZ6397'),
(224008, 'Rinchu Verma', 'Rinchu Verma@gmail.com', 976431919, 'MCA', '1st Year', 'Two', 'HR01YZ6398'),
(224009, 'Akash', 'Akash@gmail.com', 976431920, 'MCA', '1st Year', 'Two', 'HR01YZ6399'),
(224010, 'Dharya Soni', 'Dharya Soni@gmail.com', 976431921, 'MCA', '1st Year', 'Two', 'HR01YZ6400'),
(224011, 'Sarvjeet Kaur', 'Sarvjeet Kaur@gmail.com', 976431922, 'MCA', '1st Year', 'Two', 'HR01YZ6401'),
(224012, 'Raj Rani', 'Raj Rani@gmail.com', 976431923, 'MCA', '1st Year', 'Two', 'HR01YZ6402'),
(224013, 'Aarzoo', 'Aarzoo@gmail.com', 976431924, 'MCA', '1st Year', 'Two', 'HR01YZ6403'),
(224014, 'Vinay Kumar', 'Vinay Kumar@gmail.com', 976431925, 'MCA', '1st Year', 'Two', 'HR01YZ6404'),
(224015, 'Krishna Verma', 'Krishna Verma@gmail.com', 976431926, 'MCA', '1st Year', NULL, NULL),
(224016, 'Lokesh Kumar', 'Lokesh Kumar@gmail.com', 976431927, 'MCA', '1st Year', NULL, NULL),
(224017, 'Shivender Singh', 'Shivender Singh@gmail.com', 976431928, 'MCA', '1st Year', NULL, NULL),
(224018, 'Aditya', 'Aditya@gmail.com', 976431929, 'MCA', '1st Year', NULL, NULL),
(224019, 'Darishti', 'Darishti@gmail.com', 976431930, 'MCA', '1st Year', NULL, NULL),
(224020, 'Farukh Ali', 'Farukh Ali@gmail.com', 976431931, 'MCA', '1st Year', NULL, NULL),
(224021, 'Shiv Kumar Mehta', 'Shiv Kumar Mehta@gmail.com', 976431932, 'MCA', '1st Year', 'Two', 'HR01YZ6411'),
(224022, 'Himanshi', 'Himanshi@gmail.com', 976431933, 'MCA', '1st Year', 'Two', 'HR01YZ6412'),
(224023, 'Sourabh', 'Sourabh@gmail.com', 976431934, 'MCA', '1st Year', 'Two', 'HR01YZ6413'),
(224024, 'Om Parkash', 'Om Parkash@gmail.com', 976431935, 'MCA', '1st Year', 'Two', 'HR01YZ6414'),
(224025, 'Shivani', 'Shivani@gmail.com', 976431936, 'MCA', '1st Year', 'Four', 'HR01YZ6415'),
(224026, 'Arvinder Kaur', 'Arvinder Kaur@gmail.com', 976431937, 'MCA', '1st Year', 'Four', 'HR01YZ6416'),
(224027, 'Diksha', 'Diksha@gmail.com', 976431938, 'MCA', '1st Year', 'Four', 'HR01YZ6417'),
(224028, 'Ankita', 'Ankita@gmail.com', 976431939, 'MCA', '1st Year', 'Four', 'HR01YZ6418'),
(224029, 'Prince', 'Prince@gmail.com', 976431940, 'MCA', '1st Year', 'Four', 'HR01YZ6419'),
(224030, 'Mansi Malik', 'Mansi Malik@gmail.com', 976431941, 'MCA', '1st Year', 'Four', 'HR01YZ6420');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `Id` int NOT NULL,
  `Name` varchar(155) DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `Phone` int DEFAULT NULL,
  `Vechile_type` varchar(100) DEFAULT NULL,
  `Vehile_No` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`Id`, `Name`, `Department`, `Phone`, `Vechile_type`, `Vehile_No`) VALUES
(1, 'Mr. Kamal Gupta', 'CS', 976431852, 'Two', 'HR02AS4556'),
(2, 'Ms. Jyoti Bala', 'CS', 976431853, 'Two', 'HR02AS4557'),
(3, 'Mr. Nitesh Saini', 'CS', 976431854, 'Two', 'HR02AS4558'),
(4, 'Ms. Swati Verma', 'CS', 976431855, 'Two', 'HR02AS4559'),
(5, 'Mr. Amit Kapoor', 'CS', 976431856, 'Two', 'HR02AS4560'),
(6, 'Ms. Harpreet Kaur', 'CS', 976431857, 'Two', 'HR02AS4561'),
(7, 'Ms. Vinty Dhiman', 'CS', 976431858, 'Two', 'HR02AS4562'),
(8, 'Ms. Meenakshi Sharma', 'CS', 976431859, 'Two', 'HR02AS4563');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token`
--

CREATE TABLE `tbl_token` (
  `Id` int NOT NULL,
  `Token_No` int NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(100) NOT NULL,
  `Vechile_No` varchar(155) NOT NULL,
  `Customer_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_token`
--

INSERT INTO `tbl_token` (`Id`, `Token_No`, `create_time`, `Status`, `Vechile_No`, `Customer_ID`) VALUES
(1, 1, '2022-09-11 18:10:55', 'IN', 'HR01YZ6470', 201010),
(2, 2, '2022-09-10 18:10:55', 'IN', 'HR02AG1001', 214001),
(3, 3, '2022-09-10 08:10:55', 'IN', 'HR02AG1002', 214002),
(4, 3, '2022-09-10 09:20:55', 'OUT', 'HR02AG1002', 214002),
(5, 4, '2022-09-11 18:10:55', 'IN', 'HR02AG1003', 214004),
(6, 5, '2022-09-11 18:20:55', 'IN', 'HR02AG1004', 214005),
(7, 6, '2022-09-11 18:20:55', 'IN', 'HR02AG1005', 214006),
(8, 7, '2022-09-11 18:20:55', 'IN', 'HR02AG1006', 214007),
(9, 8, '2022-09-11 18:10:55', 'IN', 'HR02AG1007', 214008),
(10, 9, '2022-09-11 18:20:55', 'IN', 'HR02AG1008', 214009),
(11, 10, '2022-09-11 18:10:55', 'IN', 'HR02AG1009', 214011),
(12, 11, '2022-09-11 18:10:55', 'IN', 'HR02AG1010', 214012),
(13, 12, '2022-09-11 18:10:55', 'IN', 'HR02AG1011', 214013),
(14, 13, '2022-09-11 18:10:55', 'IN', 'HR02AG1012', 214014),
(15, 14, '2022-09-11 18:20:55', 'IN', 'HR02AG1013', 214015),
(16, 15, '2022-09-11 18:20:55', 'IN', 'HR02AG1014', 214017),
(17, 16, '2022-09-11 18:20:55', 'IN', 'HR02AG1060', 203011),
(18, 17, '2022-09-11 18:10:55', 'IN', 'HR02AG1061', 203012),
(19, 18, '2022-09-11 18:20:55', 'IN', 'HR02AG1062', 203013),
(20, 19, '2022-09-11 18:10:55', 'IN', 'HR02AG1063', 203014),
(21, 20, '2022-09-11 18:10:55', 'IN', 'HR02AG1064', 203015),
(22, 21, '2022-09-11 18:10:55', 'IN', 'HR02AG1065', 203016),
(23, 22, '2022-09-11 18:10:55', 'IN', 'HR02AG1066', 203017),
(24, 23, '2022-09-11 18:20:55', 'IN', 'HR02AG1067', 203019),
(25, 24, '2022-09-11 18:20:55', 'IN', 'HR02AG1068', 203020),
(26, 25, '2022-09-11 18:20:55', 'IN', 'HR02AG1069', 203022),
(27, 26, '2022-09-11 18:10:55', 'IN', 'HR01YZ6347', 213007),
(28, 27, '2022-09-11 18:20:55', 'IN', 'HR01YZ6348', 213008),
(29, 28, '2022-09-11 18:10:55', 'IN', 'HR01YZ6349', 213009),
(30, 29, '2022-09-11 18:10:55', 'IN', 'HR01YZ6349', 213009),
(31, 30, '2022-09-11 18:10:55', 'IN', 'HR01YZ6350', 213010),
(32, 31, '2022-09-11 18:10:55', 'IN', 'HR01YZ6351', 213011),
(33, 32, '2022-09-11 18:20:55', 'IN', 'HR01YZ6352', 213012),
(34, 33, '2022-09-11 18:20:55', 'IN', 'HR01YZ6353', 213013),
(35, 34, '2022-09-11 18:20:55', 'IN', 'HR01YZ6354', 213014),
(36, 35, '2022-09-11 18:10:55', 'IN', 'HR01YZ6368', 223003),
(37, 36, '2022-09-11 18:20:55', 'IN', 'HR01YZ6369', 223004),
(38, 37, '2022-09-11 18:10:55', 'IN', 'HR01YZ6370', 223005),
(39, 38, '2022-09-11 18:10:55', 'IN', 'HR01YZ6371', 223006),
(40, 39, '2022-09-11 18:10:55', 'IN', 'HR01YZ6372', 223007),
(41, 40, '2022-09-11 18:10:55', 'IN', 'HR01YZ6373', 223008),
(42, 41, '2022-09-11 18:20:55', 'IN', 'HR01YZ6374', 223009),
(43, 42, '2022-09-11 18:20:55', 'IN', 'HR01YZ6375', 223010),
(44, 43, '2022-09-11 18:20:55', 'IN', 'HR01YZ6391', 224001),
(45, 44, '2022-09-11 18:10:55', 'IN', 'HR01YZ6392', 224002),
(46, 45, '2022-09-11 18:20:55', 'IN', 'HR01YZ6393', 224003),
(47, 46, '2022-09-11 18:10:55', 'IN', 'HR01YZ6394', 224004),
(48, 47, '2022-09-11 18:10:55', 'IN', 'HR01YZ6395', 224005),
(49, 48, '2022-09-11 18:10:55', 'IN', 'HR01YZ6396', 224006),
(50, 49, '2022-09-11 18:10:55', 'IN', 'HR01YZ6397', 224007),
(51, 50, '2022-09-11 18:20:55', 'IN', 'HR01YZ6398', 224008),
(52, 51, '2022-09-11 18:20:55', 'IN', 'HR01YZ6399', 224009),
(53, 52, '2022-09-11 18:20:55', 'IN', 'HR01YZ6400', 224010),
(54, 53, '2022-09-11 18:10:55', 'IN', 'HR01YZ6423', 222003),
(55, 54, '2022-09-11 18:20:55', 'IN', 'HR01YZ6424', 222004),
(56, 55, '2022-09-11 18:10:55', 'IN', 'HR01YZ6425', 222005),
(57, 56, '2022-09-11 18:10:55', 'IN', 'HR01YZ6426', 222006),
(58, 57, '2022-09-11 18:10:55', 'IN', 'HR01YZ6427', 222007),
(59, 58, '2022-09-11 18:10:55', 'IN', 'HR01YZ6428', 222008),
(60, 59, '2022-09-11 18:20:55', 'IN', 'HR01YZ6429', 222009),
(61, 60, '2022-09-11 18:20:55', 'IN', 'HR01YZ6442', 212002),
(62, 61, '2022-09-11 18:20:55', 'IN', 'HR01YZ6443', 212003),
(63, 62, '2022-09-11 18:10:55', 'IN', 'HR01YZ6444', 212004),
(64, 63, '2022-09-11 18:20:55', 'IN', 'HR01YZ6445', 212005),
(65, 64, '2022-09-11 18:10:55', 'IN', 'HR01YZ6446', 212006),
(66, 65, '2022-09-11 18:10:55', 'IN', 'HR01YZ6462', 201002),
(67, 66, '2022-09-11 18:10:55', 'IN', 'HR01YZ6463', 201003),
(68, 67, '2022-09-11 18:10:55', 'IN', 'HR01YZ6464', 201004),
(69, 68, '2022-09-11 18:20:55', 'IN', 'HR01YZ6465', 201005),
(70, 69, '2022-09-11 18:20:55', 'IN', 'HR01YZ6470', 201010),
(71, 70, '2022-09-11 18:20:55', 'IN', 'HR01YZ6471', 211001),
(72, 71, '2022-09-11 18:10:55', 'IN', 'HR01YZ6472', 211002),
(73, 72, '2022-09-11 18:20:55', 'IN', 'HR01YZ6473', 211003),
(74, 73, '2022-09-11 18:10:55', 'IN', 'HR01YZ6474', 211004),
(75, 74, '2022-09-11 18:10:55', 'IN', 'HR01YZ6481', 221001),
(76, 75, '2022-09-11 18:10:55', 'IN', 'HR01YZ6482', 221002),
(77, 76, '2022-09-11 18:10:55', 'IN', 'HR01YZ6483', 221003),
(78, 77, '2022-09-11 18:20:55', 'IN', 'HR01YZ6484', 221004);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_Guest`
--
ALTER TABLE `tbl_Guest`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`Rollno`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_token`
--
ALTER TABLE `tbl_token`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_Guest`
--
ALTER TABLE `tbl_Guest`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_token`
--
ALTER TABLE `tbl_token`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
