-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: MySql-8.2
-- Generation Time: Aug 11, 2025 at 07:27 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `euroskills2023`
--

-- --------------------------------------------------------

--
-- Table structure for table `quotas`
--

CREATE TABLE `quotas` (
  `id` int NOT NULL,
  `limit` int NOT NULL,
  `workspace_id` int NOT NULL,
  `month_number` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_usages`
--

CREATE TABLE `service_usages` (
  `id` int NOT NULL,
  `username` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `workspace_title` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `api_token_name` varchar(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `usage_duration_in_ms` int DEFAULT NULL,
  `usage_started_at` date DEFAULT NULL,
  `service_name` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `service_cost_per_ms` varchar(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `service_usages`
--

INSERT INTO `service_usages` (`id`, `username`, `workspace_title`, `api_token_name`, `usage_duration_in_ms`, `usage_started_at`, `service_name`, `service_cost_per_ms`) VALUES
(2, 'demo1', 'My App', 'development', 8, '2023-08-10', 'Service #1', '0.001500'),
(3, 'demo1', 'My App', 'production', 38, '2023-07-01', 'Service #1', '0.001500'),
(4, 'demo1', 'My App', 'production', 36, '2023-07-02', 'Service #1', '0.001500'),
(5, 'demo1', 'My App', 'production', 38, '2023-07-02', 'Service #1', '0.001500'),
(6, 'demo1', 'My App', 'production', 36, '2023-07-03', 'Service #1', '0.001500'),
(7, 'demo1', 'My App', 'development', 5, '2023-08-11', 'Service #1', '0.001500'),
(8, 'demo1', 'My App', 'development', 4, '2023-08-11', 'Service #1', '0.001500'),
(9, 'demo1', 'My App', 'production', 38, '2023-07-03', 'Service #1', '0.001500'),
(10, 'demo1', 'My App', 'development', 6, '2023-08-11', 'Service #1', '0.001500'),
(11, 'demo1', 'My App', 'development', 6, '2023-08-12', 'Service #1', '0.001500'),
(12, 'demo1', 'My App', 'production', 39, '2023-07-03', 'Service #1', '0.001500'),
(13, 'demo1', 'My App', 'development', 6, '2023-08-12', 'Service #1', '0.001500'),
(14, 'demo1', 'My App', 'production', 39, '2023-07-04', 'Service #1', '0.001500'),
(15, 'demo1', 'My App', 'production', 36, '2023-07-04', 'Service #1', '0.001500'),
(16, 'demo1', 'My App', 'development', 8, '2023-08-13', 'Service #1', '0.001500'),
(17, 'demo1', 'My App', 'production', 39, '2023-07-04', 'Service #1', '0.001500'),
(18, 'demo1', 'My App', 'production', 38, '2023-07-05', 'Service #1', '0.001500'),
(19, 'demo1', 'My App', 'development', 6, '2023-08-14', 'Service #1', '0.001500'),
(20, 'demo1', 'My App', 'development', 5, '2023-08-15', 'Service #1', '0.001500'),
(21, 'demo1', 'My App', 'production', 37, '2023-07-05', 'Service #1', '0.001500'),
(22, 'demo1', 'My App', 'development', 6, '2023-08-15', 'Service #1', '0.001500'),
(23, 'demo1', 'My App', 'production', 37, '2023-07-05', 'Service #1', '0.001500'),
(24, 'demo1', 'My App', 'development', 6, '2023-08-15', 'Service #1', '0.001500'),
(25, 'demo1', 'My App', 'production', 36, '2023-07-06', 'Service #1', '0.001500'),
(26, 'demo1', 'My App', 'production', 37, '2023-07-06', 'Service #1', '0.001500'),
(27, 'demo1', 'My App', 'production', 38, '2023-07-06', 'Service #1', '0.001500'),
(28, 'demo1', 'My App', 'production', 38, '2023-07-07', 'Service #1', '0.001500'),
(29, 'demo1', 'My App', 'production', 38, '2023-07-07', 'Service #1', '0.001500'),
(30, 'demo1', 'My App', 'production', 39, '2023-07-08', 'Service #1', '0.001500'),
(31, 'demo1', 'My App', 'production', 38, '2023-07-08', 'Service #1', '0.001500'),
(32, 'demo1', 'My App', 'production', 36, '2023-07-08', 'Service #1', '0.001500'),
(33, 'demo1', 'My App', 'production', 38, '2023-07-08', 'Service #1', '0.001500'),
(34, 'demo1', 'My App', 'production', 36, '2023-07-09', 'Service #1', '0.001500'),
(35, 'demo1', 'My App', 'production', 36, '2023-07-09', 'Service #1', '0.001500'),
(36, 'demo1', 'My App', 'production', 35, '2023-07-09', 'Service #1', '0.001500'),
(37, 'demo1', 'My App', 'production', 38, '2023-07-09', 'Service #1', '0.001500'),
(38, 'demo1', 'My App', 'production', 37, '2023-07-09', 'Service #1', '0.001500'),
(39, 'demo1', 'My App', 'production', 39, '2023-07-10', 'Service #1', '0.001500'),
(40, 'demo1', 'My App', 'production', 37, '2023-07-10', 'Service #1', '0.001500'),
(41, 'demo1', 'My App', 'production', 35, '2023-07-11', 'Service #1', '0.001500'),
(42, 'demo1', 'My App', 'production', 37, '2023-07-11', 'Service #1', '0.001500'),
(43, 'demo1', 'My App', 'production', 38, '2023-07-12', 'Service #1', '0.001500'),
(44, 'demo1', 'My App', 'production', 38, '2023-07-12', 'Service #1', '0.001500'),
(45, 'demo1', 'My App', 'production', 39, '2023-07-12', 'Service #1', '0.001500'),
(46, 'demo1', 'My App', 'production', 39, '2023-07-13', 'Service #1', '0.001500'),
(47, 'demo1', 'My App', 'production', 39, '2023-07-13', 'Service #1', '0.001500'),
(48, 'demo1', 'My App', 'production', 38, '2023-07-13', 'Service #1', '0.001500'),
(49, 'demo1', 'My App', 'production', 39, '2023-07-14', 'Service #1', '0.001500'),
(50, 'demo1', 'My App', 'production', 35, '2023-07-14', 'Service #1', '0.001500'),
(51, 'demo1', 'My App', 'production', 36, '2023-07-15', 'Service #1', '0.001500'),
(52, 'demo1', 'My App', 'production', 37, '2023-07-15', 'Service #1', '0.001500'),
(53, 'demo1', 'My App', 'production', 5, '2023-07-15', 'Service #1', '0.001500'),
(54, 'demo1', 'My App', 'production', 21, '2023-07-01', 'Service #2', '0.005000'),
(55, 'demo1', 'My App', 'production', 20, '2023-07-01', 'Service #2', '0.005000'),
(56, 'demo1', 'My App', 'production', 20, '2023-07-02', 'Service #2', '0.005000'),
(57, 'demo1', 'My App', 'production', 23, '2023-07-02', 'Service #2', '0.005000'),
(58, 'demo1', 'My App', 'production', 22, '2023-07-02', 'Service #2', '0.005000'),
(59, 'demo1', 'My App', 'production', 22, '2023-07-03', 'Service #2', '0.005000'),
(60, 'demo1', 'My App', 'production', 22, '2023-07-03', 'Service #2', '0.005000'),
(61, 'demo1', 'My App', 'production', 21, '2023-07-03', 'Service #2', '0.005000'),
(62, 'demo1', 'My App', 'production', 22, '2023-07-04', 'Service #2', '0.005000'),
(63, 'demo1', 'My App', 'production', 24, '2023-07-04', 'Service #2', '0.005000'),
(64, 'demo1', 'My App', 'production', 20, '2023-07-04', 'Service #2', '0.005000'),
(65, 'demo1', 'My App', 'production', 24, '2023-07-04', 'Service #2', '0.005000'),
(66, 'demo1', 'My App', 'production', 21, '2023-07-04', 'Service #2', '0.005000'),
(67, 'demo1', 'My App', 'production', 23, '2023-07-05', 'Service #2', '0.005000'),
(68, 'demo1', 'My App', 'production', 22, '2023-07-05', 'Service #2', '0.005000'),
(69, 'demo1', 'My App', 'production', 22, '2023-07-05', 'Service #2', '0.005000'),
(70, 'demo1', 'My App', 'production', 20, '2023-07-06', 'Service #2', '0.005000'),
(71, 'demo1', 'My App', 'production', 22, '2023-07-06', 'Service #2', '0.005000'),
(72, 'demo1', 'My App', 'production', 23, '2023-07-07', 'Service #2', '0.005000'),
(73, 'demo1', 'My App', 'production', 21, '2023-07-07', 'Service #2', '0.005000'),
(74, 'demo1', 'My App', 'production', 22, '2023-07-08', 'Service #2', '0.005000'),
(75, 'demo1', 'My App', 'production', 24, '2023-07-08', 'Service #2', '0.005000'),
(76, 'demo1', 'My App', 'production', 21, '2023-07-08', 'Service #2', '0.005000'),
(77, 'demo1', 'My App', 'production', 21, '2023-07-09', 'Service #2', '0.005000'),
(78, 'demo1', 'My App', 'production', 22, '2023-07-10', 'Service #2', '0.005000'),
(79, 'demo1', 'My App', 'production', 24, '2023-07-10', 'Service #2', '0.005000'),
(80, 'demo1', 'My App', 'production', 24, '2023-07-10', 'Service #2', '0.005000'),
(81, 'demo1', 'My App', 'production', 23, '2023-07-11', 'Service #2', '0.005000'),
(82, 'demo1', 'My App', 'production', 20, '2023-07-11', 'Service #2', '0.005000'),
(83, 'demo1', 'My App', 'production', 22, '2023-07-11', 'Service #2', '0.005000'),
(84, 'demo1', 'My App', 'production', 22, '2023-07-12', 'Service #2', '0.005000'),
(85, 'demo1', 'My App', 'production', 24, '2023-07-12', 'Service #2', '0.005000'),
(86, 'demo1', 'My App', 'production', 1, '2023-07-13', 'Service #2', '0.005000'),
(87, 'demo1', 'My App', 'development', 10, '2023-07-01', 'Service #1', '0.001500'),
(88, 'demo1', 'My App', 'development', 12, '2023-07-02', 'Service #1', '0.001500'),
(89, 'demo1', 'My App', 'development', 12, '2023-07-02', 'Service #1', '0.001500'),
(90, 'demo1', 'My App', 'development', 10, '2023-07-02', 'Service #1', '0.001500'),
(91, 'demo1', 'My App', 'development', 11, '2023-07-03', 'Service #1', '0.001500'),
(92, 'demo1', 'My App', 'development', 10, '2023-07-03', 'Service #1', '0.001500'),
(93, 'demo1', 'My App', 'development', 11, '2023-07-03', 'Service #1', '0.001500'),
(94, 'demo1', 'My App', 'development', 10, '2023-07-03', 'Service #1', '0.001500'),
(95, 'demo1', 'My App', 'development', 9, '2023-07-03', 'Service #1', '0.001500'),
(96, 'demo1', 'My App', 'development', 10, '2023-07-04', 'Service #1', '0.001500'),
(97, 'demo1', 'My App', 'development', 9, '2023-07-04', 'Service #1', '0.001500'),
(98, 'demo1', 'My App', 'development', 10, '2023-07-04', 'Service #1', '0.001500'),
(99, 'demo1', 'My App', 'development', 12, '2023-07-05', 'Service #1', '0.001500'),
(100, 'demo1', 'My App', 'development', 12, '2023-07-05', 'Service #1', '0.001500'),
(101, 'demo1', 'My App', 'development', 12, '2023-07-06', 'Service #1', '0.001500'),
(102, 'demo1', 'My App', 'development', 11, '2023-07-06', 'Service #1', '0.001500'),
(103, 'demo1', 'My App', 'development', 12, '2023-07-07', 'Service #1', '0.001500'),
(104, 'demo1', 'My App', 'development', 10, '2023-07-07', 'Service #1', '0.001500'),
(105, 'demo1', 'My App', 'development', 8, '2023-07-07', 'Service #1', '0.001500'),
(106, 'demo1', 'My App', 'development', 8, '2023-07-08', 'Service #1', '0.001500'),
(107, 'demo1', 'My App', 'development', 12, '2023-07-08', 'Service #1', '0.001500'),
(108, 'demo1', 'My App', 'development', 8, '2023-07-08', 'Service #1', '0.001500'),
(109, 'demo1', 'My App', 'development', 10, '2023-07-09', 'Service #1', '0.001500'),
(110, 'demo1', 'My App', 'development', 11, '2023-07-09', 'Service #1', '0.001500'),
(111, 'demo1', 'My App', 'development', 10, '2023-07-10', 'Service #1', '0.001500'),
(112, 'demo1', 'My App', 'development', 12, '2023-07-10', 'Service #1', '0.001500'),
(113, 'demo1', 'My App', 'development', 9, '2023-07-11', 'Service #1', '0.001500'),
(114, 'demo1', 'My App', 'development', 11, '2023-07-11', 'Service #1', '0.001500'),
(115, 'demo1', 'My App', 'development', 9, '2023-07-11', 'Service #1', '0.001500'),
(116, 'demo1', 'My App', 'development', 10, '2023-07-11', 'Service #1', '0.001500'),
(117, 'demo1', 'My App', 'development', 10, '2023-07-11', 'Service #1', '0.001500'),
(118, 'demo1', 'My App', 'development', 11, '2023-07-12', 'Service #1', '0.001500'),
(119, 'demo1', 'My App', 'development', 9, '2023-07-12', 'Service #1', '0.001500'),
(120, 'demo1', 'My App', 'development', 8, '2023-07-13', 'Service #1', '0.001500'),
(121, 'demo1', 'My App', 'development', 9, '2023-07-13', 'Service #1', '0.001500'),
(122, 'demo1', 'My App', 'development', 11, '2023-07-14', 'Service #1', '0.001500'),
(123, 'demo1', 'My App', 'development', 10, '2023-07-14', 'Service #1', '0.001500'),
(124, 'demo1', 'My App', 'development', 11, '2023-07-15', 'Service #1', '0.001500'),
(125, 'demo1', 'My App', 'development', 11, '2023-07-16', 'Service #1', '0.001500'),
(126, 'demo1', 'My App', 'development', 5, '2023-07-16', 'Service #1', '0.001500'),
(127, 'demo1', 'My App', 'production', 59, '2023-08-02', 'Service #1', '0.001500'),
(128, 'demo1', 'My App', 'production', 58, '2023-08-03', 'Service #1', '0.001500'),
(129, 'demo1', 'My App', 'production', 58, '2023-08-04', 'Service #1', '0.001500'),
(130, 'demo1', 'My App', 'production', 58, '2023-08-04', 'Service #1', '0.001500'),
(131, 'demo1', 'My App', 'production', 61, '2023-08-05', 'Service #1', '0.001500'),
(132, 'demo1', 'My App', 'production', 61, '2023-08-05', 'Service #1', '0.001500'),
(133, 'demo1', 'My App', 'production', 61, '2023-08-07', 'Service #1', '0.001500'),
(134, 'demo1', 'My App', 'production', 62, '2023-08-07', 'Service #1', '0.001500'),
(135, 'demo1', 'My App', 'production', 62, '2023-08-09', 'Service #1', '0.001500'),
(136, 'demo1', 'My App', 'production', 58, '2023-08-10', 'Service #1', '0.001500'),
(137, 'demo1', 'My App', 'production', 62, '2023-08-11', 'Service #1', '0.001500'),
(138, 'demo1', 'My App', 'production', 58, '2023-08-11', 'Service #1', '0.001500'),
(139, 'demo1', 'My App', 'production', 62, '2023-08-11', 'Service #1', '0.001500'),
(140, 'demo1', 'My App', 'production', 60, '2023-08-12', 'Service #1', '0.001500'),
(141, 'demo1', 'My App', 'production', 60, '2023-08-13', 'Service #1', '0.001500'),
(142, 'demo1', 'My App', 'production', 62, '2023-08-14', 'Service #1', '0.001500'),
(143, 'demo1', 'My App', 'production', 62, '2023-08-15', 'Service #1', '0.001500'),
(144, 'demo1', 'My App', 'production', 15, '2023-08-16', 'Service #1', '0.001500'),
(145, 'demo1', 'My App', 'production', 35, '2023-08-01', 'Service #2', '0.005000'),
(146, 'demo1', 'My App', 'production', 35, '2023-08-02', 'Service #2', '0.005000'),
(147, 'demo1', 'My App', 'production', 35, '2023-08-03', 'Service #2', '0.005000'),
(148, 'demo1', 'My App', 'production', 35, '2023-08-04', 'Service #2', '0.005000'),
(149, 'demo1', 'My App', 'production', 32, '2023-08-05', 'Service #2', '0.005000'),
(150, 'demo1', 'My App', 'production', 35, '2023-08-06', 'Service #2', '0.005000'),
(151, 'demo1', 'My App', 'production', 33, '2023-08-06', 'Service #2', '0.005000'),
(152, 'demo1', 'My App', 'production', 34, '2023-08-08', 'Service #2', '0.005000'),
(153, 'demo1', 'My App', 'production', 32, '2023-08-09', 'Service #2', '0.005000'),
(154, 'demo1', 'My App', 'production', 33, '2023-08-10', 'Service #2', '0.005000'),
(155, 'demo1', 'My App', 'production', 36, '2023-08-11', 'Service #2', '0.005000'),
(156, 'demo1', 'My App', 'production', 36, '2023-08-12', 'Service #2', '0.005000'),
(157, 'demo1', 'My App', 'production', 33, '2023-08-14', 'Service #2', '0.005000'),
(158, 'demo1', 'My App', 'production', 33, '2023-08-15', 'Service #2', '0.005000'),
(159, 'demo1', 'My App', 'production', 24, '2023-08-16', 'Service #2', '0.005000'),
(160, 'demo1', 'My App', 'development', 6, '2023-08-02', 'Service #1', '0.001500'),
(161, 'demo1', 'My App', 'development', 5, '2023-08-03', 'Service #1', '0.001500'),
(162, 'demo1', 'My App', 'development', 7, '2023-08-03', 'Service #1', '0.001500'),
(163, 'demo1', 'My App', 'development', 8, '2023-08-04', 'Service #1', '0.001500'),
(164, 'demo1', 'My App', 'development', 8, '2023-08-05', 'Service #1', '0.001500'),
(165, 'demo1', 'My App', 'development', 8, '2023-08-06', 'Service #1', '0.001500'),
(166, 'demo1', 'My App', 'development', 6, '2023-08-06', 'Service #1', '0.001500'),
(167, 'demo1', 'My App', 'development', 7, '2023-08-06', 'Service #1', '0.001500'),
(168, 'demo1', 'My App', 'development', 7, '2023-08-07', 'Service #1', '0.001500'),
(169, 'demo1', 'My App', 'development', 6, '2023-08-08', 'Service #1', '0.001500'),
(170, 'demo1', 'My App', 'development', 7, '2023-08-09', 'Service #1', '0.001500'),
(171, 'demo1', 'My App', 'development', 8, '2023-08-09', 'Service #1', '0.001500'),
(172, 'demo1', 'My App', 'development', 5, '2023-08-09', 'Service #1', '0.001500'),
(173, 'demo1', 'My App', 'development', 8, '2023-08-10', 'Service #1', '0.001500');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `revocationDate` datetime DEFAULT NULL,
  `workspace_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `name`, `revocationDate`, `workspace_id`, `createdAt`, `token`) VALUES
