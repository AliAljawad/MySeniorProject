-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 09:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rahma`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `phone`, `password`) VALUES
(3, 'ASN', 'ASN@gmail.com', 70515211, '123456');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `pName` varchar(255) NOT NULL,
  `pMail` varchar(255) NOT NULL,
  `pPhone` varchar(15) NOT NULL,
  `DrField` varchar(255) NOT NULL,
  `Doctor` varchar(255) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `pName`, `pMail`, `pPhone`, `DrField`, `Doctor`, `appdate`, `apptime`) VALUES
(16, 'Ahmad Nseif', 'Ahmad@gmail.com', '212121212', 'Pediatrics', 'Emily Johnson', '2023-06-27', '11:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `canceled_appointments`
--

CREATE TABLE `canceled_appointments` (
  `id` int(11) NOT NULL,
  `pName` varchar(255) DEFAULT NULL,
  `pMail` varchar(255) DEFAULT NULL,
  `pPhone` varchar(20) DEFAULT NULL,
  `DrField` varchar(255) DEFAULT NULL,
  `appdate` date DEFAULT NULL,
  `apptime` time DEFAULT NULL,
  `Doctor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `canceled_appointments`
--

INSERT INTO `canceled_appointments` (`id`, `pName`, `pMail`, `pPhone`, `DrField`, `appdate`, `apptime`, `Doctor`) VALUES
(14, 'Ahmad Nseif', 'Ahmad@gmail.com', '212121212', 'Orthopedist', '2023-06-27', '13:30:00', 'John Smith');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `diagnose_id` int(11) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `patient_email` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `patient_gender` varchar(10) NOT NULL,
  `illness_name` text NOT NULL,
  `b_sugar` varchar(20) NOT NULL,
  `b_temp` double(10,2) NOT NULL,
  `b_press` varchar(20) NOT NULL,
  `oxy_lev` int(10) NOT NULL,
  `pulse_rate` int(20) NOT NULL,
  `additional` text NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `creation_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `field` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `gender` enum('male','female') NOT NULL,
  `phone` bigint(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `field`, `Name`, `address`, `gender`, `phone`, `email`, `date_of_birth`, `password`, `picture`) VALUES
(9, 'Cardiology', 'Ali Aljawad', 'Saida', 'male', 70530907, 'Ali@example.com', '2001-10-09', '12345678', 'uploads/register2.jpg'),
(10, 'Orthopedist', 'John Smith', 'Beirut', 'male', 987654321, 'john@example.com', '1985-07-15', 'password123', ''),
(11, 'Pediatrics', 'Emily Johnson', 'tyre', 'female', 123456789, 'emily@example.com', '1990-03-22', 'abc123', ''),
(13, 'Cardiology', 'Dr. John Doe', 'New York', 'male', 987654321, 'john.doe@example.com', '1980-01-01', 'password123', ''),
(22, 'Orthopedis', 'Sarah Johnson', 'London', 'female', 987654321, 'sarah@example.com', '1995-09-18', 'pass1234', ''),
(23, 'Orthopedist', 'Michael Brown', 'Chicago', 'male', 654321987, 'michael@example.com', '1988-06-30', 'qwerty123', ''),
(24, 'Pediatrics', 'Emma Thompson', 'Houston', 'female', 789456123, 'emma@example.com', '1992-12-07', 'doctor456', ''),
(25, 'Pediatrics', 'David Wilson', 'San Francisco', 'male', 456123789, 'david@example.com', '1976-04-15', 'securepass', ''),
(26, 'Pediatrics', 'Sophia Miller', 'Sydney', 'female', 321654987, 'sophia@example.com', '1983-11-23', 'med1234', ''),
(27, 'Cardiology', 'Dr. Robert Johnson', 'Boston', 'male', 741852963, 'robert@example.com', '1970-08-12', 'doctor789', ''),
(28, 'Cardiology', 'Olivia Davis', 'Toronto', 'female', 963852741, 'olivia@example.com', '1987-02-28', 'eyedoc123', ''),
(30, 'Pediatrics', 'Ava Johnson', 'Paris', 'female', 369852147, 'ava@example.com', '1982-09-10', 'minddoc123', ''),
(31, 'Cardiology', 'James Anderson', 'Berlin', 'male', 147852369, 'james@example.com', '1978-11-08', 'medical567', '');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `caption` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `file_name`, `uploaded_on`, `status`, `caption`) VALUES
(10, '$$$.jpg', '2023-06-18 20:43:48', '1', 'ytioip'),
(13, 'download (2).jpeg', '2023-06-22 11:12:45', '1', ''),
(14, 'download (1).jpeg', '2023-06-22 11:12:45', '1', ''),
(15, 'download.jpeg', '2023-06-22 11:13:24', '1', 'this is the doctor');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `blood_type` varchar(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `password`, `email`, `date_of_birth`, `address`, `gender`, `blood_type`, `phone_number`, `picture`) VALUES
(2, 'Ali Aljawad', '123456', '32030062@students.liu.edu.lb', '2001-05-04', 'Saida', 'male', 'null', '70530907', 'uploads/me.jpeg'),
(11, 'Ahmad Nseif', '123456', 'Ahmad@gmail.com', '1986-07-10', 'Shebaa', 'male', 'B+', '212121212', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `canceled_appointments`
--
ALTER TABLE `canceled_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`diagnose_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `canceled_appointments`
--
ALTER TABLE `canceled_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `diagnose_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
