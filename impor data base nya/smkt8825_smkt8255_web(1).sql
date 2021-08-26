-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2021 at 06:26 PM
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
-- Database: `smkt8825_smkt8255_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(4, 'LKS Provinsi 2020', '2020-04-02 02:13:38', 'LKS Provinsi Jatim dilaksanakan di Kabupaten Tulungagung. 10 Bidang Lomba di SMKN 1 Boyolangu. (Tourism Industry, Chemical Analysis, 3D Game Art, Cloud Computing, Graphic Design Technology, IT Network System Administrasi, IT Software Distribution, Web Technology, Telcom Industry Technology, Alfamart Class)', '2020-01-27', '2020-01-30', 'SMK Negeri 1 Boyolangu', '07.00 - 18.00 WIB', '', 'Admin'),
(5, 'HUT SMKN 1 Boyolangu ke 48', '2020-04-02 02:20:44', 'HUT SMKN 1 Boyolangu ke-48 dilaksanakan dari tanggal 19 - 22 Februari 2020. Di tanggal 22 Februari 2020 ada peresmian gedung baru revit oleh Bapak Direktur PSMK Kemendikbud, Bapak Dr. M. Bakrun, MM. Peresmian gedung bantuan pemrov oleh Kabid PSMK Dinas Provinsi Jawa Timur, Bapak Dr.Suhartono, M.Pd. Peresmian gedung ELC oleh Bapak Bupati Tulungagung, Bapak Drs. Maryoto Birowo, MM.', '2020-02-19', '2020-02-22', 'SMK Negeri 1 Boyolangu', '07.00 - 18.00 WIB', '', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(6, 'Esemkita Peduli Covid-19', '2020-04-02 01:48:14', 1, 'Admin', 5, 'd69244aa633f839623bfea4151517f7f.jpg'),
(7, 'Peresmian Gedung CCIC, Lab Kimia Industri dan Lab ', '2020-04-02 01:53:35', 1, 'Admin', 1, '182d02c8a35587f115a70d6d10980ea7.jpg'),
(8, 'Kegiatan Religius Siswa', '2020-04-02 01:56:31', 1, 'Admin', 3, 'cfcd9121a1afc957139ca7e024a9646b.jpg'),
(9, 'Juara LKS Provinsi Jatim', '2020-04-02 02:00:01', 1, 'Admin', 2, '8766ebac24ceb27a2973999be065b192.jpg'),
(10, 'Kreasi Siswa', '2020-04-02 02:05:18', 1, 'Admin', 1, '4f9194dd2895dbde46062c55c6065265.jpg'),
(11, 'Guru Tamu', '2020-04-02 02:10:28', 1, 'Admin', 0, 'b4940fa1bd6c01a07a8c1944c69d81e3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(2, 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2020-01-22 21:30:01', 'Drs. Joko', 0, 'ab9a183ff240deadbedaff78e639af2f.pdf'),
(3, '14 Teknik Komunikasi Yang Paling Efektif', 'Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar', '2020-01-23 08:26:06', 'Drs. Joko', 0, 'ab2cb34682bd94f30f2347523112ffb9.pdf'),
(4, 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2020-01-23 08:27:07', 'Drs. Joko', 0, '30f588eb5c55324f8d18213f11651855.pdf'),
(5, '7 Tips Penting mengatasi Kritik', '7 Tips Penting mengatasi Kritik', '2020-01-23 08:27:44', 'Drs. Joko', 0, '329a62b25ad475a148e1546aa3db41de.docx'),
(6, '8 Racun dalam kehidupan kita', '8 Racun dalam kehidupan kita', '2020-01-23 08:28:17', 'Drs. Joko', 0, '8e38ad4948ba13758683dea443fbe6be.docx'),
(7, 'Jurnal Teknolgi Informasi', 'Jurnal Teknolgi Informasi', '2020-01-24 20:18:53', 'Junaedi, ST', 0, '87ae0f009714ddfdd79e2977b2a64632.pdf'),
(8, 'Jurnal Teknolgi Informasi 2', 'Jurnal Teknolgi Informasi', '2020-01-24 20:19:22', 'Junaedi, ST', 0, 'c4e966ba2c6e142155082854dc5b3602.pdf'),
(9, 'Naskah Publikasi IT', 'Naskah Teknolgi Informasi', '2020-01-24 20:21:04', 'Junaedi, ST', 0, '71380b3cf16a17a02382098c028ece9c.pdf'),
(10, 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2020-01-24 20:22:08', 'Junaedi, ST', 0, '029143a3980232ab2900d94df36dbb0c.pdf'),
(11, 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2020-01-24 20:22:54', 'Junaedi, ST', 0, 'ea8f3f732576083156e509657614f551.pdf'),
(12, 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2020-01-24 20:23:21', 'Junaedi, ST', 0, 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(20, 'Baksos pembagian hand sanitizer ke warga sekitar SMKN 1 Boyo', '2020-04-02 01:48:54', '1355e1937e386535830e07b9abaacd0a.jpg', 6, 1, 'Admin'),
(21, 'Semangat Team ESEMKITA dalam Baksos semprot disinfektan ke w', '2020-04-02 01:49:46', '5b6f42fd07374eb24c5983a0bc50752b.jpg', 6, 1, 'Admin'),
(22, 'Persiapan Baksos penyemprotan disinfektan oleh team DLH, Roh', '2020-04-02 01:50:26', '5b2b2376cf5bfabfef3bbc48994f54f1.jpg', 6, 1, 'Admin'),
(23, 'Penyemprotan disinfektan di dalam sekolah SMKN 1 Boyolangu o', '2020-04-02 01:51:17', 'bd99386a1ef32a044c0afe3066867baa.jpg', 6, 1, 'Admin'),
(24, 'Penyemprotan disinfektan ke lokasi Kampung Bahasa SMKN 1 Boy', '2020-04-02 01:51:48', '380c3a471eb30bf100cc422f8222867c.jpg', 6, 1, 'Admin'),
(25, 'Peresmian laboratorium dan gedung baru bantuan renovasi dan ', '2020-04-02 01:54:11', '06e4b5e201f07023a5cac8a39d023e3c.jpg', 7, 1, 'Admin'),
(26, 'Istighosah Kubro keluarga besar SMKN 1 Boyolangu dalam rangk', '2020-04-02 01:57:19', 'e2387aab204e9efd988db7a0af98f296.jpg', 8, 1, 'Admin'),
(27, 'maulid nabi muhammad 8 November 2019 Dengan mengusunh tema M', '2020-04-02 01:58:13', '348d9f131cf3ba507eb79dc2131a0e33.jpg', 8, 1, 'Admin'),
(28, 'maulid nabi muhammad 8 November 2019 Dengan mengusunh tema M', '2020-04-02 01:58:32', 'de95b5a20f6cb28289d5de352e07f658.jpg', 8, 1, 'Admin'),
(29, 'Selamat untuk Citra Intan Yuliani berhasil meraih Juara 3 Bi', '2020-04-02 02:00:29', 'deaf96f8049db29a110cf49afa358055.jpg', 9, 1, 'Admin'),
(30, ' Selamat kepada SILVIA LARASATUL MASYITOH meraih Juara 1 Bid', '2020-04-02 02:01:00', '3fe2539ab406b44f97a46532265dcaa2.jpg', 9, 1, 'Admin'),
(31, 'Lomba busana kreasi dari bahan daur ulang dalam rangka HUT K', '2020-04-02 02:06:12', '8ba02cc55c76b1b05ff7f3cdf14afe35.jpg', 10, 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(1, '196710072008011008', 'Junaedi, ST', 'L', 'Tulungagung', '7 Oktober 1967', 'Rekayasa Perangkat Lunak', '41a7b715fff791e7ebeee2dab2b6150f.jpg', '2017-01-26 00:49:43'),
(2, '198504182010012031', 'Ruly Dwi Setyaningrum, S.Kom', 'P', 'Madiun', '18 April 1985', 'Rekayasa Perangkat Lunak', '0cc1b6aefacc2d7c8d8d368dff3f330d.jpg', '2017-01-26 06:38:54'),
(9, '197608262010012010', 'Ayu Puspitorini, ST', 'P', 'Tulungagung', '26 Agustus 1976', 'Kimia Industri', '38c6fa2671095353d7400707241e9e7a.jpg', '2020-03-17 20:07:26'),
(10, '198010262010012016', 'Diana Hartanti , ST', 'P', 'Tulungagung', '26 Oktober 1980', 'Kimia Industri', '8da33f5ebdca5b46958241bbe7ced1fd.jpg', '2020-03-17 21:26:26'),
(11, '196909152008012028', 'Atih Wilupi, SE', 'P', 'Tulungagung', '15 September 1969', 'Akuntansi', 'fa1dc7aaf134d987f3891f19f3df9028.jpg', '2020-03-17 21:30:14'),
(12, '19840222200902007', 'Ratih Dian Irawati, SE', 'P', 'Tulungagung', '22 Februari 1984', 'BDP', '4b762cec3f150e01faf97b31c3faf7c8.jpg', '2020-03-18 00:16:55'),
(13, '196103011987102001', 'Dra. Endah Sunarmi', 'P', 'Tulungagung', '1 Maret 1961', 'BDP', 'fb868da8343e2b3000af35642e48b115.jpg', '2020-03-18 00:19:18'),
(14, '196612071994121003', 'Yani, S.Pd, MM', 'L', 'Tulungagung', '7 Desember 1966', 'Bahasa Indonesia', 'aef3c325f3a72dfce82fa3388e58901d.jpg', '2020-03-18 00:21:35'),
(15, '197003042005012006', 'Sri Rahayu, S.Pd', 'P', 'Tulungagung', '4 Maret 1970', 'Bahasa Indonesia', '6d3d6ad8c98ff8dae269f46d9775ee7f.jpg', '2020-03-18 00:22:58'),
(16, '197010171997032004', 'Dwi Rini Manfaati, S.Pd', 'P', 'Tulungagung', '17 Oktober 1970', 'Bahasa Inggris', 'ff9e6678bd1cb1675360ceb4d53608a1.jpg', '2020-03-18 00:24:57'),
(17, '196501041987032010', 'Rita Aniswati, S.Pd', 'P', 'Tulungagung', '4 Januari 1965', 'Bahasa Inggris', 'e824ef7fc83c48eb4e06b809231c5be9.jpg', '2020-03-18 00:26:26'),
(18, '197802022006042027', 'Isti Mufadah, S.Pd', 'P', 'Tulungagung', '2 Februari 1978', 'Bahasa Inggris', '684e3870bb836d014e73196b6366b736.jpg', '2020-03-18 00:28:04'),
(19, '196704212007011026', 'Basuki Sarjono, S.Pd', 'L', 'Tulungagung', '21 April 1967', 'Matematika', '68ec30a0c1709599cb4dc80ea5881300.jpg', '2020-03-18 00:31:23'),
(20, '197204042006041015', 'Sudibyo, S.Pd', 'L', 'Tulungagung', '4 April 1972', 'Matematika', '37ebfbebb00863cdcc221bb96df2570d.jpg', '2020-03-18 00:32:48'),
(21, '198007232010012016', 'Elysa Yuli Nur\'aini, S.Si', 'P', 'Tulungagung', '23 Juli 1980', 'Matematika', 'f2ec35d2bee4bba2340c00e113454439.jpg', '2020-03-18 00:41:50'),
(22, '197803182011012004', 'Siti Afidah, S.Kom', 'P', 'Tulungagung', '18 Maret 1978', 'Multimedia', '605e1b01b274c9c7154481142de6bcb6.jpg', '2020-03-18 00:44:42'),
(23, '197607192009011003', 'Benny Mamora, S.Kom', 'L', 'Tulungagung', '19 Juli 1976', 'Multimedia', '852e774300623a93ccbdbe2b4b2574d1.jpg', '2020-03-18 00:46:11'),
(24, '198301132009011003', 'Masan Widodo, S.Pd', 'L', 'Tulungagung', '13 Januari 1983', 'Multimedia', '28f49cc99ab28cc1eecfe5dd88bedca2.jpg', '2020-03-18 00:47:29'),
(25, '197001051995122001', 'Endang Purnawati, S.Pd', 'P', 'Tulungagung', '5 Januari 1970', 'OTKP', '11b8a31196e214319a354ebd1d66808a.jpg', '2020-03-18 00:50:43'),
(26, '196908142007012026', 'Lilik Suratmi, S.Pd', 'P', 'Tulungagung', '14 Agustus 1969', 'OTKP', 'ca3123e23104cd8a4954261667cefcb4.jpg', '2020-03-18 01:03:54'),
(27, '197306012006042024', 'Peni Wulandari', 'P', 'Tulungagung', '1 Juni 1973', 'OTKP', '734e84721e78fea31aac03a5b49f8240.jpg', '2020-03-18 01:05:49'),
(28, '198202042011012006', 'Listyana Hartati, S.Kom', 'P', 'Tulungagung', '4 Februari 1982', 'TKJ', 'ad5723c77e6c05ba694223d20d69badb.jpg', '2020-03-18 01:08:40'),
(29, '197602102008012017', 'Endang Ary Handayani, ST', 'P', 'Tulungagung', '10 Februari 1976', 'TKJ', '42e22aa96ad4af57aeced0a5fcd6cad3.jpg', '2020-03-18 01:10:04'),
(30, '197704262010012008', 'Siswanti Purwaningsih, ST', 'P', 'Tulungagung', '26 April 1977', 'TKJ', 'dae34c0321b8c48879b8a1d0d7e35cb4.jpg', '2020-03-18 01:11:28'),
(31, '196812052007011025', 'Drs. Agus Supriyadi', 'L', 'Tulungagung', '5 Desember 1968', 'BDP', '14a6973ed75e6732b85202dd254ca5df.jpg', '2020-03-18 18:07:03'),
(32, '197703062011011003', 'Ary Sunaryo, ST', 'L', 'Tulungagung', '6 Maret 1977', 'TKJ', 'cea411e7f396158b2f857eb02ae801a1.jpg', '2020-03-18 18:08:42'),
(33, '198702172011012012', 'Dhuana Putri Puspitasary, S.Pd', 'P', 'Malang', '17 Februari 1987', 'Animasi', '8cc610c729412f59623416b0cd013c9d.jpg', '2020-03-18 18:11:18'),
(34, '199009072019031004', 'Erwan Septiyono, S.Pd', 'L', 'Tulungagung', '7 September 1990', 'Animasi', '9d0b39bf13eb3513a7e4749afe3aa28a.jpg', '2020-03-18 18:12:53'),
(35, '196401051986022008', 'Dra. Tarlianah', 'P', 'Tulungagung', '5 Januari 1964', 'PPKn', '8e661b877cf5927f6a8dffc9acb99bac.jpg', '2020-03-18 20:38:24'),
(36, '196601031993032007', 'Dra. Sri Sulistri', 'P', 'Tulungagung', '3 Januari 1966', 'OTKP', 'f0c5c417c93a3742f1f73a5ed1a801c2.jpg', '2020-03-18 20:40:51'),
(37, '196311231994122001', 'Dra. Sunik Sriani', 'P', 'Tulungagung', '23 Nopember 1963', 'AKL', '9fc51065937b560e9fdac0af9a0dd5e9.jpg', '2020-03-18 20:43:31'),
(38, '197008251995122001', 'Siti Umiharsih, S.Pd', 'P', 'Tulungagung', '25 Agustus 1970', 'PKK', '3bbbddec9fc4287298f6655695527fe5.jpg', '2020-03-18 20:45:32'),
(39, '19620901 1988032006', 'Nafiah Yunari, S.Pd', 'P', 'Tulungagung', '1 September 1962', 'PPKn', '8917b34083a8f2bd29dee1138ca650c3.jpg', '2020-03-18 20:48:02'),
(40, '196504011990032011', 'Dra. Rupiah', 'P', 'Tulungagung', '1 April 1965', 'Sejarah Indonesia', '95b58e5bb7ae1ea3553a9cadb92eff11.jpg', '2020-03-18 20:49:50'),
(41, '196412252000122001', 'Dra. Dwi Retno Utami', 'P', 'Tulungagung', '25 Desember 1964', 'PJOK', '7cc097593741d1f04498c38ad8e3547c.jpg', '2020-03-18 20:52:19'),
(42, '197503042006042017', 'Arvia Rienetasary, S.Pd', 'P', 'Tulungagung', '4 Maret 1975', 'Matematika', '6ffe49bf5201f4186c2c6bd175cd2968.jpg', '2020-03-18 20:54:30'),
(43, '198211032010012025', 'Dwi Nova Setyandari, S.Pd', 'P', 'Tulungagung', '3 Nopember 1982', 'Matematika', '46965312115038abf2d068728f50b11c.jpg', '2020-03-18 20:56:03'),
(44, '198003292009012006', 'Lutfia Marsalina, S.Pd.I', 'P', 'Tulungagung', '29 Maret 1980', 'Matematika', '2d3111b56a4f1e5ae12c09b986c0ee41.jpg', '2020-03-18 20:58:26'),
(45, '196811282005012004', 'Dra. Anik Indriani', 'P', 'Tulungagung', '28 Nopember 1968', 'Sejarah Indonesia', '53004492cfdfff60105a3fa69f03a8ca.jpg', '2020-03-18 21:00:59'),
(46, '197105202006042018', 'Erna Rinawati, S.Pd', 'P', 'Tulungagung', '20 Mei 1971', 'Bahasa Indonesia', '538ea30b9341ef8579e32d62c53a3bf6.jpg', '2020-03-18 21:02:32'),
(47, '197003252003122007', 'Winarsih, S.Pd, M.Pd', 'P', 'Tulungagung', '25 Maret 1970', 'BP/BK', '15c9d9cf2c92a7c75815720460d556c2.jpg', '2020-03-18 21:10:50'),
(48, '196904252007012025', 'Umi Kulsum, S.Pd', 'P', 'Tulungagung', '25 April 1969', 'Bahasa Indonesia', 'c0cf168f3422639316e767aa271153dd.jpg', '2020-03-18 21:12:19'),
(49, '196911262007012007', 'Rulik Indrawati, S.Pd', 'P', 'Tulungagung', '26 Nopember 1969', 'Matematika', 'c2da30a4ce90161ea11cb258d7db3105.jpg', '2020-03-18 21:14:16'),
(50, '196505252007012025', 'Resmiati, S.Pd', 'P', 'Tulungagung', '25 Mei 1965', 'Matematika', 'a40caeae9a84f31a48a58cc5b5e8fb7e.jpg', '2020-03-18 21:16:12'),
(51, '197301082006042015', 'Sunarti, S.Pd', 'P', 'Tulungagung', '8 Januari 1973', 'OTKP', '2cc4d3737b9f36c311054180b9b8d635.jpg', '2020-03-18 21:17:52'),
(52, '197310012006042012', 'Indayah, S.Pd', 'P', 'Tulungagung', '1 Oktober 1973', 'AKL', '169d15691c51dac992fb9c614e479afa.jpg', '2020-03-18 21:19:16'),
(53, '197504092007012010', 'Ninik Sriwidayati, S.Pd', 'P', 'Tulungagung', '9 April 1975', 'Akuntansi', '8e457349a33be6839447c2d53a9870ae.jpg', '2020-03-18 21:21:11'),
(54, '196503091992022001', 'Dra. Laili Jumarti', 'P', 'Tulungagung', '9 Maret 1965', 'PPKn', '8b3e3f16171969e8cb28d88d5e17fd01.jpg', '2020-03-18 21:23:10'),
(55, '196304272007011003', 'Drs. Mudori', 'L', 'Tulungagung', '27 April 1963', 'Pendidikan Agama Islam', 'c5b0600de68993541319accb3d199679.jpg', '2020-03-18 21:27:35'),
(56, '197008242008011008', 'Ilham Sungeidi, S.Pd', 'L', 'Tulungagung', '24 Agustus 1970', 'PJOK', '2b1a215d7ac88f9f6c3b7c3a38bfff44.jpg', '2020-03-18 21:36:25'),
(57, '196206252008011001', 'Djoko Edi Yuwono, S.Pd', 'L', 'Tulungagung', '25 Juni 1962', 'BP/BK', '44670596b8b0332c428959b4c19f5ec9.jpg', '2020-03-18 21:40:17'),
(58, '196808252008012019', 'Titik Samsistini, S.Pd', 'P', 'Tulungagung', '25 Agustus 1968', 'OTKP', '3ed038cf5f01e85f8441dc57f6009def.jpg', '2020-03-18 21:42:01'),
(59, '196306082008012001', 'Raden Rara Soerjarini, S.Pd', 'P', 'Tulungagung', '8 Juni 1963', 'Bahasa Inggris', 'f3d3636af5d7da56a0a3e07cdbb9db8c.jpg', '2020-03-18 21:43:37'),
(60, '196910242008011009', 'Alifi, S.Pd', 'L', 'Tulungagung', '24 Oktober 1969', 'PJOK', 'f0a1ef6af7eb099ae5d928417e3f8200.jpg', '2020-03-18 21:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(2, 'Purbo', 'purbo@gmail.com', '-', 'Ping !', '2019-10-21 06:44:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(250) NOT NULL,
  `logo_jurusan` varchar(40) NOT NULL,
  `deskripsi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jurusan`, `nama_jurusan`, `logo_jurusan`, `deskripsi`) VALUES
(1, 'Produksi Dan Siaran Program Televisi', '21de01c52a54f3c48d0093314783529e.jpg', 'Produser, Sutradara, Cameramen, Fotografer, Jurnalis, Editor, Reporter, Presenter, Praktisi Advertising, Script Writer, Video Blogger, Melanjutkan ke Perguruan Tinggi.'),
(2, 'Desain Komunikasi Visual', 'f69288ef8fb7a5004b520785e6767756.jpg', 'Desainer, Ilustrator, Fotografer, Biro Iklan, Percetakan, Editing Video, Industri Kreatif, Melanjutkan ke Perguruan Tinggi.'),
(3, 'Animasi', '68439514af9d4474103836a70f4e9dee.jpg', 'Storyboard Artist, 2D Artist, 3D Artist, Texture Artist, Gambar karakter / Drawing Artist, Membuat Game Design dan Game Writer, Gambar Interior dan Eksterior, Melanjutkan ke Perguruan Tinggi.'),
(4, 'Kimia Indrustri', '9c3bd95539d6188176f942366b2dc10d.JPG', 'Wirausaha dalam skala home industry (detergen, sabun mandi, hand soap, shampoo, minyak atsiri, VCO), Bekerja di perusahaan yang menggunakan bahan kimia ( pabrik cat, parfum, textile, makanan, minuman, petrokimia), Melanjutkan ke Perguruan Tinggi'),
(5, 'Rekayasa Perangkat Lunak', '907ad0f7d3f4c265d2ae69cf266d6ab7.jpg', 'Programmer, Software Engineer, Web Spesialis, Web Developer, Web Designer, Web Progammer, Database Engineer Administrator & Analisis, Software Tester, Software Developer, Game Developer, Konsultan IT, System Analisis, Melanjutkan ke Perguruan Tinggi'),
(6, 'Multimedia', '17951ce8563b7ae6785fdfd12cc72225.jpg', 'Fotografer, Editing Video, Editing Audio, Sutradara, Desainer, Biro Iklan, Melanjutkan ke Perguruan Tinggi. '),
(7, 'Tekhnik Komputer Jaringan', '91b0af45deea81185c709ec291a33f29.jpg', 'Computer Integrator, Integrator Jaringan, Network Administrator, Wireles Administrator, Administrasi Server, Melanjutkan ke Perguruan Tinggi. '),
(8, 'Bisnis Daring dan Pemasaran', 'e51f4b1daed2e8820741b3641a17265e.jpg', 'Berwirausaha Ritail, Tenaga Marketing, Tenaga Visula Merchandasing, Khusus Alfamart Class 100% menjadi Staf dan Karyawan PT.Alfamart, Melanjutkan ke Perguruan Tinggi.'),
(9, 'Administrasi Tata Kelola Perkantrotan', '40a8d9dbb7ca3f284b170831615f0e5c.jpg', 'Berwirausaha, Staf Administrasi, Recepsionis, Sekretaris Yunior, Arsiparis, Tata Usaha, Melanjutkan ke Perguruan Tinggi.'),
(10, 'Usaha Perjalanan Wisata', '161f737305a5888bdcd5905d9b0eedc1.jpg', 'Biro Perjalanan Wisata (Ticketing Staf dan Tour Planning), Guiding (Pemandu Wisata), Mice (Membuat acara), Industri Perhotelan, Melanjutkan ke Perguruan Tinggi.'),
(11, 'Rekayasa Perangkat Lunak', '0563d60f72ae484f343e47f8f2ad4f50.jpg', 'Programmer, Software Engineer, Web Spesialis, Web Developer, Web Designer, Web Progammer, Database Engineer Administrator & Analisis, Software Tester, Software Developer, Game Developer, Konsultan IT, System Analisis, Melanjutkan ke Perguruan Tinggi'),
(12, 'Akuntansi dan Keuangan Lembaga ', '0a8d32e9f3cd39d1b2fec355c067008b.jpg', 'Akuntan Pemerintah maupun Swasta, Juru Penggaji, Kasir, Penyusun Laporan Keuangan, Administrasi Keuangan, Melanjutkan ke Perguruan Tinggi.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-05 22:49:04'),
(2, 'Politik', '2016-09-05 22:50:01'),
(3, 'Sains', '2016-09-05 22:59:39'),
(5, 'Penelitian', '2016-09-05 23:19:26'),
(6, 'Prestasi', '2016-09-06 19:51:09'),
(13, 'Olah Raga', '2017-01-13 06:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas X.1'),
(2, 'Kelas X.2'),
(3, 'Kelas X.3'),
(4, 'Kelas X.4'),
(5, 'Kelas X.5'),
(6, 'Kelas X.6'),
(7, 'Kelas X.7'),
(8, 'Kelas XI IPA.1'),
(9, 'Kelas XI IPA.2'),
(10, 'Kelas XI IPA.3'),
(11, 'Kelas XI IPA.4'),
(12, 'Kelas XI IPA.5'),
(13, 'Kelas XI IPA.6'),
(14, 'Kelas XI IPA.7'),
(15, 'Kelas XI IPS.1'),
(16, 'Kelas XI IPS.2'),
(17, 'Kelas XI IPS.3'),
(18, 'Kelas XI IPS.4'),
(19, 'Kelas XI IPS.5'),
(20, 'Kelas XI IPS.6'),
(21, 'Kelas XI IPS.7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(1, 'Rara', 'rara098@gmail.com', ' Nice Post.', '2019-10-21 08:09:07', '1', 24, 0),
(3, 'Joko', 'joko@gmail.com', 'Thank you.', '2019-10-21 07:15:56', '1', 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Admin', 'Just do it', 'L', 'admin', '34c261f03fda37b52d22bff1a151a7d7', 'I am a mountainner. to me mountainerring is a life', 'admin@gmail.com', '081277159401', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-02 23:07:55', 'd2a0b3c48c49233554ffe939f95e2b03.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(3, 'Pengumuman Peresmian dan Launching Website Perdana SMKN 1 Boyolangu', 'Peresmian dan launching website resmi SMKN 1 Boyolangu akan diadakan pada hari 23 Desember 2016 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2016-2017', '2017-01-22 00:16:16', 'Admin'),
(4, 'Pengumuman Proses Belajar Mengajar di Semester Genap Tahun Ajaran 2019-2020', 'Pengumuman Proses Belajar Mengajar di Semester Genap Tahun Ajaran 2019-2020', '2017-01-22 00:15:28', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 01:04:59', '::1', 'Chrome'),
(931, '2019-10-21 09:17:12', '127.0.0.1', 'Firefox'),
(932, '2019-10-22 05:57:32', '::1', 'Firefox'),
(933, '2019-10-23 08:16:14', '::1', 'Firefox'),
(934, '2019-10-23 18:39:28', '127.0.0.1', 'Firefox'),
(935, '2019-10-25 01:46:23', '::1', 'Firefox'),
(936, '2019-10-26 19:58:08', '::1', 'Chrome'),
(937, '2019-10-28 02:00:17', '::1', 'Chrome'),
(938, '2019-10-29 08:33:17', '::1', 'Firefox'),
(939, '2019-10-30 07:39:53', '::1', 'Chrome'),
(940, '2019-11-08 21:26:20', '::1', 'Chrome'),
(941, '2019-11-12 06:27:14', '::1', 'Chrome'),
(942, '2019-11-12 21:14:16', '::1', 'Chrome'),
(943, '2019-11-13 18:42:31', '::1', 'Chrome'),
(944, '2019-11-13 22:54:29', '192.168.0.100', 'Chrome'),
(945, '2019-11-13 22:56:05', '192.168.0.113', 'Chrome'),
(946, '2019-11-14 07:58:13', '192.168.43.43', 'Chrome'),
(947, '2019-11-17 23:44:40', '::1', 'Chrome'),
(948, '2020-01-30 05:34:50', '::1', 'Opera'),
(949, '2020-02-16 07:32:50', '::1', 'Opera'),
(950, '2020-03-17 04:35:02', '::1', 'Firefox'),
(951, '2020-03-17 10:17:03', '::1', 'Firefox'),
(952, '2020-03-18 13:12:10', '::1', 'Firefox'),
(953, '2020-03-23 14:14:32', '::1', 'Firefox'),
(954, '2020-03-27 05:25:36', '::1', 'Firefox'),
(955, '2020-03-30 00:24:59', '::1', 'Firefox'),
(956, '2020-04-01 07:03:35', '::1', 'Firefox'),
(957, '2020-04-01 07:03:35', '::1', 'Firefox'),
(958, '2020-04-01 14:17:54', '::1', 'Firefox');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sarpras`
--

