-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09 Mar 2020 pada 11.04
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ponsel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga` int(20) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `keterangan` varchar(300) NOT NULL,
  `stok` int(11) NOT NULL,
  `id_gambar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `kd_barang`, `kondisi`, `keterangan`, `stok`, `id_gambar`) VALUES
(1, 'Oppo A3S 3/32', 2300000, 'OP', 'baru', 'tersedia hanya warna merah', 2, 2),
(2, 'Realmi C1', 1700000, 'RM', 'Baru', 'tersedia semua warna', 7, 3),
(3, 'Samsung J7 2016', 1800000, 'SM', 'baru', 'spefikasi standar', 3, 1),
(4, 'Realmi', 2000000, 'RM', 'baru', 'yes', 5, 3),
(5, 'realmi c2', 1500000, 'RM', 'baru', 'bagus', 5, 5),
(6, 'xiomi note 5 pro', 3000000, 'MI', 'baru', 'yes', 8, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `icon`
--

CREATE TABLE `icon` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `icon`
--

INSERT INTO `icon` (`id`, `nama`, `icon`) VALUES
(1, 'user', 'far fa-user'),
(2, 'file', 'far fa-file'),
(3, 'folder open', 'far fa-folder-open'),
(4, 'setting', 'fas fa-tools'),
(5, 'admin', 'fas fa-user-shield');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `kd_transaksi` varchar(20) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id`, `kd_transaksi`, `id_barang`, `name`, `price`, `qty`) VALUES
(16, 'CHC-1997-00001', 2, 'Realmi C1', 1700000, 2),
(17, 'CHC-1997-00002', 3, 'Samsung J7 2016', 1800000, 2),
(18, 'CHC-1997-00002', 5, 'realmi c2', 1500000, 1),
(19, 'CHC-1997-00002', 6, 'xiomi note 5 pro', 3000000, 1),
(20, 'CHC-1997-00003', 4, 'Realmi', 2000000, 1),
(21, 'CHC-1997-00003', 4, 'Realmi', 2000000, 1),
(22, 'CHC-1997-00004', 4, 'Realmi', 2000000, 1),
(23, 'CHC-1997-00005', 2, 'Realmi C1', 1700000, 1),
(24, 'CHC-1997-00006', 6, 'xiomi note 5 pro', 3000000, 2),
(25, 'CHC-1997-00007', 6, 'xiomi note 5 pro', 3000000, 2),
(26, 'CHC-1997-00008', 6, 'xiomi note 5 pro', 3000000, 2),
(27, 'CHC-1997-00009', 6, 'xiomi note 5 pro', 3000000, 2),
(28, 'CHC-1997-00010', 6, 'xiomi note 5 pro', 3000000, 2),
(29, 'CHC-1997-00011', 6, 'xiomi note 5 pro', 3000000, 2),
(30, 'CHC-1997-00012', 6, 'xiomi note 5 pro', 3000000, 2),
(31, 'CHC-1997-00013', 6, 'xiomi note 5 pro', 3000000, 2),
(32, 'CHC-1997-00014', 6, 'xiomi note 5 pro', 3000000, 2),
(33, 'CHC-1997-00015', 6, 'xiomi note 5 pro', 3000000, 2),
(34, 'CHC-1997-00016', 6, 'xiomi note 5 pro', 3000000, 2),
(35, 'CHC-1997-00017', 6, 'xiomi note 5 pro', 3000000, 2),
(36, 'CHC-1997-00018', 6, 'xiomi note 5 pro', 3000000, 2),
(37, 'CHC-1997-00019', 6, 'xiomi note 5 pro', 3000000, 2),
(38, 'CHC-1997-00020', 6, 'xiomi note 5 pro', 3000000, 2),
(39, 'CHC-1997-00021', 6, 'xiomi note 5 pro', 3000000, 2),
(40, 'CHC-1997-00022', 6, 'xiomi note 5 pro', 3000000, 2),
(41, 'CHC-1997-00023', 6, 'xiomi note 5 pro', 3000000, 2),
(42, 'CHC-1997-00024', 6, 'xiomi note 5 pro', 3000000, 2),
(43, 'CHC-1997-00025', 6, 'xiomi note 5 pro', 3000000, 2),
(44, 'CHC-1997-00026', 6, 'xiomi note 5 pro', 3000000, 2),
(45, 'CHC-1997-00027', 6, 'xiomi note 5 pro', 3000000, 2),
(46, 'CHC-1997-00028', 6, 'xiomi note 5 pro', 3000000, 2),
(47, 'CHC-1997-00029', 6, 'xiomi note 5 pro', 3000000, 2),
(48, 'CHC-1997-00030', 6, 'xiomi note 5 pro', 3000000, 2),
(49, 'CHC-1997-00031', 6, 'xiomi note 5 pro', 3000000, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_akses` int(11) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `email`, `image`, `password`, `id_akses`, `aktif`) VALUES
(1, 'rozziq', 'rozziqputra@gmail.com', 'rozziq.jpg', '123', 1, 1),
(2, 'gubahanz', 'gubahanzz@gmail.com', 'rozziq.jpg', '123', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna_akses`
--

CREATE TABLE `pengguna_akses` (
  `id` int(11) NOT NULL,
  `pengguna_hakakses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna_akses`
--

INSERT INTO `pengguna_akses` (`id`, `pengguna_hakakses`) VALUES
(1, 'administrator'),
(2, 'member'),
(4, 'Kepala');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna_akses_menu`
--

CREATE TABLE `pengguna_akses_menu` (
  `id` int(11) NOT NULL,
  `id_akses` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna_akses_menu`
--

INSERT INTO `pengguna_akses_menu` (`id`, `id_akses`, `id_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3),
(5, 1, 4),
(9, 2, 4),
(10, 1, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna_menu`
--

CREATE TABLE `pengguna_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna_menu`
--

INSERT INTO `pengguna_menu` (`id`, `menu`, `icon`) VALUES
(1, 'Admin', 'fas fa-user-shield'),
(2, 'User', 'far fa-user'),
(3, 'Pengaturan', 'fas fa-tools'),
(4, 'Konten', 'far fa-copy'),
(5, 'Menu', 'far fa-folder-open');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna_sub_menu`
--

CREATE TABLE `pengguna_sub_menu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `sub_menu` varchar(50) NOT NULL,
  `url` varchar(20) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna_sub_menu`
--

INSERT INTO `pengguna_sub_menu` (`id`, `id_menu`, `sub_menu`, `url`, `icon`, `aktif`) VALUES
(1, 1, 'Dasboart', 'admin/index', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'Profile', 'user', 'fas- fa-fw fa-user', 1),
(5, 1, 'Hak Akses', 'admin/akses', 'fas fa-lock', 1),
(6, 1, 'Pengguna', 'admin/pengguna', 'fas fa-users-cog', 1),
(7, 5, 'Menu', 'menu/', 'far fa-folder', 1),
(8, 5, 'Sub Menu', 'menu/sub_menu', 'far fa-folder-open', 1),
(9, 5, 'icon', 'menu/icon', 'far fa-user', 0),
(11, 4, 'Berita', 'berita/konten', 'far fa-file', 1),
(12, 3, 'Judul Website', 'pengaturan/judul', 'fas fa-tools', 1),
(13, 4, 'Barang', 'konten/', 'far fa-file', 1),
(14, 4, 'Transaksi', 'konten/transaksi', 'far fa-folder-open', 1),
(15, 4, 'cetak', 'konten/cetak', 'far fa-file', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `kd_transaksi` varchar(20) NOT NULL,
  `tgl` varchar(20) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`kd_transaksi`, `tgl`, `id_pengguna`, `total`, `bayar`) VALUES
('CHC-1997-00001', '2020-03-01 12:12:27p', 1, 3400000, 0),
('CHC-1997-00002', '2020-03-01 12:13:25p', 1, 8100000, 0),
('CHC-1997-00003', '2020-03-01 12:22:09p', 1, 2000000, 0),
('CHC-1997-00004', '2020-03-01 12:24:22p', 1, 2000000, 0),
('CHC-1997-00005', '2020-03-01 12:26:37p', 1, 1700000, 0),
('CHC-1997-00006', '2020-03-01 12:59:33p', 1, 6000000, 0),
('CHC-1997-00007', '2020-03-01 01:32:53p', 1, 6000000, 0),
('CHC-1997-00008', '2020-03-01 01:33:31p', 1, 6000000, 0),
('CHC-1997-00009', '2020-03-01 01:34:08p', 1, 6000000, 0),
('CHC-1997-00010', '2020-03-01 01:34:25p', 1, 6000000, 0),
('CHC-1997-00011', '2020-03-01 01:34:32p', 1, 6000000, 0),
('CHC-1997-00012', '2020-03-01 01:39:04p', 1, 6000000, 0),
('CHC-1997-00013', '2020-03-01 01:39:18p', 1, 6000000, 0),
('CHC-1997-00014', '2020-03-01 01:41:00p', 1, 6000000, 0),
('CHC-1997-00015', '2020-03-01 01:43:01p', 1, 6000000, 0),
('CHC-1997-00016', '2020-03-01 01:44:35p', 1, 6000000, 0),
('CHC-1997-00017', '2020-03-01 01:45:40p', 1, 6000000, 0),
('CHC-1997-00018', '2020-03-01 01:46:06p', 1, 6000000, 0),
('CHC-1997-00019', '2020-03-01 01:47:30p', 1, 6000000, 0),
('CHC-1997-00020', '2020-03-01 01:48:23p', 1, 6000000, 0),
('CHC-1997-00021', '2020-03-01 01:48:43p', 1, 6000000, 0),
('CHC-1997-00022', '2020-03-01 01:52:21p', 1, 6000000, 0),
('CHC-1997-00023', '2020-03-01 01:52:34p', 1, 6000000, 0),
('CHC-1997-00024', '2020-03-01 01:52:40p', 1, 6000000, 0),
('CHC-1997-00025', '2020-03-01 01:52:45p', 1, 6000000, 0),
('CHC-1997-00026', '2020-03-01 01:58:01p', 1, 6000000, 0),
('CHC-1997-00027', '2020-03-01 01:59:15p', 1, 6000000, 0),
('CHC-1997-00028', '2020-03-01 01:59:29p', 1, 6000000, 0),
('CHC-1997-00029', '2020-03-01 01:59:37p', 1, 6000000, 0),
('CHC-1997-00030', '2020-03-01 01:59:46p', 1, 6000000, 0),
('CHC-1997-00031', '2020-03-01 02:01:17p', 1, 6000000, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `icon`
--
ALTER TABLE `icon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna_akses`
--
ALTER TABLE `pengguna_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna_akses_menu`
--
ALTER TABLE `pengguna_akses_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna_menu`
--
ALTER TABLE `pengguna_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna_sub_menu`
--
ALTER TABLE `pengguna_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kd_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `icon`
--
ALTER TABLE `icon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengguna_akses`
--
ALTER TABLE `pengguna_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengguna_akses_menu`
--
ALTER TABLE `pengguna_akses_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pengguna_menu`
--
ALTER TABLE `pengguna_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengguna_sub_menu`
--
ALTER TABLE `pengguna_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
