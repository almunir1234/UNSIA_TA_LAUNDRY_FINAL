-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Sep 2026 pada 14.51
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_laundry_final`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_datail` int(11) NOT NULL,
  `no_transaksi` varchar(255) DEFAULT NULL,
  `id_layanan` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga_satuan` decimal(11,0) DEFAULT NULL,
  `total_harga` decimal(11,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_datail`, `no_transaksi`, `id_layanan`, `jumlah`, `harga_satuan`, `total_harga`) VALUES
(1, 'TR-260823001', 1, 3, 4000, 12000),
(2, 'TR-260823001', 6, 1, 15000, 15000),
(3, 'TR-260823001', 5, 1, 12000, 12000),
(4, 'TR-260827001', 7, 3, 10000, 30000),
(5, 'TR-260827001', 1, 2, 4000, 8000),
(6, 'TR-260827001', 5, 1, 12000, 12000),
(9, 'TR-260826001', 3, 3, 7000, 21000),
(10, 'TR-260826001', 4, 1, 10000, 10000),
(11, 'TR-260826002', 6, 1, 15000, 15000),
(12, 'TR-260826002', 7, 1, 10000, 10000),
(13, 'TR-260826003', 1, 1, 4000, 4000),
(14, 'TR-260826003', 7, 1, 10000, 10000),
(19, 'TR-260827001', 6, 1, 15000, 15000),
(20, 'TR-260828001', 3, 2, 7000, 14000),
(21, 'TR-260801001', 3, 5, 7000, 35000),
(22, 'TR-260802001', 3, 3, 7000, 21000),
(23, 'TR-260824001', 3, 2, 7000, 14000),
(24, 'TR-260824001', 4, 1, 10000, 10000),
(25, 'TR-260824002', 6, 1, 15000, 15000),
(26, 'TR-260823002', 3, 4, 7000, 28000),
(27, 'TR-260823002', 5, 1, 12000, 12000),
(28, 'TR-260823002', 6, 1, 15000, 15000),
(35, 'TR-260826004', 3, 1, 7000, 7000),
(36, 'TR-260826004', 11, 1, 15000, 15000),
(37, 'TR-260826004', 13, 1, 12500, 12500),
(38, 'TR-260826005', 5, 1, 12000, 12000),
(41, 'TR-260826006', 11, 1, 15000, 15000),
(42, 'TR-260826006', 13, 1, 12500, 12500),
(45, 'TR-260907001', 3, 3, 7000, 21000),
(46, 'TR-260907001', 4, 1, 10000, 10000),
(47, 'TR-260907001', 5, 1, 12000, 12000),
(48, 'TR-260907001', 6, 1, 15000, 15000),
(49, 'TR-260907001', 11, 1, 15000, 15000),
(54, 'TR-260907002', 3, 1, 7000, 7000),
(55, 'TR-260907002', 5, 1, 12000, 12000),
(59, 'TR-260914001', 3, 3, 7000, 21000),
(70, 'TR-260917001', 5, 1, 12000, 12000),
(71, 'TR-260917002', 4, 1, 10000, 10000),
(72, 'TR-260917002', 6, 1, 15000, 15000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` int(11) NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `jenis` enum('kiloan','satuan') NOT NULL,
  `harga` decimal(15,0) NOT NULL,
  `delete_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `nama_paket`, `jenis`, `harga`, `delete_at`) VALUES