CREATE TABLE `tbl_sarpras` (
  `id_sarpras` int(11) NOT NULL,
  `nama_sarpras` varchar(250) NOT NULL,
  `gambar_sarpras` varchar(40) NOT NULL,
  `deskripsi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(1, '9287482', 'Alvaro Sanchez', 'L', 8, '083d547659a2d4bb15c0322d15955da5.png'),
(2, '9287483', 'Ririn Cantika', 'P', 8, '74eec6ad37550cc12fe8fa83d46878af.jpg'),
(4, '123083', 'Ari Hidayat', 'L', 1, 'e371e67618ad53c99de380782c373023.png'),
(5, '123084', 'Irma Chaiyo', 'P', 1, '1e148b42c71562841ba3018fc97b748a.png'),
(6, '123085', 'Nadila Ginting', 'P', 1, '8125da21f903803b6992214967239ab3.png'),
(7, '123086', 'Anna Marina', 'P', 1, '33eaf3e3faf28a0fe31670c022f641f1.png'),
(8, '123086', 'Dhea Lubis', 'P', 1, '03e651410e969c3c26e8e0d35380470d.png'),
(9, '123087', 'Nadia Ginting', 'P', 1, 'd7823f8d98d376c085aa284a54d63264.png'),
(10, '123088', 'Mita Febrina', 'P', 1, 'eca0280a4a57c911ee68b8318d1e517f.png'),
(11, '123089', 'Elizabeth ', 'P', 1, 'ec1232a08d650bc8c3197c9db95a7fc8.png'),
(12, '123090', 'Della Guswono', 'P', 1, '6c82fce13bb3eff1fd2e897b2c3cfeeb.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(20, 'Persiapan siswa menjelang UNBK', '<p>Banyak metode bejalar yang dilakukan oleh siswa untuk persiapan menghadapi ujian nasional (UN).</p>\r\n', '2020-03-17 02:24:42', 1, 'Pendidikan', 31, '9ec2e21a8478704e662063dd662dd8e7.jpg', 1, 'Admin', 0, 'persiapan-siswa-menjelang-unbk'),
(22, 'Prestasi membangga dari Peserta Didik SMKN 1 Boyolangu', '<p>Prestasi dan penghargaan merupakan trigger (pemicu) semangat belajar siswa. Ada banyak prestasi yang telah diraih oleh siswa m-sekolah. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2020-03-17 02:38:21', 6, 'Prestasi', 3, 'b40936792f975773f2da6c124901840c.jpg', 1, 'Admin', 0, 'prestasi-membangga-dari-peserta-didik-smkn-1-boyolangu'),
(23, 'Pelaksanaan Ujian Nasional di SMKN 1 Boyolangu', '<p>Pelaksanaan UN (Ujian Nasional) di SMK Negeri 1 Boyolangu Dapat Berjalan Dengan Lancar</p>\r\n', '2020-03-17 02:41:30', 1, 'Pendidikan', 10, '3b413e76c7b5211fe0a0b510f5f018d1.jpg', 1, 'Admin', 0, 'pelaksanaan-ujian-nasional-di-smkn-1-boyolangu'),
(24, 'Proses belajar mengajar di SMKN 1 Boyolangu', '<p>Proses belajar mengajar di sekolah m-sekolah berlangsung menyenangkan. Didukung oleh instruktur yang fun dengan metode mengajar yang tidak biasa. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel a Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel .</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2020-03-17 02:46:29', 1, 'Pendidikan', 167, 'b4de94616ae45eac3d4800a71c4d54f4.jpg', 1, 'Admin', 0, 'proses-belajar-mengajar-di-smkn-1-boyolangu'),
(25, 'Penggunaan salam di lingkungan', '<p>penggunaan salam di lingkungan</p>\r\n', '2020-03-08 06:26:08', 5, 'Penelitian', 78, 'a0b99616241c9aded7f2a02661798d98.jpg', 1, 'Admin', 0, 'penggunaan-salam-di-lingkungan'),
(26, 'Penyuluhan Bimbingan Jabatan Siswa kelas XII SMKN 1 Boyolangu oleh Disnakertrans Kabupaten Tulungagu', '<p>Kegitan Penyuluhan Bimbingan Jabatan Bagi Siswa Kelas XII SMKN 1 Boyolangu oleh DISNAKERTRANS Kabupaten Tulungagung dilaksanakan di Aula SMKN 1 Boyolangu pada tanggal 19 – 20 November 2020. Kegiatan yang dilaksanakan selama dua hari ini diikuti oleh siswa siswi kelas XII SMKN 1 Boyolangu dan dibagi menjadi tiga sesi, dimana pada hari pertama (Hari Kamis, 19 November 2020) sebanyak dua sesi dan pada hari kedua (Hari Jum’at, 20 November 2020) hanya satu sesi.\r\nAcara dibuka dengan menyanyikan lagu Indonesia Raya dilanjutkan sambutan dari Kepala Sekolah yang dalam hal ini diwakilkan oleh Waka Humas, Ibu Diana Hartanti, S.T. kemudian dilanjutkan pemaparan singkat dari Bapak Parjono, S.H. dari DISNAKERTRANS Kabupaten Tulungagung sekaligus membuka acara Penyuluhan Bimbingan Jabatan Bagi Siswa Kelas XII SMKN 1 Boyolangu. \r\nNarasumber yang dihadirkan dalam kegiatan ini mengundang dari DISNAKERTRANS Provinsi Jawa Timur, Ibu Noor Rahayu Agustinawati, S.Psi, M.Psi. Materi yang disampaikan tentang Peluang dan Tantangan Dunia Kerja di Era Adaptasi Kebiasaan Baru, diantaranya meliputi :\r\na. Memahami potensi diri\r\nb. Pemahaman informasi tentang persiapan mental (softskill)\r\nc. Informasi tentang pasar kerja yang tersedia\r\nd. Syarat-syarat lowongan pekerjaan yang dibutuhkan\r\ne. Mengetahui ketrampilan yang harus dimiliki untuk mendapatkan lowongan pekerjaan\r\nf. Mengetahui tempat-tempat pelatihan ketrampilan dan bidang/jurusan yang tersedia\r\ng. Mengetahu dan memahami prosedur dan mekanisme membuat surat lamaran kerja\r\nh. Informasi strategi menghadapi wawancara dan tes seleksi kerja\r\ni. Dll\r\nHarapannya dengan adanya kegiatan ini, peserta didik kelas XII SMKN 1 Boyolangu mendapatkan informasi yang akurat agar bisa mempersiapkan diri dalam memasuki dunia kerja.<p>\r\n', '2020-11-20 02:22:59', 1, 'Pendidikan', 245, 'penyuluhan.jpg', 1, 'admin', 0, 'penyuluhan-bimbingan-jabatan-siswa-kelas-XII-SMKN-1-Boyolangu-oleh-disnakertrans-kabupaten-tulungagung');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indexes for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_sarpras`
--
ALTER TABLE `tbl_sarpras`
  ADD PRIMARY KEY (`id_sarpras`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=959;

--
-- AUTO_INCREMENT for table `tbl_sarpras`
--
ALTER TABLE `tbl_sarpras`
  MODIFY `id_sarpras` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
