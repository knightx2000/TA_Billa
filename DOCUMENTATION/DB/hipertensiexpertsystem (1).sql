-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2017 at 11:28 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hipertensiexpertsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_aturan`
--

CREATE TABLE `tb_aturan` (
  `id_aturan` bigint(20) NOT NULL,
  `id_gejala` char(7) NOT NULL,
  `id_penyakit` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_aturan`
--

INSERT INTO `tb_aturan` (`id_aturan`, `id_gejala`, `id_penyakit`) VALUES
(1, 'G000001', 'P000001'),
(2, 'G000002', 'P000001'),
(3, 'G000003', 'P000001'),
(4, 'G000001', 'P000002'),
(5, 'G000002', 'P000002'),
(6, 'G000003', 'P000002'),
(7, 'G000004', 'P000002'),
(8, 'G000001', 'P000003'),
(9, 'G000002', 'P000003'),
(10, 'G000003', 'P000003'),
(11, 'G000005', 'P000003'),
(12, 'G000001', 'P000004'),
(13, 'G000002', 'P000004'),
(14, 'G000003', 'P000004'),
(15, 'G000006', 'P000004');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id_gejala` char(7) NOT NULL,
  `nama_gejala` text NOT NULL,
  `jika_ya` char(7) NOT NULL,
  `jika_tidak` char(7) NOT NULL,
  `mulai` enum('Y','T') NOT NULL DEFAULT 'T',
  `selesai` enum('Y','T') NOT NULL DEFAULT 'T',
  `nilai_cf` decimal(3,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id_gejala`, `nama_gejala`, `jika_ya`, `jika_tidak`, `mulai`, `selesai`, `nilai_cf`) VALUES
('G000001', 'Stress', 'G000015', 'G000008', 'T', 'T', '0.800'),
('G000002', 'Kesemutan ', 'G000001', 'G000020', 'T', 'T', '0.633'),
('G000003', 'Jantung berdebar', 'G000004', 'G000005', 'T', 'T', '0.717'),
('G000004', 'Gaya hidup yang tidak teratur', 'G000034', 'G000008', 'T', 'T', '0.771'),
('G000005', 'Kurang beraktifitas (seperti:berolahraga)', 'G000036', 'P000002', 'T', 'T', '0.667'),
('G000006', 'Pola makan tidak sehat', 'G000005', 'G000011', 'T', 'T', '0.800'),
('G000007', 'Telinga mendenging', 'G000008', 'G000009', 'T', 'T', '0.683'),
('G000008', 'Emosi tidak stabil', 'G000038', 'P000001', 'T', 'T', '0.866'),
('G000009', 'Kram (klaudiasion) pada bagian kaki dan tangan ', 'P000003', 'G000013', 'T', 'T', '0.967'),
('G000010', 'Susah berkonsentrasi', 'G000017', 'G000021', 'Y', 'T', '0.467'),
('G000011', 'Mengalami gelisah', 'G000014', 'P000003', 'T', 'T', '0.857'),
('G000012', 'Susah tidur', 'G000019', 'G000039', 'T', 'T', '0.600'),
('G000013', 'Mengalami lelah', 'G000024', 'G000019', 'T', 'T', '0.651'),
('G000014', 'Sakit kepala(Tension Headache)', 'P000004', 'G000033', 'T', 'T', '0.889'),
('G000015', 'Mata berkunang-kunang', 'G000006', 'G000008', 'T', 'T', '0.543'),
('G000016', 'Suka merasa haus', 'G000018', 'G000019', 'T', 'T', '0.571'),
('G000017', 'Sering mengalami buang air kecil (poliuri)', 'G000021', 'Z000001', 'T', 'T', '0.400'),
('G000018', 'Sering mengalami buang air kecil pada malam hari (nokturi)', 'G000009', 'G000029', 'T', 'T', '0.500'),
('G000019', 'Mengalami buang air kecil berdarah (hematuri)', 'P000004', 'G000024', 'T', 'T', '0.500'),
('G000020', 'Merasa mual', 'G000016', 'G000024', 'T', 'T', '0.667'),
('G000021', 'Mengalami wajah memerah  ', 'G000002', 'Z000001', 'T', 'T', '0.500'),
('G000022', 'Pandangan memutar (vertigo)', 'G000003', 'G000007', 'T', 'T', '0.700'),
('G000023', 'Gangguan pada pengliatan (kabur)', 'P000014', 'Z000001', 'T', 'T', '0.400'),
('G000024', 'Sering mengalami mengantuk', 'G000005', 'G000030', 'T', 'T', '0.400'),
('G000025', 'Mengalami muntah', 'P000017', 'Z000001', 'T', 'T', '0.400'),
('G000026', 'Mengalami nyeri pada bagian dada', 'G000039', 'P000003', 'T', 'T', '0.686'),
('G000027', 'Mengalami sesak nafas', 'P000003', 'G000031', 'T', 'T', '0.850'),
('G000028', 'Merokok', 'G000026', 'P000001', 'T', 'T', '0.833'),
('G000029', 'Mengalami bengkak pada bagian kaki', 'P000004', 'Z000001', 'T', 'T', '0.867'),
('G000030', 'Badan tidak enak (berasa tegang/berat ditengkuk)', 'P000002', 'G000039', 'T', 'T', '0.767'),
('G000031', 'Mimisan ', 'G000034', 'G000036', 'T', 'T', '0.200'),
('G000032', 'Migrain', 'P000003', 'G000033', 'T', 'T', '0.640'),
('G000033', 'Sering mengalami pingsan ', 'P000021', 'Z000001', 'T', 'T', '0.400'),
('G000034', 'Meminum minuman alkohol', 'P000002', 'G000007', 'T', 'T', '0.543'),
('G000035', 'Mengkonsumsi obat-obatan tertentu', 'G000034', 'G000003', 'T', 'T', '0.567'),
('G000036', 'Mengkonsumsi obat darah tinggi', 'P000004', 'P000003', 'T', 'T', '0.725'),
('G000037', 'Memiliki riwayat penyakit gula darah', 'G000012', 'G000033', 'T', 'T', '0.500'),
('G000038', 'Memiliki riwayat penyakit Hiperkolesterol (berlebihan lemak)', 'P000004', 'G000035', 'T', 'T', '0.600'),
('G000039', 'Memiliki riwayat penyakit jantung', 'G000009', 'P000003', 'T', 'T', '0.857');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id_penyakit` char(7) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL,
  `solusi` text NOT NULL,
  `obat` text NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id_penyakit`, `nama_penyakit`, `solusi`, `obat`, `kategori`) VALUES
