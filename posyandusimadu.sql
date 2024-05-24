-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Bulan Mei 2024 pada 04.47
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
-- Database: `posyandusimadu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anak`
--

CREATE TABLE `anak` (
  `id_anak` varchar(20) NOT NULL,
  `nama_anak` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `panjang_badan` int(11) NOT NULL,
  `berat_lahir` int(11) NOT NULL,
  `lingkar_kepala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anak`
--

INSERT INTO `anak` (`id_anak`, `nama_anak`, `tanggal_lahir`, `jenis_kelamin`, `nama_ibu`, `nama_ayah`, `alamat`, `panjang_badan`, `berat_lahir`, `lingkar_kepala`) VALUES
('B0001', 'Adiratna', '2024-04-24', 'L', 'Alvarendra (0892383928)', 'Hendra', 'Bandung', 40, 22, 13),
('B0002', 'Al-farokh', '2024-01-16', 'L', 'Dhira', 'Fahrezi (08313618183)', 'Bandung', 31, 20, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `imunisasi`
--

CREATE TABLE `imunisasi` (
  `id_imunisasi` varchar(11) NOT NULL,
  `jenis_imunisasi` varchar(20) NOT NULL,
  `usia_wajib` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `imunisasi`
--

INSERT INTO `imunisasi` (`id_imunisasi`, `jenis_imunisasi`, `usia_wajib`) VALUES
('1', 'HB-0', ''),
('2', 'BCG - POLIO 1', '6'),
('3', 'DPT/HB1 - POLIO 2', ''),
('4', 'DPT/HB2 - POLIO 3', ''),
('5', 'DPT/HB3 - POLIO 4', ''),
('6', 'CAMPAK', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kematian`
--

CREATE TABLE `kematian` (
  `id_kematian` int(11) NOT NULL,
  `id_anak` varchar(11) NOT NULL,
  `tanggal_kematian` date NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kematian`
--

INSERT INTO `kematian` (`id_kematian`, `id_anak`, `tanggal_kematian`, `keterangan`) VALUES
(1, 'B0001', '2024-05-23', 'DBD'),
(2, '1', '2016-10-25', 'Sakit'),
(3, '1', '2016-10-19', 'Kecelakaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penimbangan`
--

CREATE TABLE `penimbangan` (
  `id_penimbangan` varchar(20) NOT NULL,
  `id_anak` varchar(11) NOT NULL,
  `tanggal_timbang` date NOT NULL,
  `usia` varchar(20) NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `lingkar_perut` int(11) NOT NULL,
  `id_imunisasi` int(11) NOT NULL,
  `id_vitamin` int(11) NOT NULL,
  `saran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penimbangan`
--

INSERT INTO `penimbangan` (`id_penimbangan`, `id_anak`, `tanggal_timbang`, `usia`, `berat_badan`, `lingkar_perut`, `id_imunisasi`, `id_vitamin`, `saran`) VALUES
('P0001', 'B0001', '2024-05-23', '1', 30, 9, 1, 1, 'Konsumsi Kalsium'),
('P0002', 'B0002', '2024-05-23', '1', 20, 22, 1, 2, 'Vitamin terus biar sehat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vitamin`
--

CREATE TABLE `vitamin` (
  `id_vitamin` int(11) NOT NULL,
  `jenis_vitamin` varchar(20) NOT NULL,
  `usia_wajib` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `vitamin`
--

INSERT INTO `vitamin` (`id_vitamin`, `jenis_vitamin`, `usia_wajib`) VALUES
(1, 'Vitamin A Biru', ''),
(2, 'Vitamin A Merah', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id_anak`);

--
-- Indeks untuk tabel `imunisasi`
--
ALTER TABLE `imunisasi`
  ADD PRIMARY KEY (`id_imunisasi`);

--
-- Indeks untuk tabel `kematian`
--
ALTER TABLE `kematian`
  ADD PRIMARY KEY (`id_kematian`);

--
-- Indeks untuk tabel `penimbangan`
--
ALTER TABLE `penimbangan`
  ADD PRIMARY KEY (`id_penimbangan`);

--
-- Indeks untuk tabel `vitamin`
--
ALTER TABLE `vitamin`
  ADD PRIMARY KEY (`id_vitamin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
