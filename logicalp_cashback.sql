-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2019 at 02:40 PM
-- Server version: 5.6.44
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logicalp_cashback`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'satyam', 'login.brainberry@gmail.com', 'Alpha@123');

-- --------------------------------------------------------

--
-- Table structure for table `sliderimage`
--

CREATE TABLE `sliderimage` (
  `sno` int(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderimage`
--

INSERT INTO `sliderimage` (`sno`, `image`, `url`) VALUES
(16, '1545547346420.png', 'https://www.zomato.com/'),
(17, 'Swiggy-campaign.jpg', 'http://www.socialsamosa.com/2017/12/swiggy-campaign/'),
(18, 'images.jpeg', 'https://godfathers.com/home');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `cashbackrates` varchar(200) NOT NULL,
  `coupons` varchar(100) NOT NULL,
  `redirect_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `title`, `description`, `cashbackrates`, `coupons`, `redirect_link`) VALUES
(1, 'Swiggy', 'Best offers by swiggy valid for all restaurants', '50', 'SWIGGY50', 'https://www.swiggy.com?unique=$value'),
(2, 'Zomato', 'Order your favorite food at Zomato India online and grab flat 50% off on any order', '75', 'ZOMATO50', 'https://www.zomato.com?unique=$value'),
(3, 'Flipkart', 'Fipkart sale offers from 11 Jun to 15 Jun, 2019. Buy now and get more offers', '100', 'FLPKT100', 'https://www.flipkart.com/?unique=$value&source=premp'),
(4, 'Amazon', 'Amazon sale offers for new users', '50', 'AMPY25', 'https://www.amazon.in/?unique=$value&source=prempp'),
(5, 'POKER DANGAL_test', 'SIGN UP', '6', 'WELCOME100', 'https://tracking.proformics.com/aff_c?offer_id=4428&aff_id=6542&url_id=9596&aff_sub=$value'),
(6, 'the Body Shop', 'shop', '50', 'WELCOME100', 'http://optimidea.go2cloud.org/aff_c?offer_id=1091&aff_id=2173&aff_sub=$value'),
(7, 'the Body Shop', 'shop', '50', 'WELCOME100', 'http://optimidea.go2cloud.org/aff_c?offer_id=1091&aff_id=2173&aff_sub=$value'),
(8, 'the Body Shop2', 'shop', '50', 'WELCOME100', 'http://optimidea.go2cloud.org/aff_c?offer_id=1091&aff_id=2173&aff_sub=$value'),
(9, 'pharmeasy', 'try', '50', 'DONTGO30', 'http://optimidea.go2cloud.org/aff_c?offer_id=1179&aff_id=2173&aff_sub=$value');

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `tid` int(100) NOT NULL,
  `p1` varchar(200) NOT NULL,
  `p2` varchar(200) NOT NULL,
  `p3` varchar(200) NOT NULL,
  `p4` varchar(200) NOT NULL,
  `p5` varchar(200) NOT NULL,
  `p6` varchar(200) NOT NULL,
  `p7` varchar(200) NOT NULL,
  `p8` varchar(200) NOT NULL,
  `p9` varchar(200) NOT NULL,
  `p10` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracking`
--

