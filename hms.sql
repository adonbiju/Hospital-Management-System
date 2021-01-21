-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2021 at 06:30 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_no` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `department_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_no`, `department`, `department_description`) VALUES
('DP01', 'ORTHO', 'orthopedics is a medical specialty that focuses on the diagnosis,correction,prevention,and treatment of patient '),
('DP02', 'CARDIOLOGY', 'cardiology is the medical speciality dealing with the diagnosis and treatment of diseases and disorders of the heart'),
('DP03', 'PEDIATRICS', 'pediatrics is the branch of medicine that involves the medical care of infants,children,and adolescents'),
('DP04', 'NEUROLOGY', 'a medical specilaity dealing with disordes of nervous system.');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `patient_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symptom` varchar(200) NOT NULL,
  `diagnosis` varchar(255) NOT NULL,
  `medicine` varchar(255) NOT NULL,
  `ward_required` text NOT NULL,
  `type_ward` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`patient_id`, `name`, `symptom`, `diagnosis`, `medicine`, `ward_required`, `type_ward`) VALUES
('P0001', 'RAJAN', 'Joint Pain', 'X-ray', 'Aspirin', 'NO', ''),
('P0002', 'MEENA', 'Heart Pain', 'ECG', 'Beta Blockers', 'Yes', 'General'),
('P0003', 'JOSEPH', 'Loss Of Balance', 'CT Scan', 'Sodium Valproate', 'Yes', 'Single'),
('P0004', 'AKHIL', 'Cough', 'X-ray', 'Antibiotic', 'NO', ''),
('P0005', 'LEELA', 'Shoulder Pain', 'X-ray', 'Aspirin', 'NO', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_details`
--

CREATE TABLE `doctor_details` (
  `doctor_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `doctor_name_department` varchar(400) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_details`
--

INSERT INTO `doctor_details` (`doctor_id`, `name`, `age`, `gender`, `department`, `mobile`, `address`, `doctor_name_department`, `username`, `password`) VALUES
('D0001', 'AMAL', 25, 'MALE', 'ORTHO', '7510592019', 'Analiparayil(h),Chamathachal(po),Kannur', 'Dr Amal-ortho', 'amal', '1234'),
('D0002', 'ADON', 28, 'MALE', 'CARDIOLOGY', '8547211474', 'Nirappel(h),Chamathachal(po),Kannur', 'Dr Adon-cardiology', 'adon', '1234'),
('D0003', 'ANU', 30, 'FEMALE', 'PEDIATRICS', '8281555703', 'Mariyil(h),Chamathachal(po),Kochi', 'Dr Anu-Pediatrics', 'anu', '1234'),
('D0004', 'JIS', 35, 'MALE', 'NEUROLOGY', '8590951000', 'Kalayil(h),Payyavoor(po),Kannur', 'Dr Jis-Neurology', 'jis', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE `patient_details` (
  `patient_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `blood` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `disease` varchar(255) NOT NULL,
  `disease_name` varchar(400) NOT NULL,
  `doctor_name_department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`patient_id`, `name`, `age`, `gender`, `blood`, `mobile`, `disease`, `disease_name`, `doctor_name_department`) VALUES
('P0001', 'RAJAN', 50, 'MALE', 'O+', '8765432109', 'No', '', 'Dr Amal-ortho'),
('P0002', 'MEENA', 70, 'FEMALE', 'A+', '7689876543', 'Yes', 'Heart attack', 'Dr Adon-cardiology'),
('P0003', 'JOSEPH', 65, 'FEMALE', 'AB-', '6578905674', 'No', '', 'Dr Jis-Neurology'),
('P0004', 'AKHIL', 8, 'MALE', 'O+', '7869504321', 'No', '', 'Dr Anu-Pediatrics'),
('P0005', 'LEELA', 80, 'FEMALE', 'AB-', '6789567890', 'No', '', 'Dr Amal-ortho');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist_details`
--

CREATE TABLE `receptionist_details` (
  `receptionist_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `username` varchar(400) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receptionist_details`
--

INSERT INTO `receptionist_details` (`receptionist_id`, `name`, `age`, `gender`, `mobile`, `address`, `username`, `password`, `department`) VALUES
('R0001', 'ANUPAMA', 27, 'MALE', '9562543115', 'Cheruvil(h),Thaliparamba(po),Kasargod', 'anupama', '1234', 'ORTHO'),
('R0002', 'JOSE', 24, 'MALE', '6734567890', 'Tharayil(h),Ulikkal(po),Kottayam', 'jose', '1234', 'CARDIOLOGY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_no`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `doctor_details`
--
ALTER TABLE `doctor_details`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `patient_details`
--
ALTER TABLE `patient_details`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `receptionist_details`
--
ALTER TABLE `receptionist_details`
  ADD PRIMARY KEY (`receptionist_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD CONSTRAINT `diagnosis_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient_details` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
