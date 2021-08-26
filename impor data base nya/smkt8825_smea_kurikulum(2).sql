-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2021 at 06:20 PM
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
-- Database: `smkt8825_smea_kurikulum`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi_kbm_guru`
--

CREATE TABLE `absensi_kbm_guru` (
  `id` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `jadwal_id` int(11) NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `status` enum('masuk','tugas','kosong') NOT NULL DEFAULT 'kosong',
  `kegiatan` enum('menerangkan','tugas','diskusi','ulangan') DEFAULT NULL,
  `file_tugas` text DEFAULT NULL,
  `foto_kbm` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `absensi_kbm_siswa`
--

CREATE TABLE `absensi_kbm_siswa` (
  `id` int(11) NOT NULL,
  `nisn` varchar(30) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `jadwal_id` int(11) NOT NULL,
  `status_kehadiran` enum('0','1') NOT NULL,
  `alasan_tidak_hadir` enum('I','S','A') DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `absensi_siswa`
--

CREATE TABLE `absensi_siswa` (
  `id` int(11) NOT NULL,
  `nisn` varchar(30) NOT NULL,
  `waktu_datang` time DEFAULT NULL,
  `waktu_pulang` time DEFAULT NULL,
  `status_kehadiran` enum('0','1','2') NOT NULL DEFAULT '0',
  `status_pulang` enum('0','1','2') NOT NULL DEFAULT '0',
  `foto` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `akun_hari`
--

CREATE TABLE `akun_hari` (
  `id` int(11) NOT NULL,
  `akun_id` int(11) NOT NULL,
  `hari_pelajaran_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun_hari`
--

INSERT INTO `akun_hari` (`id`, `akun_id`, `hari_pelajaran_id`, `created_at`, `updated_at`) VALUES
(1, 1166, 1, '2020-07-06 09:27:11', NULL),
(2, 1168, 5, '2020-07-10 08:06:39', NULL),
(3, 1176, 2, '2020-07-14 04:25:57', NULL),
(4, 1538, 2, '2020-08-11 04:26:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bank_soal`
--

CREATE TABLE `bank_soal` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `file` text NOT NULL,
  `nip` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel`
--

CREATE TABLE `guru_mapel` (
  `id` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hari_pelajaran`
--

