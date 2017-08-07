-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2017 at 07:11 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hipertensiexpertsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_aturan`
--

CREATE TABLE IF NOT EXISTS `tb_aturan` (
`id_aturan` bigint(20) NOT NULL,
  `id_gejala` char(7) NOT NULL,
  `id_penyakit` char(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_aturan`
--

INSERT INTO `tb_aturan` (`id_aturan`, `id_gejala`, `id_penyakit`) VALUES
(24, 'G000003', 'P000002'),
(25, 'G000006', 'P000002'),
(26, 'G000010', 'P000002'),
(27, 'G000011', 'P000002'),
(28, 'G000016', 'P000002'),
(29, 'G000017', 'P000002'),
(30, 'G000030', 'P000002'),
(31, 'G000034', 'P000002'),
(32, 'G000035', 'P000002'),
(33, 'G000038', 'P000002'),
(34, 'G000009', 'P000003'),
(35, 'G000013', 'P000003'),
(36, 'G000018', 'P000003'),
(37, 'G000021', 'P000003'),
(38, 'G000022', 'P000003'),
(39, 'G000026', 'P000003'),
(40, 'G000028', 'P000003'),
(41, 'G000032', 'P000003'),
(42, 'G000036', 'P000003'),
(43, 'G000037', 'P000003'),
(84, 'G000001', 'P000001'),
(85, 'G000004', 'P000001'),
(86, 'G000005', 'P000001'),
(87, 'G000008', 'P000001'),
(88, 'G000012', 'P000001'),
(89, 'G000014', 'P000001'),
(90, 'G000020', 'P000001'),
(91, 'G000002', 'P000004'),
(92, 'G000003', 'P000004'),
(93, 'G000007', 'P000004'),
(94, 'G000019', 'P000004'),
(95, 'G000023', 'P000004'),
(96, 'G000024', 'P000004'),
(97, 'G000025', 'P000004'),
(98, 'G000027', 'P000004'),
(99, 'G000029', 'P000004'),
(100, 'G000031', 'P000004'),
(101, 'G000033', 'P000004'),
(102, 'G000039', 'P000004');

-- --------------------------------------------------------

--
-- Table structure for table `tb_diagnosa`
--

