-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: Oct 30, 2025 at 10:46 AM
-- Server version: 8.0.43
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leaderboard`
--
CREATE DATABASE IF NOT EXISTS `leaderboard` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `leaderboard`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `current_individual_leaderboard`
-- (See below for the actual view)
--
CREATE TABLE `current_individual_leaderboard` (
`author_key` varchar(255)
,`avg_rank_improvement` decimal(38,2)
,`bugs_per_kloc` decimal(38,2)
,`climber_rank` int
,`climber_score` decimal(38,2)
,`code_rock_rank` int
,`code_rock_score` decimal(38,2)
,`code_shield_rank` int
,`code_shield_score` decimal(38,2)
,`code_smells_per_kloc` decimal(38,2)
,`craftsman_rank` int
,`craftsman_score` decimal(38,2)
,`created_at` timestamp
,`defect_terminator_rank` int
,`defect_terminator_score` int
,`developer_id` int
,`display_name` varchar(255)
,`id` int
,`ranking_period` date
,`total_kloc` decimal(38,2)
,`updated_at` timestamp
,`view_date` date
,`violations_introduced` int
,`violations_resolved` int
,`vulnerabilities_per_kloc` decimal(38,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `current_project_leaderboard`
-- (See below for the actual view)
--
CREATE TABLE `current_project_leaderboard` (
`bugs_per_kloc` decimal(38,2)
,`code_rock_rank` int
,`code_rock_score` decimal(38,2)
,`code_shield_rank` int
,`code_shield_score` decimal(38,2)
,`code_smells_per_kloc` decimal(38,2)
,`craftsman_rank` int
,`craftsman_score` decimal(38,2)
,`created_at` timestamp
,`defect_terminator_rank` int
,`defect_terminator_score` int
,`id` int
,`project_id` int
,`project_key` varchar(255)
,`project_name` varchar(255)
,`ranking_period` date
,`total_kloc` decimal(38,2)
,`updated_at` timestamp
,`view_date` date
,`violations_introduced` int
,`violations_resolved` int
,`vulnerabilities_per_kloc` decimal(38,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `id` int NOT NULL,
  `author_key` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`id`, `author_key`, `display_name`, `email`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'anjana.silva', 'Anjana Perera', 'anjana.silva@company.com', 1, '2025-10-23 03:56:33', '2025-10-23 06:25:30'),
(2, 'ravi.kumar', 'Madara Dias', 'ravi.kumar@company.com', 1, '2025-10-23 03:56:33', '2025-10-23 06:24:33'),
(3, 'kumara.perera', 'Kumara Perera', 'kumara.perera@company.com', 1, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(4, 'shalini.fernando', 'Shalini Fernando', 'shalini.fernando@company.com', 1, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(5, 'nimal.jayawardena', 'Nimal Jayawardena', 'nimal.jayawardena@company.com', 1, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(6, 'priya.wickrama', 'Priya Wickramasinghe', 'priya.wickrama@company.com', 1, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(7, 'ashan.mendis', 'Ashan Mendis', 'ashan.mendis@company.com', 1, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(8, 'lakshmi.dissanayake', 'Lakshmi Dissanayake', 'lakshmi.d@company.com', 1, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(9, 'rohan.bandara', 'Rohan Bandara', 'rohan.bandara@company.com', 0, '2025-10-23 03:56:33', '2025-10-23 03:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `developer_metrics_daily`
--

CREATE TABLE `developer_metrics_daily` (
  `id` int NOT NULL,
  `developer_id` int NOT NULL,
  `project_id` int NOT NULL,
  `date_recorded` date NOT NULL,
  `violations_introduced` int DEFAULT '0',
  `violations_resolved` int DEFAULT '0',
  `bugs_introduced` int DEFAULT '0',
  `vulnerabilities_introduced` int DEFAULT '0',
  `code_smells_introduced` int DEFAULT '0',
  `lines_of_code_contributed` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `developer_metrics_daily`
--

INSERT INTO `developer_metrics_daily` (`id`, `developer_id`, `project_id`, `date_recorded`, `violations_introduced`, `violations_resolved`, `bugs_introduced`, `vulnerabilities_introduced`, `code_smells_introduced`, `lines_of_code_contributed`, `created_at`) VALUES
(1, 1, 1, '2025-10-01', 2, 8, 1, 0, 1, 1200, '2025-10-23 03:56:33'),
(2, 1, 1, '2025-10-18', 1, 12, 0, 0, 1, 1500, '2025-10-23 03:56:33'),
(3, 1, 1, '2025-10-13', 3, 15, 1, 1, 1, 1800, '2025-10-23 03:56:33'),
(4, 1, 1, '2025-10-08', 1, 10, 0, 0, 1, 1350, '2025-10-23 03:56:33'),
(5, 1, 1, '2025-10-03', 2, 9, 1, 0, 1, 1600, '2025-10-23 03:56:33'),
(6, 2, 2, '2025-10-01', 4, 6, 2, 1, 1, 980, '2025-10-23 03:56:33'),
(7, 2, 2, '2025-10-18', 3, 7, 1, 0, 2, 1100, '2025-10-23 03:56:33'),
(8, 2, 2, '2025-10-13', 5, 8, 2, 1, 2, 1250, '2025-10-23 03:56:33'),
(9, 2, 2, '2025-10-08', 3, 5, 1, 1, 1, 890, '2025-10-23 03:56:33'),
(10, 2, 2, '2025-10-03', 4, 7, 2, 0, 1, 1050, '2025-10-23 03:56:33'),
(11, 3, 3, '2025-10-01', 6, 4, 3, 2, 1, 1100, '2025-10-23 03:56:33'),
(12, 3, 3, '2025-10-18', 7, 5, 3, 1, 3, 1300, '2025-10-23 03:56:33'),
(13, 3, 3, '2025-10-13', 5, 3, 2, 2, 1, 950, '2025-10-23 03:56:33'),
(14, 3, 3, '2025-10-08', 8, 6, 4, 1, 3, 1450, '2025-10-23 03:56:33'),
(15, 3, 3, '2025-10-03', 6, 4, 2, 2, 2, 1000, '2025-10-23 03:56:33'),
(16, 4, 4, '2025-10-01', 1, 7, 0, 0, 1, 1400, '2025-10-23 03:56:33'),
(17, 4, 4, '2025-10-18', 2, 9, 1, 0, 1, 1550, '2025-10-23 03:56:33'),
(18, 4, 4, '2025-10-13', 1, 11, 0, 0, 1, 1700, '2025-10-23 03:56:33'),
(19, 4, 4, '2025-10-08', 3, 8, 1, 0, 2, 1320, '2025-10-23 03:56:33'),
(20, 4, 4, '2025-10-03', 2, 10, 1, 0, 1, 1480, '2025-10-23 03:56:33'),
(21, 5, 5, '2025-10-01', 9, 3, 4, 3, 2, 850, '2025-10-23 03:56:33'),
(22, 5, 5, '2025-10-18', 10, 4, 5, 2, 3, 920, '2025-10-23 03:56:33'),
(23, 5, 5, '2025-10-13', 8, 2, 3, 3, 2, 780, '2025-10-23 03:56:33'),
(24, 5, 5, '2025-10-08', 11, 5, 5, 4, 2, 1050, '2025-10-23 03:56:33'),
(25, 5, 5, '2025-10-03', 9, 3, 4, 2, 3, 890, '2025-10-23 03:56:33'),
(26, 6, 1, '2025-10-01', 2, 6, 1, 0, 1, 1650, '2025-10-23 03:56:33'),
(27, 6, 1, '2025-10-18', 1, 8, 0, 0, 1, 1750, '2025-10-23 03:56:33'),
(28, 6, 1, '2025-10-13', 3, 7, 1, 1, 1, 1580, '2025-10-23 03:56:33'),
(29, 6, 1, '2025-10-08', 2, 9, 1, 0, 1, 1820, '2025-10-23 03:56:33'),
(30, 6, 1, '2025-10-03', 1, 7, 0, 0, 1, 1700, '2025-10-23 03:56:33'),
(31, 7, 3, '2025-10-01', 4, 5, 2, 1, 1, 1200, '2025-10-23 03:56:33'),
(32, 7, 3, '2025-10-18', 5, 6, 2, 1, 2, 1350, '2025-10-23 03:56:33'),
(33, 7, 3, '2025-10-13', 3, 4, 1, 1, 1, 1100, '2025-10-23 03:56:33'),
(34, 7, 3, '2025-10-08', 4, 7, 2, 0, 2, 1420, '2025-10-23 03:56:33'),
(35, 7, 3, '2025-10-03', 5, 5, 2, 1, 1, 1280, '2025-10-23 03:56:33'),
(36, 8, 2, '2025-10-01', 3, 7, 1, 1, 1, 1380, '2025-10-23 03:56:33'),
(37, 8, 2, '2025-10-18', 2, 9, 1, 0, 1, 1520, '2025-10-23 03:56:33'),
(38, 8, 2, '2025-10-13', 4, 8, 2, 1, 2, 1450, '2025-10-23 03:56:33'),
(39, 8, 2, '2025-10-08', 3, 10, 1, 0, 2, 1600, '2025-10-23 03:56:33'),
(40, 8, 2, '2025-10-03', 2, 8, 1, 1, 1, 1420, '2025-10-23 03:56:33'),
(41, 8, 2, '2025-09-26', 3, 4, 0, 1, 1, 1019, '2025-10-23 03:56:33'),
(42, 7, 3, '2025-09-26', 3, 10, 0, 1, 2, 991, '2025-10-23 03:56:33'),
(43, 6, 1, '2025-09-26', 2, 11, 1, 1, 2, 1016, '2025-10-23 03:56:33'),
(44, 4, 4, '2025-09-26', 4, 7, 1, 1, 1, 1453, '2025-10-23 03:56:33'),
(45, 3, 3, '2025-09-26', 2, 10, 2, 1, 2, 964, '2025-10-23 03:56:33'),
(46, 2, 2, '2025-09-26', 3, 8, 0, 1, 1, 1430, '2025-10-23 03:56:33'),
(47, 1, 1, '2025-09-26', 4, 11, 0, 1, 3, 1490, '2025-10-23 03:56:33'),
(48, 8, 2, '2025-09-21', 5, 8, 2, 1, 3, 1347, '2025-10-23 03:56:33'),
(49, 7, 3, '2025-09-21', 4, 8, 0, 1, 1, 1266, '2025-10-23 03:56:33'),
(50, 6, 1, '2025-09-21', 2, 10, 2, 0, 1, 1017, '2025-10-23 03:56:33'),
(51, 4, 4, '2025-09-21', 6, 5, 2, 1, 2, 1277, '2025-10-23 03:56:33'),
(52, 3, 3, '2025-09-21', 4, 11, 0, 0, 2, 1111, '2025-10-23 03:56:33'),
(53, 2, 2, '2025-09-21', 5, 7, 2, 0, 1, 1331, '2025-10-23 03:56:33'),
(54, 1, 1, '2025-09-21', 3, 8, 2, 1, 1, 995, '2025-10-23 03:56:33'),
(55, 8, 2, '2025-09-16', 5, 10, 2, 1, 2, 1388, '2025-10-23 03:56:33'),
(56, 7, 3, '2025-09-16', 5, 7, 0, 0, 2, 1339, '2025-10-23 03:56:33'),
(57, 6, 1, '2025-09-16', 3, 8, 2, 1, 2, 1118, '2025-10-23 03:56:33'),
(58, 4, 4, '2025-09-16', 2, 11, 2, 1, 1, 1446, '2025-10-23 03:56:33'),
(59, 3, 3, '2025-09-16', 4, 7, 1, 1, 1, 1170, '2025-10-23 03:56:33'),
(60, 2, 2, '2025-09-16', 3, 10, 0, 0, 3, 1246, '2025-10-23 03:56:33'),
(61, 1, 1, '2025-09-16', 3, 8, 2, 0, 3, 885, '2025-10-23 03:56:33'),
(62, 8, 2, '2025-09-11', 4, 5, 0, 0, 2, 1453, '2025-10-23 03:56:33'),
(63, 7, 3, '2025-09-11', 3, 10, 0, 0, 2, 1294, '2025-10-23 03:56:33'),
(64, 6, 1, '2025-09-11', 6, 8, 0, 0, 2, 1528, '2025-10-23 03:56:33'),
(65, 4, 4, '2025-09-11', 3, 7, 1, 0, 2, 856, '2025-10-23 03:56:33'),
(66, 3, 3, '2025-09-11', 6, 7, 1, 0, 3, 1589, '2025-10-23 03:56:33'),
(67, 2, 2, '2025-09-11', 6, 10, 0, 0, 2, 1406, '2025-10-23 03:56:33'),
(68, 1, 1, '2025-09-11', 4, 4, 2, 1, 3, 1595, '2025-10-23 03:56:33'),
(69, 8, 2, '2025-09-06', 6, 9, 1, 1, 1, 894, '2025-10-23 03:56:33'),
(70, 7, 3, '2025-09-06', 2, 7, 2, 0, 3, 1542, '2025-10-23 03:56:33'),
(71, 6, 1, '2025-09-06', 2, 8, 1, 0, 1, 1567, '2025-10-23 03:56:33'),
(72, 4, 4, '2025-09-06', 4, 10, 1, 0, 2, 1189, '2025-10-23 03:56:33'),
(73, 3, 3, '2025-09-06', 5, 11, 1, 0, 3, 1441, '2025-10-23 03:56:33'),
(74, 2, 2, '2025-09-06', 5, 6, 0, 1, 1, 854, '2025-10-23 03:56:33'),
(75, 1, 1, '2025-09-06', 5, 9, 0, 1, 3, 1161, '2025-10-23 03:56:33'),
(76, 8, 2, '2025-09-01', 4, 8, 2, 0, 3, 1235, '2025-10-23 03:56:33'),
(77, 7, 3, '2025-09-01', 3, 5, 0, 0, 1, 1232, '2025-10-23 03:56:33'),
(78, 6, 1, '2025-09-01', 2, 5, 1, 0, 2, 1106, '2025-10-23 03:56:33'),
(79, 4, 4, '2025-09-01', 4, 5, 1, 0, 3, 1188, '2025-10-23 03:56:33'),
(80, 3, 3, '2025-09-01', 3, 9, 2, 1, 2, 815, '2025-10-23 03:56:33'),
(81, 2, 2, '2025-09-01', 4, 8, 0, 1, 1, 846, '2025-10-23 03:56:33'),
(82, 1, 1, '2025-09-01', 5, 10, 2, 1, 3, 1142, '2025-10-23 03:56:33'),
(83, 8, 2, '2025-08-27', 4, 5, 2, 1, 3, 989, '2025-10-23 03:56:33'),
(84, 7, 3, '2025-08-27', 3, 5, 2, 0, 2, 960, '2025-10-23 03:56:33'),
(85, 6, 1, '2025-08-27', 5, 8, 2, 1, 1, 1558, '2025-10-23 03:56:33'),
(86, 4, 4, '2025-08-27', 6, 11, 2, 0, 2, 1328, '2025-10-23 03:56:33'),
(87, 3, 3, '2025-08-27', 2, 4, 1, 0, 3, 1518, '2025-10-23 03:56:33'),
(88, 2, 2, '2025-08-27', 4, 5, 1, 0, 3, 1179, '2025-10-23 03:56:33'),
(89, 1, 1, '2025-08-27', 2, 7, 1, 1, 1, 1252, '2025-10-23 03:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `individual_rankings`
--

CREATE TABLE `individual_rankings` (
  `id` int NOT NULL,
  `developer_id` int NOT NULL,
  `ranking_period` date NOT NULL,
  `defect_terminator_score` int DEFAULT '0',
  `defect_terminator_rank` int DEFAULT '999',
  `violations_introduced` int DEFAULT '0',
  `violations_resolved` int DEFAULT '0',
  `code_rock_score` decimal(38,2) DEFAULT NULL,
  `code_rock_rank` int DEFAULT '999',
  `bugs_per_kloc` decimal(38,2) DEFAULT NULL,
  `code_shield_score` decimal(38,2) DEFAULT NULL,
  `code_shield_rank` int DEFAULT '999',
  `vulnerabilities_per_kloc` decimal(38,2) DEFAULT NULL,
  `craftsman_score` decimal(38,2) DEFAULT NULL,
  `craftsman_rank` int DEFAULT '999',
  `code_smells_per_kloc` decimal(38,2) DEFAULT NULL,
  `climber_score` decimal(38,2) DEFAULT NULL,
  `climber_rank` int DEFAULT '999',
  `avg_rank_improvement` decimal(38,2) DEFAULT NULL,
  `total_kloc` decimal(38,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `individual_rankings`
--

INSERT INTO `individual_rankings` (`id`, `developer_id`, `ranking_period`, `defect_terminator_score`, `defect_terminator_rank`, `violations_introduced`, `violations_resolved`, `code_rock_score`, `code_rock_rank`, `bugs_per_kloc`, `code_shield_score`, `code_shield_rank`, `vulnerabilities_per_kloc`, `craftsman_score`, `craftsman_rank`, `code_smells_per_kloc`, `climber_score`, `climber_rank`, `avg_rank_improvement`, `total_kloc`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-10-01', 45, 1, 9, 54, 0.35, 2, 0.35, 0.14, 1, 0.14, 0.68, 3, 0.68, 85.50, 2, 2.50, 7.45, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(2, 4, '2025-10-01', 36, 2, 9, 45, 0.42, 3, 0.42, 0.00, 1, 0.00, 0.85, 4, 0.85, 7.27, 92, 3.20, 1.80, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(3, 6, '2025-10-01', 32, 3, 9, 41, 0.38, 2, 0.38, 0.12, 2, 0.12, 0.59, 1, 0.59, 78.20, 3, 1.80, 8.45, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(4, 8, '2025-10-01', 28, 4, 14, 42, 0.63, 4, 0.63, 0.31, 3, 0.31, 0.94, 5, 0.94, 95.80, 1, 4.20, 7.37, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(5, 2, '2025-10-01', 14, 5, 19, 33, 1.45, 5, 1.45, 0.58, 4, 0.58, 1.34, 6, 1.34, 68.40, 5, 0.80, 5.27, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(6, 7, '2025-10-01', 8, 6, 21, 27, 1.58, 6, 1.58, 0.79, 6, 0.79, 1.58, 7, 1.58, 62.10, 6, 0.20, 6.35, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(7, 3, '2025-10-01', -4, 7, 32, 22, 2.34, 7, 2.34, 1.68, 7, 1.68, 1.89, 8, 1.89, 55.30, 7, -0.50, 5.80, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(8, 5, '2025-10-01', -30, 8, 47, 17, 4.52, 8, 4.52, 3.15, 8, 3.15, 2.71, 9, 2.71, 48.70, 8, -1.20, 4.49, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(9, 1, '2025-09-01', 38, 2, 12, 50, 0.42, 3, 0.42, 0.18, 2, 0.18, 0.75, 4, 0.75, 72.30, 4, 1.80, 6.85, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(10, 2, '2025-09-01', 18, 4, 15, 33, 1.52, 5, 1.52, 0.62, 5, 0.62, 1.38, 6, 1.38, 65.20, 6, 0.50, 5.10, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(11, 3, '2025-09-01', 2, 6, 28, 30, 2.18, 6, 2.18, 1.45, 6, 1.45, 1.82, 7, 1.82, 58.70, 7, -0.20, 5.65, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(12, 4, '2025-09-01', 32, 3, 11, 43, 0.48, 3, 0.48, 0.14, 2, 0.14, 0.92, 5, 0.92, 68.90, 5, 1.20, 7.05, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(13, 5, '2025-09-01', -25, 8, 45, 20, 4.25, 8, 4.25, 2.98, 8, 2.98, 2.65, 8, 2.65, 52.10, 8, -0.80, 4.32, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(14, 6, '2025-09-01', 28, 3, 12, 40, 0.45, 3, 0.45, 0.16, 3, 0.16, 0.82, 4, 0.82, 74.50, 4, 1.50, 8.15, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(15, 7, '2025-09-01', 12, 5, 18, 30, 1.48, 5, 1.48, 0.72, 5, 0.72, 1.52, 7, 1.52, 64.80, 6, 0.40, 6.20, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(16, 8, '2025-09-01', 8, 7, 22, 30, 1.85, 7, 1.85, 0.95, 7, 0.95, 1.75, 7, 1.75, 58.30, 7, -0.50, 6.85, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(17, 1, '2025-08-01', 35, 2, 14, 49, 0.52, 4, 0.52, 0.25, 3, 0.25, 0.88, 5, 0.88, NULL, 999, NULL, 6.45, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(18, 2, '2025-08-01', 22, 3, 13, 35, 1.38, 4, 1.38, 0.55, 4, 0.55, 1.28, 5, 1.28, NULL, 999, NULL, 5.05, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(19, 3, '2025-08-01', 8, 5, 25, 33, 2.05, 6, 2.05, 1.32, 6, 1.32, 1.75, 6, 1.75, NULL, 999, NULL, 5.45, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(20, 4, '2025-08-01', 28, 3, 13, 41, 0.55, 4, 0.55, 0.21, 3, 0.21, 1.05, 5, 1.05, NULL, 999, NULL, 6.85, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(21, 5, '2025-08-01', -18, 8, 42, 24, 4.05, 8, 4.05, 2.75, 8, 2.75, 2.55, 8, 2.55, NULL, 999, NULL, 4.15, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(22, 6, '2025-08-01', 42, 1, 10, 52, 0.32, 1, 0.32, 0.12, 1, 0.12, 0.65, 2, 0.65, NULL, 999, NULL, 7.95, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(23, 7, '2025-08-01', 16, 4, 16, 32, 1.42, 5, 1.42, 0.68, 5, 0.68, 1.48, 6, 1.48, NULL, 999, NULL, 6.05, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(24, 8, '2025-08-01', -5, 7, 28, 23, 2.15, 7, 2.15, 1.25, 7, 1.25, 2.05, 8, 2.05, NULL, 999, NULL, 6.35, '2025-10-23 03:56:33', '2025-10-23 03:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` int NOT NULL,
  `issue_key` varchar(255) NOT NULL,
  `project_id` int NOT NULL,
  `developer_id` int DEFAULT NULL,
  `rule_key` varchar(255) DEFAULT NULL,
  `severity` enum('BLOCKER','CRITICAL','MAJOR','MINOR','INFO') DEFAULT 'MAJOR',
  `issue_type` enum('BUG','VULNERABILITY','CODE_SMELL') NOT NULL,
  `status` enum('OPEN','CONFIRMED','REOPENED','RESOLVED','CLOSED') DEFAULT 'OPEN',
  `component_path` varchar(500) DEFAULT NULL,
  `line_number` int DEFAULT NULL,
  `message` text,
  `effort_minutes` int DEFAULT '0',
  `created_date` timestamp NULL DEFAULT NULL,
  `resolved_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `sonar_created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sonar_updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `issue_key`, `project_id`, `developer_id`, `rule_key`, `severity`, `issue_type`, `status`, `component_path`, `line_number`, `message`, `effort_minutes`, `created_date`, `resolved_date`, `updated_date`, `sonar_created_at`, `sonar_updated_at`) VALUES
