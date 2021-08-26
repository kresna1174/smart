-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2021 at 06:21 PM
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
-- Database: `smkt8825_smea_lsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `asesi`
--

CREATE TABLE `asesi` (
  `id` int(15) NOT NULL,
  `nisn` varchar(30) NOT NULL,
  `skema_id` int(15) NOT NULL,
  `nomor_hp` varchar(20) NOT NULL,
  `nomor_rumah` varchar(20) DEFAULT NULL,
  `nomor_kantor` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `kartu_identitas` varchar(50) NOT NULL,
  `rapot` varchar(50) NOT NULL,
  `sertifikat_pkl` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` enum('proses','diterima','ditolak') NOT NULL DEFAULT 'proses',
  `jadwal_id` int(15) DEFAULT NULL,
  `tahun` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asesor`
--

CREATE TABLE `asesor` (
  `id` int(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `nomor_sertifikat` varchar(50) DEFAULT NULL,
  `nomor_registrasi` varchar(50) DEFAULT NULL,
  `kompetensi_id` int(15) NOT NULL,
  `sertifikat` varchar(50) DEFAULT NULL,
  `registrasi` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `akun_id` int(15) DEFAULT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nomor_hp` varchar(14) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `asesor`
--

INSERT INTO `asesor` (`id`, `nama`, `instansi`, `nomor_sertifikat`, `nomor_registrasi`, `kompetensi_id`, `sertifikat`, `registrasi`, `foto`, `akun_id`, `nik`, `alamat`, `nomor_hp`, `email`, `created_at`, `updated_at`) VALUES
(47, 'ATIH WILUPI, S.Pd., M.Pd.', 'SMKN 1 Boyolangu', '', 'MET.000.000847 2015', 15, NULL, NULL, 'af60b4072cf0a4f2603cfd97b0f726b4.jpg', 1582, '3504015509690006', 'Jl. MT. Haryono no. 195 RT/RW 03/03 Kepatihan ', '085334035852', 'atihwilupi@gmail.com', '2020-08-22 15:34:13', '2020-08-22 16:00:23'),
(48, 'SITI AFIDAH, S.Kom', 'SMKN 1 Boyolangu', '', 'MET.000.000860.2015', 14, NULL, NULL, 'bb3644a50b04a6b1100c2091f1d43a17.jpg', 1603, '3573015803780001', 'Desa Mijen Rt.03 rw.01 Kec. Kaliwungu Kab. Kudus Jateng', '085233494977', 'aviekds99@gmail.com', '2020-08-22 15:50:06', '2020-08-22 15:59:48'),
(49, 'TITIK SAMSISTINI, S.Pd', 'SMKN 1 Boyolangu', '', 'MET.000.007881 2015', 21, NULL, NULL, 'b360af5f8377ccdbb6de1fdcb12dd44a.jpg', 1580, '04016508680001', 'Jl. Dr. Sutomo 1/ 24 Tulungagung', '082257223772', 'titiksamsistini@gmail.com', '2020-08-22 15:51:43', '2020-08-22 15:59:23'),
(50, 'TITIN SUKMASARI,S.Pd.', 'SMKN 1 Boyolangu', '', 'MET. 000.000859 2015', 15, NULL, NULL, 'ba249e92414aeba1da13c9c7424c6ce7.jpg', 1590, '3504084202790003', 'Desa Sembon RT 02, RW 01 No. 18, Kec. Karangrejo, Tulungagung', '085334040121', 'titinsukma2014@gmail.com', '2020-08-22 15:54:42', '2020-08-22 15:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(15) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `key` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`key`, `value`) VALUES
('tahun', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `foto_tuk`
--

CREATE TABLE `foto_tuk` (
  `id` int(15) NOT NULL,
  `tuk_id` int(15) NOT NULL,
  `file` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(15) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(15) NOT NULL,
  `tuk_id` int(15) NOT NULL,
  `asesor_id` int(15) NOT NULL,
  `skema_id` int(15) NOT NULL,
  `tanggal_mulai` datetime NOT NULL,
  `tanggal_akhir` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kompetensi`
--

CREATE TABLE `kompetensi` (
  `id` int(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kompetensi`
--

INSERT INTO `kompetensi` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(12, 'Rekayasa Perangkat Lunak', '2020-08-22 10:07:58', '2020-08-22 10:07:58'),
(13, 'Teknik Komputer dan Jaringan', '2020-08-22 10:08:23', '2020-08-22 10:08:23'),
(14, 'Multimedia', '2020-08-22 10:18:37', '2020-08-22 10:18:37'),
(15, 'Akuntansi dan Keuangan Lembaga', '2020-08-22 10:18:52', '2020-08-22 10:18:52'),
(16, 'Kimia Industri', '2020-08-22 10:19:13', '2020-08-22 10:19:13'),
(17, 'Bisnis Daring dan Pemasaran', '2020-08-22 10:19:28', '2020-08-22 10:19:28'),
(18, 'Animasi', '2020-08-22 10:19:37', '2020-08-22 10:19:37'),
(19, 'Desain Komunikasi Visual', '2020-08-22 10:19:50', '2020-08-22 10:19:50'),
(20, 'Usaha Perjalanan Wisata', '2020-08-22 10:20:03', '2020-08-22 10:20:03'),
(21, 'Otomatisasi dan Tata Kelola Perkantoran', '2020-08-22 10:21:26', '2020-08-22 10:21:26'),
(22, 'Produksi dan Siaran Program Televisi', '2020-08-22 10:22:27', '2020-08-22 10:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `kompetensi_teknis_asesor`
--

CREATE TABLE `kompetensi_teknis_asesor` (
  `id` int(15) NOT NULL,
  `asesor_id` int(15) NOT NULL,
  `original` varchar(100) NOT NULL,
  `file` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `npsn` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `nomor_telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sertifikat`
--

CREATE TABLE `sertifikat` (
  `id` int(15) NOT NULL,
  `nomor_sertifikat` varchar(50) NOT NULL,
  `nomor_registrasi` varchar(50) NOT NULL,
  `nomor_blangko` varchar(50) NOT NULL,
  `asesi_id` int(15) NOT NULL,
  `tahun` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siswa_luar`
--

CREATE TABLE `siswa_luar` (
  `nisn` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `kewarganegaraan` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `npsn` varchar(30) NOT NULL,
  `akun_id` int(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `skema`
--

CREATE TABLE `skema` (
  `id` int(15) NOT NULL,
  `kompetensi_id` int(15) NOT NULL,
  `jenis_kemasan` varchar(30) NOT NULL,
  `nomor` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skema`
--

INSERT INTO `skema` (`id`, `kompetensi_id`, `jenis_kemasan`, `nomor`, `judul`, `status`, `created_at`, `updated_at`) VALUES
(11, 13, 'KKNI', 'SKM/BNSP/00010/1/2020/38', 'KKNI LEVEL II PADA KOMPETENSI KEAHLIAN TEKNIK KOMPUTER DAN JARINGAN', 1, '2020-08-22 15:21:45', '2020-08-22 15:22:14'),
(12, 18, 'KKNI', 'SKM/BNSP/00010/1/2020/37', 'KKNI LEVEL II PADA KOMPETENSI KEAHLIAN ANIMASI', 1, '2020-08-22 15:22:54', '2020-08-22 15:23:25'),
(13, 19, 'KKNI', 'SKM/BNSP/00010/1/2020/40', 'KKNI LEVEL II PADA KOMPETENSI KEAHLIAN DESAIN KOMUNIKASI VISUAL', 1, '2020-08-22 15:24:42', '2020-08-22 15:24:51'),
(14, 12, 'KKNI', 'SKM/BNSP/00010/1/2020/33', 'SKEMA SERTIFIKASI KKNI LEVEL II PADA KOMPETENSI KEAHLIAN REKAYASA PERANGKAT LUNAK', 1, '2020-08-22 15:26:05', '2020-08-22 15:26:11'),
(15, 21, 'KKNI', 'SKM/BNSP/00015/1/2017/73', 'SKEMA SERTIFIKASI KKNI LEVEL II PADA KOMPETENS IKEAHLIAN OTOMASI DAN TATAKELOLA PERKANTORAN', 1, '2020-08-22 15:27:56', '2020-08-22 15:28:05'),
(16, 20, 'KKNI', 'SKM/BNSP/00018/1/2017/129', 'KKNI LEVEL II PADA KOMPETENSI KEAHLIAN USAHA PERJALANAN WISATA', 1, '2020-08-22 15:56:19', '2020-08-22 16:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `skkni`
--

CREATE TABLE `skkni` (
  `id` int(15) NOT NULL,
  `skema_id` int(15) NOT NULL,
  `original` varchar(100) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tuk`
--

CREATE TABLE `tuk` (
  `id` int(15) NOT NULL,
  `nomor` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `penanggungjawab` varchar(100) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `kompetensi_id` int(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tuk`
--

INSERT INTO `tuk` (`id`, `nomor`, `nama`, `alamat`, `penanggungjawab`, `jenis`, `kompetensi_id`, `created_at`, `updated_at`) VALUES
(2, 'TUK.01/TKJ/LSPBOY/2018', 'Lab. Teknik Komputer dan Jaringan 1', 'Jl. Ki Mangunsarkoro VI/3', 'Ka.Lab.TKJ', 'TUK Sewaktu', 13, '2020-08-22 15:58:33', '2020-08-22 15:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `unit_skema`
--

CREATE TABLE `unit_skema` (
  `id` int(15) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `kompetensi` enum('INTI','PILIHAN') DEFAULT NULL,
  `jenis_standar` varchar(50) NOT NULL,
  `skema_id` int(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_asesi`
-- (See below for the actual view)
--
CREATE TABLE `view_asesi` (
`id` int(15)
,`nisn` varchar(30)
,`skema_id` int(15)
,`nomor_hp` varchar(20)
,`nomor_rumah` varchar(20)
,`nomor_kantor` varchar(20)
,`email` varchar(100)
,`kartu_identitas` varchar(50)
,`rapot` varchar(50)
,`sertifikat_pkl` varchar(50)
,`foto` varchar(50)
,`status` varchar(8)
,`jadwal_id` int(15)
,`tahun` year(4)
,`created_at` timestamp
,`updated_at` timestamp
,`nama` varchar(100)
,`nik` varchar(30)
,`tempat_lahir` varchar(50)
,`tanggal_lahir` date
,`jenis_kelamin` varchar(1)
,`kewarganegaraan` varchar(20)
,`alamat` mediumtext
,`kode_pos` varchar(10)
,`akun_id` int(30)
,`npsn` varchar(30)
,`sekolah` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_asesor`
-- (See below for the actual view)
--
CREATE TABLE `view_asesor` (
`id` int(15)
,`nama` varchar(100)
,`nik` varchar(16)
,`alamat` text
,`email` varchar(50)
,`nomor_hp` varchar(14)
,`instansi` varchar(100)
,`nomor_sertifikat` varchar(50)
,`nomor_registrasi` varchar(50)
,`foto` varchar(50)
,`kompetensi_id` int(15)
,`kompetensi` varchar(100)
,`sertifikat` varchar(50)
,`registrasi` varchar(50)
,`akun_id` int(15)
,`username` varchar(30)
,`last_login` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_guru`
-- (See below for the actual view)
--
CREATE TABLE `view_guru` (
`nama` varchar(100)
,`nik` varchar(17)
,`alamat` mediumtext
,`email` varchar(50)
,`nomor_hp` varchar(14)
,`akun_id` int(15)
,`username` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_jadwal`
-- (See below for the actual view)
--
CREATE TABLE `view_jadwal` (
`id` int(15)
,`tuk_id` int(15)
,`asesor_id` int(15)
,`skema_id` int(15)
,`tanggal_mulai` datetime
,`tanggal_akhir` datetime
,`nomor` varchar(50)
,`tuk` varchar(100)
,`alamat` text
,`penanggungjawab` varchar(100)
,`jenis` varchar(30)
,`asesor` varchar(100)
,`instansi` varchar(100)
,`nomor_sertifikat` varchar(50)
,`nomor_registrasi` varchar(50)
,`kompetensi_id` int(15)
,`akun_id` int(15)
,`nama` varchar(100)
,`skema` varchar(100)
,`nomor_skema` varchar(50)
,`jenis_kemasan` varchar(30)
,`status` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_kompetensi`
-- (See below for the actual view)
--
CREATE TABLE `view_kompetensi` (
`id` int(15)
,`nama` varchar(100)
,`skema` varchar(100)
,`nomor` varchar(50)
,`skema_id` int(15)
,`kompetensi_id` int(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_sertifikat`
-- (See below for the actual view)
--
CREATE TABLE `view_sertifikat` (
`id` int(15)
,`nomor_sertifikat` varchar(50)
,`nomor_registrasi` varchar(50)
,`nomor_blangko` varchar(50)
,`asesi_id` int(15)
,`tahun` year(4)
,`nama` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_skema`
-- (See below for the actual view)
--
CREATE TABLE `view_skema` (
`id` int(15)
,`kompetensi_id` int(15)
,`kompetensi` varchar(100)
,`jenis_kemasan` varchar(30)
,`nomor` varchar(50)
,`judul` varchar(100)
,`status` tinyint(1)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_tuk`
-- (See below for the actual view)
--
CREATE TABLE `view_tuk` (
`id` int(15)
,`nomor` varchar(50)
,`nama` varchar(100)
,`alamat` text
,`penanggungjawab` varchar(100)
,`jenis` varchar(30)
,`kompetensi_id` int(15)
,`kompetensi` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `view_asesi`
--
DROP TABLE IF EXISTS `view_asesi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825_apps_smea`@`localhost` SQL SECURITY DEFINER VIEW `view_asesi`  AS  (select `asesi`.`id` AS `id`,`asesi`.`nisn` AS `nisn`,`asesi`.`skema_id` AS `skema_id`,`asesi`.`nomor_hp` AS `nomor_hp`,`asesi`.`nomor_rumah` AS `nomor_rumah`,`asesi`.`nomor_kantor` AS `nomor_kantor`,`asesi`.`email` AS `email`,`asesi`.`kartu_identitas` AS `kartu_identitas`,`asesi`.`rapot` AS `rapot`,`asesi`.`sertifikat_pkl` AS `sertifikat_pkl`,`asesi`.`foto` AS `foto`,`asesi`.`status` AS `status`,`asesi`.`jadwal_id` AS `jadwal_id`,`asesi`.`tahun` AS `tahun`,`asesi`.`created_at` AS `created_at`,`asesi`.`updated_at` AS `updated_at`,`siswa_luar`.`nama` AS `nama`,`siswa_luar`.`nik` AS `nik`,`siswa_luar`.`tempat_lahir` AS `tempat_lahir`,`siswa_luar`.`tanggal_lahir` AS `tanggal_lahir`,`siswa_luar`.`jenis_kelamin` AS `jenis_kelamin`,`siswa_luar`.`kewarganegaraan` AS `kewarganegaraan`,`siswa_luar`.`alamat` AS `alamat`,`siswa_luar`.`kode_pos` AS `kode_pos`,`siswa_luar`.`akun_id` AS `akun_id`,`sekolah`.`npsn` AS `npsn`,`sekolah`.`nama` AS `sekolah` from ((`asesi` join `siswa_luar` on(`siswa_luar`.`nisn` = `asesi`.`nisn`)) join `sekolah` on(`sekolah`.`npsn` = `siswa_luar`.`npsn`))) union (select `asesi`.`id` AS `id`,`asesi`.`nisn` AS `nisn`,`asesi`.`skema_id` AS `skema_id`,`asesi`.`nomor_hp` AS `nomor_hp`,`asesi`.`nomor_rumah` AS `nomor_rumah`,`asesi`.`nomor_kantor` AS `nomor_kantor`,`asesi`.`email` AS `email`,`asesi`.`kartu_identitas` AS `kartu_identitas`,`asesi`.`rapot` AS `rapot`,`asesi`.`sertifikat_pkl` AS `sertifikat_pkl`,`asesi`.`foto` AS `foto`,`asesi`.`status` AS `status`,`asesi`.`jadwal_id` AS `jadwal_id`,`asesi`.`tahun` AS `tahun`,`asesi`.`created_at` AS `created_at`,`asesi`.`updated_at` AS `updated_at`,`smkt8825_smea3`.`siswa`.`nama` AS `nama`,`smkt8825_smea3`.`siswa`.`nik` AS `nik`,`smkt8825_smea3`.`siswa`.`tempat_lahir` AS `tempat_lahir`,`smkt8825_smea3`.`siswa`.`tanggal_lahir` AS `tanggal_lahir`,`smkt8825_smea3`.`siswa`.`jenis_kelamin` AS `jenis_kelamin`,`smkt8825_smea3`.`siswa`.`kewarganegaraan` AS `kewarganegaraan`,`smkt8825_smea3`.`siswa`.`alamat` AS `alamat`,`smkt8825_smea3`.`siswa`.`kode_pos` AS `kode_pos`,`smkt8825_smea3`.`siswa`.`akun_id` AS `akun_id`,'20537286' AS `npsn`,'SMKN 1 Boyolangu' AS `sekolah` from (`asesi` join `smkt8825_smea3`.`siswa` on(`smkt8825_smea3`.`siswa`.`nisn` = `asesi`.`nisn`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_asesor`
--
DROP TABLE IF EXISTS `view_asesor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825_apps_smea`@`localhost` SQL SECURITY DEFINER VIEW `view_asesor`  AS  (select `asesor`.`id` AS `id`,`asesor`.`nama` AS `nama`,`asesor`.`nik` AS `nik`,`asesor`.`alamat` AS `alamat`,`asesor`.`email` AS `email`,`asesor`.`nomor_hp` AS `nomor_hp`,`asesor`.`instansi` AS `instansi`,`asesor`.`nomor_sertifikat` AS `nomor_sertifikat`,`asesor`.`nomor_registrasi` AS `nomor_registrasi`,`asesor`.`foto` AS `foto`,`asesor`.`kompetensi_id` AS `kompetensi_id`,`kompetensi`.`nama` AS `kompetensi`,`asesor`.`sertifikat` AS `sertifikat`,`asesor`.`registrasi` AS `registrasi`,`asesor`.`akun_id` AS `akun_id`,`smkt8825_smea3`.`akun`.`username` AS `username`,`smkt8825_smea3`.`akun`.`last_login` AS `last_login` from ((`asesor` join `kompetensi` on(`asesor`.`kompetensi_id` = `kompetensi`.`id`)) left join `smkt8825_smea3`.`akun` on(`asesor`.`akun_id` = `smkt8825_smea3`.`akun`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_guru`
--
DROP TABLE IF EXISTS `view_guru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825_apps_smea`@`localhost` SQL SECURITY DEFINER VIEW `view_guru`  AS  (select `smkt8825_smea3`.`guru`.`nama` AS `nama`,`smkt8825_smea3`.`guru`.`nik` AS `nik`,`smkt8825_smea3`.`guru`.`alamat` AS `alamat`,`smkt8825_smea3`.`guru`.`email` AS `email`,`smkt8825_smea3`.`guru`.`nomor_telp` AS `nomor_hp`,`smkt8825_smea3`.`guru`.`akun_id` AS `akun_id`,`smkt8825_smea3`.`akun`.`username` AS `username` from (`smkt8825_smea3`.`guru` join `smkt8825_smea3`.`akun` on(`smkt8825_smea3`.`guru`.`akun_id` = `smkt8825_smea3`.`akun`.`id`)) where `smkt8825_smea3`.`guru`.`status_karyawan` = 'guru') union (select `smkt8825_smea_sdm`.`guru`.`nama` AS `nama`,`smkt8825_smea_sdm`.`guru`.`nik` AS `nik`,`smkt8825_smea_sdm`.`guru`.`alamat` AS `alamat`,`smkt8825_smea_sdm`.`guru`.`email` AS `email`,`smkt8825_smea_sdm`.`guru`.`nomor_hp` AS `nomor_hp`,`smkt8825_smea_sdm`.`guru`.`akun_id` AS `akun_id`,`smkt8825_smea3`.`akun`.`username` AS `username` from (`smkt8825_smea_sdm`.`guru` join `smkt8825_smea3`.`akun` on(`smkt8825_smea_sdm`.`guru`.`akun_id` = `smkt8825_smea3`.`akun`.`id`)) where `smkt8825_smea_sdm`.`guru`.`status_pegawai` = 'gtt') ;

-- --------------------------------------------------------

--
-- Structure for view `view_jadwal`
--
DROP TABLE IF EXISTS `view_jadwal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825_apps_smea`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal`  AS  (select `jadwal`.`id` AS `id`,`jadwal`.`tuk_id` AS `tuk_id`,`jadwal`.`asesor_id` AS `asesor_id`,`jadwal`.`skema_id` AS `skema_id`,`jadwal`.`tanggal_mulai` AS `tanggal_mulai`,`jadwal`.`tanggal_akhir` AS `tanggal_akhir`,`tuk`.`nomor` AS `nomor`,`tuk`.`nama` AS `tuk`,`tuk`.`alamat` AS `alamat`,`tuk`.`penanggungjawab` AS `penanggungjawab`,`tuk`.`jenis` AS `jenis`,`asesor`.`nama` AS `asesor`,`asesor`.`instansi` AS `instansi`,`asesor`.`nomor_sertifikat` AS `nomor_sertifikat`,`asesor`.`nomor_registrasi` AS `nomor_registrasi`,`asesor`.`kompetensi_id` AS `kompetensi_id`,`asesor`.`akun_id` AS `akun_id`,`kompetensi`.`nama` AS `nama`,`skema`.`judul` AS `skema`,`skema`.`nomor` AS `nomor_skema`,`skema`.`jenis_kemasan` AS `jenis_kemasan`,if(cast(`jadwal`.`tanggal_mulai` as date) >= curdate(),'aktif','tidak aktif') AS `status` from ((((`jadwal` join `tuk` on(`jadwal`.`tuk_id` = `tuk`.`id`)) join `asesor` on(`jadwal`.`asesor_id` = `asesor`.`id`)) join `kompetensi` on(`asesor`.`kompetensi_id` = `kompetensi`.`id`)) join `skema` on(`skema`.`kompetensi_id` = `kompetensi`.`id` and `jadwal`.`skema_id` = `skema`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_kompetensi`
--
DROP TABLE IF EXISTS `view_kompetensi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825_apps_smea`@`localhost` SQL SECURITY DEFINER VIEW `view_kompetensi`  AS  (select `kompetensi`.`id` AS `id`,`kompetensi`.`nama` AS `nama`,`skema`.`judul` AS `skema`,`skema`.`nomor` AS `nomor`,`skema`.`id` AS `skema_id`,`skema`.`kompetensi_id` AS `kompetensi_id` from (`kompetensi` left join `skema` on(`skema`.`kompetensi_id` = `kompetensi`.`id`)) where `skema`.`status` is null or `skema`.`status` = 1 group by `skema`.`kompetensi_id`,if(`skema`.`status` is null,`kompetensi`.`id`,0)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_sertifikat`
--
DROP TABLE IF EXISTS `view_sertifikat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825_apps_smea`@`localhost` SQL SECURITY DEFINER VIEW `view_sertifikat`  AS  (select `sertifikat`.`id` AS `id`,`sertifikat`.`nomor_sertifikat` AS `nomor_sertifikat`,`sertifikat`.`nomor_registrasi` AS `nomor_registrasi`,`sertifikat`.`nomor_blangko` AS `nomor_blangko`,`sertifikat`.`asesi_id` AS `asesi_id`,`sertifikat`.`tahun` AS `tahun`,`view_asesi`.`nama` AS `nama` from (`sertifikat` join `view_asesi` on(`view_asesi`.`id` = `sertifikat`.`asesi_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_skema`
--
DROP TABLE IF EXISTS `view_skema`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825_apps_smea`@`localhost` SQL SECURITY DEFINER VIEW `view_skema`  AS  (select `skema`.`id` AS `id`,`skema`.`kompetensi_id` AS `kompetensi_id`,`kompetensi`.`nama` AS `kompetensi`,`skema`.`jenis_kemasan` AS `jenis_kemasan`,`skema`.`nomor` AS `nomor`,`skema`.`judul` AS `judul`,`skema`.`status` AS `status`,`skema`.`created_at` AS `created_at`,`skema`.`updated_at` AS `updated_at` from (`skema` join `kompetensi` on(`skema`.`kompetensi_id` = `kompetensi`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_tuk`
--
DROP TABLE IF EXISTS `view_tuk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`smkt8825_apps_smea`@`localhost` SQL SECURITY DEFINER VIEW `view_tuk`  AS  (select `tuk`.`id` AS `id`,`tuk`.`nomor` AS `nomor`,`tuk`.`nama` AS `nama`,`tuk`.`alamat` AS `alamat`,`tuk`.`penanggungjawab` AS `penanggungjawab`,`tuk`.`jenis` AS `jenis`,`tuk`.`kompetensi_id` AS `kompetensi_id`,`kompetensi`.`nama` AS `kompetensi` from (`tuk` join `kompetensi` on(`tuk`.`kompetensi_id` = `kompetensi`.`id`))) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
