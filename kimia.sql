-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 19, 2013 at 11:07 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pakar`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`idu`, `nama`, `alamat`, `password`, `telepon`, `umur`) VALUES
(2, 'il', 'jl jatinom tijayan jatinom\r\nklaten rt/rw:03/031', 'il', 823847237, '23'),
(11, 'fredik kurnia', 'solo utara, Ngampilan', 'fredik', 2147483647, '34'),
(12, 'joko', 'garut', 'garut', 93489024, '45'),
(13, 'Nawan Pamungkas', 'jl.Pamungkas no 12\r\nKota Baru, Solo.', 'pamungkas', 2147483647, '29'),
(14, 'Zainal Praditta', 'jl. Pemuda tengah no 34\r\nKlaten Tengah, Klaten', 'zainal', 2147483647, '38'),
(15, 'saiful bahtiar', 'jl. surobayan rt:04 rw:02\r\nSurobayan, Bonyokan, Klaten.', 'ipul', 2147483647, '27');

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
('G001', 'Sakit tenggorokan\r\n', 'apakah anda mengalami sakit tenggorokan?'),
('G002', 'Batuk', 'Apakah anda mengalami batuk?'),
('G003', 'Kebingungan', 'Apakah anda mengalami kebingungan?'),
('G004', 'Sakit kepala atau Pusing', 'Apakah anda mengalami sakit kepala atau pusing?'),
('G005', 'Mengantuk', 'Apakah anda mengalami mengantuk?'),
('G006', 'Kulit kering dan tidak sadarkan diri', 'Apakah anda mengalami kulit kering dan tidak sadarkan diri?'),
('G007', 'Kulit Kemerahan, Perih dan mual, mata iritasi dan perih\r\n', 'Apakah anda mengalami kulit Kemerahan, Perih dan mual, mata iritasi, perih?\r\n'),
('G008', 'Penglihatan kabur dan Muntah\r\n', 'Apakah anda mengalami penglihatan kabur atau Muntah?\r\n'),
('G009', 'Sesak Nafas', 'Apakah anda mengalami sesak nafas?'),
('G010', 'Kejang-kejang', 'Apakah anda mengalammi kejang-kejang?'),
('G011', 'Nyeri perut', 'Apakah anda mengalami nyeri perut?'),
('G012', 'Badan terasa terbakar', 'Apakah anda mengalami badan terasa terbakar?'),
('G013', 'Kulit seperti terbakar', 'Apakah anda meresakan kulit seperti terbakar?'),
('G014', 'Diare', 'Apakah anda mengalami diare?'),
('G015', 'Halusinasi', 'Apakah anda mengalami halusinasi?'),
('G016', 'Kehilangan suara', 'Apakah anda mengalami kehilangan suara?'),
('G017', 'Kesemutan, gatal dan kulit lecet', 'Apakah anda mengalami kesemutan, gatal dan kulit lecet?'),
('G018', 'Abarasi kornea', 'Apakah mata anda mengalami abrasi kornea?'),
('G019', 'Suhu badan rendah', 'Apakah suhu badan anda rendah?'),
('G020', 'Demam', 'Apakah anda mengalami demam?'),
('G021', 'Linglung/disorientasi', 'Apakah anda mengalami linglung/disorientasi?'),
('G022', 'Pendarahan dari dalam tubuh', 'Apakah anda mengalami Pendarahan dari dalam tubuh?\r\n'),
('G023', 'Tekanan darah turun dan wajah pucat', 'Apakah anda mengalami tekanan darah turun dan wajah pucat?'),
('G024', 'Sakit dada', 'Apakah anda mengalami Sakit dada?'),
('G025', 'Hiperaktif dan mudah gelisah', 'Apakah anda merasakan hiperaktif dan mudah gelisah?'),
('G026', 'Wajah menjadi biru.', 'Apakah Wajah menjadi biru?'),
('G027', 'Susah buang air besar', 'Apakah anda mengalami Susah buang air besar?'),
('G028', 'Telinga mendengung', 'Apakah telinga anda mendengung?'),
('G029', 'Nafas pendek', 'Apakah anda merasakan nafas anda pendek?'),
('G030', 'Biji mata nada membesar', 'Apakah biji mata anda membesar?'),
('G031', 'Bagian ginjal terasa sakit', 'Apakah bagian ginjal anda terasa sakit?'),
('G032', 'Cepat lelah dan Kulit menguning.', 'Apakah anda merasa cepat lelah dan kulit menguning?'),
('G033', 'Lesu dan sukar berfikir', 'Apakah Anda mengalami lesu dan sukar berfikir?'),
('G034', 'Lumpuh/susah berjalan', 'Apakah kaki anda mengalami lumpuh/susah berjalan?');

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
('k001', 'Acetone', 'Propane, Dimethyl ketone, Methyl ketone', 'Jenis bahan kimia flammable (mudah terbakar). Bentuk tidak berwarna, mudah menguap dan sangat terbakar sedang bau beraroma khas pada konsentrasi rendah.', 'Aseton tempatkan pada bertemperatur dan bertekanan stabil,Simpan dalam tempat terkunci . Jauhkan dari panas dan sumber api.  Jangan menghirup gas/asap/uap/semprotan acetone. ). Simpan wadah di tempat yang sejuk, berventilasi baik. Simpan pada wadah yang tertutup rapat dan tersegel. Jauhkan dari sinar matahari langsung  dan hindari semua sumber yang memungkinkan penyulutan Kenakan pakaian pelindung yang sesuai.  Jangan campur dengan zat asam, amin, halogen, campuran karbon halo, oksidasi, garam metal, peroksida dan bahan kimia yang mudah terbakar.', '1. cari udara segar \r\n2. tegakkan badan \r\n3. berikan nafas buatan \r\n4. cuci kulit dengan air dan sabun \r\n5. bilas mata dengan air \r\n6. berkumur '),
('k002', 'Benzene', 'Benzol, benzolen, Penil hidrida, minyak karbon', 'Bentuk tidak berwarna dan bau cairan kuning pucat beraroma secara khusus', 'Tempatkan pada yang bertemperatur dan bertekanan stabil. Hindarkan dari panas, api, percikan bunga api dan yang menimbulkan nyala api. Jauhkan dari keran air dan saluran air. Jangan dicampur dengan asam, mlekul, halogen, oksidasi dan garam metal', '1. basuh mata min 15 menit\r\n2. cukup bilas kulit dengan air\r\n3. lepaskan pakaian yang terkontaminasi\r\n4. cari udara segar\r\n5. berikan nafas buatan\r\n6. berikan oksigen\r\n7. jangan memasukkan apapun ke mulut\r\n8. jika muntah sandarkan ke depan\r\n9. jangan memaksa muntah kecuali oleh MEDIS\r\n'),
('k003', 'Dichloromethane', 'Methylene chloride, DCM, CH2CI2 ', 'Termasuk kategori Harmful. Cairan tidak berwarna. Menyerupai bau Khloroform/Bius.', 'Hindari kontak dengan asam, molekul, metal, pengoksidasian, amin dan halogen.', '1. cari udara segar\r\n2. berikan nafas buatan\r\n3. lepaskan pakaian yang terkontaminasi\r\n4. bilas kulit dengan air dan sabun\r\n5. bilas mata dengan air\r\n6. \r\n7. berkumur\r\n8. jangan memaksa muntah kecuali oleh MEDIS\r\n9. jika terjadi muntah, jaga aliran udara, minum air yang banyak. sesudah itu berikan: arang aktif (20-40g dalam slurry). panggil dokter.\r\n10. cari bantuan medis\r\n'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=164 ;

--
-- Dumping data for table `relasi`
--

INSERT INTO `relasi` (`id_r`, `idg`, `idk`, `mb`, `md`) VALUES
(89, 'G001', 'k001', 0.5, 0.1),
(90, 'G001', 'k004', 0.7, 0.1),
(91, 'G002', 'k001', 0.9, 0.1),
(92, 'G002', 'k004', 0.6, 0.2),
(93, 'G002', 'k006', 0.7, 0.4),
(94, 'G002', 'k009', 0.9, 0.3),
(95, 'G003', 'k001', 0.6, 0.3),
(96, 'G004', 'k001', 0.9, 0.2),
(97, 'G004', 'k002', 0.8, 0.1),
(98, 'G004', 'k003', 0.9, 0.1),
(99, 'G004', 'k004', 0.9, 0.1),
(100, 'G004', 'k005', 0.8, 0.1),
(101, 'G004', 'k006', 0.9, 0.4),
(102, 'G004', 'k007', 0.9, 0.2),
(103, 'G004', 'k008', 0.8, 0.1),
(104, 'G005', 'k001', 0.8, 0.2),
(105, 'G005', 'k002', 0.7, 0.3),
(106, 'G005', 'k003', 0.8, 0.5),
(107, 'G005', 'k007', 0.6, 0.3),
(108, 'G005', 'k008', 0.6, 0.3),
(109, 'G006', 'k001', 0.6, 0.1),
(110, 'G006', 'k006', 0.5, 0.2),
(111, 'G006', 'k007', 0.9, 0.3),
(112, 'G006', 'k008', 0.7, 0.4),
(113, 'G007', 'k001', 0.9, 0.1),
(114, 'G007', 'k002', 0.9, 0.2),
(115, 'G007', 'k003', 0.9, 0.2),
(116, 'G007', 'k006', 0.7, 0.2),
(117, 'G007', 'k007', 0.5, 0.1),
(118, 'G007', 'k008', 0.9, 0.1),
(119, 'G008', 'k001', 0.8, 0.1),
(120, 'G008', 'k004', 0.7, 0.2),
(121, 'G008', 'k005', 0.7, 0.2),
(122, 'G008', 'k006', 0.8, 0.1),
(123, 'G009', 'k004', 0.9, 0.1),
(124, 'G009', 'k005', 0.8, 0.5),
(125, 'G010', 'k002', 0.8, 0.4),
(126, 'G010', 'k005', 0.9, 0.3),
(127, 'G010', 'k006', 0.6, 0.5),
(128, 'G011', 'k003', 0.8, 0.2),
(129, 'G011', 'k005', 0.8, 0.3),
(130, 'G011', 'k006', 0.9, 0.2),
(131, 'G011', 'k007', 0.7, 0.1),
(132, 'G011', 'k008', 0.8, 0.1),
(133, 'G012', 'k003', 0.7, 0.5),
(134, 'G006', 'k002', 0.9, 0.1),
(135, 'G006', 'k003', 0.9, 0.1),
(136, 'G007', 'k004', 0.8, 0.1),
(137, 'G009', 'k002', 0.9, 0.1),
(138, 'G009', 'k006', 0.8, 0.1),
(139, 'G011', 'k002', 0.9, 0.1),
(140, 'G011', 'k004', 0.8, 0.1),
(141, 'G012', 'k008', 0.5, 0.1),
(142, 'G013', 'k004', 0.8, 0.4),
(143, 'G014', 'k004', 0.7, 0.1),
(144, 'G015', 'k005', 0.9, 0.1),
(145, 'G016', 'k005', 0.6, 0.5),
(146, 'G017', 'k005', 0.4, 0.2),
(147, 'G018', 'k009', 0.7, 0.1),
(148, 'G019', 'k001', 0.9, 0.3),
(149, 'G020', 'k001', 0.7, 0.1),
(150, 'G021', 'k002', 0.6, 0.4),
(151, 'G022', 'k002', 0.8, 0.3),
(152, 'G023', 'k003', 0.8, 0.3),
(153, 'G024', 'k004', 0.6, 0.2),
(154, 'G025', 'k005', 0.5, 0.1),
(155, 'G026', 'k005', 0.8, 0.3),
(156, 'G027', 'k006', 0.7, 0.5),
(157, 'G028', 'k006', 0.6, 0.4),
(158, 'G029', 'k007', 0.8, 0.4),
(159, 'G030', 'k008', 0.7, 0.2),
(160, 'G031', 'k008', 0.8, 0.4),
(161, 'G033', 'k009', 0.5, 0.4),
(162, 'G032', 'k008', 0.6, 0.1),
(163, 'G034', 'k002', 0.8, 0.1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=211 ;

--
-- Dumping data for table `t_pertanyaan`
--

INSERT INTO `t_pertanyaan` (`id`, `idg`, `g_ya`, `g_tidak`) VALUES
(199, 'G023', '', 'G030'),
(198, 'G022', 'G034', 'G012'),
(197, 'G021', 'G034', 'G028'),
(196, 'G020', 'G003', 'G022'),
(195, 'G019', 'G003', 'G013'),
(194, 'G018', 'G033', 'G019'),
(193, 'G017', 'G025', ''),
(192, 'G016', 'G017', ''),
(191, 'G015', 'G016', ''),
(175, 'G004', 'G007', 'G002'),
(176, 'G005', 'G020', 'G027'),
(177, 'G006', 'G005', 'G013'),
(178, 'G007', 'G006', 'G011'),
(179, 'G008', 'G001', ''),
(180, 'G009', 'G010', 'G012'),
(181, 'G010', 'G021', 'G013'),
(182, 'G011', 'G009', 'G008'),
(183, 'G012', 'G023', 'G029'),
(190, 'G014', 'G024', ''),
(189, 'G013', 'G014', ''),
(174, 'G003', '', ''),
(173, 'G002', 'G018', ''),
(172, 'G001', 'G019', 'G013'),
(200, 'G024', '', ''),
(201, 'G025', 'G026', ''),
(202, 'G026', '', ''),
(203, 'G027', '', ''),
(204, 'G028', '', 'G015'),
(205, 'G029', '', ''),
(206, 'G030', 'G031', ''),
(207, 'G031', 'G032', ''),
(208, 'G033', '', ''),
(209, 'G032', '', ''),
(210, 'G034', '', '');

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
('Nawan Pamungkas', 'pamungkas', '10'),
('pakar', 'pakar', '20'),
('saiful bahtiar', 'ipul', '10'),
('Zainal Praditta', 'zainal', '10');