(1, 'BUG-001', 1, 3, 'java:S2259', 'CRITICAL', 'BUG', 'OPEN', 'src/main/java/com/ecommerce/OrderService.java', 145, 'Null pointer dereference', 30, '2025-10-18 03:56:33', NULL, '2025-10-22 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(2, 'BUG-002', 1, 5, 'java:S1192', 'MAJOR', 'BUG', 'RESOLVED', 'src/main/java/com/ecommerce/PaymentProcessor.java', 78, 'String literals should not be duplicated', 15, '2025-10-08 03:56:33', '2025-10-20 03:56:33', '2025-10-20 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(3, 'BUG-003', 2, 2, 'swift:S1234', 'BLOCKER', 'BUG', 'OPEN', 'Sources/ViewControllers/CartViewController.swift', 234, 'Potential memory leak', 60, '2025-10-21 03:56:33', NULL, '2025-10-23 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(4, 'BUG-004', 3, 7, 'typescript:S3776', 'MAJOR', 'BUG', 'RESOLVED', 'src/components/Dashboard.tsx', 456, 'Cognitive complexity too high', 45, '2025-10-03 03:56:33', '2025-10-13 03:56:33', '2025-10-13 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(5, 'VULN-001', 1, 3, 'java:S2076', 'CRITICAL', 'VULNERABILITY', 'OPEN', 'src/main/java/com/ecommerce/SearchController.java', 89, 'SQL injection vulnerability', 90, '2025-10-16 03:56:33', NULL, '2025-10-21 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(6, 'VULN-002', 4, 4, 'java:S5131', 'BLOCKER', 'VULNERABILITY', 'RESOLVED', 'src/main/java/com/payment/CryptoService.java', 123, 'Weak cryptographic algorithm', 120, '2025-09-28 03:56:33', '2025-10-18 03:56:33', '2025-10-18 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(7, 'VULN-003', 2, 8, 'swift:S4790', 'CRITICAL', 'VULNERABILITY', 'CONFIRMED', 'Sources/Security/AuthManager.swift', 67, 'Insecure hash function', 75, '2025-10-11 03:56:33', NULL, '2025-10-19 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(8, 'VULN-004', 3, 3, 'typescript:S5122', 'MAJOR', 'VULNERABILITY', 'RESOLVED', 'src/utils/api-client.ts', 34, 'CORS misconfiguration', 30, '2025-09-23 03:56:33', '2025-10-15 03:56:33', '2025-10-15 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(9, 'SMELL-001', 1, 1, 'java:S1186', 'MINOR', 'CODE_SMELL', 'RESOLVED', 'src/main/java/com/ecommerce/util/Helper.java', 56, 'Method should not be empty', 5, '2025-10-05 03:56:33', '2025-10-11 03:56:33', '2025-10-11 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(10, 'SMELL-002', 2, 2, 'swift:S1067', 'MAJOR', 'CODE_SMELL', 'OPEN', 'Sources/Models/Product.swift', 178, 'Expression complexity too high', 20, '2025-10-15 03:56:33', NULL, '2025-10-22 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(11, 'SMELL-003', 3, 6, 'typescript:S1541', 'MINOR', 'CODE_SMELL', 'RESOLVED', 'src/services/notification-service.ts', 234, 'Function complexity too high', 25, '2025-10-01 03:56:33', '2025-10-17 03:56:33', '2025-10-17 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(12, 'SMELL-004', 5, 5, 'python:S1192', 'MAJOR', 'CODE_SMELL', 'OPEN', 'src/analytics/data_processor.py', 456, 'Duplicated string literals', 15, '2025-10-19 03:56:33', NULL, '2025-10-23 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(13, 'SMELL-005', 1, 6, 'java:S1481', 'INFO', 'CODE_SMELL', 'RESOLVED', 'src/main/java/com/ecommerce/ProductService.java', 89, 'Unused local variable', 5, '2025-10-09 03:56:33', '2025-10-16 03:56:33', '2025-10-16 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(14, 'SMELL-006', 4, 4, 'java:S3457', 'MINOR', 'CODE_SMELL', 'OPEN', 'src/main/java/com/payment/TransactionLogger.java', 112, 'Printf-style format should be used', 10, '2025-10-17 03:56:33', NULL, '2025-10-22 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(15, 'BUG-005', 1, 5, 'java:S2139', 'MAJOR', 'BUG', 'OPEN', 'src/main/java/com/ecommerce/InventoryService.java', 234, 'Exception should not be created without being thrown', 20, '2025-10-20 03:56:33', NULL, '2025-10-23 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(16, 'BUG-006', 3, 3, 'typescript:S1848', 'CRITICAL', 'BUG', 'CONFIRMED', 'src/services/user-service.ts', 89, 'Objects should not be created to be dropped immediately', 25, '2025-10-17 03:56:33', NULL, '2025-10-21 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(17, 'BUG-007', 5, 5, 'python:S3358', 'MAJOR', 'BUG', 'OPEN', 'src/analytics/report_generator.py', 567, 'Ternary operators should not be nested', 15, '2025-10-22 03:56:33', NULL, '2025-10-23 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(18, 'VULN-005', 1, 5, 'java:S2077', 'BLOCKER', 'VULNERABILITY', 'OPEN', 'src/main/java/com/ecommerce/UserController.java', 345, 'Formatted SQL query detected', 150, '2025-10-13 03:56:33', NULL, '2025-10-20 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(19, 'VULN-006', 3, 7, 'typescript:S4426', 'CRITICAL', 'VULNERABILITY', 'CONFIRMED', 'src/utils/crypto.ts', 45, 'Cryptographic keys should be robust', 90, '2025-10-15 03:56:33', NULL, '2025-10-22 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(20, 'VULN-007', 4, 1, 'java:S2068', 'BLOCKER', 'VULNERABILITY', 'RESOLVED', 'src/main/java/com/payment/Config.java', 23, 'Credentials should not be hard-coded', 60, '2025-09-18 03:56:33', '2025-09-25 03:56:33', '2025-09-25 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(21, 'VULN-008', 2, 2, 'swift:S2068', 'CRITICAL', 'VULNERABILITY', 'RESOLVED', 'Sources/Config/APIConfig.swift', 12, 'Credentials should not be hard-coded', 45, '2025-09-13 03:56:33', '2025-09-21 03:56:33', '2025-09-21 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(22, 'SMELL-007', 1, 3, 'java:S1117', 'MINOR', 'CODE_SMELL', 'OPEN', 'src/main/java/com/ecommerce/CartService.java', 178, 'Local variables should not shadow class fields', 10, '2025-10-18 03:56:33', NULL, '2025-10-22 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(23, 'SMELL-008', 2, 8, 'swift:S1142', 'MAJOR', 'CODE_SMELL', 'RESOLVED', 'Sources/ViewControllers/ProductListVC.swift', 289, 'Methods should not have too many parameters', 30, '2025-10-07 03:56:33', '2025-10-14 03:56:33', '2025-10-14 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(24, 'SMELL-009', 3, 6, 'typescript:S3776', 'MAJOR', 'CODE_SMELL', 'RESOLVED', 'src/components/DataTable.tsx', 456, 'Cognitive complexity of functions should not be too high', 40, '2025-10-04 03:56:33', '2025-10-12 03:56:33', '2025-10-12 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(25, 'SMELL-010', 4, 4, 'java:S1612', 'MINOR', 'CODE_SMELL', 'RESOLVED', 'src/main/java/com/payment/ValidationService.java', 234, 'Lambda should be replaced with method reference', 5, '2025-10-10 03:56:33', '2025-10-15 03:56:33', '2025-10-15 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(26, 'SMELL-011', 5, 5, 'python:S3776', 'MAJOR', 'CODE_SMELL', 'OPEN', 'src/analytics/data_transformer.py', 678, 'Cognitive complexity too high', 35, '2025-10-21 03:56:33', NULL, '2025-10-23 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(27, 'SMELL-012', 1, 1, 'java:S1066', 'MINOR', 'CODE_SMELL', 'RESOLVED', 'src/main/java/com/ecommerce/DiscountCalculator.java', 145, 'Mergeable if statements should be combined', 10, '2025-10-02 03:56:33', '2025-10-09 03:56:33', '2025-10-09 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(28, 'SMELL-013', 2, 2, 'swift:S1854', 'MINOR', 'CODE_SMELL', 'OPEN', 'Sources/Services/NetworkService.swift', 123, 'Dead stores should be removed', 8, '2025-10-16 03:56:33', NULL, '2025-10-21 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(29, 'SMELL-014', 3, 7, 'typescript:S1121', 'MINOR', 'CODE_SMELL', 'RESOLVED', 'src/utils/validators.ts', 67, 'Assignments should not be made from within sub-expressions', 12, '2025-09-29 03:56:33', '2025-10-06 03:56:33', '2025-10-06 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(30, 'SMELL-015', 4, 4, 'java:S1168', 'MINOR', 'CODE_SMELL', 'RESOLVED', 'src/main/java/com/payment/ReportService.java', 89, 'Empty arrays and collections should be returned instead of null', 8, '2025-10-12 03:56:33', '2025-10-18 03:56:33', '2025-10-18 03:56:33', '2025-10-23 03:56:33', '2025-10-23 03:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `monthly_champions`
--

CREATE TABLE `monthly_champions` (
  `id` int NOT NULL,
  `period` date NOT NULL,
  `category` enum('DEFECT_TERMINATOR','CODE_ROCK','CODE_SHIELD','CRAFTSMAN','CLIMBER') NOT NULL,
  `entity_type` enum('INDIVIDUAL','PROJECT') NOT NULL,
  `entity_id` int NOT NULL,
  `entity_name` varchar(255) NOT NULL,
  `score` decimal(38,2) NOT NULL,
  `metric_details` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `monthly_champions`
--

INSERT INTO `monthly_champions` (`id`, `period`, `category`, `entity_type`, `entity_id`, `entity_name`, `score`, `metric_details`, `created_at`) VALUES
(1, '2025-10-01', 'DEFECT_TERMINATOR', 'INDIVIDUAL', 1, 'Anjana Silva', 45.00, '{\"net_improvement\": 45, \"violations_resolved\": 54, \"violations_introduced\": 9}', '2025-10-23 03:56:33'),
(2, '2025-10-01', 'CODE_ROCK', 'INDIVIDUAL', 6, 'Priya Wickramasinghe', 0.38, '{\"kloc\": 8.45, \"total_bugs\": 3, \"bugs_per_kloc\": 0.38}', '2025-10-23 03:56:33'),
(3, '2025-10-01', 'CODE_SHIELD', 'INDIVIDUAL', 4, 'Shalini Fernando', 0.00, '{\"kloc\": 7.27, \"total_vulnerabilities\": 0, \"vulnerabilities_per_kloc\": 0.0}', '2025-10-23 03:56:33'),
(4, '2025-10-01', 'CRAFTSMAN', 'INDIVIDUAL', 6, 'Priya Wickramasinghe', 0.59, '{\"kloc\": 8.45, \"total_smells\": 5, \"code_smells_per_kloc\": 0.59}', '2025-10-23 03:56:33'),
(5, '2025-10-01', 'CLIMBER', 'INDIVIDUAL', 8, 'Lakshmi Dissanayake', 95.80, '{\"current_avg_rank\": 3.0, \"previous_avg_rank\": 7.2, \"avg_rank_improvement\": 4.2}', '2025-10-23 03:56:33'),
(6, '2025-10-01', 'DEFECT_TERMINATOR', 'PROJECT', 2, 'iOS Mobile Application', 42.00, '{\"net_improvement\": 42, \"violations_resolved\": 80, \"violations_introduced\": 38}', '2025-10-23 03:56:33'),
(7, '2025-10-01', 'CODE_ROCK', 'PROJECT', 2, 'iOS Mobile Application', 0.32, '{\"kloc\": 87.0, \"total_bugs\": 28, \"bugs_per_kloc\": 0.32}', '2025-10-23 03:56:33'),
(8, '2025-10-01', 'CODE_SHIELD', 'PROJECT', 2, 'iOS Mobile Application', 0.09, '{\"kloc\": 87.0, \"total_vulnerabilities\": 8, \"vulnerabilities_per_kloc\": 0.09}', '2025-10-23 03:56:33'),
(9, '2025-10-01', 'CRAFTSMAN', 'PROJECT', 2, 'iOS Mobile Application', 1.79, '{\"kloc\": 87.0, \"total_smells\": 156, \"code_smells_per_kloc\": 1.79}', '2025-10-23 03:56:33'),
(10, '2025-09-01', 'DEFECT_TERMINATOR', 'INDIVIDUAL', 1, 'Anjana Silva', 38.00, '{\"net_improvement\": 38, \"violations_resolved\": 50, \"violations_introduced\": 12}', '2025-10-23 03:56:33'),
(11, '2025-09-01', 'CODE_ROCK', 'INDIVIDUAL', 1, 'Anjana Silva', 0.42, '{\"kloc\": 6.85, \"total_bugs\": 3, \"bugs_per_kloc\": 0.42}', '2025-10-23 03:56:33'),
(12, '2025-09-01', 'CODE_SHIELD', 'INDIVIDUAL', 4, 'Shalini Fernando', 0.14, '{\"kloc\": 7.05, \"total_vulnerabilities\": 1, \"vulnerabilities_per_kloc\": 0.14}', '2025-10-23 03:56:33'),
(13, '2025-09-01', 'CRAFTSMAN', 'INDIVIDUAL', 1, 'Anjana Silva', 0.75, '{\"kloc\": 6.85, \"total_smells\": 5, \"code_smells_per_kloc\": 0.75}', '2025-10-23 03:56:33'),
(14, '2025-09-01', 'CLIMBER', 'INDIVIDUAL', 7, 'Ashan Mendis', 88.50, '{\"current_avg_rank\": 2.7, \"previous_avg_rank\": 6.5, \"avg_rank_improvement\": 3.8}', '2025-10-23 03:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int NOT NULL,
  `project_key` varchar(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_key`, `project_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ecommerce-backend', 'E-Commerce Backend API', 1, '2025-10-23 03:56:32', '2025-10-23 03:56:32'),
(2, 'mobile-app-ios', 'iOS Mobile Application', 1, '2025-10-23 03:56:32', '2025-10-23 03:56:32'),
(3, 'web-dashboard', 'Admin Web Dashboard', 1, '2025-10-23 03:56:32', '2025-10-23 03:56:32'),
(4, 'payment-service', 'Payment Processing Service', 1, '2025-10-23 03:56:32', '2025-10-23 03:56:32'),
(5, 'analytics-engine', 'Analytics Data Engine', 1, '2025-10-23 03:56:32', '2025-10-23 03:56:32'),
(6, 'legacy-crm', 'Legacy CRM System', 0, '2025-10-23 03:56:32', '2025-10-23 03:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `project_metrics_daily`
--

CREATE TABLE `project_metrics_daily` (
  `id` int NOT NULL,
  `project_id` int NOT NULL,
  `date_recorded` date NOT NULL,
  `bugs_count` int DEFAULT '0',
  `vulnerabilities_count` int DEFAULT '0',
  `code_smells_count` int DEFAULT '0',
  `lines_of_code` int DEFAULT '0',
  `reliability_rating` decimal(3,2) DEFAULT '0.00',
  `security_rating` decimal(3,2) DEFAULT '0.00',
  `maintainability_rating` decimal(3,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project_metrics_daily`
--

INSERT INTO `project_metrics_daily` (`id`, `project_id`, `date_recorded`, `bugs_count`, `vulnerabilities_count`, `code_smells_count`, `lines_of_code`, `reliability_rating`, `security_rating`, `maintainability_rating`, `created_at`) VALUES
(1, 1, '2025-10-23', 47, 16, 239, 125000, 2.50, 2.80, 3.20, '2025-10-23 03:56:33'),
(2, 1, '2025-10-22', 53, 16, 246, 125150, 2.49, 2.79, 3.19, '2025-10-23 03:56:33'),
(3, 1, '2025-10-21', 46, 16, 244, 125300, 2.48, 2.78, 3.18, '2025-10-23 03:56:33'),
(4, 1, '2025-10-20', 63, 18, 254, 125450, 2.47, 2.78, 3.16, '2025-10-23 03:56:33'),
(5, 1, '2025-10-19', 62, 18, 239, 125600, 2.46, 2.77, 3.15, '2025-10-23 03:56:33'),
(6, 1, '2025-10-18', 47, 13, 276, 125750, 2.45, 2.76, 3.14, '2025-10-23 03:56:33'),
(7, 1, '2025-10-16', 60, 14, 262, 126050, 2.43, 2.74, 3.12, '2025-10-23 03:56:33'),
(8, 1, '2025-10-09', 45, 10, 268, 127100, 2.36, 2.69, 3.03, '2025-10-23 03:56:33'),
(9, 1, '2025-10-02', 40, 15, 220, 128150, 2.29, 2.63, 2.95, '2025-10-23 03:56:33'),
(10, 1, '2025-09-25', 44, 7, 248, 129200, 2.22, 2.58, 2.86, '2025-10-23 03:56:33'),
(11, 1, '2025-09-18', 46, 7, 240, 130250, 2.15, 2.52, 2.78, '2025-10-23 03:56:33'),
(12, 1, '2025-09-11', 48, 9, 258, 131300, 2.08, 2.46, 2.70, '2025-10-23 03:56:33'),
(13, 1, '2025-09-04', 44, 8, 206, 132350, 2.01, 2.41, 2.61, '2025-10-23 03:56:33'),
(14, 1, '2025-08-28', 36, 5, 206, 133400, 1.94, 2.35, 2.53, '2025-10-23 03:56:33'),
(15, 1, '2025-08-21', 41, 0, 212, 134450, 1.87, 2.30, 2.44, '2025-10-23 03:56:33'),
(16, 1, '2025-08-14', 37, 5, 225, 135500, 1.80, 2.24, 2.36, '2025-10-23 03:56:33'),
(17, 1, '2025-08-07', 20, 2, 236, 136550, 1.73, 2.18, 2.28, '2025-10-23 03:56:33'),
(18, 1, '2025-07-31', 29, -2, 196, 137600, 1.66, 2.13, 2.19, '2025-10-23 03:56:33'),
(19, 1, '2025-07-26', 28, 0, 228, 138350, 1.61, 2.09, 2.13, '2025-10-23 03:56:33'),
(32, 2, '2025-10-23', 28, 10, 159, 87000, 2.20, 2.40, 2.90, '2025-10-23 03:56:33'),
(33, 2, '2025-10-22', 31, 8, 178, 87100, 2.19, 2.39, 2.89, '2025-10-23 03:56:33'),
(34, 2, '2025-10-21', 30, 10, 160, 87200, 2.18, 2.39, 2.88, '2025-10-23 03:56:33'),
(35, 2, '2025-10-20', 34, 10, 179, 87300, 2.17, 2.38, 2.87, '2025-10-23 03:56:33'),
(36, 2, '2025-10-19', 32, 10, 165, 87400, 2.16, 2.37, 2.86, '2025-10-23 03:56:33'),
(37, 2, '2025-10-18', 34, 11, 182, 87500, 2.16, 2.37, 2.85, '2025-10-23 03:56:33'),
(38, 2, '2025-10-16', 37, 10, 178, 87700, 2.14, 2.35, 2.83, '2025-10-23 03:56:33'),
(39, 2, '2025-10-09', 36, 8, 162, 88400, 2.07, 2.30, 2.76, '2025-10-23 03:56:33'),
(40, 2, '2025-10-02', 28, 4, 157, 89100, 2.01, 2.25, 2.69, '2025-10-23 03:56:33'),
(41, 2, '2025-09-25', 32, 3, 167, 89800, 1.95, 2.20, 2.62, '2025-10-23 03:56:33'),
(42, 2, '2025-09-18', 19, 2, 149, 90500, 1.89, 2.16, 2.55, '2025-10-23 03:56:33'),
(43, 2, '2025-09-11', 26, 2, 156, 91200, 1.82, 2.11, 2.48, '2025-10-23 03:56:33'),
(44, 2, '2025-09-04', 19, 4, 141, 91900, 1.76, 2.06, 2.41, '2025-10-23 03:56:33'),
(45, 2, '2025-08-28', 16, -1, 163, 92600, 1.70, 2.01, 2.34, '2025-10-23 03:56:33'),
(46, 2, '2025-08-21', 12, 0, 141, 93300, 1.63, 1.96, 2.27, '2025-10-23 03:56:33'),
(47, 2, '2025-08-14', 10, -2, 151, 94000, 1.57, 1.91, 2.20, '2025-10-23 03:56:33'),
(48, 2, '2025-08-07', 15, -2, 146, 94700, 1.51, 1.86, 2.13, '2025-10-23 03:56:33'),
(49, 2, '2025-07-31', 17, -2, 142, 95400, 1.44, 1.81, 2.06, '2025-10-23 03:56:33'),
(50, 2, '2025-07-26', 16, -7, 146, 95900, 1.40, 1.78, 2.01, '2025-10-23 03:56:33'),
(63, 3, '2025-10-23', 38, 15, 235, 95000, 2.70, 3.00, 3.40, '2025-10-23 03:56:33'),
(64, 3, '2025-10-22', 39, 19, 212, 95120, 2.69, 2.99, 3.39, '2025-10-23 03:56:33'),
(65, 3, '2025-10-21', 48, 20, 231, 95240, 2.68, 2.98, 3.37, '2025-10-23 03:56:33'),
(66, 3, '2025-10-20', 34, 17, 206, 95360, 2.67, 2.97, 3.36, '2025-10-23 03:56:33'),
(67, 3, '2025-10-19', 46, 16, 208, 95480, 2.66, 2.96, 3.35, '2025-10-23 03:56:33'),
(68, 3, '2025-10-18', 40, 17, 200, 95600, 2.65, 2.96, 3.34, '2025-10-23 03:56:33'),
(69, 3, '2025-10-16', 34, 14, 230, 95840, 2.62, 2.94, 3.31, '2025-10-23 03:56:33'),
(70, 3, '2025-10-09', 35, 14, 204, 96680, 2.55, 2.87, 3.22, '2025-10-23 03:56:33'),
(71, 3, '2025-10-02', 39, 17, 198, 97520, 2.47, 2.81, 3.13, '2025-10-23 03:56:33'),
(72, 3, '2025-09-25', 34, 9, 203, 98360, 2.39, 2.75, 3.04, '2025-10-23 03:56:33'),
(73, 3, '2025-09-18', 27, 9, 218, 99200, 2.32, 2.69, 2.95, '2025-10-23 03:56:33'),
(74, 3, '2025-09-11', 22, 12, 207, 100040, 2.24, 2.62, 2.85, '2025-10-23 03:56:33'),
(75, 3, '2025-09-04', 23, 5, 202, 100880, 2.16, 2.56, 2.76, '2025-10-23 03:56:33'),
(76, 3, '2025-08-28', 19, 4, 192, 101720, 2.08, 2.50, 2.67, '2025-10-23 03:56:33'),
(77, 3, '2025-08-21', 23, 5, 202, 102560, 2.01, 2.43, 2.58, '2025-10-23 03:56:33'),
(78, 3, '2025-08-14', 22, 7, 194, 103400, 1.93, 2.37, 2.49, '2025-10-23 03:56:33'),
(79, 3, '2025-08-07', 23, 2, 166, 104240, 1.85, 2.31, 2.40, '2025-10-23 03:56:33'),
(80, 3, '2025-07-31', 16, 1, 186, 105080, 1.78, 2.24, 2.31, '2025-10-23 03:56:33'),
(81, 3, '2025-07-26', 9, -2, 162, 105680, 1.72, 2.20, 2.24, '2025-10-23 03:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `project_rankings`
--

CREATE TABLE `project_rankings` (
  `id` int NOT NULL,
  `project_id` int NOT NULL,
  `ranking_period` date NOT NULL,
  `defect_terminator_score` int DEFAULT '0',
  `defect_terminator_rank` int DEFAULT '999',
  `violations_introduced` int DEFAULT '0',
  `violations_resolved` int DEFAULT '0',
  `code_rock_score` decimal(38,2) DEFAULT NULL,
  `code_rock_rank` int DEFAULT '999',
  `bugs_per_kloc` decimal(38,2) DEFAULT NULL,
  `code_shield_score` decimal(38,2) DEFAULT NULL,
  `code_shield_rank` int DEFAULT '999',
  `vulnerabilities_per_kloc` decimal(38,2) DEFAULT NULL,
  `craftsman_score` decimal(38,2) DEFAULT NULL,
  `craftsman_rank` int DEFAULT '999',
  `code_smells_per_kloc` decimal(38,2) DEFAULT NULL,
  `total_kloc` decimal(38,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project_rankings`
--

INSERT INTO `project_rankings` (`id`, `project_id`, `ranking_period`, `defect_terminator_score`, `defect_terminator_rank`, `violations_introduced`, `violations_resolved`, `code_rock_score`, `code_rock_rank`, `bugs_per_kloc`, `code_shield_score`, `code_shield_rank`, `vulnerabilities_per_kloc`, `craftsman_score`, `craftsman_rank`, `code_smells_per_kloc`, `total_kloc`, `created_at`, `updated_at`) VALUES
(1, 2, '2025-10-01', 42, 1, 38, 80, 0.32, 1, 0.32, 0.09, 1, 0.09, 1.79, 1, 1.79, 87.00, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(2, 4, '2025-10-01', 36, 2, 45, 81, 0.45, 2, 0.45, 0.15, 2, 0.15, 1.85, 2, 1.85, 7.27, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(3, 1, '2025-10-01', 77, 3, 58, 135, 0.36, 2, 0.36, 0.13, 1, 0.13, 0.64, 3, 0.64, 125.00, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(4, 3, '2025-10-01', 13, 4, 53, 66, 1.89, 4, 1.89, 1.05, 4, 1.05, 2.11, 4, 2.11, 95.00, '2025-10-23 03:56:33', '2025-10-23 03:56:33'),
(5, 5, '2025-10-01', -30, 5, 47, 17, 4.52, 5, 4.52, 3.15, 5, 3.15, 2.71, 5, 2.71, 4.49, '2025-10-23 03:56:33', '2025-10-23 03:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `sonarqube_config`
--

CREATE TABLE `sonarqube_config` (
  `id` int NOT NULL,
  `base_url` varchar(255) NOT NULL,
  `api_token` varchar(500) NOT NULL,
  `sync_frequency` enum('DAILY','WEEKLY','MANUAL') DEFAULT 'DAILY',
  `severity_levels` json DEFAULT (_utf8mb4'["CRITICAL", "MAJOR"]'),
  `historical_data_range` int DEFAULT '90',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sonarqube_config`
--

INSERT INTO `sonarqube_config` (`id`, `base_url`, `api_token`, `sync_frequency`, `severity_levels`, `historical_data_range`, `created_at`, `updated_at`) VALUES
(1, 'https://sonarqube.company.com/api', 'squ_a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6', 'DAILY', '[\"BLOCKER\", \"CRITICAL\", \"MAJOR\"]', 90, '2025-10-23 03:56:32', '2025-10-23 03:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `sync_logs`
--

CREATE TABLE `sync_logs` (
  `id` int NOT NULL,
  `project_id` int DEFAULT NULL,
  `sync_type` enum('FULL','INCREMENTAL','MANUAL') DEFAULT 'INCREMENTAL',
  `status` enum('STARTED','SUCCESS','FAILED','PARTIAL') DEFAULT 'STARTED',
  `records_processed` int DEFAULT '0',
  `records_created` int DEFAULT '0',
  `records_updated` int DEFAULT '0',
  `start_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NULL DEFAULT NULL,
  `error_message` text,
  `sync_details` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sync_logs`
--

INSERT INTO `sync_logs` (`id`, `project_id`, `sync_type`, `status`, `records_processed`, `records_created`, `records_updated`, `start_time`, `end_time`, `error_message`, `sync_details`) VALUES
(1, 1, 'FULL', 'SUCCESS', 450, 450, 0, '2025-09-23 03:56:33', '2025-09-23 04:01:33', NULL, '{\"api_calls\": 45, \"duration_seconds\": 300}'),
(2, 2, 'INCREMENTAL', 'SUCCESS', 85, 12, 73, '2025-10-22 03:56:33', '2025-10-22 03:57:18', NULL, '{\"api_calls\": 8, \"duration_seconds\": 45}'),
(3, 3, 'INCREMENTAL', 'SUCCESS', 92, 18, 74, '2025-10-22 03:56:33', '2025-10-22 03:57:25', NULL, '{\"api_calls\": 9, \"duration_seconds\": 52}'),
(4, 4, 'INCREMENTAL', 'PARTIAL', 67, 8, 55, '2025-10-22 03:56:33', '2025-10-22 03:57:11', NULL, '{\"warning\": \"Some metrics unavailable\", \"api_calls\": 7, \"duration_seconds\": 38}'),
(5, 5, 'INCREMENTAL', 'SUCCESS', 34, 5, 29, '2025-10-22 03:56:33', '2025-10-22 03:57:01', NULL, '{\"api_calls\": 4, \"duration_seconds\": 28}'),
(6, NULL, 'MANUAL', 'FAILED', 0, 0, 0, '2025-10-21 03:56:33', '2025-10-21 03:56:38', NULL, '{\"error\": \"Authentication failed\", \"api_calls\": 1}'),
(7, 1, 'INCREMENTAL', 'SUCCESS', 156, 23, 133, '2025-10-23 01:56:33', '2025-10-23 01:57:51', NULL, '{\"api_calls\": 12, \"duration_seconds\": 78}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `author_key` (`author_key`),
  ADD KEY `idx_author_key` (`author_key`),
  ADD KEY `idx_active` (`is_active`);

--
-- Indexes for table `developer_metrics_daily`
--
ALTER TABLE `developer_metrics_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_dev_project_date` (`developer_id`,`project_id`,`date_recorded`),
  ADD KEY `idx_date_recorded` (`date_recorded`),
  ADD KEY `idx_developer_date` (`developer_id`,`date_recorded`),
  ADD KEY `idx_project_date` (`project_id`,`date_recorded`);

--
-- Indexes for table `individual_rankings`
--
ALTER TABLE `individual_rankings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_dev_period` (`developer_id`,`ranking_period`),
  ADD KEY `idx_ranking_period` (`ranking_period`),
  ADD KEY `idx_defect_terminator` (`defect_terminator_rank`,`ranking_period`),
  ADD KEY `idx_code_rock` (`code_rock_rank`,`ranking_period`),
  ADD KEY `idx_code_shield` (`code_shield_rank`,`ranking_period`),
  ADD KEY `idx_craftsman` (`craftsman_rank`,`ranking_period`),
  ADD KEY `idx_climber` (`climber_rank`,`ranking_period`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `issue_key` (`issue_key`),
  ADD KEY `idx_issue_key` (`issue_key`),
  ADD KEY `idx_project_type` (`project_id`,`issue_type`),
  ADD KEY `idx_developer_type` (`developer_id`,`issue_type`),
  ADD KEY `idx_created_date` (`created_date`),
  ADD KEY `idx_resolved_date` (`resolved_date`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `monthly_champions`
--
ALTER TABLE `monthly_champions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_period_category_type` (`period`,`category`,`entity_type`),
  ADD KEY `idx_period_category` (`period`,`category`),
  ADD KEY `idx_entity` (`entity_type`,`entity_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_key` (`project_key`),
  ADD KEY `idx_project_key` (`project_key`),
  ADD KEY `idx_active` (`is_active`);

--
-- Indexes for table `project_metrics_daily`
--
ALTER TABLE `project_metrics_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_project_date` (`project_id`,`date_recorded`),
  ADD KEY `idx_date_recorded` (`date_recorded`),
  ADD KEY `idx_project_date` (`project_id`,`date_recorded`);

--
-- Indexes for table `project_rankings`
--
ALTER TABLE `project_rankings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_project_period` (`project_id`,`ranking_period`),
  ADD KEY `idx_ranking_period` (`ranking_period`),
  ADD KEY `idx_defect_terminator` (`defect_terminator_rank`,`ranking_period`),
  ADD KEY `idx_code_rock` (`code_rock_rank`,`ranking_period`),
  ADD KEY `idx_code_shield` (`code_shield_rank`,`ranking_period`),
  ADD KEY `idx_craftsman` (`craftsman_rank`,`ranking_period`);

--
-- Indexes for table `sonarqube_config`
--
ALTER TABLE `sonarqube_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sync_logs`
--
ALTER TABLE `sync_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_status` (`project_id`,`status`),
  ADD KEY `idx_start_time` (`start_time`),
  ADD KEY `idx_status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `developers`
--
ALTER TABLE `developers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `developer_metrics_daily`
--
ALTER TABLE `developer_metrics_daily`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `individual_rankings`
--
ALTER TABLE `individual_rankings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `monthly_champions`
--
ALTER TABLE `monthly_champions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_metrics_daily`
--
ALTER TABLE `project_metrics_daily`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `project_rankings`
--
ALTER TABLE `project_rankings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sonarqube_config`
--
ALTER TABLE `sonarqube_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sync_logs`
--
ALTER TABLE `sync_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

-- --------------------------------------------------------

--
-- Structure for view `current_individual_leaderboard`
--
DROP TABLE IF EXISTS `current_individual_leaderboard`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `current_individual_leaderboard`  AS SELECT `ir`.`id` AS `id`, `ir`.`developer_id` AS `developer_id`, `ir`.`ranking_period` AS `ranking_period`, `ir`.`defect_terminator_score` AS `defect_terminator_score`, `ir`.`defect_terminator_rank` AS `defect_terminator_rank`, `ir`.`violations_introduced` AS `violations_introduced`, `ir`.`violations_resolved` AS `violations_resolved`, `ir`.`code_rock_score` AS `code_rock_score`, `ir`.`code_rock_rank` AS `code_rock_rank`, `ir`.`bugs_per_kloc` AS `bugs_per_kloc`, `ir`.`code_shield_score` AS `code_shield_score`, `ir`.`code_shield_rank` AS `code_shield_rank`, `ir`.`vulnerabilities_per_kloc` AS `vulnerabilities_per_kloc`, `ir`.`craftsman_score` AS `craftsman_score`, `ir`.`craftsman_rank` AS `craftsman_rank`, `ir`.`code_smells_per_kloc` AS `code_smells_per_kloc`, `ir`.`climber_score` AS `climber_score`, `ir`.`climber_rank` AS `climber_rank`, `ir`.`avg_rank_improvement` AS `avg_rank_improvement`, `ir`.`total_kloc` AS `total_kloc`, `ir`.`created_at` AS `created_at`, `ir`.`updated_at` AS `updated_at`, `d`.`display_name` AS `display_name`, `d`.`author_key` AS `author_key`, curdate() AS `view_date` FROM (`individual_rankings` `ir` join `developers` `d` on((`ir`.`developer_id` = `d`.`id`))) WHERE ((`ir`.`ranking_period` = date_format(curdate(),'%Y-%m-01')) AND (`d`.`is_active` = true)) ;

-- --------------------------------------------------------

--
-- Structure for view `current_project_leaderboard`
--
DROP TABLE IF EXISTS `current_project_leaderboard`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `current_project_leaderboard`  AS SELECT `pr`.`id` AS `id`, `pr`.`project_id` AS `project_id`, `pr`.`ranking_period` AS `ranking_period`, `pr`.`defect_terminator_score` AS `defect_terminator_score`, `pr`.`defect_terminator_rank` AS `defect_terminator_rank`, `pr`.`violations_introduced` AS `violations_introduced`, `pr`.`violations_resolved` AS `violations_resolved`, `pr`.`code_rock_score` AS `code_rock_score`, `pr`.`code_rock_rank` AS `code_rock_rank`, `pr`.`bugs_per_kloc` AS `bugs_per_kloc`, `pr`.`code_shield_score` AS `code_shield_score`, `pr`.`code_shield_rank` AS `code_shield_rank`, `pr`.`vulnerabilities_per_kloc` AS `vulnerabilities_per_kloc`, `pr`.`craftsman_score` AS `craftsman_score`, `pr`.`craftsman_rank` AS `craftsman_rank`, `pr`.`code_smells_per_kloc` AS `code_smells_per_kloc`, `pr`.`total_kloc` AS `total_kloc`, `pr`.`created_at` AS `created_at`, `pr`.`updated_at` AS `updated_at`, `p`.`project_name` AS `project_name`, `p`.`project_key` AS `project_key`, curdate() AS `view_date` FROM (`project_rankings` `pr` join `projects` `p` on((`pr`.`project_id` = `p`.`id`))) WHERE ((`pr`.`ranking_period` = date_format(curdate(),'%Y-%m-01')) AND (`p`.`is_active` = true)) ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `developer_metrics_daily`
--
ALTER TABLE `developer_metrics_daily`
  ADD CONSTRAINT `developer_metrics_daily_ibfk_1` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `developer_metrics_daily_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `individual_rankings`
--
ALTER TABLE `individual_rankings`
  ADD CONSTRAINT `individual_rankings_ibfk_1` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `issues`
--
ALTER TABLE `issues`
  ADD CONSTRAINT `issues_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issues_ibfk_2` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `project_metrics_daily`
--
ALTER TABLE `project_metrics_daily`
  ADD CONSTRAINT `project_metrics_daily_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_rankings`
--
ALTER TABLE `project_rankings`
  ADD CONSTRAINT `project_rankings_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sync_logs`
--
ALTER TABLE `sync_logs`
  ADD CONSTRAINT `sync_logs_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
