DROP TABLE anggota;

CREATE TABLE `anggota` (
  `idu` int(3) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(15) NOT NULL,
  `telepon` int(12) NOT NULL,
  `umur` varchar(2) NOT NULL,
  PRIMARY KEY (`idu`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO anggota VALUES("2","il","jl jatinom tijayan jatinom
klaten rt/rw:03/031","il","823847237","23");
INSERT INTO anggota VALUES("11","fredik kurnia","solo utara, Ngampilan","fredik","2147483647","34");
INSERT INTO anggota VALUES("12","joko","garut","garut","93489024","45");



DROP TABLE gejala;

CREATE TABLE `gejala` (
  `idg` varchar(4) NOT NULL,
  `gejala` text NOT NULL,
  `pertanyaan` text NOT NULL,
  PRIMARY KEY (`idg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO gejala VALUES("G001","Demam","Apakah anda mengalami demam?");
INSERT INTO gejala VALUES("G002","iritasi mata, menjadi memerah","Apakah anda mengalami iritasi pada mata, menjadi memerah?");
INSERT INTO gejala VALUES("G003","detak jantung tidak teratur","Apakah anda mengalami detak jantung tidak teratur?");
INSERT INTO gejala VALUES("G004","hilang daya kontrol","Apakah anda mengalami hilang daya kontrol?");
INSERT INTO gejala VALUES("G005","terasa mengantuk","Apakah anda mengalami mengantuk terus menerus?");
INSERT INTO gejala VALUES("G006","perut terasa mual","Apakah perut anda terasa mual?");
INSERT INTO gejala VALUES("G007","muntah muntah","Apakah anda mengalami muntah muntah?");
INSERT INTO gejala VALUES("G008","sakit kepala atau pusing","Apakah anda mengalami sakit kepala atau terasa pusing?
");
INSERT INTO gejala VALUES("G009","sakit perut","Apakah anda mengalami sakit perut?");
INSERT INTO gejala VALUES("G010","sesak nafas","Apakah anda mengalami sesak nafas?");
INSERT INTO gejala VALUES("G011","suhu badan rendah","Apakah suhu badan anda rendah/terasa dingin?
");
INSERT INTO gejala VALUES("G012","tidak sadarkan diri","Apakah mengalami pingsan/tidak sadarkan diri?");
INSERT INTO gejala VALUES("G013","disorientasi (menjadi linglung/mudah lupa)","Apakah anda mengalmi disorientasi (menjadi linglung/mudah lupa)?");
INSERT INTO gejala VALUES("G014","gangguan penglihatan (buram)","Apakah anda mengalami gangguan penglihatan (buram)?");
INSERT INTO gejala VALUES("G015","badan gemetar","Apakah badan anda gemetar?");
INSERT INTO gejala VALUES("G016","kulit deffating/dermatitis (keriput dan berkerut)","Apakah kulit anda deffating/dermatitis (keriput dan berkerut)?");
INSERT INTO gejala VALUES("G017","mood cepat berubah","Apakah anda mengalami mood yg cepat berubah?");
INSERT INTO gejala VALUES("G018","lumpuh","Apakah anda mengalami lumpuh?");
INSERT INTO gejala VALUES("G019","pendarahan dalam tubuh (keluarnya darah tiba-tiba dari anggota tubuh)","Apakah anda mengalami pendarahan dalam tubuh (keluarnya darah tiba-tiba dari anggota tubuh)?");
INSERT INTO gejala VALUES("G020","gangguan paru paru","Apakah anda mengalami gangguan paru paru?");
INSERT INTO gejala VALUES("G021","gangguan peredaran darah menjadi lesu dan sukar berfikir.","Apakah anda mengalami gangguan peredaran darah menjadi lesu dan sukar berfikir?");
INSERT INTO gejala VALUES("G022","alergi kulit menjadi bengkak, bentol bentol, kemerahan.","Apakah anda mengalami alergi kulit menjadi bengkak, bentol bentol, kemerahan?");
INSERT INTO gejala VALUES("G023","sakit dada","Apakah anda mengalami sakit dada?");
INSERT INTO gejala VALUES("G024","seluruh badan terasa terbakar","Apakah seluruh badan terasa terbakar?");
INSERT INTO gejala VALUES("G025","menjadi hiperaktif yaitu mudah gelisah, tidak bisa diam, berlebihan.","Apakah anda menjadi hiperaktif yaitu mudah gelisah, tidak bisa diam, berlebihan?");
INSERT INTO gejala VALUES("G026","tubuh terasa kesemutan jika bergerak","Apakah tubuh anda terasa kesemutan jika bergerak?");
INSERT INTO gejala VALUES("G027","wajah menjadi biru","Apakah wajah anda menjadi biru?");
INSERT INTO gejala VALUES("G028","batuk berat","Apakah anda mengalami batuk berat?");
INSERT INTO gejala VALUES("G029","susah buang air besar","Apakah anda mengalami susah buang air besar?");
INSERT INTO gejala VALUES("G030","telinga mendengung","Apakah teling anda terasa mendengung?");
INSERT INTO gejala VALUES("G031","gangguan syaraf seperti kram, mati rasa, kulit terasa tebal, otot kaku","Apakah anda mengalami gangguan syaraf seperti kram, mati rasa, kulit terasa tebal, otot kaku?");
INSERT INTO gejala VALUES("G032","biji mata membesar","Apakah biji mata anda membesar?");
INSERT INTO gejala VALUES("G033","bagian ginjal terasa sakit","Apakah bagian ginjal anda terasa sakit?");
INSERT INTO gejala VALUES("G034","kerusakan hati ditandai dengan mata dan kulit menguning & cepat lelah","Apakah anda mengalami kerusakan hati ditandai dengan mata dan kulit menguning & cepat lelah?");
INSERT INTO gejala VALUES("G035","kejang-kejang","Apakah mengalami kejang-kejang?");
INSERT INTO gejala VALUES("G036","nafas pendek","Apakah nafas anda pendek?");



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

INSERT INTO kimia VALUES("k001","Aseton","Dimetil keton, propan keton","Bentuk tidak berwarna, mudah menguap dan sangat terbakar sedang bau beraroma khas pada konsentrasi rendah","Aseton tempatkan pada bertemperatur dan bertekanan stabil, harus disimpan jauh dari alat yang dapat menimbulkan api seperti panas, nyala, percikan api. Jangan campur dengan zat asam, amin, halogen, campuran karbon halo, oksidasi, garam metal, peroksida dan bahan kimia yang mudah terbakar","1. cari udara segar 2. tegakkan badan 3. berikan nafas buatan 4. cuci kulit dengan air dan sabun 5. bilas mata dengan air 6. berkumur ");
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
INSERT INTO kimia VALUES("k003","Dikhlorometan","Metilen Klorida, Metilen Biklorida Freon 30 ","Cairan tidak berwarna. Menyerupai bau Khloroform/Bius.","Hindari kontak dengan asam, molekul, metal, pengoksidasian, amin dan halogen","1. cari udara segar
2. berikan nafas buatan
3. lepaskan pakaian yang terkontaminasi
4. bilas kulit dengan air dan sabun
5. bilas mata dengan air
6. lepaskan lensa kontak
7. berkumur
8. jangan memaksa muntah kecuali oleh MEDIS
9. minum air yang banyak
10. cari bantuan medis
");
INSERT INTO kimia VALUES("k004","Diisosinat","Toluen-2, 4-diisosinat, MDI, HDI, Hexametilen diis","Cairan dengan gradasi warna dari putih sampai kuning. Sangat merangsang dan sangat berbau","Hindari kontak langsung bila terjadi kebocoran atau tertumpah","1. cari udara segar
2. berikan oksigen
3. cukup bilas kulit dengan air
4. bilas mata dengan air
5. berkumur
6. lepaskan pakaian yang terkontaminasi
7. lepaskan lensa kontak");
INSERT INTO kimia VALUES("k005","Metil Bromida","Bromometan, Embafum, Isokobrom, Metogas,  Selfum","Cairan atau gas tidak berwarna dan menguap. Berbau seperti kloroform dalam konsentrasi tinggi","Harus disimpan ditempat yang sirkulasi udaranya baik dan gelap. Hindarkan dari suhu es","1. cari udara segar
2. tegakkan badan
3. basuh mata min 15 menit
4. lepaskan pakaian yang terkontaminasi
5. bilas kulit dengan air dan sabun
6. berkumur
7. berikan nafas buatan");
INSERT INTO kimia VALUES("k006","Metil Alkohol","Metanol, Karbinol, Bromometan, Embafum, Isokobrom","Cairan tidak berwarna dan mudah terbakar. Berbau khas dan tajam","Hindari mencampur dengan zat lain. Hindari menghirup bahan tersebut dan produknya. Jauhkan dari keran air dan saluran pembuangan air","1. basuh mata min 15 menit
2. bilas kulit min 15 menit
3. cuci pakaian bila akan di pakai lagi
4. compres dengan air dingin pada kulit iritasi
5. oleskan krim anti bakteri
6. cari udara segar
7. longgarkan pakaian
8. berikan nafas buatan
9. jangan memaksa muntah kecuali oleh MEDIS
");
INSERT INTO kimia VALUES("k007","N-Heksan","Heksan, Heksil Hidrida,  Skellysolve B","Cairan tidak berwarna, transparan dan berbau minyak.Bila berbau berarti konsentrasinya sudah sangat tinggi di udara","Jauhkan dari keran dan saluran pembuangan. Jangan campur dengan oksidasi, halogen dan barang yang mudah terbakar","1. cari udara segar
2. lepaskan pakaian yang terkontaminasi
3. bilas kulit dengan air dan sabun
bilas mata dengan air
4. jangan memaksa muntah kecuali oleh MEDIS
5. berkumur
6. berikan oksigen");
INSERT INTO kimia VALUES("k008","Toluene","metlbenzen, metilbenzol, penilmetan, Toluol","Cairan mudah menguap, tidak berwarna dan transparan. Beraroma manis","Berminyak dan sangat mudah terbakar dan dapat menimbulkan iritasi. Hindarkan dari panas, api. Jauhkan dari keran air dan saluran pembuangan. Jangan campur dengan halogen, bahan yang mudah terbakar, asam oksidasi dan garam metal","1. cari udara segar
2. longgarkan pakaian
3. berikan oksigen
4. jangan memaksa muntah kecuali oleh MEDIS
5. jangan memasukkan apapun ke mulut
6. bilas kulit dengan air dan sabun
berkumur");
INSERT INTO kimia VALUES("k009","Silica Kristalin","quartz, silikon dioksida, silika, ametis","Bentuk tidak berwarna atau putih seperti kristal. Bubuk tak berbentuk dan tidak berbau","Hampir tidak menyebabkan bahaya terbakar. Jangan campur dengan asam, molekul, halogen, metal dan garam metal, oksidasi dan bahan yang mudah terbakar","1. cari udara segar
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

INSERT INTO relasi VALUES("2","G001","k001","0.7","0.4");
INSERT INTO relasi VALUES("3","G002","k001","0.9","0.1");
INSERT INTO relasi VALUES("4","G002","k002","0.9","0.3");
INSERT INTO relasi VALUES("5","G002","k003","0.8","0.3");
INSERT INTO relasi VALUES("6","G002","k007","0.8","0.3");
INSERT INTO relasi VALUES("7","G002","k008","0.7","0.3");
INSERT INTO relasi VALUES("8","G002","k009","0.9","0.3");
INSERT INTO relasi VALUES("9","G003","k001","0.7","0.2");
INSERT INTO relasi VALUES("10","G003","k002","0.7","0.2");
INSERT INTO relasi VALUES("11","G003","k003","0.9","0.1");
INSERT INTO relasi VALUES("12","G003","k007","0.7","0.4");
INSERT INTO relasi VALUES("13","G004","k001","0.8","0.2");
INSERT INTO relasi VALUES("14","G004","k002","0.8","0.3");
INSERT INTO relasi VALUES("15","G004","k004","0.8","0.4");
INSERT INTO relasi VALUES("16","G004","k006","0.9","0.3");
INSERT INTO relasi VALUES("17","G005","k001","0.6","0.3");
INSERT INTO relasi VALUES("18","G005","k002","0.6","0.2");
INSERT INTO relasi VALUES("19","G005","k004","0.9","0.3");
INSERT INTO relasi VALUES("20","G005","k005","0.6","0.1");
INSERT INTO relasi VALUES("21","G006","k001","0.8","0.1");
INSERT INTO relasi VALUES("22","G006","k004","0.8","0.2");
INSERT INTO relasi VALUES("23","G006","k005","0.8","0.4");
INSERT INTO relasi VALUES("24","G006","k007","0.9","0.2");
INSERT INTO relasi VALUES("25","G006","k008","0.8","0.4");
INSERT INTO relasi VALUES("26","G007","k001","0.9","0.3");
INSERT INTO relasi VALUES("27","G007","k003","0.8","0.3");
INSERT INTO relasi VALUES("28","G007","k004","0.8","0.4");
INSERT INTO relasi VALUES("29","G007","k005","0.9","0.3");
INSERT INTO relasi VALUES("30","G007","k008","0.9","0.2");
INSERT INTO relasi VALUES("31","G008","k001","0.9","0.3");
INSERT INTO relasi VALUES("32","G008","k002","0.8","0.2");
INSERT INTO relasi VALUES("33","G008","k003","0.9","0.2");
INSERT INTO relasi VALUES("34","G008","k004","0.9","0.4");
INSERT INTO relasi VALUES("35","G008","k005","0.7","0.4");
INSERT INTO relasi VALUES("36","G008","k006","0.8","0.2");
INSERT INTO relasi VALUES("37","G008","k007","0.8","0.3");
INSERT INTO relasi VALUES("38","G008","k008","0.7","0.4");
INSERT INTO relasi VALUES("39","G009","k001","0.7","0.2");
INSERT INTO relasi VALUES("40","G009","k004","0.7","0.4");
INSERT INTO relasi VALUES("41","G009","k005","0.6","0.2");
INSERT INTO relasi VALUES("42","G010","k001","0.8","0.3");
INSERT INTO relasi VALUES("43","G010","k005","0.8","0.1");
INSERT INTO relasi VALUES("44","G010","k009","0.6","0.3");
INSERT INTO relasi VALUES("45","G011","k001","0.1","0.2");
INSERT INTO relasi VALUES("46","G012","k001","0.7","0.2");
INSERT INTO relasi VALUES("47","G012","k005","0.8","0.3");
INSERT INTO relasi VALUES("48","G012","k007","0.8","0.2");
INSERT INTO relasi VALUES("49","G013","k002","0.7","0.2");
INSERT INTO relasi VALUES("50","G014","k002","0.7","0.2");
INSERT INTO relasi VALUES("51","G014","k007","0.7","0.2");
INSERT INTO relasi VALUES("52","G015","k002","0.6","0.3");
INSERT INTO relasi VALUES("53","G015","k004","0.6","0.2");
INSERT INTO relasi VALUES("54","G015","k005","0.6","0.3");
INSERT INTO relasi VALUES("55","G015","k006","0.8","0.3");
INSERT INTO relasi VALUES("56","G016","k002","0.6","0.3");
INSERT INTO relasi VALUES("57","G017","k002","0.7","0.4");
INSERT INTO relasi VALUES("58","G017","k007","0.7","0.3");
INSERT INTO relasi VALUES("59","G018","k002","0.5","0.3");
INSERT INTO relasi VALUES("60","G018","k005","0.6","0.2");
INSERT INTO relasi VALUES("61","G018","k007","0.6","0.3");
INSERT INTO relasi VALUES("62","G019","k002","0.7","0.4");
INSERT INTO relasi VALUES("63","G020","k002","0.8","0.4");
INSERT INTO relasi VALUES("64","G020","k004","0.6","0.3");
INSERT INTO relasi VALUES("65","G021","k003","0.7","0.4");
INSERT INTO relasi VALUES("66","G021","k006","0.6","0.4");
INSERT INTO relasi VALUES("67","G021","k009","0.8","0.3");
INSERT INTO relasi VALUES("68","G022","k004","0.7","0.4");
INSERT INTO relasi VALUES("69","G023","k004","0.7","0.1");
INSERT INTO relasi VALUES("70","G023","k009","0.7","0.4");
INSERT INTO relasi VALUES("71","G024","k004","0.8","0.3");
INSERT INTO relasi VALUES("72","G025","k005","0.5","0.4");
INSERT INTO relasi VALUES("73","G026","k005","0.8","0.3");
INSERT INTO relasi VALUES("74","G027","k005","0.9","0.2");
INSERT INTO relasi VALUES("75","G028","k006","0.7","0.4");
INSERT INTO relasi VALUES("76","G028","k007","0.8","0.3");
INSERT INTO relasi VALUES("77","G029","k006","0.5","0.3");
INSERT INTO relasi VALUES("78","G030","k006","0.7","0.4");
INSERT INTO relasi VALUES("79","G031","k006","0.6","0.5");
INSERT INTO relasi VALUES("80","G031","k007","0.7","0.1");
INSERT INTO relasi VALUES("81","G032","k008","0.9","0.3");
INSERT INTO relasi VALUES("82","G033","k008","0.6","0.3");
INSERT INTO relasi VALUES("83","G034","k008","0.5","0.2");
INSERT INTO relasi VALUES("84","G035","k007","0.7","0.4");
INSERT INTO relasi VALUES("85","G036","k007","0.9","0.2");
INSERT INTO relasi VALUES("86","G012","k004","0.7","0.1");



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
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;

INSERT INTO t_pertanyaan VALUES("167","G035","G018","");
INSERT INTO t_pertanyaan VALUES("166","G034","G007","");
INSERT INTO t_pertanyaan VALUES("165","G033","G034","");
INSERT INTO t_pertanyaan VALUES("164","G032","G033","");
INSERT INTO t_pertanyaan VALUES("163","G031","G036","");
INSERT INTO t_pertanyaan VALUES("162","G030","G029","");
INSERT INTO t_pertanyaan VALUES("161","G029","G028","");
INSERT INTO t_pertanyaan VALUES("160","G028","G031","");
INSERT INTO t_pertanyaan VALUES("159","G027","G005","");
INSERT INTO t_pertanyaan VALUES("158","G026","G027","G004");
INSERT INTO t_pertanyaan VALUES("157","G025","G010","");
INSERT INTO t_pertanyaan VALUES("156","G024","G009","");
INSERT INTO t_pertanyaan VALUES("155","G023","G020","");
INSERT INTO t_pertanyaan VALUES("154","G022","G023","G030");
INSERT INTO t_pertanyaan VALUES("153","G021","G004","");
INSERT INTO t_pertanyaan VALUES("152","G020","G019","G002");
INSERT INTO t_pertanyaan VALUES("151","G019","G004","G024");
INSERT INTO t_pertanyaan VALUES("150","G018","G016","G022");
INSERT INTO t_pertanyaan VALUES("149","G017","G013","");
INSERT INTO t_pertanyaan VALUES("148","G016","G020","G028");
INSERT INTO t_pertanyaan VALUES("147","G015","G018","");
INSERT INTO t_pertanyaan VALUES("146","G014","G017","G001");
INSERT INTO t_pertanyaan VALUES("145","G013","G015","G035");
INSERT INTO t_pertanyaan VALUES("144","G012","G026","");
INSERT INTO t_pertanyaan VALUES("143","G011","G009","G009");
INSERT INTO t_pertanyaan VALUES("142","G010","G011","");
INSERT INTO t_pertanyaan VALUES("141","G009","G012","G021");
INSERT INTO t_pertanyaan VALUES("140","G008","G002","G010");
INSERT INTO t_pertanyaan VALUES("139","G007","G006","G023");
INSERT INTO t_pertanyaan VALUES("138","G006","","");
INSERT INTO t_pertanyaan VALUES("137","G005","G007","0");
INSERT INTO t_pertanyaan VALUES("136","G004","G005","G007");
INSERT INTO t_pertanyaan VALUES("135","G003","G014","G032");
INSERT INTO t_pertanyaan VALUES("134","G002","G003","G015");
INSERT INTO t_pertanyaan VALUES("133","G001","G010","G021");
INSERT INTO t_pertanyaan VALUES("168","G036","G006","G021");



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
INSERT INTO user VALUES("pakar","pakar","20");



