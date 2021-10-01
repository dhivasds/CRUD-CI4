-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2021 at 05:26 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `sampul` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Mashahi Kishimoto', 'Shonen Jump', 'naruto.jpg', NULL, 2021),
(2, 'One Piece', 'one-piece', 'Eichiro Oda', 'Gramedia', 'one_piece.jpg', NULL, NULL),
(21, 'kj', 'kj', 'hd', 'ef', '1631537575_b66725b4d6bd6bb0f84f.jpg', '2021-09-13 07:49:56', 2021),
(22, 'asdas', 'asdas', 'dasd', 'dsa', '1631537529_9eb11fd449dac43f862e.jpg', '2021-09-13 07:51:24', 2021),
(23, 'no one', 'no-one', 'dsa', 'dsa', 'default.png', '2021-09-13 07:53:23', 2021);

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
(1, '2021-09-22-232235', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1632354083, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Viman Mansur', 'Ki. Baladewa No. 997, Batam 12100, DKI', '1979-09-23 13:10:06', '2021-09-23 10:53:52'),
(2, 'Ulya Suartini', 'Kpg. Reksoninten No. 970, Tual 56750, Sumsel', '1995-03-15 19:24:46', '2021-09-23 10:53:52'),
(3, 'Manah Waskita M.TI.', 'Jr. Pasirkoja No. 193, Banda Aceh 22015, Riau', '1973-03-25 01:59:48', '2021-09-23 10:53:52'),
(4, 'Bakiadi Arta Natsir S.IP', 'Kpg. Lembong No. 119, Bau-Bau 21069, Kalbar', '1982-04-15 21:53:27', '2021-09-23 10:53:52'),
(5, 'Maman Edi Salahudin M.Ak', 'Kpg. Jagakarsa No. 16, Kotamobagu 26924, Sultra', '2013-07-19 11:20:16', '2021-09-23 10:53:52'),
(6, 'Margana Haryanto S.I.Kom', 'Ki. Setia Budi No. 853, Medan 17269, Jateng', '1998-12-12 09:12:47', '2021-09-23 10:53:52'),
(7, 'Jessica Mulyani', 'Kpg. S. Parman No. 840, Parepare 95797, Jatim', '1989-03-07 21:09:33', '2021-09-23 10:53:52'),
(8, 'Restu Yulianti', 'Jln. Yogyakarta No. 335, Kotamobagu 82433, Banten', '1983-01-11 15:44:17', '2021-09-23 10:53:52'),
(9, 'Imam Hidayat', 'Jln. Ters. Kiaracondong No. 997, Tomohon 82536, Jabar', '2006-06-12 17:26:17', '2021-09-23 10:53:52'),
(10, 'Luwes Kairav Hardiansyah M.Pd', 'Jr. Bakin No. 621, Palembang 21069, Kaltara', '2021-05-13 14:39:48', '2021-09-23 10:53:52'),
(11, 'Cengkal Ardianto', 'Jr. Bagas Pati No. 879, Medan 22426, Kaltara', '1990-04-13 19:38:32', '2021-09-23 10:53:52'),
(12, 'Wirda Prastuti', 'Dk. Moch. Toha No. 853, Mataram 72343, Sulut', '2015-07-03 17:35:47', '2021-09-23 10:53:52'),
(13, 'Chandra Ismail Prayoga', 'Ds. Ketandan No. 866, Bitung 28654, Babel', '2001-03-20 13:19:48', '2021-09-23 10:53:52'),
(14, 'Halima Sari Hassanah S.H.', 'Psr. Camar No. 414, Salatiga 87585, Sulut', '2020-04-16 20:31:26', '2021-09-23 10:53:52'),
(15, 'Umar Mustofa', 'Ds. Laswi No. 335, Metro 64345, Sulsel', '2020-02-16 15:32:27', '2021-09-23 10:53:52'),
(16, 'Dasa Hutagalung S.Gz', 'Ds. Ciwastra No. 125, Banda Aceh 92715, Maluku', '2021-02-01 03:56:04', '2021-09-23 10:53:52'),
(17, 'Putri Hassanah', 'Jln. Agus Salim No. 5, Cilegon 30675, Banten', '1985-09-24 08:21:24', '2021-09-23 10:53:52'),
(18, 'Bagas Pangestu', 'Kpg. Jayawijaya No. 228, Tarakan 90010, NTB', '1990-01-30 08:46:04', '2021-09-23 10:53:52'),
(19, 'Nrima Estiono Marbun', 'Psr. Nangka No. 375, Padangpanjang 40792, Bali', '1984-10-29 08:51:09', '2021-09-23 10:53:52'),
(20, 'Icha Tina Zulaika M.TI.', 'Ds. Banda No. 32, Kendari 91478, Papua', '2006-09-26 13:10:22', '2021-09-23 10:53:52'),
(21, 'Ibrahim Putra S.IP', 'Psr. Kartini No. 510, Palembang 64784, Pabar', '2018-09-07 18:14:38', '2021-09-23 10:53:52'),
(22, 'Asmuni Prayoga', 'Jr. PHH. Mustofa No. 149, Bontang 88815, NTT', '2018-08-11 18:28:31', '2021-09-23 10:53:52'),
(23, 'Ilsa Fujiati M.Kom.', 'Ds. Rajiman No. 55, Depok 66704, Pabar', '1983-06-28 13:39:34', '2021-09-23 10:53:52'),
(24, 'Elisa Haryanti', 'Ki. Ciwastra No. 757, Tasikmalaya 70071, Sumut', '1976-05-13 00:32:17', '2021-09-23 10:53:52'),
(25, 'Jasmani Marpaung M.Farm', 'Ki. Bagis Utama No. 151, Dumai 73527, DKI', '2000-03-08 10:56:17', '2021-09-23 10:53:52'),
(26, 'Cici Mulyani', 'Jln. Kiaracondong No. 260, Samarinda 68629, Kalteng', '2006-05-11 20:30:29', '2021-09-23 10:53:52'),
(27, 'Ika Wijayanti', 'Psr. Cikapayang No. 95, Administrasi Jakarta Pusat 97631, Gorontalo', '2021-04-20 07:43:59', '2021-09-23 10:53:52'),
(28, 'Gada Putra', 'Jln. Wora Wari No. 464, Samarinda 35553, DKI', '1995-03-05 02:31:17', '2021-09-23 10:53:52'),
(29, 'Galih Marbun', 'Gg. Baranangsiang No. 734, Batu 11526, Kalsel', '1971-09-21 20:12:05', '2021-09-23 10:53:52'),
(30, 'Cemplunk Setiawan', 'Ds. Bakit  No. 979, Sibolga 87539, Pabar', '1996-12-20 12:54:14', '2021-09-23 10:53:52'),
(31, 'Cakrawala Pangestu', 'Psr. B.Agam Dlm No. 254, Palembang 88858, Jabar', '1998-05-24 10:30:28', '2021-09-23 10:53:52'),
(32, 'Salwa Novitasari', 'Ki. Jaksa No. 436, Tebing Tinggi 39666, Riau', '1978-08-07 23:09:48', '2021-09-23 10:53:52'),
(33, 'Hartana Tampubolon', 'Psr. Wora Wari No. 475, Bau-Bau 34987, Sulbar', '2019-04-09 04:15:02', '2021-09-23 10:53:52'),
(34, 'Hartaka Natsir M.Kom.', 'Gg. Arifin No. 492, Tanjungbalai 37041, Sulsel', '1990-01-28 14:52:13', '2021-09-23 10:53:52'),
(35, 'Jumadi Asmuni Sirait S.E.', 'Kpg. Yosodipuro No. 282, Langsa 25947, Bengkulu', '2021-09-01 09:15:20', '2021-09-23 10:53:52'),
(36, 'Baktianto Tomi Siregar', 'Gg. Sutarto No. 551, Parepare 94852, Babel', '1974-09-07 06:29:08', '2021-09-23 10:53:52'),
(37, 'Makara Imam Hutagalung', 'Psr. HOS. Cjokroaminoto (Pasirkaliki) No. 291, Tasikmalaya 97305, Jatim', '2008-06-07 19:26:08', '2021-09-23 10:53:52'),
(38, 'Dartono Nugroho', 'Gg. Baja No. 305, Madiun 75950, Kepri', '1983-11-21 13:50:18', '2021-09-23 10:53:52'),
(39, 'Julia Salsabila Farida', 'Ds. Surapati No. 91, Sukabumi 64514, Banten', '1997-06-26 10:23:29', '2021-09-23 10:53:52'),
(40, 'Uli Elma Maryati', 'Jln. Suryo No. 972, Magelang 81645, Jateng', '2012-10-01 22:55:40', '2021-09-23 10:53:52'),
(41, 'Carla Sari Purnawati S.E.', 'Jln. BKR No. 817, Serang 66665, Pabar', '1981-04-22 01:54:14', '2021-09-23 10:53:52'),
(42, 'Ghaliyati Lala Wastuti S.E.', 'Kpg. Tambun No. 469, Bekasi 25580, Jateng', '2006-05-18 16:20:50', '2021-09-23 10:53:52'),
(43, 'Ira Yolanda', 'Gg. Nangka No. 976, Probolinggo 28837, Jambi', '2019-09-29 07:54:28', '2021-09-23 10:53:52'),
(44, 'Humaira Sabrina Utami', 'Jr. Fajar No. 971, Bukittinggi 82155, DIY', '1995-03-27 11:07:23', '2021-09-23 10:53:52'),
(45, 'Jagaraga Waskita S.H.', 'Ds. Lumban Tobing No. 893, Payakumbuh 83553, Sulbar', '1996-01-20 23:35:26', '2021-09-23 10:53:52'),
(46, 'Kenzie Hakim', 'Dk. Gading No. 276, Bandar Lampung 68034, Lampung', '2014-02-19 20:15:04', '2021-09-23 10:53:52'),
(47, 'Slamet Nashiruddin', 'Dk. Suprapto No. 688, Probolinggo 63494, Sulsel', '2006-09-30 14:48:44', '2021-09-23 10:53:52'),
(48, 'Zulfa Usada', 'Dk. Cut Nyak Dien No. 721, Palu 27209, Jambi', '2017-08-02 21:32:22', '2021-09-23 10:53:52'),
(49, 'Ibun Cakrabirawa Zulkarnain M.Pd', 'Jr. Umalas No. 953, Bekasi 78428, Sumut', '1993-06-22 08:52:58', '2021-09-23 10:53:52'),
(50, 'Usman Prasetya', 'Psr. Ahmad Dahlan No. 90, Pasuruan 68129, Sulteng', '2001-10-11 13:38:29', '2021-09-23 10:53:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
