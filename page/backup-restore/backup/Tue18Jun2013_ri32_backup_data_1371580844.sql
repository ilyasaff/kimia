DROP TABLE anggota;

CREATE TABLE `anggota` (
  `idu` int(3) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(15) NOT NULL,
  `telepon` int(12) NOT NULL,
  `umur` varchar(2) NOT NULL,
  PRIMARY KEY (`idu`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO anggota VALUES("2","il","jl jatinom tijayan jatinom
klaten rt/rw:03/031","il","823847237","23");
INSERT INTO anggota VALUES("11","fredik kurnia","solo utara, Ngampilan","fredik","2147483647","34");
INSERT INTO anggota VALUES("12","joko","garut","garut","93489024","45");
INSERT INTO anggota VALUES("13","Nawan Pamungkas","jl.Pamungkas no 12
Kota Baru, Solo.","pamungkas","2147483647","29");
INSERT INTO anggota VALUES("14","Zainal Praditta","jl. Pemuda tengah no 34
Klaten Tengah, Klaten","zainal","2147483647","38");
INSERT INTO anggota VALUES("15","saiful bahtiar","jl. surobayan rt:04 rw:02
Surobayan, Bonyokan, Klaten.","ipul","2147483647","27");



DROP TABLE gejala;

CREATE TABLE `gejala` (
  `idg` varchar(4) NOT NULL,
  `gejala` text NOT NULL,
  `pertanyaan` text NOT NULL,
  PRIMARY KEY (`idg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO gejala VALUES("G001","Sakit tenggorokan
","apakah anda mengalami sakit tenggorokan?");
INSERT INTO gejala VALUES("G002","Batuk","Apakah anda mengalami batuk?");
INSERT INTO gejala VALUES("G003","Kebingungan","Apakah anda mengalami kebingungan?");
INSERT INTO gejala VALUES("G004","Sakit kepala atau Pusing","Apakah anda mengalami sakit kepala atau pusing?");
INSERT INTO gejala VALUES("G005","Mengantuk","Apakah anda mengalami mengantuk?");
INSERT INTO gejala VALUES("G006","Kulit kering dan tidak sadarkan diri","Apakah anda mengalami kulit kering dan tidak sadarkan diri?");
INSERT INTO gejala VALUES("G007","Kulit Kemerahan, Perih dan mual, mata iritasi dan perih
","Apakah anda mengalami kulit Kemerahan, Perih dan mual, mata iritasi, perih?
");
INSERT INTO gejala VALUES("G008","Penglihatan kabur dan Muntah
","Apakah anda mengalami penglihatan kabur atau Muntah?
");
INSERT INTO gejala VALUES("G009","Sesak Nafas","Apakah anda mengalami sesak nafas?");
INSERT INTO gejala VALUES("G010","Kejang-kejang","Apakah anda mengalammi kejang-kejang?");
INSERT INTO gejala VALUES("G011","Nyeri perut","Apakah anda mengalami nyeri perut?");
INSERT INTO gejala VALUES("G012","Badan terasa terbakar","Apakah anda mengalami badan terasa terbakar?");
INSERT INTO gejala VALUES("G013","Kulit seperti terbakar","Apakah anda meresakan kulit seperti terbakar?");
INSERT INTO gejala VALUES("G014","Diare","Apakah anda mengalami diare?");
INSERT INTO gejala VALUES("G015","Halusinasi","Apakah anda mengalami halusinasi?");
INSERT INTO gejala VALUES("G016","Kehilangan suara","Apakah anda mengalami kehilangan suara?");
INSERT INTO gejala VALUES("G017","Kesemutan, gatal dan kulit lecet","Apakah anda mengalami kesemutan, gatal dan kulit lecet?");
INSERT INTO gejala VALUES("G018","Abarasi kornea","Apakah mata anda mengalami abrasi kornea?");
INSERT INTO gejala VALUES("G019","Suhu badan rendah","Apakah suhu badan anda rendah?");
INSERT INTO gejala VALUES("G020","Demam","Apakah anda mengalami demam?");
INSERT INTO gejala VALUES("G021","Linglung/disorientasi","Apakah anda mengalami linglung/disorientasi?");
INSERT INTO gejala VALUES("G022","Pendarahan dari dalam tubuh","Apakah anda mengalami Pendarahan dari dalam tubuh?
");
INSERT INTO gejala VALUES("G023","Tekanan darah turun dan wajah pucat","Apakah anda mengalami tekanan darah turun dan wajah pucat?");
INSERT INTO gejala VALUES("G024","Sakit dada","Apakah anda mengalami Sakit dada?");
INSERT INTO gejala VALUES("G025","Hiperaktif dan mudah gelisah","Apakah anda merasakan hiperaktif dan mudah gelisah?");
INSERT INTO gejala VALUES("G026","Wajah menjadi biru.","Apakah Wajah menjadi biru?");
INSERT INTO gejala VALUES("G027","Susah buang air besar","Apakah anda mengalami Susah buang air besar?");
INSERT INTO gejala VALUES("G028","Telinga mendengung","Apakah telinga anda mendengung?");
INSERT INTO gejala VALUES("G029","Nafas pendek","Apakah anda merasakan nafas anda pendek?");
INSERT INTO gejala VALUES("G030","Biji mata nada membesar","Apakah biji mata anda membesar?");
INSERT INTO gejala VALUES("G031","Bagian ginjal terasa sakit","Apakah bagian ginjal anda terasa sakit?");
INSERT INTO gejala VALUES("G032","Cepat lelah dan Kulit menguning.","Apakah anda merasa cepat lelah dan kulit menguning?");
INSERT INTO gejala VALUES("G033","Lesu dan sukar berfikir","Apakah Anda mengalami lesu dan sukar berfikir?");
INSERT INTO gejala VALUES("G034","Lumpuh/susah berjalan","Apakah kaki anda mengalami lumpuh/susah berjalan?");



DROP TABLE kimia;

CREATE TABLE `kimia` (
  `idk` varchar(4) NOT NULL,
  `nm_kimia` varchar(35) NOT NULL,
  `nama_lain` text NOT NULL,
  `definisi` text NOT NULL,
  `pencegahan` text NOT NULL,
  `solusi` text NOT NULL,
  PRIMARY KEY (`idk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO kimia VALUES("k001","Acetone","Propane, Dimethyl ketone, Methyl ketone","Jenis bahan kimia flammable (mudah terbakar). Bentuk tidak berwarna, mudah menguap dan sangat terbakar sedang bau beraroma khas pada konsentrasi rendah.","Aseton tempatkan pada bertemperatur dan bertekanan stabil,Simpan dalam tempat terkunci . Jauhkan dari panas dan sumber api.  Jangan menghirup gas/asap/uap/semprotan acetone. ). Simpan wadah di tempat yang sejuk, berventilasi baik. Simpan pada wadah yang tertutup rapat dan tersegel. Jauhkan dari sinar matahari langsung  dan hindari semua sumber yang memungkinkan penyulutan Kenakan pakaian pelindung yang sesuai.  Jangan campur dengan zat asam, amin, halogen, campuran karbon halo, oksidasi, garam metal, peroksida dan bahan kimia yang mudah terbakar.","1. cari udara segar 
2. tegakkan badan 
3. berikan nafas buatan 
4. cuci kulit dengan air dan sabun 
5. bilas mata dengan air 
6. berkumur ");
INSERT INTO kimia VALUES("k002","Benzene","Benzol, benzolen, Penil hidrida, minyak karbon","Bentuk tidak berwarna dan bau cairan kuning pucat beraroma secara khusus","Tempatkan pada yang bertemperatur dan bertekanan stabil. Hindarkan dari panas, api, percikan bunga api dan yang menimbulkan nyala api. Jauhkan dari keran air dan saluran air. Jangan dicampur dengan asam, mlekul, halogen, oksidasi dan garam metal","1. basuh mata min 15 menit
2. cukup bilas kulit dengan air
3. lepaskan pakaian yang terkontaminasi
4. cari udara segar
5. berikan nafas buatan
6. berikan oksigen
7. jangan memasukkan apapun ke mulut
8. jika muntah sandarkan ke depan
9. jangan memaksa muntah kecuali oleh MEDIS
");
INSERT INTO kimia VALUES("k003","Dichloromethane","Methylene chloride, DCM, CH2CI2 ","Termasuk kategori Harmful. Cairan tidak berwarna. Menyerupai bau Khloroform/Bius.","Hindari kontak dengan asam, molekul, metal, pengoksidasian, amin dan halogen.","1. cari udara segar
2. berikan nafas buatan
3. lepaskan pakaian yang terkontaminasi
4. bilas kulit dengan air dan sabun
5. bilas mata dengan air
6. 
7. berkumur
8. jangan memaksa muntah kecuali oleh MEDIS
9. jika terjadi muntah, jaga aliran udara, minum air yang banyak. sesudah itu berikan: arang aktif (20-40g dalam slurry). panggil dokter.
10. cari bantuan medis
");
INSERT INTO kimia VALUES("k004","Diisocyanate","Toluen-2, 6-diisosinat, 6-Diisocyanato, 2,6-TDI","Cairan dengan gradasi warna dari putih sampai kuning. Sangat merangsang dan sangat berbau","Hindari kontak langsung bila terjadi kebocoran atau tertumpah","1. cari udara segar
2. berikan oksigen
3. cukup bilas kulit dengan air
4. bilas mata dengan air
5. berkumur
6. lepaskan pakaian yang terkontaminasi
7. lepaskan lensa kontak");
INSERT INTO kimia VALUES("k005","Methyl Bromide","Bromomethane, Monobromomethane, CH3Br","Cairan atau gas tidak berwarna dan menguap. Berbau seperti kloroform dalam konsentrasi tinggi","Harus disimpan ditempat yang sirkulasi udaranya baik dan gelap. Hindarkan dari suhu es","1. cari udara segar
2. tegakkan badan
3. basuh mata min 15 menit
4. lepaskan pakaian yang terkontaminasi
5. bilas kulit dengan air dan sabun
6. berkumur
7. berikan nafas buatan");
INSERT INTO kimia VALUES("k006","Methyl Alcohol","Methanol, Carbinol, Wood Alcohol, CH4O/CH3OH","Cairan tidak berwarna dan mudah terbakar. Berbau khas dan tajam","Hindari mencampur dengan zat lain. Hindari menghirup bahan tersebut dan produknya. Jauhkan dari keran air dan saluran pembuangan air","1. basuh mata min 15 menit
2. bilas kulit min 15 menit
3. cuci pakaian bila akan di pakai lagi
4. compres dengan air dingin pada kulit iritasi
5. oleskan krim anti bakteri
6. cari udara segar
7. longgarkan pakaian
8. berikan nafas buatan
9. jangan memaksa muntah kecuali oleh MEDIS
");
INSERT INTO kimia VALUES("k007","N-Heksan","Heksan, Hexyl Hydride, CH6H14","Cairan tidak berwarna, transparan dan berbau minyak.Bila berbau berarti konsentrasinya sudah sangat tinggi di udara","Jauhkan dari keran dan saluran pembuangan. Jangan campur dengan oksidasi, halogen dan barang yang mudah terbakar","1. cari udara segar
2. lepaskan pakaian yang terkontaminasi
3. bilas kulit dengan air dan sabun
bilas mata dengan air
4. jangan memaksa muntah kecuali oleh MEDIS
5. berkumur
6. berikan oksigen");
INSERT INTO kimia VALUES("k008","Toluene","Methylbenzene, Toluol, C6H5CH3/C7H8","Cairan mudah menguap, tidak berwarna dan transparan. Beraroma manis","Berminyak dan sangat mudah terbakar dan dapat menimbulkan iritasi. Hindarkan dari panas, api. Jauhkan dari keran air dan saluran pembuangan. Jangan campur dengan halogen, bahan yang mudah terbakar, asam oksidasi dan garam metal","1. cari udara segar
2. longgarkan pakaian
3. berikan oksigen
4. jangan memaksa muntah kecuali oleh MEDIS
5. jangan memasukkan apapun ke mulut
6. bilas kulit dengan air dan sabun
berkumur");
INSERT INTO kimia VALUES("k009","Crystalline Silica","Quartz, Silicon dioxide, silica, SiO2","Bentuk tidak berwarna atau putih seperti kristal. Bubuk tak berbentuk dan tidak berbau","Hampir tidak menyebabkan bahaya terbakar. Jangan campur dengan asam, molekul, halogen, metal dan garam metal, oksidasi dan bahan yang mudah terbakar","1. cari udara segar
2. berikan oksigen
3. cukup bilas kulit dengan air
4. cari bantuan medis
");



DROP TABLE relasi;

CREATE TABLE `relasi` (
  `id_r` int(3) NOT NULL AUTO_INCREMENT,
  `idg` varchar(4) NOT NULL,
  `idk` varchar(4) NOT NULL,
  `mb` float NOT NULL,
  `md` float NOT NULL,
  PRIMARY KEY (`id_r`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

INSERT INTO relasi VALUES("89","G001","k001","0.5","0.1");
INSERT INTO relasi VALUES("90","G001","k004","0.7","0.1");
INSERT INTO relasi VALUES("91","G002","k001","0.9","0.1");
INSERT INTO relasi VALUES("92","G002","k004","0.6","0.2");
INSERT INTO relasi VALUES("93","G002","k006","0.7","0.4");
INSERT INTO relasi VALUES("94","G002","k009","0.9","0.3");
INSERT INTO relasi VALUES("95","G003","k001","0.6","0.3");
INSERT INTO relasi VALUES("96","G004","k001","0.9","0.2");
INSERT INTO relasi VALUES("97","G004","k002","0.8","0.1");
INSERT INTO relasi VALUES("98","G004","k003","0.9","0.1");
INSERT INTO relasi VALUES("99","G004","k004","0.9","0.1");
INSERT INTO relasi VALUES("100","G004","k005","0.8","0.1");
INSERT INTO relasi VALUES("101","G004","k006","0.9","0.4");
INSERT INTO relasi VALUES("102","G004","k007","0.9","0.2");
INSERT INTO relasi VALUES("103","G004","k008","0.8","0.1");
INSERT INTO relasi VALUES("104","G005","k001","0.8","0.2");
INSERT INTO relasi VALUES("105","G005","k002","0.7","0.3");
INSERT INTO relasi VALUES("106","G005","k003","0.8","0.5");
INSERT INTO relasi VALUES("107","G005","k007","0.6","0.3");
INSERT INTO relasi VALUES("108","G005","k008","0.6","0.3");
INSERT INTO relasi VALUES("109","G006","k001","0.6","0.1");
INSERT INTO relasi VALUES("110","G006","k006","0.5","0.2");
INSERT INTO relasi VALUES("111","G006","k007","0.9","0.3");
INSERT INTO relasi VALUES("112","G006","k008","0.7","0.4");
INSERT INTO relasi VALUES("113","G007","k001","0.9","0.1");
INSERT INTO relasi VALUES("114","G007","k002","0.9","0.2");
INSERT INTO relasi VALUES("115","G007","k003","0.9","0.2");
INSERT INTO relasi VALUES("116","G007","k006","0.7","0.2");
INSERT INTO relasi VALUES("117","G007","k007","0.5","0.1");
INSERT INTO relasi VALUES("118","G007","k008","0.9","0.1");
INSERT INTO relasi VALUES("119","G008","k001","0.8","0.1");
INSERT INTO relasi VALUES("120","G008","k004","0.7","0.2");
INSERT INTO relasi VALUES("121","G008","k005","0.7","0.2");
INSERT INTO relasi VALUES("122","G008","k006","0.8","0.1");
INSERT INTO relasi VALUES("123","G009","k004","0.9","0.1");
INSERT INTO relasi VALUES("124","G009","k005","0.8","0.5");
INSERT INTO relasi VALUES("125","G010","k002","0.8","0.4");
INSERT INTO relasi VALUES("126","G010","k005","0.9","0.3");
INSERT INTO relasi VALUES("127","G010","k006","0.6","0.5");
INSERT INTO relasi VALUES("128","G011","k003","0.8","0.2");
INSERT INTO relasi VALUES("129","G011","k005","0.8","0.3");
INSERT INTO relasi VALUES("130","G011","k006","0.9","0.2");
INSERT INTO relasi VALUES("131","G011","k007","0.7","0.1");
INSERT INTO relasi VALUES("132","G011","k008","0.8","0.1");
INSERT INTO relasi VALUES("133","G012","k003","0.7","0.5");
INSERT INTO relasi VALUES("134","G006","k002","0.9","0.1");
INSERT INTO relasi VALUES("135","G006","k003","0.9","0.1");
INSERT INTO relasi VALUES("136","G007","k004","0.8","0.1");
INSERT INTO relasi VALUES("137","G009","k002","0.9","0.1");
INSERT INTO relasi VALUES("138","G009","k006","0.8","0.1");
INSERT INTO relasi VALUES("139","G011","k002","0.9","0.1");
INSERT INTO relasi VALUES("140","G011","k004","0.8","0.1");
INSERT INTO relasi VALUES("141","G012","k008","0.5","0.1");
INSERT INTO relasi VALUES("142","G013","k004","0.8","0.4");
INSERT INTO relasi VALUES("143","G014","k004","0.7","0.1");
INSERT INTO relasi VALUES("144","G015","k005","0.9","0.1");
INSERT INTO relasi VALUES("145","G016","k005","0.6","0.5");
INSERT INTO relasi VALUES("146","G017","k005","0.4","0.2");
INSERT INTO relasi VALUES("147","G018","k009","0.7","0.1");
INSERT INTO relasi VALUES("148","G019","k001","0.9","0.3");
INSERT INTO relasi VALUES("149","G020","k001","0.7","0.1");
INSERT INTO relasi VALUES("150","G021","k002","0.6","0.4");
INSERT INTO relasi VALUES("151","G022","k002","0.8","0.3");
INSERT INTO relasi VALUES("152","G023","k003","0.8","0.3");
INSERT INTO relasi VALUES("153","G024","k004","0.6","0.2");
INSERT INTO relasi VALUES("154","G025","k005","0.5","0.1");
INSERT INTO relasi VALUES("155","G026","k005","0.8","0.3");
INSERT INTO relasi VALUES("156","G027","k006","0.7","0.5");
INSERT INTO relasi VALUES("157","G028","k006","0.6","0.4");
INSERT INTO relasi VALUES("158","G029","k007","0.8","0.4");
INSERT INTO relasi VALUES("159","G030","k008","0.7","0.2");
INSERT INTO relasi VALUES("160","G031","k008","0.8","0.4");
INSERT INTO relasi VALUES("161","G033","k009","0.5","0.4");
INSERT INTO relasi VALUES("162","G032","k008","0.6","0.1");
INSERT INTO relasi VALUES("163","G034","k002","0.8","0.1");



DROP TABLE t_konsultasi;

CREATE TABLE `t_konsultasi` (
  `id_k` int(3) NOT NULL,
  `idn` int(3) NOT NULL,
  `idp` int(3) NOT NULL,
  `cf` float NOT NULL,
  PRIMARY KEY (`id_k`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE t_pertanyaan;

CREATE TABLE `t_pertanyaan` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `idg` varchar(4) NOT NULL,
  `g_ya` varchar(5) NOT NULL,
  `g_tidak` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=latin1;

INSERT INTO t_pertanyaan VALUES("199","G023","","G030");
INSERT INTO t_pertanyaan VALUES("198","G022","G034","G012");
INSERT INTO t_pertanyaan VALUES("197","G021","G034","G028");
INSERT INTO t_pertanyaan VALUES("196","G020","G003","G022");
INSERT INTO t_pertanyaan VALUES("195","G019","G003","G013");
INSERT INTO t_pertanyaan VALUES("194","G018","G033","G019");
INSERT INTO t_pertanyaan VALUES("193","G017","G025","");
INSERT INTO t_pertanyaan VALUES("192","G016","G017","");
INSERT INTO t_pertanyaan VALUES("191","G015","G016","");
INSERT INTO t_pertanyaan VALUES("175","G004","G007","G002");
INSERT INTO t_pertanyaan VALUES("176","G005","G020","G027");
INSERT INTO t_pertanyaan VALUES("177","G006","G005","G013");
INSERT INTO t_pertanyaan VALUES("178","G007","G006","G011");
INSERT INTO t_pertanyaan VALUES("179","G008","G001","");
INSERT INTO t_pertanyaan VALUES("180","G009","G010","G012");
INSERT INTO t_pertanyaan VALUES("181","G010","G021","G013");
INSERT INTO t_pertanyaan VALUES("182","G011","G009","G008");
INSERT INTO t_pertanyaan VALUES("183","G012","G023","G029");
INSERT INTO t_pertanyaan VALUES("190","G014","G024","");
INSERT INTO t_pertanyaan VALUES("189","G013","G014","");
INSERT INTO t_pertanyaan VALUES("174","G003","","");
INSERT INTO t_pertanyaan VALUES("173","G002","G018","");
INSERT INTO t_pertanyaan VALUES("172","G001","G019","G013");
INSERT INTO t_pertanyaan VALUES("200","G024","","");
INSERT INTO t_pertanyaan VALUES("201","G025","G026","");
INSERT INTO t_pertanyaan VALUES("202","G026","","");
INSERT INTO t_pertanyaan VALUES("203","G027","","");
INSERT INTO t_pertanyaan VALUES("204","G028","","G015");
INSERT INTO t_pertanyaan VALUES("205","G029","","");
INSERT INTO t_pertanyaan VALUES("206","G030","G031","");
INSERT INTO t_pertanyaan VALUES("207","G031","G032","");
INSERT INTO t_pertanyaan VALUES("208","G033","","");
INSERT INTO t_pertanyaan VALUES("209","G032","","");
INSERT INTO t_pertanyaan VALUES("210","G034","","");



DROP TABLE user;

CREATE TABLE `user` (
  `userid` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(3) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("admin","admin","20");
INSERT INTO user VALUES("fredik kurnia","fredik","10");
INSERT INTO user VALUES("il","il","10");
INSERT INTO user VALUES("ilyas","ilyas","20");
INSERT INTO user VALUES("joko","garut","10");
INSERT INTO user VALUES("Nawan Pamungkas","pamungkas","10");
INSERT INTO user VALUES("pakar","pakar","20");
INSERT INTO user VALUES("saiful bahtiar","ipul","10");
INSERT INTO user VALUES("Zainal Praditta","zainal","10");



