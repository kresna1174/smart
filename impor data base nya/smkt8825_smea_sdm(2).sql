-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2021 at 06:24 PM
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
-- Database: `smkt8825_smea_sdm`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_anak`
--

CREATE TABLE `data_anak` (
  `id` int(11) NOT NULL,
  `guru_id` varchar(19) NOT NULL,
  `akta` text DEFAULT NULL,
  `ktp` text DEFAULT NULL,
  `nik` varchar(17) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `askes` text DEFAULT NULL,
  `nama_ayah_ibu` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `status_anak` varchar(25) DEFAULT NULL,
  `tunjangan` enum('Dapat','Tidak Dapat') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_pendukung`
--

CREATE TABLE `data_pendukung` (
  `id` int(11) NOT NULL,
  `guru_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `nama` text NOT NULL,
  `file` text NOT NULL,
  `undur_diri` enum('0','1','2') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_sk`
--

CREATE TABLE `data_sk` (
  `id` int(11) NOT NULL,
  `file` text DEFAULT NULL,
  `guru_id` varchar(19) DEFAULT NULL,
  `nomor_sk` varchar(100) DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `tmt_mulai` date DEFAULT NULL,
  `tmt_selesai` date DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` varchar(20) NOT NULL,
  `nik` varchar(17) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `gelar_depan` varchar(20) DEFAULT NULL,
  `gelar_belakang` varchar(20) DEFAULT NULL,
  `tgl_mulai_masuk` date DEFAULT NULL,
  `nuptk` varchar(50) DEFAULT NULL,
  `npwp` varchar(30) DEFAULT NULL,
  `sumber_gaji` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `nomor_hp` varchar(14) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` int(11) DEFAULT NULL,
  `rw` int(11) DEFAULT NULL,
  `kelurahan` varchar(30) DEFAULT NULL,
  `provinsi` varchar(30) DEFAULT NULL,
  `kabupaten` varchar(30) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kode_pos` int(8) DEFAULT NULL,
  `domisili` varchar(30) DEFAULT NULL,
  `akun_id` int(11) DEFAULT NULL,
  `status_pegawai` enum('ptt','gtt') DEFAULT NULL,
  `pas_foto` text DEFAULT NULL,
  `full_foto` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nik`, `nama`, `gelar_depan`, `gelar_belakang`, `tgl_mulai_masuk`, `nuptk`, `npwp`, `sumber_gaji`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `nomor_hp`, `email`, `alamat`, `rt`, `rw`, `kelurahan`, `provinsi`, `kabupaten`, `kecamatan`, `kode_pos`, `domisili`, `akun_id`, `status_pegawai`, `pas_foto`, `full_foto`, `created_at`, `updated_at`) VALUES
('18980418201707010090', '3504025804890002', 'LAILI ERMAWATI', NULL, NULL, '2017-07-01', NULL, NULL, 'BOS', NULL, '1898-04-18', NULL, NULL, NULL, 'lilycute64@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1713, 'gtt', NULL, NULL, '2020-07-29 08:14:27', NULL),
('19641022200801020087', '3504012210640001', 'SRI WIDODO MARYANTO', NULL, NULL, '2008-01-02', NULL, NULL, 'PROVINSI', NULL, '1964-10-22', NULL, NULL, NULL, 'sriwidodom2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1710, 'ptt', NULL, NULL, '2020-07-29 07:24:34', NULL),
('19661108200707160018', '3506032312101706', 'Susakti Yuharini', NULL, NULL, '2007-07-16', NULL, NULL, 'BPOPP', NULL, '1966-11-08', NULL, NULL, NULL, 'susaktiyuharini123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1640, 'gtt', NULL, NULL, '2020-07-28 04:52:40', NULL),
('19670107201001010057', '3504020701670003', 'HERIYADI', NULL, NULL, '2010-01-01', NULL, NULL, 'BPOPP', NULL, '1967-01-07', NULL, NULL, NULL, 'Yadi12647@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1679, 'ptt', NULL, NULL, '2020-07-29 00:32:39', NULL),
('19670427200701010094', '3504032704670001', 'ALIF FATONI', NULL, NULL, '2007-01-01', NULL, NULL, 'BPOPP', NULL, '1967-04-27', NULL, NULL, NULL, '275@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1717, 'ptt', NULL, NULL, '2020-07-29 23:46:42', NULL),
('19690608200701010084', '3504010806690005', 'FATAH SULISTYADI', '', '', '2007-01-01', '8940747649200032', '', 'BPOPP', 'TULUNGAGUNG', '1969-06-08', 'L', 'Islam', '085335542022', 'deff_comp@yahoo.com', 'JL. PANGJEND. SUDIRMAN VII / 54D TULUNGAGUNG. 66219', 4, 4, 'KEPATIHAN', 'JAWA TIMUR', 'TULUNGAGUNG', 'TULUNGAGUNG', 66219, 'TULUNGAGUNG', 1707, 'ptt', '', '', '2020-07-29 06:14:14', '2020-07-29 06:26:01'),
('19700717200807140078', '3504151707700003', 'Agus Pramono', NULL, NULL, '2008-07-14', NULL, NULL, 'BPOPP', NULL, '1970-07-17', NULL, NULL, NULL, 'pramomo_007@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1701, 'gtt', NULL, NULL, '2020-07-29 03:48:29', NULL),
('19710913200907150065', '3504021310710002', 'GUNAWAN', NULL, NULL, '2009-07-15', NULL, NULL, 'BPOPP', NULL, '1971-09-13', NULL, NULL, NULL, 'sobontoro114@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1687, 'ptt', NULL, NULL, '2020-07-29 01:38:01', NULL),
('19731130201001010055', '3504023011730001', 'Alimin', NULL, NULL, '2010-01-01', NULL, NULL, 'BPOPP', NULL, '1973-11-30', NULL, NULL, NULL, 'Aliminjawi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1677, 'ptt', NULL, NULL, '2020-07-29 00:25:46', NULL),
('19740309201001010058', '3504030903740002', 'MUHAMAD SAHUDI', NULL, NULL, '2010-01-01', NULL, NULL, 'BPOPP', NULL, '1974-03-09', NULL, NULL, NULL, 'Yudisetia554@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1680, 'ptt', NULL, NULL, '2020-07-29 00:40:47', NULL),
('19740317200804010072', '3504165703740002', 'Retno Harusmiarsi', NULL, NULL, '2008-04-01', NULL, NULL, 'BPOPP', NULL, '1974-03-17', NULL, NULL, NULL, 'retnoharus@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1694, 'ptt', NULL, NULL, '2020-07-29 02:41:22', NULL),
('19740610200907010068', '3504011006740001', 'AGUS WICAKSONO', NULL, NULL, '2009-07-01', NULL, NULL, 'BPOPP', NULL, '1974-06-10', NULL, NULL, NULL, 'Aguswicaksono641@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1690, 'ptt', NULL, NULL, '2020-07-29 01:46:24', NULL),
('19740805200807140030', '3571024508740002', 'DYAH ESTI RAHAYU', NULL, NULL, '2008-07-14', NULL, NULL, 'BOS', NULL, '1974-08-05', NULL, NULL, NULL, 'edyahrahayu888@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1652, 'gtt', NULL, NULL, '2020-07-28 05:21:19', NULL),
('19750223200807140080', '3504012302750001', 'SINGGIH ADI WIYONO', NULL, NULL, '2008-07-14', NULL, NULL, 'BOS', NULL, '1975-02-23', NULL, NULL, NULL, 'ficodimas@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1703, 'gtt', NULL, NULL, '2020-07-29 04:44:46', NULL),
('19750616201007010091', '3504025606750002', 'WIWIK YUNIARSIH, S.Pd.', NULL, NULL, '2010-07-01', NULL, NULL, 'BOS', NULL, '1975-06-16', NULL, NULL, NULL, 'wiwikyuniarsih95@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1714, 'gtt', NULL, NULL, '2020-07-29 12:52:51', NULL),
('19770823200901020023', '3504036308770003', 'SRI ASTUTI', NULL, NULL, '2009-01-02', NULL, NULL, 'BPOPP', NULL, '1977-08-23', NULL, NULL, NULL, 'sastuti912@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1645, 'ptt', NULL, NULL, '2020-07-28 05:01:30', NULL),
('19771112200707160036', '3504031211770003', 'Hendro Suwignyo', NULL, NULL, '2007-07-16', NULL, NULL, 'BOS', NULL, '1977-11-12', NULL, NULL, NULL, 'hendrojio@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1658, 'gtt', NULL, NULL, '2020-07-28 05:45:24', NULL),
('1978082220080714008', '3504016208780003', 'Nurul Azizah, S.Pd', NULL, NULL, '2008-07-14', NULL, NULL, 'BPOPP', NULL, '1978-08-22', NULL, NULL, NULL, 'nurulalana2208@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1630, 'gtt', NULL, NULL, '2020-07-23 06:39:10', NULL),
('19781220200906010071', '3505152012780003', 'Eko wahyu widyanto', NULL, NULL, '2009-06-01', NULL, NULL, 'BPOPP', NULL, '1978-12-20', NULL, NULL, NULL, 'nakulasadewandut@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1693, 'ptt', NULL, NULL, '2020-07-29 02:40:30', NULL),
('19790805200707090047', '3504024508790006', 'LAILA AGUSTINA', NULL, NULL, '2007-07-09', NULL, NULL, 'PROVINSI', NULL, '1979-08-05', NULL, NULL, NULL, 'lailatina.tt@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1669, 'ptt', NULL, NULL, '2020-07-28 07:31:29', NULL),
('19810116200807140077', '3504011601810002', 'Arik Yanuar Ishak', NULL, NULL, '2008-07-14', NULL, NULL, 'BOS', NULL, '1981-01-16', NULL, NULL, NULL, 'arikyanuarishak@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1700, 'gtt', NULL, NULL, '2020-07-29 03:39:31', NULL),
('19810124200907130042', '3504052401810003', 'Baskoro', '', 'S.Si', '2009-07-13', '9456759660110052', '24.692.927.7.629.000', 'BPOPP', 'Kediri', '1981-01-24', 'L', 'Islam', '081335719913', 'mas24bas@yahoo.com', 'Jalan Arjuna nomer 11', 4, 1, 'Sidorejo', 'Jawa Timur', 'Tulungagung', 'Kauman', 66261, 'Jl Arjuna no.11 Sidorejo', 1664, 'gtt', '8a17fff1abaff0188ccb0bddf407a04f.jpg', '', '2020-07-28 06:42:19', '2020-07-30 11:47:28'),
('19810405201201010056', '3504020504810001', 'ribut purwanto', NULL, NULL, '2012-01-01', NULL, NULL, 'BPOPP', NULL, '1981-04-05', NULL, NULL, NULL, 'ributpurwanto81@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1678, 'gtt', NULL, NULL, '2020-07-29 00:30:02', NULL),
('19811010201001110095', '3504055010810001', 'Istiqomah', NULL, NULL, '2010-01-11', NULL, NULL, 'BPOPP', NULL, '1981-10-10', NULL, NULL, NULL, 'Istiganbatte@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1754, 'gtt', NULL, NULL, '2020-08-03 03:24:40', NULL),
('19820302200607180059', '3504034203820003', 'TITA RATNAWATI', NULL, NULL, '2006-07-18', NULL, NULL, 'BOS', NULL, '1982-03-02', NULL, NULL, NULL, 'titaratnawati82@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1681, 'gtt', NULL, NULL, '2020-07-29 01:03:22', NULL),
('19820318200807010053', '3504081803820001', 'Alfinu farikh', NULL, NULL, '2008-07-01', NULL, NULL, 'BPOPP', NULL, '1982-03-18', NULL, NULL, NULL, 'alfienfarich@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1675, 'gtt', NULL, NULL, '2020-07-28 22:53:46', NULL),
('19820411201507010046', '3504055104820004', 'Tatik Wulandari', NULL, NULL, '2015-07-01', NULL, NULL, 'BPOPP', NULL, '1982-04-11', NULL, NULL, NULL, 'tatikwulandari904@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 'ptt', NULL, NULL, '2020-07-28 07:02:55', NULL),
('19820529200707160012', '3504166905820001', 'Fajar Wahyu Pratiwi', NULL, NULL, '2007-07-16', NULL, NULL, 'BOS', NULL, '1982-05-29', NULL, NULL, NULL, 'fajarwahyupratiwiss@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1634, 'gtt', NULL, NULL, '2020-07-28 04:38:33', NULL),
('19820718200707160010', '3504041807820001', 'Agung Yulianto', NULL, NULL, '2007-07-16', NULL, NULL, 'BOS', NULL, '1982-07-18', NULL, NULL, NULL, 'agung.yulianto180782@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1632, 'gtt', NULL, NULL, '2020-07-28 04:37:17', NULL),
('19820721201407010052', '3504026107820001', 'ENDANG SAFITRI', NULL, NULL, '2014-07-01', NULL, NULL, 'BOS', NULL, '1982-07-21', NULL, NULL, NULL, 'Endunk09@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1674, 'gtt', NULL, NULL, '2020-07-28 11:10:14', NULL),
('1982121520110701002', '3504105512820002', 'Mutoatul Khosiah', NULL, NULL, '2011-07-01', NULL, NULL, 'BOS', NULL, '1982-12-15', NULL, NULL, NULL, 'mutoatul566@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1624, 'gtt', NULL, NULL, '2020-07-20 05:27:08', NULL),
('19830306201007070092', '3504104603830005', 'Luluk munfarida', NULL, NULL, '2010-07-07', NULL, NULL, 'PROVINSI', NULL, '1983-03-06', NULL, NULL, NULL, 'Lulukmunfarida05@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1715, 'gtt', NULL, NULL, '2020-07-29 14:24:46', NULL),
('19830331200907130013', '3504157103830001', 'Sri Kusumastuti, S.Pd', NULL, NULL, '2009-07-13', NULL, NULL, 'PROVINSI', NULL, '1983-03-31', NULL, NULL, NULL, 'skastuti@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1635, 'gtt', NULL, NULL, '2020-07-28 04:38:36', NULL),
('1983070720080718006', '3504104707830001', 'Khuriyatul Kamila', NULL, NULL, '2008-07-18', NULL, NULL, 'BPOPP', NULL, '1983-07-07', NULL, NULL, NULL, 'viryabilqis6@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1628, 'gtt', NULL, NULL, '2020-07-20 06:37:34', NULL),
('19830708200905170085', '3504020807830003', 'RIFA\'I', NULL, NULL, '2009-05-17', NULL, NULL, 'PROVINSI', NULL, '1983-07-08', NULL, NULL, NULL, 'Yaa_iie@yahoo.co.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1708, 'ptt', NULL, NULL, '2020-07-29 07:14:59', NULL),
('19831006200707160045', '3504014610830001', 'Susi Maria Ulfa', NULL, NULL, '2007-07-16', NULL, NULL, 'BOS', NULL, '1983-10-06', NULL, NULL, NULL, 'susim4803@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1667, 'gtt', NULL, NULL, '2020-07-28 07:01:40', NULL),
('19840309201401020063', '3504054903840001', 'ARTIKHA WINDA SARI', NULL, NULL, '2014-01-02', NULL, NULL, 'PROVINSI', NULL, '1984-03-09', NULL, NULL, NULL, 'artikhawindasari@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1685, 'ptt', NULL, NULL, '2020-07-29 01:30:40', NULL),
('19840730200707160031', '3504027007840003', 'Yuli Ratnasari', NULL, NULL, '2007-07-16', NULL, NULL, 'BOS', NULL, '1984-07-30', NULL, NULL, NULL, 'yulieratnasari84@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1653, 'gtt', NULL, NULL, '2020-07-28 05:23:02', NULL),
('19840821200807010070', '3504016108840002', 'Evi Fauziah', NULL, NULL, '2008-07-01', NULL, NULL, 'PROVINSI', NULL, '1984-08-21', NULL, NULL, NULL, 'syifavikrifauziah@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1692, 'ptt', NULL, NULL, '2020-07-29 02:04:54', NULL),
('19841129201003010081', '3504056911840002', 'NURSUKMA NINGTYAS', NULL, NULL, '2010-03-01', NULL, NULL, 'PROVINSI', NULL, '1984-11-29', NULL, NULL, NULL, 'nursukmaningtyas2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1704, 'ptt', NULL, NULL, '2020-07-29 04:50:43', NULL),
('19850120201001020064', '3504022001850002', 'HENDI SURYADI', NULL, NULL, '2010-01-02', NULL, NULL, 'BPOPP', NULL, '1985-01-20', NULL, NULL, NULL, 'pentilviksen@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1686, 'ptt', NULL, NULL, '2020-07-29 01:33:32', NULL),
('19850301200501010089', '3504024103850004', 'ANI MUSTIKASARI', NULL, NULL, '2005-01-01', NULL, NULL, 'PROVINSI', NULL, '1985-03-01', NULL, NULL, NULL, 'animustikasari1985@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1712, 'ptt', NULL, NULL, '2020-07-29 07:35:32', NULL),
('1985040120100401004', '3504104104840003', 'Beti astuti', NULL, NULL, '2010-04-01', NULL, NULL, 'BOS', NULL, '1985-04-01', NULL, NULL, NULL, 'Beti.melati2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1626, 'gtt', NULL, NULL, '2020-07-20 05:41:13', NULL),
('19850604200801010083', '3504014406850004', 'RISKA WURNANINGTIYAS', NULL, NULL, '2008-01-01', NULL, NULL, 'PROVINSI', NULL, '1985-06-04', NULL, NULL, NULL, 'riscarinelva@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1706, 'ptt', NULL, NULL, '2020-07-29 05:13:43', NULL),
('19850627201007010014', '3504036706850001', 'FITRIA RENYTASARI', NULL, NULL, '2010-07-01', NULL, NULL, 'BOS', NULL, '1985-06-27', NULL, NULL, NULL, 'fitriarenytasari27@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1636, 'gtt', NULL, NULL, '2020-07-28 04:39:01', NULL),
('19850818202007010067', '3504021808850002', 'Agus krisdiantoro', NULL, NULL, '2020-07-01', NULL, NULL, 'BPOPP', NULL, '1985-08-18', NULL, NULL, NULL, 'krisdiantoagus0@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1689, 'ptt', NULL, NULL, '2020-07-29 01:42:02', NULL),
('19850926201607120069', '3504026609850001', 'SITI MAISAROH', NULL, NULL, '2016-07-12', NULL, NULL, 'PROVINSI', NULL, '1985-09-26', NULL, NULL, NULL, 'maisiti44@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1691, 'gtt', NULL, NULL, '2020-07-29 02:04:00', NULL),
('19851021201607040020', '3504166110850002', 'Oktaria Megawati', NULL, NULL, '2016-07-04', NULL, NULL, 'BPOPP', NULL, '1985-10-21', NULL, NULL, NULL, 'megawatioktaria2016@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1642, 'gtt', NULL, NULL, '2020-07-28 04:56:19', NULL),
('19860208200907010075', '3504024802860002', 'Feri Pristiwiyanti', NULL, NULL, '2009-07-01', NULL, NULL, 'PROVINSI', NULL, '1986-02-08', NULL, NULL, NULL, 'ferirafasetyawan@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1697, 'ptt', NULL, NULL, '2020-07-29 03:22:37', NULL),
('19860414201008040076', '3504085404860001', 'Nishfu laili', NULL, NULL, '2010-08-04', NULL, NULL, 'PROVINSI', NULL, '1986-04-14', NULL, NULL, NULL, 'nishfulaili1986@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1698, 'gtt', NULL, NULL, '2020-07-29 03:28:11', NULL),
('19860505201302010082', '3503104505860005', 'NINIK DWI JAYANTI', NULL, NULL, '2013-02-01', NULL, NULL, 'PROVINSI', NULL, '1986-05-05', NULL, NULL, NULL, 'nickdeejee@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1705, 'ptt', NULL, NULL, '2020-07-29 05:01:31', NULL),
('19860512200707150086', '3504025205860005', 'SUCI RAHAYU ', NULL, NULL, '2007-07-15', NULL, NULL, 'PROVINSI', NULL, '1986-05-12', NULL, NULL, NULL, 'rahayusuci6101@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1709, 'ptt', NULL, NULL, '2020-07-29 07:17:00', NULL),
('19860606201001070074', '3504024606860003', 'DITA ISMA GAYATRI', NULL, NULL, '2010-01-07', NULL, NULL, 'BPOPP', NULL, '1986-06-06', NULL, NULL, NULL, 'ditagayatri191@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1696, 'ptt', NULL, NULL, '2020-07-29 02:52:31', NULL),
('1986072420110701003', '3504036407860001', 'Lusiana Fransiska, S.Pd.', NULL, NULL, '2011-07-01', NULL, NULL, 'BPOPP', NULL, '1986-07-24', NULL, NULL, NULL, 'lulu.chica@ymail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1625, 'gtt', NULL, NULL, '2020-07-20 05:39:31', NULL),
('19860926201402010043', '3504012609860001', 'Putra Abric Susanto', '', 'S.Kom', '2014-02-01', '', '90.580.658.4-629.000', 'BPOPP', 'Tulungagung', '1986-09-26', 'L', 'ISLAM', '085257608873', 'poetraas@yahoo.co.id', 'Jl Dr Sutomo gang 8 no 157', 2, 4, 'karangwaru', 'Jawa Timur', 'Tulungagung', 'tulungagung', 66217, '														', 1665, 'ptt', '', '', '2020-07-28 06:54:15', '2020-07-29 07:19:41'),
('19870303201007010016', '3504144303870003', 'NUR NASTUTISARI', NULL, NULL, '2010-07-01', NULL, NULL, 'BOS', NULL, '1987-03-03', NULL, NULL, NULL, 'nastutisari@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1638, 'gtt', NULL, NULL, '2020-07-28 04:46:28', NULL),
('19870627201001110096', '3504056706870001', 'Yudit Manja Asmara', NULL, NULL, '2010-01-11', NULL, NULL, 'BPOPP', NULL, '1987-06-27', NULL, NULL, NULL, 'yuditmanja@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1898, 'gtt', NULL, NULL, '2020-08-10 04:02:34', NULL),
('19870831201907250024', '3504013108870002', 'Dika Purna Nugraha', NULL, NULL, '2019-07-25', NULL, NULL, 'BPOPP', NULL, '1987-08-31', NULL, NULL, NULL, 'dekanugraha@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1646, 'gtt', NULL, NULL, '2020-07-28 05:07:55', NULL),
('1987100420100707005', '3504024410870004', 'Ajeng okvitasari', NULL, NULL, '2010-07-07', NULL, NULL, 'BOS', NULL, '1987-10-04', NULL, NULL, NULL, 'vitaajenk@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1627, 'gtt', NULL, NULL, '2020-07-20 05:48:21', NULL),
('19871116200907010060', '3504021611870003', 'Zainul Arifin ', NULL, NULL, '2009-07-01', NULL, NULL, 'BPOPP', NULL, '1987-11-16', NULL, NULL, NULL, 'zainulmas.al@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1682, 'ptt', NULL, NULL, '2020-07-29 01:25:24', NULL),
('19871212201407010039', '3504095212870003', 'Ririt Mufaridah', NULL, NULL, '2014-07-01', NULL, NULL, 'PROVINSI', NULL, '1987-12-12', NULL, NULL, NULL, 'riritmufarida12@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1661, 'ptt', NULL, NULL, '2020-07-28 05:54:31', NULL),
('19880216201004010088', '3505015602880001', 'Ika Yulifatun Nadifah', NULL, NULL, '2010-04-01', NULL, NULL, 'BPOPP', NULL, '1988-02-16', NULL, NULL, NULL, 'chielika@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1711, 'ptt', NULL, NULL, '2020-07-29 07:27:19', NULL),
('19880521201601010011', '3504056105880001', 'Veronica Damay Rulitasari', NULL, NULL, '2016-01-01', NULL, NULL, 'BOS', NULL, '1988-05-21', NULL, NULL, NULL, 'rulias.vr@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1633, 'gtt', NULL, NULL, '2020-07-28 04:37:24', NULL),
('19880921200907010079', '3504052109880001', 'SUBYANTORO', NULL, NULL, '2009-07-01', NULL, NULL, 'BPOPP', NULL, '1988-09-21', NULL, NULL, NULL, 'zianimut0@g.mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1702, 'ptt', NULL, NULL, '2020-07-29 04:14:50', NULL),
('19881229201712110054', '3504032912880002', 'RAGIL KURNIAWAN', NULL, NULL, '2017-12-11', NULL, NULL, 'BPOPP', NULL, '1988-12-29', NULL, NULL, NULL, 'Ragilkurniawan614@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1676, 'ptt', NULL, NULL, '2020-07-29 00:16:35', NULL),
('19890916201407010040', '3504115609890003', 'KHOLIP FITRIAWAROH', NULL, NULL, '2014-07-01', NULL, NULL, 'PROVINSI', NULL, '1989-09-16', NULL, NULL, NULL, 'kholipfitria@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1662, 'ptt', NULL, NULL, '2020-07-28 06:08:49', NULL),
('19900411201601060022', '3504031104900001', 'Amirullah Rosyidin Hamzah, S.Pd', NULL, NULL, '2016-01-06', NULL, NULL, 'BPOPP', NULL, '1990-04-11', NULL, NULL, NULL, 'amirrosyidinhamzah1990@gmail.c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1644, 'gtt', NULL, NULL, '2020-07-28 04:59:45', NULL),
('1990080620190701009', '3571024508900007', 'Astra Bella Flamboyan', NULL, NULL, '2019-07-01', NULL, NULL, 'BPOPP', NULL, '1990-08-06', NULL, NULL, NULL, 'astrabella_90@live.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1631, 'gtt', NULL, NULL, '2020-07-28 02:19:44', NULL),
('19901031201507010026', '3504027110900002', 'SINTA LESTARI', NULL, NULL, '2015-07-01', NULL, NULL, 'BOS', NULL, '1990-10-31', NULL, NULL, NULL, 'sintalestari966@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1648, 'gtt', NULL, NULL, '2020-07-28 05:10:41', NULL),
('19910327201807010066', '3504016703910001', 'NENI CANDRA DEWI', NULL, NULL, '2018-07-01', NULL, NULL, 'BPOPP', NULL, '1991-03-27', NULL, NULL, NULL, 'nenicandra91.nc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1688, 'ptt', NULL, NULL, '2020-07-29 01:38:18', NULL),
('1991032820170701001', '3504042803910003', 'FENDY HERMANTO, S.Pd', NULL, NULL, '2017-07-01', NULL, NULL, 'BOS', NULL, '1991-03-28', NULL, NULL, NULL, 'Fhecool@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1176, 'gtt', NULL, NULL, '2020-07-10 23:47:38', NULL),
('19910613201006010062', '3504035306910001', 'Dian yunita sari', NULL, NULL, '2010-06-01', NULL, NULL, 'BPOPP', NULL, '1991-06-13', NULL, NULL, NULL, 'dianyunita82@yahoo.co.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1684, 'ptt', NULL, NULL, '2020-07-29 01:26:53', NULL),
('19911103201007120093', '3504170311910001', 'JOKO PRIYANTO', NULL, NULL, '2010-07-12', NULL, NULL, 'BPOPP', NULL, '1991-11-03', NULL, NULL, NULL, 'jokopiyik91@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1716, 'ptt', NULL, NULL, '2020-07-29 16:03:02', NULL),
('19911215201807010035', '3504165512910003', 'DESI WULANDARI', '', '', '2018-07-01', '', '', 'BPOPP', 'TULUNGAGUNG', '1991-12-15', 'P', 'Islam', '082233862289', 'wulandari15121991@gmail.com', 'Desa Tanggung RT 01 RW 11 Kecamatan Campurdarat Kabupaten Tulungagung', 1, 11, 'Tanggung', 'Jawa Timur', 'Tulungagung', 'Campurdarat', 66272, '', 1657, 'ptt', '', '', '2020-07-28 05:39:02', '2020-07-28 06:27:11'),
('19920205201607010025', '3504054502920005', 'Yustin febrini', NULL, NULL, '2016-07-01', NULL, NULL, 'BOS', NULL, '1992-02-05', NULL, NULL, NULL, 'febriniyustin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1647, 'gtt', NULL, NULL, '2020-07-28 05:10:21', NULL),
('19920423201601010032', '3504086304920001', 'MEGA MAHARDIKA', NULL, NULL, '2016-01-01', NULL, NULL, 'BOS', NULL, '1992-04-23', NULL, NULL, NULL, 'megamahardika67@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1654, 'gtt', NULL, NULL, '2020-07-28 05:23:55', NULL),
('1992050420150727007', '3504114405920001', 'Elyana Frisca Monica', NULL, NULL, '2015-07-27', NULL, NULL, 'BPOPP', NULL, '1992-05-04', NULL, NULL, NULL, 'freezfico@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1629, 'gtt', NULL, NULL, '2020-07-22 11:41:58', NULL),
('19920530201807150037', '3504087005920001', 'NILA YAFIE', NULL, NULL, '2018-07-15', NULL, NULL, 'BPOPP', NULL, '1992-05-30', NULL, NULL, NULL, 'nilayafie43@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1659, 'gtt', NULL, NULL, '2020-07-28 05:49:33', NULL),
('19930610201501010017', '3504025006930001', 'Linda Asfiyah', '', 'A.Ma.Pust.', '2015-01-01', '', '90.597.293.1-629.000', 'PROVINSI', 'Tulungagung', '1993-06-10', 'P', 'Islam', '085736797734', 'asfylinda@gmail.com', '', 1, 1, 'Wajakkidul', 'Jawa Timur', 'Tulungagung', 'Boyolangu', 66271, 'Ds. Tanggung, RT: 03 RW: 09 ,', 1639, 'ptt', '', '', '2020-07-28 04:48:40', '2020-07-30 07:58:41'),
('19930614201707170034', '3504025406930003', 'EKA INTAN LESTARI SUDIBYO', NULL, NULL, '2017-07-17', NULL, NULL, 'BPOPP', NULL, '1993-06-14', NULL, NULL, NULL, 'eils140693@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1656, 'gtt', NULL, NULL, '2020-07-28 05:35:27', NULL),
('19940222201507010048', '3504026202940003', 'IMRA ATUS SOLIKAH', NULL, NULL, '2015-07-01', NULL, NULL, 'BPOPP', NULL, '1994-02-22', NULL, NULL, NULL, 'imraatussolikah@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1670, 'ptt', NULL, NULL, '2020-07-28 07:33:30', NULL),
('19940315201305010061', '3504055503940003', 'PRISTIYANIKA MULANING TYAS', NULL, NULL, '2013-05-01', NULL, NULL, 'BPOPP', NULL, '1994-03-15', NULL, NULL, NULL, 'pristi1594@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1683, 'ptt', NULL, NULL, '2020-07-29 01:26:50', NULL),
('19940719201308050041', '3504015907940001', 'Yuliani Endah Purnamasari', NULL, NULL, '2013-08-05', NULL, NULL, 'PROVINSI', NULL, '1994-07-19', NULL, NULL, NULL, 'yulianiendah88@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1663, 'ptt', NULL, NULL, '2020-07-28 06:36:28', NULL),
('19941026201908010033', '3504092610940001', 'Mohamad Dwi Purnadiansyah, S.T.', NULL, NULL, '2019-08-01', NULL, NULL, 'BPOPP', NULL, '1994-10-26', NULL, NULL, NULL, 'gandy12odang@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1655, 'ptt', NULL, NULL, '2020-07-28 05:26:06', NULL),
('19941129201507010050', '3504096911940002', 'NOVANA PUSPITASARI', '', '', '2015-07-01', '', '90.581.275.6-629.000', 'PROVINSI', 'TULUNGAGUNG', '1994-11-29', 'P', 'Islam', '085749583423', 'Novana.puspitasari@gmail.com', 'Dsn. PLENGGRONG RT. 001 RW. 011, Ds. TIUDAN, Kec. GONDANG, Kab. TULUNGAGUNG', 1, 11, 'TIUDAN', 'JAWA TIMUR ', 'TULUNGAGUNG', 'GONDANG', 66263, '', 1672, 'ptt', '', '', '2020-07-28 07:50:42', '2020-07-31 06:06:45'),
('19951205201907150027', '3504014512950001', 'Eliana Destri Purwati', NULL, NULL, '2019-07-15', NULL, NULL, 'BPOPP', NULL, '1995-12-05', NULL, NULL, NULL, 'watieliana95@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1649, 'gtt', NULL, NULL, '2020-07-28 05:11:00', NULL),
('19960203202001200073', '3504034302960001', 'RESDIANA DEWI', NULL, NULL, '2020-01-20', NULL, NULL, 'BPOPP', NULL, '1996-02-03', NULL, NULL, NULL, 'resdianadewi96@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1695, 'ptt', NULL, NULL, '2020-07-29 02:44:52', NULL),
('19960604201912090051', '3504164406960002', 'Rida Amilia Cristanty', '', 'S. Pd', '2019-12-09', '', '', 'BOS', 'Tulungagung', '1996-06-04', 'P', 'Islam', '085735572270', 'rida.amilia50@gmail.com', 'Rt 03 Rw 05 Dusun Gulut Desa Wates Kecamatan Campurdarat Kabupaten Tulungagung', 3, 5, 'Wates', 'Jawa Timur', 'Tulungagung', 'Campurdarat', 66272, 'Tulungagung', 1673, 'ptt', '', '', '2020-07-28 08:13:52', '2020-07-29 07:52:58'),
('19960618201901010015', '3504081806960001', 'Aris Nurbatnirizal', NULL, NULL, '2019-01-01', NULL, NULL, 'BPOPP', NULL, '1996-06-18', NULL, NULL, NULL, 'arisnurba@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1637, 'ptt', NULL, NULL, '2020-07-28 04:45:54', NULL),
('19970204201907010021', '3504024402970001', 'Fitria Diah Ayu Hartati, S.Pd', NULL, NULL, '2019-07-01', NULL, NULL, 'BPOPP', NULL, '1997-02-04', NULL, NULL, NULL, 'fitriadiahayu10@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1643, 'gtt', NULL, NULL, '2020-07-28 04:58:37', NULL),
('19970325201508010038', '3504036503970001', 'Diah Pangesti Muji Rahayu Wilujeng', '', '', '2015-08-01', '', '', 'PROVINSI', 'Tulungagung', '1997-03-25', 'P', 'Islam', '0895321625646', 'diahpangesti30@gmail.com', 'Dsn. Mekarsari', 3, 2, 'Tunggulsari', 'Jawa Timur', 'Tulungagung', 'Kedungwaru', 66223, '', 1660, 'ptt', '', '', '2020-07-28 05:52:16', '2020-07-28 05:58:30'),
('19970722201906300029', '3503066207970002', 'Ferida rosita sari', NULL, NULL, '2019-06-30', NULL, NULL, 'BPOPP', NULL, '1997-07-22', NULL, NULL, NULL, 'Feridasari654@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1651, 'ptt', NULL, NULL, '2020-07-28 05:18:09', NULL),
('19981218201903010019', '3504065812980001', 'CANDRA NUR AZIZA RISQI', NULL, NULL, '2019-03-01', NULL, NULL, 'BPOPP', NULL, '1998-12-18', NULL, NULL, NULL, 'azizharizky@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1641, 'ptt', NULL, NULL, '2020-07-28 04:55:30', NULL),
('19991116201907010028', '3507285611980001', 'PUTRI SUKMA SYAIFUDIN SARAH', NULL, NULL, '2019-07-01', NULL, NULL, 'BPOPP', NULL, '1999-11-16', NULL, NULL, NULL, 'Putrisby720@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1650, 'ptt', NULL, NULL, '2020-07-28 05:17:24', NULL),
('20000419201907010049', '3504095904000005', 'INTAN PRATIWI', NULL, NULL, '2019-07-01', NULL, NULL, 'BPOPP', NULL, '2000-04-19', NULL, NULL, NULL, 'INTANPAYTUN@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1671, 'ptt', NULL, NULL, '2020-07-28 07:47:27', NULL),
('20200822201607010044', '3504012208910003', 'Agung Dwi Ernanto', '', 'S - 1', '2016-07-01', '', '90.580.811.9-629.000', 'PROVINSI', 'Tulungagung', '2020-08-22', 'L', 'Islam', '085646726699', 'agungernanto@gmail.com', 'dsn. Talun Rt.01/RW.02 Beji, Boyolangu Kab. Tulungagung Jawa Timur', 1, 2, 'Beji', 'Jawa Timur', 'Tulungagung', 'Boyolangu', 66233, 'rumah', 1666, 'ptt', '', '', '2020-07-28 06:58:14', '2020-07-29 07:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan_formal`
--

CREATE TABLE `pendidikan_formal` (
  `id` int(11) NOT NULL,
  `guru_id` varchar(19) NOT NULL,
  `file_ijazah` text DEFAULT NULL,
  `file_nilai` text DEFAULT NULL,
  `jenjang` varchar(25) DEFAULT NULL,
  `nama_sekolah` varchar(50) DEFAULT NULL,
  `fakultas` varchar(255) DEFAULT NULL,
  `prodi` varchar(30) DEFAULT NULL,
  `tahun_lulus` year(4) DEFAULT NULL,
  `akreditasi` varchar(3) DEFAULT NULL,
  `nilai_akhir` int(11) DEFAULT NULL,
  `tgl_ijazah` date DEFAULT NULL,
  `no_ijazah` varchar(45) DEFAULT NULL,
  `ipk` int(11) DEFAULT NULL,
  `aktif` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_diklat`
--

CREATE TABLE `riwayat_diklat` (
  `id` int(11) NOT NULL,
  `guru_id` varchar(19) NOT NULL,
  `file` text DEFAULT NULL,
  `jenis_diklat` varchar(50) DEFAULT NULL,
  `nama_diklat` varchar(50) DEFAULT NULL,
  `no_sertifikat` varchar(100) DEFAULT NULL,
  `tgl_sertifikat` date DEFAULT NULL,
  `peran` varchar(30) DEFAULT NULL,
  `jumlah_jam` int(11) DEFAULT NULL,
  `penyelenggara` varchar(255) DEFAULT NULL,
  `tingkat` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pasangan`
--

CREATE TABLE `riwayat_pasangan` (
  `id` int(11) NOT NULL,
  `guru_id` varchar(19) NOT NULL,
  `nik` varchar(17) DEFAULT NULL,
  `nip` varchar(19) NOT NULL,
  `foto_pasangan` text DEFAULT NULL,
  `foto_ktp` text DEFAULT NULL,
  `foto_askes` text DEFAULT NULL,
  `nama_pasangan` varchar(50) DEFAULT NULL,
  `status_pasangan` varchar(20) DEFAULT NULL,
  `tempat_lahir_pasangan` varchar(30) DEFAULT NULL,
  `tgl_lahir_pasangan` date DEFAULT NULL,
  `status_pekerjaan` varchar(50) DEFAULT NULL,
  `tempat_bekerja` varchar(50) DEFAULT NULL,
  `aktif` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pernikahan`
--

CREATE TABLE `riwayat_pernikahan` (
  `id` int(11) NOT NULL,
  `guru_id` varchar(19) DEFAULT NULL,
  `bukti_pernikahan` text DEFAULT NULL,
  `status_pernikahan` varchar(100) DEFAULT NULL,
  `tgl_pernikahan` date DEFAULT NULL,
  `no_surat` varchar(30) DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `aktif` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_anak`
--
ALTER TABLE `data_anak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indexes for table `data_pendukung`
--
ALTER TABLE `data_pendukung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indexes for table `data_sk`
--
ALTER TABLE `data_sk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikan_formal`
--
ALTER TABLE `pendidikan_formal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pendidikan_formal_ibfk_1` (`guru_id`);

--
-- Indexes for table `riwayat_diklat`
--
ALTER TABLE `riwayat_diklat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indexes for table `riwayat_pasangan`
--
ALTER TABLE `riwayat_pasangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indexes for table `riwayat_pernikahan`
--
ALTER TABLE `riwayat_pernikahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_pernikahan_ibfk_1` (`guru_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_anak`
--
ALTER TABLE `data_anak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_pendukung`
--
ALTER TABLE `data_pendukung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `data_sk`
--
ALTER TABLE `data_sk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pendidikan_formal`
--
ALTER TABLE `pendidikan_formal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `riwayat_diklat`
--
ALTER TABLE `riwayat_diklat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_pasangan`
--
ALTER TABLE `riwayat_pasangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_pernikahan`
--
ALTER TABLE `riwayat_pernikahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_anak`
--
ALTER TABLE `data_anak`
  ADD CONSTRAINT `data_anak_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_sk`
--
ALTER TABLE `data_sk`
  ADD CONSTRAINT `data_sk_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pendidikan_formal`
--
ALTER TABLE `pendidikan_formal`
  ADD CONSTRAINT `pendidikan_formal_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat_diklat`
--
ALTER TABLE `riwayat_diklat`
  ADD CONSTRAINT `riwayat_diklat_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat_pasangan`
--
ALTER TABLE `riwayat_pasangan`
  ADD CONSTRAINT `riwayat_pasangan_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat_pernikahan`
--
ALTER TABLE `riwayat_pernikahan`
  ADD CONSTRAINT `riwayat_pernikahan_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
