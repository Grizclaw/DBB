-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Agu 2022 pada 22.05
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(3, 'petugas', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Makanan Utama'),
(2, 'Appetizer'),
(3, 'Minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `komentar` text NOT NULL,
  `tgl_komentar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `email_pelanggan` varchar(255) NOT NULL,
  `password_pelanggan` varchar(11) NOT NULL,
  `telepon_pelanggan` varchar(12) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email_pelanggan`, `password_pelanggan`, `telepon_pelanggan`, `alamat`) VALUES
(6, 'user', 'user@gmail.com', 'user', '1231', 'qweqwe'),
(8, 'abyan putra', 'abyanputra@gmail.com', '12345678', '081296270838', 'jkkjk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tanggal`, `bukti`) VALUES
(27, 38, 'Muhammad Rafi Pradana', 'bca', 123, '2022-05-15 00:00:00', '20220515180759Screenshot (15).png'),
(28, 38, 'Muhammad Rafi Pradana', 'on', 1, '2022-05-15 00:00:00', '20220515181119Screenshot (20).png'),
(29, 44, 'Abyan', '121212', 20000, '2022-08-08 00:00:00', '202208081828357c916fb49ec9f74ecb76fcbb077068a3.jpg'),
(30, 51, 'abyan', 'dki', 30000, '2022-08-08 00:00:00', '202208081916268feb8848a9919f8093c268db00c8a2c2.jpg'),
(31, 50, 'Siapa aja', 'DKI', 17000, '2022-08-08 00:00:00', '2022080819295512d61d402e9a1bdc66efb9c4998a9136.jpg'),
(32, 52, 'Abyan Putra', 'BRI', 13000, '2022-08-08 00:00:00', '202208081933327c916fb49ec9f74ecb76fcbb077068a3.jpg'),
(33, 53, 'Buzzlighear', 'DKI', 12000, '2022-08-08 00:00:00', '202208081934288feb8848a9919f8093c268db00c8a2c2.jpg'),
(34, 54, 'haahah', 'dki', 10000, '2022-08-08 00:00:00', '2022080819354114.jpg'),
(35, 55, 'siapa aja', 'dki', 1111, '2022-08-08 00:00:00', '2022080819362112d61d402e9a1bdc66efb9c4998a9136.jpg'),
(36, 59, 'siapa aja bayarin', 'BCA', 10000, '2022-08-08 00:00:00', '20220808195632Capturezzz.PNG'),
(37, 60, 'ahahahah', '12121', 111111, '2022-08-08 00:00:00', '202208081959178feb8848a9919f8093c268db00c8a2c2.jpg'),
(38, 67, 'ahjhj', 'bri', 14000, '2022-08-08 00:00:00', '20220808220450Group 9 (1).png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pembelian` datetime NOT NULL,
  `status_pembelian` varchar(255) NOT NULL DEFAULT 'belum bayar',
  `total_pembelian` int(11) NOT NULL,
  `tipe_pembayaran` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `tanggal_pembelian`, `status_pembelian`, `total_pembelian`, `tipe_pembayaran`) VALUES
(61, 6, '2022-08-08 00:00:00', 'belum bayar', 12000, 'tunai'),
(62, 6, '2022-08-08 00:00:00', 'belum bayar', 6000, 'tunai'),
(63, 6, '2022-08-08 00:00:00', 'belum bayar', 0, 'tunai'),
(64, 6, '2022-08-08 00:00:00', 'belum bayar', 22000, 'non tunai'),
(65, 6, '2022-08-08 00:00:00', 'belum bayar', 0, 'non tunai'),
(66, 6, '2022-08-08 00:00:00', 'belum bayar', 9000, 'non tunai'),
(67, 6, '2022-08-08 00:00:00', 'sudah bayar', 14000, 'non tunai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `subharga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_pelanggan`, `id_produk`, `nama`, `harga`, `subharga`, `jumlah`) VALUES
(54, 43, 0, 48, 'Coklat Boba', 8000, 8000, 1),
(55, 43, 0, 60, 'Martabak', 12000, 12000, 1),
(56, 44, 0, 60, 'Martabak', 12000, 12000, 1),
(57, 45, 0, 60, 'Martabak', 12000, 12000, 1),
(58, 47, 0, 59, 'Dimsum', 14000, 14000, 1),
(59, 49, 0, 58, 'Smoked Beef', 6000, 6000, 1),
(60, 51, 0, 54, 'Rendang', 30000, 30000, 1),
(61, 52, 0, 60, 'Martabak', 12000, 12000, 1),
(62, 53, 0, 60, 'Martabak', 12000, 12000, 1),
(63, 54, 0, 61, 'produk 1', 10000, 10000, 1),
(64, 55, 0, 61, 'produk 1', 10000, 10000, 1),
(65, 56, 0, 61, 'produk 1', 10000, 10000, 1),
(66, 57, 0, 60, 'Martabak', 12000, 12000, 1),
(67, 58, 0, 60, 'Martabak', 12000, 12000, 1),
(68, 59, 0, 61, 'produk 1', 10000, 10000, 1),
(69, 60, 0, 59, 'Dimsum', 14000, 14000, 1),
(70, 61, 0, 60, 'Martabak', 12000, 12000, 1),
(71, 62, 0, 58, 'Smoked Beef', 6000, 6000, 1),
(72, 64, 0, 60, 'Martabak', 12000, 12000, 1),
(73, 64, 0, 61, 'produk 1', 10000, 10000, 1),
(74, 66, 0, 62, 'Kopi Hitam', 9000, 9000, 1),
(75, 67, 0, 59, 'Dimsum', 14000, 14000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `stok_produk` varchar(255) NOT NULL,
  `foto_produk` varchar(255) NOT NULL,
  `deskripsi_produk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `harga_produk`, `berat_produk`, `stok_produk`, `foto_produk`, `deskripsi_produk`) VALUES
(51, 1, 'Spagethi', 25000, 0, '30', '030475400_1581499756-shutterstock_413580649.jpg', '<p>Makana Utama :</p>\r\n\r\n<p>Spagethi</p>\r\n'),
(54, 1, 'Rendang', 30000, 0, '19', 'IMG_10052021_175604__822_x_430_piksel_.jpg', '<p>Makanan Utama :&nbsp;</p>\r\n\r\n<p>Rendang</p>\r\n'),
(58, 2, 'Smoked Beef', 6000, 0, '18', 'Risoles_untuk_Appetizer_kompas.com.width-800.jpg', '<p>Appetizer :</p>\r\n\r\n<p>Smoked Beef</p>\r\n'),
(59, 2, 'Dimsum', 14000, 0, '17', 'download (2).jfif', '<p>Appetizer :</p>\r\n\r\n<p>Dimsum</p>\r\n'),
(60, 2, 'Martabak', 12000, 0, '6', 'download (3).jfif', '<p>Appetizer :</p>\r\n\r\n<p>Martabak</p>\r\n'),
(62, 3, 'Kopi Hitam', 9000, 0, '29', '045285900_1547016776-4-Cara-Bikin-Kebiasaan-Minum-Kopi-Jadi-Lebih-Sehat-By-Ruslan-Semichev-Shutterstock.jpg', '<p>Minuman : Kopi Hitam</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_foto`
--

CREATE TABLE `produk_foto` (
  `id_produk_foto` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_produk_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk_foto`
--

INSERT INTO `produk_foto` (`id_produk_foto`, `id_produk`, `nama_produk_foto`) VALUES
(1, 1, 'acer 3.jpg'),
(2, 1, 'acer.jpg'),
(3, 2, 'lenovo.2jpeg.jpeg'),
(4, 2, 'lenovo.jpeg'),
(5, 3, 'samsung 1.jpg'),
(6, 3, 'samsung 2.jpg'),
(7, 4, 'y12.jpg'),
(8, 4, 'y121.jpg'),
(10, 5, 'FP CASUAL (1).png'),
(11, 6, '53484802_l.webp'),
(12, 6, 'download (1).jpg'),
(13, 7, 'Sepatu-SneakerCasual-Adidas-Original-Samba-Black-White-BZ0058-BNIB-Murahjkl.jpg'),
(14, 8, 'sepatu_nike_air_jordan_sepatu__1612637327_92566a41_progressive.jpg'),
(15, 9, 'b0ee98ef-7c5f-4415-950e-6dba4f35f290.jpg'),
(16, 5, '20220301033039IMG_20190922_094324 (1).jpg'),
(19, 10, '2022040703540553484802_l.webp'),
(20, 10, '20220407035514'),
(21, 11, 'Screenshot 2022-05-10 154916.png'),
(22, 12, 'Screenshot 2022-05-10 155000.png'),
(23, 13, 'Screenshot 2022-05-10 155255.png'),
(24, 14, 'Screenshot 2022-05-10 160316.png'),
(25, 15, ''),
(26, 16, 'Screenshot 2022-05-10 161106.png'),
(27, 17, 'Screenshot 2022-05-10 161248.png'),
(28, 18, 'Screenshot 2022-05-10 161248.png'),
(29, 19, ''),
(30, 20, 'Screenshot 2022-05-10 161430.png'),
(31, 21, 'Screenshot 2022-05-11 194409.png'),
(32, 22, 'Screenshot 2022-05-11 194409.png'),
(33, 23, 'Screenshot 2022-05-11 194409.png'),
(34, 24, 'Screenshot 2022-05-11 200603.png'),
(35, 25, 'Screenshot 2022-05-11 200744.png'),
(36, 26, 'Screenshot 2022-05-11 200919.png'),
(37, 27, 'Screenshot 2022-05-11 201025.png'),
(38, 28, 'Screenshot 2022-05-11 201132.png'),
(39, 29, 'Screenshot 2022-05-11 201250.png'),
(40, 30, 'Screenshot 2022-05-11 201440.png'),
(41, 31, 'Screenshot 2022-05-11 201808.png'),
(42, 32, 'Screenshot 2022-05-11 201923.png'),
(43, 33, 'Screenshot 2022-05-11 202027.png'),
(44, 34, 'Screenshot 2022-05-11 204245.png'),
(45, 35, 'Screenshot 2022-05-11 204354.png'),
(46, 36, 'Screenshot 2022-05-11 204456.png'),
(47, 37, 'Screenshot 2022-05-11 204609.png'),
(48, 38, 'Screenshot 2022-05-11 204753.png'),
(49, 39, 'Screenshot 2022-05-11 204903.png'),
(50, 40, 'Screenshot 2022-05-11 205005.png'),
(51, 41, 'Screenshot 2022-05-11 205308.png'),
(52, 42, 'Screenshot 2022-05-11 205429.png'),
(53, 43, 'Screenshot 2022-05-11 205605.png'),
(54, 44, 'Screenshot 2022-05-11 205656.png'),
(55, 45, 'Screenshot 2022-05-11 205754.png'),
(56, 46, 'Screenshot 2022-05-11 205850.png'),
(57, 47, 'Screenshot 2022-05-11 210109.png'),
(58, 48, 'Screenshot 2022-05-10 161430.png'),
(59, 49, 'Screenshot 2022-05-11 210310.png'),
(60, 50, 'Screenshot 2022-05-11 210449.png'),
(61, 51, '030475400_1581499756-shutterstock_413580649.jpg'),
(62, 51, ''),
(63, 52, '030475400_1581499756-shutterstock_413580649.jpg'),
(64, 53, '030475400_1581499756-shutterstock_413580649.jpg'),
(65, 54, 'IMG_10052021_175604__822_x_430_piksel_.jpg'),
(66, 55, '2.PNG'),
(67, 56, '2.PNG'),
(68, 57, '2.PNG'),
(69, 58, 'Risoles_untuk_Appetizer_kompas.com.width-800.jpg'),
(70, 59, 'download (2).jfif'),
(71, 60, 'download (3).jfif'),
(72, 61, '1.PNG'),
(73, 62, '045285900_1547016776-4-Cara-Bikin-Kebiasaan-Minum-Kopi-Jadi-Lebih-Sehat-By-Ruslan-Semichev-Shutterstock.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tema`
--

CREATE TABLE `tema` (
  `id_tema` int(11) NOT NULL,
  `tema` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tema`
--

INSERT INTO `tema` (`id_tema`, `tema`) VALUES
(18, '20220808201932Group 9.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `produk_foto`
--
ALTER TABLE `produk_foto`
  ADD PRIMARY KEY (`id_produk_foto`);

--
-- Indeks untuk tabel `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id_tema`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `produk_foto`
--
ALTER TABLE `produk_foto`
  MODIFY `id_produk_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `tema`
--
ALTER TABLE `tema`
  MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
