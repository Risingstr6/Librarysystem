-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 04:58 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Password`) VALUES
('IIT2021261', 'JEEMAIN');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Book_Id` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Author` varchar(20) NOT NULL,
  `ISSUE_STATUS` tinyint(1) NOT NULL DEFAULT 0,
  `Student_Id` varchar(20) DEFAULT NULL,
  `Due_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_Id`, `Name`, `Author`, `ISSUE_STATUS`, `Student_Id`, `Due_Date`) VALUES
('ISBN001', 'Dharma', 'Amish Tripathi', 1, 'IIB2021038', '2023-02-18'),
('ISBN002', 'Steve Jobs', 'Walter Isaacson', 1, 'IIB2021038', '2023-02-10'),
('ISBN003', 'Zero To One', 'Peter Thiel', 0, NULL, NULL),
('ISBN004', 'Rich dad Poor Dad', 'Robert Kiyosaki', 0, NULL, NULL),
('ISBN005', 'Ulysses', 'James Joyce', 1, 'IIT2021142', '2023-03-09'),
('ISBN006', 'TheInvisibleMan', 'H.G. Wells', 0, NULL, NULL),
('ISBN121', 'Black Beauty', 'Anna Sewell', 1, 'IIT2021223', '2023-02-23'),
('ISBN261', 'The Lost World', 'Arthur Conan Doyle', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserId` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `NoOfBooks` int(11) NOT NULL DEFAULT 0,
  `Fine` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `Password`, `NoOfBooks`, `Fine`) VALUES
('IIB2021038', 'SkSahil', 2, 0),
('IIT2021142', '1234', 1, 0),
('IIT2021220', 'HemantKMishra', 0, 0),
('IIT2021223', 'Sarthak', 1, 0),
('IIT2021505', 'RhythmJain', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Book_Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
