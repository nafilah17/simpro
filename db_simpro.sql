-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2018 at 09:56 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `af_bidang`
--

CREATE TABLE `af_bidang` (
  `no` int(11) NOT NULL,
  `id_bidang` varchar(11) NOT NULL,
  `nama_bidang` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `af_bidang`
--

INSERT INTO `af_bidang` (`no`, `id_bidang`, `nama_bidang`, `deskripsi`) VALUES
(0, 'BID-00001', 'bidang 1', 'deskripsi bidang 1'),
(0, 'BID-00002', 'bidang 2', 'deskripsi bidang 2'),
(0, 'BID-00003', 'bidang 3', 'deskripsi bidang 3');

-- --------------------------------------------------------

--
-- Table structure for table `af_kategori`
--

CREATE TABLE `af_kategori` (
  `no` int(11) NOT NULL,
  `id_kategori` varchar(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `af_kategori`
--

INSERT INTO `af_kategori` (`no`, `id_kategori`, `nama_kategori`, `deskripsi`) VALUES
(0, 'KAT-00001', 'kategori 1', 'deskripsi 1'),
(0, 'KAT-00002', 'kategori 2', 'deskripsi 2');

-- --------------------------------------------------------

--
-- Table structure for table `af_program`
--

CREATE TABLE `af_program` (
  `no` int(11) NOT NULL,
  `nama_bidang` varchar(50) NOT NULL,
  `id_program` varchar(11) NOT NULL,
  `nama_program` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `af_program`
--

INSERT INTO `af_program` (`no`, `nama_bidang`, `id_program`, `nama_program`, `deskripsi`) VALUES
(1, 'bidang 1', 'PRO-00001', 'Dakwah', 'asdf 1'),
(2, 'bidang 2', 'PRO-00002', 'asdf 22222', 'desk  2');

-- --------------------------------------------------------

--
-- Table structure for table `af_proposal`
--

CREATE TABLE `af_proposal` (
  `id_proposal` varchar(11) NOT NULL,
  `bulan_masuk` text NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_bidang` varchar(11) NOT NULL,
  `nama_bidang` varchar(50) NOT NULL,
  `id_kategori` varchar(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `id_program` varchar(11) NOT NULL,
  `nama_program` varchar(50) NOT NULL,
  `nama_lembaga` varchar(150) NOT NULL,
  `alamat_lembaga` varchar(150) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kota_kab` varchar(100) NOT NULL,
  `wil_malang` varchar(100) NOT NULL,
  `nama_kontak` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `rekomendasi` varchar(100) NOT NULL,
  `jml_pengajuan` double NOT NULL,
  `bentuk_pengajuan` varchar(100) NOT NULL,
  `tgl_survei` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `af_proposal`
--

INSERT INTO `af_proposal` (`id_proposal`, `bulan_masuk`, `tgl_masuk`, `id_bidang`, `nama_bidang`, `id_kategori`, `nama_kategori`, `id_program`, `nama_program`, `nama_lembaga`, `alamat_lembaga`, `kecamatan`, `kota_kab`, `wil_malang`, `nama_kontak`, `telepon`, `rekomendasi`, `jml_pengajuan`, `bentuk_pengajuan`, `tgl_survei`) VALUES
('PR-00001', 'oktober', '2018-10-02', 'BID-00001', 'bidang 1', 'KAT-00001', 'Masjid', 'PRO-00001', 'program 1', 'lembaga satu', 'jalan lembaga', 'lawang', 'malang', 'Kota Malang', 'asria', '08812345678', 'qwertyyyyy 333', 20000, 'surat', '2018-10-11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `level` enum('admin','member') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id`, `username`, `password`, `level`) VALUES
(1, 'adi', '12345', 'admin'),
(2, 'ida', '45678', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `af_bidang`
--
ALTER TABLE `af_bidang`
  ADD PRIMARY KEY (`id_bidang`),
  ADD KEY `nama_bidang` (`nama_bidang`);

--
-- Indexes for table `af_kategori`
--
ALTER TABLE `af_kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `nama_kategori` (`nama_kategori`);

--
-- Indexes for table `af_program`
--
ALTER TABLE `af_program`
  ADD PRIMARY KEY (`no`),
  ADD KEY `nama_program` (`nama_program`);

--
-- Indexes for table `af_proposal`
--
ALTER TABLE `af_proposal`
  ADD PRIMARY KEY (`id_proposal`),
  ADD KEY `id_bidang` (`id_bidang`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_program` (`id_program`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `af_program`
--
ALTER TABLE `af_program`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
