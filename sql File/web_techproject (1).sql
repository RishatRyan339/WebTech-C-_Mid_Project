-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2023 at 08:53 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_techproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contacts` bigint(12) DEFAULT NULL,
  `subject` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `email`, `contacts`, `subject`) VALUES
(1, 'neo6', 'rishatryan4452@gmail.com', 3312121212, 'dsd');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `AdminuserName` varchar(20) CHARACTER SET latin1 NOT NULL,
  `MobileNumber` bigint(12) NOT NULL,
  `Email` varchar(120) CHARACTER SET latin1 NOT NULL,
  `Password` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `userRole` int(1) DEFAULT NULL,
  `isActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `userRole`, `isActive`) VALUES
(1, NULL, 'admin', 0, '', 'admin123', '2023-10-28 16:01:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblfirereport`
--

CREATE TABLE `tblfirereport` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `mobileNumber` bigint(12) DEFAULT NULL,
  `location` mediumtext CHARACTER SET latin1 DEFAULT NULL,
  `message` mediumtext CHARACTER SET latin1 DEFAULT NULL,
  `assignTo` int(11) DEFAULT NULL,
  `status` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `assignTime` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `assignTme` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Service` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblfirereport`
--

INSERT INTO `tblfirereport` (`id`, `fullName`, `mobileNumber`, `location`, `message`, `assignTo`, `status`, `postingDate`, `assignTime`, `assignTme`, `Service`) VALUES
(16, 'r', 40404, 'r', 'r', 0, 'Request Completed', '2023-10-31 12:03:53', '31-10-23 09:10:31', '', 'Med'),
(17, 'r', 40404, '12th street', 'asdads', 0, 'Team On the Way', '2023-10-31 12:04:20', '31-10-23 09:10:05', '', 'Fire'),
(18, 'r', 40404, '12th street', 'asdads', 0, 'Team On the Way', '2023-10-31 12:06:50', '31-10-23 09:10:59', '', 'Fire'),
(19, 'r', 40404, '12th street', 'asdads', 0, 'Team On the Way', '2023-10-31 12:07:12', '31-10-23 01:10:24', '', 'Fire'),
(20, 'Rishat Ryan', 1942760475, 'Mahakhali', '2 injured\r\n', 0, 'Request Completed', '2023-10-31 19:11:37', '31-10-23 08:10:33', '', 'Med'),
(21, 'Rishat Ryan', 1942760475, 'r', 'r', 0, 'Request Completed', '2023-10-31 21:30:59', '31-10-23 10:10:17', '', 'Fire'),
(26, 'Rishat Ryan', 1942760475, 'Mohanagar', 'Mohan', 0, 'Request Completed', '2023-11-02 21:29:51', '02-11-23 10:11:11', '', 'Fire'),
(27, 'Rishat Ryan', 1942760475, 'Mohanagar', 'Medic', 0, 'Team On the Way', '2023-11-02 21:30:00', '05-11-23 07:11:52', '', 'Med'),
(28, 'Ahmed', 1212121212, 'JIvnSagarStreet', 'NEed Fire ', 0, 'Request Completed', '2023-11-02 21:30:18', '02-11-23 10:11:10', '', 'Fire'),
(29, 'Abid Hasan', 441414141, '23 Kamalapur ', 'We need fire assistance', 0, 'Team On the Way', '2023-11-02 21:30:35', '02-11-23 10:11:34', '', 'Fire'),
(30, 'Rishat Ryan', 1942760475, 'Jamalpur', 'We need medic ASAP', 0, 'Team On the Way', '2023-11-02 21:30:49', '05-11-23 07:11:18', '', 'Med'),
(31, 'Rishat Ryan', 1942760475, 'da', 'da', 0, 'Request Completed', '2023-11-02 21:30:57', '02-11-23 11:11:28', '', 'Fire'),
(32, 'Rishat Ryan', 1942760475, 'da', 'da', 0, 'Fire Relief Work in Progress', '2023-11-02 21:31:01', '04-11-23 02:11:32', '', 'Med'),
(33, 'Rishat Ryan', 1942760475, 'd', 'd', 0, 'Team On the Way', '2023-11-02 21:57:06', '02-11-23 10:11:17', '', 'Fire'),
(34, 'Rishat Ryan', 1942760475, 'r', 'r', 0, 'Request Completed', '2023-11-02 22:32:33', '02-11-23 11:11:44', '', 'Fire'),
(35, 'Fahmid Rayhan Khan', 53454534, 'f', 'f', 0, 'Request Completed', '2023-11-02 22:34:24', '02-11-23 11:11:17', '', 'Fire'),
(36, 'Fahad', 1231313, 'Mirpur', 'Get us medic team!', 0, 'Request Completed', '2023-11-03 18:41:57', '03-11-23 07:11:27', '', 'Med'),
(37, 'Jamal', 1212121212, 'Mogbazar', 'Send us your med asap! 22 Injured', 0, 'Request Completed', '2023-11-03 18:42:35', '03-11-23 07:11:50', '', 'Med'),
(38, 'Rishat Ryan', 1942760475, 'Hatirjheel', 'Building Crash, need medic', 0, 'Team On the Way', '2023-11-03 18:42:57', '03-11-23 08:11:56', '', 'Fire'),
(39, 'Rishat Ryan', 1942760475, 'Gandaria', '.............d', 0, 'Fire Relief Work in Progress', '2023-11-03 18:43:13', '03-11-23 07:11:37', '', 'Med'),
(40, 'Rishat Ryan', 1942760475, 'Jamalpur', 'Need fire assistance ASAP!', 0, 'Request Completed', '2023-11-03 19:48:51', '03-11-23 08:11:01', '', 'Fire'),
(41, 'Rishat Ryan', 1942760475, 'hyderabadd', 'd', 0, 'Fire Relief Work in Progress', '2023-11-03 19:51:52', '03-11-23 08:11:00', '', 'Fire'),
(42, 'Rishat Ryan', 1942760475, 'r', 'r', 0, 'Fire Relief Work in Progress', '2023-11-03 19:52:59', '03-11-23 08:11:05', '', 'Fire'),
(43, 'Rishat Ryan', 1942760475, 'Mogbazar', 'Fire at scene', 0, 'Request Completed', '2023-11-03 23:12:06', '04-11-23 12:11:20', '', 'Fire'),
(44, 'Rishat Ryan', 1942760475, 'Mohammadpur', 'QUICK', 0, 'Request Completed', '2023-11-03 23:25:08', '04-11-23 12:11:14', '', 'Fire'),
(45, 'Rishat Ryan', 1942760475, 'SamanthaPur', 'Need Fire Team Emergency', 0, 'Request Completed', '2023-11-05 18:40:51', '05-11-23 07:11:00', '', 'Fire'),
(46, 'Rishat Ryan', 1942760475, 'abcd', 'available', 0, 'Fire Relief Work in Progress', '2023-11-05 18:41:50', '05-11-23 07:11:55', '', 'Fire'),
(47, 'Rishat Ryan', 1942760475, 'Mogbazar', 'Mogbazar', 0, 'Request Completed', '2023-11-06 07:02:00', '06-11-23 08:11:12', '', 'Fire'),
(48, 'Rishat Ryan', 1942760475, 'r', 'r', 0, 'Request Completed', '2023-11-06 07:03:53', '06-11-23 08:11:06', '', 'Fire'),
(49, 'Rishat Ryan', 1942760475, 'r', 'r', 0, 'Request Completed', '2023-11-06 07:08:55', '06-11-23 08:11:15', '', 'Med'),
(50, 'Abid Hasan', 441414141, 'adada', 'adadada', 0, 'Request Completed', '2023-11-06 07:12:04', '06-11-23 08:11:19', '', 'Med'),
(51, 'Abid Hasan', 441414141, 'ada', 'dad', 0, 'Fire Relief Work in Progress', '2023-11-06 07:12:08', '06-11-23 08:11:05', '', 'Fire'),
(52, 'Fahmid Rayhan Khan', 53454534, 'jamalpur', 'fire unit', 0, 'Request Completed', '2023-11-06 07:22:21', '06-11-23 08:11:28', '', 'Fire'),
(53, 'Rishat Ryan', 1942760475, 'd', 'd', 0, 'Request Completed', '2023-11-06 07:23:22', '06-11-23 08:11:29', '', 'Fire'),
(54, 'Rishat Ryan', 1942760475, 'd', 'd', 0, 'Request Completed', '2023-11-06 07:24:59', '06-11-23 08:11:04', '', 'Fire'),
(55, 'Rishat Ryan', 1942760475, 'Gulshan', 'Send Fire ASAP!', NULL, NULL, '2023-11-06 07:26:55', NULL, '', 'Fire'),
(56, 'Rishat Ryan', 1942760475, 'Mohakhali', 'Send Fire units\r\n', 0, 'Request Completed', '2023-11-06 07:27:06', '06-11-23 08:11:14', '', 'Fire'),
(57, 'Rishat Ryan', 1942760475, 'Dhaka Mohanaagar', 'Send 4 man team, 10 injured', 0, 'Request Completed', '2023-11-06 07:33:24', '06-11-23 08:11:31', '', 'Med'),
(58, 'Rishat Ryan', 1942760475, 'ddd', 'aaaaaaaaaaaa', 0, 'Fire Relief Work in Progress', '2023-11-06 07:36:03', '06-11-23 08:11:09', '', 'Med'),
(59, 'Rishat Ryan', 1942760475, 'd', 'd', 0, 'Team On the Way', '2023-11-06 07:38:35', '06-11-23 08:11:43', '', 'Med'),
(60, 'Rishat Ryan', 1942760475, 'Mirzapur', 'Send medic', 0, 'Request Completed', '2023-11-06 07:40:02', '06-11-23 08:11:26', '', 'Med');

-- --------------------------------------------------------

--
-- Table structure for table `tblfirerequesthistory`
--

CREATE TABLE `tblfirerequesthistory` (
  `id` int(11) NOT NULL,
  `requestId` int(11) DEFAULT NULL,
  `status` varchar(120) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Service` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblfirerequesthistory`
--

INSERT INTO `tblfirerequesthistory` (`id`, `requestId`, `status`, `remark`, `postingDate`, `Service`) VALUES
(25, 23, 'Request Completed', 'kj', '2023-11-02 21:19:31', NULL),
(35, 26, 'Team On the Way', 'Team is on way', '2023-11-02 21:31:21', NULL),
(36, 26, 'Team On the Way', 'team on way', '2023-11-02 21:39:37', NULL),
(37, 29, 'Team On the Way', 'l', '2023-11-02 21:52:50', NULL),
(38, 33, 'Team On the Way', 'd', '2023-11-02 21:57:28', NULL),
(39, 38, 'Fire Relief Work in Progress', 'he', '2023-11-02 22:17:46', NULL),
(40, 28, 'Team On the Way', 'b', '2023-11-02 22:18:03', NULL),
(41, 40, 'Fire Relief Work in Progress', 'hj', '2023-11-02 22:18:19', NULL),
(42, 31, 'Team On the Way', 'dada', '2023-11-02 22:24:34', NULL),
(43, 42, 'Fire Relief Work in Progress', 'dada', '2023-11-02 22:24:42', NULL),
(44, 35, 'Fire Relief Work in Progress', 'dd', '2023-11-02 22:28:44', NULL),
(45, 34, 'Team On the Way', 'd', '2023-11-02 22:32:48', NULL),
(46, 45, 'Request Completed', 'k', '2023-11-02 22:33:49', NULL),
(47, 35, 'Team On the Way', 'sent', '2023-11-02 22:35:26', NULL),
(48, 47, 'Fire Relief Work in Progress', 'on process', '2023-11-02 22:35:36', NULL),
(49, 48, 'Request Completed', 'completed', '2023-11-02 22:40:40', NULL),
(50, 37, 'Team On the Way', 'send', '2023-11-03 18:45:41', NULL),
(51, 35, 'Fire Relief Work in Progress', 'now', '2023-11-03 19:39:03', NULL),
(52, 34, 'Fire Relief Work in Progress', 'j', '2023-11-03 19:42:47', NULL),
(53, 34, 'Request Completed', 'j', '2023-11-03 19:43:46', NULL),
(54, 38, 'Team On the Way', 'new req', '2023-11-03 19:47:28', NULL),
(55, 40, 'Team On the Way', 'new req', '2023-11-03 19:49:10', NULL),
(56, 40, 'Fire Relief Work in Progress', 'Sent, its working', '2023-11-03 19:49:35', NULL),
(57, 56, 'Request Completed', 'Complete!', '2023-11-03 19:49:50', NULL),
(58, 41, 'Team On the Way', 'team on way', '2023-11-03 19:52:15', NULL),
(59, 42, 'Team On the Way', 'a', '2023-11-03 19:53:16', NULL),
(60, 42, 'Team On the Way', 'a', '2023-11-03 19:54:02', NULL),
(61, 37, 'Fire Relief Work in Progress', 'coming!', '2023-11-03 20:04:28', NULL),
(62, 37, 'Request Completed', 'd', '2023-11-03 20:11:38', NULL),
(63, 43, 'Team On the Way', 'on my way', '2023-11-03 23:22:40', NULL),
(64, 44, 'Team On the Way', 'on my way', '2023-11-03 23:25:26', NULL),
(65, 39, 'Team On the Way', 'n', '2023-11-04 01:14:24', NULL),
(66, 39, 'Fire Relief Work in Progress', 'n', '2023-11-04 01:14:39', NULL),
(67, 44, 'Fire Relief Work in Progress', 'j', '2023-11-04 01:15:51', NULL),
(68, 44, 'Request Completed', '.', '2023-11-04 01:23:39', NULL),
(69, 36, 'Team On the Way', 's', '2023-11-04 01:24:40', NULL),
(70, 36, 'Fire Relief Work in Progress', 's', '2023-11-04 01:24:50', NULL),
(71, 36, 'Fire Relief Work in Progress', 'sd', '2023-11-04 01:25:16', NULL),
(72, 36, 'Request Completed', '7', '2023-11-04 01:25:21', NULL),
(73, 32, 'Team On the Way', 'da way', '2023-11-04 01:25:42', NULL),
(74, 32, 'Fire Relief Work in Progress', 'relief da way', '2023-11-04 01:25:54', NULL),
(75, 20, 'Team On the Way', 'onway', '2023-11-04 17:34:55', NULL),
(76, 20, 'Fire Relief Work in Progress', 'j', '2023-11-04 17:35:26', NULL),
(77, 20, 'Request Completed', 'j', '2023-11-04 17:35:39', NULL),
(78, 76, 'Request Completed', 'd', '2023-11-04 18:01:56', NULL),
(79, 40, 'Request Completed', 'j', '2023-11-04 18:19:32', NULL),
(80, 16, 'Team On the Way', 'on way', '2023-11-05 18:35:27', NULL),
(81, 16, 'Team On the Way', 'on way', '2023-11-05 18:35:29', NULL),
(82, 16, 'Fire Relief Work in Progress', 'work in prog', '2023-11-05 18:36:11', NULL),
(83, 16, 'Request Completed', 'complete yay!', '2023-11-05 18:36:27', NULL),
(84, 45, 'Team On the Way', 'onway', '2023-11-05 18:42:04', NULL),
(85, 45, 'Fire Relief Work in Progress', 'on prog', '2023-11-05 18:42:22', NULL),
(86, 45, 'Request Completed', 'completed', '2023-11-05 18:42:35', NULL),
(87, 46, 'Team On the Way', 'd', '2023-11-06 06:34:30', NULL),
(88, 28, 'Fire Relief Work in Progress', 'd', '2023-11-06 06:57:43', NULL),
(89, 47, 'Team On the Way', 'a', '2023-11-06 07:02:21', NULL),
(90, 26, 'Fire Relief Work in Progress', 'a', '2023-11-06 07:02:46', NULL),
(91, 26, 'Request Completed', 't', '2023-11-06 07:03:30', NULL),
(92, 28, 'Request Completed', 'u', '2023-11-06 07:03:41', NULL),
(93, 48, 'Team On the Way', 'j', '2023-11-06 07:04:09', NULL),
(94, 48, 'Fire Relief Work in Progress', 'd', '2023-11-06 07:04:40', NULL),
(95, 48, 'Request Completed', 'd', '2023-11-06 07:04:46', NULL),
(96, 41, 'Fire Relief Work in Progress', 'd', '2023-11-06 07:05:24', NULL),
(97, 35, 'Request Completed', 'd', '2023-11-06 07:05:30', NULL),
(98, 31, 'Fire Relief Work in Progress', 'd', '2023-11-06 07:05:38', NULL),
(99, 46, 'Fire Relief Work in Progress', 'd', '2023-11-06 07:05:46', NULL),
(100, 43, 'Fire Relief Work in Progress', 'd', '2023-11-06 07:06:04', NULL),
(101, 31, 'Request Completed', 'd', '2023-11-06 07:06:12', NULL),
(102, 42, 'Fire Relief Work in Progress', '7', '2023-11-06 07:06:54', NULL),
(103, 27, 'Team On the Way', 'd', '2023-11-06 07:09:24', NULL),
(104, 49, 'Team On the Way', 'd', '2023-11-06 07:11:22', NULL),
(105, 49, 'Fire Relief Work in Progress', 'd', '2023-11-06 07:11:29', NULL),
(106, 49, 'Request Completed', 'd', '2023-11-06 07:11:35', NULL),
(107, 50, 'Team On the Way', '!', '2023-11-06 07:12:26', NULL),
(108, 50, 'Fire Relief Work in Progress', '1', '2023-11-06 07:12:33', NULL),
(109, 50, 'Request Completed', '!', '2023-11-06 07:12:41', NULL),
(110, 51, 'Team On the Way', 'd', '2023-11-06 07:18:12', NULL),
(111, 47, 'Fire Relief Work in Progress', 'd', '2023-11-06 07:18:21', NULL),
(112, 47, 'Request Completed', 'd', '2023-11-06 07:18:27', NULL),
(113, 52, 'Team On the Way', 'f', '2023-11-06 07:22:34', NULL),
(114, 53, 'Team On the Way', 'd', '2023-11-06 07:23:35', NULL),
(115, 53, 'Fire Relief Work in Progress', 'd', '2023-11-06 07:23:44', NULL),
(116, 43, 'Request Completed', 'd', '2023-11-06 07:24:15', NULL),
(117, 54, 'Team On the Way', 'd', '2023-11-06 07:25:09', NULL),
(118, 52, 'Fire Relief Work in Progress', 'd', '2023-11-06 07:25:15', NULL),
(119, 53, 'Request Completed', 'd', '2023-11-06 07:26:09', NULL),
(120, 56, 'Team On the Way', 'Team on the way', '2023-11-06 07:27:26', NULL),
(121, 56, 'Fire Relief Work in Progress', 'working', '2023-11-06 07:27:37', NULL),
(122, 56, 'Request Completed', 'complete!', '2023-11-06 07:28:09', NULL),
(123, 52, 'Request Completed', 'd', '2023-11-06 07:30:37', NULL),
(124, 51, 'Fire Relief Work in Progress', 'd', '2023-11-06 07:30:59', NULL),
(125, 54, 'Fire Relief Work in Progress', 'd', '2023-11-06 07:31:07', NULL),
(126, 54, 'Request Completed', 'd', '2023-11-06 07:31:16', NULL),
(127, 57, 'Team On the Way', 'onway', '2023-11-06 07:33:39', NULL),
(128, 30, 'Team On the Way', 'onway', '2023-11-06 07:35:31', NULL),
(129, 58, 'Team On the Way', 'r', '2023-11-06 07:38:02', NULL),
(130, 58, 'Fire Relief Work in Progress', 'd', '2023-11-06 07:38:15', NULL),
(131, 59, 'Team On the Way', 'd', '2023-11-06 07:38:49', NULL),
(132, 57, 'Fire Relief Work in Progress', 'd', '2023-11-06 07:39:14', NULL),
(133, 57, 'Request Completed', 'done!', '2023-11-06 07:39:32', NULL),
(134, 60, 'Team On the Way', 'on way', '2023-11-06 07:40:36', NULL),
(135, 60, 'Fire Relief Work in Progress', 'on prog\r\n', '2023-11-06 07:40:47', NULL),
(136, 60, 'Request Completed', 'complete!', '2023-11-06 07:40:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fireteam`
--

CREATE TABLE `tbl_fireteam` (
  `ID` int(11) NOT NULL,
  `teamName` varchar(255) DEFAULT NULL,
  `teamLeaderName` varchar(255) DEFAULT NULL,
  `teamLeadMobno` bigint(12) DEFAULT NULL,
  `teamMembers` mediumtext DEFAULT NULL,
  `teamPassword` varchar(120) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_fireteam`
--

INSERT INTO `tbl_fireteam` (`ID`, `teamName`, `teamLeaderName`, `teamLeadMobno`, `teamMembers`, `teamPassword`) VALUES
(8, 'SafaMed', 'Safa', 121313131, 'Safa, Jaman, Kabir, Priti', NULL),
(9, 'SafaFire', 'Safa', 121313131, 'Safa, Jaman, Kabir, Priti', NULL),
(10, 'Nase', 'a3', 33, 'a3', NULL),
(11, 'Shahin072', 'Shahin', 122121212, 'Shahin, Iqbal, Faruk, Emraan', NULL),
(12, 'SalamFire', 'Salam', 13112004113, 'Salam, Rabbi, Gain', NULL),
(13, 'rhafiqMed', 'hafiq', 13112004113, 'Ashfaq, hafiq, Raqib, Rasik', NULL),
(14, 'NasrinMed32', 'Nasrin', 323233, 'Jashim, John, David, Shahid', NULL),
(15, 'Nfaser012', 'Shamim', 121313131, 'Safa, Jaman, Kabir, Priti', NULL),
(16, 'SamirFire', 'Samir', 121212121, 'Shaman, Jaman, Adib, Samir', NULL),
(18, 'Naser012', 'Shamim', 121313131, 'Nasir, Ahmed, Rubel, Jamal', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_medteam`
--

CREATE TABLE `tbl_medteam` (
  `ID` int(11) NOT NULL,
  `teamName` varchar(255) DEFAULT NULL,
  `teamLeaderName` varchar(255) DEFAULT NULL,
  `teamLeadMobno` bigint(12) DEFAULT NULL,
  `teamMembers` mediumtext DEFAULT NULL,
  `teamPassword` varchar(120) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_medteam`
--

INSERT INTO `tbl_medteam` (`ID`, `teamName`, `teamLeaderName`, `teamLeadMobno`, `teamMembers`, `teamPassword`) VALUES
(5, 'MedUnit5', 'Jashim', 121212121, 'Jashim, John, David, Shahid', NULL),
(6, 'MedUnit8', 'Jashim', 121212121, 'Jashim, John, David, Shahid', NULL),
(8, 'AFSAMed', 'Afsana4', 121313131, 'Afsana, Jaman, Kabir, Priti', NULL),
(9, 'AFSAMed', 'a3', 33, 'a3d', NULL),
(10, 'Naser012', 'Nas', 144425145, 'Jimmy, Jahan, Shah, Karim', NULL),
(11, 'ShafiqMed', 'Shafiq', 13112004113, 'Ashfaq, Shafiq, Raqib, Rasik', NULL),
(12, 'NasrinMed32', 'Nasrin', 323233, 'Jashim, John, David, Shahid', NULL),
(15, 'Hamza', 'Samir', 121212121, 'Shaman, Jaman, Adib, Samir', NULL),
(16, '012med', 'Shamim', 121313131, 'Nasir, Ahmed, Rubel, Jamal', NULL),
(17, 'Shamat', 'Tamim', 172630025, 'Tamim, Hamim, Shamim, Matiur', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `ID` int(11) NOT NULL,
  `Name` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `User_type` varchar(20) CHARACTER SET latin1 NOT NULL,
  `MobileNumber` bigint(20) NOT NULL,
  `Email` varchar(120) CHARACTER SET latin1 NOT NULL,
  `Password` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `Regdate` timestamp NULL DEFAULT current_timestamp(),
  `userRole` int(1) DEFAULT NULL,
  `isActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`ID`, `Name`, `User_type`, `MobileNumber`, `Email`, `Password`, `Regdate`, `userRole`, `isActive`) VALUES
(1, 'Admin', 'Admin', 0, '', 'Admin123', '2023-10-30 14:41:27', NULL, NULL),
(2, 'ahmed', 'FireFighter', 0, 'ahmed@gmail.com', 'ahmed', '2023-10-30 15:37:07', NULL, NULL),
(3, 'samir', 'Medic', 0, 'ahmed@gmail.com', 'samir', '2023-10-30 15:37:36', NULL, NULL),
(4, 'Risha32', 'FireFighter', 0, 'rishatryan4452@gmail.com', '12', '2023-11-01 21:05:20', NULL, NULL),
(5, 'raqib', 'FireFighter', 0, 'rabbi23@gmail.com', 'raqib', '2023-11-04 23:33:58', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfirereport`
--
ALTER TABLE `tblfirereport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfirerequesthistory`
--
ALTER TABLE `tblfirerequesthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fireteam`
--
ALTER TABLE `tbl_fireteam`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_medteam`
--
ALTER TABLE `tbl_medteam`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblfirereport`
--
ALTER TABLE `tblfirereport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tblfirerequesthistory`
--
ALTER TABLE `tblfirerequesthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `tbl_fireteam`
--
ALTER TABLE `tbl_fireteam`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_medteam`
--
ALTER TABLE `tbl_medteam`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
