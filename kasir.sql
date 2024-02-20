-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2024 pada 08.02
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `DetailID` int(50) NOT NULL,
  `PenjualanID` int(50) NOT NULL,
  `ProdukID` int(50) NOT NULL,
  `JumlahProduk` varchar(100) NOT NULL,
  `SubTotal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`DetailID`, `PenjualanID`, `ProdukID`, `JumlahProduk`, `SubTotal`) VALUES
(8, 0, 0, '', '1'),
(12, 0, 0, '', '1'),
(65, 0, 0, '', '1'),
(89, 0, 0, '', '6'),
(988, 0, 0, '2', '34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `PenjualanID` int(50) NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`PenjualanID`, `TanggalPenjualan`, `TotalHarga`) VALUES
(3, '2024-02-20', '120000'),
(4, '2024-02-18', '20000'),
(6, '2024-02-20', ''),
(88, '2024-02-20', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(50) NOT NULL,
  `usename` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `usename`, `password`) VALUES
(1, 'aini', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `ProdukID` int(50) NOT NULL,
  `NamaProduk` varchar(100) NOT NULL,
  `Harga` varchar(100) NOT NULL,
  `Stok` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`ProdukID`, `NamaProduk`, `Harga`, `Stok`) VALUES
(3, 'Sabun', '4000', '10'),
(4, 'Sabun', '4000', '10'),
(5, 'Sabun', '5000', '100'),
(56, 'Susu', '4000', '10'),
(998, 'Teh', '20000', '10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`DetailID`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`PenjualanID`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ProdukID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `DetailID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=989;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `PenjualanID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `ProdukID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=999;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
