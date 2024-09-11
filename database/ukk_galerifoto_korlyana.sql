-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2024 at 03:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_galerifoto_korlyana`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(225) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggalbuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggalbuat`, `userid`) VALUES
(12, 'coba', 'coba', '2024-08-23', 7),
(13, 'data', 'data', '2024-09-09', 7),
(14, 'imut', 'sangat imut', '2024-09-09', 13),
(15, 'Foto kpop', 'cowo ganteng', '2024-09-10', 14),
(16, 'alam', 'alam', '2024-09-10', 14),
(20, 'aa', 'aa', '2024-09-11', 17),
(21, 'beruang', 'bb', '2024-09-11', 17),
(23, 'dd', 'dd', '2024-09-11', 17);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(225) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(225) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(29, 'aa', 'aa', '2024-09-09', '1836632506-rerom love hendra.jpg', 12, 7),
(30, 'ss', 'ss', '2024-09-09', '951931362-logo.php.png', 13, 7),
(31, 'imut', ' foto sangat imut', '2024-09-10', '2104368925-WIN_20240108_11_12_06_Pro.jpg', 14, 13),
(32, 'cowo kpop', 'cowo ganteng', '2024-09-10', '1219469827-cowo ana.jpg', 15, 14),
(36, 'pemandangan', 'aa', '2024-09-11', '1840372783-poto.jpg', 20, 17),
(37, 'beruang', 'bb', '2024-09-11', '303351291-awan.jpg', 21, 17);

-- --------------------------------------------------------

--
-- Table structure for table `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(1, 30, 7, 'pujituhan', '2024-09-10'),
(2, 31, 7, 'aduy', '2024-09-10'),
(3, 29, 13, 'anjay boleh lah', '2024-09-10'),
(4, 32, 14, 'kai ganteng banget cok di situ', '2024-09-10'),
(5, 32, 14, 'cantik', '2024-09-10'),
(8, 36, 17, 'cantik', '2024-09-11'),
(9, 36, 17, 'keren', '2024-09-11'),
(10, 36, 17, 'bah', '2024-09-11'),
(11, 36, 17, 'wih', '2024-09-11'),
(12, 36, 17, '', '2024-09-11');

-- --------------------------------------------------------

--
-- Table structure for table `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(1, 25, 7, '2024-08-29'),
(12, 24, 7, '2024-08-29'),
(13, 26, 7, '2024-08-29'),
(14, 25, 7, '2024-08-29'),
(15, 26, 7, '2024-08-29'),
(16, 26, 7, '2024-08-29'),
(17, 24, 7, '2024-08-29'),
(40, 30, 7, '2024-09-09'),
(47, 29, 7, '2024-09-09'),
(48, 29, 13, '2024-09-09'),
(49, 31, 13, '2024-09-09'),
(50, 30, 13, '2024-09-09'),
(51, 31, 7, '2024-09-09'),
(52, 32, 14, '2024-09-10'),
(53, 32, 16, '2024-09-10'),
(54, 34, 16, '2024-09-10'),
(55, 36, 17, '2024-09-11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(14, 'yang memberi komentar', '4124bc0a9335c27f086f24ba207a4912', 'aa@gmail.com', 'yang memberi komentar', 'indonesia'),
(15, 'aa', '47bce5c74f589f4867dbd57e9ca9f808', 'aa@gmail.com', 'aa', 'sajau pura'),
(16, 'ss', '3691308f2a4c2f6983f2880d32e29c84', 'admin@gmail.com', 'ss', 'ss'),
(17, 'kk', 'dc468c70fb574ebd07287b38d0d0676d', 'aa@gmail.com', 'kk', 'kk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `albumid` (`albumid`);

--
-- Indexes for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `album` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
