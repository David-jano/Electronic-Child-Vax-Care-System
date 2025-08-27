-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 22, 2023 at 02:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `byumba_hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `ID` int(11) NOT NULL,
  `announces` varchar(255) NOT NULL,
  `dates` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`ID`, `announces`, `dates`) VALUES
(12, 'Hello everyone, today there is a meeting at 6h00 at main hall. regards', '2023-10-28 11:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `bcg`
--

CREATE TABLE `bcg` (
  `Batchno` int(11) NOT NULL,
  `Bcg_status` varchar(11) NOT NULL,
  `Bcg_height` float NOT NULL,
  `Bcg_weight` float NOT NULL,
  `Bcg_age` int(4) NOT NULL,
  `Bcg_schedule` varchar(25) NOT NULL,
  `Bcg_date` date NOT NULL,
  `Bcg_impact` varchar(11) NOT NULL,
  `Bcg_hepatitis_case` varchar(5) NOT NULL,
  `Bcg_sms` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bcg`
--

INSERT INTO `bcg` (`Batchno`, `Bcg_status`, `Bcg_height`, `Bcg_weight`, `Bcg_age`, `Bcg_schedule`, `Bcg_date`, `Bcg_impact`, `Bcg_hepatitis_case`, `Bcg_sms`) VALUES
(673624692, 'Yes', 46, 1, 0, 'At Birth', '2023-11-20', 'No', 'No', '2023-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `ID` varchar(10) NOT NULL,
  `NAMES` varchar(50) NOT NULL,
  `AGE` int(3) NOT NULL,
  `QUALIFIATION` text NOT NULL,
  `Martial_Status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`ID`, `NAMES`, `AGE`, `QUALIFIATION`, `Martial_Status`) VALUES
('BH001', 'MUKAMANA Esther', 48, 'A0 in Pediatric Cardiology', 'Married'),
('BH002', 'NSENGIMANA Lambert', 25, 'Masters in Pathology', 'Single'),
('BH008', 'Mukamana Selaphine', 35, 'A0 in Pediology', 'Married'),
('BH020', 'Uwase Germaine', 45, 'A0 in Pediology', 'Married'),
('BHP001', 'MUGABO Malthus', 35, 'A0 in ICT', 'Married'),
('BHP002', 'ISHIMWE Noela', 29, 'A0 in ICT', 'single');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL,
  `filetype` varchar(100) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `filename`, `filesize`, `filetype`, `upload_date`) VALUES
(20, 'attachment_6.pdf', 673742, 'application/pdf', '2023-10-29 15:40:23'),
(21, 'ChildVax.pdf', 2266397, 'application/pdf', '2023-10-29 15:42:12'),
(22, 'RwandaComprehensive.pdf', 418818, 'application/pdf', '2023-10-29 15:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `polio`
--

CREATE TABLE `polio` (
  `Batchno` int(11) NOT NULL DEFAULT 0,
  `Schedule` varchar(25) NOT NULL DEFAULT '',
  `Status` varchar(5) NOT NULL DEFAULT '0',
  `Height` float DEFAULT 0,
  `Weight` float DEFAULT 0,
  `Dates` date DEFAULT NULL,
  `Sign` varchar(5) DEFAULT '0',
  `Schedule2` varchar(25) DEFAULT NULL,
  `Status2` varchar(5) DEFAULT NULL,
  `Height2` float DEFAULT NULL,
  `Weight2` float DEFAULT 0,
  `Date2` date DEFAULT NULL,
  `Sign2` varchar(5) NOT NULL DEFAULT '0',
  `Schedule3` varchar(25) NOT NULL DEFAULT '',
  `Status3` varchar(11) NOT NULL DEFAULT '0',
  `Height3` float DEFAULT 0,
  `Weight3` float DEFAULT 0,
  `Date3` date NOT NULL,
  `Sign3` varchar(11) NOT NULL DEFAULT '0',
  `Schedule4` varchar(25) NOT NULL DEFAULT '',
  `Status4` varchar(11) NOT NULL DEFAULT '0',
  `Height4` float DEFAULT 0,
  `Weight4` float DEFAULT 0,
  `Date4` date NOT NULL,
  `Sign4` varchar(11) NOT NULL DEFAULT '0',
  `Sms` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `polio`
--

INSERT INTO `polio` (`Batchno`, `Schedule`, `Status`, `Height`, `Weight`, `Dates`, `Sign`, `Schedule2`, `Status2`, `Height2`, `Weight2`, `Date2`, `Sign2`, `Schedule3`, `Status3`, `Height3`, `Weight3`, `Date3`, `Sign3`, `Schedule4`, `Status4`, `Height4`, `Weight4`, `Date4`, `Sign4`, `Sms`) VALUES
(673624692, 'At Birth', 'Yes', 45.5, 2, '2023-11-20', 'No', '1.5 Months', 'No', 0, 0, '0000-00-00', 'No', '2.5 Months', 'No', 0, 0, '0000-00-00', 'No', '3.5 Months', 'No', 0, 0, '0000-00-00', 'No', '2024-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `smscheck`
--

CREATE TABLE `smscheck` (
  `id` int(11) NOT NULL,
  `batchno` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smscheck`
--

INSERT INTO `smscheck` (`id`, `batchno`, `date`, `type`) VALUES
(1, 673624692, '2023-11-21', 'Igituntu'),
(2, 673624692, '2023-11-20', 'Igituntu'),
(3, 673624692, '2023-11-20', 'Imbasa'),
(4, 673624692, '2023-11-21', 'Imbasa'),
(5, 673624692, '2023-11-22', 'Igituntu'),
(6, 673624692, '2023-11-22', 'Imbasa');

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE `trash` (
  `Batchno` int(11) NOT NULL,
  `Child_names` varchar(25) NOT NULL,
  `Dob` date NOT NULL,
  `Sex` varchar(25) NOT NULL,
  `Parent_contact` varchar(25) NOT NULL,
  `Bcg_status` varchar(25) DEFAULT NULL,
  `Bcg_date` date NOT NULL DEFAULT '0000-00-00',
  `Polio1_status` varchar(25) DEFAULT NULL,
  `Polio1_date` date DEFAULT '0000-00-00',
  `Polio2_status` varchar(25) DEFAULT NULL,
  `Polio2_date` date NOT NULL DEFAULT '0000-00-00',
  `Polio3_status` varchar(25) DEFAULT NULL,
  `Polio3_date` date NOT NULL DEFAULT '0000-00-00',
  `Polio4_status` varchar(25) DEFAULT NULL,
  `Polio4_date` date NOT NULL DEFAULT '0000-00-00',
  `Reason` varchar(25) NOT NULL,
  `deletion_date` varchar(10) DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` varchar(10) NOT NULL,
  `Username` text NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Username`, `Password`, `Role`) VALUES
('BH008', 'David', '$2y$10$fxgrBKXzZ8y7gJf7E6j8cusqKyMSj.n5ZOMJgtHPwj2wJ5VTl8ZuK', 'Pediatrician'),
('BH001', 'Mutware Theoneste', '$2y$10$pKXYAueVL75FI1fvuZw5DuBwTd9m/Ef5m96fwpSQmRVoDp8w9V6.O', 'Pediatrician'),
('BHP001', 'Malthus', '$2y$10$WI6oiG5gix15p4N5B4p3be1E5k5bPqFfjeA.XYYzYxWbz4QNPTww.', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_data`
--

CREATE TABLE `vaccination_data` (
  `Child_names` varchar(25) NOT NULL,
  `Dob` date NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `Father_name` varchar(25) NOT NULL,
  `Father_id` varchar(16) NOT NULL,
  `Father_phone` varchar(25) NOT NULL,
  `Mother_name` varchar(25) NOT NULL,
  `Mother_id` varchar(16) NOT NULL,
  `Mother_phone` varchar(25) NOT NULL,
  `Province` varchar(25) NOT NULL,
  `District` varchar(25) NOT NULL,
  `Sector` varchar(25) NOT NULL,
  `Cell` varchar(25) NOT NULL,
  `Village` varchar(25) NOT NULL,
  `Care_taker` varchar(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Twins_or_more` varchar(5) NOT NULL,
  `Weight_at_birth` int(11) NOT NULL,
  `Height_at_birth` int(11) NOT NULL,
  `Batchno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vaccination_data`
--

INSERT INTO `vaccination_data` (`Child_names`, `Dob`, `Sex`, `Father_name`, `Father_id`, `Father_phone`, `Mother_name`, `Mother_id`, `Mother_phone`, `Province`, `District`, `Sector`, `Cell`, `Village`, `Care_taker`, `email`, `Twins_or_more`, `Weight_at_birth`, `Height_at_birth`, `Batchno`) VALUES
('NSENGIMANA Lambert', '2022-10-20', 'Male', 'NSENGIMANA Gervais', '1965008409864218', '784988283', 'YAMPIRIYE Cecile', '1978009209864507', '788788944', 'Nothern', 'Gicumbi', 'Byumba', 'Gihembe', 'Gitaba', 'Yes', '27856', 'No', 1, 46, 673624692);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bcg`
--
ALTER TABLE `bcg`
  ADD KEY `bcg` (`Batchno`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polio`
--
ALTER TABLE `polio`
  ADD KEY `polio` (`Batchno`);

--
-- Indexes for table `smscheck`
--
ALTER TABLE `smscheck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Password`),
  ADD KEY `users` (`ID`);

--
-- Indexes for table `vaccination_data`
--
ALTER TABLE `vaccination_data`
  ADD PRIMARY KEY (`Batchno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `smscheck`
--
ALTER TABLE `smscheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bcg`
--
ALTER TABLE `bcg`
  ADD CONSTRAINT `bcg` FOREIGN KEY (`Batchno`) REFERENCES `vaccination_data` (`Batchno`);

--
-- Constraints for table `polio`
--
ALTER TABLE `polio`
  ADD CONSTRAINT `polio` FOREIGN KEY (`Batchno`) REFERENCES `vaccination_data` (`Batchno`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users` FOREIGN KEY (`ID`) REFERENCES `employees` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
