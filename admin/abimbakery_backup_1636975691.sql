

CREATE TABLE `detail_pesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`produk_id`,`pesanan_id`),
  KEY `pesanan_id` (`pesanan_id`),
  KEY `produk_id` (`produk_id`),
  CONSTRAINT `detail_pesanan_ibfk_2` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detail_pesanan_ibfk_3` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

INSERT INTO detail_pesanan VALUES("34","1","5","34");
INSERT INTO detail_pesanan VALUES("35","11","3","34");



CREATE TABLE `info_pembayaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO info_pembayaran VALUES("1","Silahkan lakukan pembayaran DP 50% terlebih dahulu sebelum hari H.
Jika tidak maka transaksi akan di batalkan.

Pembayaran Bisa Melalui Rekening Di Bawah Ini:
Nama Bank: Bank Negara Indonesia (BNI). 
No. Rek: 085700016705
Nama: WIDI ISMAIL. 
Kode Bank: 009. 
Kode Swift: BNINIDJA. 

Kemudian lakukan konfirmasi di menu konfirmasi pembayaran.

Dan Kirim Bukti Transfer ke Nomor Hp : 085700016705");



CREATE TABLE `info_pemesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info_pesan` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO info_pemesanan VALUES("1","CARA PEMESANAN TOKO ABIM BAKERY
-Pilih varian produk beserta jumlah yang dinginkan.
-Pembayaran sebelum pukul 15.00, produk akan dikirim keseokan harinya (H+).
-Pembayaran setelah pukul 15.00, produk akan dikirim H+2.
-Produk made by order dan diproduksi segar setiap hari.
-Pengiriman oleh kurir setiap hari mulai pukul 08.00 - 16.00 WIB.
-Waktu kedatangan tidak dapat dipastikan untuk setiap pengiriman.
");



CREATE TABLE `kategori_produk` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO kategori_produk VALUES("6","Kue Kering","Kue Kering");
INSERT INTO kategori_produk VALUES("7","Kue Ultah","Kue Ultah");
INSERT INTO kategori_produk VALUES("8","Brownies","Macam-macam Brownies");
INSERT INTO kategori_produk VALUES("9","Roti Sobek","Roti Sobek");



CREATE TABLE `kontak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subjek` varchar(200) NOT NULL,
  `pesan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

INSERT INTO kontak VALUES("19","","aku@gmail.com","","");
INSERT INTO kontak VALUES("20","","aku@gmail.com","","");
INSERT INTO kontak VALUES("21","","aku@gmail.com","","");
INSERT INTO kontak VALUES("22","","aku@gmail.com","","");
INSERT INTO kontak VALUES("23","","admin@gmail.com","","");
INSERT INTO kontak VALUES("24","","admin@gmail.com","","");
INSERT INTO kontak VALUES("25","","admin@gmail.com","","");
INSERT INTO kontak VALUES("26","","admin@gmail.com","","");
INSERT INTO kontak VALUES("27","","user@gmail.com","","");
INSERT INTO kontak VALUES("28","","admin@gmail.com","","");
INSERT INTO kontak VALUES("29","","admin@gmail.com","","");
INSERT INTO kontak VALUES("30","","admin@gmail.com","","");
INSERT INTO kontak VALUES("31","","user@gmail.com","","");
INSERT INTO kontak VALUES("32","","user@user.com","","");
INSERT INTO kontak VALUES("33","","user@gmail.com","","");
INSERT INTO kontak VALUES("34","","admin@gmail.com","","");
INSERT INTO kontak VALUES("35","","user1@gmail.com","","");
INSERT INTO kontak VALUES("36","","admin@gmail.com","","");
INSERT INTO kontak VALUES("37","","user1@gmail.com","","");
INSERT INTO kontak VALUES("39","","pembeli@gmail.com","","");
INSERT INTO kontak VALUES("40","","admin@gmail.com","","");
INSERT INTO kontak VALUES("41","","user@gmail.com","","");
INSERT INTO kontak VALUES("42","","user@gmail.com","","");
INSERT INTO kontak VALUES("43","","pembeli@gmail.com","","");
INSERT INTO kontak VALUES("44","","pembeli@gmail.com","","");
INSERT INTO kontak VALUES("45","","pembeli@gmail.com","","");
INSERT INTO kontak VALUES("46","","pembeli@gmail.com","","");
INSERT INTO kontak VALUES("47","","user@gmail.com","","");
INSERT INTO kontak VALUES("48","","admin@gmail.com","","");
INSERT INTO kontak VALUES("49","","admin@gmail.com","","");
INSERT INTO kontak VALUES("50","","mailzsilver89@gmail.com","","");
INSERT INTO kontak VALUES("51","","mailzsilver89@gmail.com","","");
INSERT INTO kontak VALUES("52","","mailzsilver89@gmail.com","","");
INSERT INTO kontak VALUES("53","","mailzsilver89@gmail.com","","");
INSERT INTO kontak VALUES("54","","mailzsilver89@gmail.com","","");
INSERT INTO kontak VALUES("55","","mailzsilver89@gmail.com","","");
INSERT INTO kontak VALUES("56","","user2@gmail.com","","");
INSERT INTO kontak VALUES("57","","mailzsilver89@gmail.com","","");
INSERT INTO kontak VALUES("58","","mailzsilver89@gmail.com","","");



