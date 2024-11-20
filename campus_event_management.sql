-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 06:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campus_event_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_info`
--

CREATE TABLE `account_info` (
  `Id_account` int(100) NOT NULL,
  `contact_id` int(100) NOT NULL,
  `User_Name` varchar(60) NOT NULL,
  `User_Password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_info`
--

INSERT INTO `account_info` (`Id_account`, `contact_id`, `User_Name`, `User_Password`) VALUES
(1, 1, 'NeonKidGamer3000', '1234'),
(2, 2, 'WilmsNegro', 'wilms'),
(3, 3, 'WilmsNegro', '12345'),
(4, 4, 'WilmsNegro', '12345'),
(5, 5, 'WilmsNegro', '12345'),
(6, 6, 'WilmsNegro', 'wilms'),
(7, 7, 'WilmsNegro', 'haws'),
(8, 8, 'sadvf', '11111'),
(9, 9, 'WilmsNegro', '454545'),
(10, 10, 'WilmsNegro', '22222'),
(11, 11, 'WilmsNegro', '122333'),
(12, 12, 'WilmsNegro', '11111'),
(13, 13, 'hatdog', '1234'),
(14, 14, 'hatdog', '12345'),
(15, 15, 'hatdog', '1223'),
(16, 16, 'hatdog', 'wilms12345'),
(17, 17, 'hatdog', '22222'),
(18, 18, 'hatdog', '12345'),
(19, 19, 'hatdog', 'haws'),
(20, 20, 'hatdog', '12345'),
(21, 21, 'hatdog', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `address_info`
--

CREATE TABLE `address_info` (
  `Id_address` int(100) NOT NULL,
  `Province` varchar(225) NOT NULL,
  `City_Municipality` varchar(225) NOT NULL,
  `Barangay` varchar(225) NOT NULL,
  `Zip_Code` smallint(10) NOT NULL,
  `House_Address` varchar(225) NOT NULL,
  `Street` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address_info`
--

