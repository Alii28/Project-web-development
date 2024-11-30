-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Des 2023 pada 03.19
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesonajawa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ali`
--

CREATE TABLE `ali` (
  `hotel0115` char(4) NOT NULL,
  `hotelNAMA` char(160) NOT NULL,
  `hotelALAMAT` varchar(250) NOT NULL,
  `kategori0115` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ali`
--

INSERT INTO `ali` (`hotel0115`, `hotelNAMA`, `hotelALAMAT`, `kategori0115`) VALUES
('hh', 'WISMA 88', 'WISMA 88', 'WISM'),
('PP', 'reddoorz', 'grogol', 'siup'),
('UY', 'OYO', 'garden', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `berita0115` char(12) NOT NULL,
  `beritaNAMA` char(160) NOT NULL,
  `beritaALAMAT` char(160) NOT NULL,
  `kategori0115` char(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`berita0115`, `beritaNAMA`, `beritaALAMAT`, `kategori0115`) VALUES
('12', 'mfns', 'cjss', 'sss'),
('14', 'HGHU', 'cjss', 'sss'),
('15', 'HGHU', 'cjss', 'sss');

-- --------------------------------------------------------

--
-- Struktur dari tabel `destinasi`
--

CREATE TABLE `destinasi` (
  `destinasiKODE` char(4) NOT NULL,
  `destinasiNAMA` varchar(120) NOT NULL,
  `kategoriKODE` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `destinasi`
--

INSERT INTO `destinasi` (`destinasiKODE`, `destinasiNAMA`, `kategoriKODE`) VALUES
('df', 'DAPA POKE', 'tt'),
('sa', 'MANTA POKE', '43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fotodestinasi`
--

CREATE TABLE `fotodestinasi` (
  `fotodestinasiKODE` char(4) NOT NULL,
  `fotodestinasiNAMA` char(120) NOT NULL,
  `fotodestinasiFILE` char(120) NOT NULL,
  `destinasiKODE` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `fotodestinasi`
--

INSERT INTO `fotodestinasi` (`fotodestinasiKODE`, `fotodestinasiNAMA`, `fotodestinasiFILE`, `destinasiKODE`) VALUES
('li', 'pocong', 'bg-05.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoriwisata`
--

CREATE TABLE `kategoriwisata` (
  `kategoriKODE` char(4) NOT NULL,
  `kategoriNAMA` char(25) NOT NULL,
  `kategoriKET` text NOT NULL,
  `kategoriREFERENCE` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategoriwisata`
--

INSERT INTO `kategoriwisata` (`kategoriKODE`, `kategoriNAMA`, `kategoriKET`, `kategoriREFERENCE`) VALUES
('43', 'JAWA', 'JAWA', 'JAWA'),
('tt', 'SUNDA', 'SUNDA', 'SUNDA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `langganan`
--

CREATE TABLE `langganan` (
  `pelangganPASS` char(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `langganan`
--

INSERT INTO `langganan` (`pelangganPASS`) VALUES
('Premium'),
('Vip');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penghubung`
--

CREATE TABLE `penghubung` (
  `destinasiKODE` char(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penghubung`
--

INSERT INTO `penghubung` (`destinasiKODE`) VALUES
('option a'),
('option b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pusatoleholeh`
--

CREATE TABLE `pusatoleholeh` (
  `pusatKODE` char(4) NOT NULL,
  `pusatNAMA` char(150) NOT NULL,
  `pusatALAMAT` char(120) NOT NULL,
  `merkPRODUK` char(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pusatoleholeh`
--

INSERT INTO `pusatoleholeh` (`pusatKODE`, `pusatNAMA`, `pusatALAMAT`, `merkPRODUK`) VALUES
('78', 'HERO', 'jakarta', 'minuman'),
('99', 'SUPER INDO', 'sukabumi', 'fsdfsdf'),
('tp', 'GIANT', 'banten', 'makanan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `restoran`
--

CREATE TABLE `restoran` (
  `restoranKODE` char(4) NOT NULL,
  `restoranNAMA` char(120) NOT NULL,
  `restoranFOTO` char(120) NOT NULL,
  `restoranALAMAT` char(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `restoran`
--

INSERT INTO `restoran` (`restoranKODE`, `restoranNAMA`, `restoranFOTO`, `restoranALAMAT`) VALUES
('32', 'padang', 'nasibakar.jpg', 'puncak'),
('45', 'JEPANG', 'seafoodjpg.jpg', 'cengkareng'),
('AS01', 'Seafood', 'seafoodjpg.jpg', 'bojong'),
('SA02', 'HotPot', 'hotpot.jpg', 'Central Park');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sayyidinaa`
--

CREATE TABLE `sayyidinaa` (
  `sayyidinaaID` char(20) NOT NULL,
  `sayyidinaaKOTA` char(130) NOT NULL,
  `destinasiKODE` char(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sayyidinaa`
--

INSERT INTO `sayyidinaa` (`sayyidinaaID`, `sayyidinaaKOTA`, `destinasiKODE`) VALUES
('Ali', 'sdsa', 'option b'),
('dapa', 'ss', 'option b'),
('zaki', 'imani', 'option a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel`
--

CREATE TABLE `travel` (
  `kodeTRAVEL` char(4) NOT NULL,
  `namaTRAVEL` char(160) NOT NULL,
  `fotoTRAVEL` char(120) NOT NULL,
  `destinasiTRAVEL` char(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `travel`
--

INSERT INTO `travel` (`kodeTRAVEL`, `namaTRAVEL`, `fotoTRAVEL`, `destinasiTRAVEL`) VALUES
('41', 'Jalan', 'pemandangan.jpg', 'cengkareng'),
('ZX12', 'JAPAN TOUR', 'japan.jpg', 'Japan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `useradmin`
--

CREATE TABLE `useradmin` (
  `userKODE` char(4) NOT NULL,
  `userNAMA` char(30) NOT NULL,
  `userEMAIL` char(60) NOT NULL,
  `userPASS` char(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `useradmin`
--

INSERT INTO `useradmin` (`userKODE`, `userNAMA`, `userEMAIL`, `userPASS`) VALUES
('0115', 'sayyidinaa ali', 'sayyidinaaali57@gmail.com', '25d55ad283aa400af464c76d713c07ad'),
('901', 'alipoke', 'alikope@gmail.kont', '201034ca12eb00e4b5fc9b891866b1f2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ytmusic`
--

CREATE TABLE `ytmusic` (
  `pelangganID` char(4) NOT NULL,
  `pelangganNAMA` char(30) NOT NULL,
  `pelangganGMAIL` char(60) NOT NULL,
  `pelangganPASS` char(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ytmusic`
--

INSERT INTO `ytmusic` (`pelangganID`, `pelangganNAMA`, `pelangganGMAIL`, `pelangganPASS`) VALUES
('53', 'ali', 'sayyidinaa', 'Vip'),
('76', 'irvan gondrong', 'nandacaur', 'Vip');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ali`
--
ALTER TABLE `ali`
  ADD PRIMARY KEY (`hotel0115`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`berita0115`);

--
-- Indeks untuk tabel `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`destinasiKODE`);

--
-- Indeks untuk tabel `fotodestinasi`
--
ALTER TABLE `fotodestinasi`
  ADD PRIMARY KEY (`fotodestinasiKODE`);

--
-- Indeks untuk tabel `kategoriwisata`
--
ALTER TABLE `kategoriwisata`
  ADD PRIMARY KEY (`kategoriKODE`);

--
-- Indeks untuk tabel `langganan`
--
ALTER TABLE `langganan`
  ADD PRIMARY KEY (`pelangganPASS`);

--
-- Indeks untuk tabel `penghubung`
--
ALTER TABLE `penghubung`
  ADD PRIMARY KEY (`destinasiKODE`);

--
-- Indeks untuk tabel `restoran`
--
ALTER TABLE `restoran`
  ADD PRIMARY KEY (`restoranKODE`);

--
-- Indeks untuk tabel `sayyidinaa`
--
ALTER TABLE `sayyidinaa`
  ADD PRIMARY KEY (`sayyidinaaID`);

--
-- Indeks untuk tabel `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`kodeTRAVEL`);

--
-- Indeks untuk tabel `useradmin`
--
ALTER TABLE `useradmin`
  ADD PRIMARY KEY (`userKODE`);

--
-- Indeks untuk tabel `ytmusic`
--
ALTER TABLE `ytmusic`
  ADD PRIMARY KEY (`pelangganID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
