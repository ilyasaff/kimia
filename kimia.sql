-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 10, 2013 at 12:17 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kimia`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `idu` int(3) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(15) NOT NULL,
  `telepon` int(12) NOT NULL,
  `umur` varchar(2) NOT NULL,
  PRIMARY KEY (`idu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`idu`, `nama`, `alamat`, `password`, `telepon`, `umur`) VALUES
(2, 'il', 'jl jatinom tijayan jatinom\r\nklaten rt/rw:03/031', 'il', 823847237, '23'),
(11, 'fredik kurnia', 'solo utara, Ngampilan', 'fredik', 2147483647, '34'),
(12, 'joko', 'garut', 'garut', 93489024, '45');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE IF NOT EXISTS `gejala` (
  `idg` varchar(4) NOT NULL,
  `gejala` text NOT NULL,
  `pertanyaan` text NOT NULL,
  PRIMARY KEY (`idg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`idg`, `gejala`, `pertanyaan`) VALUES
('G001', 'Demam', 'Apakah anda mengalami demam?'),
('G002', 'iritasi mata, menjadi memerah', 'Apakah anda mengalami iritasi pada mata, menjadi memerah?'),
('G003', 'detak jantung tidak teratur', 'Apakah anda mengalami detak jantung tidak teratur?'),
('G004', 'hilang daya kontrol', 'Apakah anda mengalami hilang daya kontrol?'),
('G005', 'terasa mengantuk', 'Apakah anda mengalami mengantuk terus menerus?'),
('G006', 'perut terasa mual', 'Apakah perut anda terasa mual?'),
('G007', 'muntah muntah', 'Apakah anda mengalami muntah muntah?'),
('G008', 'sakit kepala atau pusing', 'Apakah anda mengalami sakit kepala atau terasa pusing?\r\n'),
('G009', 'sakit perut', 'Apakah anda mengalami sakit perut?'),
('G010', 'sesak nafas', 'Apakah anda mengalami sesak nafas?'),
('G011', 'suhu badan rendah', 'Apakah suhu badan anda rendah/terasa dingin?\r\n'),
('G012', 'tidak sadarkan diri', 'Apakah mengalami pingsan/tidak sadarkan diri?'),
('G013', 'disorientasi (menjadi linglung/mudah lupa)', 'Apakah anda mengalmi disorientasi (menjadi linglung/mudah lupa)?'),
('G014', 'gangguan penglihatan (buram)', 'Apakah anda mengalami gangguan penglihatan (buram)?'),
('G015', 'badan gemetar', 'Apakah badan anda gemetar?'),
('G016', 'kulit deffating/dermatitis (keriput dan berkerut)', 'Apakah kulit anda deffating/dermatitis (keriput dan berkerut)?'),
('G017', 'mood cepat berubah', 'Apakah anda mengalami mood yg cepat berubah?'),
('G018', 'lumpuh', 'Apakah anda mengalami lumpuh?'),
('G019', 'pendarahan dalam tubuh (keluarnya darah tiba-tiba dari anggota tubuh)', 'Apakah anda mengalami pendarahan dalam tubuh (keluarnya darah tiba-tiba dari anggota tubuh)?'),
('G020', 'gangguan paru paru', 'Apakah anda mengalami gangguan paru paru?'),
('G021', 'gangguan peredaran darah menjadi lesu dan sukar berfikir.', 'Apakah anda mengalami gangguan peredaran darah menjadi lesu dan sukar berfikir?'),
('G022', 'alergi kulit menjadi bengkak, bentol bentol, kemerahan.', 'Apakah anda mengalami alergi kulit menjadi bengkak, bentol bentol, kemerahan?'),
('G023', 'sakit dada', 'Apakah anda mengalami sakit dada?'),
('G024', 'seluruh badan terasa terbakar', 'Apakah seluruh badan terasa terbakar?'),
('G025', 'menjadi hiperaktif yaitu mudah gelisah, tidak bisa diam, berlebihan.', 'Apakah anda menjadi hiperaktif yaitu mudah gelisah, tidak bisa diam, berlebihan?'),
('G026', 'tubuh terasa kesemutan jika bergerak', 'Apakah tubuh anda terasa kesemutan jika bergerak?'),
('G027', 'wajah menjadi biru', 'Apakah wajah anda menjadi biru?'),
('G028', 'batuk berat', 'Apakah anda mengalami batuk berat?'),
('G029', 'susah buang air besar', 'Apakah anda mengalami susah buang air besar?'),
('G030', 'telinga mendengung', 'Apakah teling anda terasa mendengung?'),
('G031', 'gangguan syaraf seperti kram, mati rasa, kulit terasa tebal, otot kaku', 'Apakah anda mengalami gangguan syaraf seperti kram, mati rasa, kulit terasa tebal, otot kaku?'),
('G032', 'biji mata membesar', 'Apakah biji mata anda membesar?'),
('G033', 'bagian ginjal terasa sakit', 'Apakah bagian ginjal anda terasa sakit?'),
('G034', 'kerusakan hati ditandai dengan mata dan kulit menguning & cepat lelah', 'Apakah anda mengalami kerusakan hati ditandai dengan mata dan kulit menguning & cepat lelah?'),
('G035', 'kejang-kejang', 'Apakah mengalami kejang-kejang?'),
('G036', 'nafas pendek', 'Apakah nafas anda pendek?');

-- --------------------------------------------------------

--
-- Table structure for table `kimia`
--

CREATE TABLE IF NOT EXISTS `kimia` (
  `idk` varchar(4) NOT NULL,
  `nm_kimia` varchar(35) NOT NULL,
  `nama_lain` text NOT NULL,
  `definisi` text NOT NULL,
  `pencegahan` text NOT NULL,
  `solusi` text NOT NULL,
  PRIMARY KEY (`idk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kimia`
--

INSERT INTO `kimia` (`idk`, `nm_kimia`, `nama_lain`, `definisi`, `pencegahan`, `solusi`) VALUES
('k001', 'Acetone', 'Propane, Dimethyl ketone, Methyl ketone', 'Bentuk tidak berwarna, mudah menguap dan sangat terbakar sedang bau beraroma khas pada konsentrasi rendah', 'Aseton tempatkan pada bertemperatur dan bertekanan stabil, harus disimpan jauh dari alat yang dapat menimbulkan api seperti panas, nyala, percikan api. Jangan campur dengan zat asam, amin, halogen, campuran karbon halo, oksidasi, garam metal, peroksida dan bahan kimia yang mudah terbakar', '1. cari udara segar \r\n2. tegakkan badan \r\n3. berikan nafas buatan \r\n4. cuci kulit dengan air dan sabun \r\n5. bilas mata dengan air \r\n6. berkumur '),
('k002', 'Benzene', 'Benzol, benzolen, Penil hidrida, minyak karbon', 'Bentuk tidak berwarna dan bau cairan kuning pucat beraroma secara khusus', 'Tempatkan pada yang bertemperatur dan bertekanan stabil. Hindarkan dari panas, api, percikan bunga api dan yang menimbulkan nyala api. Jauhkan dari keran air dan saluran air. Jangan dicampur dengan asam, mlekul, halogen, oksidasi dan garam metal', '1. basuh mata min 15 menit\r\n2. cukup bilas kulit dengan air\r\n3. lepaskan pakaian yang terkontaminasi\r\n4. cari udara segar\r\n5. berikan nafas buatan\r\n6. berikan oksigen\r\n7. jangan memasukkan apapun ke mulut\r\n8. jika muntah sandarkan ke depan\r\n9. jangan memaksa muntah kecuali oleh MEDIS\r\n'),
('k003', 'Dichloromethane', 'Methylene chloride, DCM, CH2CI2 ', 'Cairan tidak berwarna. Menyerupai bau Khloroform/Bius.', 'Hindari kontak dengan asam, molekul, metal, pengoksidasian, amin dan halogen', '1. cari udara segar\r\n2. berikan nafas buatan\r\n3. lepaskan pakaian yang terkontaminasi\r\n4. bilas kulit dengan air dan sabun\r\n5. bilas mata dengan air\r\n6. lepaskan lensa kontak\r\n7. berkumur\r\n8. jangan memaksa muntah kecuali oleh MEDIS\r\n9. minum air yang banyak\r\n10. cari bantuan medis\r\n'),
('k004', 'Diisocyanate', 'Toluen-2, 6-diisosinat, 6-Diisocyanato, 2,6-TDI', 'Cairan dengan gradasi warna dari putih sampai kuning. Sangat merangsang dan sangat berbau', 'Hindari kontak langsung bila terjadi kebocoran atau tertumpah', '1. cari udara segar\r\n2. berikan oksigen\r\n3. cukup bilas kulit dengan air\r\n4. bilas mata dengan air\r\n5. berkumur\r\n6. lepaskan pakaian yang terkontaminasi\r\n7. lepaskan lensa kontak'),
('k005', 'Methyl Bromide', 'Bromomethane, Monobromomethane, CH3Br', 'Cairan atau gas tidak berwarna dan menguap. Berbau seperti kloroform dalam konsentrasi tinggi', 'Harus disimpan ditempat yang sirkulasi udaranya baik dan gelap. Hindarkan dari suhu es', '1. cari udara segar\r\n2. tegakkan badan\r\n3. basuh mata min 15 menit\r\n4. lepaskan pakaian yang terkontaminasi\r\n5. bilas kulit dengan air dan sabun\r\n6. berkumur\r\n7. berikan nafas buatan'),
('k006', 'Methyl Alcohol', 'Methanol, Carbinol, Wood Alcohol, CH4O/CH3OH', 'Cairan tidak berwarna dan mudah terbakar. Berbau khas dan tajam', 'Hindari mencampur dengan zat lain. Hindari menghirup bahan tersebut dan produknya. Jauhkan dari keran air dan saluran pembuangan air', '1. basuh mata min 15 menit\r\n2. bilas kulit min 15 menit\r\n3. cuci pakaian bila akan di pakai lagi\r\n4. compres dengan air dingin pada kulit iritasi\r\n5. oleskan krim anti bakteri\r\n6. cari udara segar\r\n7. longgarkan pakaian\r\n8. berikan nafas buatan\r\n9. jangan memaksa muntah kecuali oleh MEDIS\r\n'),
('k007', 'N-Heksan', 'Heksan, Hexyl Hydride, CH6H14', 'Cairan tidak berwarna, transparan dan berbau minyak.Bila berbau berarti konsentrasinya sudah sangat tinggi di udara', 'Jauhkan dari keran dan saluran pembuangan. Jangan campur dengan oksidasi, halogen dan barang yang mudah terbakar', '1. cari udara segar\r\n2. lepaskan pakaian yang terkontaminasi\r\n3. bilas kulit dengan air dan sabun\r\nbilas mata dengan air\r\n4. jangan memaksa muntah kecuali oleh MEDIS\r\n5. berkumur\r\n6. berikan oksigen'),
('k008', 'Toluene', 'Methylbenzene, Toluol, C6H5CH3/C7H8', 'Cairan mudah menguap, tidak berwarna dan transparan. Beraroma manis', 'Berminyak dan sangat mudah terbakar dan dapat menimbulkan iritasi. Hindarkan dari panas, api. Jauhkan dari keran air dan saluran pembuangan. Jangan campur dengan halogen, bahan yang mudah terbakar, asam oksidasi dan garam metal', '1. cari udara segar\r\n2. longgarkan pakaian\r\n3. berikan oksigen\r\n4. jangan memaksa muntah kecuali oleh MEDIS\r\n5. jangan memasukkan apapun ke mulut\r\n6. bilas kulit dengan air dan sabun\r\nberkumur'),
('k009', 'Crystalline Silica', 'Quartz, Silicon dioxide, silica, SiO2', 'Bentuk tidak berwarna atau putih seperti kristal. Bubuk tak berbentuk dan tidak berbau', 'Hampir tidak menyebabkan bahaya terbakar. Jangan campur dengan asam, molekul, halogen, metal dan garam metal, oksidasi dan bahan yang mudah terbakar', '1. cari udara segar\r\n2. berikan oksigen\r\n3. cukup bilas kulit dengan air\r\n4. cari bantuan medis\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `relasi`
--

CREATE TABLE IF NOT EXISTS `relasi` (
  `id_r` int(3) NOT NULL AUTO_INCREMENT,
  `idg` varchar(4) NOT NULL,
  `idk` varchar(4) NOT NULL,
  `mb` float NOT NULL,
  `md` float NOT NULL,
  PRIMARY KEY (`id_r`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `relasi`
--

INSERT INTO `relasi` (`id_r`, `idg`, `idk`, `mb`, `md`) VALUES
(2, 'G001', 'k001', 0.7, 0.4),
(3, 'G002', 'k001', 0.9, 0.1),
(4, 'G002', 'k002', 0.9, 0.3),
(5, 'G002', 'k003', 0.8, 0.3),
(6, 'G002', 'k007', 0.8, 0.3),
(7, 'G002', 'k008', 0.7, 0.3),
(8, 'G002', 'k009', 0.9, 0.3),
(9, 'G003', 'k001', 0.7, 0.2),
(10, 'G003', 'k002', 0.7, 0.2),
(11, 'G003', 'k003', 0.9, 0.1),
(12, 'G003', 'k007', 0.7, 0.4),
(13, 'G004', 'k001', 0.8, 0.2),
(14, 'G004', 'k002', 0.8, 0.3),
(15, 'G004', 'k004', 0.8, 0.4),
(16, 'G004', 'k006', 0.9, 0.3),
(17, 'G005', 'k001', 0.6, 0.3),
(18, 'G005', 'k002', 0.6, 0.2),
(19, 'G005', 'k004', 0.9, 0.3),
(20, 'G005', 'k005', 0.6, 0.1),
(21, 'G006', 'k001', 0.8, 0.1),
(22, 'G006', 'k004', 0.8, 0.2),
(23, 'G006', 'k005', 0.8, 0.4),
(24, 'G006', 'k007', 0.9, 0.2),
(25, 'G006', 'k008', 0.8, 0.4),
(26, 'G007', 'k001', 0.9, 0.3),
(27, 'G007', 'k003', 0.8, 0.3),
(28, 'G007', 'k004', 0.8, 0.4),
(29, 'G007', 'k005', 0.9, 0.3),
(30, 'G007', 'k008', 0.9, 0.2),
(31, 'G008', 'k001', 0.9, 0.3),
(32, 'G008', 'k002', 0.8, 0.2),
(33, 'G008', 'k003', 0.9, 0.2),
(34, 'G008', 'k004', 0.9, 0.4),
(35, 'G008', 'k005', 0.7, 0.4),
(36, 'G008', 'k006', 0.8, 0.2),
(37, 'G008', 'k007', 0.8, 0.3),
(38, 'G008', 'k008', 0.7, 0.4),
(39, 'G009', 'k001', 0.7, 0.2),
(40, 'G009', 'k004', 0.7, 0.4),
(41, 'G009', 'k005', 0.6, 0.2),
(42, 'G010', 'k001', 0.8, 0.3),
(43, 'G010', 'k005', 0.8, 0.1),
(44, 'G010', 'k009', 0.6, 0.3),
(45, 'G011', 'k001', 0.1, 0.2),
(46, 'G012', 'k001', 0.7, 0.2),
(47, 'G012', 'k005', 0.8, 0.3),
(48, 'G012', 'k007', 0.8, 0.2),
(49, 'G013', 'k002', 0.7, 0.2),
(50, 'G014', 'k002', 0.7, 0.2),
(51, 'G014', 'k007', 0.7, 0.2),
(52, 'G015', 'k002', 0.6, 0.3),
(53, 'G015', 'k004', 0.6, 0.2),
(54, 'G015', 'k005', 0.6, 0.3),
(55, 'G015', 'k006', 0.8, 0.3),
(56, 'G016', 'k002', 0.6, 0.3),
(57, 'G017', 'k002', 0.7, 0.4),
(58, 'G017', 'k007', 0.7, 0.3),
(59, 'G018', 'k002', 0.5, 0.3),
(60, 'G018', 'k005', 0.6, 0.2),
(61, 'G018', 'k007', 0.6, 0.3),
(62, 'G019', 'k002', 0.7, 0.4),
(63, 'G020', 'k002', 0.8, 0.4),
(64, 'G020', 'k004', 0.6, 0.3),
(65, 'G021', 'k003', 0.7, 0.4),
(66, 'G021', 'k006', 0.6, 0.4),
(67, 'G021', 'k009', 0.8, 0.3),
(68, 'G022', 'k004', 0.7, 0.4),
(69, 'G023', 'k004', 0.7, 0.1),
(70, 'G023', 'k009', 0.7, 0.4),
(71, 'G024', 'k004', 0.8, 0.3),
(72, 'G025', 'k005', 0.5, 0.4),
(73, 'G026', 'k005', 0.8, 0.3),
(74, 'G027', 'k005', 0.9, 0.2),
(75, 'G028', 'k006', 0.7, 0.4),
(76, 'G028', 'k007', 0.8, 0.3),
(77, 'G029', 'k006', 0.5, 0.3),
(78, 'G030', 'k006', 0.7, 0.4),
(79, 'G031', 'k006', 0.6, 0.5),
(80, 'G031', 'k007', 0.7, 0.1),
(81, 'G032', 'k008', 0.9, 0.3),
(82, 'G033', 'k008', 0.6, 0.3),
(83, 'G034', 'k008', 0.5, 0.2),
(84, 'G035', 'k007', 0.7, 0.4),
(85, 'G036', 'k007', 0.9, 0.2),
(86, 'G012', 'k004', 0.7, 0.1);

-- --------------------------------------------------------

--
-- Table structure for table `t_konsultasi`
--

CREATE TABLE IF NOT EXISTS `t_konsultasi` (
  `id_k` int(3) NOT NULL,
  `idn` int(3) NOT NULL,
  `idp` int(3) NOT NULL,
  `cf` float NOT NULL,
  PRIMARY KEY (`id_k`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_konsultasi`
--


-- --------------------------------------------------------

--
-- Table structure for table `t_pertanyaan`
--

CREATE TABLE IF NOT EXISTS `t_pertanyaan` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `idg` varchar(4) NOT NULL,
  `g_ya` varchar(5) NOT NULL,
  `g_tidak` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=169 ;

--
-- Dumping data for table `t_pertanyaan`
--

INSERT INTO `t_pertanyaan` (`id`, `idg`, `g_ya`, `g_tidak`) VALUES
(167, 'G035', 'G018', ''),
(166, 'G034', 'G007', ''),
(165, 'G033', 'G034', ''),
(164, 'G032', 'G033', ''),
(163, 'G031', 'G036', ''),
(162, 'G030', 'G029', ''),
(161, 'G029', 'G028', ''),
(160, 'G028', 'G031', ''),
(159, 'G027', 'G005', ''),
(158, 'G026', 'G027', 'G004'),
(157, 'G025', 'G010', ''),
(156, 'G024', 'G009', ''),
(155, 'G023', 'G020', ''),
(154, 'G022', 'G023', 'G030'),
(153, 'G021', 'G004', ''),
(152, 'G020', 'G019', 'G002'),
(151, 'G019', 'G004', 'G024'),
(150, 'G018', 'G016', 'G022'),
(149, 'G017', 'G013', ''),
(148, 'G016', 'G020', 'G028'),
(147, 'G015', 'G018', ''),
(146, 'G014', 'G017', 'G001'),
(145, 'G013', 'G015', 'G035'),
(144, 'G012', 'G026', ''),
(143, 'G011', 'G009', 'G009'),
(142, 'G010', 'G011', ''),
(141, 'G009', 'G012', 'G021'),
(140, 'G008', 'G002', 'G010'),
(139, 'G007', 'G006', 'G023'),
(138, 'G006', '', ''),
(137, 'G005', 'G007', '0'),
(136, 'G004', 'G005', 'G007'),
(135, 'G003', 'G014', 'G032'),
(134, 'G002', 'G003', 'G015'),
(133, 'G001', 'G010', 'G021'),
(168, 'G036', 'G006', 'G021');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(3) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `password`, `level`) VALUES
('admin', 'admin', '20'),
('fredik kurnia', 'fredik', '10'),
('il', 'il', '10'),
('ilyas', 'ilyas', '20'),
('joko', 'garut', '10'),
('pakar', 'pakar', '20');