INSERT INTO `address_info` (`Id_address`, `Province`, `City_Municipality`, `Barangay`, `Zip_Code`, `House_Address`, `Street`) VALUES
(1, 'Manila', 'Metro Manila', 'Tandang Sora', 1116, '16 capricorn', 'carmel 5'),
(2, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(3, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(4, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(5, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(6, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(7, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(8, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(9, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(10, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(11, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(12, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(13, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(14, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(15, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(16, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(17, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(18, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(19, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(20, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(21, 'Manila', 'Metro Manila', 'Tandang Sora', 1122, '20 San Roque', 'San Roque');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id_contact` int(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `contact_number` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id_contact`, `email`, `contact_number`) VALUES
(1, 'jhudielgaylon@gmail.com', '09320087890'),
(2, 'jonwilms@gmail.com', '990158113'),
(3, 'jonwilms@gmail.com', '990158113'),
(4, 'jonwilms@gmail.com', '990158113'),
(5, 'jonwilms@gmail.com', '990158113'),
(6, 'jonwilms@gmail.com', '990158113'),
(7, 'jonwilms@gmail.com', '990158113'),
(8, 'jonwilms@gmail.com', '990158113'),
(9, 'jonwilms@gmail.com', '990158113'),
(10, 'jonwilms@gmail.com', '990158113'),
(11, 'jonwilms@gmail.com', '990158113'),
(12, 'jonwilms@gmail.com', '990158113'),
(13, 'jonwilms@gmail.com', '990158113'),
(14, 'jonwilms@gmail.com', '990158113'),
(15, 'jonwilms@gmail.com', '990158113'),
(16, 'jonwilms@gmail.com', '990158113'),
(17, 'jonwilms@gmail.com', '990158113'),
(18, 'jonwilms@gmail.com', '990158113'),
(19, 'jonwilms@gmail.com', '990158113'),
(20, 'jonwilms@gmail.com', '990158113'),
(21, 'jonwilms@gmail.com', '990158113');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `Id` int(100) NOT NULL,
  `FName` varchar(60) NOT NULL,
  `MName` varchar(60) NOT NULL,
  `LName` varchar(60) NOT NULL,
  `Suffix` varchar(60) DEFAULT NULL,
  `DateOfBirth` date NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `contact_id` int(100) NOT NULL,
  `Address_Id` int(100) NOT NULL,
  `School_Id` int(100) NOT NULL,
  `Account_Id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`Id`, `FName`, `MName`, `LName`, `Suffix`, `DateOfBirth`, `Sex`, `contact_id`, `Address_Id`, `School_Id`, `Account_Id`) VALUES
(1, 'jhudiel ', 'doble', 'gaylon', '', '2004-05-25', 'Male', 1, 1, 1, 1),
(2, 'Michael', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 2, 2, 2, 2),
(3, 'Michael', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 3, 3, 3, 3),
(4, 'Michael', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 4, 4, 4, 4),
(5, 'Michael', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 5, 5, 5, 5),
(6, 'Michael', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 6, 6, 6, 6),
(7, 'Michael', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 7, 7, 7, 7),
(8, 'Michael', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 8, 8, 8, 8),
(9, 'Michael', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 9, 9, 9, 9),
(10, 'Michael', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 10, 10, 10, 10),
(11, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 11, 11, 11, 11),
(12, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 12, 12, 12, 12),
(13, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 13, 13, 13, 13),
(14, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 14, 14, 14, 14),
(15, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 15, 15, 15, 15),
(16, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 16, 16, 16, 16),
(17, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 17, 17, 17, 17),
(18, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 18, 18, 18, 18),
(19, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 19, 19, 19, 19),
(20, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 20, 20, 20, 20),
(21, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 21, 21, 21, 21);

-- --------------------------------------------------------

--
-- Table structure for table `school_info`
--

CREATE TABLE `school_info` (
  `id_school` int(100) NOT NULL,
  `Student_Id` int(50) NOT NULL,
  `Campus` varchar(60) NOT NULL,
  `Deparment` varchar(60) NOT NULL,
  `Program` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_info`
--

INSERT INTO `school_info` (`id_school`, `Student_Id`, `Campus`, `Deparment`, `Program`) VALUES
(1, 136515, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(2, 136515, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(3, 136515, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(4, 136515, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(5, 136515, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(6, 136515, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(7, 136515, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(8, 1365151, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(9, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(10, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(11, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(12, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(13, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(14, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(15, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(16, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(17, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(18, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(19, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(20, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(21, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_info`
--
ALTER TABLE `account_info`
  ADD PRIMARY KEY (`Id_account`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `address_info`
--
ALTER TABLE `address_info`
  ADD PRIMARY KEY (`Id_address`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `personal_info_ibfk_1` (`Account_Id`),
  ADD KEY `School_Id` (`School_Id`),
  ADD KEY `personal_info_ibfk_2` (`Address_Id`),
  ADD KEY `id_contact` (`contact_id`);

--
-- Indexes for table `school_info`
--
ALTER TABLE `school_info`
  ADD PRIMARY KEY (`id_school`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_info`
--
ALTER TABLE `account_info`
  MODIFY `Id_account` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `address_info`
--
ALTER TABLE `address_info`
  MODIFY `Id_address` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id_contact` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `school_info`
--
ALTER TABLE `school_info`
  MODIFY `id_school` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_info`
--
ALTER TABLE `account_info`
  ADD CONSTRAINT `account_info_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact_info` (`id_contact`);

--
-- Constraints for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD CONSTRAINT `personal_info_ibfk_1` FOREIGN KEY (`Account_Id`) REFERENCES `account_info` (`Id_account`),
  ADD CONSTRAINT `personal_info_ibfk_2` FOREIGN KEY (`Address_Id`) REFERENCES `address_info` (`Id_address`),
  ADD CONSTRAINT `personal_info_ibfk_3` FOREIGN KEY (`School_Id`) REFERENCES `school_info` (`id_school`),
  ADD CONSTRAINT `personal_info_ibfk_4` FOREIGN KEY (`contact_id`) REFERENCES `contact_info` (`id_contact`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
