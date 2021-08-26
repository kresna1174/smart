-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2021 at 06:19 PM
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
-- Database: `smkt8825_smea_humas`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_quesioner`
--

CREATE TABLE `detail_quesioner` (
  `id` int(11) NOT NULL,
  `quesioner_id` int(11) NOT NULL,
  `pertanyaan` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_quesioner`
--

INSERT INTO `detail_quesioner` (`id`, `quesioner_id`, `pertanyaan`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kemampuan siswa / alumni berkomunikasi ?', '2020-05-04 08:33:54', NULL),
(2, 1, 'Kejujuran dan sikap perilaku Kamu ?', '2020-05-04 08:33:54', NULL),
(3, 1, 'Kamu Perempuan ?', '2020-05-05 09:29:19', NULL),
(6, 1, 'Apakah Anda Puas Dengan Pelayanan Kami ?', '2020-05-06 02:04:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `nip` varchar(20) NOT NULL,
  `email` varchar(155) DEFAULT NULL,
  `nama` varchar(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`nip`, `email`, `nama`, `created_at`, `updated_at`) VALUES
('18980418201707010090', 'lilycute64@yahoo.com', 'LAILI ERMAWATI', '2020-10-02 06:37:56', NULL),
('196103011987102001', 'endahsunarmi1961@gmail.com', 'Endah Sunarmi', '2020-10-02 06:37:55', NULL),
('196203171989031009', 'suyono396@gmail.com', 'Drs. Suyono,S.Pd.,M.M.', '2020-10-02 06:37:55', NULL),
('196205122008012005', 'utiretno41@gmail.com', 'Dwi Retno Utami', '2020-10-02 06:37:56', NULL),
('196206252008011001', 'djokoey@gmail.com', 'Djoko Edi Yuwono', '2020-10-02 06:37:56', NULL),
('196209011988032006', 'nafiahyunari@gmail.com', 'Nafiah Yunari', '2020-10-02 06:37:55', NULL),
('196304141990051001', 'smkngunut@gmail.com', 'Prih Hariyanto', '2020-10-02 06:37:56', NULL),
('196304272007011003', 'mudhori_imam@yahoo.com', 'Mudori', '2020-10-02 06:37:56', NULL),
('196305261985121002', 'ediwinarto260@gmail.com', 'EDI WINARTO,  S.Pd', '2020-10-02 06:37:56', NULL),
('196306082008012001', 'soerjarini@gmail.com', 'RR. SOERJARINI, S.Pd.', '2020-10-02 06:37:56', NULL),
('19631108 198412 2 00', 'arikekolestari2016@gmail.com', 'Arik eko Lestari', '2020-10-02 06:26:33', NULL),
('196311081984122007', 'arikekolestari2016@gmail.com', 'Arik eko Lestari', '2020-10-02 06:37:55', NULL),
('196311231994122001', 'srianisunik@gmail.com', 'Sunik Sriani', '2020-10-02 06:37:55', NULL),
('196401051986022008', 'tarlik.smkn1@gmail.com', 'Tarli\'anah', '2020-10-02 06:37:55', NULL),
('196409251990032007', 'sumiyatinjos@gmail.com', 'Sumiyatin, S.Pd', '2020-10-02 06:37:56', NULL),
('19641022200801020087', 'sriwidodom2@gmail.com', 'SRI WIDODO MARYANTO', '2020-10-02 06:20:09', NULL),
('19641225 200012 2 00', 'dwiretnoutami64@yahoo.co.id', 'Dwi Retno Utami', '2020-10-02 06:20:09', NULL),
('196412252000122001', 'dwiretnoutami64@yahoo.co.id', 'Dwi Retno Utami', '2020-10-02 06:37:55', NULL),
('19650104 198703 2010', 'ritaesemkita@gmail.com', 'Rita Aniswati', '2020-10-02 06:20:09', NULL),
('196501041987032010', 'ritaesemkita@gmail.com', 'Rita Aniswati', '2020-10-02 06:37:55', NULL),
('19650309 199202 2 00', 'lailijumarti33@gmail.com', 'Laili Jumarti', '2020-10-02 06:20:09', NULL),
('196503091992022001', 'lailijumarti33@gmail.com', 'Laili Jumarti', '2020-10-02 06:37:55', NULL),
('19650401 199003 2 01', 'rupiahdra@yahoo.co.id', 'Rupi\'ah', '2020-10-02 06:20:09', NULL),
('196504011990032011', 'rupiahdra@yahoo.co.id', 'Rupi\'ah', '2020-10-02 06:37:55', NULL),
('19650525 200701 2 02', 'resmiati1965@yahoo.com', 'Resmiati', '2020-10-02 06:20:09', NULL),
('196505252007012025', 'resmiati1965@yahoo.com', 'Resmiati', '2020-10-02 06:37:56', NULL),
('19651219 200701 1 01', 'imammohson@gmail.com', 'Imam Mohson', '2020-10-02 06:20:09', NULL),
('196512192007011016', 'imammohson@gmail.com', 'Imam Mohson', '2020-10-02 06:37:56', NULL),
('19660103 199303 2 00', 'srisulistri03@gmail.com', 'Dra. Sri Sulistri', '2020-10-02 06:20:09', NULL),
('196601031993032007', 'srisulistri03@gmail.com', 'Dra. Sri Sulistri', '2020-10-02 06:37:55', NULL),
('19660615 200501 2 00', 'kalimahsiti63@gmail.com', 'Dra. Siti Kalimah, M.Pd', '2020-10-02 06:20:09', NULL),
('196606152005012005', 'kalimahsiti63@gmail.com', 'Dra. Siti Kalimah, M.Pd', '2020-10-02 06:37:55', NULL),
('19660621 20070 1 2 0', 'karminah2007@gmail.com', 'Karminah, S.Pd.', '2020-10-02 06:20:09', NULL),
('196606212007012014', 'karminah2007@gmail.com', 'Karminah, S.Pd.', '2020-10-02 06:37:56', NULL),
('19661108200707160018', 'susaktiyuharini123@gmail.com', 'Susakti Yuharini', '2020-10-02 06:20:09', NULL),
('19661207 199412 1 00', 'yanisadewo66@gmail.com', 'Yani,S.Pd.,M.M.', '2020-10-02 06:20:09', NULL),
('196612071994121003', 'yanisadewo66@gmail.com', 'Yani,S.Pd.,M.M.', '2020-10-02 06:37:55', NULL),
('19670107201001010057', 'Yadi12647@gmail.com', 'HERIYADI', '2020-10-02 06:20:09', NULL),
('19670421 200701 1 02', 'basukipunyadwi@gmail.com', 'Basuki Sarjono', '2020-10-02 06:20:09', NULL),
('196704212007011026', 'basukipunyadwi@gmail.com', 'Basuki Sarjono', '2020-10-02 06:37:56', NULL),
('19670427200701010094', '275@gmail.com', 'ALIF FATONI', '2020-10-02 06:20:09', NULL),
('19670604 198903 2 00', 'martiin_maksum@yahoo.co.id', 'Martiin, S.Pd.,M.Pd.', '2020-10-02 06:20:09', NULL),
('196706041989032009', 'martiin_maksum@yahoo.co.id', 'Martiin, S.Pd.,M.Pd.', '2020-10-02 06:37:56', NULL),
('196710072008011008', 'junaedi_st@yahoo.com', 'JUNAEDI, ST', '2020-10-02 06:20:09', NULL),
('19680825 200801 2 01', 'titiksamsistini@gmail.com', 'Titik Samsistini, S.Pd', '2020-10-02 06:20:09', NULL),
('196808252008012019', 'titiksamsistini@gmail.com', 'Titik Samsistini, S.Pd', '2020-10-02 06:37:56', NULL),
('19681014 200801 2 01', 'sitikhoiriyah@yahoo.co.id', 'SITI KHOIRIYAH S.pd', '2020-10-02 06:20:09', NULL),
('196810142008012011', 'sitikhoiriyah@yahoo.co.id', 'SITI KHOIRIYAH S.pd', '2020-10-02 06:37:56', NULL),
('19681128 200501 2 00', 'anikindriani11@gmail.com', 'Dra.Anik Indriani', '2020-10-02 06:20:09', NULL),
('196811282005012004', 'anikindriani11@gmail.com', 'Dra.Anik Indriani', '2020-10-02 06:37:55', NULL),
('19681205 200701 1 02', 'agussupriyadi930@gmail.com', 'Agus Supriyadi', '2020-10-02 06:20:09', NULL),
('196812052007011025', 'agussupriyadi930@gmail.com', 'Agus Supriyadi', '2020-10-02 06:37:56', NULL),
('19690408 200801 2 02', 'edhy.padmi@gmail.com', 'Edhy Padmi Susilowati', '2020-10-02 06:20:09', NULL),
('196904082008012021', 'edhy.padmi@gmail.com', 'Edhy Padmi Susilowati', '2020-10-02 06:37:56', NULL),
('19690425 200701 2025', 'umikulsumamiarso@gmail.com.', 'Umi Kulsum', '2020-10-02 06:20:09', NULL),
('196904252007012025', 'umikulsumamiarso@gmail.com.', 'Umi Kulsum', '2020-10-02 06:37:55', NULL),
('19690608200701010084', 'deff_comp@yahoo.com', 'FATAH SULISTYADI', '2020-10-02 06:20:09', NULL),
('19690616 200701 2 02', 'purwatispd123@yahoo.com', 'Purwati, S. Pd', '2020-10-02 06:20:09', NULL),
('196906162007012026', 'purwatispd123@yahoo.com', 'Purwati, S. Pd', '2020-10-02 06:37:56', NULL),
('19690805 200801 2 02', 'komariyahspd1969@yahoo.com', 'Komariyah', '2020-10-02 06:20:09', NULL),
('196908052008012025', 'komariyahspd1969@yahoo.com', 'Komariyah', '2020-10-02 06:37:56', NULL),
('19690814 200701 2 02', 'lilik.suratmi88@gmail.com', 'Lilik Suratmi, SP.d', '2020-10-02 06:20:09', NULL),
('196908142007012026', 'lilik.suratmi88@gmail.com', 'Lilik Suratmi, SP.d', '2020-10-02 06:37:56', NULL),
('19690915 200801 2 02', 'atihwilupi@gmail.com', 'Atih Wilupi', '2020-10-02 06:20:09', NULL),
('196909152008012028', 'atihwilupi@gmail.com', 'Atih Wilupi', '2020-10-02 06:37:56', NULL),
('19691006 200701 2 02', 'rindang.rejeki@gmail.com', 'RINDANG REJEKI', '2020-10-02 06:20:09', NULL),
('196910062007012022', 'rindang.rejeki@gmail.com', 'RINDANG REJEKI', '2020-10-02 06:37:56', NULL),
('19691024 200801 1 00', 'alifi1969@yahoo.com', 'Alifi S.Pd', '2020-10-02 06:20:09', NULL),
('196910242008011009', 'alifi1969@yahoo.com', 'Alifi S.Pd', '2020-10-02 06:37:56', NULL),
('19691126 200701 2 00', 'ruliindrawati@gmail.com', 'RULIK INDRAWATI, S.Pd', '2020-10-02 06:20:09', NULL),
('196911262007012007', 'ruliindrawati@gmail.com', 'RULIK INDRAWATI, S.Pd', '2020-10-02 06:37:56', NULL),
('19700105 199512 2 00', 'ep.endangpurnawati@gmail.com', 'Endang Purnawati, S.Pd.', '2020-10-02 06:20:09', NULL),
('197001051995122001', 'ep.endangpurnawati@gmail.com', 'Endang Purnawati, S.Pd.', '2020-10-02 06:37:55', NULL),
('19700304 200501 2 00', ' srirahayuspd555@yahoo.com', 'Sri Rahayu', '2020-10-02 06:20:09', NULL),
('197003042005012006', ' srirahayuspd555@yahoo.com', 'Sri Rahayu', '2020-10-02 06:37:55', NULL),
('19700325 200312 2 00', 'wiwin.winarsih2570@gmail.com', 'Winarsih, S.Pd, M.Pd', '2020-10-02 06:20:09', NULL),
('197003252003122007', 'wiwin.winarsih2570@gmail.com', 'Winarsih, S.Pd, M.Pd', '2020-10-02 06:37:55', NULL),
('19700717200807140078', 'pramomo_007@yahoo.com', 'Agus Pramono', '2020-10-02 06:20:09', NULL),
('19700824 200801 1 00', 'silham08@gmail.com', 'Ilham sungeidi', '2020-10-02 06:20:09', NULL),
('197008242008011008', 'silham08@gmail.com', 'Ilham sungeidi', '2020-10-02 06:37:56', NULL),
('19700825199512 2 001', 'sitiumiharsih5@gmail.com', 'Siti Umiharsih', '2020-10-02 06:20:09', NULL),
('197008251995122001', 'sitiumiharsih5@gmail.com', 'Siti Umiharsih', '2020-10-02 06:37:55', NULL),
('19700831 200801 2 01', 'sementaraemail161@gmail.com', 'Kasmi, S. Pd', '2020-10-02 06:20:09', NULL),
('197008312008012017', 'sementaraemail161@gmail.com', 'Kasmi, S. Pd', '2020-10-02 06:37:56', NULL),
('19701017 199703 2 00', 'manfaatidr@gmail.com', 'Dwi Rini Manfaati', '2020-10-02 06:20:09', NULL),
('197010171997032004', 'manfaatidr@gmail.com', 'Dwi Rini Manfaati', '2020-10-02 06:37:55', NULL),
('19710520 200604 2 01', 'ernarina20@gmail.com', 'Erna Rinawati, S.Pd', '2020-10-02 06:20:09', NULL),
('197105202006042018', 'ernarina20@gmail.com', 'Erna Rinawati, S.Pd', '2020-10-02 06:37:55', NULL),
('19710806 200801 2 01', 'muashofah1971@yahoo.com', 'MUASHOFAH, SA.g.MP.d', '2020-10-02 06:20:09', NULL),
('197108062008012012', 'muashofah1971@yahoo.com', 'MUASHOFAH, SA.g.MP.d', '2020-10-02 06:37:56', NULL),
('19710826 200604 1 01', 'amstkip@yahoo.com', 'Agus Muharyanto', '2020-10-02 06:20:09', NULL),
('197108262006041011', 'amstkip@yahoo.com', 'Agus Muharyanto', '2020-10-02 06:37:56', NULL),
('19710913200907150065', 'sobontoro114@gmail.com', 'GUNAWAN', '2020-10-02 06:20:09', NULL),
('19711129 201101 1 00', 'anangprasetyo@gmail.com', 'Anang Prasetyo', '2020-10-02 06:20:09', NULL),
('197111292011011002', 'anangprasetyo@gmail.com', 'Anang Prasetyo', '2020-10-02 06:37:56', NULL),
('19720404 200604 1 01', 'Mr.sudibyo74@gmail.com', 'Sudibyo', '2020-10-02 06:20:09', NULL),
('197204042006041015', 'Mr.sudibyo74@gmail.com', 'Sudibyo', '2020-10-02 06:37:56', NULL),
('19721030 200312 1 00', 'Angkok72@yahoo.co.id', 'Setiyo Winarko', '2020-10-02 06:20:09', NULL),
('197210302003121002', 'Angkok72@yahoo.co.id', 'Setiyo Winarko', '2020-10-02 06:37:56', NULL),
('19730108 200604 2 01', 'Narti73@gmail.com', 'Sunarti', '2020-10-02 06:20:09', NULL),
('197301082006042015', 'Narti73@gmail.com', 'Sunarti', '2020-10-02 06:37:56', NULL),
('19730601 200604 2 02', 'peniwulandari65@yahoo.co.id', 'Peni Wulandari', '2020-10-02 06:20:09', NULL),
('197306012006042024', 'peniwulandari65@yahoo.co.id', 'Peni Wulandari', '2020-10-02 06:37:56', NULL),
('19730625 200604 2 01', 'dwilestari20014@yahoo.com', 'Dwi Lestari', '2020-10-02 06:20:09', NULL),
('197306252006042017', 'dwilestari20014@yahoo.com', 'Dwi Lestari', '2020-10-02 06:37:56', NULL),
('19730719 201001 2 00', 'andriretno6377@gmail.com', 'Andri Retno Yuli Astuti, S.Pd', '2020-10-02 06:20:09', NULL),
('197307192010012002', 'andriretno6377@gmail.com', 'Andri Retno Yuli Astuti, S.Pd', '2020-10-02 06:37:56', NULL),
('19731001 200604 2 20', 'indayah222@gmail.com', 'Indayah', '2020-10-02 06:20:09', NULL),
('1973100120060422012', 'indayah222@gmail.com', 'Indayah', '2020-10-02 06:37:56', NULL),
('19731130201001010055', 'Aliminjawi@gmail.com', 'Alimin', '2020-10-02 06:20:09', NULL),
('19740309201001010058', 'Yudisetia554@gmail.com', 'MUHAMAD SAHUDI', '2020-10-02 06:20:09', NULL),
('19740317200804010072', 'retnoharus@gmail.com', 'Retno Harusmiarsi', '2020-10-02 06:20:09', NULL),
('19740610200907010068', 'Aguswicaksono641@gmail.com', 'AGUS WICAKSONO', '2020-10-02 06:20:09', NULL),
('19740805200807140030', 'edyahrahayu888@gmail.com', 'DYAH ESTI RAHAYU', '2020-10-02 06:20:09', NULL),
('19740914 200901 2 00', 'munawarohsiti74@gmail.com', 'SITI MUNAWAROH, S. Kom', '2020-10-02 06:20:09', NULL),
('197409142009012001', 'munawarohsiti74@gmail.com', 'SITI MUNAWAROH, S. Kom', '2020-10-02 06:37:56', NULL),
('19750223200807140080', 'ficodimas@gmail.com', 'SINGGIH ADI WIYONO', '2020-10-02 06:20:09', NULL),
('19750304 200604 2 01', 'arvia175@gmail.com', 'Arvia Rienetasary, S.Pd', '2020-10-02 06:20:09', NULL),
('197503042006042017', 'arvia175@gmail.com', 'Arvia Rienetasary, S.Pd', '2020-10-02 06:37:56', NULL),
('19750409 200701 2 01', 'niniksriwidayatismkn@gmail.com', 'NINIK SRIWIDAYATI', '2020-10-02 06:20:09', NULL),
('197504092007012010', 'niniksriwidayatismkn@gmail.com', 'NINIK SRIWIDAYATI', '2020-10-02 06:37:56', NULL),
('19750616201007010091', 'wiwikyuniarsih95@gmail.com', 'WIWIK YUNIARSIH, S.Pd.', '2020-10-02 06:20:09', NULL),
('19760210 200801 2 01', 'endangaryst@gmail.com', 'Endang Ary Handayani', '2020-10-02 06:20:09', NULL),
('197602102008012017', 'endangaryst@gmail.com', 'Endang Ary Handayani', '2020-10-02 06:37:56', NULL),
('19760719 200901 1 00', 'j.b.mamora@gmail.com', 'Benny Mamora', '2020-10-02 06:20:09', NULL),
('197607192009011003', 'j.b.mamora@gmail.com', 'Benny Mamora', '2020-10-02 06:37:56', NULL),
('19760826 201001 2 01', 'guplegood@gmail.com', 'Ayu Puspitorini, S.T', '2020-10-02 06:20:09', NULL),
('197608262010012010', 'guplegood@gmail.com', 'Ayu Puspitorini, S.T', '2020-10-02 06:37:56', NULL),
('19761118 200701 1 00', 'fahruddy@yahoo.com', 'Agus Fahruddy', '2020-10-02 06:20:09', NULL),
('197611182007011004', 'fahruddy@yahoo.com', 'Agus Fahruddy', '2020-10-02 06:37:56', NULL),
('19770817 200701 2 01', 'arini444@gmail.com', 'Agustina Mardika Rini', '2020-10-02 06:20:09', NULL),
('197708172007012012', 'arini444@gmail.com', 'Agustina Mardika Rini', '2020-10-02 06:37:56', NULL),
('19770823200901020023', 'sastuti912@gmail.com', 'SRI ASTUTI', '2020-10-02 06:20:09', NULL),
('19771112200707160036', 'hendrojio@gmail.com', 'Hendro Suwignyo', '2020-10-02 06:20:09', NULL),
('19780202 200604 2 02', 'istimufadah@gmail.com', 'Isti Mufadah, S.Pd', '2020-10-02 06:20:09', NULL),
('197802022006042027', 'istimufadah@gmail.com', 'Isti Mufadah, S.Pd', '2020-10-02 06:37:56', NULL),
('19780318 201101 2 00', 'aviekds99@gmail.com', 'Siti Afidah', '2020-10-02 06:20:09', NULL),
('197803182011012004', 'aviekds99@gmail.com', 'Siti Afidah', '2020-10-02 06:37:56', NULL),
('1978082220080714008', 'nurulalana2208@gmail.com', 'Nurul Azizah, S.Pd', '2020-10-02 06:20:09', NULL),
('19780830 200701 1 01', 'arifsetyobudinew@gmail.com', 'ARIF SETYOBUDI, SPd.', '2020-10-02 06:20:09', NULL),
('197808302007011017', 'arifsetyobudinew@gmail.com', 'ARIF SETYOBUDI, SPd.', '2020-10-02 06:37:56', NULL),
('19781001 200604 2 02', 'septifahrozi@gmail.com', 'Septiani, S. Pd', '2020-10-02 06:20:09', NULL),
('197810012006042021', 'septifahrozi@gmail.com', 'Septiani, S. Pd', '2020-10-02 06:37:56', NULL),
('19781220200906010071', 'nakulasadewandut@gmail.com', 'Eko wahyu widyanto', '2020-10-02 06:20:09', NULL),
('19790202 200701 2 02', 'titinsukma2014@gmail.com', 'TITIN SUKMASARI,S.Pd.', '2020-10-02 06:20:09', NULL),
('197902022007012025', 'titinsukma2014@gmail.com', 'TITIN SUKMASARI,S.Pd.', '2020-10-02 06:37:56', NULL),
('19790805200707090047', 'lailatina.tt@gmail.com', 'LAILA AGUSTINA', '2020-10-02 06:20:09', NULL),
('19800329 200901 2 00', 'depipilutfia@gmail.com', 'Lutfia Marsalina', '2020-10-02 06:20:09', NULL),
('198003292009012006', 'depipilutfia@gmail.com', 'Lutfia Marsalina', '2020-10-02 06:37:56', NULL),
('19800410 200901 2 00', 'mawartiesemkita@gmail.com', 'Dian Mawarti, SPd', '2020-10-02 06:20:09', NULL),
('198004102009012007', 'mawartiesemkita@gmail.com', 'Dian Mawarti, SPd', '2020-10-02 06:37:56', NULL),
('19800723 201001 2 01', 'elysayuli177@gmail.com', 'Elysa Yuli Nur\'aini', '2020-10-02 06:20:09', NULL),
('198007232010012016', 'elysayuli177@gmail.com', 'Elysa Yuli Nur\'aini', '2020-10-02 06:37:56', NULL),
('19801026 201001 2 01', 'deelucky99@gmail.com', 'Diana Hartanti', '2020-10-02 06:20:09', NULL),
('198010262010012016', 'deelucky99@gmail.com', 'Diana Hartanti', '2020-10-02 06:37:56', NULL),
('19801224 200801 2 01', 'i.winartin@yahoo.com', 'Winartin', '2020-10-02 06:20:09', NULL),
('198012242008012016', 'i.winartin@yahoo.com', 'Winartin', '2020-10-02 06:37:56', NULL),
('19810116200807140077', 'arikyanuarishak@gmail.com', 'Arik Yanuar Ishak', '2020-10-02 06:20:09', NULL),
('19810124200907130042', 'mas24bas@yahoo.com', 'Baskoro', '2020-10-02 06:20:09', NULL),
('19810405201201010056', 'ributpurwanto81@yahoo.com', 'ribut purwanto', '2020-10-02 06:20:09', NULL),
('19811010201001110095', 'Istiganbatte@gmail.com', 'Istiqomah', '2020-10-02 06:20:09', NULL),
('19820204 201101 2 00', 'loouisa@gmail.com', 'Listyana Hartati, S.Kom', '2020-10-02 06:20:09', NULL),
('198202042011012006', 'loouisa@gmail.com', 'Listyana Hartati, S.Kom', '2020-10-02 06:37:56', NULL),
('19820302200607180059', 'titaratnawati82@gmail.com', 'TITA RATNAWATI', '2020-10-02 06:20:09', NULL),
('19820303 200901 2 00', 'nikenhp82@gmail.com', 'Niken Hari Pratiwi, S.Psi', '2020-10-02 06:20:09', NULL),
('198203032009012009', 'nikenhp82@gmail.com', 'Niken Hari Pratiwi, S.Psi', '2020-10-02 06:37:56', NULL),
('19820318200807010053', 'alfienfarich@gmail.com', 'Alfinu farikh', '2020-10-02 06:20:09', NULL),
('19820411201507010046', 'tatikwulandari904@gmail.com', 'Tatik Wulandari', '2020-10-02 06:20:09', NULL),
('19820529200707160012', 'fajarwahyupratiwiss@gmail.com', 'Fajar Wahyu Pratiwi', '2020-10-02 06:20:09', NULL),
('19820718200707160010', 'agung.yulianto180782@gmail.com', 'Agung Yulianto', '2020-10-02 06:20:09', NULL),
('19820721201407010052', 'Endunk09@gmail.com', 'ENDANG SAFITRI', '2020-10-02 06:20:09', NULL),
('19820822 201407 2 00', 'izzaldien26@gmail.com', 'HARDINI INDAHING BUDI,S.E', '2020-10-02 06:20:09', NULL),
('198208222014072002', 'izzaldien26@gmail.com', 'HARDINI INDAHING BUDI,S.E', '2020-10-02 06:37:56', NULL),
('19821103 201001 2 02', 'dwinova144@yahoo.co.id', 'Dwi Nova Setyandari, S. Pd', '2020-10-02 06:20:09', NULL),
('198211032010012025', 'dwinova144@yahoo.co.id', 'Dwi Nova Setyandari, S. Pd', '2020-10-02 06:37:56', NULL),
('1982121520110701002', 'mutoatul566@gmail.com', 'Mutoatul Khosiah', '2020-10-02 06:20:09', NULL),
('19830101 201001 1 04', 'andrikrisdianto83@gmail.com', 'Andri Krisdianto', '2020-10-02 06:20:09', NULL),
('198301012010011042', 'andrikrisdianto83@gmail.com', 'Andri Krisdianto', '2020-10-02 06:37:56', NULL),
('19830113 200901 1 00', 'kangmasan9@gmail.com', 'MAS\'AN WIDODO', '2020-10-02 06:20:09', NULL),
('198301132009011003', 'kangmasan9@gmail.com', 'MAS\'AN WIDODO', '2020-10-02 06:37:56', NULL),
('19830306201007070092', 'Lulukmunfarida05@gmail.com', 'Luluk munfarida', '2020-10-02 06:20:09', NULL),
('19830331200907130013', 'skastuti@gmail.com', 'Sri Kusumastuti, S.Pd', '2020-10-02 06:20:09', NULL),
('1983070720080718006', 'viryabilqis6@gmail.com', 'Khuriyatul Kamila', '2020-10-02 06:20:09', NULL),
('19830708200905170085', 'Yaa_iie@yahoo.co.id', 'RIFA\'I', '2020-10-02 06:20:09', NULL),
('19831006200707160045', 'susim4803@gmail.com', 'Susi Maria Ulfa', '2020-10-02 06:20:09', NULL),
('19840222 200902 2 00', 'ratihdiananshori@gmail.com', 'Ratih Dian Irawati', '2020-10-02 06:20:09', NULL),
('198402222009022007', 'ratihdiananshori@gmail.com', 'Ratih Dian Irawati', '2020-10-02 06:37:56', NULL),
('19840309201401020063', 'artikhawindasari@gmail.com', 'ARTIKHA WINDA SARI', '2020-10-02 06:20:09', NULL),
('19840730200707160031', 'yulieratnasari84@gmail.com', 'Yuli Ratnasari', '2020-10-02 06:20:09', NULL),
('19840821200807010070', 'syifavikrifauziah@gmail.com', 'Evi Fauziah', '2020-10-02 06:20:09', NULL),
('19841129201003010081', 'nursukmaningtyas2@gmail.com', 'NURSUKMA NINGTYAS', '2020-10-02 06:20:09', NULL),
('19850120201001020064', 'pentilviksen@gmail.com', 'HENDI SURYADI', '2020-10-02 06:20:09', NULL),
('19850301200501010089', 'animustikasari1985@gmail.com', 'ANI MUSTIKASARI', '2020-10-02 06:20:09', NULL),
('19850316 201101 1 01', 'anjarblank007@gmail.com', 'Danang Anjar Hymawanto', '2020-10-02 06:20:09', NULL),
('198503162011011012', 'anjarblank007@gmail.com', 'Danang Anjar Hymawanto', '2020-10-02 06:37:56', NULL),
('1985040120100401004', 'Beti.melati2@gmail.com', 'Beti astuti', '2020-10-02 06:20:09', NULL),
('19850604200801010083', 'riscarinelva@yahoo.com', 'RISKA WURNANINGTIYAS', '2020-10-02 06:20:09', NULL),
('19850627201007010014', 'fitriarenytasari27@gmail.com', 'FITRIA RENYTASARI', '2020-10-02 06:20:09', NULL),
('19850818202007010067', 'krisdiantoagus0@gmail.com', 'Agus krisdiantoro', '2020-10-02 06:20:09', NULL),
('19850926201607120069', 'maisiti44@gmail.com', 'SITI MAISAROH', '2020-10-02 06:20:09', NULL),
('19851021201607040020', 'megawatioktaria2016@gmail.com', 'Oktaria Megawati', '2020-10-02 06:20:09', NULL),
('19860127 201101 1 01', 'anggawidhywir@gmail.com', 'Angga Widhy Wirawan', '2020-10-02 06:20:09', NULL),
('198601272011011013', 'anggawidhywir@gmail.com', 'Angga Widhy Wirawan', '2020-10-02 06:37:56', NULL),
('19860208200907010075', 'ferirafasetyawan@yahoo.com', 'Feri Pristiwiyanti', '2020-10-02 06:20:09', NULL),
('19860414201008040076', 'nishfulaili1986@gmail.com', 'Nishfu laili', '2020-10-02 06:20:09', NULL),
('19860505201302010082', 'nickdeejee@gmail.com', 'NINIK DWI JAYANTI', '2020-10-02 06:20:09', NULL),
('19860512200707150086', 'rahayusuci6101@gmail.com', 'SUCI RAHAYU ', '2020-10-02 06:20:09', NULL),
('19860606201001070074', 'ditagayatri191@gmail.com', 'DITA ISMA GAYATRI', '2020-10-02 06:20:09', NULL),
('1986072420110701003', 'lulu.chica@ymail.com', 'Lusiana Fransiska, S.Pd.', '2020-10-02 06:20:09', NULL),
('19860926201402010043', 'poetraas@yahoo.co.id', 'Putra Abric Susanto', '2020-10-02 06:20:09', NULL),
('19870217 201101 2 01', 'dhuanaputri@gmail.com', 'Dhuana Putri Puspitasary', '2020-10-02 06:20:09', NULL),
('198702172011012012', 'dhuanaputri@gmail.com', 'Dhuana Putri Puspitasary', '2020-10-02 06:37:56', NULL),
('19870303201007010016', 'nastutisari@gmail.com', 'NUR NASTUTISARI', '2020-10-02 06:20:09', NULL),
('19870316 200901 2 00', 'retnowidy16@gmail.com', 'Retno Widyastuti, SPd', '2020-10-02 06:20:09', NULL),
('198703162009012002', 'retnowidy16@gmail.com', 'Retno Widyastuti, SPd', '2020-10-02 06:37:56', NULL),
('19870627201001110096', 'yuditmanja@gmail.com', 'Yudit Manja Asmara', '2020-10-02 06:20:09', NULL),
('19870831201907250024', 'dekanugraha@gmail.com', 'Dika Purna Nugraha', '2020-10-02 06:20:09', NULL),
('1987100420100707005', 'vitaajenk@gmail.com', 'Ajeng okvitasari', '2020-10-02 06:20:09', NULL),
('19871116200907010060', 'zainulmas.al@gmail.com', 'Zainul Arifin ', '2020-10-02 06:20:09', NULL),
('19871212201407010039', 'riritmufarida12@gmail.com', 'Ririt Mufaridah', '2020-10-02 06:20:09', NULL),
('19880216201004010088', 'chielika@yahoo.com', 'Ika Yulifatun Nadifah', '2020-10-02 06:20:09', NULL),
('19880521201601010011', 'rulias.vr@gmail.com', 'Veronica Damay Rulitasari', '2020-10-02 06:20:09', NULL),
('19880921200907010079', 'zianimut0@g.mail.com', 'SUBYANTORO', '2020-10-02 06:20:09', NULL),
('19881229201712110054', 'Ragilkurniawan614@gmail.com', 'RAGIL KURNIAWAN', '2020-10-02 06:20:09', NULL),
('19890916201407010040', 'kholipfitria@gmail.com', 'KHOLIP FITRIAWAROH', '2020-10-02 06:20:09', NULL),
('19900411201601060022', 'amirrosyidinhamzah1990@gmail.c', 'Amirullah Rosyidin Hamzah, S.Pd', '2020-10-02 06:20:09', NULL),
('1990080620190701009', 'astrabella_90@live.com', 'Astra Bella Flamboyan', '2020-10-02 06:20:09', NULL),
('19900907 201903 1 00', 'keyong.r1@gmail.com', 'ERWAN SEPTIYONO', '2020-10-02 06:20:09', NULL),
('199009072019031004', 'keyong.r1@gmail.com', 'ERWAN SEPTIYONO', '2020-10-02 06:37:56', NULL),
('19901031201507010026', 'sintalestari966@gmail.com', 'SINTA LESTARI', '2020-10-02 06:20:09', NULL),
('19910327201807010066', 'nenicandra91.nc@gmail.com', 'NENI CANDRA DEWI', '2020-10-02 06:20:09', NULL),
('1991032820170701001', 'Fhecool@gmail.com', 'FENDY HERMANTO, S.Pd', '2020-10-02 06:20:09', NULL),
('19910613201006010062', 'dianyunita82@yahoo.co.id', 'Dian yunita sari', '2020-10-02 06:20:09', NULL),
('19910708 201903 2 01', 'tata.tian2@gmail.com', 'Istiana Suhartati', '2020-10-02 06:20:09', NULL),
('199107082019032017', 'tata.tian2@gmail.com', 'Istiana Suhartati', '2020-10-02 06:37:56', NULL),
('19911103201007120093', 'jokopiyik91@gmail.com', 'JOKO PRIYANTO', '2020-10-02 06:20:09', NULL),
('19911215201807010035', 'wulandari15121991@gmail.com', 'DESI WULANDARI', '2020-10-02 06:20:09', NULL),
('19920205201607010025', 'febriniyustin@gmail.com', 'Yustin febrini', '2020-10-02 06:20:09', NULL),
('19920423201601010032', 'megamahardika67@gmail.com', 'MEGA MAHARDIKA', '2020-10-02 06:20:09', NULL),
('1992050420150727007', 'freezfico@gmail.com', 'Elyana Frisca Monica', '2020-10-02 06:20:09', NULL),
('19920530201807150037', 'nilayafie43@gmail.com', 'NILA YAFIE', '2020-10-02 06:20:09', NULL),
('19930610201501010017', 'asfylinda@gmail.com', 'Linda Asfiyah', '2020-10-02 06:20:09', NULL),
('19930614201707170034', 'eils140693@gmail.com', 'EKA INTAN LESTARI SUDIBYO', '2020-10-02 06:20:09', NULL),
('19940222201507010048', 'imraatussolikah@gmail.com', 'IMRA ATUS SOLIKAH', '2020-10-02 06:20:09', NULL),
('19940315201305010061', 'pristi1594@gmail.com', 'PRISTIYANIKA MULANING TYAS', '2020-10-02 06:20:09', NULL),
('19940719201308050041', 'yulianiendah88@gmail.com', 'Yuliani Endah Purnamasari', '2020-10-02 06:20:09', NULL),
('19941026201908010033', 'gandy12odang@gmail.com', 'Mohamad Dwi Purnadiansyah, S.T.', '2020-10-02 06:20:09', NULL),
('19941129201507010050', 'Novana.puspitasari@gmail.com', 'NOVANA PUSPITASARI', '2020-10-02 06:20:09', NULL),
('19951205201907150027', 'watieliana95@gmail.com', 'Eliana Destri Purwati', '2020-10-02 06:20:09', NULL),
('19960203202001200073', 'resdianadewi96@gmail.com', 'RESDIANA DEWI', '2020-10-02 06:20:09', NULL),
('19960604201912090051', 'rida.amilia50@gmail.com', 'Rida Amilia Cristanty', '2020-10-02 06:20:09', NULL),
('19960618201901010015', 'arisnurba@yahoo.com', 'Aris Nurbatnirizal', '2020-10-02 06:20:09', NULL),
('19970204201907010021', 'fitriadiahayu10@gmail.com', 'Fitria Diah Ayu Hartati, S.Pd', '2020-10-02 06:20:09', NULL),
('19970325201508010038', 'diahpangesti30@gmail.com', 'Diah Pangesti Muji Rahayu Wilujeng', '2020-10-02 06:20:09', NULL),
('19970722201906300029', 'Feridasari654@gmail.com', 'Ferida rosita sari', '2020-10-02 06:20:09', NULL),
('19981218201903010019', 'azizharizky@gmail.com', 'CANDRA NUR AZIZA RISQI', '2020-10-02 06:20:09', NULL),
('19991116201907010028', 'Putrisby720@gmail.com', 'PUTRI SUKMA SYAIFUDIN SARAH', '2020-10-02 06:20:09', NULL),
('20000419201907010049', 'INTANPAYTUN@GMAIL.COM', 'INTAN PRATIWI', '2020-10-02 06:20:09', NULL),
('200101022017071700', 'sopia@gmail.com', 'Sopia', '2020-06-01 12:21:47', NULL),
('200204082017071700', 'candravina100@gmail.com', 'Candra Prasetyo', '2020-06-01 12:21:47', NULL),
('2002070120170717002', 'falahazizatul07@gmail.com', 'Azizatul Falah', '2020-06-01 12:21:47', NULL),
('2007020620200202003', 'danielade@gmail.com', 'Daniel Ade', '2020-06-01 12:21:47', NULL),
('20200822201607010044', 'agungernanto@gmail.com', 'Agung Dwi Ernanto', '2020-10-02 06:20:09', NULL),
('211212120021122100', 'Danilepin@gmail.com', 'Daniel Ade', '2020-06-25 07:52:35', NULL),
('246314326586', NULL, 'Martana Simanjuntak', '2020-06-01 12:21:47', NULL),
('267064024016', NULL, 'Aisyah Farida', '2020-06-01 12:21:47', NULL),
('283183351182', NULL, 'Gaduh Nugroho', '2020-06-01 12:21:47', NULL),
('306593761083', NULL, 'Jasmin Suryatmi', '2020-06-01 12:21:47', NULL),
('308334465258', NULL, 'Karsana Megantara', '2020-06-01 12:21:47', NULL),
('333325425610', NULL, 'Tomi Mandala M.Ak', '2020-06-01 12:21:47', NULL),
('368836682485', NULL, 'Samsul Budiyanto', '2020-06-01 12:21:47', NULL),
('444959451494', NULL, 'Intan Wijayanti', '2020-06-01 12:21:47', NULL),
('510300902080', NULL, 'Maryadi Putra', '2020-06-01 12:21:47', NULL),
('548595709481', NULL, 'Bakidin Habibi S.E.', '2020-06-01 12:21:47', NULL),
('607068377601', NULL, 'Opung Sitompul', '2020-06-01 12:21:47', NULL),
('639099749802', NULL, 'Patricia Hasanah', '2020-06-01 12:21:47', NULL),
('682209796897', NULL, 'Aurora Ciaobella Purnawati M.Pd', '2020-06-01 12:21:47', NULL),
('708257767223', NULL, 'Umay Kunthara Wijaya M.TI.', '2020-06-01 12:21:47', NULL),
('722932088648', NULL, 'Eli Nasyidah', '2020-06-01 12:21:47', NULL),
('744725360162', NULL, 'Vera Aryani S.Ked', '2020-06-01 12:21:47', NULL),
('784021568494', NULL, 'Bakidin Setiawan', '2020-06-01 12:21:47', NULL),
('792709745062', NULL, 'Carub Daru Haryanto M.TI.', '2020-06-01 12:21:47', NULL),
('884243778071', NULL, 'Ajeng Fujiati', '2020-06-01 12:21:47', NULL),
('911446389667', NULL, 'Dewi Padmasari', '2020-06-01 12:21:47', NULL),
('943964495980', NULL, 'Jono Pratama', '2020-06-01 12:21:47', NULL),
('955841784314', NULL, 'Ani Rahayu S.Ked', '2020-06-01 12:21:47', NULL),
('9812378883232', 'yayaksabara@gmail.com', 'Yaayakk', '2020-06-25 07:52:35', NULL),
('982474372838985708', 'yayaksabara@gmail,com', 'Yayak Zabara', '2020-06-25 07:52:35', NULL),
('993313453049', NULL, 'Ina Yuliarti', '2020-06-01 12:21:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `gelombang` varchar(150) NOT NULL,
  `tahun` year(4) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `gelombang`, `tahun`, `tanggal_mulai`, `tanggal_selesai`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Gelombang 1', 2020, '2020-06-01', '2020-09-30', '1', '2020-06-21 15:45:30', '2020-06-21 15:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_detail`
--

CREATE TABLE `jadwal_detail` (
  `id` int(11) NOT NULL,
  `jadwal_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal_detail`
--

INSERT INTO `jadwal_detail` (`id`, `jadwal_id`, `kelas_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-06-21 15:48:51', NULL),
(2, 1, 2, '2020-06-21 15:48:51', NULL),
(3, 1, 3, '2020-06-21 15:48:51', NULL),
(4, 1, 4, '2020-06-21 15:48:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tingkat` int(11) NOT NULL,
  `tahun_angkatan` year(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `tingkat`, `tahun_angkatan`, `created_at`, `updated_at`) VALUES
(1, 'XII Rekayasa Perangkat Lunak', 12, 2017, '2020-06-21 13:01:45', NULL),
(2, 'XII Unit Perjalanan Wisata', 12, 2017, '2020-06-21 13:01:45', NULL),
(3, 'XII Desain Komunikasi Visual', 12, 2017, '2020-06-21 13:01:45', NULL),
(4, 'XII Animasi', 12, 2017, '2020-06-21 13:01:45', NULL),
(5, 'XII Multimedia', 12, 2017, '2020-06-21 13:01:45', NULL),
(6, 'XII Teknik Komputer Jaringan', 12, 2017, '2020-06-21 13:01:45', NULL),
(7, 'XII Kimia Industri', 12, 2017, '2020-06-21 13:01:45', NULL),
(8, 'XII Bisnis Daring dan Pemasaran', 12, 2017, '2020-06-21 13:01:45', NULL),
(9, 'XII Administrasi Perkantoran', 12, 2017, '2020-06-21 13:01:45', NULL),
(10, 'XII Akuntansi', 12, 2017, '2020-06-21 13:01:45', NULL),
(11, 'XII Broadcasting', 12, 2017, '2020-06-21 13:01:45', NULL),
(12, 'Tkm 1', 10, 2020, '2020-10-02 06:38:56', NULL),
(13, ' Tkm 2', 10, 2020, '2020-10-02 06:38:56', NULL),
(14, 'TKI-1(RPL-1)', 10, 2020, '2020-10-02 06:38:56', NULL),
(15, 'TKI-2 (RPL-2)', 10, 2020, '2020-10-02 06:38:56', NULL),
(16, 'TKI-3 (TKJ-1)', 10, 2020, '2020-10-02 06:38:56', NULL),
(17, 'TKI-4 (TKJ-2)', 10, 2020, '2020-10-02 06:38:56', NULL),
(18, 'PJP', 10, 2020, '2020-10-02 06:38:56', NULL),
(19, 'BP-1', 10, 2020, '2020-10-02 06:38:56', NULL),
(20, 'BP-2', 10, 2020, '2020-10-02 06:38:56', NULL),
(21, 'BP-3', 10, 2020, '2020-10-02 06:38:56', NULL),
(22, 'BP-4', 10, 2020, '2020-10-02 06:38:56', NULL),
(23, 'MP 1', 10, 2020, '2020-10-02 06:38:56', NULL),
(24, 'MP-2', 10, 2020, '2020-10-02 06:38:56', NULL),
(25, 'MP-3', 10, 2020, '2020-10-02 06:38:56', NULL),
(26, 'AK-1', 10, 2020, '2020-10-02 06:38:56', NULL),
(27, 'AK-2', 10, 2020, '2020-10-02 06:38:56', NULL),
(28, 'AK-3', 10, 2020, '2020-10-02 06:38:56', NULL),
(29, 'SR-1 (DKV)', 10, 2020, '2020-10-02 06:38:56', NULL),
(30, 'SR-2 (Anm)', 10, 2020, '2020-10-02 06:38:56', NULL),
(31, 'AKL 3', 12, 2018, '2020-10-02 06:38:56', NULL),
(32, 'AKL 4', 12, 2018, '2020-10-02 06:38:56', NULL),
(33, 'RPL 2', 12, 2018, '2020-10-02 06:38:56', NULL),
(34, 'RPL 1', 12, 2018, '2020-10-02 06:38:56', NULL),
(35, 'TKI-5 (Mm-1)', 10, 2020, '2020-10-02 06:38:56', NULL),
(36, 'SBF', 10, 2020, '2020-10-02 06:38:56', NULL),
(37, 'TKI-6 (Mm-2)', 10, 2020, '2020-10-02 06:38:56', NULL),
(38, 'AKL 2', 11, 2019, '2020-10-02 06:38:56', NULL),
(39, 'OTKP 2', 12, 2018, '2020-10-02 06:38:56', NULL),
(40, 'OTKP 1', 12, 2018, '2020-10-02 06:38:56', NULL),
(41, 'AKL 1', 12, 2018, '2020-10-02 06:38:56', NULL),
(42, 'TKJ 2', 12, 2018, '2021-05-03 13:47:00', NULL),
(43, 'PSPT', 12, 2018, '2021-05-03 13:47:00', NULL),
(44, 'UPW', 11, 2019, '2021-05-03 13:47:00', NULL),
(45, 'KI 1', 11, 2019, '2021-05-03 13:47:00', NULL),
(46, 'KI 2', 11, 2019, '2021-05-03 13:47:00', NULL),
(47, 'RPL 1', 11, 2019, '2021-05-03 13:47:00', NULL),
(48, 'RPL 2', 11, 2019, '2021-05-03 13:47:00', NULL),
(49, 'TKJ 1', 11, 2019, '2021-05-03 13:47:00', NULL),
(50, 'TKJ 2', 11, 2019, '2021-05-03 13:47:00', NULL),
(51, 'MM 1', 11, 2019, '2021-05-03 13:47:00', NULL),
(52, 'MM 2', 11, 2019, '2021-05-03 13:47:00', NULL),
(53, 'BDP 1', 11, 2019, '2021-05-03 13:47:00', NULL),
(54, 'animasi', 12, 2018, '2021-05-03 13:47:00', NULL),
(55, 'MULTIMEDIA 2', 12, 2018, '2021-05-03 13:47:00', NULL),
(56, 'BDP 2', 11, 2019, '2021-05-03 13:47:00', NULL),
(57, 'BDP 3', 11, 2019, '2021-05-03 13:47:00', NULL),
(58, 'AKL 2', 12, 2018, '2021-05-03 13:47:00', NULL),
(59, 'BDP 4', 11, 2019, '2021-05-03 13:47:00', NULL),
(60, 'OTKP 1', 11, 2019, '2021-05-03 13:47:00', NULL),
(61, 'OTKP 2', 11, 2019, '2021-05-03 13:47:00', NULL),
(62, 'OTKP 3', 11, 2019, '2021-05-03 13:47:00', NULL),
(63, 'AKL 1', 11, 2019, '2021-05-03 13:47:00', NULL),
(64, 'ALFAMART', 12, 2018, '2021-05-03 13:47:00', NULL),
(65, 'AKL 3', 11, 2019, '2021-05-03 13:47:00', NULL),
(66, 'DKV 1', 11, 2019, '2021-05-03 13:47:00', NULL),
(67, 'DKV 2', 11, 2019, '2021-05-03 13:47:00', NULL),
(68, 'ANIMASI', 11, 2019, '2021-05-03 13:47:00', NULL),
(69, 'PSPT', 11, 2019, '2021-05-03 13:47:00', NULL),
(70, 'DKV', 12, 2018, '2021-05-03 13:47:00', NULL),
(71, 'KI', 12, 2018, '2021-05-03 13:47:00', NULL),
(72, 'UPW', 12, 2018, '2021-05-03 13:47:00', NULL),
(73, 'BDP 4', 12, 2018, '2021-05-03 13:47:00', NULL),
(74, 'BDP 3', 12, 2018, '2021-05-03 13:47:00', NULL),
(75, 'MM 1', 12, 2018, '2021-05-03 13:47:00', NULL),
(76, 'OTKP 4', 12, 2018, '2021-05-03 13:47:00', NULL),
(77, 'BDP 2', 12, 2018, '2021-05-03 13:47:00', NULL),
(78, 'MM 2', 12, 2018, '2021-05-03 13:47:00', NULL),
(79, 'BDP 1', 12, 2018, '2021-05-03 13:47:00', NULL),
(80, 'OTKP 3', 12, 2018, '2021-05-03 13:47:00', NULL),
(81, 'RPL 1', 12, 2019, '2021-08-03 19:28:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kritik_saran`
--

CREATE TABLE `kritik_saran` (
  `id` int(11) NOT NULL,
  `kritik` text NOT NULL,
  `saran` text NOT NULL,
  `tujuan_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kritik_saran`
--

INSERT INTO `kritik_saran` (`id`, `kritik`, `saran`, `tujuan_id`, `nama`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Barang Yang Disediakan Kurang Lengkap', 'Seharusnya Lebih Dilengkapi Lagi Untuk Kedepanya', 2, 'Candra Prasetyo', 'candravina100@gmail.com', '1', '2020-05-06 04:17:18', '2020-05-21 06:52:18'),
(2, 'Hal ini ternyata memalukan', 'Lebih Diperbaiki Lagi Selanjutnya', 0, 'Candra', 'candra@gmail.com', NULL, '2020-05-26 11:53:54', NULL),
(3, 'Jutaan orang bahkan tidak menyadari bahwa mereka bisa menghasilkan $1.000 sehari tanpa meninggalkan rumah, dan Anda adalah salah satu dari mereka', 'Inilah Cerita Jutaan Orang Yang Bukan Main', 2, 'Esemkita', 'esemkita.facebook@gmail.com', NULL, '2020-05-26 11:53:54', NULL),
(4, 'Ini Adalah Kritik Saran Tgl 19 Juni 2020', 'Superti', 0, 'Saya', 'Rasanya@gmail.com', NULL, '2020-06-19 08:43:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_prakerin`
--

CREATE TABLE `laporan_prakerin` (
  `id` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status_surat` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laporan_prakerin`
--

INSERT INTO `laporan_prakerin` (`id`, `id_perusahaan`, `tanggal`, `foto`, `status_surat`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-01', NULL, '1', '2020-06-17 06:20:27', '2020-06-25 06:56:07'),
(27, 2, '2020-09-01', NULL, '1', '2020-06-19 08:53:51', '2020-10-02 06:20:09'),
(28, 3, '2020-07-01', NULL, '1', '2020-06-23 07:24:48', '2020-06-25 06:57:39'),
(29, 2, '2020-06-03', 'default.jpg', '1', '2020-06-19 08:53:51', '2020-06-25 07:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_rapat`
--

CREATE TABLE `laporan_rapat` (
  `id` int(11) NOT NULL,
  `rapat_id` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laporan_rapat`
--

INSERT INTO `laporan_rapat` (`id`, `rapat_id`, `foto`, `created_at`, `updated_at`) VALUES
(1, 10, 'fc0fb6b65e291211d49c47c904685396.jpeg', '2020-06-01 18:14:29', NULL),
(18, 31, '4b84920b99e00c0b821fcd2a88497cc0.jpg', '2020-06-21 08:25:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20200506000003);

-- --------------------------------------------------------

--
-- Table structure for table `pembimbing`
--

CREATE TABLE `pembimbing` (
  `nip` varchar(30) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id` int(11) NOT NULL,
  `detail_quesioner_id` int(11) NOT NULL,
  `nilai` enum('4','3','2','1') NOT NULL,
  `tanggal` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id`, `detail_quesioner_id`, `nilai`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, 1, '4', '0000-00-00', '2020-05-05 13:28:10', NULL),
(2, 1, '4', '2020-05-05', '2020-05-05 13:29:07', NULL),
(3, 1, '3', NULL, '2020-05-05 13:29:18', NULL),
(4, 2, '2', '2020-05-05', '2020-05-05 13:30:42', NULL),
(5, 1, '3', NULL, '2020-05-06 01:36:50', NULL),
(6, 2, '1', NULL, '2020-05-06 01:36:50', NULL),
(7, 3, '1', NULL, '2020-05-06 01:36:50', NULL),
(8, 1, '3', NULL, '2020-05-06 01:52:24', NULL),
(9, 2, '4', NULL, '2020-05-06 01:52:24', NULL),
(10, 3, '1', NULL, '2020-05-06 01:52:24', NULL),
(11, 1, '3', NULL, '2020-05-06 01:53:43', NULL),
(12, 1, '4', NULL, '2020-05-06 01:55:04', NULL),
(13, 1, '4', NULL, '2020-05-06 01:56:56', NULL),
(14, 2, '4', NULL, '2020-05-06 01:56:56', NULL),
(15, 3, '4', NULL, '2020-05-06 01:56:56', NULL),
(16, 1, '3', NULL, '2020-05-06 02:03:15', NULL),
(17, 2, '4', NULL, '2020-05-06 02:03:15', NULL),
(18, 3, '4', NULL, '2020-05-06 02:03:15', NULL),
(19, 1, '3', NULL, '2020-05-06 05:49:19', NULL),
(20, 2, '2', NULL, '2020-05-06 05:49:19', NULL),
(21, 3, '4', NULL, '2020-05-06 05:49:19', NULL),
(22, 6, '4', NULL, '2020-05-06 05:49:19', NULL),
(23, 1, '4', NULL, '2020-05-26 11:54:51', NULL),
(24, 2, '3', NULL, '2020-05-26 11:54:51', NULL),
(25, 3, '4', NULL, '2020-05-26 11:54:51', NULL),
(26, 6, '4', NULL, '2020-05-26 11:54:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(155) DEFAULT NULL,
  `ketua_kelompok` varchar(30) DEFAULT NULL,
  `nama_direktur` varchar(100) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `pembimbing` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id_perusahaan`, `nama_perusahaan`, `ketua_kelompok`, `nama_direktur`, `telp`, `email`, `alamat`, `tanggal_mulai`, `tanggal_selesai`, `status`, `pembimbing`, `created_at`, `updated_at`) VALUES
(1, 'Sarjana Dot Com Dua 2', '584740489390', 'Bpk Ciputra', '081234567182', 'candravina100@gmail.com', 'Jl Muda Berencana Mati', '0000-00-00', '0000-00-00', 1, '2002070120170717002', '2020-06-18 01:46:02', '2020-06-25 06:56:06'),
(2, 'Sarjana Dot Com', '584740489390', 'Bpk Ciputra', '081234567182', 'kevinapon772@gmail.com', 'Jl Indramayu No 3 Minar', '2020-06-01', '2020-08-31', 1, '061136757211', '2020-06-22 03:14:35', '2020-06-25 06:55:59'),
(3, 'Sarwono', '739454972844', 'Irfan Sar', '081234567182', 'Sariawan@gmail.com', 'Jogja', '2020-06-01', '2020-06-30', 1, '2002070120170717002', '2020-06-22 08:22:44', '2020-06-25 06:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_siswa`
--

CREATE TABLE `perusahaan_siswa` (
  `id_perusahaan_siswa` int(11) NOT NULL,
  `id_perusahaan` int(11) DEFAULT NULL,
  `id_siswa` varchar(30) DEFAULT NULL,
  `ketua` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `dokumen_persetujuan` varchar(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perusahaan_siswa`
--

INSERT INTO `perusahaan_siswa` (`id_perusahaan_siswa`, `id_perusahaan`, `id_siswa`, `ketua`, `status`, `dokumen_persetujuan`, `created_at`, `updated_at`) VALUES
(1, 1, '584740489390', 1, 0, NULL, '2020-06-18 01:46:02', '2020-06-22 08:18:36'),
(2, 1, '001235764', NULL, 0, NULL, '2020-06-18 01:46:14', '2020-06-18 01:46:14'),
(3, 2, '584740489390', 1, 0, NULL, '2020-06-22 03:14:35', '2020-06-22 08:18:40'),
(4, 3, '739454972844', 1, 0, NULL, '2020-06-22 08:22:44', '2020-06-22 08:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `quesioner`
--

CREATE TABLE `quesioner` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `peruntukan` enum('SISWA','ORANG TUA','DUDI','MASYARAKAT') NOT NULL,
  `deskripsi` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quesioner`
--

INSERT INTO `quesioner` (`id`, `judul`, `peruntukan`, `deskripsi`, `status`, `created_at`, `updated_at`) VALUES
(1, 'QUESTIONNAIRE KEPUASAN PELANGGAN', 'MASYARAKAT', 'Berikut Ini adalah Penilaian Anda Terhadap Output (Alumni) dan Siswa SMK Negeri 1 Boyolangu dibandingkan dengan Harapan Anda. jawablah dengan sejujur - jujurnya !', '1', '2020-05-04 08:29:09', '2020-05-26 11:52:22'),
(2, 'QUESTIONNAIRE KEPUASAN PELANGGAN					\r\n', 'ORANG TUA', 'Berikut ini adalah penilaian Anda terhadap Kualitas pelayanan di SMK  Negeri 1 Boyolangu dibandingkan dengan harapan anda. Jawablah dengan sejujur - jujurnya !					\r\n', '1', '2020-05-05 03:55:38', '2020-05-05 17:02:14'),
(4, 'QUESTIONNAIRE KEPUASAN PELANGGAN					\r\n', 'DUDI', 'Berikut ini adalah penilaian Anda terhadap Kualitas pelayanan di SMK  Negeri 1 Boyolangu dibandingkan dengan harapan anda. Jawablah dengan sejujur - jujurnya !					\r\n', '1', '2020-05-05 03:55:38', '2020-05-05 17:02:14'),
(5, 'QUESTIONNAIRE KEPUASAN PELANGGAN					\r\n', 'SISWA', 'Berikut ini adalah penilaian Anda terhadap Kualitas pelayanan di SMK  Negeri 1 Boyolangu dibandingkan dengan harapan anda. Jawablah dengan sejujur - jujurnya !					\r\n', '1', '2020-05-05 03:55:38', '2020-05-05 17:02:14'),
(6, 'Quesioner Untuk Masyarakat', 'MASYARAKAT', 'Quisioner Ini Berisi Tentang Respon Masyarakat Terhadap SMKN 1 BOYOLANGU. Mohon isi sejujur-jujurnya!', '0', '2020-05-06 02:25:39', '2020-05-26 11:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `rapat`
--

CREATE TABLE `rapat` (
  `id` int(11) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `notulensi` text DEFAULT NULL,
  `surat` varchar(255) DEFAULT NULL,
  `daftar_hadir` varchar(255) DEFAULT NULL,
  `status` enum('0','1','2') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rapat`
--

INSERT INTO `rapat` (`id`, `tema`, `tanggal`, `jam_mulai`, `jam_selesai`, `ruang_id`, `notulensi`, `surat`, `daftar_hadir`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Rapat Koordinasi Antar Kepsek', '2020-06-07', '14:00:00', '23:00:00', 1, 'Edit Notulensi + Surat + Multiple', '9b2a6f710c695d6fb46fe79546928196.pdf', 'd1b66fc23c35c38cbe57d29fe76d6538.jpg', '2', '2020-05-30 13:38:33', '2020-06-15 14:26:40'),
(10, 'Rapat PPDB SMKN 1 BOYOLANGU 2020 ', '2020-06-01', '22:00:00', '23:51:00', 1, 'Ini adalah Catatan', NULL, NULL, '2', '2020-06-01 13:51:53', '2020-06-01 18:10:57'),
(12, 'Rapat RT', '2020-06-03', '23:55:00', '02:00:00', 2, NULL, NULL, NULL, '2', '2020-06-01 14:55:43', '2020-06-14 11:36:30'),
(13, 'Rapat RW mak Saiki', '2020-06-05', '22:01:00', '03:06:00', 2, NULL, NULL, NULL, '2', '2020-06-01 15:01:49', '2020-06-14 11:36:30'),
(14, 'TEST123', '2020-06-04', '22:03:00', '12:04:00', 1, NULL, NULL, NULL, '2', '2020-06-01 15:04:05', '2020-06-14 11:36:30'),
(15, 'Rapat Dinas SMKN 1 BOYOLANGU', '2020-06-03', '02:01:00', '03:01:00', 1, NULL, NULL, NULL, '2', '2020-06-01 19:01:36', '2020-06-14 11:36:30'),
(16, 'Rapat Dinas SMKN 1 BOYOLANGU', '2020-06-03', '02:08:00', '02:10:00', 1, NULL, NULL, NULL, '2', '2020-06-01 19:07:53', '2020-06-14 11:36:30'),
(21, 'smartschool', '2020-06-04', '20:30:00', '00:30:00', 2, NULL, NULL, NULL, '2', '2020-06-02 08:31:13', '2020-06-14 11:36:30'),
(22, 'Rapat Dinas SMKN 1 BOYOLANGU', '2020-06-02', '15:47:00', '17:46:00', 1, NULL, NULL, NULL, '2', '2020-06-02 08:46:32', '2020-06-02 08:46:32'),
(23, 'Rapat satu', '2020-06-02', '18:50:00', '20:00:00', 1, NULL, NULL, NULL, '2', '2020-06-02 08:48:06', '2020-06-02 08:51:32'),
(24, 'Rapat RT', '2020-06-14', '18:39:00', '19:39:00', 1, NULL, NULL, NULL, '2', '2020-06-14 11:39:35', '2020-06-15 12:18:48'),
(25, 'Rapat Dinas SMKN 1 BOYOLANGU', '2020-06-14', '19:52:00', '20:53:00', 1, NULL, NULL, NULL, '2', '2020-06-14 11:53:04', '2020-06-15 12:18:48'),
(26, 'Rapat Candra', '2020-06-15', '22:25:00', '23:25:00', 1, NULL, NULL, NULL, '2', '2020-06-15 15:25:14', '2020-06-15 16:25:00'),
(27, 'Rapat Kesiswaan', '2020-06-19', '11:02:00', '00:02:00', 3, NULL, NULL, NULL, '2', '2020-06-19 04:02:37', '2020-06-19 04:02:37'),
(28, 'Rapat Kesiswaan', '2020-06-19', '00:04:00', '01:04:00', 3, NULL, NULL, NULL, '2', '2020-06-19 04:04:51', '2020-06-19 04:06:58'),
(29, 'Rapat Kesiswaan', '2020-06-19', '01:05:00', '02:05:00', 2, NULL, NULL, NULL, '2', '2020-06-19 04:05:46', '2020-06-19 04:06:58'),
(30, 'Rapat Kesiswaan', '2020-06-19', '13:07:00', '14:07:00', 2, NULL, NULL, NULL, '2', '2020-06-19 04:08:05', '2020-06-19 07:17:59'),
(31, 'Rapat Kesiswaan', '2020-06-19', '16:47:00', '17:47:00', 1, NULL, NULL, NULL, '2', '2020-06-19 08:47:19', '2020-06-21 08:24:05'),
(32, 'Rapat Keluarga', '2020-06-21', '16:27:00', '18:27:00', 1, NULL, NULL, NULL, '2', '2020-06-21 08:27:36', '2020-06-21 12:48:28'),
(33, 'Rapat Koordinasi Wali Murid', '2020-06-26', '00:46:00', '13:46:00', 1, NULL, NULL, NULL, '2', '2020-06-25 04:46:38', '2020-06-29 04:23:09'),
(34, 'Rapat PPDB', '2020-06-29', '11:23:00', '00:23:00', 1, NULL, NULL, NULL, '2', '2020-06-29 04:23:58', '2020-06-29 04:23:58'),
(35, 'Rapat PPDB', '2020-06-29', '13:24:00', '16:24:00', 1, NULL, NULL, NULL, '2', '2020-06-29 04:24:41', '2020-06-29 10:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Ruang KEPALA SEKOLAH', '2020-05-30 13:37:28', NULL),
(2, 'AULA SMKN 1 BOYOLANGU', '2020-06-01 14:16:47', NULL),
(3, 'Ruang 55', '2020-06-15 15:47:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` int(11) NOT NULL,
  `nik_tamu` varchar(16) NOT NULL,
  `nama_tamu` varchar(125) NOT NULL,
  `alamat` text NOT NULL,
  `keperluan` text NOT NULL,
  `photo` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nik_tamu`, `nama_tamu`, `alamat`, `keperluan`, `photo`, `created_at`, `updated_at`) VALUES
(1, '3504030804020001', 'Candra Prasetyo', 'Ds Tunggulsari Kec Kedungwaru', 'Menemui Bu Guru', 'b82d9e1b53e07fad46fbc61aeb1f0c8f4251d946.jpeg', '2020-06-29 02:41:13', '2020-06-29 02:41:13'),
(2, '3504030804020001', 'Candra Prasetyo', 'Ds Tunggulsari Kec Kedungwaru', 'Menemui Bu guru', 'cfc2c3a457c4a8cd9fc5b9935cce251cfa3621b9.jpeg', '2020-06-29 02:45:09', '2020-06-29 02:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `tujuan`
--

CREATE TABLE `tujuan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tujuan`
--

INSERT INTO `tujuan` (`id`, `nama`, `admin`, `created_at`, `updated_at`) VALUES
(1, 'SARPRAS', 'azizatulfalah01@gmail.com', '2020-05-07 03:52:05', '2020-06-21 08:37:00'),
(2, 'SDM', 'candravina100@gmail.com', '2020-05-07 03:52:05', '2020-06-18 03:47:08'),
(3, 'BKK', 'candravina100@gmail.com', '2020-05-07 03:54:30', '2020-06-18 03:47:12'),
(4, 'TU', 'candravina100@gmail.com', '2020-05-07 03:54:30', '2020-06-18 03:47:15'),
(5, 'KESISWAAN', 'candravina100@gmail.com', '2020-05-07 03:54:30', '2020-06-18 03:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `undangan`
--

CREATE TABLE `undangan` (
  `id` int(11) NOT NULL,
  `rapat_id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_guru` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status_surat` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undangan`
--

INSERT INTO `undangan` (`id`, `rapat_id`, `nip`, `nama_guru`, `email`, `status_surat`, `created_at`, `updated_at`) VALUES
(1, 2, '1234567890987642', 'Candra Prasetyo', 'candravina100@gmail.com', '', '2020-05-30 16:12:47', NULL),
(2, 2, '123456789098765', 'Candra Prasetyo', 'candravina100@gmail.com', '', '2020-05-30 16:13:41', NULL),
(3, 6, '1212121212780831001', 'Last Pokok!!', 'last@boh.coh', '', '2020-06-01 12:40:09', NULL),
(4, 6, '044563173887', 'Dalimin Hutasoit', 'Default@gmail.com', '', '2020-06-01 13:24:03', NULL),
(5, 6, '061136757211', 'Genta Mulyani', 'Default@gmail.com', '', '2020-06-01 13:24:03', NULL),
(6, 9, '097078608209', 'Agnes Ami Yolanda', 'Default@gmail.com', '', '2020-06-01 13:31:59', NULL),
(7, 9, '1212121212780831001', 'Last Pokok!!', 'last@boh.coh', '', '2020-06-01 13:31:59', NULL),
(8, 9, '121212211212121200', 'Supri', 'supri@gmail.com', '', '2020-06-01 13:31:59', NULL),
(9, 10, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', '', '2020-06-01 13:56:23', NULL),
(10, 10, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', '', '2020-06-01 13:56:45', NULL),
(11, 10, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', '', '2020-06-01 13:57:13', NULL),
(12, 10, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', '', '2020-06-01 13:57:48', NULL),
(13, 10, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', '', '2020-06-01 13:58:49', NULL),
(14, 10, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', '', '2020-06-01 14:13:34', NULL),
(15, 11, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', '1', '2020-06-01 14:36:35', '2020-06-01 14:47:11'),
(16, 11, '123112212333021300', 'Osis Esemkita', 'oesemkita2019@gmail.com\r\n', '0', '2020-06-01 14:37:49', '2020-06-01 14:47:16'),
(17, 12, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', '1', '2020-06-01 14:57:59', '2020-06-01 14:58:54'),
(18, 12, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', '1', '2020-06-01 14:58:53', '2020-06-01 14:58:54'),
(19, 13, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', NULL, '2020-06-01 15:01:57', NULL),
(20, 14, '097078608209', 'Agnes Ami Yolanda', 'Default@gmail.com', NULL, '2020-06-01 15:04:22', NULL),
(21, 14, '101990144197', 'Tania Haryanti S.IP', 'Default@gmail.com', NULL, '2020-06-01 15:04:22', NULL),
(22, 14, '1212121212780831001', 'Last Pokok!!', 'last@boh.coh', NULL, '2020-06-01 15:04:22', NULL),
(23, 14, '123112212333021300', 'Osis Esemkita', 'oesemkita2019@gmail.com\r\n', NULL, '2020-06-01 15:04:22', NULL),
(24, 15, '044563173887', 'Dalimin Hutasoit', 'Default@gmail.com', '0', '2020-06-01 19:06:10', NULL),
(25, 15, '061136757211', 'Genta Mulyani', 'Default@gmail.com', '0', '2020-06-01 19:06:10', NULL),
(26, 21, '097078608209', 'Agnes Ami Yolanda', 'Default@gmail.com', '1', '2020-06-02 08:32:00', '2020-06-02 08:36:39'),
(27, 21, '101990144197', 'Tania Haryanti S.IP', 'Default@gmail.com', '1', '2020-06-02 08:32:00', '2020-06-02 08:36:40'),
(28, 21, '097078608209', 'Agnes Ami Yolanda', 'Default@gmail.com', '1', '2020-06-02 08:33:28', '2020-06-02 08:36:41'),
(29, 21, '101990144197', 'Tania Haryanti S.IP', 'Default@gmail.com', '1', '2020-06-02 08:33:28', '2020-06-02 08:36:43'),
(30, 21, '122112120112121200', 'Candra Prasetyo', 'Default@gmail.com', '1', '2020-06-02 08:34:00', '2020-06-02 08:36:44'),
(31, 21, '123112212333021300', 'Osis Esemkita', 'oesemkita2019@gmail.com\r\n', '1', '2020-06-02 08:34:00', '2020-06-02 08:36:45'),
(32, 21, '122112120112121200', 'Candra Prasetyo', 'Default@gmail.com', '1', '2020-06-02 08:34:46', '2020-06-02 08:36:46'),
(33, 21, '123112212333021300', 'Osis Esemkita', 'oesemkita2019@gmail.com\r\n', '1', '2020-06-02 08:34:46', '2020-06-02 08:36:47'),
(34, 21, '122112120112121200', 'Candra Prasetyo', 'Default@gmail.com', '1', '2020-06-02 08:35:50', '2020-06-02 08:36:49'),
(35, 21, '123112212333021300', 'Osis Esemkita', 'oesemkita2019@gmail.com\r\n', '1', '2020-06-02 08:35:50', '2020-06-02 08:36:50'),
(36, 21, '122112120112121200', 'Candra Prasetyo', 'Default@gmail.com', '1', '2020-06-02 08:36:36', '2020-06-02 08:36:51'),
(37, 21, '123112212333021300', 'Osis Esemkita', 'oesemkita2019@gmail.com\r\n', '1', '2020-06-02 08:36:36', '2020-06-02 08:36:52'),
(38, 22, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', '1', '2020-06-02 08:46:50', '2020-06-02 08:46:51'),
(39, 22, '2002070120170717002', 'Azizatul Falah', 'falahazizatul07@gmail.com', '1', '2020-06-02 08:46:50', '2020-06-02 08:46:52'),
(40, 23, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', '1', '2020-06-02 08:48:16', '2020-06-02 08:48:17'),
(41, 23, '2002070120170717002', 'Azizatul Falah', 'falahazizatul07@gmail.com', '1', '2020-06-02 08:48:16', '2020-06-02 08:48:18'),
(42, 24, '1212121212780831001', 'Last Pokok!!', 'last@boh.coh', '1', '2020-06-14 11:39:44', '2020-06-14 11:39:53'),
(43, 24, '123112212333021300', 'Osis Esemkita', 'oesemkita2019@gmail.com\r\n', '1', '2020-06-14 11:39:44', '2020-06-14 11:39:57'),
(44, 25, '510300902080', 'Maryadi Putra', 'Default@gmail.com', '1', '2020-06-14 11:53:24', '2020-06-14 11:53:44'),
(45, 25, '884243778071', 'Ajeng Fujiati', 'Default@gmail.com', '1', '2020-06-14 11:53:24', '2020-06-14 11:53:53'),
(46, 26, '188380874885', 'Empluk Candra Wibowo M.TI.', 'Default@gmail.com', '1', '2020-06-15 15:25:51', '2020-06-15 15:25:55'),
(47, 26, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', '1', '2020-06-15 15:25:51', '2020-06-15 15:25:56'),
(48, 26, '2002070120170717002', 'Azizatul Falah', 'falahazizatul07@gmail.com', '1', '2020-06-15 15:25:51', '2020-06-15 15:25:58'),
(49, 27, '044563173887', 'Dalimin Hutasoit', 'Default@gmail.com', '1', '2020-06-19 04:02:51', '2020-06-19 04:02:55'),
(50, 27, '075960132074', 'Alika Nadine Usada', 'Default@gmail.com', '1', '2020-06-19 04:02:51', '2020-06-19 04:02:56'),
(51, 27, '084415724483', 'Gamanto Sabar Haryanto', 'Default@gmail.com', '1', '2020-06-19 04:02:51', '2020-06-19 04:02:59'),
(52, 27, '097078608209', 'Agnes Ami Yolanda', 'Default@gmail.com', '1', '2020-06-19 04:02:51', '2020-06-19 04:03:01'),
(53, 28, '084415724483', 'Gamanto Sabar Haryanto', 'Default@gmail.com', '1', '2020-06-19 04:05:02', '2020-06-19 04:05:05'),
(54, 28, '097078608209', 'Agnes Ami Yolanda', 'Default@gmail.com', '1', '2020-06-19 04:05:02', '2020-06-19 04:05:07'),
(55, 28, '101990144197', 'Tania Haryanti S.IP', 'Default@gmail.com', '1', '2020-06-19 04:05:02', '2020-06-19 04:05:10'),
(56, 29, '044563173887', 'Dalimin Hutasoit', 'Default@gmail.com', '1', '2020-06-19 04:06:00', '2020-06-19 04:06:03'),
(57, 29, '075960132074', 'Alika Nadine Usada', 'Default@gmail.com', '1', '2020-06-19 04:06:00', '2020-06-19 04:06:05'),
(58, 29, '084415724483', 'Gamanto Sabar Haryanto', 'Default@gmail.com', '1', '2020-06-19 04:06:00', '2020-06-19 04:06:07'),
(59, 29, '097078608209', 'Agnes Ami Yolanda', 'Default@gmail.com', '1', '2020-06-19 04:06:00', '2020-06-19 04:06:08'),
(60, 29, '101990144197', 'Tania Haryanti S.IP', 'Default@gmail.com', '1', '2020-06-19 04:06:00', '2020-06-19 04:06:10'),
(61, 30, '044563173887', 'Dalimin Hutasoit', 'Default@gmail.com', '1', '2020-06-19 04:08:15', '2020-06-19 04:08:16'),
(62, 30, '075960132074', 'Alika Nadine Usada', 'Default@gmail.com', '1', '2020-06-19 04:08:15', '2020-06-19 04:08:18'),
(63, 30, '084415724483', 'Gamanto Sabar Haryanto', 'Default@gmail.com', '1', '2020-06-19 04:08:15', '2020-06-19 04:08:23'),
(64, 30, '097078608209', 'Agnes Ami Yolanda', 'Default@gmail.com', '1', '2020-06-19 04:08:15', '2020-06-19 04:08:26'),
(65, 31, '044563173887', 'Dalimin Hutasoit', 'Default@gmail.com', '1', '2020-06-19 08:47:30', '2020-06-19 08:47:31'),
(66, 31, '075960132074', 'Alika Nadine Usada', 'Default@gmail.com', '1', '2020-06-19 08:47:30', '2020-06-19 08:47:32'),
(67, 31, '084415724483', 'Gamanto Sabar Haryanto', 'Default@gmail.com', '1', '2020-06-19 08:47:30', '2020-06-19 08:47:33'),
(68, 31, '097078608209', 'Agnes Ami Yolanda', 'Default@gmail.com', '1', '2020-06-19 08:47:30', '2020-06-19 08:47:34'),
(69, 32, '200204082017071700', 'Candra Prasetyo', 'candravina100@gmail.com', '1', '2020-06-21 08:27:56', '2020-06-21 08:27:58'),
(70, 32, '2002070120170717002', 'Azizatul Falah', 'falahazizatul07@gmail.com', '1', '2020-06-21 08:27:56', '2020-06-21 08:27:59'),
(71, 33, '101990144197', 'Tania Haryanti S.IP', 'Default@gmail.com', '1', '2020-06-25 04:46:51', '2020-06-25 04:46:52'),
(72, 33, '122112120112121200', 'Candra Prasetyo', 'Default@gmail.com', '1', '2020-06-25 04:46:51', '2020-06-25 04:46:53'),
(73, 35, '061136757211', 'Genta Mulyani', 'candravina100@gmail.com', '1', '2020-06-29 04:24:55', '2020-06-29 04:25:59'),
(74, 35, '123112212333021300', 'Osis Esemkita', 'oesemkita2019@gmail.com\r\n', '1', '2020-06-29 04:24:55', '2020-06-29 04:25:59'),
(75, 35, '2002070120170717002', 'Azizatul Falah', 'falahazizatul07@gmail.com', '1', '2020-06-29 04:24:55', '2020-06-29 04:25:59'),
(76, 35, '061136757211', 'Genta Mulyani', 'candravina100@gmail.com', '1', '2020-06-29 04:25:58', '2020-06-29 04:25:59'),
(77, 35, '123112212333021300', 'Osis Esemkita', 'oesemkita2019@gmail.com\r\n', '1', '2020-06-29 04:25:58', '2020-06-29 04:25:59'),
(78, 35, '2002070120170717002', 'Azizatul Falah', 'falahazizatul07@gmail.com', '1', '2020-06-29 04:25:58', '2020-06-29 04:25:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_quesioner`
--
ALTER TABLE `detail_quesioner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quesioner_id` (`quesioner_id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal_detail`
--
ALTER TABLE `jadwal_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kritik_saran`
--
ALTER TABLE `kritik_saran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan_prakerin`
--
ALTER TABLE `laporan_prakerin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan_rapat`
--
ALTER TABLE `laporan_rapat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_quesioner_id` (`detail_quesioner_id`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `perusahaan_siswa`
--
ALTER TABLE `perusahaan_siswa`
  ADD PRIMARY KEY (`id_perusahaan_siswa`);

--
-- Indexes for table `quesioner`
--
ALTER TABLE `quesioner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rapat`
--
ALTER TABLE `rapat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `tujuan`
--
ALTER TABLE `tujuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `undangan`
--
ALTER TABLE `undangan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_quesioner`
--
ALTER TABLE `detail_quesioner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jadwal_detail`
--
ALTER TABLE `jadwal_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `kritik_saran`
--
ALTER TABLE `kritik_saran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `laporan_prakerin`
--
ALTER TABLE `laporan_prakerin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `laporan_rapat`
--
ALTER TABLE `laporan_rapat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `perusahaan_siswa`
--
ALTER TABLE `perusahaan_siswa`
  MODIFY `id_perusahaan_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quesioner`
--
ALTER TABLE `quesioner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rapat`
--
ALTER TABLE `rapat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tujuan`
--
ALTER TABLE `tujuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `undangan`
--
ALTER TABLE `undangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_quesioner`
--
ALTER TABLE `detail_quesioner`
  ADD CONSTRAINT `detail_quesioner_ibfk_1` FOREIGN KEY (`quesioner_id`) REFERENCES `quesioner` (`id`);

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`detail_quesioner_id`) REFERENCES `detail_quesioner` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
