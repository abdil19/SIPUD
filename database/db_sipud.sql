-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 10:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sipud`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ADMIN_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `admin_pass` varchar(200) DEFAULT NULL,
  `NAMA_ADMIN` varchar(50) DEFAULT NULL,
  `ALAMAT_ADMIN` varchar(100) DEFAULT NULL,
  `NOTELP_ADMIN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMIN_ID`, `USERNAME`, `admin_pass`, `NAMA_ADMIN`, `ALAMAT_ADMIN`, `NOTELP_ADMIN`) VALUES
(1, 'admin', '$2y$10$6d.yXxQRpfJdZzVgEdwwQOo6e43YQwVH4XQ0KGyzwelDoY2LfvNK6', 'Admin_Udin', 'Wonorejo Surabaya', 812345678);

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `produk` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`detail_id`, `order_id`, `produk`, `jumlah`) VALUES
(1, 1, 'Sarung Tenun Ikat', 1),
(2, 1, 'Rambut Nenek', 1),
(3, 1, 'Celengan Tanah Liat', 1),
(4, 2, 'Sarung Tenun Ikat', 1),
(5, 2, 'Celengan Tanah Liat', 3);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pemesanan`
--

CREATE TABLE `detail_pemesanan` (
  `PEMESANAN_ID` int(11) DEFAULT NULL,
  `PRODUK_ID` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `HARGA_SATUAN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `KATEGORI_ID` int(11) NOT NULL,
  `NAMA_KATEGORI` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`KATEGORI_ID`, `NAMA_KATEGORI`) VALUES
(1, 'Jajanan Tradisional'),
(2, 'Tenun'),
(6, 'Songket'),
(7, 'Gerabah');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_telp` bigint(20) NOT NULL,
  `bukti` varchar(100) NOT NULL,
  `total` bigint(20) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('pending','terverifikasi') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `nama`, `alamat`, `no_telp`, `bukti`, `total`, `waktu`, `status`) VALUES
(1, 'Maheswara Prajapatisuta Sekti', 'Jl. Nanggala no.1', 81225450122, 'transfer2.jpg', 565000, '2024-06-18 16:16:52', 'terverifikasi'),
(2, 'Abbyasah ekki', 'Jl. Tamasha 2', 8115354643, 'transfer.jpg', 635000, '2024-06-18 16:40:05', 'terverifikasi');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PELANGGAN_ID` int(11) NOT NULL,
  `NAMA_PELANGGAN` varchar(100) DEFAULT NULL,
  `ALAMAT` varchar(150) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(200) DEFAULT NULL,
  `NOMER_TELEPON` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`PELANGGAN_ID`, `NAMA_PELANGGAN`, `ALAMAT`, `EMAIL`, `PASSWORD`, `NOMER_TELEPON`) VALUES
(0, 'boncel', 'asdasd', 'p@gmail.com', '$2y$10$F57PVU9ayWBwcAAJ6sRKjeO2308p4IqsA1U5f/qmalrOVL5AQqrUi', 12312313);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `PEMESANAN_ID` int(11) NOT NULL,
  `ADMIN_ID` int(11) DEFAULT NULL,
  `PELANGGAN_ID` int(11) DEFAULT NULL,
  `TANGGAL_PEMESANAN` datetime DEFAULT NULL,
  `TOTAL_HARGA` int(11) DEFAULT NULL,
  `STATUS_BAYAR` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `PRODUK_ID` int(11) NOT NULL,
  `KATEGORI_ID` int(11) NOT NULL,
  `NAMA_PRODUK` varchar(50) NOT NULL,
  `foto` varchar(225) DEFAULT NULL,
  `DESKRIPSI` text DEFAULT NULL,
  `HARGA` double NOT NULL,
  `STOK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`PRODUK_ID`, `KATEGORI_ID`, `NAMA_PRODUK`, `foto`, `DESKRIPSI`, `HARGA`, `STOK`) VALUES
(1, 2, 'Sarung Tenun Ikat', 'sarung-tenun1.JPG', 'Sarung tenun ikat khas Parengan dikenal dingin dan nyaman saat dikenakan. Sensasi dingin ini dikarenakan bahan dasar benang yang digunakan ialah benang jenis maseris (mercerized).Sarung yang memiliki motif dan pewarnaan khas itu diproduksi oleh tangan terampil para perajin sarung tenun ikat di Desa Parengan.', 500000, 50),
(2, 7, 'Celengan Tanah Liat', 'celengan-tanahliat1.jpeg', 'Celengan tanah liat adalah simbol kebijaksanaan finansial yang indah dan tradisional. Dibuat dengan teliti oleh tangan terampil pengrajin lokal, setiap celengan memancarkan pesona dan kehangatan alami. Ideal sebagai hadiah yang berarti atau hiasan rumah yang klasik.', 45000, 100),
(7, 1, 'Rambut Nenek', 'aFNCDBKAeka4QmrP1UxH.jpg', 'Rambut nenek adalah jajanan tradisional yang berasal dari Lamongan. Rambut nenek sebenarnya adalah gulali yang diberi tepung. Berbeda dengan gulali yang memiliki rasa manis yang lumer di mulut, rambut nenek ada sedikit rasa tepung mengecap di lidah', 20000, 78);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD KEY `FK_MENGAMBIL` (`PRODUK_ID`),
  ADD KEY `FK_PUNYA` (`PEMESANAN_ID`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`KATEGORI_ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PELANGGAN_ID`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`PEMESANAN_ID`),
  ADD KEY `FK_MEMESAN` (`PELANGGAN_ID`),
  ADD KEY `FK_MENGELOLA_PEMESANAN` (`ADMIN_ID`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`PRODUK_ID`),
  ADD KEY `FK_MEMILIKI` (`KATEGORI_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `KATEGORI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `PRODUK_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail`
--
ALTER TABLE `detail`
  ADD CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD CONSTRAINT `FK_MENGAMBIL` FOREIGN KEY (`PRODUK_ID`) REFERENCES `produk` (`PRODUK_ID`),
  ADD CONSTRAINT `FK_PUNYA` FOREIGN KEY (`PEMESANAN_ID`) REFERENCES `pemesanan` (`PEMESANAN_ID`);

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `FK_MEMESAN` FOREIGN KEY (`PELANGGAN_ID`) REFERENCES `pelanggan` (`PELANGGAN_ID`),
  ADD CONSTRAINT `FK_MENGELOLA_PEMESANAN` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `FK_MEMILIKI` FOREIGN KEY (`KATEGORI_ID`) REFERENCES `kategori` (`KATEGORI_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
