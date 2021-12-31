-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jun 2019 pada 09.00
-- Versi server: 10.1.40-MariaDB
-- Versi PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_bookstore`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` int(12) NOT NULL,
  `name` varchar(80) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `tahunterbit` varchar(80) NOT NULL,
  `penulis` varchar(80) NOT NULL,
  `bahasa` varchar(80) NOT NULL,
  `jeniscover` varchar(80) NOT NULL,
  `category_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `name`, `isbn`, `tahunterbit`, `penulis`, `bahasa`, `jeniscover`, `category_id`) VALUES
(1, 'Detektif Conan 95', '9786020497822\r\n\r\n', '2019', 'Aoyama Gosho', 'Indonesia', 'Soft Cover', 3),
(2, 'Bumi Manusia', '9789799731234', '2015', 'Pramoedya Ananta Toer', 'Indonesia', 'Soft Cover', 2),
(3, 'Data Mining: Algoritma Dan Implementasi Dengan Pemrograman PHP', '9786020498812', '2019', 'Joko Suntoro', 'Indonesia', 'Soft Cover', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(12) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `jenisbuku` varchar(50) DEFAULT NULL,
  `tahunterbit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `jenisbuku`, `tahunterbit`) VALUES
(1, 'Komputer', 'Indonesia & Inggris', '2011-2019'),
(2, 'Sastra', 'Indonesia', '2019'),
(3, 'Komik', 'Indonesia', '2015-2019');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