(1, 'cuci kering', 'kiloan', 4000, NULL),
(2, 'setrika saja', 'kiloan', 4000, NULL),
(3, 'cuci setrika', 'kiloan', 7000, NULL),
(4, 'selimut', 'satuan', 10000, NULL),
(5, 'sprei', 'satuan', 12000, NULL),
(6, 'bed cover', 'satuan', 15000, NULL),
(7, 'handuk', 'satuan', 10000, NULL),
(10, 'karpet', 'satuan', 10000, NULL),
(11, 'sepatu', 'satuan', 15000, NULL),
(13, 'kemeja', 'satuan', 12500, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `delete_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_telp`, `delete_at`) VALUES
(1, 'yanti', 'jl. cempaka no. 05', '082147483647', NULL),
(2, 'nanang', 'jl. pepaya no. 10', '082147929241', NULL),
(3, 'fadila', 'jl. nangka no. 15', '082163523544', NULL),
(4, 'susan', 'jl. durian no. 12', '082146243654', NULL),
(5, 'sudarjo', 'jl. cempedak no. 01', '082145346534', NULL),
(8, 'hapiz', 'jl. melati no. 30', '082236752811', NULL),
(9, 'baro', 'jl. mangga no. 31', '081260531527', NULL),
(12, 'munir', 'jalan jendral sudirman nomor 10 gang preman', '083387654433', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` varchar(255) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tgl_terima` datetime NOT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `status` enum('antri','proses','selesai') NOT NULL,
  `tgl_pembayaran` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `id_pelanggan`, `tgl_terima`, `tgl_selesai`, `status`, `tgl_pembayaran`) VALUES
('TR-260801001', 4, '2026-08-01 00:00:00', '2026-08-04 14:21:20', 'selesai', '2026-08-04 07:10:40'),
('TR-260802001', 3, '2026-08-02 00:00:00', '2026-08-04 14:15:50', 'selesai', '2026-08-04 14:15:50'),
('TR-260823001', 1, '2026-08-23 00:00:00', '2026-08-26 14:19:27', 'selesai', '2026-08-26 06:53:06'),
('TR-260823002', 1, '2026-08-23 00:00:00', '2026-08-26 15:08:18', 'selesai', '2026-08-26 15:08:18'),
('TR-260824001', 1, '2026-08-24 00:00:00', '2026-08-27 15:03:58', 'selesai', '2026-08-27 15:03:58'),
('TR-260824002', 4, '2026-08-24 00:00:00', '2026-08-27 15:04:31', 'selesai', '2026-08-27 15:04:31'),
('TR-260826001', 1, '2026-08-26 00:00:00', '2026-08-28 14:24:31', 'selesai', '2026-08-28 14:24:31'),
('TR-260826002', 2, '2026-08-26 00:00:00', '2026-08-28 14:24:52', 'selesai', '2026-08-28 04:51:35'),
('TR-260826003', 3, '2026-08-26 00:00:00', '2026-08-28 14:26:12', 'selesai', '2026-08-28 14:26:12'),
('TR-260826004', 9, '2026-08-26 00:00:00', '2026-08-29 17:25:11', 'selesai', '2026-08-29 17:25:11'),
('TR-260826005', 5, '2026-08-26 00:00:00', '2026-08-29 17:25:11', 'selesai', '2026-08-29 17:25:11'),
('TR-260826006', 2, '2026-08-26 00:00:00', '2026-08-29 17:25:11', 'selesai', '2026-08-29 17:25:11'),
('TR-260827001', 2, '2026-08-27 00:00:00', '2026-08-30 04:51:21', 'selesai', '2026-08-30 04:51:21'),
('TR-260828001', 4, '2026-08-28 00:00:00', '2026-08-31 14:11:47', 'selesai', '2026-08-31 06:52:52'),
('TR-260907001', 12, '2026-09-07 00:00:00', '2026-09-10 17:25:11', 'selesai', '2026-09-10 17:25:11'),
('TR-260907002', 8, '2026-09-07 00:00:00', '2026-09-10 17:25:11', 'selesai', '2026-09-10 17:25:11'),
('TR-260914001', 1, '2026-09-14 00:00:00', '2026-09-17 12:25:20', 'selesai', '2026-09-17 12:15:01'),
('TR-260917001', 12, '2026-09-17 00:00:00', NULL, 'proses', NULL),
('TR-260917002', 8, '2026-09-17 00:00:00', NULL, 'antri', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','owner') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_users`, `nama_lengkap`, `username`, `password`, `role`) VALUES
(1, 'budi santoso', 'budi', 'budi123', 'admin'),
(2, 'arman susilo', 'arman', 'arman123', 'owner');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_datail`),
  ADD KEY `no_transaksi` (`no_transaksi`),
  ADD KEY `id_layanan` (`id_layanan`);

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_datail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`no_transaksi`) REFERENCES `transaksi` (`no_transaksi`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_layanan`) REFERENCES `layanan` (`id_layanan`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
