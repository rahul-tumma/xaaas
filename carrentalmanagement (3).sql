-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 05:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrentalmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `AdminID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`AdminID`, `Username`, `Password`, `Name`, `Phone`) VALUES
(1, 'admin3', 'newpassword', 'Admin Surat 1', '7454545484'),
(3, 'myadmin', 'password123', 'Rahul Tumma', '7845875454'),
(4, 'adminmine', 'password123', 'Rahul Tumma2', '874587845'),
(5, 'rahuladmin', 'admin', 'Rahul 123', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `bookingnew`
--

CREATE TABLE `bookingnew` (
  `id` int(11) NOT NULL,
  `userid` int(15) NOT NULL,
  `pickupdate` datetime NOT NULL,
  `dropdate` datetime NOT NULL,
  `totalDays` int(11) NOT NULL,
  `startkm` int(11) NOT NULL,
  `carId` int(25) NOT NULL,
  `perkmprice` decimal(10,2) NOT NULL,
  `DriverID` int(15) DEFAULT NULL,
  `drivercharges` decimal(10,2) DEFAULT NULL,
  `endkm` int(11) DEFAULT NULL,
  `totalkm` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `tolltax` decimal(10,2) DEFAULT NULL,
  `totaldrivercharges` decimal(10,2) DEFAULT NULL,
  `totalamount` decimal(10,2) DEFAULT NULL,
  `companymargin` decimal(10,2) DEFAULT NULL,
  `netamount` decimal(10,2) DEFAULT NULL,
  `paymentstatus` tinyint(1) DEFAULT 0,
  `paymentmethod` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookingnew`
--