CREATE TABLE `kota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO kota VALUES("5","Purwokerto Timur","30000");
INSERT INTO kota VALUES("6","Purwokerto Barat","35000");
INSERT INTO kota VALUES("7","Purwokerto Selatan","25000");
INSERT INTO kota VALUES("8","Purwokerto Utara","20000");
INSERT INTO kota VALUES("9","Ekspedisi (Gojeg & Grab)","0");
INSERT INTO kota VALUES("10","AMBIL SENDIRI","0");



CREATE TABLE `laporan` (
  `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(100) NOT NULL,
  `Tanggal_pengeluaran` date NOT NULL,
  `harga` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`id_pengeluaran`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

INSERT INTO laporan VALUES("39","knnn","2017-12-01","555555","4","500000");
INSERT INTO laporan VALUES("40","bberas","2017-12-15","50000","4","50000");
INSERT INTO laporan VALUES("41","padi","2017-12-02","20","3","60");
INSERT INTO laporan VALUES("42","gas","2017-12-04","25000","5","125000");



CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `status` enum('pending','verified','','') NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO pembayaran VALUES("15","34","11","49eb6a44db57cba8d66b3404fa9f0ad4pngwing.com (2).png","230000","verified","TF BNI AN WIDI","2021-10-06 21:11:00");



CREATE TABLE `pesanan` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_digunakan` datetime NOT NULL,
  `user_id` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `read` enum('0','1') NOT NULL,
  `status` enum('lunas','belum lunas','','') NOT NULL,
  PRIMARY KEY (`id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

INSERT INTO pesanan VALUES("34","2021-10-06 16:10:07","2021-10-07 10:00:00","11","WIDI ISMAIL","pwt","Purwokerto","10000","085700016705","1","lunas");



CREATE TABLE `produk` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `kategori_produk_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`kategori_produk_id`),
  KEY `kategori_produk_id` (`kategori_produk_id`),
  CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kategori_produk_id`) REFERENCES `kategori_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO produk VALUES("1","Brownies Original","Brownies Original Coklat","49eb6a44db57cba8d66b3404fa9f0ad4brownies coklat.jpg","35000","8");
INSERT INTO produk VALUES("2","Nastar Wafer","Nastar Wafer","49eb6a44db57cba8d66b3404fa9f0ad4nastar wafer.jpg","40000","6");
INSERT INTO produk VALUES("3","Nastar Nanas","Nastar Nanas","49eb6a44db57cba8d66b3404fa9f0ad4nastar.jpg","40000","6");
INSERT INTO produk VALUES("4","Brownies Pandan Keju","Brownies Pandan Keju","49eb6a44db57cba8d66b3404fa9f0ad4photo.jpg","35000","8");
INSERT INTO produk VALUES("5","Brownies Cheesecake Cream","Brownies Kream Keju","49eb6a44db57cba8d66b3404fa9f0ad4cheesecake brownies.jpg","35000","8");
INSERT INTO produk VALUES("6","Brownies Blueberry","Brownies Blueberry","49eb6a44db57cba8d66b3404fa9f0ad4blueberry.jpg","35000","8");
INSERT INTO produk VALUES("7","Putri Salju","Putri Salju","49eb6a44db57cba8d66b3404fa9f0ad4puti salju.jpg","35000","6");
INSERT INTO produk VALUES("8","Cookies","Cookies ","49eb6a44db57cba8d66b3404fa9f0ad4cookies.jpg","45000","6");
INSERT INTO produk VALUES("9","Chocolate Cake","Kue Coklat","49eb6a44db57cba8d66b3404fa9f0ad4chocolate.jpg","55000","7");
INSERT INTO produk VALUES("10","Red Velvet Cake","Red Velvet Cake","49eb6a44db57cba8d66b3404fa9f0ad4red velvet.jpg","55000","7");
INSERT INTO produk VALUES("11","Roti Sobek Coklat","Roti Sobek Coklat","49eb6a44db57cba8d66b3404fa9f0ad4roti sobek.jpg","15000","9");
INSERT INTO produk VALUES("12","Roti Sobek Kombinasi","Roti Sobek Kombinasi","49eb6a44db57cba8d66b3404fa9f0ad4roti sobek kombinasi.jpg","15000","9");



CREATE TABLE `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('user','admin') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("3","Putri Delvia","putri@gmail.com","08985432330","Purwokerto","827ccb0eea8a706c4c34a16891f84e7b","user");
INSERT INTO user VALUES("9","Administrator","admin@gmail.com","085381259356","Purwokerto","21232f297a57a5a743894a0e4a801fc3","admin");
INSERT INTO user VALUES("10","user1","user1@gmail.com","08123","Purbalingga","827ccb0eea8a706c4c34a16891f84e7b","user");
INSERT INTO user VALUES("11","ISMAIL","mailzsilver89@gmail.com","085700016705","pwt","827ccb0eea8a706c4c34a16891f84e7b","user");
INSERT INTO user VALUES("12","User2","user2@gmail.com","080001675234","pwt","827ccb0eea8a706c4c34a16891f84e7b","user");
INSERT INTO user VALUES("13","Friska Sasi","friska@admin.com","000000","BABAKAN PBG","21232f297a57a5a743894a0e4a801fc3","admin");