(12, 'Cloudfair Api', NULL, 1, '2025-08-10 12:05:59', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQ2xvdWRmYWlyIEFwaSIsIndvcmtzcGFjZV9pZCI6IjEiLCJpYXQiOjE3NTQ4Mjc1NTl9.3e-d52kh5eAPo5FK6gLML8eKMVN64SKUBi0kffoZ65E');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'demo1', '$2b$10$.aypGVFRDQSjjFZ1CaKSVO3seqyvT5IWMaq3JAI4HnIv0Z.ZDfh1S'),
(3, 'demo2', '$2b$10$SUvUGqPC.uRHbjhauSiYyOWevv4VG.5ul9YMRmauBT/2tUJrxfrIC');

-- --------------------------------------------------------

--
-- Table structure for table `workpaces`
--

CREATE TABLE `workpaces` (
  `id` int NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workpaces`
--

INSERT INTO `workpaces` (`id`, `title`, `description`, `user_id`) VALUES
(1, 'Cloudfair', 'Something text maye some maybe ', 1),
(2, 'dsfvfd', '', 1),
(3, 'rferf', 'referfer', 1),
(4, 'decd', '', 1),
(5, 'gfrereg', 'gerg', 1),
(6, 'fdx', '', 1),
(7, 'My App', '', 1),
(9, 'My App', '', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quotas`
--
ALTER TABLE `quotas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workspace_id` (`workspace_id`);

--
-- Indexes for table `service_usages`
--
ALTER TABLE `service_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workspace_id` (`workspace_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workpaces`
--
ALTER TABLE `workpaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quotas`
--
ALTER TABLE `quotas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_usages`
--
ALTER TABLE `service_usages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `workpaces`
--
ALTER TABLE `workpaces`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quotas`
--
ALTER TABLE `quotas`
  ADD CONSTRAINT `quotas_ibfk_1` FOREIGN KEY (`workspace_id`) REFERENCES `workpaces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_ibfk_1` FOREIGN KEY (`workspace_id`) REFERENCES `workpaces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `workpaces`
--
ALTER TABLE `workpaces`
  ADD CONSTRAINT `workpaces_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
