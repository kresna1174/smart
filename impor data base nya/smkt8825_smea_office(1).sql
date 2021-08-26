-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2021 at 06:22 PM
-- Server version: 10.3.30-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smkt8825_smea_office`
--

-- --------------------------------------------------------

--
-- Table structure for table `disposisi`
--

CREATE TABLE `disposisi` (
  `surat_masuk_id` int(15) NOT NULL,
  `sifat` enum('sangat_segera','segera','rahasia') NOT NULL,
  `isi` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disposisi`
--

INSERT INTO `disposisi` (`surat_masuk_id`, `sifat`, `isi`, `status`, `created_at`, `updated_at`) VALUES
(4, 'segera', '', 1, '2020-06-25 04:15:06', '2020-06-25 04:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `penerusan_disposisi`
--

CREATE TABLE `penerusan_disposisi` (
  `id` int(15) NOT NULL,
  `disposisi_id` int(15) NOT NULL,
  `tujuan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `perintah_disposisi`
--

CREATE TABLE `perintah_disposisi` (
  `id` int(15) NOT NULL,
  `disposisi_id` int(15) NOT NULL,
  `perintah` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perintah_disposisi`
--

INSERT INTO `perintah_disposisi` (`id`, `disposisi_id`, `perintah`, `created_at`, `updated_at`) VALUES
(10, 4, 'Tanggapan dan Saran', '2020-06-25 04:15:06', '2020-06-25 04:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `permintaan`
--

CREATE TABLE `permintaan` (
  `id` int(15) NOT NULL,
  `akun_id` int(15) NOT NULL,
  `perihal` text NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permintaan`
--

INSERT INTO `permintaan` (`id`, `akun_id`, `perihal`, `status`, `created_at`, `updated_at`) VALUES
(2, 4, 'surat tugas', 1, '2020-06-25 04:25:02', '2020-06-25 04:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id` int(15) NOT NULL,
  `tanggal` date NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `perihal` text NOT NULL,
  `petunjuk` varchar(25) NOT NULL,
  `file` varchar(50) NOT NULL,
  `permintaan_id` int(15) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`id`, `tanggal`, `nomor`, `tujuan`, `perihal`, `petunjuk`, `file`, `permintaan_id`, `created_at`, `updated_at`) VALUES
(6, '2020-06-25', '232132', 'LSP', 'sss', '', 'b4be016deac496e321ab72cd757cc60c.pdf', NULL, '2020-06-25 04:23:42', '2020-06-25 04:23:42'),
(7, '2020-06-25', '232132frrr', 'LSP', 'rreer', '', '0c7496629511e02d8ed54afafcdb227b.pdf', 2, '2020-06-25 04:27:23', '2020-06-25 04:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar_akun`
--

CREATE TABLE `surat_keluar_akun` (
  `id` int(15) NOT NULL,
  `surat_keluar_id` int(15) NOT NULL,
  `akun_id` int(15) NOT NULL,
  `email_queue` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id` int(15) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal` date NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `nomor_agenda` varchar(100) NOT NULL,
  `pengirim` varchar(100) NOT NULL,
  `penerima` varchar(100) NOT NULL,
  `perihal` text NOT NULL,
  `petunjuk` varchar(25) NOT NULL,
  `file` varchar(50) NOT NULL,
  `is_disposisi` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_masuk`
--

INSERT INTO `surat_masuk` (`id`, `tanggal_masuk`, `tanggal`, `nomor`, `nomor_agenda`, `pengirim`, `penerima`, `perihal`, `petunjuk`, `file`, `is_disposisi`, `created_at`, `updated_at`) VALUES
(4, '2020-06-25', '2020-06-24', '121/12/43/5634/DD', '124/123.2/223/122', 'SMKN 3 Malang', 'LSP', 'fndafiadf fsdifsdoufsd lfAPFDShfsand m.sda. dhfdoFDOADAF DAFSDIFHSDOF ADVSWOVSDVSDVDSZCQAjdnsda dafdacsdfds', '1', 'd8884a70f0fd6458ccabc26702e38524.pdf', 1, '2020-06-24 12:37:20', '2020-06-25 07:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk_akun`
--

CREATE TABLE `surat_masuk_akun` (
  `id` int(15) NOT NULL,
  `surat_masuk_id` int(15) NOT NULL,
  `akun_id` int(15) NOT NULL,
  `email_queue` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_masuk_akun`
--

INSERT INTO `surat_masuk_akun` (`id`, `surat_masuk_id`, `akun_id`, `email_queue`, `created_at`, `updated_at`) VALUES
(36, 4, 4, 1, '2020-06-25 04:19:25', '2020-06-25 04:20:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`surat_masuk_id`);

--
-- Indexes for table `penerusan_disposisi`
--
ALTER TABLE `penerusan_disposisi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penerusan_disposisi_ibfk_1` (`disposisi_id`);

--
-- Indexes for table `perintah_disposisi`
--
ALTER TABLE `perintah_disposisi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perintah_disposisi_ibfk_1` (`disposisi_id`);

--
-- Indexes for table `permintaan`
--
ALTER TABLE `permintaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `akun_id` (`akun_id`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor` (`nomor`),
  ADD UNIQUE KEY `permintaan_id_2` (`permintaan_id`),
  ADD KEY `permintaan_id` (`permintaan_id`);

--
-- Indexes for table `surat_keluar_akun`
--
ALTER TABLE `surat_keluar_akun`
  ADD PRIMARY KEY (`id`),
  ADD KEY `akun_id` (`akun_id`),
  ADD KEY `surat_keluar_id` (`surat_keluar_id`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor` (`nomor`),
  ADD UNIQUE KEY `nomor_agenda` (`nomor_agenda`);

--
-- Indexes for table `surat_masuk_akun`
--
ALTER TABLE `surat_masuk_akun`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surat_masuk_id` (`surat_masuk_id`),
  ADD KEY `akun_id` (`akun_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