INSERT INTO `tracking` (`tid`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`) VALUES
(1, '10', '0', '0', '0', '0', '4', '124', '12', '0', '123456'),
(2, '10', '0', '0', '0', '0', '4', '124', '12', '0', '12546'),
(3, '10', '0', '0', '0', '0', '4', '124', '12', '', '12546'),
(4, '10', '0', '0', '0', '0', '4', '124', '12', '', '12546'),
(5, '10', '0', '0', '0', '0', '4', '124', '12', '', '1254689'),
(6, '10', '0', '0', '0', '0', '4', 'prem', '12', '145', '1456235623'),
(18, '1000', '', '', '', '', '', '', '', '', ''),
(19, '1', 'xyz', 'abc', 'q', '123', '', '', '', '', ''),
(20, 'aff_sub', '', '', '', '', '', '', '', '', ''),
(21, 'aff_sub', '', '', '', '', '', '', '', '', ''),
(22, 'aff_sub', '', '', '', '', '', '', '', '', ''),
(23, '30443134', '', '', '', '', '', '', '', '', ''),
(24, 'aff_sub', '', '', '', '', '', '', '', '', ''),
(25, 'Replace_withAff_sub', '', '', '', '', '', '', '', '', ''),
(26, '{aff_sub}', '', '', '', '', '', '', '', '', ''),
(27, '{124578}', '', '', '', '', '', '', '', '', ''),
(28, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(29, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(30, 'OSKG', '', '', '', '', '', '', '', '', ''),
(31, 'OSKG', '', '', '', '', '', '', '', '', ''),
(32, 'OSKG', '', '', '', '', '', '', '', '', ''),
(33, 'OSKG', '', '', '', '', '', '', '', '', ''),
(34, 'OSKG', '', '', '', '', '', '', '', '', ''),
(35, 'OSKG', '', '', '', '', '', '', '', '', ''),
(36, 'OSKG', '', '', '', '', '', '', '', '', ''),
(37, 'OSKG', '', '', '', '', '', '', '', '', ''),
(38, 'OSKG', '', '', '', '', '', '', '', '', ''),
(39, 'OSKG', '', '', '', '', '', '', '', '', ''),
(40, 'OSKG', '', '', '', '', '', '', '', '', ''),
(41, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(42, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(43, 'OSKG', '', '', '', '', '', '', '', '', ''),
(44, 'OSKG', '', '', '', '', '', '', '', '', ''),
(45, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(46, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(47, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(48, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(49, 'OSKG', '', '', '', '', '', '', '', '', ''),
(50, 'OSKG', '', '', '', '', '', '', '', '', ''),
(51, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(52, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(53, 'OSKG', '', '', '', '', '', '', '', '', ''),
(54, 'OSKG', '', '', '', '', '', '', '', '', ''),
(55, 'OSKG', '', '', '', '', '', '', '', '', ''),
(56, 'OSKG', '', '', '', '', '', '', '', '', ''),
(57, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(58, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(59, 'OSKG', '', '', '', '', '', '', '', '', ''),
(60, 'OSKG', '', '', '', '', '', '', '', '', ''),
(61, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(62, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(63, 'OSKG', '', '', '', '', '', '', '', '', ''),
(64, 'OSKG', '', '', '', '', '', '', '', '', ''),
(65, 'OBJG', '', '', '', '', '', '', '', '', ''),
(66, 'OSKG', '', '', '', '', '', '', '', '', ''),
(67, 'OSKG', '', '', '', '', '', '', '', '', ''),
(68, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(69, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(70, 'OSKG', '', '', '', '', '', '', '', '', ''),
(71, 'OSKG', '', '', '', '', '', '', '', '', ''),
(72, 'OBJG', '', '', '', '', '', '', '', '', ''),
(73, 'OSKG', '', '', '', '', '', '', '', '', ''),
(74, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(75, 'OBJG', '', '', '', '', '', '', '', '', ''),
(76, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(77, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(78, 'OBJG', '', '', '', '', '', '', '', '', ''),
(79, 'OBJG', '', '', '', '', '', '', '', '', ''),
(80, 'OSKG', '', '', '', '', '', '', '', '', ''),
(81, 'OSKG', '', '', '', '', '', '', '', '', ''),
(82, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(83, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(84, 'OSKG', '', '', '', '', '', '', '', '', ''),
(85, 'OSKG', '', '', '', '', '', '', '', '', ''),
(86, 'OBJG', '', '', '', '', '', '', '', '', ''),
(87, 'OBJG', '', '', '', '', '', '', '', '', ''),
(88, 'OJGDP', '', '', '', '', '', '', '', '', ''),
(89, 'OJGDP', '', '', '', '', '', '', '', '', ''),
(90, 'OSKG', '', '', '', '', '', '', '', '', ''),
(91, 'OSKG', '', '', '', '', '', '', '', '', ''),
(92, 'OBJG', '', '', '', '', '', '', '', '', ''),
(93, 'OBJG', '', '', '', '', '', '', '', '', ''),
(94, 'OBJG', '', '', '', '', '', '', '', '', ''),
(95, 'OBJG', '', '', '', '', '', '', '', '', ''),
(96, 'OSKG', '', '', '', '', '', '', '', '', ''),
(97, 'OSKG', '', '', '', '', '', '', '', '', ''),
(98, 'OSKG', '', '', '', '', '', '', '', '', ''),
(99, 'OSKG', '', '', '', '', '', '', '', '', ''),
(100, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(101, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(102, 'OSKG', '', '', '', '', '', '', '', '', ''),
(103, 'OSKG', '', '', '', '', '', '', '', '', ''),
(104, 'OSKG', '', '', '', '', '', '', '', '', ''),
(105, 'OSKG', '', '', '', '', '', '', '', '', ''),
(106, 'OBJG', '', '', '', '', '', '', '', '', ''),
(107, 'OBJG', '', '', '', '', '', '', '', '', ''),
(108, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(109, 'OSKG', '', '', '', '', '', '', '', '', ''),
(110, 'OSKG', '', '', '', '', '', '', '', '', ''),
(111, 'OBJG', '', '', '', '', '', '', '', '', ''),
(112, 'OBJG', '', '', '', '', '', '', '', '', ''),
(113, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(114, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(115, 'OSKG', '', '', '', '', '', '', '', '', ''),
(116, 'OSKG', '', '', '', '', '', '', '', '', ''),
(117, 'OBJG', '', '', '', '', '', '', '', '', ''),
(118, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(119, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(120, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(121, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(122, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(123, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(124, 'OBJG', '', '', '', '', '', '', '', '', ''),
(125, 'OBJG', '', '', '', '', '', '', '', '', ''),
(126, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(127, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(128, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(129, 'OBJG', '', '', '', '', '', '', '', '', ''),
(130, 'OBJG', '', '', '', '', '', '', '', '', ''),
(131, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(132, 'OJGDP', '', '', '', '', '', '', '', '', ''),
(133, 'OSKG', '', '', '', '', '', '', '', '', ''),
(134, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(135, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(136, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(137, 'OJGDP', '', '', '', '', '', '', '', '', ''),
(138, 'OSKG', '', '', '', '', '', '', '', '', ''),
(139, 'OBJG', '', '', '', '', '', '', '', '', ''),
(140, 'OBJG', '', '', '', '', '', '', '', '', ''),
(141, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(142, 'OSKG', '', '', '', '', '', '', '', '', ''),
(143, 'OSKG', '', '', '', '', '', '', '', '', ''),
(144, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(145, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(146, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(147, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(148, 'OSKG', '', '', '', '', '', '', '', '', ''),
(149, 'OSKG', '', '', '', '', '', '', '', '', ''),
(150, 'OBJG', '', '', '', '', '', '', '', '', ''),
(151, 'OBJG', '', '', '', '', '', '', '', '', ''),
(152, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(153, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(154, 'OSKG', '', '', '', '', '', '', '', '', ''),
(155, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(156, 'OSKG', '', '', '', '', '', '', '', '', ''),
(157, 'OBJG', '', '', '', '', '', '', '', '', ''),
(158, 'OBJG', '', '', '', '', '', '', '', '', ''),
(159, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(160, 'OSKG', '', '', '', '', '', '', '', '', ''),
(161, 'OSKG', '', '', '', '', '', '', '', '', ''),
(162, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(163, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(164, 'OSKG', '', '', '', '', '', '', '', '', ''),
(165, 'OSKG', '', '', '', '', '', '', '', '', ''),
(166, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(167, 'OSKG', '', '', '', '', '', '', '', '', ''),
(168, 'OSKG', '', '', '', '', '', '', '', '', ''),
(169, 'OMYNK', '', '', '', '', '', '', '', '', ''),
(170, 'OBJG', '', '', '', '', '', '', '', '', ''),
(171, 'OBJG', '', '', '', '', '', '', '', '', ''),
(172, 'OSKG', '', '', '', '', '', '', '', '', ''),
(173, 'OSKG', '', '', '', '', '', '', '', '', ''),
(174, 'OBJG', '', '', '', '', '', '', '', '', ''),
(175, 'OSKG', '', '', '', '', '', '', '', '', ''),
(176, 'OSKG', '', '', '', '', '', '', '', '', ''),
(177, 'OBJG', '', '', '', '', '', '', '', '', ''),
(178, 'OBJG', '', '', '', '', '', '', '', '', ''),
(179, 'OSKG', '', '', '', '', '', '', '', '', ''),
(180, 'OSKG', '', '', '', '', '', '', '', '', ''),
(181, 'OBJG', '', '', '', '', '', '', '', '', ''),
(182, 'OJGDP', '', '', '', '', '', '', '', '', ''),
(183, 'OJGDP', '', '', '', '', '', '', '', '', ''),
(184, 'OSKG', '', '', '', '', '', '', '', '', ''),
(185, 'OSKG', '', '', '', '', '', '', '', '', ''),
(186, 'OBJG', '', '', '', '', '', '', '', '', ''),
(187, 'OSKG', '', '', '', '', '', '', '', '', ''),
(188, 'OSKG', '', '', '', '', '', '', '', '', ''),
(189, 'OBJG', '', '', '', '', '', '', '', '', ''),
(190, 'OBJG', '', '', '', '', '', '', '', '', ''),
(191, 'OSKG', '', '', '', '', '', '', '', '', ''),
(192, 'OSKG', '', '', '', '', '', '', '', '', ''),
(193, 'OBJG', '', '', '', '', '', '', '', '', ''),
(194, 'OBJG', '', '', '', '', '', '', '', '', ''),
(195, 'OSKG', '', '', '', '', '', '', '', '', ''),
(196, 'OSKG', '', '', '', '', '', '', '', '', ''),
(197, 'OSKG', '', '', '', '', '', '', '', '', ''),
(198, 'OSKG', '', '', '', '', '', '', '', '', ''),
(199, 'OSKG', '', '', '', '', '', '', '', '', ''),
(200, 'OSKG', '', '', '', '', '', '', '', '', ''),
(201, 'OSKG', '', '', '', '', '', '', '', '', ''),
(202, 'OSKG', '', '', '', '', '', '', '', '', ''),
(203, 'OSKG', '', '', '', '', '', '', '', '', ''),
(204, 'OSKG', '', '', '', '', '', '', '', '', ''),
(205, 'OSKG', '', '', '', '', '', '', '', '', ''),
(206, 'OSKG', '', '', '', '', '', '', '', '', ''),
(207, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(208, 'ODPSR', '', '', '', '', '', '', '', '', ''),
(209, 'ODPSR', '', '', '', '', '', '', '', '', ''),
(210, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(211, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(212, 'OSKG', '', '', '', '', '', '', '', '', ''),
(213, 'OSKG', '', '', '', '', '', '', '', '', ''),
(214, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(215, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(216, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(217, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(218, 'OBJG', '', '', '', '', '', '', '', '', ''),
(219, 'OBJG', '', '', '', '', '', '', '', '', ''),
(220, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(221, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(222, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(223, 'ODPSR', '', '', '', '', '', '', '', '', ''),
(224, 'OBJG', '', '', '', '', '', '', '', '', ''),
(225, 'OBJG', '', '', '', '', '', '', '', '', ''),
(226, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(227, 'ODPSR', '', '', '', '', '', '', '', '', ''),
(228, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(229, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(230, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(231, 'ODPSR', '', '', '', '', '', '', '', '', ''),
(232, 'OBJG', '', '', '', '', '', '', '', '', ''),
(233, 'OBJG', '', '', '', '', '', '', '', '', ''),
(234, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(235, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(236, 'OBJG', '', '', '', '', '', '', '', '', ''),
(237, 'OBJG', '', '', '', '', '', '', '', '', ''),
(238, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(239, 'OJGDP', '', '', '', '', '', '', '', '', ''),
(240, 'ODPSR', '', '', '', '', '', '', '', '', ''),
(241, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(242, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(243, 'OBJG', '', '', '', '', '', '', '', '', ''),
(244, 'ODPSR', '', '', '', '', '', '', '', '', ''),
(245, 'ODPSR', '', '', '', '', '', '', '', '', ''),
(246, 'OBJG', '', '', '', '', '', '', '', '', ''),
(247, 'OBJG', '', '', '', '', '', '', '', '', ''),
(248, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(249, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(250, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(251, 'OBJG', '', '', '', '', '', '', '', '', ''),
(252, 'ODPSR', '', '', '', '', '', '', '', '', ''),
(253, 'OBJG', '', '', '', '', '', '', '', '', ''),
(254, 'OBJG', '', '', '', '', '', '', '', '', ''),
(255, 'OBJG', '', '', '', '', '', '', '', '', ''),
(256, 'OBJG', '', '', '', '', '', '', '', '', ''),
(257, 'OBJG', '', '', '', '', '', '', '', '', ''),
(258, 'OBJG', '', '', '', '', '', '', '', '', ''),
(259, 'OBJG', '', '', '', '', '', '', '', '', ''),
(260, 'OBJG', '', '', '', '', '', '', '', '', ''),
(261, 'OBJG', '', '', '', '', '', '', '', '', ''),
(262, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(263, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(264, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(265, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(266, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(267, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(268, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(269, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(270, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(271, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(272, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(273, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(274, 'OSKG', '', '', '', '', '', '', '', '', ''),
(275, 'OSKG', '', '', '', '', '', '', '', '', ''),
(276, 'OSKG', '', '', '', '', '', '', '', '', ''),
(277, 'OSKG', '', '', '', '', '', '', '', '', ''),
(278, 'OSKG', '', '', '', '', '', '', '', '', ''),
(279, 'OSKG', '', '', '', '', '', '', '', '', ''),
(280, 'OSKG', '', '', '', '', '', '', '', '', ''),
(281, 'OSKG', '', '', '', '', '', '', '', '', ''),
(282, 'OSKG', '', '', '', '', '', '', '', '', ''),
(283, 'OSKG', '', '', '', '', '', '', '', '', ''),
(284, 'OBJG', '', '', '', '', '', '', '', '', ''),
(285, 'OBJG', '', '', '', '', '', '', '', '', ''),
(286, 'OSKG', '', '', '', '', '', '', '', '', ''),
(287, 'OSKG', '', '', '', '', '', '', '', '', ''),
(288, 'OSKG', '', '', '', '', '', '', '', '', ''),
(289, 'OSKG', '', '', '', '', '', '', '', '', ''),
(290, 'OSKG', '', '', '', '', '', '', '', '', ''),
(291, 'OSKG', '', '', '', '', '', '', '', '', ''),
(292, 'OJGDP', '', '', '', '', '', '', '', '', ''),
(293, 'OSKG', '', '', '', '', '', '', '', '', ''),
(294, 'OSKG', '', '', '', '', '', '', '', '', ''),
(295, 'OJGDP', '', '', '', '', '', '', '', '', ''),
(296, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(297, 'OSKG', '', '', '', '', '', '', '', '', ''),
(298, 'OSKG', '', '', '', '', '', '', '', '', ''),
(299, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(300, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(301, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(302, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(303, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(304, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(305, 'ODPKS', '', '', '', '', '', '', '', '', ''),
(306, 'OSKG', '', '', '', '', '', '', '', '', ''),
(307, 'OSKG', '', '', '', '', '', '', '', '', ''),
(308, 'OSKG', '', '', '', '', '', '', '', '', ''),
(309, 'OSKG', '', '', '', '', '', '', '', '', ''),
(310, 'OSKG', '', '', '', '', '', '', '', '', ''),
(311, 'OSKG', '', '', '', '', '', '', '', '', ''),
(312, 'OSKG', '', '', '', '', '', '', '', '', ''),
(313, 'OSKG', '', '', '', '', '', '', '', '', ''),
(314, 'OSKG', '', '', '', '', '', '', '', '', ''),
(315, 'OSKG', '', '', '', '', '', '', '', '', ''),
(316, 'OSKG', '', '', '', '', '', '', '', '', ''),
(317, 'OSKG', '', '', '', '', '', '', '', '', ''),
(318, 'OSKG', '', '', '', '', '', '', '', '', ''),
(319, 'OSKG', '', '', '', '', '', '', '', '', ''),
(320, 'OSKG', '', '', '', '', '', '', '', '', ''),
(321, 'OSKG', '', '', '', '', '', '', '', '', ''),
(322, 'OSKG', '', '', '', '', '', '', '', '', ''),
(323, 'OSKG', '', '', '', '', '', '', '', '', ''),
(324, 'OSKG', '', '', '', '', '', '', '', '', ''),
(325, 'OSKG', '', '', '', '', '', '', '', '', ''),
(326, 'OSKG', '', '', '', '', '', '', '', '', ''),
(327, 'OSKG', '', '', '', '', '', '', '', '', ''),
(328, 'OSKG', '', '', '', '', '', '', '', '', ''),
(329, 'OSKG', '', '', '', '', '', '', '', '', ''),
(330, 'OSKG', '', '', '', '', '', '', '', '', ''),
(331, 'OSKG', '', '', '', '', '', '', '', '', ''),
(332, 'OSKG', '', '', '', '', '', '', '', '', ''),
(333, 'OSKG', '', '', '', '', '', '', '', '', ''),
(334, 'OSKG', '', '', '', '', '', '', '', '', ''),
(335, 'OSKG', '', '', '', '', '', '', '', '', ''),
(336, 'OSKG', '', '', '', '', '', '', '', '', ''),
(337, 'OSKG', '', '', '', '', '', '', '', '', ''),
(338, 'OSKG', '', '', '', '', '', '', '', '', ''),
(339, 'OSKG', '', '', '', '', '', '', '', '', ''),
(340, 'OSKG', '', '', '', '', '', '', '', '', ''),
(341, 'OSKG', '', '', '', '', '', '', '', '', ''),
(342, 'OSKG', '', '', '', '', '', '', '', '', ''),
(343, 'OSKG', '', '', '', '', '', '', '', '', ''),
(344, 'OSKG', '', '', '', '', '', '', '', '', ''),
(345, 'OSKG', '', '', '', '', '', '', '', '', ''),
(346, 'OSKG', '', '', '', '', '', '', '', '', ''),
(347, 'OSKG', '', '', '', '', '', '', '', '', ''),
(348, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(349, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(350, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(351, 'OSKG', '', '', '', '', '', '', '', '', ''),
(352, 'OSKG', '', '', '', '', '', '', '', '', ''),
(353, 'OSKG', '', '', '', '', '', '', '', '', ''),
(354, 'OSKG', '', '', '', '', '', '', '', '', ''),
(355, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(356, 'OSKG', '', '', '', '', '', '', '', '', ''),
(357, 'OSKG', '', '', '', '', '', '', '', '', ''),
(358, 'OSKG', '', '', '', '', '', '', '', '', ''),
(359, 'OSKG', '', '', '', '', '', '', '', '', ''),
(360, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(361, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(362, 'OSKG', '', '', '', '', '', '', '', '', ''),
(363, 'OSKG', '', '', '', '', '', '', '', '', ''),
(364, 'OBJG', '', '', '', '', '', '', '', '', ''),
(365, 'OBJG', '', '', '', '', '', '', '', '', ''),
(366, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(367, 'OBJG', '', '', '', '', '', '', '', '', ''),
(368, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(369, 'OBJG', '', '', '', '', '', '', '', '', ''),
(370, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(371, 'OBJG', '', '', '', '', '', '', '', '', ''),
(372, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(373, 'OBJG', '', '', '', '', '', '', '', '', ''),
(374, 'OBJG', '', '', '', '', '', '', '', '', ''),
(375, 'OBJG', '', '', '', '', '', '', '', '', ''),
(376, 'ORKSM', '', '', '', '', '', '', '', '', ''),
(377, 'OBJG', '', '', '', '', '', '', '', '', ''),
(378, 'ORKSM', '', '', '', '', '', '', '', '', ''),
(379, 'OBJG', '', '', '', '', '', '', '', '', ''),
(380, 'OBJG', '', '', '', '', '', '', '', '', ''),
(381, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(382, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(383, 'OBJG', '', '', '', '', '', '', '', '', ''),
(384, 'OBJG', '', '', '', '', '', '', '', '', ''),
(385, 'ORKSM', '', '', '', '', '', '', '', '', ''),
(386, 'OSKG', '', '', '', '', '', '', '', '', ''),
(387, 'OSKG', '', '', '', '', '', '', '', '', ''),
(388, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(389, 'ORKSM', '', '', '', '', '', '', '', '', ''),
(390, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(391, 'OSKG', '', '', '', '', '', '', '', '', ''),
(392, 'OBJG', '', '', '', '', '', '', '', '', ''),
(393, 'OSKG', '', '', '', '', '', '', '', '', ''),
(394, 'OBJG', '', '', '', '', '', '', '', '', ''),
(395, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(396, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(397, 'OSKG', '', '', '', '', '', '', '', '', ''),
(398, 'OSKG', '', '', '', '', '', '', '', '', ''),
(399, 'OSKG', '', '', '', '', '', '', '', '', ''),
(400, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(401, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(402, 'OBJG', '', '', '', '', '', '', '', '', ''),
(403, 'OSKG', '', '', '', '', '', '', '', '', ''),
(404, 'OBJG', '', '', '', '', '', '', '', '', ''),
(405, 'OSKG', '', '', '', '', '', '', '', '', ''),
(406, 'OSKG', '', '', '', '', '', '', '', '', ''),
(407, 'OSKG', '', '', '', '', '', '', '', '', ''),
(408, 'OBJG', '', '', '', '', '', '', '', '', ''),
(409, 'OSKG', '', '', '', '', '', '', '', '', ''),
(410, 'OPYSH', '', '', '', '', '', '', '', '', ''),
(411, 'OBJG', '', '', '', '', '', '', '', '', ''),
(412, 'OBJG', '', '', '', '', '', '', '', '', ''),
(413, 'OSKG', '', '', '', '', '', '', '', '', ''),
(414, 'OSKG', '', '', '', '', '', '', '', '', ''),
(415, 'OBJG', '', '', '', '', '', '', '', '', ''),
(416, 'OSKG', '', '', '', '', '', '', '', '', ''),
(417, 'OSKG', '', '', '', '', '', '', '', '', ''),
(418, 'OBJG', '', '', '', '', '', '', '', '', ''),
(419, 'OSKG', '', '', '', '', '', '', '', '', ''),
(420, 'OSKG', '', '', '', '', '', '', '', '', ''),
(421, 'OBJG', '', '', '', '', '', '', '', '', ''),
(422, 'OBJG', '', '', '', '', '', '', '', '', ''),
(423, 'OBJG', '', '', '', '', '', '', '', '', ''),
(424, 'OBJG', '', '', '', '', '', '', '', '', ''),
(425, 'OBJG', '', '', '', '', '', '', '', '', ''),
(426, 'OBJG', '', '', '', '', '', '', '', '', ''),
(427, 'OBJG', '', '', '', '', '', '', '', '', ''),
(428, 'OBJG', '', '', '', '', '', '', '', '', ''),
(429, 'OBJG', '', '', '', '', '', '', '', '', ''),
(430, 'OSKG', '', '', '', '', '', '', '', '', ''),
(431, 'OBJG', '', '', '', '', '', '', '', '', ''),
(432, 'OBJG', '', '', '', '', '', '', '', '', ''),
(433, 'OBJG', '', '', '', '', '', '', '', '', ''),
(434, 'OBJG', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referal_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  `identity` int(200) NOT NULL,
  `refer_earn_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `referal_code`, `password`, `flag`, `identity`, `refer_earn_code`) VALUES