INSERT INTO `bookingnew` (`id`, `userid`, `pickupdate`, `dropdate`, `totalDays`, `startkm`, `carId`, `perkmprice`, `DriverID`, `drivercharges`, `endkm`, `totalkm`, `amount`, `tolltax`, `totaldrivercharges`, `totalamount`, `companymargin`, `netamount`, `paymentstatus`, `paymentmethod`) VALUES
(1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2023, 2023, 13, '50.00', 1, '502.00', 60, 1, '50.00', '40.00', '50.00', '50.00', '50.00', '150.00', 127, 'cash'),
(2, 2, '2023-11-06 00:00:00', '2023-10-31 00:00:00', 15, 5, 48, '2.00', 1, '150.00', 60, 55, '10000.00', '500.00', '9000.00', '19500.00', '19000.00', '500.00', 1, 'cash'),
(3, 2, '2023-10-31 00:00:00', '2023-11-20 00:00:00', 20, 2515, 1, '50.00', 1, '500.00', 50000, 47485, '5000.00', '500.00', '800.00', '6300.00', '1000.00', '5300.00', 1, 'cash'),
(4, 2, '2024-02-01 00:00:00', '2024-02-04 00:00:00', 3, 5050, 1, '50.00', 1, '500.00', 6000, 950, '5000.00', '500.00', '600.00', '6100.00', '1000.00', '5100.00', 1, 'cash'),
(5, 2, '2023-11-18 00:00:00', '2023-11-26 00:00:00', 8, 52, 1, '52.00', 2, '50.00', 99, 47, '2444.00', '500.00', '600.00', '6100.00', '5000.00', '1100.00', 1, NULL),
(6, 2, '2023-11-07 00:00:00', '2023-11-20 00:00:00', 13, 50, 1, '60.00', 1, '10.00', 50, 40, '50.00', '50.00', '50.00', '150.00', '500.00', '0.00', 1, 'PhonePay'),
(7, 2, '2023-11-18 00:00:00', '2023-11-20 00:00:00', 2, 50, 1, '60.00', 1, '10.00', 500, 450, '27000.00', '10.00', '100.00', '27110.00', '1000.00', '26110.00', 0, 'cash'),
(8, 2, '2023-11-19 00:00:00', '2023-11-23 00:00:00', 4, 1520, 1, '60.00', 2, '60.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(9, 2, '2023-11-10 00:00:00', '2023-11-18 00:00:00', 8, 50, 1, '50.00', 1, '454.00', 100, 50, '2500.00', '500.00', '65000.00', '168000.00', '100000.00', '68000.00', 1, 'Paytm'),
(10, 2, '2023-11-10 00:00:00', '2023-11-18 00:00:00', 8, 50, 1, '50.00', 1, '454.00', 100, 50, '2500.00', '100.00', '100.00', '2850.00', '150.00', '2700.00', 1, 'Paytm'),
(11, 2, '2023-11-16 00:00:00', '2023-11-18 00:00:00', 2, 5610, 1, '25.00', 1, '500.00', 6000, 390, '5000.00', '500.00', '500.00', '6000.00', '2000.00', '4500.00', 1, 'cash'),
(12, 2, '2023-12-02 00:00:00', '2023-12-05 00:00:00', 3, 1015, 1, '50.00', 1, '100.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(13, 2, '2023-11-21 00:00:00', '2023-11-25 00:00:00', 4, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(14, 2, '2023-11-21 00:00:00', '2023-11-25 00:00:00', 4, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(15, 2, '2023-11-21 00:00:00', '2023-11-23 00:00:00', 2, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(16, 2, '2023-11-22 00:00:00', '2023-11-25 00:00:00', 3, 80, 1, '80.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(17, 2, '2023-11-22 00:00:00', '2023-11-25 00:00:00', 3, 80, 1, '80.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(18, 2, '2023-11-22 00:00:00', '2023-11-25 00:00:00', 3, 80, 1, '80.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(19, 2, '2023-11-22 00:00:00', '2023-11-25 00:00:00', 3, 80, 1, '80.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(20, 2, '2023-11-22 00:00:00', '2023-11-25 00:00:00', 3, 80, 1, '80.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(21, 2, '2023-11-15 00:00:00', '2023-11-29 00:00:00', 14, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(22, 2, '2023-11-15 00:00:00', '2023-11-29 00:00:00', 14, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(23, 2, '2023-11-15 00:00:00', '2023-11-29 00:00:00', 14, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(24, 2, '2023-12-01 00:00:00', '2023-12-10 00:00:00', 9, 80, 1, '80.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(25, 2, '2023-11-16 00:00:00', '2023-12-01 00:00:00', 15, 5, 1, '7.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(26, 2, '2023-11-16 00:00:00', '2023-12-01 00:00:00', 15, 5, 1, '7.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(27, 2, '2023-11-22 00:00:00', '2023-11-25 00:00:00', 3, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(28, 2, '2023-11-23 00:00:00', '2023-11-24 00:00:00', 1, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(29, 2, '2023-11-21 00:00:00', '2023-11-24 00:00:00', 3, 50, 1, '60.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(30, 2, '2023-11-21 00:00:00', '2023-11-22 00:00:00', 1, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(31, 2, '2023-11-10 00:00:00', '2023-11-23 00:00:00', 13, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(32, 2, '2023-11-10 00:00:00', '2023-11-23 00:00:00', 13, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(33, 2, '2023-11-21 00:00:00', '2023-11-25 00:00:00', 4, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(34, 2, '2023-11-21 00:00:00', '2023-11-25 00:00:00', 4, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(35, 2, '2023-11-21 00:00:00', '2023-11-25 00:00:00', 4, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(36, 2, '2023-11-21 00:00:00', '2023-11-25 00:00:00', 4, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(37, 2, '2023-11-21 00:00:00', '2023-11-25 00:00:00', 4, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(38, 2, '2023-11-22 00:00:00', '2023-11-23 00:00:00', 1, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(39, 2, '2023-11-22 00:00:00', '2023-11-17 00:00:00', 0, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(40, 2, '2023-11-22 00:00:00', '2023-11-17 00:00:00', 0, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(41, 2, '2023-11-22 00:00:00', '2023-11-17 00:00:00', 0, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(42, 2, '2023-11-22 00:00:00', '2023-11-17 00:00:00', 0, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(43, 2, '2023-11-16 00:00:00', '2023-11-23 00:00:00', 7, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(44, 2, '2023-11-16 00:00:00', '2023-11-23 00:00:00', 7, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(45, 2, '2023-11-16 00:00:00', '2023-11-23 00:00:00', 7, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(46, 2, '2023-11-16 00:00:00', '2023-11-23 00:00:00', 7, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(47, 2, '2023-11-16 00:00:00', '2023-11-25 00:00:00', 9, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(48, 2, '2023-11-16 00:00:00', '2023-11-25 00:00:00', 9, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(49, 2, '2023-11-16 00:00:00', '2023-11-25 00:00:00', 9, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(50, 2, '2023-11-16 00:00:00', '2023-11-25 00:00:00', 9, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(51, 2, '2023-11-16 00:00:00', '2023-11-25 00:00:00', 9, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(52, 2, '2023-11-16 00:00:00', '2023-11-25 00:00:00', 9, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(53, 2, '2023-11-03 00:00:00', '2023-12-01 00:00:00', 28, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(54, 2, '2023-11-24 00:00:00', '2023-11-26 00:00:00', 2, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(55, 2, '2023-11-22 00:00:00', '2023-11-25 00:00:00', 3, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(56, 2, '2023-11-17 00:00:00', '2023-11-18 00:00:00', 1, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(57, 2, '2023-11-10 00:00:00', '2023-11-17 00:00:00', 7, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(58, 2, '2023-11-10 00:00:00', '2023-11-18 00:00:00', 8, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(59, 2, '2023-11-23 00:00:00', '2023-11-25 00:00:00', 2, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(60, 2, '2023-11-23 00:00:00', '2023-11-25 00:00:00', 2, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(61, 2, '2023-11-23 00:00:00', '2023-11-25 00:00:00', 2, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(62, 2, '2023-11-23 00:00:00', '2023-11-25 00:00:00', 2, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(63, 2, '2023-11-16 00:00:00', '2023-11-25 00:00:00', 9, 81, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(64, 2, '2023-11-18 00:00:00', '2023-11-25 00:00:00', 7, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(65, 2, '2023-11-18 00:00:00', '2023-11-25 00:00:00', 7, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(66, 2, '2023-11-18 00:00:00', '2023-11-25 00:00:00', 7, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(67, 2, '2023-11-18 00:00:00', '2023-11-25 00:00:00', 7, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(68, 2, '2023-11-10 00:00:00', '2023-11-17 00:00:00', 7, 5202, 1, '520.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(69, 2, '2023-11-10 00:00:00', '2023-11-17 00:00:00', 7, 5202, 1, '520.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(70, 2, '2023-11-16 00:00:00', '2023-11-26 00:00:00', 10, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(71, 2, '2023-11-16 00:00:00', '2023-11-24 00:00:00', 8, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(72, 2, '2023-11-16 00:00:00', '2023-11-24 00:00:00', 8, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(73, 2, '2023-11-16 00:00:00', '2023-11-24 00:00:00', 8, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(74, 2, '2023-11-23 00:00:00', '2023-11-26 00:00:00', 3, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(75, 2, '2023-11-23 00:00:00', '2023-11-26 00:00:00', 3, 50, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(76, 2, '2023-11-23 00:00:00', '2023-11-30 00:00:00', 7, 50256, 1, '60.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(77, 2, '2023-11-23 00:00:00', '2023-11-30 00:00:00', 7, 50256, 1, '60.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(78, 2, '2023-11-22 00:00:00', '2023-11-26 00:00:00', 4, 56125, 1, '60.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(79, 2, '2023-11-22 00:00:00', '2023-11-26 00:00:00', 4, 56125, 1, '60.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(80, 2, '2023-11-21 00:00:00', '2023-11-24 00:00:00', 3, 6500, 1, '60.00', 1, NULL, 7000, 500, '6000.00', '500.00', '1500.00', '8000.00', '1000.00', '7000.00', 1, 'cash'),
(81, 2, '2023-12-14 00:00:00', '2023-12-22 00:00:00', 8, 5420, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(82, 2, '2023-12-15 00:00:00', '2023-12-24 00:00:00', 9, 100, 1, '1000.00', 1, NULL, 500, 400, '400000.00', '100.00', '1000.00', '401100.00', '10000.00', '391100.00', 0, NULL),
(83, 2, '2023-12-13 23:06:00', '2023-12-21 23:06:00', 8, 100, 1, '150.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(84, 2, '2023-12-14 12:58:00', '2023-12-17 12:58:00', 3, 51020, 46, '10.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(85, 2, '2023-12-14 13:02:00', '2023-12-17 13:02:00', 3, 1010, 1, '50.00', 1, NULL, 1050, 40, '2000.00', '50.00', '1000.00', '3050.00', '500.00', '2550.00', 1, 'Paytm'),
(86, 2, '2023-12-16 18:44:00', '2023-12-17 18:44:00', 1, 50, 0, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(87, 2, '2023-12-22 19:51:00', '2023-12-30 19:51:00', 8, 5010, 1, '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(88, 2, '2023-12-16 11:06:00', '2023-12-27 20:03:00', 12, 10, 1, '100.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(89, 2, '2023-12-22 11:08:00', '2023-12-24 20:04:00', 3, 50, 46, '40.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(90, 2, '2023-12-15 20:08:00', '2023-12-24 20:08:00', 9, 510, 46, '10.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(91, 2, '2023-12-14 23:09:00', '2023-12-28 20:09:00', 14, 23, 46, '32.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(92, 2, '2023-12-15 20:12:00', '2023-12-17 20:12:00', 2, 32, 46, '232.00', 1, NULL, 50, 18, '4176.00', '41.00', '100.00', '5317.00', '1000.00', '4317.00', 1, 'Paytm'),
(93, 2, '2023-12-17 03:09:00', '2023-12-31 03:09:00', 14, 2050, 1, '40.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(94, 2, '2023-12-16 03:17:00', '2023-12-30 03:17:00', 14, 5010, 46, '65.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(95, 2, '2024-01-24 03:19:00', '2024-02-10 03:19:00', 17, 5060, 46, '551.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(96, 2, '2023-12-17 03:33:00', '2023-12-29 03:33:00', 12, 50, 53, '650.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(97, 2, '2023-12-17 03:35:00', '2023-12-27 03:35:00', 10, 5020, 46, '60.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(98, 2, '2023-12-17 17:43:00', '2023-12-31 17:43:00', 14, 41242, 46, '42.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(99, 2, '2023-12-22 17:58:00', '2023-12-24 17:58:00', 2, 2002, 1, '60.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(100, 2, '2023-12-22 17:58:00', '2023-12-24 17:58:00', 2, 204, 53, '420.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(101, 2, '2023-12-17 11:12:00', '2023-12-19 11:13:00', 3, 50, 1, '40.00', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(102, 2, '2023-12-17 11:16:00', '2023-12-19 11:16:00', 2, 5020, 53, '50.00', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(103, 2, '2023-12-20 11:22:00', '2023-12-21 11:22:00', 1, 12, 53, '23.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(104, 2, '2023-12-20 11:24:00', '2023-12-22 11:24:00', 2, 4545, 53, '450.00', 1, NULL, 5000, 455, '204750.00', '100.00', '1000.00', '206350.00', '500.00', '205850.00', 1, 'Gpay'),
(106, 11, '2023-12-18 12:04:00', '2023-12-29 12:04:00', 11, 10000, 53, '50.00', 1, NULL, 15000, 5000, '250000.00', '500.00', '1000.00', '251600.00', '100.00', '251500.00', 1, 'Paytm'),
(107, 2, '2023-12-18 12:03:00', '2023-12-19 12:03:00', 1, 10, 53, '500.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(108, 11, '2023-12-23 12:17:00', '2023-12-28 12:17:00', 5, 65, 1, '65.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(109, 2, '2024-04-16 15:20:00', '2024-04-27 12:20:00', 11, 65, 1, '65.00', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(110, 11, '2023-12-20 19:24:00', '2023-12-22 19:24:00', 2, 50, 46, '60.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(111, 17, '2023-12-20 19:25:00', '2023-12-21 19:25:00', 1, 50, 1, '50.00', 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carbrands`
--

CREATE TABLE `carbrands` (
  `BrandID` int(11) NOT NULL,
  `BrandName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carbrands`
--

INSERT INTO `carbrands` (`BrandID`, `BrandName`) VALUES
(1, 'Toyota'),
(2, 'Honda'),
(3, 'BMW'),
(4, 'TATA'),
(5, 'Ford'),
(6, 'TATAE'),
(7, 'F!'),
(8, 'ok'),
(9, 'ABC');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `CarID` int(11) NOT NULL,
  `CarName` varchar(100) NOT NULL,
  `CarImage` varchar(255) DEFAULT NULL,
  `CarType` varchar(50) NOT NULL,
  `TypeCar` int(11) NOT NULL,
  `BrandID` int(11) DEFAULT NULL,
  `passengers` int(11) NOT NULL,
  `large_Bags` int(11) NOT NULL,
  `small_Bags` int(11) NOT NULL,
  `Compusory_Km` int(11) NOT NULL,
  `Per_Day_Minimum_Price` int(11) NOT NULL,
  `Per_Day_Maximum_Price` int(11) NOT NULL,
  `Deletecar` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`CarID`, `CarName`, `CarImage`, `CarType`, `TypeCar`, `BrandID`, `passengers`, `large_Bags`, `small_Bags`, `Compusory_Km`, `Per_Day_Minimum_Price`, `Per_Day_Maximum_Price`, `Deletecar`) VALUES
(1, 'BMW 130', 'upload\\1701530007007-desktop-wallpaper-hydra-marvel-hydra-logo-thumbnail.png', 'Petrol', 3, 3, 6, 5, 0, 0, 0, 0, 0),
(46, 'BMW 77', 'upload\\1702377186262-civic.png', 'CNG', 1, 4, 4, 5, 2, 0, 560, 650, 0),
(48, 'TATA NANO', 'upload\\1701530452174-cv.png', 'CNG', 1, 3, 5, 5, 5, 652, 500, 600, 1),
(49, 'New Rahul', 'upload\\1701530007007-desktop-wallpaper-hydra-marvel-hydra-logo-thumbnail.png', 'Petrol', 1, 1, 5, 5, 5, 0, 5, 5, 1),
(50, 'BMW 143', 'upload\\1701530452174-cv.png', 'CNG', 1, 2, 5, 5, 5, 5, 5, 5, 1),
(51, 'BMW 143', 'upload\\1702373440402-civic.png', 'Petrol', 1, 1, 5, 5, 5, 510, 40, 60, 1),
(52, 'BMW 77', 'upload\\1702453291963-1701530452174-cv.png', 'CNG', 1, 3, 10, 10, 10, 500, 500, 600, 1),
(53, 'NANO 100', 'upload\\1702479290775-1702377186262-civic.png', 'Petrol', 1, 6, 6, 5, 5, 5, 5, 5, 0),
(54, 'BMW 77', 'upload\\1702702468024-civic.png', 'CNG', 1, 7, 65, 45, 54, 51, 5, 15, 0),
(55, 'Rahul!23', 'upload\\1702703245601-civic.png', 'CNG', 1, 3, 5, 50, 50, 0, 50, 100, 0),
(56, 'BMW 77', 'upload\\1702788118710-civic.png', 'Petrol', 1, 9, 5, 65, 65, 54, 54, 54, 0),
(57, 'Rahul435', 'upload\\1702789517199-civic.png', 'Petrol', 4, 5, 3, 4, 23, 43, 34, 23, 0),
(58, 'wqfsd', 'upload\\1702789689107-civic.png', 'CNG', 5, 6, 234, 32, 234, 43, 23, 43, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cartype`
--

CREATE TABLE `cartype` (
  `id` int(11) NOT NULL,
  `typename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cartype`
--

INSERT INTO `cartype` (`id`, `typename`) VALUES
(1, 'car'),
(2, 'bus'),
(3, 'traveller'),
(4, 'SUV'),
(5, 'sedan');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `DriverID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `MobileNo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`DriverID`, `Name`, `MobileNo`) VALUES
(1, 'Rajesh Naik', '1234567890'),
(2, 'vishal patel', '1234567890'),
(31, 'yamraj', '9876543210');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `Phone`) VALUES
(2, 'jash', '8128961100'),
(11, 'Rahul Tumma', '8128960080'),
(17, 'satyam tumma', '9979969928');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `bookingnew`
--
ALTER TABLE `bookingnew`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbrands`
--
ALTER TABLE `carbrands`
  ADD PRIMARY KEY (`BrandID`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`CarID`),
  ADD KEY `BrandID` (`BrandID`);

--
-- Indexes for table `cartype`
--
ALTER TABLE `cartype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`DriverID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookingnew`
--
ALTER TABLE `bookingnew`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `carbrands`
--
ALTER TABLE `carbrands`
  MODIFY `BrandID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `CarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `cartype`
--
ALTER TABLE `cartype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `DriverID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`BrandID`) REFERENCES `carbrands` (`BrandID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
