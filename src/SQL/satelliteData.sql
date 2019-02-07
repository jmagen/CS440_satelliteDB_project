-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: classmysql.engr.oregonstate.edu:3306
-- Generation Time: Feb 06, 2019 at 03:52 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs440_magenhej`
--

-- --------------------------------------------------------

--
-- Table structure for table `n2yo_satellite_position_data`
--

CREATE TABLE `n2yo_satellite_position_data` (
  `satId` int(11) DEFAULT NULL,
  `satname` varchar(22) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `elevation` decimal(4,2) DEFAULT NULL,
  `sataltitude` decimal(6,2) DEFAULT NULL,
  `satlongitude` decimal(11,8) DEFAULT NULL,
  `satlatitude` decimal(10,8) DEFAULT NULL,
  `ra` decimal(11,8) DEFAULT NULL,
  `azimuth` decimal(5,2) DEFAULT NULL,
  `decline` decimal(10,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `n2yo_satellite_position_data`
--

INSERT INTO `n2yo_satellite_position_data` (`satId`, `satname`, `timestamp`, `elevation`, `sataltitude`, `satlongitude`, `satlatitude`, `ra`, `azimuth`, `decline`) VALUES
(0, NULL, 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(1, 'SL-1 R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(2, 'SPUTNIK 1', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(3, 'SPUTNIK 2', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(4, 'EXPLORER 1', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(5, 'VANGUARD 1', 1549495973, '63.22', '3794.22', '-85.30079972', '34.33116088', '32.62645592', '227.82', '21.49822620'),
(6, 'EXPLORER 3', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(7, 'SL-1 R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(8, 'SPUTNIK 3', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(9, 'EXPLORER 4', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(10, 'SCORE', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(11, 'VANGUARD 2', 1549495976, '-46.89', '2627.38', '104.88465019', '30.32563543', '234.31695732', '359.19', '1.46888504'),
(12, 'VANGUARD R/B', 1549495976, '26.69', '3136.06', '-57.18231372', '20.45050429', '91.85180260', '137.32', '-11.02355099'),
(13, 'DISCOVERER 1', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(14, 'DISCOVERER 2', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(15, 'EXPLORER 6', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(16, 'VANGUARD R/B', 1549495979, '-38.87', '726.99', '-12.42143532', '-19.23873410', '160.33534280', '121.63', '-46.19113223'),
(17, 'THOR ABLE R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(18, 'DISCOVERER 5', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(19, 'DISCOVERER 6', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(20, 'VANGUARD 3', 1549495981, '-38.21', '2993.84', '24.02856843', '2.28889120', '178.55402222', '81.45', '-18.83367395'),
(21, 'LUNA 3', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(22, 'EXPLORER 7', 1549495982, '-64.54', '679.66', '137.48957648', '-3.98199794', '253.80967028', '312.52', '-22.56332737'),
(23, 'JUNO II R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(24, 'DISCOVERER 7', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(25, 'DISCOVERER 8', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(26, 'DISCOVERER 5 CAPSULE', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(27, 'PIONEER 5', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(28, 'THOR ABLE R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(29, 'TIROS 1', 1549495986, '-43.50', '667.47', '121.18303843', '44.48740570', '242.62413342', '347.81', '4.15404680'),
(30, 'THOR ABLESTAR R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(31, 'TRANSIT 1B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(32, 'DISCOVERER 11', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(33, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(34, 'SPUTNIK 4', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(35, 'SL-3 R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(36, 'SPUTNIK 4 CABIN', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(37, 'SPUTNIK 4 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(38, 'SPUTNIK 4 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(39, 'SPUTNIK 4 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(40, 'SPUTNIK 4 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(41, 'SPUTNIK 4 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(42, 'SPUTNIK 4 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(43, 'MIDAS 2', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(44, 'MIDAS 2 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(45, 'TRANSIT 2A', 1549495994, '16.95', '960.34', '-72.49356051', '25.10775879', '66.17112182', '168.90', '-30.40406359'),
(46, 'SOLRAD 1 (GREB)', 1549495995, '-76.32', '841.88', '91.22092957', '-66.76366633', '228.92043752', '168.36', '-54.95235179'),
(47, 'THOR ABLESTAR R/B', 1549495996, '1.78', '703.86', '-79.74912951', '17.82297872', '41.23173831', '188.77', '-45.93181353'),
(48, 'DISCOVERER 13', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(49, 'ECHO 1', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(50, 'DELTA 1 R/B', 1549495997, '-36.84', '1663.60', '147.90684265', '41.96660286', '258.42755859', '328.92', '6.48694864'),
(51, 'ECHO 1 DEB (METAL OBJ)', 1549495998, '-33.22', '1532.15', '53.59430799', '46.88369107', '206.94348482', '32.25', '9.52792371'),
(52, 'ECHO 1 DEB (MYLAR OBJ)', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(53, 'ECHO 1 DEB (METAL OBJ)', 1549495999, '-12.41', '1537.94', '-125.96733987', '14.92279329', '325.32856559', '253.46', '-20.63881969'),
(54, 'DISCOVERER 14', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(55, 'SPUTNIK 5', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(56, 'SL-3 R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(57, 'DISCOVERER 15', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(58, 'COURIER 1B', 1549496002, '-24.69', '984.89', '-81.69583667', '-20.93011430', '35.74738969', '185.99', '-72.35890336'),
(59, 'THOR ABLESTAR R/B', 1549496002, '-55.09', '971.34', '142.32289660', '12.39999212', '257.01737590', '317.96', '-13.18001969'),
(60, 'EXPLORER 8', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(61, 'DISCOVERER 17', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(62, 'JUNO II R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(63, 'TIROS 2', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(64, 'DELTA 1 R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(65, 'SPUTNIK 6', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(66, 'SL-3 R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(67, 'DISCOVERER 18', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(68, 'DISCOVERER 19', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(69, 'JUNO II DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(70, 'SAMOS 2', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(71, 'SPUTNIK 7', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(72, 'SL-6 R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(73, 'SL-6 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(74, 'DELTA 1 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(75, 'DELTA 1 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(76, 'SL-6 R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(77, 'SPUTNIK 8', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(78, 'SL-6 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(79, 'ATLAS AGENA A R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(80, 'VENERA 1', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(81, 'EXPLORER 9', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(82, 'SCOUT X-1 R/B', 1549496015, '-66.12', '2356.36', '105.47720860', '-0.81259089', '234.86376434', '357.73', '-17.79094951'),
(83, 'DISCOVERER 20', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(84, 'DISCOVERER 21', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(85, 'SCOUT X-1 DEB', 1549496017, '-45.79', '1021.42', '-148.41084098', '-31.46430056', '298.39495791', '235.62', '-50.47132334'),
(86, 'SCOUT X-1 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(87, 'TRANSIT 3B/LOFTI 1', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(88, 'DISCOVERER 20 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(89, 'DISCOVERER 20 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(90, 'DISCOVERER 20 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(91, 'SPUTNIK 9', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(92, 'SPUTNIK 9 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(93, 'SPUTNIK 9 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(94, 'SPUTNIK 9 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(95, 'SPUTNIK 10', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(96, 'SL-3 R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(97, 'SL-3 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(98, 'EXPLORER 10', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(99, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(100, 'DISCOVERER 23', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(101, 'THOR ABLE DEB (YO)', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(102, 'DISCOVERER 23 CAPSULE', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(103, 'VOSTOK 1', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(104, 'SL-3 R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(105, 'JUNO II DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(106, 'DISCOVERER 23 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(107, 'EXPLORER 11', 1549496028, '-23.47', '868.19', '-50.40914588', '-13.14683299', '116.47513038', '150.71', '-59.57076851'),
(108, 'DISCOVERER 25', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(109, 'DISCOVERER 25 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(110, 'PIONEER 1', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(111, 'PIONEER 3', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(112, 'LUNA 1', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(113, 'PIONEER 4', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(114, 'LUNA 2', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(115, 'THOR ABLE DEB (YO)', 1549496033, '-42.39', '618.28', '-79.26837290', '-48.32138917', '297.89079663', '182.18', '-88.25499117'),
(116, 'TRANSIT 4A', 1549496034, '-32.83', '869.29', '-147.65751796', '1.75958099', '304.07107730', '259.04', '-28.77492928'),
(117, 'SOLRAD 3/INJUN 1', 1549496035, '-73.81', '990.83', '143.87419009', '-39.37073464', '255.72393242', '261.58', '-41.96103556'),
(118, 'THOR ABLESTAR R/B', 1549496035, '9.51', '940.98', '-51.18315673', '33.48478295', '127.22125558', '104.59', '-4.15659218'),
(119, 'THOR ABLESTAR DEB', 1549496036, '-37.37', '745.63', '30.43042691', '29.08464426', '191.55727969', '57.78', '-4.94490198'),
(120, 'THOR ABLESTAR DEB', 1549496036, '-3.89', '731.12', '-96.26518042', '16.74840163', '358.45154115', '221.04', '-37.39249196'),
(121, 'THOR ABLESTAR DEB', 1549496037, '-20.56', '925.03', '-67.09251368', '-13.47068496', '80.31499495', '169.44', '-67.03977232'),
(122, 'THOR ABLESTAR DEB', 1549496037, '-48.22', '676.49', '-77.27680158', '-59.43757984', '237.40665594', '180.66', '-83.42337210'),
(123, 'THOR ABLESTAR DEB', 1549496038, '-72.53', '866.29', '143.59437651', '-66.72050390', '248.53017949', '207.88', '-56.33211629'),
(124, 'THOR ABLESTAR DEB', 1549496038, '-38.05', '847.69', '16.56421771', '11.82226973', '179.77458155', '79.33', '-17.45692403'),
(125, 'THOR ABLESTAR DEB', 1549496039, '-28.08', '912.77', '165.96915662', '58.36611121', '261.27131555', '329.90', '14.91604746'),
(126, 'THOR ABLESTAR DEB', 1549496040, '9.25', '736.86', '-65.47913234', '59.02725150', '204.16717147', '17.27', '54.35352824'),
(127, 'THOR ABLESTAR DEB', 1549496040, '-74.57', '736.83', '63.41294609', '-54.07493623', '215.05979234', '128.31', '-49.80068169'),
(128, 'THOR ABLESTAR DEB', 1549496041, '-77.79', '958.68', '112.00837873', '-20.22165453', '238.73092716', '340.24', '-30.02533441'),
(129, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(130, 'THOR ABLESTAR DEB', 1549496042, '-44.68', '936.88', '98.01740510', '41.76444993', '230.85886404', '4.48', '3.61772688'),
(131, 'THOR ABLESTAR DEB', 1549496042, '-39.17', '932.41', '-170.53340784', '10.04408130', '287.38284575', '280.62', '-18.34007129'),
(132, 'THOR ABLESTAR DEB', 1549496043, '-49.58', '863.00', '-172.94154177', '-14.72406833', '285.06971905', '263.58', '-34.09081585'),
(133, 'THOR ABLESTAR DEB', 1549496043, '-44.13', '831.79', '58.52366651', '32.62203317', '208.41347811', '37.02', '-1.96082745'),
(134, 'THOR ABLESTAR DEB', 1549496044, '-51.42', '900.23', '-61.96214381', '-65.98216245', '212.98814871', '173.98', '-79.38346902'),
(135, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(136, 'THOR ABLESTAR DEB', 1549496045, '6.26', '829.40', '-51.70761795', '57.58902856', '182.14413953', '35.92', '42.55092287'),
(137, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(138, 'THOR ABLESTAR DEB', 1549496046, '-45.62', '872.82', '106.97275575', '40.59790916', '235.66287663', '357.71', '2.68117802'),
(139, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(140, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(141, 'THOR ABLESTAR DEB', 1549496048, '-49.53', '929.30', '-13.43999763', '-47.57160085', '173.76976928', '141.46', '-62.19788752'),
(142, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(143, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(144, 'THOR ABLESTAR DEB', 1549496050, '-33.52', '922.23', '-110.67326217', '-28.13181722', '332.22378203', '211.15', '-64.21366881'),
(145, 'THOR ABLESTAR DEB', 1549496050, '-21.27', '872.46', '-118.00037254', '0.02517887', '331.31301241', '233.71', '-40.81672572'),
(146, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(147, 'THOR ABLESTAR DEB', 1549496051, '-60.91', '810.84', '163.86885490', '-20.08282139', '269.62534995', '274.34', '-33.60082121'),
(148, 'THOR ABLESTAR DEB', 1549496052, '-24.85', '989.44', '-165.80501427', '42.67729316', '282.90379585', '304.45', '5.88276240'),
(149, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(150, 'THOR ABLESTAR DEB', 1549496053, '-64.14', '1007.86', '81.94768377', '1.75691151', '220.65283550', '30.29', '-18.39769992'),
(151, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(152, 'THOR ABLESTAR DEB', 1549496054, '-77.13', '830.69', '126.02926529', '-62.44295765', '242.99497497', '205.15', '-53.00622806'),
(153, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(154, 'THOR ABLESTAR DEB', 1549496055, '-13.98', '848.87', '-59.74573202', '-0.96989732', '97.26185173', '156.63', '-55.70928777'),
(155, 'THOR ABLESTAR DEB', 1549496056, '-18.04', '754.17', '-148.81357019', '48.77140954', '287.18085019', '304.42', '11.26843257'),
(156, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(157, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(158, 'THOR ABLESTAR DEB', 1549496057, '-66.55', '1502.46', '106.66536696', '0.28301888', '235.75163788', '356.01', '-18.21402311'),
(159, 'THOR ABLESTAR DEB', 1549496058, '21.36', '1168.05', '-67.27641435', '26.56905125', '82.35339579', '151.78', '-21.86539324'),
(160, 'DISCOVERER 26', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(161, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(162, 'TIROS 3', 1549496059, '-34.30', '713.23', '8.85588720', '14.92956285', '175.44776724', '81.91', '-16.61393230'),
(163, 'MIDAS 3', 1549496060, '-76.26', '3364.39', '134.91303784', '-49.12316568', '251.79190193', '241.00', '-47.01382304'),
(164, 'MIDAS 3 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(165, 'DELTA 1 R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(166, 'DELTA 1 DEB (YO)', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(167, 'DELTA 1 DEB (YO)', 1549496062, '-24.92', '835.34', '-143.23599155', '17.43262074', '305.75428775', '268.67', '-17.30857722'),
(168, 'VOSTOK 2', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(169, 'SL-3 R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(170, 'EXPLORER 12', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(171, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(172, 'THOR ABLESTAR DEB', 1549496065, '-28.37', '1053.24', '134.08540744', '66.60123847', '245.58703837', '347.69', '19.04460346'),
(173, 'RANGER 1', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(174, 'ATLAS AGENA B R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(175, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(176, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(177, 'THOR ABLESTAR DEB', 1549496067, '-34.64', '803.71', '-71.55879106', '-35.93947582', '78.32047450', '176.29', '-82.36401829'),
(178, 'THOR ABLESTAR DEB', 1549496068, '-18.81', '949.41', '-48.98269362', '-5.66429306', '116.74943733', '145.58', '-52.90101241'),
(179, 'THOR ABLESTAR DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(180, 'EXPLORER 13', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(181, 'DISCOVERER 29', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(182, 'DISCOVERER 30', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(183, 'MERCURY ATLAS 4', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(184, 'ATLAS D R/B', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(185, 'DISCOVERER 30 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(186, 'DISCOVERER 31', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(187, 'DISCOVERER 30 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(188, 'MIDAS 3 DEB', 1549496073, '-34.87', '3546.97', '-39.86357710', '-45.63066557', '132.84521331', '155.49', '-69.61918169'),
(189, 'DISCOVERER 32', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(190, 'DISCOVERER 32 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(191, 'DISCOVERER 32 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(192, 'MIDAS 4', 1549496076, '16.74', '3536.32', '-115.02610420', '26.63529693', '345.02395109', '257.32', '1.82411195'),
(193, 'MIDAS 4 DEB (NOSECONE)', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(194, 'MIDAS 4 DEB', 1549496077, '-54.71', '3333.97', '-55.44969535', '-80.06603858', '223.43218721', '175.86', '-76.61157418'),
(195, 'MIDAS 4 DEB', 1549496077, '-40.77', '3785.39', '-121.03769462', '-53.08122988', '318.04972294', '205.91', '-70.66827002'),
(196, 'MIDAS 3 DEB', 1549496078, '-45.97', '3544.96', '134.97867725', '22.71934834', '254.69565014', '329.78', '-1.66483405'),
(197, 'DISCOVERER 34', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(198, 'DISCOVERER 34 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(199, 'DISCOVERER 34 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000'),
(200, 'DISCOVERER 34 DEB', 0, '0.00', '0.00', '0.00000000', '0.00000000', '0.00000000', '0.00', '0.00000000');

-- --------------------------------------------------------

--
-- Table structure for table `n2yo_satellite_tle_data`
--

CREATE TABLE `n2yo_satellite_tle_data` (
  `satId` int(11) NOT NULL,
  `satname` varchar(22) DEFAULT NULL,
  `tle` varchar(140) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `n2yo_satellite_tle_data`
--

INSERT INTO `n2yo_satellite_tle_data` (`satId`, `satname`, `tle`) VALUES
(0, NULL, NULL),
(1, 'SL-1 R/B', NULL),
(2, 'SPUTNIK 1', NULL),
(3, 'SPUTNIK 2', NULL),
(4, 'EXPLORER 1', NULL),
(5, 'VANGUARD 1', '1 00005U 58002B   19036.84964324 -.00000131 +00000-0 -18722-3 0  9999\r\n2 00005 034.2622 320.9395 1846991 273.3582 065.8582 10.84784184151214'),
(6, 'EXPLORER 3', NULL),
(7, 'SL-1 R/B', NULL),
(8, 'SPUTNIK 3', NULL),
(9, 'EXPLORER 4', NULL),
(10, 'SCORE', NULL),
(11, 'VANGUARD 2', '1 00011U 59001A   19037.53445980  .00000219  00000-0  10688-3 0  9993\r\n2 00011  32.8737 120.9339 1468993 326.4044  25.1284 11.85607854557727'),
(12, 'VANGUARD R/B', '1 00012U 59001B   19036.81339175 +.00000014 +00000-0 +18956-5 0  9993\r\n2 00012 032.9040 291.9807 1665532 339.6776 014.4450 11.44228773222966'),
(13, 'DISCOVERER 1', NULL),
(14, 'DISCOVERER 2', NULL),
(15, 'EXPLORER 6', NULL),
(16, 'VANGUARD R/B', '1 00016U 58002A   19036.65405851 +.00000133 +00000-0 +16387-3 0  9990\r\n2 00016 034.2746 152.0818 2028462 298.7232 042.4381 10.48729773406579'),
(17, 'THOR ABLE R/B', NULL),
(18, 'DISCOVERER 5', NULL),
(19, 'DISCOVERER 6', NULL),
(20, 'VANGUARD 3', '1 00020U 59007A   19037.54801074  .00000095  00000-0  36690-4 0  9994\r\n2 00020  33.3406 152.1677 1665191 150.9451 219.5077 11.55588184173138'),
(21, 'LUNA 3', NULL),
(22, 'EXPLORER 7', '1 00022U 59009A   19037.51430214  .00000092  00000-0  30286-4 0  9991\r\n2 00022  50.2836 273.0468 0140406 160.5983 200.0383 14.94749768150985'),
(23, 'JUNO II R/B', NULL),
(24, 'DISCOVERER 7', NULL),
(25, 'DISCOVERER 8', NULL),
(26, 'DISCOVERER 5 CAPSULE', NULL),
(27, 'PIONEER 5', NULL),
(28, 'THOR ABLE R/B', NULL),
(29, 'TIROS 1', '1 00029U 60002B   19036.67269755 -.00000135  00000-0  10926-4 0  9997\r\n2 00029  48.3796 137.6728 0024610 262.8065  97.0048 14.74286235145208'),
(30, 'THOR ABLESTAR R/B', NULL),
(31, 'TRANSIT 1B', NULL),
(32, 'DISCOVERER 11', NULL),
(33, 'THOR ABLESTAR DEB', NULL),
(34, 'SPUTNIK 4', NULL),
(35, 'SL-3 R/B', NULL),
(36, 'SPUTNIK 4 CABIN', NULL),
(37, 'SPUTNIK 4 DEB', NULL),
(38, 'SPUTNIK 4 DEB', NULL),
(39, 'SPUTNIK 4 DEB', NULL),
(40, 'SPUTNIK 4 DEB', NULL),
(41, 'SPUTNIK 4 DEB', NULL),
(42, 'SPUTNIK 4 DEB', NULL),
(43, 'MIDAS 2', NULL),
(44, 'MIDAS 2 DEB', NULL),
(45, 'TRANSIT 2A', '1 00045U 60007A   19037.11416802 -.00000066  00000-0  10655-4 0  9999\r\n2 00045  66.6928 251.4964 0260812 316.5229  41.5563 14.33626435 51418'),
(46, 'SOLRAD 1 (GREB)', '1 00046U 60007B   19037.10190321  .00000020  00000-0  27263-4 0  9996\r\n2 00046  66.6916 310.2705 0205786 143.5175 218.0160 14.49201914 67037'),
(47, 'THOR ABLESTAR R/B', '1 00047U 60007C   19037.21487137 -.00000035  00000-0  17368-4 0  9995\r\n2 00047  66.6657  44.4986 0234213 305.9885  51.9701 14.42019264 63428'),
(48, 'DISCOVERER 13', NULL),
(49, 'ECHO 1', NULL),
(50, 'DELTA 1 R/B', '1 00050U 60009B   19036.98366712 -.00000042  00000-0  39645-3 0  9998\r\n2 00050  47.2288 225.2446 0113418 283.1429  75.6725 12.20106567609939'),
(51, 'ECHO 1 DEB (METAL OBJ)', '1 00051U 60009C   19036.15484941 -.00000133 +00000-0 -45916-3 0  9993\r\n2 00051 047.2132 089.0239 0105587 122.4002 238.7053 12.18271190603341'),
(52, 'ECHO 1 DEB (MYLAR OBJ)', NULL),
(53, 'ECHO 1 DEB (METAL OBJ)', '1 00053U 60009E   19036.90959848 -.00000021 +00000-0 +63638-3 0  9997\r\n2 00053 047.2782 353.3018 0098281 050.0289 310.9082 12.17221787607964'),
(54, 'DISCOVERER 14', NULL),
(55, 'SPUTNIK 5', NULL),
(56, 'SL-3 R/B', NULL),
(57, 'DISCOVERER 15', NULL),
(58, 'COURIER 1B', '1 00058U 60013A   19036.58248229  .00000092  00000-0  60813-5 0  9996\r\n2 00058  28.3288 100.4449 0164920 267.3905  90.7752 13.46316007872000'),
(59, 'THOR ABLESTAR R/B', '1 00059U 60013B   19036.94310149 +.00000107 +00000-0 +28555-4 0  9991\r\n2 00059 028.2468 253.7851 0189091 070.4689 291.6174 13.52965191879173'),
(60, 'EXPLORER 8', NULL),
(61, 'DISCOVERER 17', NULL),
(62, 'JUNO II R/B', NULL),
(63, 'TIROS 2', NULL),
(64, 'DELTA 1 R/B', NULL),
(65, 'SPUTNIK 6', NULL),
(66, 'SL-3 R/B', NULL),
(67, 'DISCOVERER 18', NULL),
(68, 'DISCOVERER 19', NULL),
(69, 'JUNO II DEB', NULL),
(70, 'SAMOS 2', NULL),
(71, 'SPUTNIK 7', NULL),
(72, 'SL-6 R/B', NULL),
(73, 'SL-6 DEB', NULL),
(74, 'DELTA 1 DEB', NULL),
(75, 'DELTA 1 DEB', NULL),
(76, 'SL-6 R/B', NULL),
(77, 'SPUTNIK 8', NULL),
(78, 'SL-6 DEB', NULL),
(79, 'ATLAS AGENA A R/B', NULL),
(80, 'VENERA 1', NULL),
(81, 'EXPLORER 9', NULL),
(82, 'SCOUT X-1 R/B', '1 00082U 61004B   19036.92309594 +.00000030 +00000-0 +52176-4 0  9999\r\n2 00082 038.8573 240.6087 1175840 202.4282 152.0623 12.26012777746741'),
(83, 'DISCOVERER 20', NULL),
(84, 'DISCOVERER 21', NULL),
(85, 'SCOUT X-1 DEB', '1 00085U 61004C   19036.37485831 +.00002469 +00000-0 +53299-3 0  9994\r\n2 00085 038.7767 039.2636 0400837 065.3028 298.8899 14.19716683860270'),
(86, 'SCOUT X-1 DEB', NULL),
(87, 'TRANSIT 3B/LOFTI 1', NULL),
(88, 'DISCOVERER 20 DEB', NULL),
(89, 'DISCOVERER 20 DEB', NULL),
(90, 'DISCOVERER 20 DEB', NULL),
(91, 'SPUTNIK 9', NULL),
(92, 'SPUTNIK 9 DEB', NULL),
(93, 'SPUTNIK 9 DEB', NULL),
(94, 'SPUTNIK 9 DEB', NULL),
(95, 'SPUTNIK 10', NULL),
(96, 'SL-3 R/B', NULL),
(97, 'SL-3 DEB', NULL),
(98, 'EXPLORER 10', NULL),
(99, 'THOR ABLESTAR DEB', NULL),
(100, 'DISCOVERER 23', NULL),
(101, 'THOR ABLE DEB (YO)', NULL),
(102, 'DISCOVERER 23 CAPSULE', NULL),
(103, 'VOSTOK 1', NULL),
(104, 'SL-3 R/B', NULL),
(105, 'JUNO II DEB', NULL),
(106, 'DISCOVERER 23 DEB', NULL),
(107, 'EXPLORER 11', '1 00107U 61013A   19036.57048964  .00000628  00000-0  62147-4 0  9991\r\n2 00107  28.7904 112.8288 0547458 225.4871 129.9694 14.08718699895502'),
(108, 'DISCOVERER 25', NULL),
(109, 'DISCOVERER 25 DEB', NULL),
(110, 'PIONEER 1', NULL),
(111, 'PIONEER 3', NULL),
(112, 'LUNA 1', NULL),
(113, 'PIONEER 4', NULL),
(114, 'LUNA 2', NULL),
(115, 'THOR ABLE DEB (YO)', '1 00115U 60002D   19037.19047831 -.00000032  00000-0  23262-4 0  9993\r\n2 00115  48.1665 145.0255 0035283 217.8997 141.9431 14.83393485139144'),
(116, 'TRANSIT 4A', '1 00116U 61015A   19037.19102964 -.00000031  00000-0  35294-4 0  9995\r\n2 00116  66.8117 343.8115 0076648 352.3671   7.6235 13.91746718923118'),
(117, 'SOLRAD 3/INJUN 1', '1 00117U 61015B   19037.21760534 -.00000047  00000-0  23514-4 0  9991\r\n2 00117  66.8122  75.5598 0076286  12.4612 347.8329 13.89835374920930'),
(118, 'THOR ABLESTAR R/B', '1 00118U 61015C   19036.95466896 -.00000014 +00000-0 +41782-4 0  9997\r\n2 00118 066.7636 278.0771 0083293 359.1907 000.9028 14.01630235939338'),
(119, 'THOR ABLESTAR DEB', '1 00119U 61015D   19036.71087457 +.00000092 +00000-0 +73695-4 0  9997\r\n2 00119 066.7293 150.2446 0100432 039.8275 321.0135 14.23182489975426'),
(120, 'THOR ABLESTAR DEB', '1 00120U 61015E   19037.03835173  .00000120  00000-0  81079-4 0  9998\r\n2 00120  66.7044 223.8826 0113159 146.0496 214.7910 14.25217798965339'),
(121, 'THOR ABLESTAR DEB', '1 00121U 61015F   19037.51497969 -.00000053  00000-0  16867-4 0  9998\r\n2 00121  66.7456 238.4887 0086709  80.7400 280.3476 13.99668111950176'),
(122, 'THOR ABLESTAR DEB', '1 00122U 61015G   19036.84549939  .00000310  00000-0  69960-4 0  9996\r\n2 00122  66.7501 189.8237 0069973 171.9720 188.2536 14.68838687 18114'),
(123, 'THOR ABLESTAR DEB', '1 00123U 61015H   19036.95510088 +.00000002 +00000-0 +29524-4 0  9992\r\n2 00123 066.6864 001.7377 0109602 072.2195 289.0830 14.36951840992958'),
(124, 'THOR ABLESTAR DEB', '1 00124U 61015J   19037.48992793  .00000119  00000-0  76917-4 0  9996\r\n2 00124  66.5438 142.9794 0078158 200.2156 159.5842 14.30297375974557'),
(125, 'THOR ABLESTAR DEB', '1 00125U 61015K   19036.74967874 -.00000030  00000-0  29481-4 0  9994\r\n2 00125  66.8763 162.9453 0079115 233.6749 125.7016 14.05427359939769'),
(126, 'THOR ABLESTAR DEB', '1 00126U 61015L   19036.43656632 +.00000154 +00000-0 +81107-4 0  9997\r\n2 00126 066.7134 023.4134 0061534 072.7909 287.9915 14.36023991977820'),
(127, 'THOR ABLESTAR DEB', '1 00127U 61015M   19037.02039034  .00000202  00000-0  91664-4 0  9998\r\n2 00127  66.8292 232.2436 0078922 265.1150  94.0939 14.38493707979392'),
(128, 'THOR ABLESTAR DEB', '1 00128U 61015N   19037.15667804 -.00000036  00000-0  28183-4 0  9997\r\n2 00128  66.6751  55.2932 0094926 356.7569   3.2886 14.01153579938835'),
(129, 'THOR ABLESTAR DEB', NULL),
(130, 'THOR ABLESTAR DEB', '1 00130U 61015Q   19037.52661298 -.00000027  00000-0  34852-4 0  9992\r\n2 00130  66.7708  71.8776 0084778  10.9436 349.3464 13.98678204936057'),
(131, 'THOR ABLESTAR DEB', '1 00131U 61015R   19036.90870522 -.00000012 +00000-0 +43699-4 0  9999\r\n2 00131 066.7368 318.1123 0077072 146.8397 213.7552 14.00638055926872'),
(132, 'THOR ABLESTAR DEB', '1 00132U 61015S   19037.51248554 -.00000056  00000-0  16276-4 0  9991\r\n2 00132  66.6607 132.0656 0077930 207.4840 152.2109 13.94298933929431'),
(133, 'THOR ABLESTAR DEB', '1 00133U 61015T   19037.48127479  .00000263  00000-0  16479-3 0  9993\r\n2 00133  67.1156 174.5206 0050031 120.5489 240.0558 14.18020421952472'),
(134, 'THOR ABLESTAR DEB', '1 00134U 61015U   19036.78380460 -.00000058  00000-0  13741-4 0  9990\r\n2 00134  66.8797 178.9232 0085984 326.6541  32.9142 13.96784666930612'),
(135, 'THOR ABLESTAR DEB', NULL),
(136, 'THOR ABLESTAR DEB', '1 00136U 61015W   19037.12248071  .00000193  00000-0  96880-4 0  9996\r\n2 00136  67.5308 301.1980 0058186 311.9378  47.6776 14.33311732971375'),
(137, 'THOR ABLESTAR DEB', NULL),
(138, 'THOR ABLESTAR DEB', '1 00138U 61015Y   19036.97416647  .00000095  00000-0  11247-3 0  9990\r\n2 00138  67.1530 218.7271 0028835  56.4977 303.8860 14.01560472926272'),
(139, 'THOR ABLESTAR DEB', NULL),
(140, 'THOR ABLESTAR DEB', NULL),
(141, 'THOR ABLESTAR DEB', '1 00141U 61015AB  19036.69446831  .00000014  00000-0  77627-4 0  9997\r\n2 00141  66.5893 148.1663 0056818 355.0417   5.0087 13.86750546899198'),
(142, 'THOR ABLESTAR DEB', NULL),
(143, 'THOR ABLESTAR DEB', NULL),
(144, 'THOR ABLESTAR DEB', '1 00144U 61015AE  19036.86049362 +.00000000 +00000-0 +63690-4 0  9997\r\n2 00144 066.4991 189.0763 0049633 275.3576 084.1839 13.89999753910882'),
(145, 'THOR ABLESTAR DEB', '1 00145U 61015AF  19036.87604364 -.00000021 +00000-0 +37290-4 0  9999\r\n2 00145 066.9254 195.0974 0058311 117.2397 243.4646 14.01254668939880'),
(146, 'THOR ABLESTAR DEB', NULL),
(147, 'THOR ABLESTAR DEB', '1 00147U 61015AH  19036.60349328 +.00000069 +00000-0 +72234-4 0  9996\r\n2 00147 066.6190 108.7316 0051485 154.8886 205.4726 14.18902355952573'),
(148, 'THOR ABLESTAR DEB', '1 00148U 61015AJ  19037.11855187 -.00000317  00000-0 -12532-3 0  9991\r\n2 00148  65.7749 302.4317 0160613 248.3972 109.9928 14.05482074381246'),
(149, 'THOR ABLESTAR DEB', NULL),
(150, 'THOR ABLESTAR DEB', '1 00150U 61015AL  19036.35325747 +.00000219 +00000-0 +27664-3 0  9994\r\n2 00150 066.2484 037.0820 0063521 007.4938 352.7065 13.81107910736933'),
(151, 'THOR ABLESTAR DEB', NULL),
(152, 'THOR ABLESTAR DEB', '1 00152U 61015AN  19036.93232005 +.00000269 +00000-0 +18007-3 0  9990\r\n2 00152 066.5956 314.6575 0158890 223.5724 135.2724 14.09139029946601'),
(153, 'THOR ABLESTAR DEB', NULL),
(154, 'THOR ABLESTAR DEB', '1 00154U 61015AQ  19037.48383326  .00000135  00000-0  13141-3 0  9992\r\n2 00154  66.6584  72.2963 0078547  55.6799 305.1687 14.04395235939476'),
(155, 'THOR ABLESTAR DEB', '1 00155U 61015AR  19036.56776654 +.00000210 +00000-0 +94597-4 0  9990\r\n2 00155 066.8794 194.2784 0045971 190.0594 169.9595 14.38960966973243'),
(156, 'THOR ABLESTAR DEB', NULL),
(157, 'THOR ABLESTAR DEB', NULL),
(158, 'THOR ABLESTAR DEB', '1 00158U 61015AU  19036.44374194 +.00000092 +00000-0 +37774-3 0  9994\r\n2 00158 067.0734 060.1663 0605850 075.0339 291.6906 12.65200366665119'),
(159, 'THOR ABLESTAR DEB', '1 00159U 61015AV  19037.43827594  .00000002  00000-0  16524-3 0  9993\r\n2 00159  65.5262  51.2213 0360274 102.8038 261.3490 13.02020244731342'),
(160, 'DISCOVERER 26', NULL),
(161, 'THOR ABLESTAR DEB', NULL),
(162, 'TIROS 3', '1 00162U 61017A   19036.84443018 -.00000127 +00000-0 +10497-4 0  9991\r\n2 00162 047.9010 338.2746 0044438 151.1763 209.1597 14.44022132003146'),
(163, 'MIDAS 3', '1 00163U 61018A   19036.90115836 +.00000039 +00000-0 +13427-1 0  9998\r\n2 00163 091.2043 086.6445 0100777 224.6881 134.5836 08.91834616874338'),
(164, 'MIDAS 3 DEB', NULL),
(165, 'DELTA 1 R/B', NULL),
(166, 'DELTA 1 DEB (YO)', NULL),
(167, 'DELTA 1 DEB (YO)', '1 00167U 61017D   19036.85386028 +.00000039 +00000-0 +80722-4 0  9993\r\n2 00167 047.8477 335.6973 0092598 271.7142 087.3137 14.22707872981766'),
(168, 'VOSTOK 2', NULL),
(169, 'SL-3 R/B', NULL),
(170, 'EXPLORER 12', NULL),
(171, 'THOR ABLESTAR DEB', NULL),
(172, 'THOR ABLESTAR DEB', '1 00172U 61015AY  19037.52254617  .00000033  00000-0  13315-3 0  9997\r\n2 00172  67.0673 188.9634 0132924 174.1294 186.1366 13.57337168840578'),
(173, 'RANGER 1', NULL),
(174, 'ATLAS AGENA B R/B', NULL),
(175, 'THOR ABLESTAR DEB', NULL),
(176, 'THOR ABLESTAR DEB', NULL),
(177, 'THOR ABLESTAR DEB', '1 00177U 61015BB  19036.87798583 -.00000071 +00000-0 +56989-5 0  9993\r\n2 00177 066.6576 223.5508 0117759 171.5533 188.7577 14.13415400961195'),
(178, 'THOR ABLESTAR DEB', '1 00178U 61015BC  19036.54686656 -.00000044  00000-0  24651-4 0  9995\r\n2 00178  66.8654  87.3651 0073683 114.2217 246.6586 13.92332919923326'),
(179, 'THOR ABLESTAR DEB', NULL),
(180, 'EXPLORER 13', NULL),
(181, 'DISCOVERER 29', NULL),
(182, 'DISCOVERER 30', NULL),
(183, 'MERCURY ATLAS 4', NULL),
(184, 'ATLAS D R/B', NULL),
(185, 'DISCOVERER 30 DEB', NULL),
(186, 'DISCOVERER 31', NULL),
(187, 'DISCOVERER 30 DEB', NULL),
(188, 'MIDAS 3 DEB', '1 00188U 61018C   19036.09406215 -.00000005 +00000-0 -22608-2 0  9996\r\n2 00188 091.2010 089.2760 0119526 105.5304 255.8803 08.93808943877944'),
(189, 'DISCOVERER 32', NULL),
(190, 'DISCOVERER 32 DEB', NULL),
(191, 'DISCOVERER 32 DEB', NULL),
(192, 'MIDAS 4', '1 00192U 61028A   19036.93646164 -.00000024 +00000-0 -94788-2 0  9993\r\n2 00192 095.8530 018.1514 0141084 078.0830 283.5803 08.67759025814975'),
(193, 'MIDAS 4 DEB (NOSECONE)', NULL),
(194, 'MIDAS 4 DEB', '1 00194U 61028C   19035.01757525  .00000015  00000-0  81520-2 0  9995\r\n2 00194  95.8437  38.7978 0371047 317.7956  39.4884  8.70042996819586'),
(195, 'MIDAS 4 DEB', '1 00195U 61028D   19036.84435538 -.00000010  00000-0 -29388-2 0  9996\r\n2 00195  95.8662   1.3611 0137314 153.6485 207.1431  8.65606843810762'),
(196, 'MIDAS 3 DEB', '1 00196U 61018D   19037.03398401  .00000018  00000-0  59629-2 0  9992\r\n2 00196  91.2095  84.9009 0095897   6.8805 353.3361  8.89666938869986'),
(197, 'DISCOVERER 34', NULL),
(198, 'DISCOVERER 34 DEB', NULL),
(199, 'DISCOVERER 34 DEB', NULL),
(200, 'DISCOVERER 34 DEB', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `n2yo_satellite_position_data`
--
ALTER TABLE `n2yo_satellite_position_data`
  ADD UNIQUE KEY `idx_sat` (`satId`,`satname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