(1, 'satyam kumar', 'satyamkumar889@gmail.com', '7727082396', '', 'satyam96', 1, 19852673, 'Sa2KmR'),
(2, 'Satyam Kumar', 'satyamkr9696@outlook.com', '9430575196', '', 'satyam9696', 0, 18576248, ''),
(5, NULL, '15ucs121@lnmiit.ac.in', '', '', NULL, 0, 15235485, ''),
(6, 'Govind Kumar', 'govindsingh75196@gmail.com', '7544075196', '', 'govind75196', 0, 37582290, ''),
(7, 'Prem Prakash', 'premprakash0752@gmail.com', '9475837973', '', 'prem123456', 0, 30443134, 'FGKbRw'),
(8, 'Buddhi Prakash', 'karol.buddhiprakash@gmail.com', '9002305432', 'FGKbRw', 'buddhi123456', 0, 36830211, 'K5iomZ'),
(9, 'shaym', 'jannalla975@gmail.com', '9786465454', '', 'Brain123', 0, 62981293, '1SW6GR'),
(10, 'jagdish', 'shaymsarma1@gmail.com', '9865421322', '`', 'Brain123', 0, 91732455, 'jzpyA5'),
(11, 'tarun', 'enatarun01@gmail.com', '9846236598', '', 'Brain@123', 0, 32029680, 'ON7ziF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliderimage`
--
ALTER TABLE `sliderimage`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliderimage`
--
ALTER TABLE `sliderimage`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tracking`
--
ALTER TABLE `tracking`
  MODIFY `tid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;