CREATE TABLE IF NOT EXISTS `tb_diagnosa` (
`id_aturan` bigint(20) NOT NULL,
  `id_gejala` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE IF NOT EXISTS `tb_gejala` (
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
('G000001', 'Stress', 'G000004', 'G000006', 'T', 'T', '0.400'),
('G000002', 'Kesemutan ', 'G000003', 'G000001', 'Y', 'T', '0.999'),
('G000003', 'Jantung berdebar', 'G000007', 'G000009', 'T', 'T', '0.999'),
('G000004', 'Gaya hidup yang tidak teratur', 'G000005', 'G000006', 'T', 'T', '0.400'),
('G000005', 'Kurang beraktifitas (seperti:berolahraga)', 'G000008', 'G000008', 'T', 'T', '0.400'),
('G000006', 'Pola makan tidak sehat', 'G000010', 'Z000001', 'T', 'T', '0.600'),
('G000007', 'Telinga mendenging', 'G000019', 'G000019', 'T', 'T', '0.999'),
('G000008', 'Emosi tidak stabil', 'G000012', 'G000012', 'T', 'T', '0.400'),
('G000009', 'Kram (klaudiasion) pada bagian kaki dan tangan ', 'G000013', 'G000013', 'T', 'T', '0.800'),
('G000010', 'Susah berkonsentrasi', 'G000011', 'G000011', 'T', 'T', '0.600'),
('G000011', 'Mengalami gelisah', 'G000016', 'G000016', 'T', 'T', '0.600'),
('G000012', 'Susah tidur', 'G000014', 'G000014', 'T', 'T', '0.400'),
('G000013', 'Mengalami lelah', 'G000018', 'G000018', 'T', 'T', '0.800'),
('G000014', 'Sakit kepala(Tension Headache)', 'G000015', 'G000015', 'T', 'T', '0.400'),
('G000015', 'Mata berkunang-kunang', 'G000020', 'G000020', 'T', 'T', '0.400'),
('G000016', 'Suka merasa haus', 'G000017', 'G000017', 'T', 'T', '0.533'),
('G000017', 'Sering mengalami buang air kecil (poliuri)', 'G000030', 'G000030', 'T', 'T', '0.600'),
('G000018', 'Sering mengalami buang air kecil pada malam hari (nokturi)', 'G000021', 'G000021', 'T', 'T', '0.800'),
('G000019', 'Mengalami buang air kecil berdarah (hematuri)', 'G000023', 'G000023', 'T', 'T', '0.999'),
('G000020', 'Merasa mual', 'P000001', 'P000001', 'T', 'T', '0.400'),
('G000021', 'Mengalami wajah memerah  ', 'G000022', 'G000022', 'T', 'T', '0.800'),
('G000022', 'Pandangan memutar (vertigo)', 'G000026', 'G000026', 'T', 'T', '0.800'),
('G000023', 'Gangguan pada pengliatan (kabur)', 'G000024', 'G000024', 'T', 'T', '0.999'),
('G000024', 'Sering mengalami mengantuk', 'G000029', 'G000029', 'T', 'T', '0.999'),
('G000025', 'Mengalami muntah', 'G000027', 'G000027', 'T', 'T', '0.999'),
('G000026', 'Mengalami nyeri pada bagian dada', 'G000028', 'G000028', 'T', 'T', '0.999'),
('G000027', 'Mengalami sesak nafas', 'G000031', 'G000031', 'T', 'T', '0.999'),
('G000028', 'Merokok', 'G000032', 'G000032', 'T', 'T', '0.800'),
('G000029', 'Mengalami bengkak pada bagian kaki', 'G000025', 'G000025', 'T', 'T', '0.999'),
('G000030', 'Badan tidak enak (berasa tegang/berat ditengkuk)', 'G000034', 'G000034', 'T', 'T', '0.600'),
('G000031', 'Mimisan ', 'G000033', 'G000033', 'T', 'T', '0.999'),
('G000032', 'Migrain', 'G000036', 'G000036', 'T', 'T', '0.800'),
('G000033', 'Sering mengalami pingsan ', 'G000039', 'G000039', 'T', 'T', '0.999'),
('G000034', 'Meminum minuman alkohol', 'G000035', 'G000035', 'T', 'T', '0.600'),
('G000035', 'Mengkonsumsi obat-obatan tertentu', 'G000038', 'G000038', 'T', 'T', '0.600'),
('G000036', 'Mengkonsumsi obat darah tinggi', 'G000037', 'G000037', 'T', 'T', '0.800'),
('G000037', 'Memiliki riwayat penyakit gula darah', 'P000003', 'P000003', 'T', 'T', '0.800'),
('G000038', 'Memiliki riwayat penyakit Hiperkolesterol (berlebihan lemak)', 'P000002', 'P000002', 'T', 'T', '0.600'),
('G000039', 'Memiliki riwayat penyakit jantung', 'P000004', 'P000004', 'T', 'T', '0.999');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE IF NOT EXISTS `tb_penyakit` (
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
('P000001', 'Normal', '', '', 'Tidak Berbahaya'),
('P000002', 'PreHipertensi', '', '', 'Cukup Berbahaya'),
('P000003', 'Hipertensi Stadium 1', '', '', 'Berbahaya'),
('P000004', 'Hipertensi Stadium 2', '', '', 'Sudah Parah'),
('Z000001', 'Penyakit tidak ditemukan', '-', '-', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sispak`
--

CREATE TABLE IF NOT EXISTS `tb_sispak` (
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
('S000039', '2017-04-09', 'U000002', 'P000004', '0.995', '', '', 0, 0),
('S000040', '2017-05-19', 'U000002', 'P000004', '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
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
('U000008', 'nabilaTA@telkom.com', '1234', '1234', 'Y'),
('U000009', 'joko@gmail.com', '963qaz', 'joko', 'T'),
('U000010', 'imamsuleman0@gmail.com', 'padang', 'Imam Suleman', 'T');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_aturan`
--
ALTER TABLE `tb_aturan`
 ADD PRIMARY KEY (`id_aturan`), ADD KEY `id_gejala` (`id_gejala`), ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indexes for table `tb_diagnosa`
--
ALTER TABLE `tb_diagnosa`
 ADD PRIMARY KEY (`id_aturan`), ADD UNIQUE KEY `id_gejala_2` (`id_gejala`), ADD KEY `id_gejala` (`id_gejala`);

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
 ADD PRIMARY KEY (`id_sispak`), ADD KEY `id_user` (`id_user`), ADD KEY `id_aturan` (`id_penyakit`);

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
MODIFY `id_aturan` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `tb_diagnosa`
--
ALTER TABLE `tb_diagnosa`
MODIFY `id_aturan` bigint(20) NOT NULL AUTO_INCREMENT;
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
