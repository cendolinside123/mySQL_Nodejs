-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Feb 2019 pada 18.50
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectuas_android`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_harian`
--

CREATE TABLE `jurnal_harian` (
  `kdJurnal` int(11) NOT NULL,
  `nmJurnal` text NOT NULL,
  `kdAkun` int(11) NOT NULL,
  `kdUser` varchar(10) NOT NULL,
  `tgl` date DEFAULT NULL,
  `harga` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurnal_harian`
--

INSERT INTO `jurnal_harian` (`kdJurnal`, `nmJurnal`, `kdAkun`, `kdUser`, `tgl`, `harga`) VALUES
(63, 'Dana awalr Client', 24, 'client1', '2019-02-26', 100000000),
(64, 'Gaji pertama mr Client', 26, 'client1', '2019-02-26', 5000000),
(65, 'Beli Gundam', 25, 'client1', '2019-02-26', 200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblakun`
--

CREATE TABLE `tblakun` (
  `kdAkun` int(11) NOT NULL,
  `nmAkun` varchar(25) NOT NULL,
  `TipeAkun` varchar(20) NOT NULL,
  `kdUser` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblakun`
--

INSERT INTO `tblakun` (`kdAkun`, `nmAkun`, `TipeAkun`, `kdUser`) VALUES
(24, 'Dana Awal', 'pemasukan', 'client1'),
(25, 'Jajan', 'pengeluaran', 'client1'),
(26, 'Gaji', 'pemasukan', 'client1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblremind`
--

CREATE TABLE `tblremind` (
  `kdRemind` int(11) NOT NULL,
  `nmRemind` text NOT NULL,
  `harga` bigint(20) NOT NULL,
  `RentangWaktu` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbluser`
--

CREATE TABLE `tbluser` (
  `kdUser` varchar(10) NOT NULL,
  `nmUser` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbluser`
--

INSERT INTO `tbluser` (`kdUser`, `nmUser`, `password`) VALUES
('client1', 'mr client', '$2a$10$s7vD.u6WO.niXhgTFvLz8uaEXoOFnaNUUq8/qrB6CBDFdO96iyQ/y'),
('jan', 'jan sebastian', '$2a$10$i7ahqdZvRj6xyWmS5sbtEuJvCIAXrkghEQYUyYhR0U7J0GJpJuXNO');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurnal_harian`
--
ALTER TABLE `jurnal_harian`
  ADD PRIMARY KEY (`kdJurnal`);

--
-- Indeks untuk tabel `tblakun`
--
ALTER TABLE `tblakun`
  ADD PRIMARY KEY (`kdAkun`);

--
-- Indeks untuk tabel `tblremind`
--
ALTER TABLE `tblremind`
  ADD PRIMARY KEY (`kdRemind`);

--
-- Indeks untuk tabel `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`kdUser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jurnal_harian`
--
ALTER TABLE `jurnal_harian`
  MODIFY `kdJurnal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `tblakun`
--
ALTER TABLE `tblakun`
  MODIFY `kdAkun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tblremind`
--
ALTER TABLE `tblremind`
  MODIFY `kdRemind` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