('P000001', 'Normal', 'Lakukan operasi bila ditemukan tumor', 'Aminophylline 4-10mg/kg BB 3 kali/hari', 'Tidak Berbahaya'),
('P000002', 'PreHipertensi', 'Berikan obat selama 3 hari, apabila sakit berlanjut hubungi dokter', 'Flunixin meglumin 1mg/kg BB satu kali/hari', 'Cukup Berbahaya'),
('P000003', 'Hipertensi Stadium 1', 'Ulangi 3 minggu', 'Ivermectine 0,2mg/kgBB ', 'Berbahaya'),
('P000004', 'Hipertensi Stadium 2', 'Berikan obat selama 3 hari, apabila sakit berlanjut hubungi dokter', 'Furosemide 5mg/kg BB 1-2 kali/hari', 'Sudah Parah'),
('Z000001', 'Penyakit tidak ditemukan', '-', '-', 'Tidak ditemukan penyakit hiper');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sispak`
--

CREATE TABLE `tb_sispak` (
  `id_sispak` char(7) NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` char(7) NOT NULL,
  `id_penyakit` char(7) NOT NULL,
  `nilai_kepastian` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenisKelamin` varchar(50) NOT NULL,
  `umur` int(2) NOT NULL,
  `berat` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sispak`
--

INSERT INTO `tb_sispak` (`id_sispak`, `tanggal`, `id_user`, `id_penyakit`, `nilai_kepastian`, `nama`, `jenisKelamin`, `umur`, `berat`) VALUES
('S000038', '2015-07-14', 'U000002', 'P000001', '0.489', '', '', 0, 0),
('S000039', '2017-04-09', 'U000002', 'P000004', '0.995', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` char(7) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `status_admin` enum('Y','T') NOT NULL DEFAULT 'T'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `email`, `password`, `nama_lengkap`, `status_admin`) VALUES
('U000001', 'admin@gmail.com', 'admin', 'aaaa', 'Y'),
('U000002', 'bbbb@gmail.com', '123', 'bbbb', 'T'),
('U000003', 'cccc@gmail.com', '123', 'cccc', 'Y'),
('U000004', 'user@gmail.com', '123', 'user', 'T'),
('U000005', 'dddd@gmail.com', '123', 'dddd', 'T'),
('U000006', 'wahyu@wahyu.com', '12345', 'wahyu', 'T'),
('U000007', 'nabila@gmail.com', '12345', 'Nabila', 'T'),
('U000008', 'nabilaTA@telkom.com', '1234', '1234', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_aturan`
--
ALTER TABLE `tb_aturan`
  ADD PRIMARY KEY (`id_aturan`),
  ADD KEY `id_gejala` (`id_gejala`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `tb_sispak`
--
ALTER TABLE `tb_sispak`
  ADD PRIMARY KEY (`id_sispak`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_aturan` (`id_penyakit`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_aturan`
--
ALTER TABLE `tb_aturan`
  MODIFY `id_aturan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_aturan`
--
ALTER TABLE `tb_aturan`
  ADD CONSTRAINT `tb_aturan_ibfk_1` FOREIGN KEY (`id_gejala`) REFERENCES `tb_gejala` (`id_gejala`),
  ADD CONSTRAINT `tb_aturan_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `tb_penyakit` (`id_penyakit`);

--
-- Constraints for table `tb_sispak`
--
ALTER TABLE `tb_sispak`
  ADD CONSTRAINT `tb_sispak_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`),
  ADD CONSTRAINT `tb_sispak_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `tb_penyakit` (`id_penyakit`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