CREATE TABLE `hari_pelajaran` (
  `id` int(11) NOT NULL,
  `nama_hari` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hari_pelajaran`
--

INSERT INTO `hari_pelajaran` (`id`, `nama_hari`, `created_at`, `updated_at`) VALUES
(1, 'Senin', '2020-05-05 09:19:25', NULL),
(2, 'Selasa', '2020-05-05 09:19:25', NULL),
(3, 'Rabu', '2020-05-05 09:19:25', NULL),
(4, 'Kamis', '2020-05-05 09:19:25', NULL),
(5, 'Jumat', '2020-05-05 09:19:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `guru_mapel_id` int(11) NOT NULL,
  `kelas_id` int(15) NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `tahun_ajaran` year(4) NOT NULL,
  `semester` enum('1','2') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `guru_mapel_id`, `kelas_id`, `ruang_id`, `tahun_ajaran`, `semester`, `created_at`, `updated_at`) VALUES
(0, 0, 7, 0, 2002, '', '2021-06-29 11:40:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jam_jadwal`
--

CREATE TABLE `jam_jadwal` (
  `id` int(11) NOT NULL,
  `jadwal_id` int(11) NOT NULL,
  `jam_pelajaran_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jam_jadwal`
--

INSERT INTO `jam_jadwal` (`id`, `jadwal_id`, `jam_pelajaran_id`, `created_at`, `updated_at`) VALUES
(0, 0, 4, '2021-06-29 11:40:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jam_pelajaran`
--

CREATE TABLE `jam_pelajaran` (
  `id` int(11) NOT NULL,
  `hari_pelajaran_id` int(11) NOT NULL,
  `jam_ke` int(11) DEFAULT NULL,
  `waktu_mulai` time DEFAULT NULL,
  `waktu_selesai` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jam_pelajaran`
--

INSERT INTO `jam_pelajaran` (`id`, `hari_pelajaran_id`, `jam_ke`, `waktu_mulai`, `waktu_selesai`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '07:00:00', '08:10:00', '2020-07-07 00:55:03', NULL),
(2, 1, 2, '08:10:00', '08:50:00', '2020-07-07 00:55:25', NULL),
(3, 1, 3, '08:50:00', '09:30:00', '2020-07-07 00:55:59', NULL),
(4, 1, 4, '09:30:00', '10:10:00', '2020-07-07 00:56:15', NULL),
(5, 1, 5, '10:25:00', '11:05:00', '2020-07-07 00:56:35', NULL),
(6, 1, 6, '11:05:00', '11:45:00', '2020-07-07 00:57:12', NULL),
(7, 1, 7, '12:15:00', '12:55:00', '2020-07-07 00:57:42', NULL),
(8, 1, 8, '12:55:00', '13:35:00', '2020-07-07 00:58:22', NULL),
(9, 1, 9, '13:35:00', '14:15:00', '2020-07-07 00:59:07', NULL),
(10, 1, 10, '14:30:00', '15:10:00', '2020-07-07 00:59:28', NULL),
(11, 1, 11, '15:10:00', '15:45:00', '2020-07-07 00:59:47', NULL),
(13, 2, 1, '07:00:00', '07:45:00', '2020-07-07 01:01:04', NULL),
(14, 2, 2, '07:45:00', '08:30:00', '2020-07-07 01:01:42', NULL),
(15, 2, 3, '08:30:00', '09:15:00', '2020-07-07 01:02:38', NULL),
(16, 2, 4, '09:30:00', '10:10:00', '2020-07-07 01:03:03', NULL),
(17, 2, 5, '10:15:00', '11:00:00', '2020-07-07 01:03:23', NULL),
(18, 2, 6, '11:00:00', '11:45:00', '2020-07-07 01:03:50', '2020-08-11 05:07:41'),
(19, 2, 7, '12:15:00', '13:00:00', '2020-07-07 01:04:24', '2020-07-07 01:05:05'),
(20, 2, 8, '13:00:00', '13:45:00', '2020-07-07 01:04:42', '2020-07-07 01:05:27'),
(21, 2, 9, '13:45:00', '14:30:00', '2020-07-07 01:05:44', NULL),
(22, 2, 10, '14:30:00', '15:15:00', '2020-07-07 01:06:06', NULL),
(23, 3, 1, '07:00:00', '07:45:00', '2020-07-07 01:07:04', NULL),
(24, 3, 2, '07:45:00', '08:30:00', '2020-07-07 01:07:25', NULL),
(25, 3, 3, '08:30:00', '09:15:00', '2020-07-07 01:07:48', NULL),
(26, 3, 4, '09:15:00', '10:00:00', '2020-07-07 01:08:11', NULL),
(27, 3, 5, '10:15:00', '11:00:00', '2020-07-07 01:08:34', NULL),
(28, 3, 6, '11:00:00', '11:45:00', '2020-07-07 01:09:05', NULL),
(29, 3, 7, '12:15:00', '13:00:00', '2020-07-07 01:09:42', NULL),
(30, 3, 8, '13:00:00', '13:45:00', '2020-07-07 01:10:05', NULL),
(31, 3, 9, '13:45:00', '14:30:00', '2020-07-07 01:10:22', NULL),
(32, 3, 10, '14:30:00', '15:15:00', '2020-07-07 01:10:48', NULL),
(33, 4, 1, '07:00:00', '07:45:00', '2020-07-07 01:11:32', NULL),
(34, 4, 2, '07:45:00', '08:30:00', '2020-07-07 01:11:46', NULL),
(35, 4, 3, '08:30:00', '09:15:00', '2020-07-07 01:12:12', NULL),
(36, 4, 4, '09:15:00', '10:00:00', '2020-07-07 01:12:47', NULL),
(37, 4, 5, '10:15:00', '11:00:00', '2020-07-07 01:13:23', NULL),
(38, 4, 6, '11:00:00', '11:45:00', '2020-07-07 01:13:53', NULL),
(39, 4, 7, '12:15:00', '13:00:00', '2020-07-07 01:14:13', NULL),
(40, 4, 8, '13:00:00', '13:45:00', '2020-07-07 01:14:52', NULL),
(41, 4, 9, '13:45:00', '14:30:00', '2020-07-07 01:15:17', NULL),
(42, 4, 10, '14:30:00', '15:15:00', '2020-07-07 01:15:33', NULL),
(43, 5, 1, '07:00:00', '07:45:00', '2020-07-07 01:16:08', NULL),
(44, 5, 2, '07:45:00', '08:30:00', '2020-07-07 01:16:33', NULL),
(45, 5, 3, '08:30:00', '09:15:00', '2020-07-07 01:16:58', NULL),
(46, 5, 4, '09:15:00', '10:00:00', '2020-07-07 01:17:16', NULL),
(47, 5, 5, '10:15:00', '10:55:00', '2020-07-07 01:17:56', '2020-07-07 01:18:13'),
(48, 5, 6, '10:55:00', '11:35:00', '2020-07-07 01:18:37', NULL),
(49, 5, 7, '12:45:00', '13:25:00', '2020-07-07 01:19:01', NULL),
(50, 5, 8, '13:25:00', '14:05:00', '2020-07-07 01:19:43', NULL),
(51, 5, 9, '14:05:00', '14:45:00', '2020-07-07 01:19:58', NULL),
(52, 5, 10, '14:45:00', '15:25:00', '2020-07-07 01:20:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jurnal`
--

CREATE TABLE `jurnal` (
  `id` int(11) NOT NULL,
  `absensi_kbm_guru_id` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `jurnal` text NOT NULL,
  `materi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `craeted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kurikulum`
--

INSERT INTO `kurikulum` (`id`, `nama`, `craeted_at`, `updated_at`) VALUES
(0, 'Teknik Komputer dan Jaringan', '2021-06-29 16:29:21', '2021-07-09 14:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `log_bank_soal`
--

CREATE TABLE `log_bank_soal` (
  `id` int(11) NOT NULL,
  `bank_soal_id` int(11) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_rpp`
--

CREATE TABLE `log_rpp` (
  `id` int(11) NOT NULL,
  `log_rpp_id` int(11) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_silabus`
--

CREATE TABLE `log_silabus` (
  `id` int(11) NOT NULL,
  `log_silabus_id` int(11) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `nama_mapel` varchar(50) DEFAULT NULL,
  `kelompok` enum('A','B','C') DEFAULT NULL,
  `sub_kelompok` varchar(2) DEFAULT NULL,
  `produktif` varchar(12) DEFAULT NULL,
  `tingkat` int(11) NOT NULL,
  `kurikulum_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `nama_mapel`, `kelompok`, `sub_kelompok`, `produktif`, `tingkat`, `kurikulum_id`, `created_at`, `updated_at`) VALUES
(1, 'Pendidikan Agama dan Budi Pekerti', 'A', '1', NULL, 10, 1, '2020-08-15 03:23:22', NULL),
(2, 'Pendidikan Pancasila dan Kewarganegaraan', 'A', '2', NULL, 10, 1, '2020-08-15 03:23:22', NULL),
(3, 'Bahasa Indonesia', 'A', '3', NULL, 10, 1, '2020-08-15 03:23:22', NULL),
(4, 'Matematika', 'A', '4', NULL, 10, 1, '2020-08-15 03:23:22', NULL),
(5, 'Sejarah Indonesia', 'A', '5', NULL, 10, 1, '2020-08-15 03:23:22', NULL),
(6, 'Bahasa Inggris ', 'A', '6', NULL, 10, 1, '2020-08-15 03:23:22', NULL),
(7, 'Pendidikan Agama dan Budi Pekerti', 'A', '1', NULL, 11, 1, '2020-08-15 03:23:22', NULL),
(8, 'Pendidikan Pancasila dan Kewarganegaraan', 'A', '2', NULL, 11, 1, '2020-08-15 03:23:22', NULL),
(9, 'Bahasa Indonesia', 'A', '3', NULL, 11, 1, '2020-08-15 03:23:22', NULL),
(10, 'Matematika', 'A', '4', NULL, 11, 1, '2020-08-15 03:23:22', NULL),
(11, 'Bahasa Inggris ', 'A', '5', NULL, 11, 1, '2020-08-15 03:23:22', NULL),
(12, 'Pendidikan Agama dan Budi Pekerti', 'A', '1', NULL, 12, 1, '2020-08-15 03:23:22', NULL),
(13, 'Pendidikan Pancasila dan Kewarganegaraan', 'A', '2', NULL, 12, 1, '2020-08-15 03:23:22', NULL),
(14, 'Bahasa Indonesia', 'A', '3', NULL, 12, 1, '2020-08-15 03:23:22', NULL),
(15, 'Matematika', 'A', '4', NULL, 12, 1, '2020-08-15 03:23:22', NULL),
(16, 'Bahasa Inggris ', 'A', '5', NULL, 12, 1, '2020-08-15 03:23:22', NULL),
(17, 'Seni Budaya', 'B', '7', NULL, 10, 1, '2020-08-15 03:23:22', NULL),
(18, 'Pendidikan Jasmani, Olah Raga & Kesehatan', 'B', '8', NULL, 10, 1, '2020-08-15 03:23:22', NULL),
(19, 'Bahasa Daerah (Jawa)', 'B', '9', '', 10, 1, '2020-08-15 03:23:22', '2020-08-16 06:31:50'),
(20, 'Pendidikan Jasmani, Olah Raga & Kesehatan', 'B', '6', NULL, 11, 1, '2020-08-15 03:23:22', NULL),
(21, 'Bahasa Daerah (Jawa)', 'B', '7', '', 11, 1, '2020-08-15 03:23:22', '2020-08-16 06:32:09'),
(22, 'Bahasa Daerah (Jawa)', 'B', '6', '', 12, 1, '2020-08-15 03:23:22', '2020-08-16 06:32:22'),
(23, 'Simulasi dan Komunikasi Digital', 'C', '10', 'C1', 10, 1, '2020-08-15 03:23:22', NULL),
(24, 'Ekonomi Bisnis', 'C', '11', 'C1', 10, 1, '2020-08-15 03:23:22', NULL),
(25, 'Administrasi Umum', 'C', '12', 'C1', 10, 1, '2020-08-15 03:23:22', NULL),
(26, 'IPA', 'C', '13', 'C1', 10, 1, '2020-08-15 03:23:22', NULL),
(27, 'Teknologi Perkantoran', 'C', '14', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(28, 'Korespondensi', 'C', '15', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(29, 'Kearsipan', 'C', '16', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(30, 'Otomatisasi Tata Kelola Kepegawaian', 'C', '8', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(31, 'Otomatisasi Tata Kelola Keuangan', 'C', '9', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(32, 'Otomatisasi Tata Kelola Sarana dan Prasarana', 'C', '10', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(33, 'Otomatisasi Tata Kelola Humas dan Keprotokolan', 'C', '11', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(34, 'Produk Kreatif dan Kewirausahaan OTKP', 'C', '12', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(35, 'Otomatisasi Tata Kelola Kepegawaian', 'C', '7', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(36, 'Otomatisasi Tata Kelola Keuangan', 'C', '8', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(37, 'Otomatisasi Tata Kelola Sarana dan Prasarana', 'C', '9', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(38, 'Otomatisasi Tata Kelola Humas dan Keprotokolan', 'C', '10', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(39, 'Produk Kreatif dan Kewirausahaan OTKP', 'C', '11', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(40, 'Etika Profesi', 'C', '14', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(41, 'Aplikasi Pengolah Angka / Spreadsheet', 'C', '15', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(42, 'Akuntansi Dasar', 'C', '16', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(43, 'Perbankan Dasar', 'C', '17', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(44, 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Ma', 'C', '8', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(45, 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', 'C', '9', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(46, 'Akuntansi Keuangan', 'C', '10', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(47, 'Komputer Akuntansi', 'C', '11', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(48, 'Administrasi Pajak', 'C', '12', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(49, 'Produk Kreatif dan Kewirausahaan AKK', 'C', '13', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(50, 'Praktikum Akuntansi Perusahaan Jasa, Dagang dan Ma', 'C', '7', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(51, 'Praktikum Akuntansi Lembaga/Instansi Pemerintah', 'C', '8', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(52, 'Akuntansi Keuangan', 'C', '9', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(53, 'Komputer Akuntansi', 'C', '10', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(54, 'Administrasi Pajak', 'C', '11', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(55, 'Produk Kreatif dan Kewirausahaan AKL', 'C', '12', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(56, 'Marketing', 'C', '14', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(57, 'Perencanaan Bisnis', 'C', '15', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(58, 'Komunikasi Bisnis', 'C', '16', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(59, 'Penataan Produk', 'C', '8', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(60, 'Bisnis Online', 'C', '9', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(61, 'Pengelolaan Bisnis Ritel', 'C', '10', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(62, 'Administrasi Transaksi', 'C', '11', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(63, 'Produk Kreatif dan Kewirausahaan BDP', 'C', '12', 'C3', 11, 1, '2020-08-15 03:23:22', '2020-08-16 06:34:16'),
(64, 'Penataan Produk', 'C', '7', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(65, 'Bisnis On Line', 'C', '8', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(66, 'Pengelolaan Bisnis Ritel', 'C', '9', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(67, 'Administrasi Transaksi', 'C', '10', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(68, 'Produk Kreatif dan Kewirausahaan BDP', 'C', '11', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(69, 'Tinjauan Seni', 'C', '11', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(70, 'Dasar-dasar Kreativitas', 'C', '12', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(71, 'Dasar-dasar Seni Rupa', 'C', '13', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(72, 'Gambar', 'C', '14', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(73, 'Sketsa', 'C', '15', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(74, 'Videografi', 'C', '8', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(75, 'Animasi 2 Dimensi', 'C', '9', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(76, 'Animasi 3 Dimensi', 'C', '10', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(77, 'Digital Processing', 'C', '11', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(78, 'Produk Kreatif dan Kewirausahaan ANIMASI', 'C', '12', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(79, 'Animasi 2 Dimensi', 'C', '7', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(80, 'Animasi 3 Dimensi', 'C', '8', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(81, 'Digital Prosesing', 'C', '9', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(82, 'Produk Kreatif dan Kewirausahaan ANIMASI', 'C', '10', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(83, 'Desain Publikasi', 'C', '8', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(84, 'Komputer Grafis', 'C', '9', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(85, 'Fotografi', 'C', '10', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(86, 'Videografi', 'C', '11', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(87, 'Produk Kreatif dan Kewirausahaan DKV', 'C', '12', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(88, 'Desain Publikasi', 'C', '7', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(89, 'Komputer Grafis', 'C', '8', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(90, 'Fotografi', 'C', '9', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(91, 'Videografi', 'C', '10', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(92, 'Produk Kreatif dan Kewirausahaan DKV', 'C', '11', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(93, 'Komunikasi Massa', 'C', '13', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(94, 'Dasar Seni Audio Visual', 'C', '14', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(95, 'Produksi Audio Visual', 'C', '15', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(96, 'Manajemen Produksi, naskah dan Penyutradaraan', 'C', '9', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(97, 'Tata Kamera, Pencahayaan dan Tata Suara', 'C', '10', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(98, 'Tata Artistik', 'C', '11', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(99, 'Editing Audio dan Video', 'C', '12', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(100, 'Produk Kreatif dan Kewirausahaan PSPT', 'C', '13', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(101, 'Manajemen Produksi, naskah dan Penyutradaraan', 'C', '9', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(102, 'Tata Kamera, Pencahayaan dan Tata Suara', 'C', '10', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(103, 'Tata Artistik', 'C', '11', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(104, 'Editing Audio dan Video', 'C', '12', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(105, 'Produk Kreatif dan Kewirausahaan', 'C', '13', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(106, 'Fisika', 'C', '11', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(107, 'Kimia', 'C', '12', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(108, 'Analisis Kimia Dasar', 'C', '13', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(109, 'Teknik Dasar Pekerjaan Laboratorium Kimia', 'C', '14', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(110, 'Dasar-dasar Mikrobiologi', 'C', '15', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(111, 'Azas Teknik Kimia', 'C', '8', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(112, 'Alat Industri Kimia', 'C', '9', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(113, 'Operasi Teknik Kimia', 'C', '10', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(114, 'Proses Industri Kimia', 'C', '11', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(115, 'Produk Kreatif dan Kewirausahaan KI', 'C', '12', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(116, 'Alat Industri Kimia', 'C', '7', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(117, 'Operasi Teknik Kimia', 'C', '8', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(118, 'Proses Industri Kimia', 'C', '9', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(119, 'Produk Kreatif dan Kewirausahaan KI', 'C', '10', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(120, 'Sistem Komputer', 'C', '13', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(121, 'Komputer dan Jaringan Dasar', 'C', '14', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(122, 'Pemrograman Dasar', 'C', '15', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(123, 'Dasar Desain Grafis', 'C', '16', 'C2', 10, 1, '2020-08-15 03:23:22', NULL),
(124, 'Desain Grafis Percetakan', 'C', '8', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(125, 'Teknik Animasi 2D dan 3D', 'C', '9', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(126, 'Produk Kreatif dan Kewirausahaan MM', 'C', '10', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(127, 'Desain Media Interaktif', 'C', '7', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(128, 'Teknik Pengolahan Audio dan Video', 'C', '8', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(129, 'Produk Kreatif dan Kewirausahaan', 'C', '9', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(130, 'Pemodelan Perangkat Lunak', 'C', '8', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(131, 'Basis Data', 'C', '9', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(132, 'Pemrograman Berorientasi Obyek', 'C', '10', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(133, 'Pemrograman Web dan Perangkat Bergerak', 'C', '11', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(134, 'Produk Kreatif dan Kewirausahaan RPL', 'C', '12', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(135, 'Basis Data', 'C', '7', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(136, 'Pemrograman Beorientasi Obyek', 'C', '8', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(137, 'Pemrograman Web dan Perangkat Bergerak', 'C', '9', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(138, 'Produk Kreatif dan Kewirausahaan RPL', 'C', '10', 'C3', 12, 1, '2020-08-15 03:23:22', '2020-08-16 06:32:32'),
(139, 'Teknologi Jaringan Berbasis Luas (WAN)', 'C', '8', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(140, 'Administrasi Infranstruktur Jaringan', 'C', '9', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(141, 'Administrasi Sistem Jaringan', 'C', '10', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(142, 'Teknologi Layanan Jaringan', 'C', '11', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(143, 'Produk Kreatif dan Kewirausahaan TKJ', 'C', '12', 'C3', 11, 1, '2020-08-15 03:23:22', NULL),
(144, 'Administrasi Infranstruktur Jaringan', 'C', '7', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(145, 'Administrasi Sistem Jaringan', 'C', '8', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(146, 'Teknologi Layanan Jaringan', 'C', '9', 'C3', 12, 1, '2020-08-15 03:23:22', NULL),
(147, 'Produk Kreatif dan Kewirausahaan', 'C', '10', 'C3', 12, 1, '2020-08-15 03:23:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pindah_ruang`
--

CREATE TABLE `pindah_ruang` (
  `id` int(11) NOT NULL,
  `jadwal_id` int(11) NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `absensi_kbm_guru_id` int(11) NOT NULL,
  `alasan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rpp`
--

CREATE TABLE `rpp` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `nip_guru` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `silabus`
--

CREATE TABLE `silabus` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `nip_guru` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `struktur_kurikulum`
--

CREATE TABLE `struktur_kurikulum` (
  `id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_absen_harian_siswa`
-- (See below for the actual view)
--
CREATE TABLE `v_absen_harian_siswa` (
`id` int(11)
,`nisn` varchar(30)
,`waktu_datang` time
,`waktu_pulang` time
,`status_kehadiran` varchar(17)
,`status_pulang` varchar(20)
,`foto` text
,`created_at` varchar(24)
,`updated_at` timestamp
,`nama` varchar(100)
,`jenis_kelamin` enum('L','P')
,`nis` varchar(30)
,`kelas_id` int(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_absen_kbm_guru`
-- (See below for the actual view)
--
CREATE TABLE `v_absen_kbm_guru` (
`id` int(11)
,`nip` varchar(30)
,`jadwal_id` int(11)
,`ruang_awal` int(11)
,`ruang_pindah` int(11)
,`jam_masuk` time
,`jam_keluar` time
,`status` enum('masuk','tugas','kosong')
,`kegiatan` enum('menerangkan','tugas','diskusi','ulangan')
,`file_tugas` text
,`foto_kbm` text
,`created_at_format` varchar(24)
,`created_at` timestamp
,`updated_at` timestamp
,`nama_guru` varchar(100)
,`nama` varchar(50)
,`guru_mapel_id` int(11)
,`tahun_ajaran` year(4)
,`semester` enum('1','2')
,`jurnal` text
,`nama_mapel` varchar(50)
,`nama_ruang_awal` varchar(100)
,`nama_ruang_pindah` varchar(100)
,`alasan_pindah` text
,`nama_kelas` varchar(50)
,`nama_jurusan` varchar(50)
,`tingkat` int(5)
,`kelas_id` int(15)
,`jam_ke` int(11)
,`id_kelas` int(15)
);

-- --------------------------------------------------------

--
-- Structure for view `v_absen_harian_siswa`
--
DROP TABLE IF EXISTS `v_absen_harian_siswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `v_absen_harian_siswa`  AS SELECT `absensi_siswa`.`id` AS `id`, `absensi_siswa`.`nisn` AS `nisn`, `absensi_siswa`.`waktu_datang` AS `waktu_datang`, `absensi_siswa`.`waktu_pulang` AS `waktu_pulang`, if(`absensi_siswa`.`status_kehadiran` = '0','Tidak Masuk',if(`absensi_siswa`.`status_kehadiran` = '1','Masuk',if(`absensi_siswa`.`status_kehadiran` = '2','Terlambat','Tidak Terdefinisi'))) AS `status_kehadiran`, if(`absensi_siswa`.`status_pulang` = '0','Tidak Absen',if(`absensi_siswa`.`status_pulang` = '1','Pulang',if(`absensi_siswa`.`status_pulang` = '2','Pulang Sebelum Waktu','Tidak Terdefinisi'))) AS `status_pulang`, `absensi_siswa`.`foto` AS `foto`, date_format(`absensi_siswa`.`created_at`,'%d-%m-%Y %H:%i:%s') AS `created_at`, `absensi_siswa`.`updated_at` AS `updated_at`, `smkt8825_smea3`.`siswa`.`nama` AS `nama`, `smkt8825_smea3`.`siswa`.`jenis_kelamin` AS `jenis_kelamin`, `smkt8825_smea3`.`siswa`.`nisn` AS `nis`, `smkt8825_smea3`.`siswa`.`kelas_id` AS `kelas_id` FROM (`absensi_siswa` join `smkt8825_smea3`.`siswa` on(`smkt8825_smea3`.`siswa`.`nisn` = convert(`absensi_siswa`.`nisn` using utf8))) WHERE `smkt8825_smea3`.`siswa`.`status` = '1' ;

-- --------------------------------------------------------

--
-- Structure for view `v_absen_kbm_guru`
--
DROP TABLE IF EXISTS `v_absen_kbm_guru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825`@`localhost` SQL SECURITY DEFINER VIEW `v_absen_kbm_guru`  AS SELECT `absensi_kbm_guru`.`id` AS `id`, `absensi_kbm_guru`.`nip` AS `nip`, `absensi_kbm_guru`.`jadwal_id` AS `jadwal_id`, `jadwal`.`ruang_id` AS `ruang_awal`, `pindah_ruang`.`ruang_id` AS `ruang_pindah`, `absensi_kbm_guru`.`jam_masuk` AS `jam_masuk`, `absensi_kbm_guru`.`jam_keluar` AS `jam_keluar`, `absensi_kbm_guru`.`status` AS `status`, `absensi_kbm_guru`.`kegiatan` AS `kegiatan`, `absensi_kbm_guru`.`file_tugas` AS `file_tugas`, `absensi_kbm_guru`.`foto_kbm` AS `foto_kbm`, date_format(`absensi_kbm_guru`.`created_at`,'%d-%m-%Y %H:%i:%s') AS `created_at_format`, `absensi_kbm_guru`.`created_at` AS `created_at`, `absensi_kbm_guru`.`updated_at` AS `updated_at`, `smkt8825_smea3`.`guru`.`nama` AS `nama_guru`, `smkt8825_smea_sdm`.`guru`.`nama` AS `nama`, `jadwal`.`guru_mapel_id` AS `guru_mapel_id`, `jadwal`.`tahun_ajaran` AS `tahun_ajaran`, `jadwal`.`semester` AS `semester`, `jurnal`.`jurnal` AS `jurnal`, `mapel`.`nama_mapel` AS `nama_mapel`, (select `smkt8825_smea_sarpras`.`unit`.`nama` from `smkt8825_smea_sarpras`.`unit` where `smkt8825_smea_sarpras`.`unit`.`id` = `jadwal`.`ruang_id`) AS `nama_ruang_awal`, (select `smkt8825_smea_sarpras`.`unit`.`nama` from `smkt8825_smea_sarpras`.`unit` where `smkt8825_smea_sarpras`.`unit`.`id` = `pindah_ruang`.`ruang_id`) AS `nama_ruang_pindah`, `pindah_ruang`.`alasan` AS `alasan_pindah`, `smkt8825_smea3`.`kelas`.`nama` AS `nama_kelas`, `smkt8825_smea3`.`jurusan`.`nama` AS `nama_jurusan`, `smkt8825_smea3`.`kelas`.`tingkat` AS `tingkat`, `smkt8825_smea3`.`kelas`.`id` AS `kelas_id`, `jam_pelajaran`.`jam_ke` AS `jam_ke`, `smkt8825_smea3`.`kelas`.`id` AS `id_kelas` FROM ((((((((((((`absensi_kbm_guru` left join `jadwal` on(`jadwal`.`id` = `absensi_kbm_guru`.`jadwal_id`)) left join `pindah_ruang` on(`absensi_kbm_guru`.`id` = `pindah_ruang`.`absensi_kbm_guru_id`)) left join `smkt8825_smea3`.`guru` on(`smkt8825_smea3`.`guru`.`nip` = convert(`absensi_kbm_guru`.`nip` using utf8))) left join `smkt8825_smea_sdm`.`guru` on(`smkt8825_smea_sdm`.`guru`.`id` = `absensi_kbm_guru`.`nip`)) left join `guru_mapel` on(`guru_mapel`.`id` = `jadwal`.`guru_mapel_id`)) left join `mapel` on(`mapel`.`id` = `guru_mapel`.`mapel_id`)) left join `smkt8825_smea_sarpras`.`unit` on(`smkt8825_smea_sarpras`.`unit`.`id` = `absensi_kbm_guru`.`ruang_id`)) left join `smkt8825_smea3`.`kelas` on(`smkt8825_smea3`.`kelas`.`id` = `jadwal`.`kelas_id`)) join `jam_jadwal` on(`jam_jadwal`.`jadwal_id` = `jadwal`.`id`)) join `jam_pelajaran` on(`jam_pelajaran`.`id` = `jam_jadwal`.`jam_pelajaran_id`)) left join `smkt8825_smea3`.`jurusan` on(`smkt8825_smea3`.`jurusan`.`id` = `smkt8825_smea3`.`kelas`.`jurusan_id`)) left join `jurnal` on(`jurnal`.`absensi_kbm_guru_id` = `absensi_kbm_guru`.`id`)) GROUP BY `absensi_kbm_guru`.`id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi_kbm_guru`
--
ALTER TABLE `absensi_kbm_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absensi_kbm_siswa`
--
ALTER TABLE `absensi_kbm_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absensi_siswa`
--
ALTER TABLE `absensi_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `akun_hari`
--
ALTER TABLE `akun_hari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_soal`
--
ALTER TABLE `bank_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru_mapel`
--
ALTER TABLE `guru_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_id` (`mapel_id`);

--
-- Indexes for table `hari_pelajaran`
--
ALTER TABLE `hari_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_mapel_id` (`guru_mapel_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `ruang_id` (`ruang_id`);

--
-- Indexes for table `jam_jadwal`
--
ALTER TABLE `jam_jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_id` (`jadwal_id`),
  ADD KEY `jam_pelajaran_id` (`jam_pelajaran_id`);

--
-- Indexes for table `jam_pelajaran`
--
ALTER TABLE `jam_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurnal_ibfk_1` (`absensi_kbm_guru_id`);

--
-- Indexes for table `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
