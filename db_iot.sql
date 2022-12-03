-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 07:38 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_iot`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivitas_user`
--

CREATE TABLE `aktivitas_user` (
  `id` bigint(20) NOT NULL,
  `idCard` varchar(50) DEFAULT NULL,
  `status_aktivitas` enum('masuk','keluar','','') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `room_access` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'user', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 3),
(2, 53),
(2, 54),
(2, 59),
(2, 74),
(2, 79);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'adminukdw', NULL, '2022-10-11 12:38:52', 0),
(2, '::1', 'admin', 1, '2022-10-11 12:39:02', 0),
(3, '::1', 'admin', 1, '2022-10-11 12:39:17', 0),
(4, '::1', 'admin12@gmail.com', 3, '2022-10-11 12:40:00', 1),
(5, '::1', 'admin12@gmail.com', 3, '2022-10-11 20:20:20', 1),
(6, '::1', 'admin12@gmail.com', 3, '2022-10-11 20:55:40', 1),
(7, '::1', 'admin12@gmail.com', 3, '2022-10-11 21:44:34', 1),
(8, '::1', 'admin12@gmail.com', 3, '2022-10-11 22:20:56', 1),
(9, '::1', 'ditosetiawan@gmail.com', 4, '2022-10-11 23:11:17', 1),
(10, '::1', 'ditosetiawan', NULL, '2022-10-12 00:19:02', 0),
(11, '::1', 'admin12@gmail.com', 3, '2022-10-12 00:19:13', 1),
(12, '::1', 'admin12@gmail.com', 3, '2022-10-12 00:35:53', 1),
(13, '::1', 'ditosetiawan@gmail.com', 5, '2022-10-12 00:42:39', 1),
(14, '::1', 'admin12@gmail.com', 3, '2022-10-12 01:04:15', 1),
(15, '::1', 'ditosetiawan@gmail.com', 5, '2022-10-12 02:27:54', 1),
(16, '::1', 'rendiwijaya@gmail.com', 8, '2022-10-12 03:19:19', 1),
(17, '::1', 'admin12@gmail.com', 3, '2022-10-12 03:25:55', 1),
(18, '::1', 'admin12@gmail.com', 3, '2022-10-12 03:34:41', 1),
(19, '::1', 'admin12@gmail.com', 3, '2022-10-12 06:18:52', 1),
(20, '::1', 'ditosetiawan@gmail.com', 5, '2022-10-12 06:19:14', 1),
(21, '::1', 'ditosetiawan@gmail.com', 5, '2022-10-12 17:43:58', 1),
(22, '::1', 'ditosetiawan@gmail.com', 5, '2022-10-12 18:09:02', 1),
(23, '::1', 'ditosetiawan@gmail.com', 5, '2022-10-12 18:17:11', 1),
(24, '::1', 'admin12@gmail.com', 3, '2022-10-12 19:00:48', 1),
(25, '::1', 'admin12@gmail.com', 3, '2022-10-12 19:11:43', 1),
(26, '::1', 'admin12@gmail.com', 3, '2022-10-12 19:20:26', 1),
(27, '::1', 'ditosetiawan@gmail.com', 5, '2022-10-12 19:20:52', 1),
(28, '::1', 'admin12@gmail.com', 3, '2022-10-12 19:24:27', 1),
(29, '::1', 'ditosetiawan@gmail.com', 5, '2022-10-12 19:34:54', 1),
(30, '::1', 'admin12@gmail.com', 3, '2022-10-12 19:52:55', 1),
(31, '::1', 'ditosetiawan@gmail.com', 5, '2022-10-12 19:54:33', 1),
(32, '::1', 'admin12@gmail.com', 3, '2022-10-13 08:39:39', 1),
(33, '::1', 'ditosetiawan@gmail.com', 5, '2022-10-13 08:53:26', 1),
(34, '::1', 'admin12@gmail.com', 3, '2022-10-13 08:54:43', 1),
(35, '::1', 'admin12@gmail.com', 3, '2022-10-18 02:57:47', 1),
(36, '::1', 'admin12@gmail.com', 3, '2022-10-18 19:32:07', 1),
(37, '::1', 'ditosetiawan@gmail.com', 5, '2022-10-19 02:40:08', 1),
(38, '::1', 'admin12@gmail.com', 3, '2022-10-19 02:42:37', 1),
(39, '::1', 'admin12@gmail.com', 3, '2022-10-19 07:48:53', 1),
(40, '::1', 'admin12@gmail.com', 3, '2022-10-19 12:05:48', 1),
(41, '::1', 'admin12@gmail.com', 3, '2022-10-19 22:42:39', 1),
(42, '::1', 'admin12@gmail.com', 3, '2022-10-20 03:42:16', 1),
(43, '::1', 'admin12@gmail.com', 3, '2022-10-20 20:01:20', 1),
(44, '::1', 'admin12@gmail.com', 3, '2022-10-21 01:27:32', 1),
(45, '::1', 'admin12@gmail.com', 3, '2022-10-21 14:10:47', 1),
(46, '::1', 'admin12@gmail.com', 3, '2022-10-21 19:58:33', 1),
(47, '::1', 'admin12@gmail.com', 3, '2022-10-22 07:54:53', 1),
(48, '::1', 'admin12@gmail.com', 3, '2022-10-22 10:34:38', 1),
(49, '::1', 'admin12@gmail.com', 3, '2022-10-23 00:07:29', 1),
(50, '::1', 'admin12@gmail.com', 3, '2022-10-24 00:27:02', 1),
(51, '::1', 'maria.verena@ti.ukdw.ac.id', 10, '2022-10-24 03:17:20', 1),
(52, '::1', 'admin12@gmail.com', 3, '2022-10-24 03:17:38', 1),
(53, '::1', 'admin12@gmail.com', 3, '2022-10-24 08:48:59', 1),
(54, '::1', 'mariaverena@gmail.com', 10, '2022-10-24 10:32:10', 1),
(55, '::1', 'admin12@gmail.com', 3, '2022-10-24 10:34:24', 1),
(56, '::1', 'maria.verena@ti.ukdw.ac.id', NULL, '2022-10-24 14:28:09', 0),
(57, '::1', 'maria.verena@ti.ukdw.ac.id', NULL, '2022-10-24 14:28:22', 0),
(58, '::1', 'admin12@gmail.com', 3, '2022-10-24 14:28:45', 1),
(59, '::1', 'maria.verena@ti.ukdw.ac.id', 10, '2022-10-24 14:29:38', 1),
(60, '::1', 'admin12@gmail.com', 3, '2022-10-24 14:37:32', 1),
(61, '::1', 'mariaverena', NULL, '2022-10-24 14:38:04', 0),
(62, '::1', 'maria.verena@ti.ukdw.ac.id', 10, '2022-10-24 14:38:49', 1),
(63, '::1', 'admin12@gmail.com', 3, '2022-10-25 00:23:32', 1),
(64, '::1', 'mariaverena', NULL, '2022-10-25 00:25:14', 0),
(65, '::1', 'admin12@gmail.com', 3, '2022-10-25 00:25:32', 1),
(66, '::1', 'mariaverena', NULL, '2022-10-25 00:57:37', 0),
(67, '::1', 'admin12@gmail.com', 3, '2022-10-25 01:01:04', 1),
(68, '::1', 'mariaverena', NULL, '2022-10-25 01:02:52', 0),
(69, '::1', 'admin12@gmail.com', 3, '2022-10-25 01:05:12', 1),
(70, '::1', 'mariaverena', NULL, '2022-10-25 01:05:19', 0),
(71, '::1', 'maria.verena@ti.ukdw.ac.id', 10, '2022-10-25 01:06:05', 1),
(72, '::1', 'mariaverena', 10, '2022-10-25 01:06:26', 0),
(73, '::1', 'mariaverena', 10, '2022-10-25 01:12:28', 0),
(74, '::1', 'mariaverena', NULL, '2022-10-25 01:13:48', 0),
(75, '::1', 'mariaverena', 10, '2022-10-25 01:13:57', 0),
(76, '::1', 'mariaverena', 10, '2022-10-25 01:16:41', 0),
(77, '::1', 'mariaverena', 10, '2022-10-25 01:17:13', 0),
(78, '::1', 'mariaverena', 10, '2022-10-25 01:18:27', 0),
(79, '::1', 'mariaverena', NULL, '2022-10-25 01:19:43', 0),
(80, '::1', 'mariaverena', 10, '2022-10-25 01:19:58', 0),
(81, '::1', 'mariaverena', NULL, '2022-10-25 01:20:55', 0),
(82, '::1', 'mariaverena', 10, '2022-10-25 01:21:31', 0),
(83, '::1', 'mariaverena', 10, '2022-10-25 01:23:32', 0),
(84, '::1', 'mariaverena', NULL, '2022-10-25 01:23:48', 0),
(85, '::1', 'mariaverena', 10, '2022-10-25 01:24:55', 0),
(86, '::1', 'mariaverena', 10, '2022-10-25 01:26:48', 0),
(87, '::1', 'mariaverena', 10, '2022-10-25 01:28:57', 0),
(88, '::1', 'mariaverena', 10, '2022-10-25 01:29:28', 0),
(89, '::1', 'mariaverena', 10, '2022-10-25 01:32:06', 0),
(90, '::1', 'mariaverena', 10, '2022-10-25 01:32:36', 0),
(91, '::1', 'mariaverena', 10, '2022-10-25 01:34:29', 0),
(92, '::1', 'mariaverena', 10, '2022-10-25 01:36:22', 0),
(93, '::1', 'mariaverena', 10, '2022-10-25 01:40:35', 0),
(94, '::1', 'mariaverena', 10, '2022-10-25 01:41:21', 0),
(95, '::1', 'mariaverena', 10, '2022-10-25 01:43:09', 0),
(96, '::1', 'mariaverena', NULL, '2022-10-25 01:43:17', 0),
(97, '::1', 'mariaverena', 10, '2022-10-25 01:46:57', 0),
(98, '::1', 'maria.verena@ti.ukdw.ac.id', 10, '2022-10-25 01:47:48', 1),
(99, '::1', 'mariaverena', 10, '2022-10-25 01:51:46', 0),
(100, '::1', 'mariaverena', 10, '2022-10-25 01:56:09', 0),
(101, '::1', 'yacinthus.dheka@ti.ukdw.ac.id', 9, '2022-10-25 01:56:51', 1),
(102, '::1', 'admin12@gmail.com', 3, '2022-10-25 02:11:13', 1),
(103, '::1', 'mariaverena', NULL, '2022-10-25 02:12:00', 0),
(104, '::1', 'admin12@gmail.com', 3, '2022-10-25 02:14:11', 1),
(105, '::1', 'mariaverena', NULL, '2022-10-25 02:14:48', 0),
(106, '::1', 'mariaverena', NULL, '2022-10-25 02:15:22', 0),
(107, '::1', 'maria.verena@ti.ukdw.ac.id', 10, '2022-10-25 02:15:56', 1),
(108, '::1', 'mariaverena', NULL, '2022-10-25 02:20:20', 0),
(109, '::1', 'admin12@gmail.com', 3, '2022-10-25 03:17:46', 1),
(110, '::1', 'mariaverena', NULL, '2022-10-25 03:30:48', 0),
(111, '::1', 'admin12@gmail.com', 3, '2022-10-25 03:32:34', 1),
(112, '::1', 'mariaverena', NULL, '2022-10-25 03:50:45', 0),
(113, '::1', 'admin12@gmail.com', 3, '2022-10-25 03:51:25', 1),
(114, '::1', 'mariaverena', NULL, '2022-10-25 03:54:00', 0),
(115, '::1', 'mariaverena', NULL, '2022-10-25 03:54:24', 0),
(116, '::1', 'admin12@gmail.com', 3, '2022-10-25 03:58:55', 1),
(117, '::1', 'maria.verena@ti.ukdw.ac.id', 18, '2022-10-25 05:30:00', 1),
(118, '::1', 'admin12@gmail.com', 3, '2022-10-25 05:30:18', 1),
(119, '::1', 'mariaverena', NULL, '2022-10-25 05:59:49', 0),
(120, '::1', 'admin12@gmail.com', 3, '2022-10-25 06:00:05', 1),
(121, '::1', 'mariaverena', NULL, '2022-10-25 06:07:17', 0),
(122, '::1', 'mariaverena', NULL, '2022-10-25 06:08:40', 0),
(123, '::1', 'admin12@gmail.com', 3, '2022-10-25 06:19:17', 1),
(124, '::1', 'mariaverena', NULL, '2022-10-25 06:20:36', 0),
(125, '::1', 'admin12@gmail.com', 3, '2022-10-25 08:11:33', 1),
(126, '::1', 'asu', NULL, '2022-10-25 08:15:03', 0),
(127, '::1', 'asu@gmail.com', 28, '2022-10-25 08:15:10', 1),
(128, '::1', 'asu', NULL, '2022-10-25 08:16:00', 0),
(129, '::1', 'asu@gmail.com', 28, '2022-10-25 08:16:04', 1),
(130, '::1', 'adminukdw', NULL, '2022-10-25 08:16:15', 0),
(131, '::1', 'adminukdw', NULL, '2022-10-25 08:16:26', 0),
(132, '::1', 'admin12@gmail.com', 3, '2022-10-25 08:16:56', 1),
(133, '::1', 'asu', NULL, '2022-10-25 08:18:12', 0),
(134, '::1', 'asu@gmail.com', 28, '2022-10-25 08:18:20', 1),
(135, '::1', 'admin12@gmail.com', 3, '2022-10-25 08:19:22', 1),
(136, '::1', 'asu', NULL, '2022-10-25 08:20:24', 0),
(137, '::1', 'asu', NULL, '2022-10-25 08:20:47', 0),
(138, '::1', 'asu', NULL, '2022-10-25 08:20:59', 0),
(139, '::1', 'admin12@gmail.com', 3, '2022-10-25 08:25:26', 1),
(140, '::1', 'admin12@gmail.com', 3, '2022-10-25 19:46:44', 1),
(141, '::1', 'admin12@gmail.com', 3, '2022-10-26 06:49:56', 1),
(142, '::1', 'admin12@gmail.com', 3, '2022-10-26 23:09:01', 1),
(143, '::1', 'admin12@gmail.com', 3, '2022-10-27 00:10:33', 1),
(144, '::1', 'renaldi.kristian', NULL, '2022-10-27 01:08:51', 0),
(145, '::1', 'renaldi.kristian', NULL, '2022-10-27 01:09:05', 0),
(146, '::1', 'renaldi.kristian', NULL, '2022-10-27 01:09:48', 0),
(147, '::1', 'maria.verena@ti.ukdw.ac.id', 29, '2022-10-27 01:10:18', 1),
(148, '::1', 'admin12@gmail.com', 3, '2022-10-27 01:11:26', 1),
(149, '::1', 'admin12@gmail.com', 3, '2022-10-27 19:31:44', 1),
(150, '::1', 'admin12@gmail.com', 3, '2022-10-27 23:31:03', 1),
(151, '::1', 'tes@gmail.com', 38, '2022-10-28 02:10:11', 1),
(152, '::1', 'admin12@gmail.com', 3, '2022-10-28 02:20:33', 1),
(153, '::1', 'admin12@gmail.com', 3, '2022-10-28 19:29:44', 1),
(154, '::1', 'admin12@gmail.com', 3, '2022-10-29 08:08:17', 1),
(155, '::1', 'admin12@gmail.com', 3, '2022-10-30 07:06:18', 1),
(156, '::1', 'admin12@gmail.com', 3, '2022-10-30 09:27:13', 1),
(157, '::1', 'admin12@gmail.com', 3, '2022-10-30 13:26:01', 1),
(158, '::1', 'admin12@gmail.com', 3, '2022-10-31 00:15:37', 1),
(159, '::1', 'admin12@gmail.com', 3, '2022-10-31 01:16:31', 1),
(160, '::1', 'admin12@gmail.com', 3, '2022-10-31 07:17:37', 1),
(161, '::1', 'admin12@gmail.com', 3, '2022-11-01 19:56:50', 1),
(162, '::1', 'admin12@gmail.com', 3, '2022-11-02 07:10:32', 1),
(163, '::1', 'yacinthus.dheka@ti.ukdw.ac.id', 9, '2022-11-02 07:49:57', 1),
(164, '::1', 'admin12@gmail.com', 3, '2022-11-02 07:50:12', 1),
(165, '::1', 'maria.verena@ti.ukdw.ac.id', 54, '2022-11-02 07:55:10', 1),
(166, '::1', 'admin12@gmail.com', 3, '2022-11-02 08:00:29', 1),
(167, '::1', 'admin12@gmail.com', 3, '2022-11-03 06:42:16', 1),
(168, '::1', 'admin12@gmail.com', 3, '2022-11-03 19:39:06', 1),
(169, '::1', 'admin12@gmail.com', 3, '2022-11-04 03:01:01', 1),
(170, '::1', 'admin12@gmail.com', 3, '2022-11-04 03:11:54', 1),
(171, '::1', 'admin12@gmail.com', 3, '2022-11-04 20:24:49', 1),
(172, '::1', 'admin12@gmail.com', 3, '2022-11-05 08:46:04', 1),
(173, '::1', 'admin12@gmail.com', 3, '2022-11-06 01:39:44', 1),
(174, '::1', 'admin12@gmail.com', 3, '2022-11-07 22:51:36', 1),
(175, '::1', 'admin12@gmail.com', 3, '2022-11-07 23:34:31', 1),
(176, '::1', 'admin12@gmail.com', 3, '2022-11-08 18:39:09', 1),
(177, '::1', 'admin12@gmail.com', 3, '2022-11-09 05:25:51', 1),
(178, '::1', 'admin12@gmail.com', 3, '2022-11-09 07:28:36', 1),
(179, '::1', 'admin12@gmail.com', 3, '2022-11-09 11:01:59', 1),
(180, '::1', 'admin12@gmail.com', 3, '2022-11-09 11:02:11', 1),
(181, '::1', 'admin12@gmail.com', 3, '2022-11-09 18:47:08', 1),
(182, '::1', 'admin12@gmail.com', 3, '2022-11-11 18:13:07', 1),
(183, '::1', 'admin12@gmail.com', 3, '2022-11-14 01:51:38', 1),
(184, '::1', 'admin12@gmail.com', 3, '2022-11-15 02:29:22', 1),
(185, '::1', 'admin12@gmail.com', 3, '2022-11-15 18:53:57', 1),
(186, '::1', 'admin12@gmail.com', 3, '2022-11-16 00:17:38', 1),
(187, '::1', 'admin12@gmail.com', 3, '2022-11-16 07:07:33', 1),
(188, '::1', 'admin12@gmail.com', 3, '2022-11-16 18:48:52', 1),
(189, '::1', 'admin12@gmail.com', 3, '2022-11-16 22:56:25', 1),
(190, '::1', 'admin12@gmail.com', 3, '2022-11-21 03:13:06', 1),
(191, '::1', 'admin12@gmail.com', 3, '2022-11-21 08:40:37', 1),
(192, '::1', 'admin12@gmail.com', 3, '2022-11-21 20:17:51', 1),
(193, '::1', 'admin12@gmail.com', 3, '2022-11-22 03:45:52', 1),
(194, '::1', 'admin12@gmail.com', 3, '2022-11-22 20:49:33', 1),
(195, '::1', 'admin12@gmail.com', 3, '2022-11-23 02:09:05', 1),
(196, '::1', 'admin12@gmail.com', 3, '2022-11-23 03:22:44', 1),
(197, '::1', 'admin12@gmail.com', 3, '2022-11-23 22:11:05', 1),
(198, '::1', 'admin12@gmail.com', 3, '2022-11-25 00:11:10', 1),
(199, '::1', 'admin12@gmail.com', 3, '2022-11-25 03:08:48', 1),
(200, '::1', 'admin12@gmail.com', 3, '2022-11-25 07:36:55', 1),
(201, '::1', 'admin12@gmail.com', 3, '2022-11-25 18:20:28', 1),
(202, '::1', 'admin12@gmail.com', 3, '2022-11-26 06:13:53', 1),
(203, '::1', 'admin12@gmail.com', 3, '2022-11-27 00:59:43', 1),
(204, '::1', 'admin12@gmail.com', 3, '2022-11-27 07:14:10', 1),
(205, '::1', 'admin12@gmail.com', 3, '2022-11-27 07:46:33', 1),
(206, '::1', 'admin12@gmail.com', 3, '2022-11-28 09:06:58', 1),
(207, '::1', 'admin12@gmail.com', 3, '2022-11-28 21:56:03', 1),
(208, '::1', 'admin12@gmail.com', 3, '2022-11-28 22:15:43', 1),
(209, '::1', 'admin12@gmail.com', 3, '2022-11-29 02:52:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `export_data`
--

CREATE TABLE `export_data` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `csrf_test_name` varchar(255) DEFAULT NULL,
  `json_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `export_data`
--

INSERT INTO `export_data` (`id`, `username`, `csrf_test_name`, `json_data`) VALUES
(1, 'adminukdw', 'f3baf7feb1b83cb23d524ecba74794fb', '[{\"idUser\":\"9\",\"idCardUser\":\"mhs-71190500\",\"nik\":\"0\",\"nim\":\"71190500\",\"alamat\":\"Jl. Merak no 10\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Maria Verena Putri Ngganggus\",\"username\":\"maria.verena\",\"created_at\":\"2022-10-25 20:27:14\",\"updated_at\":\"2022-11-05 09:28:15\",\"deleted_at\":null,\"foto_profil\":null,\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$V2h4YnNpaFhvOXhKa3JQQw$uqbCh7+kgR7piZiA7cb5kYPr0apEliU4r4J7t55WETQ\",\"email\":\"maria.verena@ti.ukdw.ac.id\",\"last_login\":\"2022-11-02 19:55:10\",\"active\":\"1\",\"id\":\"54\"},{\"idUser\":\"14\",\"idCardUser\":\"mhs-71190423\",\"nik\":\"0\",\"nim\":\"71190423\",\"alamat\":\"Jl. merak no 1\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 3, Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Yacinthus Dheka Pratomo Putro\",\"username\":\"yacinthus.dheka\",\"created_at\":\"2022-10-18 15:08:50\",\"updated_at\":\"2022-11-10 08:04:46\",\"deleted_at\":null,\"foto_profil\":null,\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$aUx6WWpwb3p4ZWRDTmtzag$iMtw5oH7RijS59JCvmcX26d74epVnNiGUY2g+1i78wM\",\"email\":\"yacinthus.dheka@ti.ukdw.ac.id\",\"last_login\":\"0000-00-00 00:00:00\",\"active\":\"1\",\"id\":\"59\"}]'),
(2, 'adminukdw', '5d96b25a62c52cee5cf26bbbdac0f1e2', '[{\"idUser\":\"9\",\"idCardUser\":\"mhs-71190500\",\"nik\":\"0\",\"nim\":\"71190500\",\"alamat\":\"Jl. Merak no 10\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Maria Verena Putri Ngganggus\",\"username\":\"maria.verena\",\"created_at\":\"2022-10-25 20:27:14\",\"updated_at\":\"2022-11-05 09:28:15\",\"deleted_at\":null,\"foto_profil\":null,\"email\":\"maria.verena@ti.ukdw.ac.id\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$V2h4YnNpaFhvOXhKa3JQQw$uqbCh7+kgR7piZiA7cb5kYPr0apEliU4r4J7t55WETQ\",\"last_login\":\"2022-11-02 19:55:10\",\"active\":\"1\",\"id\":\"54\"},{\"idUser\":\"14\",\"idCardUser\":\"mhs-71190423\",\"nik\":\"0\",\"nim\":\"71190423\",\"alamat\":\"Jl. merak no 1\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 3, Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Yacinthus Dheka Pratomo Putro\",\"username\":\"yacinthus.dheka\",\"created_at\":\"2022-10-18 15:08:50\",\"updated_at\":\"2022-11-10 08:04:46\",\"deleted_at\":null,\"foto_profil\":null,\"email\":\"yacinthus.dheka@ti.ukdw.ac.id\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$aUx6WWpwb3p4ZWRDTmtzag$iMtw5oH7RijS59JCvmcX26d74epVnNiGUY2g+1i78wM\",\"last_login\":\"0000-00-00 00:00:00\",\"active\":\"1\",\"id\":\"59\"},{\"idUser\":\"32\",\"idCardUser\":\"mhs-12345678\",\"nik\":null,\"nim\":\"12345678\",\"alamat\":\"ssss\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 3, Lab FTI 4\",\"nip\":null,\"nidn\":null,\"nama\":\"hai\",\"username\":\"hai\",\"created_at\":\"2022-11-21 16:37:41\",\"updated_at\":\"2022-11-26 11:56:50\",\"deleted_at\":\"2022-11-26 11:56:50\",\"foto_profil\":\"20221115142720-940593-07da94727992beab8b4b4e0e854dde16.jpg\",\"email\":\"hai@gmail.com\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$RlVSWGlOdmZhOHZhVzl3VA$wcy+JvIEqqjXqBUqY+WckjwilBRQtwNfiHCUCJD5ZZA\",\"last_login\":null,\"active\":\"0\",\"id\":\"79\"}]'),
(3, 'adminukdw', '4036d2752e2912c2ee21d9dd9ad67467', '[{\"idUser\":\"9\",\"idCardUser\":\"mhs-71190500\",\"nik\":\"0\",\"nim\":\"71190500\",\"alamat\":\"Jl. Merak no 10\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Maria Verena Putri Ngganggus\",\"username\":\"maria.verena\",\"created_at\":\"2022-10-25 20:27:14\",\"updated_at\":\"2022-11-05 09:28:15\",\"deleted_at\":null,\"foto_profil\":null,\"email\":\"maria.verena@ti.ukdw.ac.id\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$V2h4YnNpaFhvOXhKa3JQQw$uqbCh7+kgR7piZiA7cb5kYPr0apEliU4r4J7t55WETQ\",\"last_login\":\"2022-11-02 19:55:10\",\"active\":\"1\",\"id\":\"54\"},{\"idUser\":\"14\",\"idCardUser\":\"mhs-71190423\",\"nik\":\"0\",\"nim\":\"71190423\",\"alamat\":\"Jl. merak no 1\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 3, Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Yacinthus Dheka Pratomo Putro\",\"username\":\"yacinthus.dheka\",\"created_at\":\"2022-10-18 15:08:50\",\"updated_at\":\"2022-11-10 08:04:46\",\"deleted_at\":null,\"foto_profil\":null,\"email\":\"yacinthus.dheka@ti.ukdw.ac.id\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$aUx6WWpwb3p4ZWRDTmtzag$iMtw5oH7RijS59JCvmcX26d74epVnNiGUY2g+1i78wM\",\"last_login\":\"0000-00-00 00:00:00\",\"active\":\"1\",\"id\":\"59\"},{\"idUser\":\"32\",\"idCardUser\":\"mhs-12345678\",\"nik\":null,\"nim\":\"12345678\",\"alamat\":\"ssss\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 3, Lab FTI 4\",\"nip\":null,\"nidn\":null,\"nama\":\"hai\",\"username\":\"hai\",\"created_at\":\"2022-11-21 16:37:41\",\"updated_at\":\"2022-11-26 11:56:50\",\"deleted_at\":\"2022-11-26 11:56:50\",\"foto_profil\":\"20221115142720-940593-07da94727992beab8b4b4e0e854dde16.jpg\",\"email\":\"hai@gmail.com\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$RlVSWGlOdmZhOHZhVzl3VA$wcy+JvIEqqjXqBUqY+WckjwilBRQtwNfiHCUCJD5ZZA\",\"last_login\":null,\"active\":\"0\",\"id\":\"79\"}]'),
(4, 'adminukdw', 'f92aff5e7382ba05cf813bb3b6533598', '[{\"idUser\":\"9\",\"idCardUser\":\"mhs-71190500\",\"nik\":\"0\",\"nim\":\"71190500\",\"alamat\":\"Jl. Merak no 10\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Maria Verena Putri Ngganggus\",\"username\":\"maria.verena\",\"created_at\":\"2022-10-25 20:27:14\",\"updated_at\":\"2022-11-05 09:28:15\",\"deleted_at\":null,\"foto_profil\":null,\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$V2h4YnNpaFhvOXhKa3JQQw$uqbCh7+kgR7piZiA7cb5kYPr0apEliU4r4J7t55WETQ\",\"email\":\"maria.verena@ti.ukdw.ac.id\",\"last_login\":\"2022-11-02 19:55:10\",\"active\":\"1\",\"id\":\"54\"}]'),
(5, 'adminukdw', 'fd71468a7fc617a0fc6da59ff85ad91d', '[{\"idUser\":\"9\",\"idCardUser\":\"mhs-71190500\",\"nik\":\"0\",\"nim\":\"71190500\",\"alamat\":\"Jl. Merak no 10\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Maria Verena Putri Ngganggus\",\"username\":\"maria.verena\",\"created_at\":\"2022-10-25 20:27:14\",\"updated_at\":\"2022-11-05 09:28:15\",\"deleted_at\":null,\"foto_profil\":null,\"email\":\"maria.verena@ti.ukdw.ac.id\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$V2h4YnNpaFhvOXhKa3JQQw$uqbCh7+kgR7piZiA7cb5kYPr0apEliU4r4J7t55WETQ\",\"last_login\":\"2022-11-02 19:55:10\",\"active\":\"1\",\"id\":\"54\"},{\"idUser\":\"14\",\"idCardUser\":\"mhs-71190423\",\"nik\":\"0\",\"nim\":\"71190423\",\"alamat\":\"Jl. merak no 1\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 3, Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Yacinthus Dheka Pratomo Putro\",\"username\":\"yacinthus.dheka\",\"created_at\":\"2022-10-18 15:08:50\",\"updated_at\":\"2022-11-10 08:04:46\",\"deleted_at\":null,\"foto_profil\":null,\"email\":\"yacinthus.dheka@ti.ukdw.ac.id\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$aUx6WWpwb3p4ZWRDTmtzag$iMtw5oH7RijS59JCvmcX26d74epVnNiGUY2g+1i78wM\",\"last_login\":\"0000-00-00 00:00:00\",\"active\":\"1\",\"id\":\"59\"},{\"idUser\":\"32\",\"idCardUser\":\"mhs-12345678\",\"nik\":null,\"nim\":\"12345678\",\"alamat\":\"ssss\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 3, Lab FTI 4\",\"nip\":null,\"nidn\":null,\"nama\":\"hai\",\"username\":\"hai\",\"created_at\":\"2022-11-21 16:37:41\",\"updated_at\":\"2022-11-27 20:41:23\",\"deleted_at\":\"2022-11-27 20:41:23\",\"foto_profil\":\"20221115142720-940593-07da94727992beab8b4b4e0e854dde16.jpg\",\"email\":\"hai@gmail.com\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$RlVSWGlOdmZhOHZhVzl3VA$wcy+JvIEqqjXqBUqY+WckjwilBRQtwNfiHCUCJD5ZZA\",\"last_login\":null,\"active\":\"0\",\"id\":\"79\"}]'),
(6, 'adminukdw', '39681ac8ed1630425fe40bfa3effa0f0', '[{\"idUser\":\"9\",\"idCardUser\":\"mhs-71190500\",\"nik\":\"0\",\"nim\":\"71190500\",\"alamat\":\"Jl. Merak no 10\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Maria Verena Putri Ngganggus\",\"username\":\"maria.verena\",\"created_at\":\"2022-10-25 20:27:14\",\"updated_at\":\"2022-11-05 09:28:15\",\"deleted_at\":null,\"foto_profil\":null,\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$V2h4YnNpaFhvOXhKa3JQQw$uqbCh7+kgR7piZiA7cb5kYPr0apEliU4r4J7t55WETQ\",\"email\":\"maria.verena@ti.ukdw.ac.id\",\"last_login\":\"2022-11-02 19:55:10\",\"active\":\"1\",\"id\":\"54\"},{\"idUser\":\"14\",\"idCardUser\":\"mhs-71190423\",\"nik\":\"0\",\"nim\":\"71190423\",\"alamat\":\"Jl. merak no 1\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 3, Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Yacinthus Dheka Pratomo Putro\",\"username\":\"yacinthus.dheka\",\"created_at\":\"2022-10-18 15:08:50\",\"updated_at\":\"2022-11-10 08:04:46\",\"deleted_at\":null,\"foto_profil\":null,\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$aUx6WWpwb3p4ZWRDTmtzag$iMtw5oH7RijS59JCvmcX26d74epVnNiGUY2g+1i78wM\",\"email\":\"yacinthus.dheka@ti.ukdw.ac.id\",\"last_login\":\"0000-00-00 00:00:00\",\"active\":\"1\",\"id\":\"59\"}]'),
(7, 'adminukdw', '2fd6dbe019e2ec3de0553cba14dbb296', '[{\"idUser\":\"9\",\"idCardUser\":\"mhs-71190500\",\"nik\":\"0\",\"nim\":\"71190500\",\"alamat\":\"Jl. Merak no 10\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Maria Verena Putri Ngganggus\",\"username\":\"maria.verena\",\"created_at\":\"2022-10-25 20:27:14\",\"updated_at\":\"2022-11-05 09:28:15\",\"deleted_at\":null,\"foto_profil\":null,\"email\":\"maria.verena@ti.ukdw.ac.id\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$V2h4YnNpaFhvOXhKa3JQQw$uqbCh7+kgR7piZiA7cb5kYPr0apEliU4r4J7t55WETQ\",\"last_login\":\"2022-11-02 19:55:10\",\"active\":\"1\",\"id\":\"54\"},{\"idUser\":\"14\",\"idCardUser\":\"mhs-71190423\",\"nik\":\"0\",\"nim\":\"71190423\",\"alamat\":\"Jl. merak no 1\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 3, Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Yacinthus Dheka Pratomo Putro\",\"username\":\"yacinthus.dheka\",\"created_at\":\"2022-10-18 15:08:50\",\"updated_at\":\"2022-11-10 08:04:46\",\"deleted_at\":null,\"foto_profil\":null,\"email\":\"yacinthus.dheka@ti.ukdw.ac.id\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$aUx6WWpwb3p4ZWRDTmtzag$iMtw5oH7RijS59JCvmcX26d74epVnNiGUY2g+1i78wM\",\"last_login\":\"0000-00-00 00:00:00\",\"active\":\"1\",\"id\":\"59\"},{\"idUser\":\"32\",\"idCardUser\":\"mhs-12345678\",\"nik\":null,\"nim\":\"12345678\",\"alamat\":\"ssss\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 3, Lab FTI 4\",\"nip\":null,\"nidn\":null,\"nama\":\"hai\",\"username\":\"hai\",\"created_at\":\"2022-11-21 16:37:41\",\"updated_at\":\"2022-11-27 20:41:23\",\"deleted_at\":\"2022-11-27 20:41:23\",\"foto_profil\":\"20221115142720-940593-07da94727992beab8b4b4e0e854dde16.jpg\",\"email\":\"hai@gmail.com\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$RlVSWGlOdmZhOHZhVzl3VA$wcy+JvIEqqjXqBUqY+WckjwilBRQtwNfiHCUCJD5ZZA\",\"last_login\":null,\"active\":\"0\",\"id\":\"79\"}]'),
(8, 'adminukdw', '084d39cc76b83e4cd93448970249d8eb', '[{\"idUser\":\"9\",\"idCardUser\":\"mhs-71190500\",\"nik\":\"0\",\"nim\":\"71190500\",\"alamat\":\"Jl. Merak no 10\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Maria Verena Putri Ngganggus\",\"username\":\"maria.verena\",\"created_at\":\"2022-10-25 20:27:14\",\"updated_at\":\"2022-11-05 09:28:15\",\"deleted_at\":null,\"foto_profil\":null,\"email\":\"maria.verena@ti.ukdw.ac.id\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$V2h4YnNpaFhvOXhKa3JQQw$uqbCh7+kgR7piZiA7cb5kYPr0apEliU4r4J7t55WETQ\",\"last_login\":\"2022-11-02 19:55:10\",\"active\":\"1\",\"id\":\"54\"},{\"idUser\":\"14\",\"idCardUser\":\"mhs-71190423\",\"nik\":\"0\",\"nim\":\"71190423\",\"alamat\":\"Jl. merak no 1\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 3, Lab FTI 4\",\"nip\":\"0\",\"nidn\":\"0\",\"nama\":\"Yacinthus Dheka Pratomo Putro\",\"username\":\"yacinthus.dheka\",\"created_at\":\"2022-10-18 15:08:50\",\"updated_at\":\"2022-11-10 08:04:46\",\"deleted_at\":null,\"foto_profil\":null,\"email\":\"yacinthus.dheka@ti.ukdw.ac.id\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$aUx6WWpwb3p4ZWRDTmtzag$iMtw5oH7RijS59JCvmcX26d74epVnNiGUY2g+1i78wM\",\"last_login\":\"0000-00-00 00:00:00\",\"active\":\"1\",\"id\":\"59\"},{\"idUser\":\"32\",\"idCardUser\":\"mhs-12345678\",\"nik\":null,\"nim\":\"12345678\",\"alamat\":\"ssss\",\"no_hp\":\"2147483647\",\"tipe_user\":\"Mahasiswa\",\"room_access\":\"ALFTI3\",\"permission_room\":\"Lab FTI 3, Lab FTI 4\",\"nip\":null,\"nidn\":null,\"nama\":\"hai\",\"username\":\"hai\",\"created_at\":\"2022-11-21 16:37:41\",\"updated_at\":\"2022-11-27 20:41:23\",\"deleted_at\":\"2022-11-27 20:41:23\",\"foto_profil\":\"20221115142720-940593-07da94727992beab8b4b4e0e854dde16.jpg\",\"email\":\"hai@gmail.com\",\"password_hash\":\"$argon2id$v=19$m=2048,t=4,p=4$RlVSWGlOdmZhOHZhVzl3VA$wcy+JvIEqqjXqBUqY+WckjwilBRQtwNfiHCUCJD5ZZA\",\"last_login\":null,\"active\":\"0\",\"id\":\"79\"}]'),
(9, 'adminukdw', 'a3ba2b66b5ef9465aa3079f091ab8a51', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `hapus_user`
--

CREATE TABLE `hapus_user` (
  `idUser` int(11) NOT NULL,
  `nik` bigint(20) DEFAULT NULL,
  `nim` int(8) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` int(12) DEFAULT NULL,
  `tipe_user` enum('Mahasiswa','Dosen','Staff','Tamu') DEFAULT NULL,
  `room_access` varchar(50) DEFAULT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `nidn` bigint(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `foto_profil` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hapus_user`
--

INSERT INTO `hapus_user` (`idUser`, `nik`, `nim`, `alamat`, `no_hp`, `tipe_user`, `room_access`, `nip`, `nidn`, `nama`, `username`, `created_at`, `updated_at`, `deleted_at`, `foto_profil`, `last_login`) VALUES
(9, 0, 71190423, 'Jl. merak no 1', 2147483647, 'Mahasiswa', 'ALFTI3', 0, 0, 'Yacinthus Dheka Pratomo Putro', 'yacinthus.dheka', '2022-10-18 15:08:50', NULL, NULL, NULL, '2022-10-25 13:56:51'),
(44, 0, 71190500, 'Jl. Merak no 10', 2147483647, 'Mahasiswa', 'ALFTI3', 0, 0, 'Maria Verena Putri Ngganggus', 'mariaverena', '2022-10-25 20:27:14', NULL, NULL, NULL, '2022-10-27 13:10:18'),
(46, 0, 0, 'Jl. Olahraga no 1', 2147483647, 'Dosen', 'ALFTI3', 123456, 112356432, 'tes', 'tes', '2022-10-29 20:21:17', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(51, 0, 71190500, 'Jl. Merak no 10', 2147483647, 'Mahasiswa', 'ALFTI3', 0, 0, 'Maria Verena Putri Ngganggus', 'maria.verena', '2022-10-25 20:27:14', NULL, NULL, NULL, '2022-10-27 13:10:18'),
(52, 0, 0, 'Jl. Olahraga no 1', 2147483647, 'Dosen', 'ALFTI3', 123456, 1123564333, 'Tes', 'tes', '2022-10-29 20:21:17', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(58, 0, 71190423, 'Jl. Merak no 5', 2147483647, 'Mahasiswa', 'ALFTI3', 0, 0, 'Yacinthus Dheka Pratomo Putro', 'yacinthus.dheka', '2022-11-02 20:20:03', NULL, NULL, NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `aktivitas` varchar(255) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `tipe_user` enum('Admin','Mahasiswa','Dosen','Staff','Tamu') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`id`, `username`, `aktivitas`, `tanggal`, `tipe_user`) VALUES
(1, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-04 15:11:54', 'Admin'),
(2, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-05 08:24:50', 'Admin'),
(3, 'adminukdw', 'Admin Menghapus User Mahasiswa yacinthus.dheka', '2022-11-05 08:33:27', 'Admin'),
(4, 'adminukdw', 'Admin Mengaktifkan User Mahasiswa yacinthus.dheka', '2022-11-05 08:33:33', 'Admin'),
(5, 'adminukdw', 'Admin Menghapus Kartu card01', '2022-11-05 09:27:57', 'Admin'),
(6, 'adminukdw', 'Admin Mengaktifkan Kartu card01', '2022-11-05 09:27:59', 'Admin'),
(7, 'adminukdw', 'Admin Menghapus User Mahasiswa maria.verena', '2022-11-05 09:28:09', 'Admin'),
(8, 'adminukdw', 'Admin Mengaktifkan User Mahasiswa maria.verena', '2022-11-05 09:28:15', 'Admin'),
(9, 'adminukdw', 'Admin Menghapus User Mahasiswa yacinthus.dheka', '2022-11-05 09:28:27', 'Admin'),
(10, 'adminukdw', 'Admin Mengaktifkan User Mahasiswa yacinthus.dheka', '2022-11-05 09:28:36', 'Admin'),
(11, 'adminukdw', 'Admin Menghapus Kartu card01', '2022-11-05 09:28:47', 'Admin'),
(12, 'adminukdw', 'Admin Mengaktifkan Kartu card01', '2022-11-05 09:28:49', 'Admin'),
(13, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-05 20:46:04', 'Admin'),
(14, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-06 13:39:47', 'Admin'),
(15, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-08 11:51:37', 'Admin'),
(16, 'adminukdw', 'Admin Melakukan Logout', '2022-11-08 12:34:22', 'Admin'),
(17, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-08 12:34:31', 'Admin'),
(18, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-09 07:39:10', 'Admin'),
(20, 'adminukdw', 'Admin Melakukan Logout', '2022-11-10 00:01:50', 'Admin'),
(21, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-10 00:01:59', 'Admin'),
(22, 'adminukdw', 'Admin Melakukan Logout', '2022-11-10 00:02:07', 'Admin'),
(23, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-10 00:02:12', 'Admin'),
(24, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-10 07:47:08', 'Admin'),
(25, 'adminukdw', 'Admin Menghapus User Mahasiswa yacinthus.dheka', '2022-11-10 08:04:20', 'Admin'),
(26, 'adminukdw', 'Admin Mengaktifkan User Mahasiswa yacinthus.dheka', '2022-11-10 08:04:46', 'Admin'),
(27, 'adminukdw', 'Admin Menambahkan User Dosen halo', '2022-11-10 08:10:16', 'Admin'),
(28, 'adminukdw', 'Admin Membuat Kartu Dari User dsn-25363774881 / halo / Dosen', '2022-11-10 08:14:21', 'Admin'),
(29, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-10 10:59:45', 'Admin'),
(30, 'adminukdw', 'Admin Menambahkan Ruangan ', '2022-11-10 15:55:19', 'Admin'),
(31, 'adminukdw', 'Admin Menambahkan Ruangan dd', '2022-11-10 16:09:47', 'Admin'),
(32, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-12 07:13:08', 'Admin'),
(33, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-14 14:51:40', 'Admin'),
(34, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-15 15:29:23', 'Admin'),
(35, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-16 07:53:58', 'Admin'),
(36, 'adminukdw', 'Admin Membuat Kartu Dari User mhs-71190423 / yacinthus.dheka / Mahasiswa', '2022-11-16 09:41:00', 'Admin'),
(37, 'adminukdw', 'Admin Membuat Kartu Dari User mhs-71190423 / yacinthus.dheka / Mahasiswa', '2022-11-16 10:16:39', 'Admin'),
(38, 'adminukdw', 'Admin Membuat Kartu Dari User mhs-71190423 / yacinthus.dheka / Mahasiswa', '2022-11-16 10:17:39', 'Admin'),
(39, 'adminukdw', 'Admin Membuat Kartu Dari User mhs-71190423 / yacinthus.dheka / Mahasiswa', '2022-11-16 10:18:13', 'Admin'),
(40, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-16 14:36:18', 'Admin'),
(41, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-16 15:56:50', 'Admin'),
(42, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-16 16:02:52', 'Admin'),
(43, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-16 20:07:35', 'Admin'),
(44, 'adminukdw', 'Admin Membuat Kartu Dari User mhs-71190500 / maria.verena', '2022-11-16 23:24:02', 'Admin'),
(45, 'adminukdw', 'Admin Membuat Kartu Dari User mhs-71190500 / maria.verena', '2022-11-16 23:25:42', 'Admin'),
(46, 'adminukdw', 'Admin Menghapus Kartu card-mhs-71190500', '2022-11-16 23:25:56', 'Admin'),
(47, 'adminukdw', 'Admin Membuat Kartu Dari User mhs-71190500 / maria.verena', '2022-11-16 23:29:56', 'Admin'),
(48, 'adminukdw', 'Admin Membuat Kartu Dari User mhs-71190500 / maria.verena', '2022-11-16 23:30:42', 'Admin'),
(49, 'adminukdw', 'Admin Menghapus Kartu card-mhs71190500', '2022-11-17 00:11:17', 'Admin'),
(50, 'adminukdw', 'Admin Menghapus Kartu card-mhs71190423', '2022-11-17 00:54:26', 'Admin'),
(51, 'adminukdw', 'Admin Mengaktifkan Kartu card-mhs71190423', '2022-11-17 00:54:29', 'Admin'),
(52, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-17 07:48:53', 'Admin'),
(53, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-17 11:56:26', 'Admin'),
(54, 'adminukdw', 'Admin Menambahkan User Mahasiswa hai', '2022-11-17 14:12:08', 'Admin'),
(55, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-17 15:12:54', 'Admin'),
(56, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-21 16:13:06', 'Admin'),
(57, 'adminukdw', 'Admin Menambahkan User Mahasiswa hai', '2022-11-21 16:37:42', 'Admin'),
(58, 'adminukdw', 'Admin Mengubah Data User hai', '2022-11-21 16:51:33', 'Admin'),
(59, 'adminukdw', 'Admin Mengubah Data User hai', '2022-11-21 16:53:56', 'Admin'),
(60, 'adminukdw', 'Admin Mengubah Data User hai', '2022-11-21 16:54:37', 'Admin'),
(61, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-21 21:40:38', 'Admin'),
(62, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-22 09:17:52', 'Admin'),
(63, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-22 16:45:56', 'Admin'),
(64, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-23 09:49:34', 'Admin'),
(65, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-23 15:09:05', 'Admin'),
(66, 'adminukdw', 'Admin Melakukan Logout', '2022-11-23 16:22:35', 'Admin'),
(67, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-23 16:22:44', 'Admin'),
(68, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-24 11:11:06', 'Admin'),
(69, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-25 13:11:11', 'Admin'),
(70, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-25 13:23:18', 'Admin'),
(71, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-25 13:57:37', 'Admin'),
(72, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-25 16:08:48', 'Admin'),
(73, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-25 16:23:20', 'Admin'),
(74, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-25 20:36:55', 'Admin'),
(75, 'adminukdw', 'Admin Menghapus User Mahasiswa hai', '2022-11-26 11:56:50', 'Admin'),
(76, 'adminukdw', 'Admin Menghapus User Dosen halo', '2022-11-26 12:04:11', 'Admin'),
(77, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-26 12:04:25', 'Admin'),
(78, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-26 19:13:54', 'Admin'),
(79, 'adminukdw', 'Admin Mengaktifkan User Mahasiswa hai', '2022-11-27 20:41:10', 'Admin'),
(80, 'adminukdw', 'Admin Menghapus User Mahasiswa hai', '2022-11-27 20:41:23', 'Admin'),
(81, 'adminukdw', 'Admin Melakukan Logout', '2022-11-27 20:46:20', 'Admin'),
(82, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-27 20:46:33', 'Admin'),
(83, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-28 22:07:00', 'Admin'),
(84, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-29 10:56:05', 'Admin'),
(85, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-29 11:15:43', 'Admin'),
(86, 'adminukdw', 'Admin Melakukan Aktivitas Login', '2022-11-29 13:01:25', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1665508780, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id_gedung` int(11) NOT NULL,
  `nama_ruangan` varchar(50) NOT NULL,
  `kode_ruangan` varchar(50) NOT NULL,
  `kondisi_ruangan` text NOT NULL,
  `kapasitas_ruangan` int(11) NOT NULL,
  `terisi` bigint(20) DEFAULT NULL,
  `gedung` varchar(50) DEFAULT NULL,
  `lantai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id_gedung`, `nama_ruangan`, `kode_ruangan`, `kondisi_ruangan`, `kapasitas_ruangan`, `terisi`, `gedung`, `lantai`) VALUES
(1, 'Lab FTI 3', 'ALFTI3', 'Normal', 82, 0, 'Agape', 3),
(2, 'Lab FTI 4', 'ALFTI4', 'Normal', 30, 0, 'Agape', 4);

-- --------------------------------------------------------

--
-- Table structure for table `smartcard`
--

CREATE TABLE `smartcard` (
  `idCard` varchar(50) NOT NULL,
  `idCardUser` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smartcard`
--

INSERT INTO `smartcard` (`idCard`, `idCardUser`, `created_at`, `updated_at`, `deleted_at`) VALUES
('card-dsn25363774881', 'dsn-25363774881', '2022-11-10 08:14:21', NULL, NULL),
('card-mhs71190423', 'mhs-71190423', '2022-11-04 08:08:46', '2022-11-17 00:54:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `idCardUser` varchar(50) DEFAULT NULL,
  `nik` bigint(20) DEFAULT NULL,
  `nim` int(8) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` int(12) DEFAULT NULL,
  `tipe_user` enum('Mahasiswa','Dosen','Staff','Tamu') DEFAULT NULL,
  `permission_room` text DEFAULT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `nidn` bigint(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `foto_profil` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `idCardUser`, `nik`, `nim`, `alamat`, `no_hp`, `tipe_user`, `permission_room`, `nip`, `nidn`, `nama`, `username`, `created_at`, `updated_at`, `deleted_at`, `foto_profil`) VALUES
(8, 'dsn-112356432', 0, 0, 'Jl. Olahraga no 1', 2147483647, 'Dosen', 'Lab FTI 3', 123456, 112356432, 'Tes', 'tes', '2022-10-29 20:21:17', '2022-10-31 22:53:20', NULL, NULL),
(9, 'mhs-71190500', 0, 71190500, 'Jl. Merak no 10', 2147483647, 'Mahasiswa', 'Lab FTI 4', 0, 0, 'Maria Verena Putri Ngganggus', 'maria.verena', '2022-10-25 20:27:14', '2022-11-05 09:28:15', NULL, NULL),
(14, 'mhs-71190423', 0, 71190423, 'Jl. merak no 1', 2147483647, 'Mahasiswa', 'Lab FTI 3, Lab FTI 4', 0, 0, 'Yacinthus Dheka Pratomo Putro', 'yacinthus.dheka', '2022-10-18 15:08:50', '2022-11-10 08:04:46', NULL, NULL),
(29, 'dsn-25363774881', NULL, NULL, 'Jl. Anggrek no 5', 2147483647, 'Dosen', 'Lab FTI 4', 1234567789, 25363774881, 'halo', 'halo', '2022-11-10 08:10:16', '2022-11-26 12:04:11', '2022-11-26 12:04:11', 'logo-ukdw_1.png'),
(32, 'mhs-12345678', NULL, 12345678, 'ssss', 2147483647, 'Mahasiswa', 'Lab FTI 3, Lab FTI 4', NULL, NULL, 'hai', 'hai', '2022-11-21 16:37:41', '2022-11-27 20:41:23', '2022-11-27 20:41:23', '20221115142720-940593-07da94727992beab8b4b4e0e854dde16.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`, `last_login`) VALUES
(3, 'admin12@gmail.com', 'adminukdw', '$argon2id$v=19$m=2048,t=4,p=4$dGEwdXdZdjBwdWdEZVNoWQ$V65vHFqUUAeBT+mvt27Fr31CxPnZNk6xgrE3eEY0y0U', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-10-11 12:39:55', '2022-11-29 02:52:44', NULL, '2022-10-13 07:17:29'),
(53, 'tes1234@gmail.com', 'tes', '$argon2id$v=19$m=2048,t=4,p=4$UFNIeVJkT0dOcTUxOERNMg$BNEWaPYrj3g1n1+UETBhbFqj2uMxOX3dUX70dxwMDcw', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-10-29 20:21:17', '2022-10-31 22:53:20', NULL, '0000-00-00 00:00:00'),
(54, 'maria.verena@ti.ukdw.ac.id', 'maria.verena', '$argon2id$v=19$m=2048,t=4,p=4$V2h4YnNpaFhvOXhKa3JQQw$uqbCh7+kgR7piZiA7cb5kYPr0apEliU4r4J7t55WETQ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-10-25 20:27:14', '2022-11-05 09:28:15', NULL, '2022-11-02 19:55:10'),
(59, 'yacinthus.dheka@ti.ukdw.ac.id', 'yacinthus.dheka', '$argon2id$v=19$m=2048,t=4,p=4$aUx6WWpwb3p4ZWRDTmtzag$iMtw5oH7RijS59JCvmcX26d74epVnNiGUY2g+1i78wM', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-11-02 20:20:03', '2022-11-10 08:04:46', NULL, '0000-00-00 00:00:00'),
(74, 'halo@gmail.com', 'halo', '$argon2id$v=19$m=2048,t=4,p=4$Lk40Zk9JLnYwQmNsbUsueg$9Szx8JvJrqbJGsrwGANBS4V/ue3nkQTsZRwazzCGorE', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-11-10 08:10:16', '2022-11-26 12:04:11', '2022-11-26 12:04:11', NULL),
(79, 'hai@gmail.com', 'hai', '$argon2id$v=19$m=2048,t=4,p=4$RlVSWGlOdmZhOHZhVzl3VA$wcy+JvIEqqjXqBUqY+WckjwilBRQtwNfiHCUCJD5ZZA', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-11-21 16:37:41', '2022-11-27 20:41:23', '2022-11-27 20:41:23', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivitas_user`
--
ALTER TABLE `aktivitas_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCard` (`idCard`);

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `export_data`
--
ALTER TABLE `export_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hapus_user`
--
ALTER TABLE `hapus_user`
  ADD PRIMARY KEY (`idUser`);

--
-- Indexes for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id_gedung`),
  ADD KEY `kode_ruangan` (`kode_ruangan`);

--
-- Indexes for table `smartcard`
--
ALTER TABLE `smartcard`
  ADD PRIMARY KEY (`idCard`),
  ADD KEY `idCardUser` (`idCardUser`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD KEY `idCardUser` (`idCardUser`),
  ADD KEY `idCardUser_2` (`idCardUser`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktivitas_user`
--
ALTER TABLE `aktivitas_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `export_data`
--
ALTER TABLE `export_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hapus_user`
--
ALTER TABLE `hapus_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id_gedung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aktivitas_user`
--
ALTER TABLE `aktivitas_user`
  ADD CONSTRAINT `aktivitas_user_fk` FOREIGN KEY (`idCard`) REFERENCES `smartcard` (`idCard`);

--
-- Constraints for table `smartcard`
--
ALTER TABLE `smartcard`
  ADD CONSTRAINT `smartcard_fk` FOREIGN KEY (`idCardUser`) REFERENCES `user` (`idCardUser`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
