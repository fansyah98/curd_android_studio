-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2022 pada 20.15
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `14519068_almasfairuz`
--
CREATE DATABASE IF NOT EXISTS `14519068_almasfairuz` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `14519068_almasfairuz`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_burung`
--

CREATE TABLE `tb_burung` (
  `id` int(11) NOT NULL,
  `name` varchar(89) NOT NULL,
  `kategori` varchar(89) NOT NULL,
  `harga` varchar(89) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_burung`
--

INSERT INTO `tb_burung` (`id`, `name`, `kategori`, `harga`) VALUES
(1, 'Murai Batu', 'Pemakan Serangga', '3000000'),
(4, 'cucak hijau', 'Pemakan buah buahan', '1000000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_burung`
--
ALTER TABLE `tb_burung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_burung`
--
ALTER TABLE `tb_burung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `14519077_fansyahdwik`
--
CREATE DATABASE IF NOT EXISTS `14519077_fansyahdwik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `14519077_fansyahdwik`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `kategori` enum('Elektornik','Pakaian','Prabotan','Celana') NOT NULL,
  `harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode`, `name`, `kategori`, `harga`) VALUES
(18, 'A004', 'KEMEJA KOTAK', 'Pakaian', '90000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Database: `admintbs`
--
CREATE DATABASE IF NOT EXISTS `admintbs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `admintbs`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telpon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`, `email`, `alamat`, `telpon`) VALUES
(1, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'admin', 'admin@sipentingngawit.com', 'Pekanbaru', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datatraining`
--

CREATE TABLE `datatraining` (
  `ID` int(255) NOT NULL,
  `namafile` varchar(255) CHARACTER SET utf8 NOT NULL,
  `r` double NOT NULL,
  `g` double NOT NULL,
  `b` double NOT NULL,
  `Label` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datatraining`
--

INSERT INTO `datatraining` (`ID`, `namafile`, `r`, `g`, `b`, `Label`) VALUES
(152, 'layakangkut/IMG_20181009_150412.jpg', 165.34943181818, 105.29261363636, 107.73863636364, 'Layak'),
(153, 'layakangkut/IMG_20181009_150959.jpg', 159.03693181818, 106.09090909091, 90.659090909091, 'Layak'),
(154, 'layakangkut/IMG_20181009_151600.jpg', 115.59943181818, 84.184659090909, 84.892045454545, 'Layak'),
(155, 'layakangkut/IMG_20181009_152707.jpg', 114.74431818182, 68.068181818182, 73.485795454545, 'Layak'),
(156, 'layakangkut/IMG_20181009_152746.jpg', 124.39488636364, 73.011363636364, 73.946022727273, 'Layak'),
(157, 'layakangkut/IMG_20181009_153316.jpg', 130.53409090909, 92.775568181818, 94.360795454545, 'Layak'),
(158, 'layakangkut/IMG_20181009_153822.jpg', 155.16193181818, 87.076704545455, 89.582386363636, 'Layak'),
(159, 'layakangkut/IMG_20181009_153949.jpg', 122.63352272727, 90.480113636364, 98.946022727273, 'Layak'),
(160, 'layakangkut/IMG_20181009_155230.jpg', 141.78977272727, 84.821022727273, 85.048295454545, 'Layak'),
(161, 'layakangkut/IMG_20181009_155351.jpg', 119.31534090909, 81.434659090909, 85.110795454545, 'Layak'),
(162, 'layakangkut/IMG_20181009_155434.jpg', 152.19602272727, 107.23011363636, 75.366477272727, 'Layak'),
(163, 'layakangkut/IMG_20181009_155444.jpg', 98.971590909091, 64.951704545455, 66.517045454545, 'Layak'),
(164, 'layakangkut/IMG_20181009_155503.jpg', 121.59090909091, 78.215909090909, 83.599431818182, 'Layak'),
(165, 'layakangkut/IMG_20181009_160134.jpg', 163.10795454545, 99.144886363636, 87.190340909091, 'Layak'),
(166, 'layakangkut/IMG_20181009_160213.jpg', 184.50568181818, 96.292613636364, 79.849431818182, 'Layak'),
(167, 'layakangkut/IMG_20181009_160756.jpg', 135.22443181818, 87.931818181818, 87.829545454545, 'Layak'),
(168, 'layakangkut/IMG_20181009_161132.jpg', 133.40056818182, 88.477272727273, 56.295454545455, 'Layak'),
(169, 'layakangkut/IMG_20181009_161652.jpg', 171.64204545455, 92.596590909091, 88.678977272727, 'Layak'),
(170, 'layakangkut/IMG_20181009_161722.jpg', 113.60227272727, 79.599431818182, 78.994318181818, 'Layak'),
(171, 'layakangkut/IMG_20181009_161747.jpg', 136.15909090909, 79.417613636364, 55.798295454545, 'Layak'),
(172, 'layakangkut/IMG_20181009_162658.jpg', 151.10795454545, 98.434659090909, 100.92897727273, 'Layak'),
(173, 'layakangkut/IMG_20181009_164236.jpg', 132.1875, 91.397727272727, 92.536931818182, 'Layak'),
(174, 'layakangkut/IMG_20181009_164310.jpg', 169.6875, 104.37215909091, 105.25284090909, 'Layak'),
(175, 'layakangkut/IMG_20181009_170251.jpg', 150.49715909091, 83.78125, 87.019886363636, 'Layak'),
(176, 'layakangkut/IMG_20181009_170259.jpg', 148.91193181818, 81.321022727273, 76.150568181818, 'Layak'),
(177, 'layakangkut/IMG_20181009_170303.jpg', 164.35511363636, 91.75, 89.855113636364, 'Layak'),
(178, 'layakangkut/IMG_20181009_170308.jpg', 130.18465909091, 83.426136363636, 85.198863636364, 'Layak'),
(179, 'layakangkut/IMG_20181009_170315.jpg', 138.98295454545, 92.673295454545, 94.315340909091, 'Layak'),
(180, 'layakangkut/IMG_20181009_170324.jpg', 112.65056818182, 68.119318181818, 72.153409090909, 'Layak'),
(181, 'layakangkut/IMG_20181009_170328.jpg', 176.00284090909, 117.54829545455, 92.360795454545, 'Layak'),
(182, 'layakangkut/IMG_20181009_170333.jpg', 128.49715909091, 78.673295454545, 79.681818181818, 'Layak'),
(183, 'layakangkut/IMG_20181009_170338.jpg', 120.40625, 73.059659090909, 71.198863636364, 'Layak'),
(184, 'layakangkut/IMG_20181009_170805.jpg', 133.4375, 90.397727272727, 86.482954545455, 'Layak'),
(185, 'layakangkut/IMG_20181009_170853.jpg', 109.93465909091, 77.323863636364, 76.571022727273, 'Layak'),
(186, 'layakangkut/IMG_20181009_171120.jpg', 128.62215909091, 85.088068181818, 86.463068181818, 'Layak'),
(187, 'layakangkut/IMG_20181009_171123.jpg', 140.76136363636, 84.088068181818, 78.644886363636, 'Layak'),
(188, 'layakangkut/IMG_20181009_171129.jpg', 116.56818181818, 90.758522727273, 89.122159090909, 'Layak'),
(189, 'layakangkut/IMG_20181009_171134.jpg', 124.57670454545, 92.349431818182, 87.329545454545, 'Layak'),
(190, 'layakangkut/IMG_20181009_180134.jpg', 163.71590909091, 98.940340909091, 86.428977272727, 'Layak'),
(191, 'layakangkut/IMG_20181009_180213.jpg', 184.37215909091, 96.21875, 79.880681818182, 'Layak'),
(192, 'layakangkut/IMG_20181009_180259.jpg', 149.01136363636, 78.957386363636, 74.389204545455, 'Layak'),
(193, 'layakangkut/IMG_20181009_180303.jpg', 165.78409090909, 92.28125, 90.068181818182, 'Layak'),
(194, 'layakangkut/IMG_20181009_180315.jpg', 136.67329545455, 90.707386363636, 92.681818181818, 'Layak'),
(195, 'layakangkut/IMG_20181009_180333.jpg', 124.27556818182, 74.914772727273, 76.761363636364, 'Layak'),
(196, 'layakangkut/IMG_20181009_180338.jpg', 122.71875, 74.661931818182, 73.068181818182, 'Layak'),
(197, 'layakangkut/IMG_20181009_180412.jpg', 166.89488636364, 106.42329545455, 108.8125, 'Layak'),
(198, 'layakangkut/IMG_20181009_180756.jpg', 134.76704545455, 86.880681818182, 86.84375, 'Layak'),
(199, 'layakangkut/IMG_20181009_180805.jpg', 133.16761363636, 90.434659090909, 86.889204545455, 'Layak'),
(200, 'layakangkut/IMG_20181009_180944.jpg', 132.85227272727, 87.772727272727, 87.386363636364, 'Layak'),
(201, 'layakangkut/IMG_20181009_181120.jpg', 129.10511363636, 85.755681818182, 86.980113636364, 'Layak'),
(202, 'layakangkut/IMG_20181009_181123.jpg', 139.21875, 83.994318181818, 78.264204545455, 'Layak'),
(203, 'layakangkut/IMG_20181009_181132.jpg', 132.88636363636, 88.769886363636, 56.738636363636, 'Layak'),
(204, 'layakangkut/IMG_20181009_181652.jpg', 172.27840909091, 93.465909090909, 89.321022727273, 'Layak'),
(205, 'layakangkut/IMG_20181009_181722.jpg', 112.53977272727, 78.721590909091, 78.585227272727, 'Layak'),
(206, 'layakangkut/IMG_20181009_182707.jpg', 114.36931818182, 67.372159090909, 72.653409090909, 'Layak'),
(207, 'layakangkut/IMG_20181009_183316.jpg', 132.64772727273, 95.15625, 96.139204545455, 'Layak'),
(208, 'layakangkut/IMG_20181009_183822.jpg', 154.05113636364, 86.534090909091, 88.823863636364, 'Layak'),
(209, 'layakangkut/IMG_20181009_183857.jpg', 130.21306818182, 98.982954545455, 105.58238636364, 'Layak'),
(210, 'layakangkut/IMG_20181009_184004.jpg', 136.21306818182, 84.698863636364, 87.448863636364, 'Layak'),
(211, 'layakangkut/IMG_20181009_184236.jpg', 134.01988636364, 92.400568181818, 93.616477272727, 'Layak'),
(212, 'layakangkut/IMG_20181009_185434.jpg', 152.37215909091, 107.71875, 75.622159090909, 'Layak'),
(213, 'layakangkut/IMG_20181009_190144.jpg', 160.54829545455, 102.49431818182, 75.951704545455, 'Layak'),
(214, 'layakangkut/IMG_20181009_190251.jpg', 149.50852272727, 83.022727272727, 86.059659090909, 'Layak'),
(215, 'layakangkut/IMG_20181009_190308.jpg', 130.56534090909, 85.590909090909, 86.965909090909, 'Layak'),
(216, 'layakangkut/IMG_20181009_190324.jpg', 112.46590909091, 69.653409090909, 73.46875, 'Layak'),
(217, 'layakangkut/IMG_20181009_190328.jpg', 177.14772727273, 118.88068181818, 93.295454545455, 'Layak'),
(218, 'layakangkut/IMG_20181009_190853.jpg', 109.20738636364, 76.772727272727, 76.116477272727, 'Layak'),
(219, 'layakangkut/IMG_20181009_190907.jpg', 165.16761363636, 111.60227272727, 98.261363636364, 'Layak'),
(220, 'layakangkut/IMG_20181009_191129.jpg', 113.22443181818, 87.340909090909, 85.982954545455, 'Layak'),
(221, 'layakangkut/IMG_20181009_191600.jpg', 113.03125, 81.866477272727, 83.230113636364, 'Layak'),
(222, 'layakangkut/IMG_20181009_191747.jpg', 135.61079545455, 79.380681818182, 55.761363636364, 'Layak'),
(223, 'layakangkut/IMG_20181009_192658.jpg', 153.09943181818, 100.95170454545, 103.44886363636, 'Layak'),
(224, 'layakangkut/IMG_20181009_195351.jpg', 119.55965909091, 81.741477272727, 85.428977272727, 'Layak'),
(225, 'layakangkut/IMG_20181009_195444.jpg', 98.286931818182, 64.278409090909, 66.224431818182, 'Layak'),
(226, 'tidaklayakangkut/IMG_20181009_163120.jpg', 129.30397727273, 107.37784090909, 109.33806818182, 'Tidak Layak'),
(227, 'tidaklayakangkut/IMG_20181009_164248.jpg', 92.136363636364, 79.40625, 76.954545454545, 'Tidak Layak'),
(228, 'tidaklayakangkut/IMG_20181009_164318.jpg', 93.664772727273, 76.75, 73.053977272727, 'Tidak Layak'),
(229, 'tidaklayakangkut/IMG_20181009_165208.jpg', 85.193181818182, 76.596590909091, 76.110795454545, 'Tidak Layak'),
(230, 'tidaklayakangkut/IMG_20181009_165228.jpg', 82.994318181818, 74.923295454545, 77.102272727273, 'Tidak Layak'),
(231, 'tidaklayakangkut/IMG_20181009_165242.jpg', 63.855113636364, 60.409090909091, 63.71875, 'Tidak Layak'),
(232, 'tidaklayakangkut/IMG_20181009_165334.jpg', 85.542613636364, 72.184659090909, 66.53125, 'Tidak Layak'),
(233, 'tidaklayakangkut/IMG_20181009_165419.jpg', 90.377840909091, 78.840909090909, 76.923295454545, 'Tidak Layak'),
(234, 'tidaklayakangkut/IMG_20181009_165446.jpg', 84.678977272727, 77.894886363636, 80.784090909091, 'Tidak Layak'),
(235, 'tidaklayakangkut/IMG_20181009_165522.jpg', 87.517045454545, 83.150568181818, 84.758522727273, 'Tidak Layak'),
(236, 'tidaklayakangkut/IMG_20181009_165920.jpg', 99.0625, 87.414772727273, 86.897727272727, 'Tidak Layak'),
(237, 'tidaklayakangkut/IMG_20181009_165925.jpg', 109.75852272727, 96.926136363636, 95.190340909091, 'Tidak Layak'),
(238, 'tidaklayakangkut/IMG_20181009_165930.jpg', 106.57670454545, 92.21875, 91.982954545455, 'Tidak Layak'),
(239, 'tidaklayakangkut/IMG_20181009_165934.jpg', 97.798295454545, 86.301136363636, 83.213068181818, 'Tidak Layak'),
(240, 'tidaklayakangkut/IMG_20181009_165950.jpg', 108.21590909091, 96.045454545455, 89.409090909091, 'Tidak Layak'),
(241, 'tidaklayakangkut/IMG_20181009_165956.jpg', 103.07670454545, 94.696022727273, 89.40625, 'Tidak Layak'),
(242, 'tidaklayakangkut/IMG_20181009_173100.jpg', 91.21875, 79.269886363636, 68.488636363636, 'Tidak Layak'),
(243, 'tidaklayakangkut/IMG_20181009_173112.jpg', 101.875, 90.815340909091, 85, 'Tidak Layak'),
(244, 'tidaklayakangkut/IMG_20181009_173119.jpg', 103.29261363636, 93.321022727273, 90.0625, 'Tidak Layak'),
(245, 'tidaklayakangkut/IMG_20181009_173124.jpg', 97.823863636364, 86.505681818182, 83.892045454545, 'Tidak Layak'),
(246, 'tidaklayakangkut/IMG_20181009_173140.jpg', 95.221590909091, 85.21875, 81.897727272727, 'Tidak Layak'),
(247, 'tidaklayakangkut/IMG_20181009_173452.jpg', 86.571022727273, 80.147727272727, 79.426136363636, 'Tidak Layak'),
(248, 'tidaklayakangkut/IMG_20181009_173455.jpg', 78.599431818182, 72.207386363636, 72.025568181818, 'Tidak Layak'),
(249, 'tidaklayakangkut/IMG_20181009_173503.jpg', 94.951704545455, 84.803977272727, 83.997159090909, 'Tidak Layak'),
(250, 'tidaklayakangkut/IMG_20181009_173507.jpg', 88.178977272727, 78.525568181818, 77.474431818182, 'Tidak Layak'),
(251, 'tidaklayakangkut/IMG_20181009_173511.jpg', 96.414772727273, 87.014204545455, 84.380681818182, 'Tidak Layak'),
(252, 'tidaklayakangkut/IMG_20181009_173521.jpg', 96.105113636364, 82.792613636364, 77.948863636364, 'Tidak Layak'),
(253, 'tidaklayakangkut/IMG_20181009_174248.jpg', 92.136363636364, 79.40625, 76.954545454545, 'Tidak Layak'),
(254, 'tidaklayakangkut/IMG_20181009_174252.jpg', 89.053977272727, 75.150568181818, 69.798295454545, 'Tidak Layak'),
(255, 'tidaklayakangkut/IMG_20181009_174255.jpg', 97.423295454545, 80.443181818182, 76.744318181818, 'Tidak Layak'),
(256, 'tidaklayakangkut/IMG_20181009_174257.jpg', 102.48011363636, 84.585227272727, 80.971590909091, 'Tidak Layak'),
(257, 'tidaklayakangkut/IMG_20181009_174315.jpg', 82.960227272727, 69.161931818182, 67.107954545455, 'Tidak Layak'),
(258, 'tidaklayakangkut/IMG_20181009_174318.jpg', 91.34375, 74.539772727273, 71.139204545455, 'Tidak Layak'),
(259, 'tidaklayakangkut/IMG_20181009_175930.jpg', 106.57670454545, 92.21875, 91.982954545455, 'Tidak Layak'),
(260, 'tidaklayakangkut/IMG_20181009_183051.jpg', 102.52272727273, 85.255681818182, 84.392045454545, 'Tidak Layak'),
(261, 'tidaklayakangkut/IMG_20181009_183100.jpg', 93.934659090909, 81.90625, 71.082386363636, 'Tidak Layak'),
(262, 'tidaklayakangkut/IMG_20181009_183119.jpg', 102.49715909091, 92.360795454545, 88.9375, 'Tidak Layak'),
(263, 'tidaklayakangkut/IMG_20181009_183120.jpg', 128.65340909091, 108.15625, 109.63352272727, 'Tidak Layak'),
(264, 'tidaklayakangkut/IMG_20181009_183140.jpg', 95.559659090909, 85.394886363636, 82.71875, 'Tidak Layak'),
(265, 'tidaklayakangkut/IMG_20181009_183452.jpg', 87.125, 80.914772727273, 79.789772727273, 'Tidak Layak'),
(266, 'tidaklayakangkut/IMG_20181009_183455.jpg', 81.985795454545, 75.653409090909, 75.042613636364, 'Tidak Layak'),
(267, 'tidaklayakangkut/IMG_20181009_183503.jpg', 94.678977272727, 84.289772727273, 83.1875, 'Tidak Layak'),
(268, 'tidaklayakangkut/IMG_20181009_183507.jpg', 83.747159090909, 74.201704545455, 72.892045454545, 'Tidak Layak'),
(269, 'tidaklayakangkut/IMG_20181009_183511.jpg', 94.022727272727, 84.545454545455, 82.326704545455, 'Tidak Layak'),
(270, 'tidaklayakangkut/IMG_20181009_183521.jpg', 93.889204545455, 80.661931818182, 75.886363636364, 'Tidak Layak'),
(271, 'tidaklayakangkut/IMG_20181009_184248.jpg', 91.201704545455, 78.579545454545, 76.161931818182, 'Tidak Layak'),
(272, 'tidaklayakangkut/IMG_20181009_184270.jpg', 129.30397727273, 107.37784090909, 109.33806818182, 'Tidak Layak'),
(273, 'tidaklayakangkut/IMG_20181009_184315.jpg', 82.261363636364, 68.363636363636, 66.605113636364, 'Tidak Layak'),
(274, 'tidaklayakangkut/IMG_20181009_185228.jpg', 82.957386363636, 74.892045454545, 77.068181818182, 'Tidak Layak'),
(275, 'tidaklayakangkut/IMG_20181009_185242.jpg', 65.764204545455, 62.357954545455, 65.571022727273, 'Tidak Layak'),
(276, 'tidaklayakangkut/IMG_20181009_185419.jpg', 92.176136363636, 80.596590909091, 78.579545454545, 'Tidak Layak'),
(277, 'tidaklayakangkut/IMG_20181009_185436.jpg', 94.534090909091, 83.826704545455, 77.866477272727, 'Tidak Layak'),
(278, 'tidaklayakangkut/IMG_20181009_185446.jpg', 84.292613636364, 77.616477272727, 80.528409090909, 'Tidak Layak'),
(279, 'tidaklayakangkut/IMG_20181009_185522.jpg', 86.863636363636, 82.28125, 84.073863636364, 'Tidak Layak'),
(280, 'tidaklayakangkut/IMG_20181009_185920.jpg', 97.778409090909, 86.460227272727, 85.84375, 'Tidak Layak'),
(281, 'tidaklayakangkut/IMG_20181009_185930.jpg', 105.51420454545, 91.232954545455, 91.045454545455, 'Tidak Layak'),
(282, 'tidaklayakangkut/IMG_20181009_185934.jpg', 99.786931818182, 87.789772727273, 84.215909090909, 'Tidak Layak'),
(283, 'tidaklayakangkut/IMG_20181009_185956.jpg', 102.25852272727, 93.605113636364, 88.855113636364, 'Tidak Layak'),
(284, 'tidaklayakangkut/IMG_20181009_191343.jpg', 113.73295454545, 100.58238636364, 98.352272727273, 'Tidak Layak'),
(285, 'tidaklayakangkut/IMG_20181009_193112.jpg', 103.78125, 92.670454545455, 86.758522727273, 'Tidak Layak'),
(286, 'tidaklayakangkut/IMG_20181009_193124.jpg', 96.502840909091, 85.59375, 83.269886363636, 'Tidak Layak'),
(287, 'tidaklayakangkut/IMG_20181009_193459.jpg', 91.335227272727, 80.167613636364, 75.502840909091, 'Tidak Layak'),
(288, 'tidaklayakangkut/IMG_20181009_193516.jpg', 100.64204545455, 88.568181818182, 82.386363636364, 'Tidak Layak'),
(289, 'tidaklayakangkut/IMG_20181009_193526.jpg', 94.875, 83.792613636364, 83.332386363636, 'Tidak Layak'),
(290, 'tidaklayakangkut/IMG_20181009_194252.jpg', 90.440340909091, 76.03125, 70.150568181818, 'Tidak Layak'),
(291, 'tidaklayakangkut/IMG_20181009_194257.jpg', 105.33806818182, 87.196022727273, 83.684659090909, 'Tidak Layak'),
(292, 'tidaklayakangkut/IMG_20181009_194302.jpg', 105.01704545455, 84.934659090909, 83.957386363636, 'Tidak Layak'),
(293, 'tidaklayakangkut/IMG_20181009_194307.jpg', 90.448863636364, 65.875, 61.698863636364, 'Tidak Layak'),
(294, 'tidaklayakangkut/IMG_20181009_194318.jpg', 93.664772727273, 76.75, 73.053977272727, 'Tidak Layak'),
(295, 'tidaklayakangkut/IMG_20181009_195208.jpg', 87.264204545455, 78.892045454545, 78.142045454545, 'Tidak Layak'),
(296, 'tidaklayakangkut/IMG_20181009_195334.jpg', 86.525568181818, 72.957386363636, 67.09375, 'Tidak Layak'),
(297, 'tidaklayakangkut/IMG_20181009_195453.jpg', 93.940340909091, 82.150568181818, 81.122159090909, 'Tidak Layak'),
(298, 'tidaklayakangkut/IMG_20181009_195920.jpg', 97.778409090909, 86.460227272727, 85.84375, 'Tidak Layak'),
(299, 'tidaklayakangkut/IMG_20181009_195925.jpg', 108.36363636364, 95.622159090909, 93.710227272727, 'Tidak Layak'),
(300, 'tidaklayakangkut/IMG_20181009_195950.jpg', 112.32102272727, 100.07954545455, 93.139204545455, 'Tidak Layak'),
(301, 'layakangkut/IMG_1749(1).jpg', 171.86931818182, 81.403409090909, 41.210227272727, 'Layak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datatraining2`
--

CREATE TABLE `datatraining2` (
  `ID` int(255) NOT NULL,
  `namafile` varchar(255) CHARACTER SET utf8 NOT NULL,
  `r` double NOT NULL,
  `g` double NOT NULL,
  `b` double NOT NULL,
  `Label` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datatraining`
--
ALTER TABLE `datatraining`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `datatraining2`
--
ALTER TABLE `datatraining2`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `datatraining`
--
ALTER TABLE `datatraining`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT untuk tabel `datatraining2`
--
ALTER TABLE `datatraining2`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- Database: `arsipdigital`
--
CREATE DATABASE IF NOT EXISTS `arsipdigital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `arsipdigital`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ad_arsip`
--

CREATE TABLE `ad_arsip` (
  `id_proses` varchar(11) NOT NULL,
  `nik` varchar(25) NOT NULL,
  `nik_termohon` varchar(20) NOT NULL,
  `id_kategori` varchar(5) NOT NULL,
  `id_sub_kategori` varchar(5) NOT NULL,
  `tgl_proses` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_arsip` varchar(15) NOT NULL,
  `userid` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ad_arsip`
--

INSERT INTO `ad_arsip` (`id_proses`, `nik`, `nik_termohon`, `id_kategori`, `id_sub_kategori`, `tgl_proses`, `status_arsip`, `userid`) VALUES
('1202201693', 'JULIANDRI SAPUTRA', '32434523452234', '103', '1031', '2016-02-12 02:42:22', 'Sudah Scan', 'admin'),
('1202201695', 'RAHMAD', '5433456342235', '101', '1012', '2016-02-12 02:35:23', 'Belum Scan', 'admin'),
('1202201697', 'JULIANDRI SAPUTRA', '32434523452234', '104', '1043', '2016-02-12 02:33:25', 'Belum Scan', 'admin'),
('2903201742', '1503061205850004', '1503061205850004', '102', '1021', '2017-03-29 17:09:47', 'Belum Scan', 'adminduk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ad_detail_akta`
--

CREATE TABLE `ad_detail_akta` (
  `id_proses` varchar(11) NOT NULL,
  `tmpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nama_lgkp_ibu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ad_detail_akta`
--

INSERT INTO `ad_detail_akta` (`id_proses`, `tmpt_lahir`, `tgl_lahir`, `nama_lgkp_ibu`) VALUES
('1202201697', 'Tembilahan', '1990-09-10', 'Zulaikah'),
('1202201693', 'Tembilahan', '1990-09-10', 'Zulaikah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ad_kategori`
--

CREATE TABLE `ad_kategori` (
  `id_kategori` varchar(5) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ad_kategori`
--

INSERT INTO `ad_kategori` (`id_kategori`, `nama_kategori`, `keterangan`) VALUES
('101', 'KTP-el', 'Pelayanan Kartu Tanda Penduduk'),
('102', 'KARTU KELUARGA', 'Pelayanan Kartu Keluarga'),
('103', 'AKTA KAWIN', 'Pelayanan AKTE Perkawinan'),
('104', 'AKTA LAHIR', 'Untuk Pengurusan pelayanan Akta lahir'),
('105', 'AKTA KEMATIAN', 'Pelayanan AKTA Kematian'),
('106', 'AKTA PENGESAHAN ANAK', 'Pelayanan Pengesahan Status Anak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ad_proses`
--

CREATE TABLE `ad_proses` (
  `id_proses` varchar(11) NOT NULL,
  `nik` varchar(25) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `nik_termohon` varchar(20) NOT NULL,
  `id_kategori` varchar(5) NOT NULL,
  `id_sub_kategori` varchar(5) NOT NULL,
  `tgl_proses` timestamp NOT NULL DEFAULT current_timestamp(),
  `tgl_estimasi` date NOT NULL,
  `folder` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL,
  `userid` varchar(18) NOT NULL,
  `tgl_edit` date NOT NULL,
  `op_edit` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ad_proses`
--

INSERT INTO `ad_proses` (`id_proses`, `nik`, `nama`, `alamat`, `telp`, `nik_termohon`, `id_kategori`, `id_sub_kategori`, `tgl_proses`, `tgl_estimasi`, `folder`, `status`, `userid`, `tgl_edit`, `op_edit`) VALUES
('1202201695', 'RAHMAD', 'RAHMAD', 'Jl. Kartini', '08653432432', '5433456342235', '101', '1012', '2016-02-12 02:35:23', '2016-02-16', '1202201695', 'Lengkap', 'admin', '0000-00-00', ''),
('2903201742', '1503061205850004', 'RUSTAM SUPARJO', 'DUSUN IV KAMPUNG BARU SUNGAI BUTANG', '15030', '1503061205850004', '102', '1021', '2017-03-29 17:09:47', '2017-03-30', '2903201742', 'Belum Lengkap', 'adminduk', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ad_sub_kategori`
--

CREATE TABLE `ad_sub_kategori` (
  `id_sub_kategori` varchar(5) NOT NULL,
  `nama_sub_kategori` varchar(50) NOT NULL,
  `keterangan_sub` text NOT NULL,
  `id_kategori` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ad_sub_kategori`
--

INSERT INTO `ad_sub_kategori` (`id_sub_kategori`, `nama_sub_kategori`, `keterangan_sub`, `id_kategori`) VALUES
('1021', 'KK BARU', 'Pelayanan Kartu Keluarga Baru', '102'),
('1022', 'KK GANTI HILANG', 'Pelayanan Ganti Kartu Keluarga yang hilang', '102'),
('1023', 'TAMBAH KARNA LAHIR', 'Pelayanan Penambahan dalam kartu keluarga karena lahir', '102'),
('1024', 'TAMBAH NUMPANG SEMENTARA', 'Pelayanan Penambahan Menumpang Sementara Pada Kartu Keluarga', '102'),
('1025', 'UBAH KARENA MENINGGAL', 'Perubahan data Kartu Keluarga', '102'),
('1026', 'PISAH KK KARENA MENIKAH', 'Perubahan data Kartu Keluarga Karena Menikah', '102'),
('1027', 'LEGALISIR KARTU KELUARGA', '..', '102'),
('1031', 'KEPENGURUSAN  BARU', 'Akte Kelahiran Baru', '103'),
('1032', 'AKTE HILANG', 'Akte Hilang', '103'),
('1033', 'AKTA PERCERAIAN', 'Pelayanan pengurusan AKTA Perceraian', '103'),
('1041', 'AKTA LAHIR BARU ( 0 s/d 60 Hari)', 'Pelayanan Pembuatan Akta Lahir Baru', '104'),
('1042', 'AKTA LAHIR BARU ( 61 hari s/d  1 Tahun)', '', '104'),
('1043', 'AKTA LAHIR BARU (  diatas 1 Tahun)', '', '104'),
('1051', 'AKTA KEMATIAN', 'Pelayanan Pembuatan AKTA Kematian / Meninggal Dunia', '105'),
('1061', 'AKTA PENGESAHAN ANAK BARU', '', '106'),
('1062', 'AKTA HILANG', '', '106');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ad_syarat`
--

CREATE TABLE `ad_syarat` (
  `id_syarat` int(2) NOT NULL,
  `nama_syarat` varchar(150) NOT NULL,
  `id_sub_kategori` varchar(5) NOT NULL,
  `keterangan_syarat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ad_syarat`
--

INSERT INTO `ad_syarat` (`id_syarat`, `nama_syarat`, `id_sub_kategori`, `keterangan_syarat`) VALUES
(1, 'Surat Pengantar Desa/Kelurahan', '1021', 'Surat Pengantar dari kepala desa atau kelurahan'),
(2, 'Fotocopy AKTE Kelahiran', '1021', 'Fotocopy AKTE Kelahiran'),
(3, 'Formulir (Berkas F1.01)', '1021', 'Formulir (Berkas F1.01)'),
(4, 'Permohonan Pembuatan KK (Berkas F1.06)', '1021', 'Formulir F1.06'),
(5, 'Surat Keterangan Hilang dari Kepala Desa / Lurah', '1022', 'Surat Keterangan Hilang dari Kepala Desa / Lurah'),
(6, 'Kartu Keluarga Lama', '1023', 'Kartu Keluarga Lama'),
(7, 'Kutipan AKTE Kelahiran', '1023', 'Kutipan AKTE Kelahiran'),
(9, 'Paspor dan Izin Tinggal Tetap bagi OA', '1023', 'Paspor dan Izin Tinggal Tetap bagi OA'),
(10, 'Kartu Keluarga Lama Atau KK yang ditumpangi', '1024', 'Kartu Keluarga Lama Atau KK yang ditumpangi'),
(11, 'Izin Tinggal Tetap', '1024', 'Izin Tinggal Tetap'),
(12, 'Surat Keterangan Catatan Kepolisian', '1024', 'Surat Keterangan Catatan Kepolisian'),
(13, 'Kartu Keluarga yang lama (ASLI)', '1025', 'Kartu Keluarga yang lama (ASLI)'),
(14, 'Surat Keterangan Kematian', '1025', 'Surat Keterangan Kematian'),
(15, 'SKP / SKPD Yang pindah dalam wilayah NKRI', '1025', 'SKP / SKPD Yang pindah dalam wilayah NKRI'),
(16, 'Surat Keterangan Kehilangan dari Kepolisian', '1026', 'Surat Keterangan Kehilangan dari Kepolisian'),
(17, 'FotoCopy Kartu Keluarga', '1026', 'FotoCopy Kartu Keluarga'),
(18, 'Paspor dan Izin Tinggal tetap bagi OA', '1026', 'Paspor dan Izin Tinggal tetap bagi OA'),
(19, 'Kartu Keluarga Asli yang Disahkan / Legalisir', '1027', 'Kartu Keluarga Asli yang Disahkan / Legalisir'),
(20, 'Max. 7 Lembar Kartu Keluarga yang di Legalisir', '1027', 'Max. 7 Lembar Kartu Keluarga yang di Legalisir'),
(21, 'Surat Pengantar', '1011', 'Surat Pengantar'),
(22, 'Kartu Keluarga Asli', '1011', 'Kartu Keluarga Asli'),
(23, 'Pas Photo (Warna) 3 x 4 2 Lembar', '1011', 'Pas Photo (Warna) 3 x 4 2 Lembar'),
(24, 'Pas Photo (Warna) 2 x 3 2 Lembar', '1011', 'Pas Photo (Warna) 2 x 3 2 Lembar'),
(25, 'Surat Keterangan Kehilangan dari Kepolisian', '1012', 'Surat Keterangan Kehilangan dari Kepolisian'),
(26, 'FotoCopy Kartu Keluarga', '1012', 'FotoCopy Kartu Keluarga'),
(27, 'FotoCopy Kartu Keluarga', '1013', 'FotoCopy Kartu Keluarga'),
(28, 'E-KTP Asli', '1013', 'E-KTP Asli'),
(29, 'Surat Keterangan / Bukti Perubahan Peristiwa Kepen', '1013', 'Surat Keterangan / Bukti Perubahan Peristiwa Kependudukan dan Peristiwa Penting'),
(30, 'SKDLN Bagi WNI yang datang dan LN Karena Pindah', '1014', 'SKDLN Bagi WNI yang datang dan LN Karena Pindah'),
(31, 'Formulir Permohonan Akta Kelahiran .', '1041', 'Mengisi Formulir Permohonan Akta Kelahiran'),
(32, 'Surat Kelahiran Asli dari desa/kelurahan. /dokter/bidan/Rumah Sakit penolong kelahiran.', '1041', 'Surat Kelahiran Asli dari desa/kelurahan. /dokter/bidan/Rumah Sakit penolong kelahiran.'),
(33, 'Foto copy Akta Nikah /Akta Perkawinan Orang tua yang diligaliser pejabat berwenang', '1041', 'Foto copy Akta Nikah /Akta Perkawinan Orang tua yang diligaliser pejabat berwenang'),
(34, 'Foto copy KTP orang tua', '1041', 'Foto copy KTP orang tua'),
(35, 'Foto copy Kartu Keluarga', '1041', 'Foto copy Kartu Keluarga'),
(36, 'Menghadirkan 2 orang saksi dan foto copy KTP saksi', '1041', 'Menghadirkan 2 orang saksi dan foto copy KTP saksi'),
(37, 'Surat Kuasa bermaterai Rp. 6.000,- bagi yang dikuasakan', '1041', 'Surat Kuasa ber materai Rp. 6.000,- bagi yang dikuasakan'),
(38, 'Surat keterangan dari kepolisian bagi anak yang tidak diketahui asal usulnya siapa orang tuanya *', '1041', 'Surat keterangan dari kepolisian bagi anak yang tidak diketahui asal usulnya siapa orang tuanya *'),
(39, 'Formulir Permohonan Akta Kelahiran', '1042', 'Mengisi Formulir Permohonan Akta Kelahiran'),
(40, 'Surat Kelahiran Asli dari desa/kelurahan dan dokter/bidan/penolong kelahiran', '1042', 'Surat Kelahiran Asli dari desa/kelurahan dan dokter/bidan/penolong kelahiran'),
(41, 'Foto copy Akta Nikah/Akta Perkawinan orang tua dilegalisir Pejabat berwenang', '1042', 'Foto copy Akta Nikah/Akta Perkawinan orang tua dilegalisir Pejabat berwenang'),
(42, 'Foto copy KTP orang tua', '1042', 'Foto copy KTP orang tua'),
(43, 'Foto copy Kartu Keluarga', '1042', 'Foto copy Kartu Keluarga'),
(44, 'Menghadirkan 2 orang saksi dan foto copy KTP saksi.', '1042', 'Menghadirkan 2 orang saksi dan foto copy KTP saksi.'),
(45, 'Surat Kuasa bermaterai Rp. 6.000,- bagi yang dikuasakan', '1042', 'Surat Kuasa bermaterai Rp. 6.000,- bagi yang dikuasakan'),
(46, 'Surat  Pernyataan ', '1042', 'Surat  Pernyataan '),
(47, 'Denda Keterlambatan Pencatatan Kelahiran sebesar Rp. 25.000', '1042', 'Denda Keterlambatan Pencatatan Kelahiran sebesar Rp. 25.000 '),
(48, 'Formulir Pendaftaran /permohonan Akta Kelahiran', '1043', 'Formulir Pendaftaran /permohonan Akta Kelahiran'),
(49, 'Surat Kelahiran  Asli dari Desa/ Kelurahan / dokter / bidan desa', '1043', 'Surat Kelahiran  Asli dari Desa/ Kelurahan / dokter / bidan desa'),
(50, 'Foto copy Akta Nikah /Akta Perkawinan orang tua dilegalisir oleh pejabat berwenang', '1043', 'Foto copy Akta Nikah /Akta Perkawinan orang tua dilegalisir oleh pejabat berwenang'),
(51, 'Foto copy KK dan KTP orang tua', '1043', 'Foto copy KK dan KTP orang tua'),
(52, 'Menghadirkan 2 orang saksi dan foto copy KTP saksi', '1043', 'Menghadirkan 2 orang saksi dan foto copy KTP saksi'),
(53, 'Surat Kuasa bermaterai Rp. 6.000,- bagi yang dikuasakan', '1043', 'Surat Kuasa bermaterai Rp. 6.000,- bagi yang dikuasakan'),
(54, 'Foto copy Ijasah bagi yang  memiliki ijasah/Surat Keterangan tidak memiliki ijasah dari desa/kelurahan bagi yang tidak memiliki Ijasah', '1043', 'Foto copy Ijasah bagi yang  memiliki ijasah/Surat Keterangan tidak memiliki ijasah dari desa/kelurahan bagi yang tidak memiliki Ijasah'),
(55, 'Denda Keterlambatan Pencatatan Kelahiran ', '1043', 'Denda Keterlambatan Pencatatan Kelahiran '),
(56, 'Surat keterangan kematian dari kepala desa/lurah setempat/ dokter/rumah sakit', '1051', 'Surat keterangan kematian dari kepala desa/lurah setempat/ dokter/rumah sakit'),
(57, 'Akta kelahiran/perkawinan dari si mati', '1051', 'Akta kelahiran/perkawinan dari si mati'),
(58, 'Saksi 2 orang baik keluarga maupun bukan dengan syarat telah genap usia 21 tahun', '1051', 'Saksi 2 orang baik keluarga maupun bukan dengan syarat telah genap usia 21 tahun'),
(59, 'Foto copy KTP/ KK ( bagi yang memiliki).', '1051', 'Foto copy KTP/ KK ( bagi yang memiliki).'),
(60, 'Pelapor asli kematian RT', '1051', 'Pelapor asli kematian RT'),
(61, 'Mengisi formulir Akta Perkawinan', '1031', 'Mengisi formulir Akta Perkawinan'),
(62, 'Foto copi Akta Kelahiran/ surat keterangan kenal lahir kedua calon mempelai', '1031', 'Foto copi Akta Kelahiran/ surat keterangan kenal lahir kedua calon mempelai'),
(63, 'Surat  keterangan  dari  Desa/  Kelurahan  dengan  menggunakan  Blanko  Model N1, N2, N3, N4.', '1031', 'Surat  keterangan  dari  Desa/  Kelurahan  dengan  menggunakan  Blanko  Model N1, N2, N3, N4.'),
(64, 'Foto copy KTP / KK kedua calon mempelai', '1031', 'Foto copy KTP / KK kedua calon mempelai'),
(65, 'Surat keterangan kesehatan dari puskesmas dan Rumah sakit', '1031', 'Surat keterangan kesehatan dari puskesmas dan Rumah sakit'),
(66, 'Menghadapkan 2 orang saksi dan foto copi KTP saksi', '1031', 'Menghadapkan 2 orang saksi dan foto copi KTP saksi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ad_user`
--

CREATE TABLE `ad_user` (
  `userid` varchar(18) NOT NULL,
  `username` varchar(18) NOT NULL,
  `password` varchar(18) NOT NULL,
  `level` int(1) NOT NULL,
  `tgl_daftar` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL,
  `waktu_login` datetime NOT NULL,
  `avatar` varchar(30) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `pimpinan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ad_user`
--

INSERT INTO `ad_user` (`userid`, `username`, `password`, `level`, `tgl_daftar`, `status`, `waktu_login`, `avatar`, `bagian`, `pimpinan`) VALUES
('adminduk', 'adminduk', '123', 1, '2015-11-15 04:39:08', 1, '0000-00-00 00:00:00', 'logo2.jpg', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata_wni`
--

CREATE TABLE `biodata_wni` (
  `nik` varchar(20) NOT NULL,
  `nama_penduduk` varchar(50) NOT NULL,
  `tmpt_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nama_lgkp_ibu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biodata_wni`
--

INSERT INTO `biodata_wni` (`nik`, `nama_penduduk`, `tmpt_lahir`, `tgl_lahir`, `nama_lgkp_ibu`) VALUES
('32434523452234', 'JULIANDRI SAPUTRA', 'Tembilahan', '1990-09-10', 'Zulaikah'),
('4553434532', 'JOKO SAPUTRA', 'Belitung Timur', '2010-09-08', 'Ramli'),
('5433456342235', 'RAHMAD', 'Sungai Salak', '2011-09-30', 'Alvinur Huda'),
('543523432', 'DIAN WAHYUNI', 'Salatiga', '2013-09-12', 'Jokowi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_keluarga`
--

CREATE TABLE `data_keluarga` (
  `nik` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_keluarga`
--

INSERT INTO `data_keluarga` (`nik`, `alamat`, `no_hp`) VALUES
('32434523452234', 'Jl. Kembang', '085319564425'),
('5433456342235', 'Jl. Kartini', '08653432432'),
('543523432', 'Jl. Kartini', '456344346344'),
('4553434532', 'Jl. Cendrawasih 2', '2345643536');

-- --------------------------------------------------------

--
-- Struktur dari tabel `scanner`
--

CREATE TABLE `scanner` (
  `ID` int(11) NOT NULL,
  `NAMA_FILE` varchar(100) NOT NULL,
  `ALAMAT_FILE` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ad_arsip`
--
ALTER TABLE `ad_arsip`
  ADD PRIMARY KEY (`id_proses`);

--
-- Indeks untuk tabel `ad_kategori`
--
ALTER TABLE `ad_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `ad_proses`
--
ALTER TABLE `ad_proses`
  ADD PRIMARY KEY (`id_proses`);

--
-- Indeks untuk tabel `ad_sub_kategori`
--
ALTER TABLE `ad_sub_kategori`
  ADD PRIMARY KEY (`id_sub_kategori`);

--
-- Indeks untuk tabel `ad_syarat`
--
ALTER TABLE `ad_syarat`
  ADD PRIMARY KEY (`id_syarat`);

--
-- Indeks untuk tabel `ad_user`
--
ALTER TABLE `ad_user`
  ADD PRIMARY KEY (`userid`);

--
-- Indeks untuk tabel `biodata_wni`
--
ALTER TABLE `biodata_wni`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ad_syarat`
--
ALTER TABLE `ad_syarat`
  MODIFY `id_syarat` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- Database: `ci3_diskominfo`
--
CREATE DATABASE IF NOT EXISTS `ci3_diskominfo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ci3_diskominfo`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int(11) NOT NULL,
  `instansi_id` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `judul_pengaduan` varchar(255) NOT NULL,
  `isi_pengaduan` text NOT NULL,
  `status_pengaduan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id`, `instansi_id`, `tgl_pengaduan`, `judul_pengaduan`, `isi_pengaduan`, `status_pengaduan`) VALUES
(4, 2, '2021-01-12', 'ubah pengaduan', 'tes ubah', 2),
(5, 2, '2021-01-12', 'asdasd', 'tess', 0),
(9, 2, '2021-01-23', 'Coba tambah data pengaduan', 'berikut adalah isi dari pengaduan instansi saya, tolong di proses secepatnya. Terima kasih\r\n', 1),
(10, 2, '2021-01-23', 'tes notif', 'notif baru uhuy', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama_instansi` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama_instansi`, `email`, `alamat`, `username`, `password`, `role_id`) VALUES
(1, 'Hesty A.', '', '', 'admin123', '$2y$10$i4HD610v2o5HOxZXEC4G5eO.E.D0oVy/eKAohNku2EXZOOW4Y75pC', 1),
(2, 'Instansi A', 'instansi.pertama@gmail.com', 'Lhokseumawe', 'hesty123', '$2y$10$QO4ipamQMvPbBrFZcVD35ODxdUPYOoVYyqmwRbw5EgJhmSxW/3fEm', 2),
(6, 'awd', 'fansyahdwi204@gmail.com', 'awd', 'admin', '$2y$10$oaPw/t1Cyj.TJQSNOx7TOe5ZcJVV0h5qNawzlbslwg/8tC566zL/K', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `db_arsip_pdam`
--
CREATE DATABASE IF NOT EXISTS `db_arsip_pdam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_arsip_pdam`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_dokumen`
--

CREATE TABLE `tb_dokumen` (
  `id_dokumen` int(11) NOT NULL,
  `no_dokumen` varchar(100) NOT NULL,
  `nama_dokumen` varchar(46) NOT NULL,
  `tanggal` date NOT NULL,
  `dokumen` varchar(222) NOT NULL,
  `user` int(22) NOT NULL,
  `kategori` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_dokumen`
--

INSERT INTO `tb_dokumen` (`id_dokumen`, `no_dokumen`, `nama_dokumen`, `tanggal`, `dokumen`, `user`, `kategori`) VALUES
(10, '12313', 'Surat Cabut Jabatan', '0032-02-23', 'item-220607-97e4b66f1f.pdf', 1, 1),
(13, 'awdawd', 'awdawwd', '2022-06-22', 'item-220630-31678ca2dc.pdf', 1, 1),
(14, 'awdawdf', 'awdawwd', '2022-07-13', 'item-220719-d7232250f9.pdf', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Surat Dinas'),
(8, 'awd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_surat_keluar`
--

CREATE TABLE `tb_surat_keluar` (
  `id_surat_keluar` int(22) NOT NULL,
  `no_surat_keluar` varchar(66) NOT NULL,
  `perihal` varchar(66) NOT NULL,
  `dokumen_keluar` varchar(66) NOT NULL,
  `pengirim` varchar(66) NOT NULL,
  `tanggal` date NOT NULL,
  `kategori` int(66) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_surat_keluar`
--

INSERT INTO `tb_surat_keluar` (`id_surat_keluar`, `no_surat_keluar`, `perihal`, `dokumen_keluar`, `pengirim`, `tanggal`, `kategori`) VALUES
(17, 'awd', 'awd', 'item-220625-8206b003ef.pdf', 'ad', '2022-06-18', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_surat_masuk`
--

CREATE TABLE `tb_surat_masuk` (
  `id_surat_masuk` int(22) NOT NULL,
  `no_surat` varchar(68) NOT NULL,
  `perihal` varchar(69) NOT NULL,
  `penerima` varchar(67) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `kategori` int(22) NOT NULL,
  `dokumen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_surat_masuk`
--

INSERT INTO `tb_surat_masuk` (`id_surat_masuk`, `no_surat`, `perihal`, `penerima`, `tanggal`, `kategori`, `dokumen`) VALUES
(23, 'wd', 'adawd', 'awdwad', '2022-06-16', 1, 'item-220625-c3e4263a1c.pdf'),
(24, '1002', 'Layanan Pelanggan ', 'Fansyah Dwi Krisandy', '2022-06-20', 1, 'item-220626-7895da60e7.pdf'),
(25, '2324', 'Layanan Pelanggan ', 'Fansyah Dwi Krisandy', '2022-06-08', 1, 'item-220626-51e41d9430.docx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(23) NOT NULL,
  `name` varchar(55) NOT NULL,
  `username` varchar(54) NOT NULL,
  `password` varchar(55) NOT NULL,
  `address` text NOT NULL,
  `level` int(2) NOT NULL,
  `jenis_kelamin` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `password`, `address`, `level`, `jenis_kelamin`) VALUES
(1, 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Klangenan', 1, 2),
(5, 'Umu Salama', 'admin2', '315f166c5aca63a157f7d41007675cb44a948b33', 'Palimanan', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_dokumen`
--
ALTER TABLE `tb_dokumen`
  ADD PRIMARY KEY (`id_dokumen`),
  ADD UNIQUE KEY `no_dokumen` (`no_dokumen`),
  ADD KEY `user` (`user`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  ADD PRIMARY KEY (`id_surat_keluar`),
  ADD UNIQUE KEY `no_surat_keluar` (`no_surat_keluar`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  ADD PRIMARY KEY (`id_surat_masuk`),
  ADD UNIQUE KEY `no_surat` (`no_surat`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_dokumen`
--
ALTER TABLE `tb_dokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  MODIFY `id_surat_keluar` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  MODIFY `id_surat_masuk` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(23) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_dokumen`
--
ALTER TABLE `tb_dokumen`
  ADD CONSTRAINT `tb_dokumen_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_dokumen_ibfk_2` FOREIGN KEY (`kategori`) REFERENCES `tb_kategori` (`id_kategori`);

--
-- Ketidakleluasaan untuk tabel `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  ADD CONSTRAINT `tb_surat_keluar_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  ADD CONSTRAINT `tb_surat_masuk_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE;
--
-- Database: `db_pdam`
--
CREATE DATABASE IF NOT EXISTS `db_pdam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_pdam`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_chat`
--

CREATE TABLE `tb_chat` (
  `id_chat` int(4) NOT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `id_target` varchar(50) DEFAULT NULL,
  `waktu` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_chat`
--

INSERT INTO `tb_chat` (`id_chat`, `id_user`, `pesan`, `id_target`, `waktu`) VALUES
(25, 'S-01230001', 'hallo admin untuk besok perbaikannya sampai kapan ya?', 'admin', '2021-02-09 14:23:09'),
(26, 'S-01230001', 'cvsv', 'admin', '2021-02-09 14:49:53'),
(27, 'admin', 'okey', 'S-01230001', '2021-02-09 15:00:19'),
(28, 'S-01230002', 'Mohon bantuannya dmin untuk pengaktifan akun saya', 'admin', '2021-06-16 06:20:15'),
(29, 'admin', 'Baik silahkan dicoba kembali', 'S-01230002', '2021-06-16 06:22:27'),
(30, 'S-01230003', 'Admin mohon dibantu untuk pengaktifan akun saya', 'admin', '2021-06-16 07:01:39'),
(31, 'S-01230003', 'Tolong secepatnya ya admin, terimakasih', 'admin', '2021-06-16 07:01:56'),
(32, 'S-01230004', 'Selamat Pagi Admin, Mohon bantuannya untuk pengaktifan akun saya Terimakasih', 'admin', '2021-06-16 07:03:59'),
(33, 'admin', 'Laporan kami terima, silahkan cek kembali / login kembali, terimakasih', 'S-01230004', '2021-06-16 07:05:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_keluhan`
--

CREATE TABLE `tb_keluhan` (
  `id_keluhan` int(5) NOT NULL,
  `nama_permohon` varchar(50) DEFAULT NULL,
  `alamat_permohon` varchar(200) DEFAULT NULL,
  `tanggal_permohon` date DEFAULT NULL,
  `no_agenda` varchar(50) DEFAULT NULL,
  `ukuran_meter` varchar(20) DEFAULT NULL,
  `merek_meter` varchar(50) DEFAULT NULL,
  `seri_meter` varchar(50) DEFAULT NULL,
  `tgl_pengaduan` date DEFAULT NULL,
  `tgl_pk` date DEFAULT NULL,
  `tgl_meter` date DEFAULT NULL,
  `tgl_pasang` date DEFAULT NULL,
  `jenis_keluhan` varchar(50) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `catatan` text DEFAULT NULL,
  `no_kontrol` varchar(50) DEFAULT NULL,
  `reply_keluhan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_keluhan`
--

INSERT INTO `tb_keluhan` (`id_keluhan`, `nama_permohon`, `alamat_permohon`, `tanggal_permohon`, `no_agenda`, `ukuran_meter`, `merek_meter`, `seri_meter`, `tgl_pengaduan`, `tgl_pk`, `tgl_meter`, `tgl_pasang`, `jenis_keluhan`, `foto`, `catatan`, `no_kontrol`, `reply_keluhan`) VALUES
(1, 'agus', 'cisaat', '2021-02-09', '123', '5', 'ATARIS', '233', '2021-02-09', '2021-02-09', '2021-02-09', '2021-02-09', 'Diputus', '', 'dfsdf', 'S-01230001', 'Baik akan kami perbaiki'),
(16, 'Pelanggan 1', 'Jln. halim Perdana Kusuma jakarta Pusat', '2021-06-16', '1', '5', 'ATARIS', '10001', '2021-06-16', '2021-06-17', '2021-06-16', '2021-06-02', 'Air Tidak Keluar', '', 'Pak Mohon bantuannya Air tidak keluar di perumahan No 2', 'S-01230002', 'Baik kami akan coba periksa kembali saluran nya mohon ditunggu'),
(17, 'Pelanggan 2', 'Jln. halim Perdana Kusuma jakarta Pusat', '2021-06-16', '1234', '2', 'ATARIS', '10002', '2021-06-16', '2021-06-17', '2021-06-17', '2021-06-08', 'Air Tidak Keluar', '', 'Mohon maaf, mohon bantuannya untuk perbaikan saluran air diperumahan 2 tidak keluar, tolong segera diperbaikai, terimakasih', 'S-01230004', 'Baik mohon ditunggu, tim kami sedang menuju ke Lokasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `nomor_sambung` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(3) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`nomor_sambung`, `password`, `role_id`, `date_created`, `status`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 1, '2019-07-03', 'yes'),
('S-01230001', '21232f297a57a5a743894a0e4a801fc3', 2, '2021-02-09', 'yes'),
('S-01230002', '8b097b8a86f9d6a991357d40d3d58634', 2, '2021-06-16', 'yes'),
('S-01230003', '7f78f06d2d1262a0a222ca9834b15d9d', 2, '2021-06-16', 'no'),
('S-01230004', '7f78f06d2d1262a0a222ca9834b15d9d', 2, '2021-06-16', 'yes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(4) NOT NULL,
  `nomor_sambung` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `no_rek` varchar(70) DEFAULT NULL,
  `ktp` varchar(255) DEFAULT NULL,
  `kk` varchar(255) DEFAULT NULL,
  `pbb` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nomor_sambung`, `name`, `no_rek`, `ktp`, `kk`, `pbb`, `alamat`, `no_telepon`) VALUES
(1, 'admin', 'admin', '1234', 'abcd', 'abcd', 'abcd', 'abcd', '1234'),
(18, 'S-01230001', 'agus', 'admin', 'b654fa77300dc2e48183637be18a388f.jpg', '6b0242793da5e35c3b71ed8e73ade493.png', '7da8e0082a40d99d0032c4ea6592174f.png', 'cisaat', '1234'),
(19, 'S-01230002', 'Pelanggan 1', '321121454464', 'ea1c4ac5953a534c66919c38283f476d.png', '4a395e5c80c0317abdc1b03254c6fd2f.png', 'b3e2d784b528e5bf7df4ca95ca250771.png', 'Jln. halim Perdana Kusuma jakarta Pusat', '082144578524'),
(21, 'S-01230004', 'Pelanggan 2', '123456789', '5221bd1afee0ba9849b55c83cb1f61da.jpg', '78e89201f71c72d09d8bec0f2a8ade26.jpg', 'db51003e9ff57a4bbdad0d4326bd5098.jpg', 'Jln. halim Perdana Kusuma jakarta Pusat', '082144578511');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengumuman`
--

CREATE TABLE `tb_pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `wilayah` varchar(50) DEFAULT NULL,
  `isi_pengumuman` text DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengumuman`
--

INSERT INTO `tb_pengumuman` (`id_pengumuman`, `judul`, `tanggal`, `time`, `wilayah`, `isi_pengumuman`, `created`) VALUES
(1, 'Perbaikan Saluran Air', '0000-00-00', '08:00:00', 'Cibadak', 'Mohon maaf atas ketidak nyaaman nya dikarenakan ada perbaikan saluran air untuk wilayah cibadak dan sekitarnya', '2020-06-25 04:06:41'),
(2, 'Perbaikan Infrastruktur', '2020-06-25', '03:14:00', 'Cisaat', 'Perbaikan Insfratuktur', '2020-06-25 08:16:15'),
(3, 'Perbaikan Saluran Air', '2021-02-10', '10:00:00', 'Cisaat', 'Mohon maaf sedang ada perbaikan saluran air untuk wilayah cisaat dan sekitarnya', '2021-02-09 14:21:24'),
(5, 'Info Gangguan Bulan Juni', '2021-06-16', '15:00:00', 'Sukabumi', 'Hari ini telah terjadi kebocoran pada selang Air yang menuju perumahan 2, mohon ditunggu sedang dalam perbaikan', '2021-06-16 07:06:14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_chat`
--
ALTER TABLE `tb_chat`
  ADD PRIMARY KEY (`id_chat`);

--
-- Indeks untuk tabel `tb_keluhan`
--
ALTER TABLE `tb_keluhan`
  ADD PRIMARY KEY (`id_keluhan`),
  ADD KEY `no_kontrol` (`no_kontrol`);

--
-- Indeks untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`nomor_sambung`);

--
-- Indeks untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD KEY `no_kontrol` (`nomor_sambung`);

--
-- Indeks untuk tabel `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_chat`
--
ALTER TABLE `tb_chat`
  MODIFY `id_chat` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tb_keluhan`
--
ALTER TABLE `tb_keluhan`
  MODIFY `id_keluhan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `id_pelanggan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_keluhan`
--
ALTER TABLE `tb_keluhan`
  ADD CONSTRAINT `tb_keluhan_ibfk_1` FOREIGN KEY (`no_kontrol`) REFERENCES `tb_login` (`nomor_sambung`);

--
-- Ketidakleluasaan untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD CONSTRAINT `tb_pelanggan_ibfk_1` FOREIGN KEY (`nomor_sambung`) REFERENCES `tb_login` (`nomor_sambung`);
--
-- Database: `db_pengaduan`
--
CREATE DATABASE IF NOT EXISTS `db_pengaduan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_pengaduan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `nomor_sambung` varchar(76) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role_id` int(3) NOT NULL,
  `date_create` date DEFAULT NULL,
  `nama` varchar(55) NOT NULL,
  `alamat` varchar(66) NOT NULL,
  `no_hp` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`nomor_sambung`, `password`, `role_id`, `date_create`, `nama`, `alamat`, `no_hp`) VALUES
('10020230', 'dffc695dd48f680f73e9885404dc7392f0859ec7', 2, '2022-06-24', 'Fansyah Dwi Krisnady', 'Pakalipan', '023244242'),
('222', 'dffc695dd48f680f73e9885404dc7392f0859ec7', 2, '2022-06-24', 'Widya Astuti', 'Arjiwinangung', '93403434'),
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, '2022-06-09', 'wiwod', 'Arjawinangung', '07659458584'),
('didin', 'dffc695dd48f680f73e9885404dc7392f0859ec7', 2, '2022-06-25', 'didin surpidin', 'Palimanan', '04954545');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(66) NOT NULL,
  `name` varchar(66) NOT NULL,
  `nomor_sambung1` varchar(76) NOT NULL,
  `alamat` varchar(66) NOT NULL,
  `no_telepon` varchar(66) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `name`, `nomor_sambung1`, `alamat`, `no_telepon`) VALUES
(20, 'Fansyah Dwi Krisnady', '10020230', 'Pakalipan', '023244242'),
(21, 'Widya Astuti', '222', 'Arjiwinangung', '93403434'),
(22, 'didin surpidin', 'didin', 'Palimanan', '04954545');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengaduan`
--

CREATE TABLE `tb_pengaduan` (
  `id_pengaduan` int(23) NOT NULL,
  `tgl_pengaduan` date DEFAULT NULL,
  `jenis_pengaduan` varchar(66) NOT NULL,
  `status` varchar(57) NOT NULL,
  `catatan` text NOT NULL,
  `image` varchar(70) NOT NULL,
  `nomor_sambung` varchar(76) NOT NULL,
  `admin` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pengaduan`
--

INSERT INTO `tb_pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `jenis_pengaduan`, `status`, `catatan`, `image`, `nomor_sambung`, `admin`) VALUES
(75, '2022-06-24', 'Air Tidak Keluar', 'selesai', 'awdadwaddwadd', 'item-220624-b4c0ce5c6e.jpg', '10020230', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengumuman`
--

CREATE TABLE `tb_pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `time` time NOT NULL,
  `tanggal` date NOT NULL,
  `isi_pengumuman` text NOT NULL,
  `wilayah` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pengumuman`
--

INSERT INTO `tb_pengumuman` (`id_pengumuman`, `judul`, `time`, `tanggal`, `isi_pengumuman`, `wilayah`) VALUES
(3, 'Distribusi Air', '20:31:00', '2022-06-18', 'Lagi Perawatan ', 'Palimanan'),
(5, 'Distribusi Air Minum Macet Total ', '22:08:00', '2022-06-25', 'Mohon maaf atas semua kendala sedang dalam perbaikan', 'Arjawinangun');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`nomor_sambung`);

--
-- Indeks untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD KEY `nomor_sambung1` (`nomor_sambung1`);

--
-- Indeks untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `nomor_sambung` (`nomor_sambung`),
  ADD KEY `admin` (`admin`);

--
-- Indeks untuk tabel `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `id_pelanggan` int(66) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  MODIFY `id_pengaduan` int(23) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD CONSTRAINT `tb_pelanggan_ibfk_1` FOREIGN KEY (`nomor_sambung1`) REFERENCES `tb_login` (`nomor_sambung`);

--
-- Ketidakleluasaan untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  ADD CONSTRAINT `tb_pengaduan_ibfk_1` FOREIGN KEY (`nomor_sambung`) REFERENCES `tb_pelanggan` (`nomor_sambung1`),
  ADD CONSTRAINT `tb_pengaduan_ibfk_2` FOREIGN KEY (`admin`) REFERENCES `tb_login` (`nomor_sambung`);
--
-- Database: `dosen`
--
CREATE DATABASE IF NOT EXISTS `dosen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dosen`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_alternatif`
--

CREATE TABLE `data_alternatif` (
  `id_alternatif` varchar(100) NOT NULL,
  `nik` varchar(60) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `tempat_lahir` varchar(60) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kelamin` varchar(45) NOT NULL,
  `jabatan` varchar(60) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `pendidikan` varchar(66) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `hasil_akhir` varchar(57) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_alternatif`
--

INSERT INTO `data_alternatif` (`id_alternatif`, `nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `kelamin`, `jabatan`, `tanggal_masuk`, `pendidikan`, `alamat`, `hasil_akhir`) VALUES
('A001', '3209172002100', 'fansyah dwi krisandy', 'Cirebon', '2022-07-07', 'pria', 'Kepala Studi Teknik Informatika', '2021-07-02', 'Sarjana Komputer', 'Palimanan', ''),
('A002', '320912323223', 'Adam Kusama', 'Losarang', '2022-07-14', 'Pria', 'Staff', '2022-07-14', 'S1 - Bahasa Indonesia', 'Losarang', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kriteria`
--

CREATE TABLE `data_kriteria` (
  `id_kriteria` varchar(50) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `bobot_kriteria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_kriteria`
--

INSERT INTO `data_kriteria` (`id_kriteria`, `nama_kriteria`, `bobot_kriteria`) VALUES
('C1', 'Calon Pembeli ', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(50) NOT NULL,
  `jum_nilai` varchar(50) NOT NULL,
  `ket_nilai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(55) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `role`, `username`, `password`) VALUES
(1, 'Fansyah Dwi Krisnady', 'kepegawaian', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'rifa', 'kepegawaian', 'user ', 'ee11cbb19052e40b07aac0ca060c23ee'),
(3, 'kusuma', 'manajer', 'admin2', 'c84258e9c39059a89ab77d846ddab909');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_alternatif`
--
ALTER TABLE `data_alternatif`
  ADD UNIQUE KEY `id_alternatif` (`id_alternatif`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `fansyahdk`
--
CREATE DATABASE IF NOT EXISTS `fansyahdk` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fansyahdk`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nrp` int(8) NOT NULL,
  `kelas` enum('TI-1','TI-2','TI-3','TI-Malam') NOT NULL,
  `blog` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `name`, `nrp`, `kelas`, `blog`) VALUES
(1, 'Adam Kusama', 14519077, 'TI-1', 'fansyah.blogspot.com'),
(5, '', 0, 'TI-1', ''),
(7, '', 0, 'TI-1', ''),
(8, 'awd', 52, 'TI-1', 'tt'),
(9, 'sef', 0, '', 'sef'),
(11, 'awd', 2125, 'TI-3', 'awdawd');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `gudang`
--
CREATE DATABASE IF NOT EXISTS `gudang` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gudang`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `costumer`
--

CREATE TABLE `costumer` (
  `id_costumer` int(22) NOT NULL,
  `nama_costumer` varchar(54) NOT NULL,
  `alamat` varchar(55) NOT NULL,
  `no_hp` varchar(66) NOT NULL,
  `email` varchar(46) NOT NULL,
  `status` varchar(66) NOT NULL,
  `tanggal_daftar` datetime DEFAULT NULL,
  `kode_costumer` varchar(66) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `costumer`
--

INSERT INTO `costumer` (`id_costumer`, `nama_costumer`, `alamat`, `no_hp`, `email`, `status`, `tanggal_daftar`, `kode_costumer`) VALUES
(3, 'Widya Astuti', 'Palimanan', '68', 'shnurfadhilah@gmail.com', 'Aktif', '2022-06-08 18:25:00', 'CMS -00001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_aplikasi`
--

CREATE TABLE `info_aplikasi` (
  `id_aplikasi` int(11) NOT NULL,
  `nama_aplikasi` varchar(222) NOT NULL,
  `alamat_app` varchar(222) NOT NULL,
  `email_app` varchar(222) NOT NULL,
  `telepon_app` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `info_aplikasi`
--

INSERT INTO `info_aplikasi` (`id_aplikasi`, `nama_aplikasi`, `alamat_app`, `email_app`, `telepon_app`) VALUES
(1, 'PT Media Indonesia', 'Palimanan', 'Fansyahdwi204@gmail.com', 20232323);

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE `masuk` (
  `id_stock` int(11) NOT NULL,
  `id_barang` int(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_faktur` varchar(50) NOT NULL,
  `date` date DEFAULT NULL,
  `qty` int(41) NOT NULL,
  `supplier` int(1) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1. Barang Masuk : 2. Barang Keluar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_barang`
--

CREATE TABLE `p_barang` (
  `id_barang` int(11) NOT NULL,
  `barcode` int(111) NOT NULL,
  `name_produk` varchar(222) NOT NULL,
  `harga` int(222) NOT NULL,
  `p_brand` int(1) NOT NULL,
  `p_jenis` int(1) NOT NULL,
  `p_satuan` int(1) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `stock` int(100) NOT NULL,
  `desciption` varchar(222) NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_barang`
--

INSERT INTO `p_barang` (`id_barang`, `barcode`, `name_produk`, `harga`, `p_brand`, `p_jenis`, `p_satuan`, `image`, `stock`, `desciption`, `created_by`) VALUES
(40, 1002, 'Laptop Gaming A 300', 10000000, 25, 60, 16, 'item-220717-51669ac192.png', 0, 'Barang Baru', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_brand`
--

CREATE TABLE `p_brand` (
  `id_brand` int(11) NOT NULL,
  `name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_brand`
--

INSERT INTO `p_brand` (`id_brand`, `name`) VALUES
(24, 'Indome '),
(25, 'Asus Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_jenis`
--

CREATE TABLE `p_jenis` (
  `id_jenis` int(11) NOT NULL,
  `name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_jenis`
--

INSERT INTO `p_jenis` (`id_jenis`, `name`) VALUES
(32, 'Sepatu Nike'),
(54, 'Makanan'),
(55, 'Kerudung'),
(56, 'Pakaian'),
(57, 'Celana'),
(58, 'Kemeja'),
(59, 'Celana dalam'),
(60, 'Elektronik ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_satuan`
--

CREATE TABLE `p_satuan` (
  `id_satuan` int(23) NOT NULL,
  `name` varchar(222) NOT NULL,
  `keterangan` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_satuan`
--

INSERT INTO `p_satuan` (`id_satuan`, `name`, `keterangan`) VALUES
(2, 'KG', 'Kilogram'),
(3, 'Mtr', 'Meter'),
(4, 'Ons', 'Ons'),
(5, 'Btl', 'Botol'),
(6, 'Lsn', 'Lusin'),
(7, 'Sst', 'Saset'),
(8, 'Duz', 'Duz'),
(9, 'Bks', 'Bungkus'),
(10, 'Box', 'Box'),
(14, 'Pcs', 'Paces'),
(15, 'Picis', 'Satuan'),
(16, 'buah', 'Buah'),
(17, 'Ons', 'Ons'),
(18, 'Volt', 'Volt Amper');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_supplier`
--

CREATE TABLE `p_supplier` (
  `id_supplier` int(22) NOT NULL,
  `nama_supplier` varchar(222) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `no_hp` varchar(222) NOT NULL,
  `alamat` varchar(222) NOT NULL,
  `refensi_kode` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_supplier`
--

INSERT INTO `p_supplier` (`id_supplier`, `nama_supplier`, `tanggal_daftar`, `no_hp`, `alamat`, `refensi_kode`) VALUES
(9, 'Campinod Komputer', '2021-06-20', '2324324324324', ' Lawang dawa\r\n', '100002022'),
(11, 'Sae Komputer', '2021-06-22', '2324324324324', ' Kali jaga monyet\r\n', '100002024'),
(13, 'Sinar Elektronik', '2021-06-22', '0828323242', ' Jl Lawangdawa No.11 Kota Cirebon Jawa Barat ', '100002023'),
(14, 'Asia Computer', '2021-07-12', '09273092323', 'Jl Kramatmulya Distrik jepang ', '100002025');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(33) NOT NULL,
  `name` varchar(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` varchar(222) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `password`, `address`, `level`) VALUES
(7, 'Fansyah Dwi Krisnady ', 'demo ', '89e495e7941cf9e40e6980d14a16bf023ccd4c91', 'Losari Cirebon Timur', 1),
(9, 'Umu Salama', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Cirebon , 29 Maret 2021 ', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`id_costumer`);

--
-- Indeks untuk tabel `info_aplikasi`
--
ALTER TABLE `info_aplikasi`
  ADD PRIMARY KEY (`id_aplikasi`);

--
-- Indeks untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`id_stock`),
  ADD KEY `masuk_ibfk_1` (`user_id`),
  ADD KEY `masuk_ibfk_3` (`supplier`),
  ADD KEY `item_name` (`id_barang`);

--
-- Indeks untuk tabel `p_barang`
--
ALTER TABLE `p_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `p_brand` (`p_brand`),
  ADD KEY `p_jenis` (`p_jenis`),
  ADD KEY `p_satuan` (`p_satuan`);

--
-- Indeks untuk tabel `p_brand`
--
ALTER TABLE `p_brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indeks untuk tabel `p_jenis`
--
ALTER TABLE `p_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `p_satuan`
--
ALTER TABLE `p_satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indeks untuk tabel `p_supplier`
--
ALTER TABLE `p_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `costumer`
--
ALTER TABLE `costumer`
  MODIFY `id_costumer` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `info_aplikasi`
--
ALTER TABLE `info_aplikasi`
  MODIFY `id_aplikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `masuk`
--
ALTER TABLE `masuk`
  MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `p_barang`
--
ALTER TABLE `p_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `p_brand`
--
ALTER TABLE `p_brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `p_jenis`
--
ALTER TABLE `p_jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `p_satuan`
--
ALTER TABLE `p_satuan`
  MODIFY `id_satuan` int(23) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `p_supplier`
--
ALTER TABLE `p_supplier`
  MODIFY `id_supplier` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD CONSTRAINT `masuk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `masuk_ibfk_3` FOREIGN KEY (`supplier`) REFERENCES `p_supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `masuk_ibfk_4` FOREIGN KEY (`id_barang`) REFERENCES `p_barang` (`id_barang`);

--
-- Ketidakleluasaan untuk tabel `p_barang`
--
ALTER TABLE `p_barang`
  ADD CONSTRAINT `p_barang_ibfk_1` FOREIGN KEY (`p_brand`) REFERENCES `p_brand` (`id_brand`),
  ADD CONSTRAINT `p_barang_ibfk_2` FOREIGN KEY (`p_jenis`) REFERENCES `p_jenis` (`id_jenis`),
  ADD CONSTRAINT `p_barang_ibfk_3` FOREIGN KEY (`p_satuan`) REFERENCES `p_satuan` (`id_satuan`);
--
-- Database: `nilai`
--
CREATE DATABASE IF NOT EXISTS `nilai` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nilai`;
--
-- Database: `pemesanan`
--
CREATE DATABASE IF NOT EXISTS `pemesanan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pemesanan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `id_pemesanan` int(22) NOT NULL,
  `nama` varchar(44) NOT NULL,
  `no_identitas` varchar(44) NOT NULL,
  `kelas` varchar(44) NOT NULL,
  `jumlah_penumpang` varchar(44) NOT NULL,
  `jumlah_lansia` varchar(44) NOT NULL,
  `harga_tiket` text NOT NULL,
  `total_bayar` varchar(55) NOT NULL,
  `berangkat` date DEFAULT NULL,
  `no_hp` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pemesanan`
--

INSERT INTO `tb_pemesanan` (`id_pemesanan`, `nama`, `no_identitas`, `kelas`, `jumlah_penumpang`, `jumlah_lansia`, `harga_tiket`, `total_bayar`, `berangkat`, `no_hp`) VALUES
(12, 'Adhitia Gunardi', '1000230', 'ekonomi', '23', '32', '', '', '2022-06-30', 29392),
(20, ' ngghj', 'gd', 'ekonomi', '50000', '10', '10', 'Rp.545,000', '2022-06-14', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  MODIFY `id_pemesanan` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data untuk tabel `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'saku', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"data_siswa\",\"jenis_tabungan\",\"kelas\",\"penarikan\",\"tabungan\",\"user\"],\"table_structure[]\":[\"data_siswa\",\"jenis_tabungan\",\"kelas\",\"penarikan\",\"tabungan\",\"user\"],\"table_data[]\":[\"data_siswa\",\"jenis_tabungan\",\"kelas\",\"penarikan\",\"tabungan\",\"user\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'db_pdam', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"tb_chat\",\"tb_keluhan\",\"tb_login\",\"tb_pelanggan\",\"tb_pengumuman\"],\"table_structure[]\":[\"tb_chat\",\"tb_keluhan\",\"tb_login\",\"tb_pelanggan\",\"tb_pengumuman\"],\"table_data[]\":[\"tb_chat\",\"tb_keluhan\",\"tb_login\",\"tb_pelanggan\",\"tb_pengumuman\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'database', 'db_arsip_pdam', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"tb_dokumen\",\"tb_kategori\",\"tb_surat_keluar\",\"tb_surat_masuk\",\"user\"],\"table_structure[]\":[\"tb_dokumen\",\"tb_kategori\",\"tb_surat_keluar\",\"tb_surat_masuk\",\"user\"],\"table_data[]\":[\"tb_dokumen\",\"tb_kategori\",\"tb_surat_keluar\",\"tb_surat_masuk\",\"user\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(4, 'root', 'table', 'pengaduan', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(5, 'root', 'table', '14519077_fansyahdwik', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(6, 'root', 'server', '14519068_almasfairuz', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"14519068_almasfairuz\",\"14519077_fansyahdwik\",\"admintbs\",\"arsipdigital\",\"ci3_diskominfo\",\"db_arsip_pdam\",\"db_pdam\",\"db_pengaduan\",\"dosen\",\"fansyahdk\",\"gudang\",\"nilai\",\"pemesanan\",\"phpmyadmin\",\"spk\",\"surat\",\"tabungan_siswa\",\"tb_pemesanan2\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"14519068_almasfairuz\",\"table\":\"tb_burung\"},{\"db\":\"14519077_fansyahdwik\",\"table\":\"barang\"},{\"db\":\"fansyahdk\",\"table\":\"mahasiswa\"},{\"db\":\"db_pengaduan\",\"table\":\"tb_login\"},{\"db\":\"db_pengaduan\",\"table\":\"tb_pengaduan\"},{\"db\":\"db_pdam\",\"table\":\"tb_login\"},{\"db\":\"db_pdam\",\"table\":\"tb_keluhan\"},{\"db\":\"gudang\",\"table\":\"p_barang\"},{\"db\":\"gudang\",\"table\":\"masuk\"},{\"db\":\"gudang\",\"table\":\"p_jenis\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('db_arsip_pdam', 'tb_dokumen', 'no_dokumen'),
('db_arsip_pdam', 'tb_surat_keluar', 'no_surat_keluar'),
('db_arsip_pdam', 'tb_surat_masuk', 'no_surat'),
('db_pengaduan', 'tb_login', 'nomor_sambung'),
('db_pengaduan', 'tb_pelanggan', 'name'),
('db_pengaduan', 'tb_pengaduan', 'jenis_pengaduan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data untuk tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'db_pengaduan', 'tb_pengaduan', '{\"sorted_col\":\"`status`  ASC\"}', '2022-06-24 17:28:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-07-27 18:14:17', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `spk`
--
CREATE DATABASE IF NOT EXISTS `spk` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `spk`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`email`, `username`, `password`) VALUES
('admin@gmail.com', 'admin', 'admin'),
('fansyahdwi204@gmail.com', 'admin2', '$2y$10$zN5qSagreKuuNfCiU8Cjy.kf5gWK/toEkNDtKE5PxtovAGRnjH/RW');

--
-- Trigger `akun`
--
DELIMITER $$
CREATE TRIGGER `hapus_akun` AFTER DELETE ON `akun` FOR EACH ROW DELETE FROM kriteria WHERE email=OLD.email
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id` varchar(5) NOT NULL,
  `email` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id`, `email`, `lokasi`, `waktu`) VALUES
('A1', 'admin@gmail.com', 'Jl. D.I. Panjaitan', '2018-11-25 23:08:50'),
('A2', 'admin@gmail.com', 'Jl. Patimura', '2018-11-26 01:19:22'),
('A3', 'admin@gmail.com', 'Jl. Katamso', '2018-11-26 01:19:33'),
('A4', 'admin@gmail.com', 'Jl. Ade Irma S.', '2018-11-26 01:19:43'),
('A5', 'admin@gmail.com', 'Jl. A. Yani', '2018-11-26 01:19:53'),
('A6', 'admin@gmail.com', 'Jl. Raya', '2018-11-29 21:21:53'),
('A1', 'fansyahdwi204@gmail.com', 'as', '2022-07-13 22:28:52');

--
-- Trigger `alternatif`
--
DELIMITER $$
CREATE TRIGGER `hapus_alternatif` AFTER DELETE ON `alternatif` FOR EACH ROW DELETE FROM pencocokan_kriteria WHERE email=OLD.email AND a=OLD.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` varchar(5) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` enum('Benefit','Cost') NOT NULL,
  `bobot` double NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `email`, `nama`, `jenis`, `bobot`, `waktu`) VALUES
('C1', 'admin@gmail.com', 'Kelayakan Lahan', 'Benefit', 0.3, '2018-11-25 18:05:21'),
('C2', 'admin@gmail.com', 'Kepadatan Penduduk', 'Benefit', 0.6, '2018-11-26 01:04:08'),
('C3', 'admin@gmail.com', 'Keramaian Lalu Lintas', 'Benefit', 0.8, '2018-11-26 01:05:13'),
('C4', 'admin@gmail.com', 'Kedekatan Dengan Fasilitas Umum', 'Benefit', 0.5, '2018-11-26 01:05:38'),
('C5', 'admin@gmail.com', 'Intensitas Banjir', 'Cost', 1, '2018-11-26 01:06:05'),
('C6', 'admin@gmail.com', 'Harga', 'Cost', 0.8, '2018-11-26 01:06:20'),
('C7', 'admin@gmail.com', 'Jarak Dengan Tempat Pendidikan', 'Benefit', 0.7, '2018-11-26 01:06:50'),
('C8', 'admin@gmail.com', 'Jarak Dengan Cabang Lain', 'Cost', 0.3, '2018-11-26 01:07:11'),
('C9', 'admin@gmail.com', 'Jarak Dengan Competitor', 'Cost', 0.5, '2018-11-26 01:07:37'),
('C1', 'fansyahdwi204@gmail.com', 'fansyah dwi krisandy', 'Benefit', 2, '2022-07-13 22:28:34');

--
-- Trigger `kriteria`
--
DELIMITER $$
CREATE TRIGGER `hapus_kriteria` AFTER DELETE ON `kriteria` FOR EACH ROW DELETE FROM sub_kriteria WHERE email=OLD.email AND kriteria=OLD.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pencocokan_kriteria`
--

CREATE TABLE `pencocokan_kriteria` (
  `email` varchar(25) NOT NULL,
  `a` varchar(5) NOT NULL,
  `c` varchar(5) NOT NULL,
  `id_nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pencocokan_kriteria`
--

INSERT INTO `pencocokan_kriteria` (`email`, `a`, `c`, `id_nilai`) VALUES
('admin@gmail.com', 'A1', 'C1', 8),
('admin@gmail.com', 'A1', 'C2', 14),
('admin@gmail.com', 'A1', 'C3', 18),
('admin@gmail.com', 'A1', 'C4', 22),
('admin@gmail.com', 'A1', 'C5', 24),
('admin@gmail.com', 'A1', 'C6', 26),
('admin@gmail.com', 'A1', 'C7', 29),
('admin@gmail.com', 'A1', 'C8', 33),
('admin@gmail.com', 'A1', 'C9', 35),
('admin@gmail.com', 'A2', 'C1', 7),
('admin@gmail.com', 'A2', 'C2', 16),
('admin@gmail.com', 'A2', 'C3', 19),
('admin@gmail.com', 'A2', 'C4', 22),
('admin@gmail.com', 'A2', 'C5', 24),
('admin@gmail.com', 'A2', 'C6', 27),
('admin@gmail.com', 'A2', 'C7', 30),
('admin@gmail.com', 'A2', 'C8', 34),
('admin@gmail.com', 'A2', 'C9', 36),
('admin@gmail.com', 'A3', 'C1', 13),
('admin@gmail.com', 'A3', 'C2', 15),
('admin@gmail.com', 'A3', 'C3', 17),
('admin@gmail.com', 'A3', 'C4', 21),
('admin@gmail.com', 'A3', 'C5', 23),
('admin@gmail.com', 'A3', 'C6', 28),
('admin@gmail.com', 'A3', 'C7', 29),
('admin@gmail.com', 'A3', 'C8', 34),
('admin@gmail.com', 'A3', 'C9', 37),
('admin@gmail.com', 'A4', 'C1', 7),
('admin@gmail.com', 'A4', 'C2', 15),
('admin@gmail.com', 'A4', 'C3', 17),
('admin@gmail.com', 'A4', 'C4', 20),
('admin@gmail.com', 'A4', 'C5', 25),
('admin@gmail.com', 'A4', 'C6', 26),
('admin@gmail.com', 'A4', 'C7', 31),
('admin@gmail.com', 'A4', 'C8', 32),
('admin@gmail.com', 'A4', 'C9', 35),
('admin@gmail.com', 'A5', 'C1', 8),
('admin@gmail.com', 'A5', 'C2', 15),
('admin@gmail.com', 'A5', 'C3', 19),
('admin@gmail.com', 'A5', 'C4', 20),
('admin@gmail.com', 'A5', 'C5', 24),
('admin@gmail.com', 'A5', 'C6', 27),
('admin@gmail.com', 'A5', 'C7', 29),
('admin@gmail.com', 'A5', 'C8', 33),
('admin@gmail.com', 'A5', 'C9', 35),
('admin@gmail.com', 'A6', 'C1', 7),
('admin@gmail.com', 'A6', 'C2', 15),
('admin@gmail.com', 'A6', 'C3', 17),
('admin@gmail.com', 'A6', 'C4', 21),
('admin@gmail.com', 'A6', 'C5', 24),
('admin@gmail.com', 'A6', 'C6', 27),
('admin@gmail.com', 'A6', 'C7', 30),
('admin@gmail.com', 'A6', 'C8', 32),
('admin@gmail.com', 'A6', 'C9', 37),
('fansyahdwi204@gmail.com', 'A1', 'C1', 38);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `kriteria` varchar(5) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id`, `email`, `kriteria`, `deskripsi`, `keterangan`, `nilai`) VALUES
(7, 'admin@gmail.com', 'C1', 'Ruko', 'Sangat Layak', 0.8),
(8, 'admin@gmail.com', 'C1', 'Rumah Tinggal', 'Layak', 0.5),
(13, 'admin@gmail.com', 'C1', 'Lahan Kosong', 'Cukup Layak', 0.2),
(14, 'admin@gmail.com', 'C2', '>500', 'Sangat Padat', 0.7),
(15, 'admin@gmail.com', 'C2', '100 s/d 500', 'Padat', 0.5),
(16, 'admin@gmail.com', 'C2', '<100', 'Cukup Padat', 0.3),
(17, 'admin@gmail.com', 'C3', '>1000', 'Sangat Ramai', 0.7),
(18, 'admin@gmail.com', 'C3', '100 s/d 1000', 'Ramai', 0.5),
(19, 'admin@gmail.com', 'C3', '<100', 'Cukup Ramai', 0.3),
(20, 'admin@gmail.com', 'C4', '<1Km', 'Sangat Dekat', 0.8),
(21, 'admin@gmail.com', 'C4', '1 Km s/d 2 Km', 'Cukup Dekat', 0.5),
(22, 'admin@gmail.com', 'C4', '>2Km', 'Jauh', 0.3),
(23, 'admin@gmail.com', 'C5', 'Tidak Pernah', 'Baik', 1),
(24, 'admin@gmail.com', 'C5', 'Kadang', 'Cukup Baik', 0.5),
(25, 'admin@gmail.com', 'C5', 'Sering', 'Kurang Baik', 0.2),
(26, 'admin@gmail.com', 'C6', '>1M', 'Sangat Mahal', 0.3),
(27, 'admin@gmail.com', 'C6', '100Jt s/d 1 M', 'Cukup Mahal', 0.5),
(28, 'admin@gmail.com', 'C6', '<100Jt', 'Murah', 0.9),
(29, 'admin@gmail.com', 'C7', '<1Km', 'Sangat Dekat', 0.8),
(30, 'admin@gmail.com', 'C7', '1 Km s/d 2 Km', 'Cukup Dekat', 0.5),
(31, 'admin@gmail.com', 'C7', '>2Km', 'Jauh', 0.3),
(32, 'admin@gmail.com', 'C8', '<1Km', 'Sangat Dekat', 0.1),
(33, 'admin@gmail.com', 'C8', '1 Km s/d 2 Km', 'Cukup Dekat', 0.5),
(34, 'admin@gmail.com', 'C8', '>2Km', 'Jauh', 0.7),
(35, 'admin@gmail.com', 'C9', '<1Km', 'Sangat Dekat', 0.3),
(36, 'admin@gmail.com', 'C9', '1 Km s/d 2 Km', 'Cukup Dekat', 0.5),
(37, 'admin@gmail.com', 'C9', '>2Km', 'Jauh', 0.7),
(38, 'fansyahdwi204@gmail.com', 'C1', 'ad', 'aw', 23);

--
-- Trigger `sub_kriteria`
--
DELIMITER $$
CREATE TRIGGER `hapus_sub_kriteria` AFTER DELETE ON `sub_kriteria` FOR EACH ROW DELETE FROM pencocokan_kriteria WHERE id_nilai=OLD.id
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Database: `surat`
--
CREATE DATABASE IF NOT EXISTS `surat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `surat`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bagian`
--

CREATE TABLE `tbl_bagian` (
  `id_bagian` int(10) NOT NULL,
  `nama_bagian` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bagian`
--

INSERT INTO `tbl_bagian` (`id_bagian`, `nama_bagian`, `id_user`) VALUES
(6, 'Kepala Desa', 5),
(7, 'Bendahara', 5),
(8, 'Sekdes', 5),
(9, 'Kaur Umum', 5),
(10, 'Kaur Keuangan', 5),
(11, 'Kaur Pemerintahan', 5),
(12, 'Kaur Kesra', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lampiran`
--

CREATE TABLE `tbl_lampiran` (
  `id_lampiran` int(10) NOT NULL,
  `token_lampiran` varchar(100) NOT NULL,
  `nama_berkas` text DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_lampiran`
--

INSERT INTO `tbl_lampiran` (`id_lampiran`, `token_lampiran`, `nama_berkas`, `ukuran`) VALUES
(32, 'b058dbad12246fcaa636be1af1bdfd3e', 'Profile.pdf', '41.56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_memo`
--

CREATE TABLE `tbl_memo` (
  `id_memo` int(10) NOT NULL,
  `judul_memo` text DEFAULT NULL,
  `memo` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ns`
--

CREATE TABLE `tbl_ns` (
  `id_ns` int(10) NOT NULL,
  `separator` text DEFAULT NULL,
  `no_posisi` text DEFAULT NULL,
  `no` text DEFAULT NULL,
  `org_posisi` text DEFAULT NULL,
  `org` text DEFAULT NULL,
  `bag_posisi` text DEFAULT NULL,
  `bag` text DEFAULT NULL,
  `subbag_posisi` text DEFAULT NULL,
  `subbag` text DEFAULT NULL,
  `bln_posisi` text DEFAULT NULL,
  `bln` text DEFAULT NULL,
  `thn_posisi` text DEFAULT NULL,
  `thn` text DEFAULT NULL,
  `reset_no` text DEFAULT NULL,
  `prefix` text DEFAULT NULL,
  `prefix_posisi` enum('kiri','kanan') DEFAULT NULL,
  `no_surat` text DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `jenis_ns` enum('semua','sm','sk','disposisi') DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sk`
--

CREATE TABLE `tbl_sk` (
  `id_sk` int(10) NOT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `pengirim` text NOT NULL,
  `penerima` text DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `id_bagian` int(10) NOT NULL,
  `token_lampiran` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` text NOT NULL,
  `peringatan` int(1) NOT NULL,
  `tgl_sk` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sk`
--

INSERT INTO `tbl_sk` (`id_sk`, `no_surat`, `tgl_ns`, `pengirim`, `penerima`, `perihal`, `id_bagian`, `token_lampiran`, `id_user`, `dibaca`, `disposisi`, `peringatan`, `tgl_sk`) VALUES
(16, 'SKm/001', '24-05-2022', '', '', 'Adwad', 0, 'b058dbad12246fcaa636be1af1bdfd3e', 6, 2, '1', 0, '22-05-2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sm`
--

CREATE TABLE `tbl_sm` (
  `id_sm` int(10) NOT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `no_asal` text DEFAULT NULL,
  `tgl_no_asal` varchar(12) DEFAULT NULL,
  `pengirim` text DEFAULT NULL,
  `penerima` text DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `token_lampiran` varchar(100) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` int(1) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_sm` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telp` varchar(30) DEFAULT NULL,
  `level` enum('s_admin','admin','user') DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `tgl_daftar` varchar(20) DEFAULT NULL,
  `terakhir_login` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama_lengkap`, `alamat`, `telp`, `level`, `status`, `tgl_daftar`, `terakhir_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Afifa Regina Febrianti ', 'negarabumi', '453454', 'admin', 'aktif', '22-05-2022 21:06:43', '22-05-2022 21:04:50');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  ADD PRIMARY KEY (`id_bagian`);

--
-- Indeks untuk tabel `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  ADD PRIMARY KEY (`id_lampiran`);

--
-- Indeks untuk tabel `tbl_memo`
--
ALTER TABLE `tbl_memo`
  ADD PRIMARY KEY (`id_memo`);

--
-- Indeks untuk tabel `tbl_ns`
--
ALTER TABLE `tbl_ns`
  ADD PRIMARY KEY (`id_ns`);

--
-- Indeks untuk tabel `tbl_sk`
--
ALTER TABLE `tbl_sk`
  ADD PRIMARY KEY (`id_sk`);

--
-- Indeks untuk tabel `tbl_sm`
--
ALTER TABLE `tbl_sm`
  ADD PRIMARY KEY (`id_sm`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  MODIFY `id_bagian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  MODIFY `id_lampiran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tbl_memo`
--
ALTER TABLE `tbl_memo`
  MODIFY `id_memo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_ns`
--
ALTER TABLE `tbl_ns`
  MODIFY `id_ns` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_sk`
--
ALTER TABLE `tbl_sk`
  MODIFY `id_sk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_sm`
--
ALTER TABLE `tbl_sm`
  MODIFY `id_sm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `tabungan_siswa`
--
CREATE DATABASE IF NOT EXISTS `tabungan_siswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tabungan_siswa`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nisn` bigint(44) NOT NULL,
  `nama_siswa` varchar(69) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `umur` int(11) NOT NULL,
  `tanggal_lahir` date NOT NULL DEFAULT current_timestamp(),
  `jenis_kelamin` varchar(23) NOT NULL,
  `saldo` bigint(55) NOT NULL,
  `kelas` int(11) NOT NULL,
  `no_rek` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_siswa`
--

INSERT INTO `data_siswa` (`id_siswa`, `nisn`, `nama_siswa`, `alamat`, `umur`, `tanggal_lahir`, `jenis_kelamin`, `saldo`, `kelas`, `no_rek`) VALUES
(1, 14519078, 'Fansyah Dwi Krisnady', 'Palimanan', 20, '2000-05-18', '1', 60000, 1, 10000201);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_tabungan`
--

CREATE TABLE `jenis_tabungan` (
  `id_jenis` int(11) NOT NULL,
  `nama_transaksi` varchar(90) NOT NULL,
  `jenis_transaksi` varchar(58) NOT NULL,
  `kode` varchar(54) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_tabungan`
--

INSERT INTO `jenis_tabungan` (`id_jenis`, `nama_transaksi`, `jenis_transaksi`, `kode`) VALUES
(1, 'Tarik Tunai', 'Tarik Tunai', 'DB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(50) NOT NULL,
  `nama_kelas` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'Kelas A'),
(2, 'Kelas B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penarikan`
--

CREATE TABLE `penarikan` (
  `id_penarikan` int(11) NOT NULL,
  `kode_penarikan` int(60) NOT NULL,
  `nsin` int(50) NOT NULL,
  `tanggal` date NOT NULL DEFAULT current_timestamp(),
  `jumlah_nominal_saldo` bigint(222) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jenis` int(11) NOT NULL,
  `Tahun_akademik` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penarikan`
--

INSERT INTO `penarikan` (`id_penarikan`, `kode_penarikan`, `nsin`, `tanggal`, `jumlah_nominal_saldo`, `user_id`, `jenis`, `Tahun_akademik`) VALUES
(1, 180522001, 1, '2022-05-18', 40000, 1, 1, '2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabungan`
--

CREATE TABLE `tabungan` (
  `id_tabungan` int(22) NOT NULL,
  `kode_setoran` int(22) NOT NULL,
  `jumlah_nominal_saldo` bigint(67) NOT NULL,
  `tahun_ajaran` varchar(22) NOT NULL,
  `tanggal` date NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `jenis_tabungan` int(22) NOT NULL,
  `nisn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabungan`
--

INSERT INTO `tabungan` (`id_tabungan`, `kode_setoran`, `jumlah_nominal_saldo`, `tahun_ajaran`, `tanggal`, `user_id`, `jenis_tabungan`, `nisn`) VALUES
(1, 180522001, 100000, '2021', '2022-05-11', 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(22) NOT NULL,
  `name` varchar(66) NOT NULL,
  `username` varchar(66) NOT NULL,
  `password` varchar(66) NOT NULL,
  `address` varchar(222) NOT NULL,
  `level` int(2) NOT NULL,
  `jenis_kelamin` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `password`, `address`, `level`, `jenis_kelamin`) VALUES
(2, 'Widya Astuti', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Palimanan', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `jenis_tabungan`
--
ALTER TABLE `jenis_tabungan`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `penarikan`
--
ALTER TABLE `penarikan`
  ADD PRIMARY KEY (`id_penarikan`);

--
-- Indeks untuk tabel `tabungan`
--
ALTER TABLE `tabungan`
  ADD PRIMARY KEY (`id_tabungan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jenis_tabungan`
--
ALTER TABLE `jenis_tabungan`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penarikan`
--
ALTER TABLE `penarikan`
  MODIFY `id_penarikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tabungan`
--
ALTER TABLE `tabungan`
  MODIFY `id_tabungan` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `tb_pemesanan2`
--
CREATE DATABASE IF NOT EXISTS `tb_pemesanan2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tb_pemesanan2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_siswa`
--

CREATE TABLE `is_siswa` (
  `nis` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `is_siswa`
--

INSERT INTO `is_siswa` (`nis`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`, `no_telepon`) VALUES
('16001', 'Danang Kusuma', 'Bandar Lampung', '1990-02-01', 'Laki-laki', 'Islam', 'Jalan Gatot Subroto No. 10, Bandar Lampung', '085758857775');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `is_siswa`
--
ALTER TABLE `is_siswa`
  ADD PRIMARY KEY (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
