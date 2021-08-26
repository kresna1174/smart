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
-- Database: `smkt8825_smea_sarpras`
--

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id` int(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `akun_id` int(15) DEFAULT NULL,
  `is_sarpras` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id`, `nama`, `akun_id`, `is_sarpras`, `created_at`, `updated_at`) VALUES
(7, 'Sarana Prasarana', 1616, 1, '2020-08-04 09:19:52', '2021-04-05 04:01:34'),
(0, 'Kesiswaan', 1576, 0, '2021-04-05 04:06:31', '2021-04-05 04:06:31'),
(0, 'Rekayasa Perangkat Lunak', 1642, 0, '2021-04-05 04:14:11', '2021-04-05 04:14:11'),
(0, 'Multimedia', 1603, 0, '2021-04-05 04:20:13', '2021-04-05 04:20:13'),
(0, 'Animasi', 1619, 0, '2021-04-05 04:21:31', '2021-04-05 04:21:31'),
(0, 'Teknik Komputer & Jaringan', 1617, 0, '2021-04-05 04:23:28', '2021-04-05 04:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `jenis` enum('aset','non-aset','barang') NOT NULL DEFAULT 'barang',
  `is_barang_baru` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `tipe`, `satuan`, `jenis`, `is_barang_baru`, `created_at`, `updated_at`) VALUES
