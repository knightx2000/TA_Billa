-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2016 at 02:47 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

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
(15, 'G000006', 'P000004'),
(16, 'G000001', 'P000005'),
(17, 'G000002', 'P000005'),
(18, 'G000007', 'P000005'),
(19, 'G000001', 'P000006'),
(20, 'G000008', 'P000006'),
(21, 'G000009', 'P000007'),
(22, 'G000010', 'P000007'),
(23, 'G000011', 'P000007'),
(24, 'G000009', 'P000008'),
(25, 'G000010', 'P000008'),
(26, 'G000012', 'P000008'),
(27, 'G000009', 'P000009'),
(28, 'G000013', 'P000009'),
(29, 'G000014', 'P000009'),
(30, 'G000009', 'P000010'),
(31, 'G000013', 'P000010'),
(32, 'G000015', 'P000010'),
(33, 'G000016', 'P000011'),
(34, 'G000017', 'P000011'),
(35, 'G000018', 'P000011'),
(36, 'G000016', 'P000012'),
(37, 'G000017', 'P000012'),
(38, 'G000019', 'P000012'),
(39, 'G000020', 'P000012'),
(40, 'G000016', 'P000013'),
(41, 'G000017', 'P000013'),
(42, 'G000019', 'P000013'),
(43, 'G000021', 'P000013'),
(44, 'G000016', 'P000014'),
(45, 'G000017', 'P000014'),
(46, 'G000022', 'P000014'),
(47, 'G000023', 'P000014'),
(48, 'G000025', 'P000014'),
(49, 'G000016', 'P000015'),
(50, 'G000017', 'P000015'),
(51, 'G000022', 'P000015'),
(52, 'G000023', 'P000015'),
(53, 'G000024', 'P000015'),
(54, 'G000016', 'P000016'),
(55, 'G000017', 'P000016'),
(56, 'G000022', 'P000016'),
(57, 'G000026', 'P000016'),
(58, 'G000016', 'P000017'),
(59, 'G000027', 'P000017'),
(60, 'G000028', 'P000018'),
(61, 'G000029', 'P000018'),
(62, 'G000030', 'P000018'),
(63, 'G000028', 'P000019'),
(64, 'G000031', 'P000019'),
(65, 'G000032', 'P000019'),
(66, 'G000033', 'P000020'),
(67, 'G000034', 'P000020'),
(68, 'G000033', 'P000021'),
(69, 'G000035', 'P000021'),
(70, 'G000036', 'P000022'),
(71, 'G000037', 'P000022'),
(72, 'G000038', 'P000022'),
(73, 'G000036', 'P000023'),
(74, 'G000037', 'P000023'),
(75, 'G000039', 'P000023'),
(76, 'G000036', 'P000024'),
(77, 'G000040', 'P000024'),
(78, 'G000041', 'P000025'),
(79, 'G000042', 'P000025'),
(80, 'G000043', 'P000025'),
(81, 'G000041', 'P000026'),
(82, 'G000042', 'P000026'),
(83, 'G000044', 'P000026'),
(84, 'G000041', 'P000027'),
(85, 'G000045', 'P000027'),
(86, 'G000046', 'P000027'),
(87, 'G000041', 'P000028'),
(88, 'G000045', 'P000028'),
(89, 'G000047', 'P000028'),
(90, 'G000048', 'P000029'),
(91, 'G000049', 'P000029'),
(92, 'G000048', 'P000030'),
(93, 'G000050', 'P000030'),
(94, 'G000051', 'P000031'),
(95, 'G000052', 'P000031'),
(96, 'G000051', 'P000032'),
(97, 'G000053', 'P000032'),
(98, 'G000054', 'P000037'),
(99, 'G000062', 'P000037'),
(100, 'G000054', 'P000036'),
(101, 'G000055', 'P000036'),
(102, 'G000061', 'P000036'),
(103, 'G000054', 'P000035'),
(104, 'G000055', 'P000035'),
(105, 'G000056', 'P000035'),
(106, 'G000058', 'P000035'),
(107, 'G000060', 'P000035'),
(108, 'G000054', 'P000034'),
(109, 'G000055', 'P000034'),
(110, 'G000056', 'P000034'),
(111, 'G000058', 'P000034'),
(112, 'G000059', 'P000034'),
(113, 'G000054', 'P000033'),
(114, 'G000055', 'P000033'),
(115, 'G000056', 'P000033'),
(116, 'G000057', 'P000033');

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
('G000001', 'Batuk', 'G000016', 'G000009', 'Y', 'T', '0.400'),
('G000002', 'Batuk Berdahak', 'G000003', 'G000008', 'T', 'T', '0.200'),
('G000003', 'Batuk Berdahak (Dahak Biasa)', 'G000004', 'G000007', 'T', 'T', '0.400'),
('G000004', 'Peningkatan Suhu Tubuh', 'P000002', 'G000005', 'T', 'T', '0.400'),
('G000005', 'Ditemukan cacing dalam kotoran', 'P000003', 'G000006', 'T', 'T', '0.400'),
('G000006', 'Suara Nafas Rales/Seperti Ada Cairan Dirongga Dada', 'P000004', 'P000001', 'T', 'T', '0.400'),
('G000007', 'Batuk Berdahak (Dahak Berdarah)', 'P000005', 'Z000001', 'T', 'T', '0.400'),
('G000008', 'Batuk Kering', 'P000006', 'Z000001', 'T', 'T', '0.400'),
('G000009', 'Flu', 'G000010', 'G000016', 'T', 'T', '0.200'),
('G000010', 'Pilek (Keluar Cairan Dari Hidung)', 'G000011', 'G000013', 'T', 'T', '0.200'),
('G000011', 'Keluar Cairan Dari Kedua Lubang Hidung', 'P000007', 'G000012', 'T', 'T', '0.400'),
('G000012', 'Keluar Cairan Dari Salah Satu Lubang Hidung', 'P000008', 'Z000001', 'T', 'T', '0.400'),
('G000013', 'Bersin', 'G000014', 'Z000001', 'T', 'T', '0.400'),
('G000014', 'Bersin Berulang-ulang', 'P000009', 'G000015', 'T', 'T', '0.400'),
('G000015', 'Bersin Tidak Berulang', 'P000010', 'Z000001', 'T', 'T', '0.400'),
('G000016', 'Gangguan Pernafasan', 'G000017', 'G000028', 'T', 'T', '0.200'),
('G000017', 'Rasio Nafas Meningkat (Bernafas dengan Cepat)', 'G000018', 'G000027', 'T', 'T', '0.200'),
('G000018', 'Cardiovascular (Detak Jantung Cepat)', 'P000011', 'G000019', 'T', 'T', '0.400'),
('G000019', 'Sulit Bernafas Tapi Tidak Ditemukan Gejala Penyakit Pernafasan', 'G000020', 'G000022', 'T', 'T', '0.400'),
('G000020', 'Suhu Tubuh Tinggi', 'P000012', 'G000021', 'T', 'T', '0.400'),
('G000021', 'Gangguan syaraf (Gerakan Pupil Mata Tidak Normal Dan Kaki Gemetaran)', 'P000013', 'Z000001', 'T', 'T', '0.400'),
('G000022', 'Adanya Gejala Penyakit Pernafasan', 'G000023', 'Z000001', 'T', 'T', '0.400'),
('G000023', 'Sulit Bernafas Dan Tidak Bernafas Lewat Mulut', 'G000024', 'G000026', 'T', 'T', '0.400'),
('G000024', 'Sulit Saat Menghembuskan Nafas', 'P000015', 'G000025', 'T', 'T', '0.400'),
('G000025', 'Sulit Saat Menarik Nafas', 'P000014', 'Z000001', 'T', 'T', '0.400'),
('G000026', 'Sulit Bernafas Dan Bernafas Lewat Mulut', 'P000016', 'Z000001', 'T', 'T', '0.400'),
('G000027', 'Nafas Pelan/Sulit', 'P000017', 'Z000001', 'T', 'T', '0.400'),
('G000028', 'Nafsu Makan Menurun', 'G000029', 'G000033', 'T', 'T', '0.200'),
('G000029', 'Tidak Tertarik Makan', 'G000030', 'Z000001', 'T', 'T', '0.200'),
('G000030', 'Gejala Syaraf Pada Mulut Dan Kepala Normal', 'P000018', 'G000031', 'T', 'T', '0.400'),
('G000031', 'Nafsu Makan Menurun Tetapi Masih Tertarik Makan', 'G000032', 'Z000001', 'T', 'T', '0.400'),
('G000032', 'Adanya Gejala Syaraf (Kepala Menggeleng-geleng)', 'P000019', 'Z000001', 'T', 'T', '0.400'),
('G000033', 'Muntah', 'G000034', 'G000036', 'T', 'T', '0.200'),
('G000034', 'Muntah Tetapi Pasien Masih Sehat', 'P000020', 'G000035', 'T', 'T', '0.400'),
('G000035', 'Muntah Dan Pasien Lesu', 'P000021', 'Z000001', 'T', 'T', '0.400'),
('G000036', 'Diare', 'G000037', 'G000041', 'T', 'T', '0.200'),
('G000037', 'Diare Kronis (Terjadi Berulang)', 'G000038', 'G000040', 'T', 'T', '0.200'),
('G000038', 'Pernah Diberikan Obat Cacing', 'P000022', 'G000039', 'T', 'T', '0.400'),
('G000039', 'Tidak Pernah Diberikan Obat Cacing', 'P000023', 'Z000001', 'T', 'T', '0.400'),
('G000040', 'Diare Akut (Mendadak)', 'P000024', 'Z000001', 'T', 'T', '0.400'),
('G000041', 'Berat badan turun', 'G000042', 'G000048', 'T', 'T', '0.200'),
('G000042', 'Nafsu Makan Normal', 'G000043', 'G000045', 'T', 'T', '0.200'),
('G000043', 'Penurunan Berat Badan Tapi Asupan Kalori Cukup', 'P000025', 'G000044', 'T', 'T', '0.400'),
('G000044', 'Penurunan Berat Badan Dan Asupan Kalori Tidak Cukup', 'P000026', 'Z000001', 'T', 'T', '0.400'),
('G000045', 'Nafsu Makan Turun', 'G000046', 'Z000001', 'T', 'T', '0.400'),
('G000046', 'Penurunan berat badan kurang dari 2-3% dalam 1 minggu', 'P000027', 'G000047', 'T', 'T', '0.400'),
('G000047', 'Penurunan berat badan lebih dari 2-3% dalam 1 minggu', 'P000028', 'Z000001', 'T', 'T', '0.400'),
('G000048', 'Kencing Berkali-kali', 'G000049', 'G000051', 'T', 'T', '0.200'),
('G000049', 'Asupan Cairan (Minum) Lebih Dari 80 ml/kg/hari', 'P000029', 'G000050', 'T', 'T', '0.400'),
('G000050', 'Asupan Cairan (Minum) Kurang Dari 80 ml/kg/hari', 'P000030', 'Z000001', 'T', 'T', '0.400'),
('G000051', 'Demam', 'G000052', 'G000054', 'T', 'T', '0.200'),
('G000052', 'Suhu Tubuh <40 Derajat Celcius dan Pasien Sehat', 'P000031', 'G000053', 'T', 'T', '0.400'),
('G000053', 'Suhu Tubuh 40-41Derajat Celcius', 'P000032', 'Z000001', 'T', 'T', '0.400'),
('G000054', 'Mukosa', 'G000055', 'Z000001', 'T', 'T', '0.200'),
('G000055', 'Pucat', 'G000056', 'G000062', 'T', 'T', '0.200'),
('G000056', 'Adanya Pendarahan', 'G000057', 'G000061', 'T', 'T', '0.200'),
('G000057', 'Adanya Luka', 'P000033', 'G000058', 'T', 'T', '0.400'),
('G000058', 'Ada Pendarahan Tapi Tidak Ada Luka', 'G000059', 'Z000001', 'T', 'T', '0.400'),
('G000059', 'Ada Bintik Merah Di Abdomen', 'P000034', 'G000060', 'T', 'T', '0.400'),
('G000060', 'Keracunan/Memakan Sesuatu (obat/racun tikus)', 'P000035', 'Z000001', 'T', 'T', '0.400'),
('G000061', 'Tidak Ada Pendarahan', 'P000036', 'Z000001', 'T', 'T', '0.400'),
('G000062', 'Wajah Terlihat Kuning', 'P000037', 'Z000001', 'T', 'T', '0.400'),
('G000063', 'susah tidur', '', '', 'T', 'T', NULL);

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
('P000001', 'Nasopharyngeal disease', 'Lakukan operasi bila ditemukan tumor', 'Aminophylline 4-10mg/kg BB 3 kali/hari', 'Cukup Berbahaya'),
('P000002', 'Inflamatory', 'Berikan obat selama 3 hari, apabila sakit berlanjut hubungi dokter', 'Flunixin meglumin 1mg/kg BB satu kali/hari', 'Ringan'),
('P000003', 'Parasitic', 'Ulangi 3 minggu', 'Ivermectine 0,2mg/kgBB ', 'Ringan'),
('P000004', 'Oedema', 'Berikan obat selama 3 hari, apabila sakit berlanjut hubungi dokter', 'Furosemide 5mg/kg BB 1-2 kali/hari', 'Cukup Berbahaya'),
('P000005', 'Infeksi bakteri', '-', 'Amoxicillin (22mg/kgBB q8h-q12h PO)', 'Cukup Berbahaya'),
('P000006', 'Neoplasia', 'Lakukan operasi bila ditemukan tumor', 'Prednisone (1mg/kg q12h)', 'Sangat Berbahaya'),
('P000007', 'Alergi', 'Hilangkan penyebab alergi', 'Chlorpheniramine:4-8mg/anjing q8-12h', 'Ringan'),
('P000008', 'Foreign body', 'Angkat benda asing', '-', 'Cukup Berbahaya'),
('P000009', 'Nasopharyngeal', 'Lakukan operasi bila ditemukan tumor', 'Prednisone (1mg/kg q12h)', 'Cukup Berbahaya'),
('P000010', 'Infeksi pada hidung', 'Berikan obat selama 3 hari, apabila sakit berlanjut hubungi dokter', 'Amoxicillin (22mg/kgBB q8h-q12h PO)', 'Cukup Berbahaya'),
('P000011', 'CHF (Congestive heart failure)', 'Konsultasikan dengan dokter hewan', 'Pemberian Oksigen', 'Sangat Berbahaya'),
('P000012', 'Hyperthermia', '-', 'Antipyretic ( dipyrone 25 mg/kg BB)', 'Cukup Berbahaya'),
('P000013', 'Metabolic acidosis', '-', 'Thiamin 0.5-11 mg/kg BB, Diazepam 0.25-0.5 mg/kg', 'Cukup Berbahaya'),
('P000014', 'Pharyngeal/laryngeal or tracheal disease', 'Berikan obat selama 3 hari, apabila sakit berlanjut hubungi dokter', 'Aminophylline 11mg/kg BB 3 kali/hari', 'Cukup Berbahaya'),
('P000015', 'Lower airway diseases', '-', 'Terbutaline (1.25-5.0 mg/dog q8-12h)', 'Cukup Berbahaya'),
('P000016', 'Nasal', '-', 'Prednisone (1mg/kg q12h)', 'Ringan'),
('P000017', 'Dispnea', 'Dibawa kerumah sakit untuk dilakukan x-ray', '-', 'Cukup Berbahaya'),
('P000018', 'Kelainan gastrointestinal', '-', 'Ulsicur (Cimetidine 5-10mg/kg BB)', 'Cukup Berbahaya'),
('P000019', 'Masticatory Muscle Myositis', '-', 'Dexamethasone 5mg/kg BB, Flunixin meglumin 1mg/kg BB satu kali/hari', 'Cukup Berbahaya'),
('P000020', 'Vomiting', 'Pasien hanya perlu diawasi (kemungkinan tersedak/memakan sesuatu yang dianggap tidak enak)', '-', 'Ringan'),
('P000021', 'Gastrointestinal or abdominal disease', '-', 'Ulsicur (Cimetidine 5-10mg/kg BB)', 'Cukup Berbahaya'),
('P000022', 'Cacingan', 'Berikan obat selama 3 hari, apabila sakit berlanjut hubungi dokter', 'Fenbendazole :50 mg/kg PO q24h', 'Ringan'),
('P000023', 'Dietary Trial', 'Berikan pakan yang lembek dan kurangi protein', '-', 'Ringan'),
('P000024', 'Protoza', 'Berikan obat selama 5 hari, apabila sakit berlanjut hubungi dokter', 'Metronidazole : 30-60 mg/kg PO q24h selama 5 hari, Trimetophrim-sulfonamid 15-30mg/kgBB', 'Ringan'),
('P000025', 'Kehilangan asupan kalori', 'Berikan makanan berkalori tinggi', '-', 'Cukup Berbahaya'),
('P000026', 'Kekurangan kalori', 'lakukan pengecekan diet sesuai umur. Jika tidak sesuai atau asupan kurang, koreksi asupan nutrisi dengan pengingkatan jumlah pakan sesuai umur', '-', 'Ringan'),
('P000027', 'Inappetance', 'Lakukan Diagnosa dibagian penurunan nafsu makan', '', 'Ringan'),
('P000028', 'Kekurangan nutrisi', 'Koreksi asupan nutrisi', '-', 'Ringan'),
('P000029', 'Neurologic disease', '-', 'Thiamin 0.5-11 mg/kg BB', 'Cukup Berbahaya'),
('P000030', 'Fear', 'Jauhkan anjing dari benda atau apapun yang membuat takut', '-', 'Ringan'),
('P000031', 'Penyakit lambung', 'Lakukan pengawasan selama 48 jam, apabila masih belum ada perubahan, segera bawa kedokter', 'Antipyretic (aspirin 0,5mg/kg BB) dan  Gastric protectant (antasida)', 'Cukup Berbahaya'),
('P000032', 'Demam tinggi', 'Segera dibawa dokter hewan untuk dilakukan tindakan lebih lanjut seperti x-ray dan pengecekan darah', '-', 'Cukup Berbahaya'),
('P000033', 'Internal / External Haemorrhage', 'Penutupan luka perdarahan karena traumatik (perban)', '-', 'Cukup Berbahaya'),
('P000034', 'Immune-mediated', '-', 'Visorbin, liquid iron and multiple vitamin supplement (1 sendok teh PO q24h)', 'Sangat Berbahaya'),
('P000035', 'Toxic: Warfarin', '-', 'Vit K1 0.25-2.5mg/kgBB', 'Sangat Berbahaya'),
('P000036', 'Iron deficiency', 'Pemberian therapy cairan', 'Vitamin dengan kandungan zatbesi Ferrous gluconate (325 mg) tablet PO q24h', 'Cukup Berbahaya'),
('P000037', 'Jaundice', 'Segera bawa kedokter untuk dilakukan pemeriksaan darah', '-', 'Sangat Berbahaya'),
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
('S000039', '2015-08-01', 'U000002', 'P000006', '0.528', '', '', 0, 0),
('S000040', '2015-08-01', 'U000002', 'P000018', '0.489', '', '', 0, 0),
('S000041', '2015-08-01', 'U000002', 'P000024', '0.528', '', '', 0, 0),
('S000042', '2015-08-01', 'U000002', 'P000037', '0.528', '', '', 0, 0),
('S000043', '2015-08-03', 'U000004', 'P000018', '0.489', '', '', 0, 0),
('S000044', '2015-08-03', 'U000005', 'P000005', '0.489', '', '', 0, 0),
('S000045', '2015-08-03', 'U000005', 'P000011', '0.489', '', '', 0, 0),
('S000046', '2015-08-03', 'U000005', 'P000002', '0.533', '', '', 0, 0),
('S000047', '2015-08-04', 'U000002', 'P000013', '0.533', '', '', 0, 0),
('S000048', '2015-08-05', 'U000002', 'P000037', '0.528', '', '', 0, 0),
('S000049', '2015-08-11', 'U000001', 'P000002', '0.533', 'Agus', 'L', 22, 5),
('S000050', '2015-10-16', 'U000004', 'P000011', '0.489', '', '', 0, 0),
('S000051', '2016-11-30', 'U000006', 'P000012', '0.769', '', '', 0, 0),
('S000052', '2016-12-02', 'U000006', 'P000011', '0.616', '', '', 0, 0);

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
('U000006', 'wahyu@wahyu.com', '12345', 'wahyu', 'T');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_aturan`
--
ALTER TABLE `tb_aturan`
 ADD PRIMARY KEY (`id_aturan`), ADD KEY `id_gejala` (`id_gejala`), ADD KEY `id_penyakit` (`id_penyakit`);

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
MODIFY `id_aturan` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
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
