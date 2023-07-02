-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2021 at 04:27 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokokue`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id`, `produk_id`, `qty`, `pesanan_id`) VALUES
(34, 1, 5, 34),
(35, 11, 3, 34);

-- --------------------------------------------------------

--
-- Table structure for table `info_pembayaran`
--

CREATE TABLE `info_pembayaran` (
  `id` int(11) NOT NULL,
  `info` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_pembayaran`
--

INSERT INTO `info_pembayaran` (`id`, `info`) VALUES
(1, 'Silahkan lakukan pembayaran DP 50% terlebih dahulu sebelum hari H.\r\nJika tidak maka transaksi akan di batalkan.\r\n\r\nPembayaran Bisa Melalui Rekening Di Bawah Ini:\r\nNama Bank: Bank Negara Indonesia (BNI). \r\nNo. Rek: 085700016705\r\nNama: WIDI ISMAIL. \r\nKode Bank: 009. \r\nKode Swift: BNINIDJA. \r\n\r\nKemudian lakukan konfirmasi di menu konfirmasi pembayaran.\r\n\r\nDan Kirim Bukti Transfer ke Nomor Hp : 085700016705');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama`, `deskripsi`) VALUES
(6, 'Kue Kering', 'Kue Kering'),
(7, 'Kue Ultah', 'Kue Ultah'),
(8, 'Brownies', 'Macam-macam Brownies'),
(9, 'Roti Sobek', 'Roti Sobek');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subjek` varchar(200) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `subjek`, `pesan`) VALUES
(19, '', 'aku@gmail.com', '', ''),
(20, '', 'aku@gmail.com', '', ''),
(21, '', 'aku@gmail.com', '', ''),
(22, '', 'aku@gmail.com', '', ''),
(23, '', 'admin@gmail.com', '', ''),
(24, '', 'admin@gmail.com', '', ''),
(25, '', 'admin@gmail.com', '', ''),
(26, '', 'admin@gmail.com', '', ''),
(27, '', 'user@gmail.com', '', ''),
(28, '', 'admin@gmail.com', '', ''),
(29, '', 'admin@gmail.com', '', ''),
(30, '', 'admin@gmail.com', '', ''),
(31, '', 'user@gmail.com', '', ''),
(32, '', 'user@user.com', '', ''),
(33, '', 'user@gmail.com', '', ''),
(34, '', 'admin@gmail.com', '', ''),
(35, '', 'user1@gmail.com', '', ''),
(36, '', 'admin@gmail.com', '', ''),
(37, '', 'user1@gmail.com', '', ''),
(39, '', 'pembeli@gmail.com', '', ''),
(40, '', 'admin@gmail.com', '', ''),
(41, '', 'user@gmail.com', '', ''),
(42, '', 'user@gmail.com', '', ''),
(43, '', 'pembeli@gmail.com', '', ''),
(44, '', 'pembeli@gmail.com', '', ''),
(45, '', 'pembeli@gmail.com', '', ''),
(46, '', 'pembeli@gmail.com', '', ''),
(47, '', 'user@gmail.com', '', ''),
(48, '', 'admin@gmail.com', '', ''),
(49, '', 'admin@gmail.com', '', ''),
(50, '', 'mailzsilver89@gmail.com', '', ''),
(51, '', 'mailzsilver89@gmail.com', '', ''),
(52, '', 'mailzsilver89@gmail.com', '', ''),
(53, '', 'mailzsilver89@gmail.com', '', ''),
(54, '', 'mailzsilver89@gmail.com', '', ''),
(55, '', 'mailzsilver89@gmail.com', '', ''),
(56, '', 'user2@gmail.com', '', ''),
(57, '', 'mailzsilver89@gmail.com', '', ''),
(58, '', 'mailzsilver89@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `nama`, `ongkir`) VALUES
(2, 'Kebumen', 20000),
(3, 'Purwokerto', 10000),
(4, 'Purbalingga', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_pengeluaran` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `Tanggal_pengeluaran` date NOT NULL,
  `harga` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_pengeluaran`, `nama_barang`, `Tanggal_pengeluaran`, `harga`, `jumlah`, `total`) VALUES
(39, 'knnn', '2017-12-01', '555555', 4, 500000),
(40, 'bberas', '2017-12-15', '50000', 4, 50000),
(41, 'padi', '2017-12-02', '20', 3, 60),
(42, 'gas', '2017-12-04', '25000', 5, 125000);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `status` enum('pending','verified','','') NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_pesanan`, `id_user`, `file`, `total`, `status`, `keterangan`, `created_at`) VALUES
(15, 34, 11, '49eb6a44db57cba8d66b3404fa9f0ad4pngwing.com (2).png', 230000, 'verified', 'TF BNI AN WIDI', '2021-10-06 21:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(5) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_digunakan` datetime NOT NULL,
  `user_id` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `penerima` varchar(64) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `read` enum('0','1') NOT NULL,
  `status` enum('lunas','belum lunas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal_pesan`, `tanggal_digunakan`, `user_id`, `nama`, `alamat`, `kota`, `ongkir`, `telephone`, `read`, `status`) VALUES
(34, '2021-10-06 16:10:07', '2021-10-07 10:00:00', 11, 'WIDI ISMAIL', 'pwt', 'Purwokerto', 10000, '085700016705', '1', 'lunas');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `kategori_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `deskripsi`, `gambar`, `harga`, `kategori_produk_id`) VALUES
(1, 'Brownies Original', 'Brownies Original Coklat', '49eb6a44db57cba8d66b3404fa9f0ad4brownies coklat.jpg', '35000', 8),
(2, 'Nastar Wafer', 'Nastar Wafer', '49eb6a44db57cba8d66b3404fa9f0ad4nastar wafer.jpg', '40000', 6),
(3, 'Nastar Nanas', 'Nastar Nanas', '49eb6a44db57cba8d66b3404fa9f0ad4nastar.jpg', '40000', 6),
(4, 'Brownies Pandan Keju', 'Brownies Pandan Keju', '49eb6a44db57cba8d66b3404fa9f0ad4photo.jpg', '35000', 8),
(5, 'Brownies Cheesecake Cream', 'Brownies Kream Keju', '49eb6a44db57cba8d66b3404fa9f0ad4cheesecake brownies.jpg', '35000', 8),
(6, 'Brownies Blueberry', 'Brownies Blueberry', '49eb6a44db57cba8d66b3404fa9f0ad4blueberry.jpg', '35000', 8),
(7, 'Putri Salju', 'Putri Salju', '49eb6a44db57cba8d66b3404fa9f0ad4puti salju.jpg', '35000', 6),
(8, 'Cookies', 'Cookies ', '49eb6a44db57cba8d66b3404fa9f0ad4cookies.jpg', '45000', 6),
(9, 'Chocolate Cake', 'Kue Coklat', '49eb6a44db57cba8d66b3404fa9f0ad4chocolate.jpg', '55000', 7),
(10, 'Red Velvet Cake', 'Red Velvet Cake', '49eb6a44db57cba8d66b3404fa9f0ad4red velvet.jpg', '55000', 7),
(11, 'Roti Sobek Coklat', 'Roti Sobek Coklat', '49eb6a44db57cba8d66b3404fa9f0ad4roti sobek.jpg', '15000', 9),
(12, 'Roti Sobek Kombinasi', 'Roti Sobek Kombinasi', '49eb6a44db57cba8d66b3404fa9f0ad4roti sobek kombinasi.jpg', '15000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `telephone`, `alamat`, `password`, `status`) VALUES
(2, 'Jokowi', 'joko@gmail.com', '08985432330', 'jakarta 1', '7d00ff54a263fe80825b9297804a982c', 'user'),
(3, 'Putri Delvia', 'putri@gmail.com', '08985432330', 'semarang selatan', '82682943a05de360abb183236c632bd6', 'user'),
(4, 'Shodiqul Muzaki', 'mshodiqul@gmail.com', '087717495260', 'karangasem', 'a63ae42a413740542ce47bb20a124438', 'user'),
(5, 'Mery Ayu Nurita', 'meryayu@gmail.com', '089688899260', 'Semarang aja', 'a63ae42a413740542ce47bb20a124438', 'user'),
(8, 'User Jono', 'user@gmail.com', '085381259365', 'Padang', 'ee11cbb19052e40b07aac0ca060c23ee', 'user'),
(9, 'Administrator', 'admin@gmail.com', '085381259356', 'Sungai Penuh', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(10, 'user1', 'user1@gmail.com', '08123', 'padang', '24c9e15e52afc47c225b757e7bee1f9d', 'user'),
(11, 'WIDI ISMAIL', 'mailzsilver89@gmail.com', '085700016705', 'pwt', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(12, 'User2', 'user2@gmail.com', '080001675234', 'pwt', '827ccb0eea8a706c4c34a16891f84e7b', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id`,`produk_id`,`pesanan_id`),
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `info_pembayaran`
--
ALTER TABLE `info_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`,`kategori_produk_id`),
  ADD KEY `kategori_produk_id` (`kategori_produk_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `info_pembayaran`
--
ALTER TABLE `info_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_ibfk_2` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pesanan_ibfk_3` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kategori_produk_id`) REFERENCES `kategori_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