(0, 'Headset', 'JBL', 'unit', 'non-aset', 0, '2021-04-06 02:10:05', '2021-04-06 02:10:05'),
(0, 'Printer', 'Epson L3110', 'unit', 'aset', 0, '2021-04-06 02:11:50', '2021-04-06 02:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `barang_bagian`
--

CREATE TABLE `barang_bagian` (
  `id` int(15) NOT NULL,
  `barang_id` int(15) NOT NULL,
  `bagian_id` int(15) NOT NULL,
  `stok` int(15) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `barang_unit`
--

CREATE TABLE `barang_unit` (
  `id` int(15) NOT NULL,
  `barang_id` int(15) NOT NULL,
  `unit_id` int(15) NOT NULL,
  `stok` int(15) NOT NULL,
  `no_seri_pabrik` varchar(50) DEFAULT NULL,
  `ukuran` varchar(50) DEFAULT NULL,
  `bahan` varchar(50) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `no_kode_barang` varchar(50) NOT NULL,
  `harga_beli` int(15) NOT NULL,
  `keadaan_baik` int(15) NOT NULL DEFAULT 0,
  `keadaan_kurang_baik` int(15) NOT NULL DEFAULT 0,
  `keadaan_rusak_berat` int(15) NOT NULL DEFAULT 0,
  `ket_mutasi` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(15) NOT NULL,
  `petugas_id` int(15) NOT NULL,
  `peminjam_id` varchar(64) DEFAULT NULL,
  `nama_peminjam` varchar(255) NOT NULL,
  `nomor_hp_peminjam` varchar(30) NOT NULL,
  `kepentingan` varchar(255) NOT NULL,
  `tipe` enum('dalam','luar') DEFAULT 'dalam',
  `lampiran` varchar(100) DEFAULT NULL,
  `is_aktif` tinyint(1) NOT NULL DEFAULT 1,
  `bagian_id` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_detail`
--

CREATE TABLE `peminjaman_detail` (
  `id` int(15) NOT NULL,
  `peminjaman_id` int(15) NOT NULL,
  `barang_id` int(15) NOT NULL,
  `jumlah` int(15) NOT NULL,
  `kondisi` text NOT NULL,
  `kembali` int(15) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan`
--

CREATE TABLE `penjadwalan` (
  `id` int(15) NOT NULL,
  `barang_unit_id` int(15) NOT NULL,
  `interval` int(11) NOT NULL DEFAULT 1,
  `scheduled_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan_history`
--

CREATE TABLE `penjadwalan_history` (
  `id` int(15) NOT NULL,
  `penjadwalan_id` int(15) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `akun_id` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_barang`
--

CREATE TABLE `riwayat_barang` (
  `id` int(15) NOT NULL,
  `barang_id` int(15) NOT NULL,
  `bagian_id` int(15) NOT NULL,
  `unit_id` int(15) DEFAULT NULL,
  `kode` enum('tambah','rkbu','edit','hapus','pindah','pinjam','kembali','ambil') NOT NULL,
  `stok` int(15) NOT NULL,
  `mutasi` int(15) NOT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_kepala`
--

CREATE TABLE `riwayat_kepala` (
  `id` int(15) NOT NULL,
  `bagian_id` int(15) NOT NULL,
  `akun_id` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riwayat_kepala`
--

INSERT INTO `riwayat_kepala` (`id`, `bagian_id`, `akun_id`, `created_at`, `updated_at`) VALUES
(0, 7, 1897, '2021-04-05 04:01:34', '2021-04-05 04:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `rkbu`
--

CREATE TABLE `rkbu` (
  `id` int(15) NOT NULL,
  `bagian_id` int(15) NOT NULL,
  `status` enum('draf','proses','ditolak','terverifikasi','selesai') NOT NULL DEFAULT 'draf',
  `catatan` text NOT NULL,
  `verified_at` datetime DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rkbu`
--

INSERT INTO `rkbu` (`id`, `bagian_id`, `status`, `catatan`, `verified_at`, `published_at`, `created_at`, `updated_at`) VALUES
(0, 7, 'terverifikasi', 'Membeli Ram', NULL, '2021-04-04 18:12:23', '2021-04-04 18:11:32', '2021-04-04 18:12:23'),
(0, 7, 'draf', 'Mesin Cetak Stempel Runaflek', NULL, '2021-04-05 03:16:15', '2021-04-05 03:16:15', '2021-04-05 03:16:15'),
(0, 7, 'draf', 'Sound System 5/6 Channel Subwoofer Polytron PMA 9505', NULL, '2021-04-05 03:29:05', '2021-04-05 03:29:05', '2021-04-05 03:29:05'),
(0, 7, 'draf', 'Moulding gantungan kunci pin 2 sisi ukuran 45mm', NULL, '2021-04-05 03:30:07', '2021-04-05 03:30:07', '2021-04-05 03:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `rkbu_detail`
--

CREATE TABLE `rkbu_detail` (
  `id` int(15) NOT NULL,
  `rkbu_id` int(15) NOT NULL,
  `barang_id` int(15) NOT NULL,
  `jumlah` int(15) NOT NULL,
  `harga` int(15) NOT NULL,
  `keterangan` tinytext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rkbu_verifikasi`
--

CREATE TABLE `rkbu_verifikasi` (
  `id` int(15) NOT NULL,
  `jumlah` int(15) NOT NULL,
  `harga` int(15) NOT NULL,
  `datang` int(15) NOT NULL DEFAULT 0,
  `pindah` int(15) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tipe` enum('unit','kelas','lab') NOT NULL,
  `bagian_id` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `nama`, `tipe`, `bagian_id`, `created_at`, `updated_at`) VALUES
(9, 'Ruang 53 Lab RPL 1', 'lab', 7, '2020-08-11 02:27:10', '2020-08-11 06:46:10'),
(10, 'Ruang 18', 'kelas', 7, '2020-08-11 02:27:35', '2020-08-11 02:30:05'),
(11, 'Ruang 1', 'kelas', 7, '2020-08-11 06:41:51', '2020-08-11 06:41:51'),
(12, 'Ruang 2', 'kelas', 7, '2020-08-11 06:43:41', '2020-08-11 06:43:41'),
(13, 'Ruang 3', 'kelas', 7, '2020-08-11 06:44:36', '2020-08-11 06:44:36'),
(14, 'Ruang 4', 'kelas', 7, '2020-08-11 06:47:34', '2020-08-11 06:47:34'),
(15, 'Ruang 5', 'kelas', 7, '2020-08-11 06:56:15', '2020-08-11 06:56:15'),
(16, 'Ruang 6', 'kelas', 7, '2020-08-11 06:56:35', '2020-08-11 06:56:35'),
(17, 'Ruang 7', 'kelas', 7, '2020-08-11 06:56:53', '2020-08-11 06:56:53'),
(18, 'Ruang 8', 'kelas', 7, '2020-08-11 06:57:20', '2020-08-11 06:57:20'),
(19, 'Ruang 9', 'kelas', 7, '2020-08-11 06:57:52', '2020-08-11 06:57:52'),
(20, 'Ruang 10', 'kelas', 7, '2020-08-11 06:58:13', '2020-08-11 06:58:13'),
(21, 'Ruang 11', 'kelas', 7, '2020-08-11 06:59:11', '2020-08-11 06:59:11'),
(22, 'Ruang 12', 'kelas', 7, '2020-08-11 06:59:30', '2020-08-11 06:59:30'),
(23, 'Ruang 13', 'kelas', 7, '2020-08-11 06:59:51', '2020-08-11 06:59:51'),
(24, 'Ruang 14', 'kelas', 7, '2020-08-11 07:00:14', '2020-08-11 07:00:14'),
(25, 'Ruang 15', 'kelas', 7, '2020-08-11 07:00:31', '2020-08-11 07:00:31'),
(26, 'Ruang 16', 'kelas', 7, '2020-08-11 07:00:53', '2020-08-11 07:00:53'),
(27, 'Ruang 17', 'kelas', 7, '2020-08-11 07:01:13', '2020-08-11 07:01:13'),
(28, 'Ruang 19 R BKK', 'unit', 7, '2020-08-11 07:03:40', '2020-08-11 07:03:40'),
(29, 'Ruang 20 Lab UPW Guiding', 'lab', 7, '2020-08-11 07:04:30', '2020-08-11 07:05:49'),
(30, 'Ruang 21 Lab UPW Ticketing', 'lab', 7, '2020-08-11 07:05:12', '2020-08-11 07:05:12'),
(31, 'Ruang 22', 'kelas', 7, '2020-08-11 07:06:36', '2020-08-11 07:06:36'),
(32, 'Ruang Instruktur UPW Gedung N', 'unit', 7, '2020-08-11 07:07:02', '2020-08-12 03:43:02'),
(33, 'Ruang 23', 'kelas', 7, '2020-08-11 07:07:52', '2020-08-11 07:07:52'),
(34, 'Ruang 24', 'kelas', 7, '2020-08-11 07:08:14', '2020-08-11 07:08:14'),
(35, 'Ruang 25', 'kelas', 7, '2020-08-11 07:09:02', '2020-08-11 07:09:02'),
(36, 'Ruang 26', 'kelas', 7, '2020-08-11 07:09:19', '2020-08-11 07:09:19'),
(37, 'Ruang 27 Lab TKJ 3', 'lab', 7, '2020-08-11 07:11:25', '2020-08-11 07:11:25'),
(38, 'Ruang 28 Lab TKJ 1 FO', 'lab', 7, '2020-08-11 07:12:11', '2020-08-11 07:12:11'),
(39, 'Ruang 29 Instruktur TKJ-FO', 'unit', 7, '2020-08-11 07:13:47', '2020-08-11 07:13:47'),
(40, 'Ruang 30 Lab. TKJ 2', 'lab', 7, '2020-08-11 07:14:09', '2020-08-11 07:14:09'),
(41, 'Ruang 31', 'kelas', 7, '2020-08-11 07:14:52', '2020-08-11 07:14:52'),
(42, 'Ruang 32', 'kelas', 7, '2020-08-11 07:15:08', '2020-08-11 07:15:08'),
(43, 'Ruang 33', 'kelas', 7, '2020-08-11 07:15:21', '2020-08-11 07:15:21'),
(44, 'Ruang 34', 'kelas', 7, '2020-08-11 07:15:47', '2020-08-11 07:15:47'),
(45, 'Ruang 35 Lab DKV-Painting', 'lab', 7, '2020-08-12 01:31:30', '2020-08-12 01:31:30'),
(46, 'Ruang 36 R LSP', 'unit', 7, '2020-08-12 01:32:21', '2020-08-12 01:32:37'),
(47, 'Ruang 37 Lab DKV ', 'lab', 7, '2020-08-12 01:33:55', '2020-08-12 01:33:55'),
(48, 'Ruang 38 R Produksi MM 2', 'lab', 7, '2020-08-12 01:34:33', '2020-08-12 01:34:33'),
(49, 'Ruang 39 Lab MM 1', 'lab', 7, '2020-08-12 01:35:06', '2020-08-12 01:35:06'),
(50, 'Ruang 40 Lab. MM 3', 'lab', 7, '2020-08-12 01:35:54', '2020-08-12 01:35:54'),
(51, 'Ruang 41 Ruang Barang', 'unit', 7, '2020-08-12 01:36:34', '2020-08-12 01:36:34'),
(52, 'Ruang 42 Lab Musik', 'lab', 7, '2020-08-12 01:37:07', '2020-08-12 01:37:07'),
(53, 'Ruang 43 Gudang Perpustakaan', 'unit', 7, '2020-08-12 01:37:38', '2020-08-12 01:37:38'),
(54, 'Ruang 44 Lab Bahasa', 'lab', 7, '2020-08-12 01:38:24', '2020-08-12 01:38:24'),
(55, 'Ruang 45 Aula', 'unit', 7, '2020-08-12 01:39:27', '2020-08-12 01:39:27'),
(56, 'Ruang 46 Lab Broadcast', 'lab', 7, '2020-08-12 01:41:12', '2020-08-12 02:56:36'),
(57, 'Ruang 47 Lab Akuntansi 1', 'lab', 7, '2020-08-12 01:41:46', '2020-08-12 01:42:02'),
(58, 'Ruang 48 Lab Administrasi Perkantoran 1', 'lab', 7, '2020-08-12 01:42:49', '2020-08-12 01:42:49'),
(59, 'Ruang 49 Lab Kimia Industri', 'lab', 7, '2020-08-12 01:43:20', '2020-08-12 01:43:20'),
(60, 'Ruang 50 Lab PM', 'lab', 7, '2020-08-12 01:44:00', '2020-08-12 01:44:00'),
(61, 'Ruang 51 Lab Akuntansi 2', 'lab', 7, '2020-08-12 01:44:31', '2020-08-12 01:44:31'),
(62, 'Ruang 52 Lab Administrasi Perkantoran 2', 'lab', 7, '2020-08-12 01:45:15', '2020-08-12 01:45:15'),
(64, 'Ruang 54 Lab RPL 2', 'lab', 7, '2020-08-12 01:46:06', '2020-08-12 01:46:06'),
(65, 'Ruang 55', 'kelas', 7, '2020-08-12 01:46:55', '2020-08-12 01:46:55'),
(66, 'Ruang 56', 'kelas', 7, '2020-08-12 01:47:13', '2020-08-12 01:47:13'),
(67, 'Ruang 57', 'kelas', 7, '2020-08-12 01:47:31', '2020-08-12 01:47:31'),
(68, 'Ruang 58', 'kelas', 7, '2020-08-12 01:47:48', '2020-08-12 01:47:48'),
(69, 'Ruang 59', 'kelas', 7, '2020-08-12 01:49:14', '2020-08-12 01:49:14'),
(70, 'Ruang 60', 'kelas', 7, '2020-08-12 01:49:34', '2020-08-12 01:49:34'),
(71, 'Ruang 61', 'kelas', 7, '2020-08-12 01:49:51', '2020-08-12 01:49:51'),
(72, 'Ruang 62', 'kelas', 7, '2020-08-12 01:51:01', '2020-08-12 01:51:01'),
(73, 'Ruang 63', 'kelas', 7, '2020-08-12 01:51:22', '2020-08-12 01:51:22'),
(74, 'Ruang 64', 'kelas', 7, '2020-08-12 01:51:40', '2020-08-12 01:51:40'),
(75, 'Ruang 65', 'kelas', 7, '2020-08-12 01:54:06', '2020-08-12 01:54:06'),
(76, 'Ruang 66', 'kelas', 7, '2020-08-12 01:54:25', '2020-08-12 01:54:25'),
(77, 'Ruang 67 Lab Animasi', 'lab', 7, '2020-08-12 01:55:11', '2020-08-12 01:55:11'),
(78, 'Ruang 68 RPS Kimia Industri', 'lab', 7, '2020-08-12 02:03:00', '2020-08-12 02:54:50'),
(80, 'Ruang Paskib dan PMR Gedung A', 'unit', 7, '2020-08-12 02:03:50', '2020-08-12 02:59:37'),
(81, 'Toilet 1 Gedung B', 'unit', 7, '2020-08-12 02:05:09', '2020-08-12 02:05:09'),
(82, 'Toilet 2 Gedung B', 'unit', 7, '2020-08-12 02:05:31', '2020-08-12 02:05:31'),
(83, 'Toilet 3 Gedung B', 'unit', 7, '2020-08-12 02:05:59', '2020-08-12 02:05:59'),
(84, 'Toilet 4 Gedung D', 'unit', 7, '2020-08-12 02:07:12', '2020-08-12 02:07:12'),
(85, 'Toilet 5 Gedung D', 'unit', 7, '2020-08-12 02:07:36', '2020-08-12 02:07:36'),
(87, 'Toilet 6 Gedung H', 'unit', 7, '2020-08-12 02:20:58', '2020-08-12 02:20:58'),
(88, 'Toilet 7 Gedung H', 'unit', 7, '2020-08-12 02:21:20', '2020-08-12 02:21:20'),
(89, 'Toilet 8 Gedung I', 'unit', 7, '2020-08-12 02:23:09', '2020-08-12 02:23:09'),
(90, 'Toilet 9 Gedung I', 'unit', 7, '2020-08-12 02:23:32', '2020-08-12 02:23:32'),
(91, 'Toilet 10 Gedung I', 'unit', 7, '2020-08-12 02:23:49', '2020-08-12 02:23:49'),
(92, 'Toilet 11 Gedung J', 'unit', 7, '2020-08-12 02:25:43', '2020-08-12 02:25:43'),
(93, 'Toilet 12 Gedung J', 'unit', 7, '2020-08-12 02:26:08', '2020-08-12 02:26:08'),
(94, 'Toilet 13 Gedung J', 'unit', 7, '2020-08-12 02:26:24', '2020-08-12 02:26:24'),
(95, 'Toilet 14 Gedung J', 'unit', 7, '2020-08-12 02:27:37', '2020-08-12 02:27:37'),
(96, 'Toilet 15 GEdung J', 'unit', 7, '2020-08-12 02:27:55', '2020-08-12 02:27:55'),
(97, 'Toilet 16 Gedung J', 'unit', 7, '2020-08-12 02:28:16', '2020-08-12 02:28:16'),
(98, 'Toilet 17 Gedung O', 'unit', 7, '2020-08-12 02:34:37', '2020-08-12 02:34:37'),
(99, 'Toilet 18 Gedung O', 'unit', 7, '2020-08-12 02:34:56', '2020-08-12 02:34:56'),
(100, 'Toilet 19 Gedung O', 'unit', 7, '2020-08-12 02:35:44', '2020-08-12 02:35:44'),
(101, 'Toilet 20 Gedung O', 'unit', 7, '2020-08-12 02:36:00', '2020-08-12 02:36:00'),
(102, 'Toilet 21 Gedung O', 'unit', 7, '2020-08-12 02:36:22', '2020-08-12 02:36:22'),
(103, 'Toilet 22 Gedung O', 'unit', 7, '2020-08-12 02:37:09', '2020-08-12 02:37:09'),
(104, 'Toilet 23 Gedung O', 'unit', 7, '2020-08-12 02:37:27', '2020-08-12 02:37:40'),
(105, 'Toilet 24 Gedung O', 'unit', 7, '2020-08-12 02:37:55', '2020-08-12 02:37:55'),
(106, 'Toilet 25 Gedung P', 'unit', 7, '2020-08-12 02:39:37', '2020-08-12 02:39:37'),
(107, 'Toilet 26 Gedung P', 'unit', 7, '2020-08-12 02:39:54', '2020-08-12 02:39:54'),
(108, 'Toilet 27 Gedung R', 'unit', 7, '2020-08-12 02:41:23', '2020-08-12 02:41:23'),
(109, 'Toilet 28 Gedung R', 'unit', 7, '2020-08-12 02:41:45', '2020-08-12 02:41:45'),
(110, 'Toilet 29 Gedung R', 'unit', 7, '2020-08-12 02:42:08', '2020-08-12 02:42:08'),
(111, 'Toilet 30 Gedung U', 'unit', 7, '2020-08-12 02:43:35', '2020-08-12 02:43:35'),
(112, 'Ruang UT Gedung A', 'unit', 7, '2020-08-12 02:58:31', '2020-08-12 02:58:31'),
(113, 'Ruang LSP Gedung C', 'unit', 7, '2020-08-12 03:01:31', '2020-08-12 03:01:31'),
(114, 'Ruang Komite Gedung C', 'unit', 7, '2020-08-12 03:01:54', '2020-08-12 03:01:54'),
(115, 'Ruang Gudang DKV Gedung C', 'unit', 7, '2020-08-12 03:03:34', '2020-08-12 03:03:34'),
(116, 'Ruang ISO Gedung E', 'unit', 7, '2020-08-12 03:19:25', '2020-08-12 03:19:25'),
(117, 'Alfamart Gedung F', 'unit', 7, '2020-08-12 03:20:15', '2020-08-12 03:20:15'),
(118, 'Ruang BC Gedung F', 'unit', 7, '2020-08-12 03:20:43', '2020-08-12 03:20:43'),
(119, 'Ruang Kopsis Gedung F', 'unit', 7, '2020-08-12 03:21:04', '2020-08-12 03:21:04'),
(120, 'Ruang Konseling Gedung G', 'unit', 7, '2020-08-12 03:22:22', '2020-08-12 03:22:22'),
(121, 'Ruang BK Gedung G', 'unit', 7, '2020-08-12 03:22:39', '2020-08-12 03:22:39'),
(122, 'Ruang Perpustakaan Gedung H', 'unit', 7, '2020-08-12 03:23:31', '2020-08-12 03:23:31'),
(123, 'Ruang Sidang Gedung I', 'unit', 7, '2020-08-12 03:24:46', '2020-08-12 03:24:46'),
(124, 'Ruang Gudang Sarpras 2 ATK Gedung I', 'unit', 7, '2020-08-12 03:25:46', '2020-08-12 03:42:01'),
(125, 'Ruang Dapur Gedung I', 'unit', 7, '2020-08-12 03:26:35', '2020-08-12 03:26:35'),
(126, 'Ruang Server Gedung I', 'unit', 7, '2020-08-12 03:27:04', '2020-08-12 03:27:04'),
(127, 'Ruang Kepsek Gedung I', 'unit', 7, '2020-08-12 03:27:28', '2020-08-12 03:27:28'),
(128, 'Ruang Gudang Sarpras 1 Elektronik Gedung I', 'unit', 7, '2020-08-12 03:28:11', '2020-08-12 03:28:11'),
(129, 'Ruang UKS Gedung I', 'unit', 7, '2020-08-12 03:28:36', '2020-08-12 03:28:36'),
(130, 'Ruang Kesiswaan Gedung I', 'unit', 7, '2020-08-12 03:29:06', '2020-08-12 03:29:06'),
(131, 'Ruang Prakerin Gedung I', 'unit', 7, '2020-08-12 03:29:26', '2020-08-12 03:29:26'),
(132, 'Ruang Kurikulum Gedung I', 'unit', 7, '2020-08-12 03:29:54', '2020-08-12 03:29:54'),
(133, 'Ruang Receptionist-Ruang Tamu Gedung I', 'unit', 7, '2020-08-12 03:30:50', '2020-08-12 03:30:50'),
(134, 'Ruang Guru Gedung I', 'unit', 7, '2020-08-12 03:31:07', '2020-08-12 03:31:07'),
(135, 'Ruang Pramuka Gedung J', 'unit', 7, '2020-08-12 03:31:52', '2020-08-12 03:31:52'),
(136, 'Ruang MR Gedung K', 'unit', 7, '2020-08-12 03:38:38', '2020-08-12 03:38:38'),
(137, 'Ruang ELC Gedung K', 'unit', 7, '2020-08-12 03:39:30', '2020-08-12 03:39:30'),
(138, 'Ruang Masjid Gedung L', 'unit', 7, '2020-08-12 03:40:08', '2020-08-12 03:40:08'),
(139, 'Ruang Pos Satpam Gedung M', 'unit', 7, '2020-08-12 03:40:53', '2020-08-12 03:40:53'),
(140, 'Ruang OSIS Gedung O', 'unit', 7, '2020-08-12 03:43:51', '2020-08-12 03:43:51'),
(141, 'Ruang Instruktur TKJ Gedung O', 'unit', 7, '2020-08-12 03:45:02', '2020-08-12 03:45:02'),
(142, 'Ruang Gudang Gris Gedung P', 'unit', 7, '2020-08-12 03:45:51', '2020-08-12 03:45:51'),
(143, 'Ruang Pamer Gedung Q', 'unit', 7, '2020-08-12 03:47:13', '2020-08-12 03:47:13'),
(144, 'Lapangan Basket & Tennis Gedung S', 'unit', 7, '2020-08-12 03:48:33', '2020-08-12 03:48:33'),
(145, 'Ruang Kantin Gedung V', 'unit', 7, '2020-08-12 03:49:19', '2020-08-12 03:49:19'),
(146, 'Ruang 69 Lab CCIC', 'lab', 7, '2020-08-12 03:51:17', '2020-08-12 03:51:17'),
(147, 'Ruang Bank Sampah Gedung X', 'unit', 7, '2020-08-12 03:52:11', '2020-08-12 03:52:11'),
(148, 'Ruang Accespoint Bank Jatim', 'unit', 7, '2020-08-12 04:15:05', '2020-08-12 04:15:05'),
(0, 'Ruang 70 RPS Jurusan', 'unit', 7, '2021-04-05 03:59:52', '2021-04-05 03:59:52'),
(0, 'Ruang 71 Lab Animasi COE', 'unit', 7, '2021-04-05 04:00:41', '2021-04-05 04:00:41'),
(0, 'Ruang Humas', 'unit', 0, '2021-04-05 04:06:31', '2021-04-05 04:06:31'),
(0, 'Lab. Rekayasa Perangkat Lunak 1', 'lab', 0, '2021-04-05 04:14:11', '2021-04-05 04:14:11'),
(0, 'Laboratorium Multimedia', 'lab', 0, '2021-04-05 04:20:13', '2021-04-05 04:20:13'),
(0, 'Laboratorium Animasi', 'lab', 0, '2021-04-05 04:21:31', '2021-04-05 04:21:31'),
(0, 'Laboratorium Teknik Komputer & Jaringan', 'lab', 0, '2021-04-05 04:23:28', '2021-04-05 04:23:28');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_bagian`
-- (See below for the actual view)
--
CREATE TABLE `view_bagian` (
`id` int(15)
,`nama` varchar(100)
,`akun_id` int(15)
,`nama_kepala` varchar(100)
,`nip` varchar(30)
,`alamat` mediumtext
,`email` varchar(50)
,`nomor_hp` varchar(14)
,`username` varchar(30)
,`is_sarpras` tinyint(1)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_barang`
-- (See below for the actual view)
--
CREATE TABLE `view_barang` (
`id` int(15)
,`nama` varchar(100)
,`tipe` varchar(100)
,`satuan` varchar(50)
,`jenis` enum('aset','non-aset','barang')
,`is_barang_baru` tinyint(1)
,`baru` varchar(4)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_barang_bagian`
-- (See below for the actual view)
--
CREATE TABLE `view_barang_bagian` (
`id` int(15)
,`barang_id` int(15)
,`bagian_id` int(15)
,`stok` int(15)
,`unit` varchar(100)
,`akun_id` int(15)
,`nama` varchar(100)
,`tipe` varchar(100)
,`satuan` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_barang_datang`
-- (See below for the actual view)
--
CREATE TABLE `view_barang_datang` (
`id` int(15)
,`rkbu_id` int(15)
,`bagian_id` int(15)
,`unit` varchar(100)
,`barang_id` int(15)
,`nama` varchar(100)
,`tipe` varchar(100)
,`satuan` varchar(50)
,`jenis` enum('aset','non-aset','barang')
,`jumlah` int(15)
,`datang` int(15)
,`pindah` int(15)
,`max` bigint(16)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_barang_unit`
-- (See below for the actual view)
--
CREATE TABLE `view_barang_unit` (
`id` int(15)
,`barang_id` int(15)
,`unit_id` int(15)
,`ruangan` varchar(100)
,`tipe_ruangan` enum('unit','kelas','lab')
,`bagian_id` int(15)
,`unit` varchar(100)
,`akun_id` int(15)
,`nama` varchar(100)
,`tipe` varchar(100)
,`satuan` varchar(50)
,`jenis` enum('aset','non-aset','barang')
,`stok` int(15)
,`no_seri_pabrik` varchar(50)
,`ukuran` varchar(50)
,`bahan` varchar(50)
,`tahun` varchar(50)
,`no_kode_barang` varchar(50)
,`harga_beli` int(15)
,`keadaan_baik` int(15)
,`keadaan_kurang_baik` int(15)
,`keadaan_rusak_berat` int(15)
,`ket_mutasi` varchar(50)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_pegawai`
-- (See below for the actual view)
--
CREATE TABLE `view_pegawai` (
`id` int(15)
,`nip` varchar(30)
,`nama` varchar(100)
,`alamat` mediumtext
,`email` varchar(50)
,`nomor_hp` varchar(14)
,`username` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_peminjam`
-- (See below for the actual view)
--
CREATE TABLE `view_peminjam` (
`id` int(15)
,`nama` varchar(100)
,`alamat` mediumtext
,`email` varchar(100)
,`nomor_hp` varchar(14)
,`username` varchar(30)
,`tipe` varchar(7)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_peminjaman`
-- (See below for the actual view)
--
CREATE TABLE `view_peminjaman` (
`id` int(15)
,`nama_peminjam` varchar(255)
,`nomor_hp_peminjam` varchar(30)
,`kepentingan` varchar(255)
,`tipe` enum('dalam','luar')
,`status` varchar(11)
,`tanggal` varchar(72)
,`bagian_id` int(15)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_peminjaman_detail`
-- (See below for the actual view)
--
CREATE TABLE `view_peminjaman_detail` (
`id` int(15)
,`peminjaman_id` int(15)
,`barang_id` int(15)
,`jumlah` int(15)
,`kondisi` text
,`kembali` int(15)
,`nama` varchar(100)
,`tipe` varchar(100)
,`satuan` varchar(50)
,`jenis` enum('aset','non-aset','barang')
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_rekap`
-- (See below for the actual view)
--
CREATE TABLE `view_rekap` (
`id` int(15)
,`nama` varchar(100)
,`tipe` varchar(100)
,`satuan` varchar(50)
,`jenis` enum('aset','non-aset','barang')
,`jumlah` decimal(36,0)
,`datang` decimal(36,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_rekap_list`
-- (See below for the actual view)
--
CREATE TABLE `view_rekap_list` (
`nama` varchar(100)
,`rkbu_id` int(15)
,`barang_id` int(15)
,`bagian_id` int(15)
,`catatan` text
,`published_at` timestamp
,`id` int(15)
,`jumlah` int(15)
,`harga` int(15)
,`datang` int(15)
,`pindah` int(15)
,`created_at` timestamp
,`updated_at` timestamp
,`total` bigint(29)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_riwayat_barang`
-- (See below for the actual view)
--
CREATE TABLE `view_riwayat_barang` (
`id` int(15)
,`barang_id` int(15)
,`nama` varchar(100)
,`tipe` varchar(100)
,`satuan` varchar(50)
,`jenis` enum('aset','non-aset','barang')
,`bagian_id` int(15)
,`unit` varchar(100)
,`akun_id` int(15)
,`unit_id` int(15)
,`ruangan` varchar(100)
,`tipe_ruangan` enum('unit','kelas','lab')
,`kode` enum('tambah','rkbu','edit','hapus','pindah','pinjam','kembali','ambil')
,`stok` int(15)
,`mutasi` int(15)
,`stok_akhir` bigint(16)
,`catatan` text
,`date` varchar(86)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_rkbu`
-- (See below for the actual view)
--
CREATE TABLE `view_rkbu` (
`id` int(15)
,`bagian_id` int(15)
,`nama` varchar(100)
,`status` enum('draf','proses','ditolak','terverifikasi','selesai')
,`catatan` text
,`verified_at` datetime
,`published_at` timestamp
,`tanggal` varchar(72)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_rkbu_detail`
-- (See below for the actual view)
--
CREATE TABLE `view_rkbu_detail` (
`id` int(15)
,`rkbu_id` int(15)
,`barang_id` int(15)
,`nama` varchar(100)
,`tipe` varchar(100)
,`satuan` varchar(50)
,`jenis` enum('aset','non-aset','barang')
,`is_barang_baru` tinyint(1)
,`jumlah` int(15)
,`harga` int(15)
,`total` bigint(29)
,`keterangan` tinytext
,`created_at` timestamp
,`updated_at` timestamp
,`vid` int(15)
,`vjumlah` int(15)
,`vharga` int(15)
,`vtotal` bigint(29)
,`vdatang` int(15)
,`vpindah` int(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_unit`
-- (See below for the actual view)
--
CREATE TABLE `view_unit` (
`id` int(15)
,`nama` varchar(100)
,`tipe` enum('unit','kelas','lab')
,`bagian_id` int(15)
,`nama_bagian` varchar(100)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Structure for view `view_bagian`
--
DROP TABLE IF EXISTS `view_bagian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_bagian`  AS  (select `bagian`.`id` AS `id`,`bagian`.`nama` AS `nama`,`bagian`.`akun_id` AS `akun_id`,`view_pegawai`.`nama` AS `nama_kepala`,`view_pegawai`.`nip` AS `nip`,`view_pegawai`.`alamat` AS `alamat`,`view_pegawai`.`email` AS `email`,`view_pegawai`.`nomor_hp` AS `nomor_hp`,`view_pegawai`.`username` AS `username`,`bagian`.`is_sarpras` AS `is_sarpras`,`bagian`.`created_at` AS `created_at`,`bagian`.`updated_at` AS `updated_at` from (`bagian` left join `view_pegawai` on(`view_pegawai`.`id` = `bagian`.`akun_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_barang`
--
DROP TABLE IF EXISTS `view_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_barang`  AS  (select `barang`.`id` AS `id`,`barang`.`nama` AS `nama`,`barang`.`tipe` AS `tipe`,`barang`.`satuan` AS `satuan`,`barang`.`jenis` AS `jenis`,`barang`.`is_barang_baru` AS `is_barang_baru`,if(`barang`.`is_barang_baru`,'baru','lama') AS `baru`,`barang`.`created_at` AS `created_at`,`barang`.`updated_at` AS `updated_at` from `barang`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_barang_bagian`
--
DROP TABLE IF EXISTS `view_barang_bagian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_barang_bagian`  AS  (select `barang_bagian`.`id` AS `id`,`barang_bagian`.`barang_id` AS `barang_id`,`barang_bagian`.`bagian_id` AS `bagian_id`,`barang_bagian`.`stok` AS `stok`,`bagian`.`nama` AS `unit`,`bagian`.`akun_id` AS `akun_id`,`barang`.`nama` AS `nama`,`barang`.`tipe` AS `tipe`,`barang`.`satuan` AS `satuan` from ((`barang_bagian` join `barang` on(`barang_bagian`.`barang_id` = `barang`.`id`)) join `bagian` on(`barang_bagian`.`bagian_id` = `bagian`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_barang_datang`
--
DROP TABLE IF EXISTS `view_barang_datang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_barang_datang`  AS  (select `rkbu_verifikasi`.`id` AS `id`,`rkbu_detail`.`rkbu_id` AS `rkbu_id`,`rkbu`.`bagian_id` AS `bagian_id`,`bagian`.`nama` AS `unit`,`rkbu_detail`.`barang_id` AS `barang_id`,`barang`.`nama` AS `nama`,`barang`.`tipe` AS `tipe`,`barang`.`satuan` AS `satuan`,`barang`.`jenis` AS `jenis`,`rkbu_verifikasi`.`jumlah` AS `jumlah`,`rkbu_verifikasi`.`datang` AS `datang`,`rkbu_verifikasi`.`pindah` AS `pindah`,`rkbu_verifikasi`.`datang` - `rkbu_verifikasi`.`pindah` AS `max`,`rkbu_verifikasi`.`created_at` AS `created_at`,`rkbu_verifikasi`.`updated_at` AS `updated_at` from ((((`rkbu_detail` join `barang` on(`rkbu_detail`.`barang_id` = `barang`.`id`)) join `rkbu_verifikasi` on(`rkbu_verifikasi`.`id` = `rkbu_detail`.`id`)) join `rkbu` on(`rkbu_detail`.`rkbu_id` = `rkbu`.`id`)) join `bagian` on(`rkbu`.`bagian_id` = `bagian`.`id`)) where `barang`.`jenis` = 'aset' or `barang`.`jenis` = 'non-aset' having `max` > 0) ;

-- --------------------------------------------------------

--
-- Structure for view `view_barang_unit`
--
DROP TABLE IF EXISTS `view_barang_unit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_barang_unit`  AS  (select `barang_unit`.`id` AS `id`,`barang_unit`.`barang_id` AS `barang_id`,`barang_unit`.`unit_id` AS `unit_id`,`unit`.`nama` AS `ruangan`,`unit`.`tipe` AS `tipe_ruangan`,`unit`.`bagian_id` AS `bagian_id`,`bagian`.`nama` AS `unit`,`bagian`.`akun_id` AS `akun_id`,`barang`.`nama` AS `nama`,`barang`.`tipe` AS `tipe`,`barang`.`satuan` AS `satuan`,`barang`.`jenis` AS `jenis`,`barang_unit`.`stok` AS `stok`,`barang_unit`.`no_seri_pabrik` AS `no_seri_pabrik`,`barang_unit`.`ukuran` AS `ukuran`,`barang_unit`.`bahan` AS `bahan`,`barang_unit`.`tahun` AS `tahun`,`barang_unit`.`no_kode_barang` AS `no_kode_barang`,`barang_unit`.`harga_beli` AS `harga_beli`,`barang_unit`.`keadaan_baik` AS `keadaan_baik`,`barang_unit`.`keadaan_kurang_baik` AS `keadaan_kurang_baik`,`barang_unit`.`keadaan_rusak_berat` AS `keadaan_rusak_berat`,`barang_unit`.`ket_mutasi` AS `ket_mutasi`,`barang_unit`.`created_at` AS `created_at`,`barang_unit`.`updated_at` AS `updated_at` from (((`barang_unit` join `barang` on(`barang_unit`.`barang_id` = `barang`.`id`)) join `unit` on(`barang_unit`.`unit_id` = `unit`.`id`)) join `bagian` on(`unit`.`bagian_id` = `bagian`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_pegawai`
--
DROP TABLE IF EXISTS `view_pegawai`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_pegawai`  AS  (select `smkt8825_smea3`.`akun`.`id` AS `id`,NULL AS `nip`,'Kepala Sarpras' AS `nama`,'JL. Ki Mangunsarkoro No. VI/3, Beji, Kec. Boyolangu, Kab. Tulungagung, Jawa Timur' AS `alamat`,'' AS `email`,'' AS `nomor_hp`,`smkt8825_smea3`.`akun`.`username` AS `username` from (`smkt8825_smea3`.`akun` join `smkt8825_smea3`.`akun_role` on(`smkt8825_smea3`.`akun_role`.`akun_id` = `smkt8825_smea3`.`akun`.`id` and `smkt8825_smea3`.`akun_role`.`role` = 'sarpras_admin' and `smkt8825_smea3`.`akun`.`status` = '1'))) union (select `smkt8825_smea3`.`guru`.`akun_id` AS `id`,`smkt8825_smea3`.`guru`.`nip` AS `nip`,`smkt8825_smea3`.`guru`.`nama` AS `nama`,`smkt8825_smea3`.`guru`.`alamat` AS `alamat`,`smkt8825_smea3`.`guru`.`email` AS `email`,`smkt8825_smea3`.`guru`.`nomor_telp` AS `nomor_hp`,`smkt8825_smea3`.`akun`.`username` AS `username` from (`smkt8825_smea3`.`guru` join `smkt8825_smea3`.`akun` on(`smkt8825_smea3`.`guru`.`akun_id` = `smkt8825_smea3`.`akun`.`id` and `smkt8825_smea3`.`akun`.`status` = '1'))) union (select `smkt8825_smea_sdm`.`guru`.`akun_id` AS `id`,NULL AS `nip`,`smkt8825_smea_sdm`.`guru`.`nama` AS `nama`,`smkt8825_smea_sdm`.`guru`.`alamat` AS `alamat`,`smkt8825_smea_sdm`.`guru`.`email` AS `email`,`smkt8825_smea_sdm`.`guru`.`nomor_hp` AS `nomor_hp`,`smkt8825_smea3`.`akun`.`username` AS `username` from (`smkt8825_smea_sdm`.`guru` join `smkt8825_smea3`.`akun` on(`smkt8825_smea_sdm`.`guru`.`akun_id` = `smkt8825_smea3`.`akun`.`id` and `smkt8825_smea3`.`akun`.`status` = '1'))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_peminjam`
--
DROP TABLE IF EXISTS `view_peminjam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_peminjam`  AS  (select `smkt8825_smea3`.`akun`.`id` AS `id`,'Kepala Sarpras' AS `nama`,'JL. Ki Mangunsarkoro No. VI/3, Beji, Kec. Boyolangu, Kab. Tulungagung, Jawa Timur' AS `alamat`,'' AS `email`,'' AS `nomor_hp`,`smkt8825_smea3`.`akun`.`username` AS `username`,'pegawai' AS `tipe` from (`smkt8825_smea3`.`akun` join `smkt8825_smea3`.`akun_role` on(`smkt8825_smea3`.`akun_role`.`akun_id` = `smkt8825_smea3`.`akun`.`id` and `smkt8825_smea3`.`akun_role`.`role` = 'sarpras_admin' and `smkt8825_smea3`.`akun`.`status` = '1'))) union (select `smkt8825_smea3`.`guru`.`akun_id` AS `id`,`smkt8825_smea3`.`guru`.`nama` AS `nama`,`smkt8825_smea3`.`guru`.`alamat` AS `alamat`,`smkt8825_smea3`.`guru`.`email` AS `email`,`smkt8825_smea3`.`guru`.`nomor_telp` AS `nomor_hp`,`smkt8825_smea3`.`akun`.`username` AS `username`,'pegawai' AS `tipe` from (`smkt8825_smea3`.`guru` join `smkt8825_smea3`.`akun` on(`smkt8825_smea3`.`guru`.`akun_id` = `smkt8825_smea3`.`akun`.`id` and `smkt8825_smea3`.`akun`.`status` = '1'))) union (select `smkt8825_smea_sdm`.`guru`.`akun_id` AS `id`,`smkt8825_smea_sdm`.`guru`.`nama` AS `nama`,`smkt8825_smea_sdm`.`guru`.`alamat` AS `alamat`,`smkt8825_smea_sdm`.`guru`.`email` AS `email`,`smkt8825_smea_sdm`.`guru`.`nomor_hp` AS `nomor_hp`,`smkt8825_smea3`.`akun`.`username` AS `username`,'pegawai' AS `tipe` from (`smkt8825_smea_sdm`.`guru` join `smkt8825_smea3`.`akun` on(`smkt8825_smea_sdm`.`guru`.`akun_id` = `smkt8825_smea3`.`akun`.`id` and `smkt8825_smea3`.`akun`.`status` = '1'))) union (select `smkt8825_smea3`.`siswa`.`akun_id` AS `id`,`smkt8825_smea3`.`siswa`.`nama` AS `nama`,`smkt8825_smea3`.`siswa`.`alamat` AS `alamat`,`smkt8825_smea3`.`akun`.`email` AS `email`,`smkt8825_smea3`.`siswa`.`nomor_telp` AS `nomor_hp`,`smkt8825_smea3`.`akun`.`username` AS `username`,'siswa' AS `tipe` from (`smkt8825_smea3`.`siswa` join `smkt8825_smea3`.`akun` on(`smkt8825_smea3`.`siswa`.`akun_id` = `smkt8825_smea3`.`akun`.`id` and `smkt8825_smea3`.`akun`.`status` = '1'))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_peminjaman`
--
DROP TABLE IF EXISTS `view_peminjaman`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_peminjaman`  AS  (select `peminjaman`.`id` AS `id`,`peminjaman`.`nama_peminjam` AS `nama_peminjam`,`peminjaman`.`nomor_hp_peminjam` AS `nomor_hp_peminjam`,`peminjaman`.`kepentingan` AS `kepentingan`,`peminjaman`.`tipe` AS `tipe`,if(`peminjaman`.`is_aktif`,'aktif','tidak aktif') AS `status`,date_format(`peminjaman`.`created_at`,'%e %M %Y') AS `tanggal`,`peminjaman`.`bagian_id` AS `bagian_id`,`peminjaman`.`created_at` AS `created_at`,`peminjaman`.`updated_at` AS `updated_at` from `peminjaman`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_peminjaman_detail`
--
DROP TABLE IF EXISTS `view_peminjaman_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_peminjaman_detail`  AS  (select `peminjaman_detail`.`id` AS `id`,`peminjaman_detail`.`peminjaman_id` AS `peminjaman_id`,`peminjaman_detail`.`barang_id` AS `barang_id`,`peminjaman_detail`.`jumlah` AS `jumlah`,`peminjaman_detail`.`kondisi` AS `kondisi`,`peminjaman_detail`.`kembali` AS `kembali`,`barang`.`nama` AS `nama`,`barang`.`tipe` AS `tipe`,`barang`.`satuan` AS `satuan`,`barang`.`jenis` AS `jenis`,`peminjaman_detail`.`created_at` AS `created_at`,`peminjaman_detail`.`updated_at` AS `updated_at` from (`peminjaman_detail` join `barang` on(`peminjaman_detail`.`barang_id` = `barang`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_rekap`
--
DROP TABLE IF EXISTS `view_rekap`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_rekap`  AS  (select `barang`.`id` AS `id`,`barang`.`nama` AS `nama`,`barang`.`tipe` AS `tipe`,`barang`.`satuan` AS `satuan`,`barang`.`jenis` AS `jenis`,sum(`rkbu_verifikasi`.`jumlah`) AS `jumlah`,sum(`rkbu_verifikasi`.`datang`) AS `datang` from ((((`rkbu_verifikasi` join `rkbu_detail` on(`rkbu_detail`.`id` = `rkbu_verifikasi`.`id`)) join `barang` on(`barang`.`id` = `rkbu_detail`.`barang_id`)) join `rkbu` on(`rkbu`.`id` = `rkbu_detail`.`rkbu_id`)) join `bagian` on(`rkbu`.`bagian_id` = `bagian`.`id`)) where `rkbu`.`status` = 'terverifikasi' group by `rkbu_detail`.`barang_id` order by `barang`.`nama`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_rekap_list`
--
DROP TABLE IF EXISTS `view_rekap_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_rekap_list`  AS  (select `bagian`.`nama` AS `nama`,`rkbu_detail`.`rkbu_id` AS `rkbu_id`,`rkbu_detail`.`barang_id` AS `barang_id`,`rkbu`.`bagian_id` AS `bagian_id`,`rkbu`.`catatan` AS `catatan`,`rkbu`.`published_at` AS `published_at`,`rkbu_verifikasi`.`id` AS `id`,`rkbu_verifikasi`.`jumlah` AS `jumlah`,`rkbu_verifikasi`.`harga` AS `harga`,`rkbu_verifikasi`.`datang` AS `datang`,`rkbu_verifikasi`.`pindah` AS `pindah`,`rkbu_verifikasi`.`created_at` AS `created_at`,`rkbu_verifikasi`.`updated_at` AS `updated_at`,`rkbu_verifikasi`.`jumlah` * `rkbu_verifikasi`.`harga` AS `total` from ((((`rkbu_verifikasi` join `rkbu_detail` on(`rkbu_detail`.`id` = `rkbu_verifikasi`.`id`)) join `barang` on(`barang`.`id` = `rkbu_detail`.`barang_id`)) join `rkbu` on(`rkbu_detail`.`rkbu_id` = `rkbu`.`id`)) join `bagian` on(`rkbu`.`bagian_id` = `bagian`.`id`)) where `rkbu`.`status` = 'terverifikasi' order by `bagian`.`nama`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_riwayat_barang`
--
DROP TABLE IF EXISTS `view_riwayat_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_riwayat_barang`  AS  (select `riwayat_barang`.`id` AS `id`,`riwayat_barang`.`barang_id` AS `barang_id`,`barang`.`nama` AS `nama`,`barang`.`tipe` AS `tipe`,`barang`.`satuan` AS `satuan`,`barang`.`jenis` AS `jenis`,`riwayat_barang`.`bagian_id` AS `bagian_id`,`bagian`.`nama` AS `unit`,`bagian`.`akun_id` AS `akun_id`,`riwayat_barang`.`unit_id` AS `unit_id`,`unit`.`nama` AS `ruangan`,`unit`.`tipe` AS `tipe_ruangan`,`riwayat_barang`.`kode` AS `kode`,`riwayat_barang`.`stok` AS `stok`,`riwayat_barang`.`mutasi` AS `mutasi`,`riwayat_barang`.`stok` + `riwayat_barang`.`mutasi` AS `stok_akhir`,`riwayat_barang`.`catatan` AS `catatan`,date_format(`riwayat_barang`.`created_at`,'%e %M %Y %H:%i:%s') AS `date`,`riwayat_barang`.`created_at` AS `created_at`,`riwayat_barang`.`updated_at` AS `updated_at` from (((`riwayat_barang` join `barang` on(`riwayat_barang`.`barang_id` = `barang`.`id`)) join `bagian` on(`riwayat_barang`.`bagian_id` = `bagian`.`id`)) left join `unit` on(`unit`.`bagian_id` = `bagian`.`id` and `riwayat_barang`.`unit_id` = `unit`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_rkbu`
--
DROP TABLE IF EXISTS `view_rkbu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_rkbu`  AS  (select `rkbu`.`id` AS `id`,`rkbu`.`bagian_id` AS `bagian_id`,`bagian`.`nama` AS `nama`,`rkbu`.`status` AS `status`,`rkbu`.`catatan` AS `catatan`,`rkbu`.`verified_at` AS `verified_at`,`rkbu`.`published_at` AS `published_at`,date_format(`rkbu`.`published_at`,'%e %M %Y') AS `tanggal`,`rkbu`.`created_at` AS `created_at`,`rkbu`.`updated_at` AS `updated_at` from (`rkbu` join `bagian` on(`rkbu`.`bagian_id` = `bagian`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_rkbu_detail`
--
DROP TABLE IF EXISTS `view_rkbu_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_rkbu_detail`  AS  (select `rkbu_detail`.`id` AS `id`,`rkbu_detail`.`rkbu_id` AS `rkbu_id`,`rkbu_detail`.`barang_id` AS `barang_id`,`barang`.`nama` AS `nama`,`barang`.`tipe` AS `tipe`,`barang`.`satuan` AS `satuan`,`barang`.`jenis` AS `jenis`,`barang`.`is_barang_baru` AS `is_barang_baru`,`rkbu_detail`.`jumlah` AS `jumlah`,`rkbu_detail`.`harga` AS `harga`,`rkbu_detail`.`jumlah` * `rkbu_detail`.`harga` AS `total`,`rkbu_detail`.`keterangan` AS `keterangan`,`rkbu_detail`.`created_at` AS `created_at`,`rkbu_detail`.`updated_at` AS `updated_at`,`rkbu_verifikasi`.`id` AS `vid`,`rkbu_verifikasi`.`jumlah` AS `vjumlah`,`rkbu_verifikasi`.`harga` AS `vharga`,`rkbu_verifikasi`.`jumlah` * `rkbu_verifikasi`.`harga` AS `vtotal`,`rkbu_verifikasi`.`datang` AS `vdatang`,`rkbu_verifikasi`.`pindah` AS `vpindah` from ((`rkbu_detail` join `barang` on(`rkbu_detail`.`barang_id` = `barang`.`id`)) left join `rkbu_verifikasi` on(`rkbu_verifikasi`.`id` = `rkbu_detail`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_unit`
--
DROP TABLE IF EXISTS `view_unit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `view_unit`  AS  (select `unit`.`id` AS `id`,`unit`.`nama` AS `nama`,`unit`.`tipe` AS `tipe`,`unit`.`bagian_id` AS `bagian_id`,`bagian`.`nama` AS `nama_bagian`,`unit`.`created_at` AS `created_at`,`unit`.`updated_at` AS `updated_at` from (`unit` join `bagian` on(`unit`.`bagian_id` = `bagian`.`id`))) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
