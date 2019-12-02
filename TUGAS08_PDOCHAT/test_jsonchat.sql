-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Nov 2019 pada 09.12
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test_jsonchat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
`nomor` int(3) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pesan` varchar(200) NOT NULL,
  `waktu` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=238 ;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`nomor`, `nama`, `pesan`, `waktu`) VALUES
(1, 'Admin', ' bergabung dalam chat', '08:52'),
(2, 'Admin', ' bergabung dalam chat', '08:54'),
(3, 'Admin', ' bergabung dalam chat', '08:54'),
(4, 'Admin', ' bergabung dalam chat', '08:54'),
(5, 'Admin', ' bergabung dalam chat', '08:54'),
(6, 'Admin', ' bergabung dalam chat', '08:54'),
(7, 'Admin', ' bergabung dalam chat', '08:54'),
(8, 'Admin', ' bergabung dalam chat', '08:54'),
(9, 'Admin', 'Admin bergabung dalam chat', '08:54'),
(10, 'Admin', 'Admin bergabung dalam chat', '08:54'),
(11, 'Admin', 'Admin bergabung dalam chat', '08:54'),
(12, 'Admin', 'Admin bergabung dalam chat', '08:54'),
(13, 'Admin', 'Admin bergabung dalam chat', '08:55'),
(14, 'Admin', 'Admin bergabung dalam chat', '08:55'),
(15, 'Admin', 'Admin bergabung dalam chat', '08:55'),
(16, 'Admin', 'Admin bergabung dalam chat', '08:55'),
(17, 'Admin', 'Admin bergabung dalam chat', '08:55'),
(18, 'Admin', 'Admin bergabung dalam chat', '08:55'),
(19, 'Admin', 'Admin bergabung dalam chat', '08:55'),
(20, 'Admin', 'Admin bergabung dalam chat', '08:55'),
(21, 'Admin', 'Admin bergabung dalam chat', '09:04'),
(22, 'Admin', 'Admin bergabung dalam chat', '09:04'),
(23, 'Admin', 'Admin bergabung dalam chat', '09:04'),
(24, 'Admin', 'Admin bergabung dalam chat', '09:04'),
(25, 'Admin', 'Admin bergabung dalam chat', '09:05'),
(26, 'Admin', 'Admin bergabung dalam chat', '09:05'),
(27, 'Admin', 'Admin bergabung dalam chat', '09:05'),
(28, 'Admin', 'Admin bergabung dalam chat', '09:05'),
(29, 'Admin', 'Admin bergabung dalam chat', '09:05'),
(30, 'Admin', 'Admin bergabung dalam chat', '09:05'),
(31, 'Admin', 'Admin bergabung dalam chat', '09:05'),
(32, 'Admin', 'Admin bergabung dalam chat', '09:05'),
(33, 'Admin', ' bergabung dalam chat', '09:06'),
(34, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(35, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(36, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(37, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(38, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(39, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(40, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(41, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(42, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(43, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(44, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(45, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(46, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(47, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(48, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(49, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(50, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(51, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(52, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(53, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(54, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(55, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(56, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(57, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(58, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(59, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(60, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(61, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(62, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(63, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(64, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(65, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(66, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(67, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(68, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(69, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(70, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(71, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(72, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(73, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(74, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(75, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(76, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(77, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(78, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(79, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(80, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(81, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(82, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(83, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(84, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(85, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(86, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(87, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(88, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(89, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(90, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(91, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(92, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(93, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(94, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(95, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(96, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(97, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(98, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(99, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(100, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(101, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(102, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(103, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(104, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(105, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(106, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(107, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(108, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(109, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(110, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(111, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(112, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(113, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(114, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(115, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(116, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(117, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(118, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(119, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(120, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(121, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(122, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(123, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(124, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(125, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(126, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(127, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(128, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(129, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(130, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(131, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(132, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(133, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(134, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(135, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(136, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(137, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(138, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(139, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(140, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(141, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(142, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(143, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(144, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(145, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(146, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(147, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(148, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(149, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(150, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(151, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(152, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(153, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(154, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(155, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(156, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(157, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(158, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(159, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(160, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(161, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(162, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(163, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(164, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(165, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(166, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(167, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(168, 'Admin', 'Admin bergabung dalam chat', '09:06'),
(169, 'asasad', 'asdadad', '09:06'),
(170, 'asasad', 'jkjskadkalsd', '09:07'),
(171, 'asasad', 'sadjaksd', '09:07'),
(172, 'asasad', 'sajdhjashkjd', '09:07'),
(173, 'asasad', 'asjdklasdka', '09:07'),
(174, 'asfsdjdasf', 'skdfjksdfk', '09:08'),
(175, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(176, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(177, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(178, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(179, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(180, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(181, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(182, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(183, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(184, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(185, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(186, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(187, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(188, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(189, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(190, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(191, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(192, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(193, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(194, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(195, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(196, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(197, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(198, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(199, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(200, 'Admin', 'Admin bergabung dalam chat', '09:08'),
(201, 'Admin', 'sjkskfs', '09:08'),
(202, 'jsakajdk', 'asjdaklsdl', '09:09'),
(203, 'jsakajdkasd', 'asijdaskjdk', '09:09'),
(204, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(205, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(206, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(207, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(208, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(209, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(210, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(211, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(212, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(213, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(214, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(215, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(216, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(217, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(218, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(219, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(220, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(221, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(222, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(223, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(224, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(225, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(226, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(227, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(228, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(229, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(230, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(231, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(232, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(233, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(234, 'Admin', 'Admin bergabung dalam chat', '09:09'),
(235, 'Admin', 'abs', '09:09'),
(236, 'Admina', 'sdsd', '09:09'),
(237, 'test dyku', 'asdasdasda', '09:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
 ADD PRIMARY KEY (`nomor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
MODIFY `nomor` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=238;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
