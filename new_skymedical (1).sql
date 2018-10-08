-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2018 at 02:00 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_skymedical`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_gallery`
--

CREATE TABLE `m_gallery` (
  `pk` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_gallery`
--

INSERT INTO `m_gallery` (`pk`, `gambar`, `deskripsi`, `timestamp`) VALUES
(2, 'medic2.jpg', 'hehe', '2017-06-06 02:24:59'),
(3, 'medic3.jpg', 'hoho', '2017-06-06 02:24:59'),
(14, 'Rumah-Sakit2.jpg', 'hihi', '2017-06-15 03:54:09'),
(15, 'poli2.jpg', 'haha', '2017-06-15 03:57:06'),
(16, 'banner1.png', 'hahaha', '2017-06-15 07:59:10'),
(25, 'rs13.png', 'kjh', '2017-06-16 07:54:50'),
(31, 'rs43.png', 'gfjg', '2017-06-16 08:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `m_jadwal_praktek`
--

CREATE TABLE `m_jadwal_praktek` (
  `pk` int(11) NOT NULL,
  `id_session_jadwal` varchar(30) DEFAULT NULL,
  `pembuat_fk` int(11) DEFAULT NULL,
  `tanggal_praktek` date DEFAULT NULL,
  `jam_praktek` time DEFAULT NULL,
  `dokter_fk` int(11) DEFAULT NULL,
  `informasi_tambahan` varchar(250) DEFAULT NULL,
  `total_pasien` int(11) DEFAULT NULL,
  `batasan_pasien` int(11) DEFAULT NULL,
  `status_terlaksana` varchar(20) DEFAULT NULL,
  `pelayanan_fk` int(11) DEFAULT NULL,
  `rentang_waktu` int(11) NOT NULL DEFAULT '0',
  `perawat_fk` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_jadwal_praktek`
--

INSERT INTO `m_jadwal_praktek` (`pk`, `id_session_jadwal`, `pembuat_fk`, `tanggal_praktek`, `jam_praktek`, `dokter_fk`, `informasi_tambahan`, `total_pasien`, `batasan_pasien`, `status_terlaksana`, `pelayanan_fk`, `rentang_waktu`, `perawat_fk`) VALUES
(19, '08062017-001', 1, '2017-06-15', '10:00:00', 36, '', 0, 10, 'Belum Terlaksana', 14, 0, NULL),
(20, '08062017-002', 1, '2017-06-09', '09:00:00', 46, '', 0, 0, 'Belum Terlaksana', 17, 0, 40),
(24, '13062017-005', 1, '2017-06-13', '16:00:00', 33, '', 0, 100, 'Sedang Terlaksana', 21, 0, 40),
(25, '15062017-004', 1, '2017-06-15', '11:00:00', 48, '', 0, 10, 'Belum Terlaksana', 15, 0, NULL),
(26, '15062017-005', 1, '0000-00-00', '00:00:16', 59, '', 0, 0, 'Belum Terlaksana', 23, 5, NULL),
(30, '13072017-008', 1, '2017-07-13', '02:00:00', 36, 'testing', 0, 0, 'Belum Terlaksana', 17, 0, NULL),
(28, '19062017-007', 1, '2017-09-16', '14:00:00', 83, 'kolom informasi tambahan pada menu tambah jadwal praktek', 100, 130, 'Sedang Terlaksana', 21, 5, 84),
(29, '10072017-008', 1, '2017-07-10', '09:15:00', 52, 'test jadwal praktek', 1, 5, 'Sedang Terlaksana', 21, 0, 40),
(31, '13072017-009', 1, '2017-07-13', '11:00:00', 48, 'Test Info', 0, 0, 'Belum Terlaksana', 15, 0, NULL),
(32, '14072017-010', 1, '2017-07-14', '10:00:00', 36, 'info', 0, 0, 'Belum Terlaksana', 14, 0, 40),
(33, '14072017-011', 1, '2017-07-14', '13:00:00', 46, 'jadwal', 0, 0, 'Belum Terlaksana', 17, 0, NULL),
(34, '23012018-001', 1, '2018-01-23', '10:00:00', 57, 'dfghj', 0, 2, 'Belum Terlaksana', 14, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_jadwal_praktek_antrian`
--

CREATE TABLE `m_jadwal_praktek_antrian` (
  `pk` int(11) NOT NULL,
  `jadwal_praktek_fk` int(11) DEFAULT NULL,
  `pasien_fk` int(11) DEFAULT NULL,
  `nomor_registrasi_pasien` varchar(30) DEFAULT NULL,
  `jadwal_kunjung` datetime DEFAULT NULL,
  `realisasi_kunjung` datetime DEFAULT NULL,
  `status_antrian` varchar(30) DEFAULT NULL,
  `nomor_urut` int(11) NOT NULL,
  `status_sms_terkirim` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_jadwal_praktek_antrian`
--

INSERT INTO `m_jadwal_praktek_antrian` (`pk`, `jadwal_praktek_fk`, `pasien_fk`, `nomor_registrasi_pasien`, `jadwal_kunjung`, `realisasi_kunjung`, `status_antrian`, `nomor_urut`, `status_sms_terkirim`) VALUES
(79, 20, 41, 'PA001', '2017-06-09 09:00:00', '2017-06-09 10:58:24', 'Selesai', 1, 0),
(80, 20, 44, 'PA002', '2017-06-09 09:00:00', '2017-06-09 09:33:39', 'Selesai', 2, 0),
(81, 19, 44, 'PA002', '2017-06-15 10:00:00', '2017-06-15 10:30:04', 'Terjadwalkan', 1, 0),
(82, 19, 41, 'PA001', '2017-06-15 10:00:00', '0000-00-00 00:00:00', 'Terjadwalkan', 2, 0),
(83, 28, 86, '321456', '2017-09-16 14:05:00', '0000-00-00 00:00:00', 'Selesai', 1, 0),
(84, 28, 49, 'PA003', '2017-09-16 14:10:00', '0000-00-00 00:00:00', 'Selesai', 2, 0),
(85, 32, 44, 'PA002', '2017-07-14 10:00:00', '0000-00-00 00:00:00', 'Terjadwalkan', 1, 0),
(86, 30, 44, '57', '2018-01-10 09:00:00', '0000-00-00 00:00:00', 'Diantrikan', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_jenis_pelayanan`
--

CREATE TABLE `m_jenis_pelayanan` (
  `pk` int(11) NOT NULL,
  `jenis_pelayanan` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_jenis_pelayanan`
--

INSERT INTO `m_jenis_pelayanan` (`pk`, `jenis_pelayanan`) VALUES
(1, 'Poli Spesialis'),
(2, 'Poli Umum');

-- --------------------------------------------------------

--
-- Table structure for table `m_kontak`
--

CREATE TABLE `m_kontak` (
  `pk` int(11) NOT NULL,
  `nomor_registrasi` varchar(15) DEFAULT NULL,
  `tanggal_registrasi` date DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `golongan_darah` varchar(5) DEFAULT NULL,
  `usia` int(3) DEFAULT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `nama_ibu_kandung` varchar(50) NOT NULL,
  `metode_pembayaran_fk` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `approved` varchar(20) NOT NULL,
  `status_login` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_kontak`
--

INSERT INTO `m_kontak` (`pk`, `nomor_registrasi`, `tanggal_registrasi`, `nomor_telepon`, `nama`, `alamat`, `kecamatan`, `kelurahan`, `kota`, `provinsi`, `golongan_darah`, `usia`, `jenis_kelamin`, `nama_ibu_kandung`, `metode_pembayaran_fk`, `username`, `password`, `email`, `approved`, `status_login`) VALUES
(1, '1', '2017-05-08', '085727663805', 'Admin', 'Jl Slamet Riyadi 26 A', 'Laweyan', 'Sriwedari', 'Surakarta', 'Jawa Tengah', 'A', 27, '', '', 0, 'admin', 'admin', 'admin@amal_sehat.co.id', '', 'admin'),
(33, 'D000001', '2017-06-07', '-', 'dr. Soeharto, Sp.PD', '-', '-', '-', 'SOLO', '-', '', 0, '', '', 0, 'soeharto', '123456', '-', '', 'dokter'),
(34, 'N000001', '2017-06-07', '-', 'Andhi Irawan, AMK', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'andhi', '123456', '-', '', 'perawat'),
(36, 'DR001', '2015-07-06', '0272-112233', 'dr. Test, SpB', 'Solo', '-', '-', '-', 'Jawa Tengah', 'O', 29, '', '', 0, 'test', 'test', 'testing@gmail.com', '1', 'dokter'),
(40, 'PR001', '2015-11-16', '-', 'Perawat coba', 'Solobaru', '-', '-', 'Sukoharjo', 'Jawa Tengah', 'A', 25, '', '', 0, 'coba', 'coba', '-', '1', 'perawat'),
(41, 'PA001', '2016-02-01', '0272-21212', 'Pasien Coba', 'Wonogiri', '-', '-', '-', 'Jawa Tengah', 'B', 26, '', '', 3, 'pasien', 'pasien', '-', '1', 'pasien'),
(44, 'PA002', '2017-06-07', '0272345678', 'Tes Pasien', 'Solo', '-', '-', 'Solo', 'Jawa Tengah', 'O', 24, '', '', 4, 'pasien1', 'pasien1', '-', '1', 'pasien'),
(45, '06062017003', '2017-06-08', '9789789', 'dfgdfhfgh', 'gfhfghfh', 'fghfh', 'fghfh', 'fghfgh', 'fghfgh', 'B', 56, '', '', 0, 'dokter1', 'dokter1', 'adi.pamungkas89@gmail.com', '1', 'dokter'),
(46, 'DR002', '0000-00-00', '-', 'dr. Coba, Sp.Rad', 'Sukoharjo', '-', '-', 'Sukoharjo', 'Jawa Tengah', 'B', 32, '', '', 0, 'test1', 'test1', '-', '1', 'dokter'),
(48, 'DR004', '0000-00-00', '-', 'dr. Umum', 'Wonogiri', '', '', 'Wonofiri', 'Jawa Tengah', 'A', 33, '', '', 0, 'test3', 'test3', '-', '1', 'dokter'),
(49, 'PA003', '2017-06-09', '0272333111', 'Pasien Testing', 'Jl. Ir. Soekarno', 'Solobaru', 'Cemani', 'Sukoharjo', 'Jawa Tengah', 'O', 33, '', '', 4, 'pasien2', '123456', '-', '1', 'pasien'),
(52, 'D000002', '2017-06-10', '-', 'dr. Suharto, Sp.PD', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'suharto', '123456', '-', '1', 'dokter'),
(53, 'D000003', '2017-06-10', '-', 'dr. Bambang Eko Wiyono, M.Kes.,Sp.OG', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'BAMBANG', '123456', '-', '1', 'dokter'),
(54, 'D000004', '2017-06-10', '-', 'dr. Cakra Bumi Wisnubrata.,Sp.OG', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'CAKRA', '123456', '-', '1', 'dokter'),
(55, 'D000005', '2017-06-10', '-', 'dr. Heru Wibowo Putro, Sp.M', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'HERU', '123456', '-', '1', 'dokter'),
(56, 'D000006', '2017-06-10', '-', 'dr. Ahmad Salimi Jauhari, Sp.OT', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'SALIMI', '123456', '-', '1', 'dokter'),
(57, 'D000007', '2017-06-10', '-', 'dr. Utama, Sp.B', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'UTAMA', '123456', '-', '1', 'dokter'),
(58, 'D000008', '2017-06-10', '-', 'dr. Yosie Arif Sanjaya, Sp. An', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'YOSIE', '123456', '-', '1', 'dokter'),
(59, 'D000009', '2017-06-10', '-', 'dr. Khairunisa Wardani, M.Sc. Sp. A', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'NISA', '123456', '-', '1', 'dokter'),
(60, 'D000010', '0000-00-00', '-', 'dr. Zustain Noor Adhim, M.Kes.,Sp.A', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'ZUSTAIN', '123456', '-', '1', 'dokter'),
(61, 'D000011', '0000-00-00', '-', 'dr. Misna Hati, Sp. S', '-', '-', '--', '-', '-', '', 0, '', '', 0, 'MISNA', '123456', '-', '1', 'dokter'),
(62, 'D000012', '0000-00-00', '-', 'dr. Sukardjo, Sp. THT', '-', '-', '-', '-', '--', '', 0, '', '', 0, 'SUKARDJO', '123456', '-', '1', 'dokter'),
(63, 'D000013', '0000-00-00', '-', 'dr. Diah Hayustiningsih, Sp. THT-KL', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'DIAH', '123456', '-', '1', 'dokter'),
(64, 'D000014', '0000-00-00', '-', 'dr. Endrawati Tri Bowo, M.Sc. Sp. Rad', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'ENDRA', '123456', '-', '1', 'dokter'),
(65, 'D000015', '0000-00-00', '-', 'dr. Iim Mariani Ulfa, M.Sc, Sp.PK', '-', '--', '-', '-', '-', '', 0, '', '', 0, 'MARIANI', '123456', '-', '1', 'dokter'),
(66, 'D000016', '0000-00-00', '-', 'dr. Rosyid Ridlo, MMR', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'ROSYID', '123456', '-', '1', 'dokter'),
(67, 'D000017', '0000-00-00', '-', 'dr. Iis Lisnawati', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'LISNAWATI', '123456', '-', '1', 'dokter'),
(68, 'D000018', '0000-00-00', '-', 'dr. Silvy Tri Ambarwati', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'SILVY', '123456', '-', '1', 'dokter'),
(69, 'D000019', '0000-00-00', '-', 'dr. Saryana', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'SARYANA', '123456', '-', '1', 'dokter'),
(70, 'D000020', '0000-00-00', '-', 'dr. Bagus Aris Madani', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'BAGUS', '123456', '-', '1', 'dokter'),
(71, 'D000021', '0000-00-00', '-', 'dr. Novi Imam Persada', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'IMAM', '123456', '-', '1', 'dokter'),
(72, 'D000022', '0000-00-00', '-', 'dr. Ismi Ratnasari', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'ISMI', '123456', '-', '1', 'dokter'),
(73, 'D000023', '0000-00-00', '-', 'dr. Mohamad Basroni', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'BASRONI', '123456', '-', '1', 'dokter'),
(74, 'D000024', '0000-00-00', '-', 'dr. Dian Kartika Sari', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'DIAN', '123456', '-', '1', 'dokter'),
(75, 'D000025', '0000-00-00', '-', 'dr. Amalia Primayanti', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'AMALIA', '123456', '-', '1', 'dokter'),
(76, 'D000026', '0000-00-00', '-', 'dr. Hafriliantika Ramadhani', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'HAFRILIANTIKA', '123456', '-', '1', 'dokter'),
(77, 'D000027', '0000-00-00', '-', 'dr. Asih Novea Krediastuti', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'NOVEA', '123456', '-', '1', 'dokter'),
(78, 'D000028', '0000-00-00', '-', 'dr. Wildan Syamsudin Fahmi', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'WILDAN', '123456', '-', '1', 'dokter'),
(79, 'D000029', '0000-00-00', '-', 'dr. Rizky Mukti Sejati', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'RIZKY', '123456', '-', '1', 'dokter'),
(80, 'D000030', '0000-00-00', '-', 'dr. Netta Titisari Januar', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'NETTA', '123456', '-', '1', 'dokter'),
(81, 'D000031', '0000-00-00', '-', 'drg. Muchammad Machi', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'MACHI', '123456', '-', '1', 'dokter'),
(82, 'D000032', '0000-00-00', '-', 'drg. Nur Eliyati Rahmah ', '-', '-', '-', '-', '-', '', 0, '', '', 0, 'RAHMAH', '123456', '-', '1', 'dokter'),
(83, 'd000121', '2013-07-01', '08387654311', 'dr. Amal Sehat, Sp.Pd', 'ngerjopuro', 'slogohimo', 'slogohimo', 'wonogiri', 'jawa tengah', 'A', 40, '', '', 0, 'dokter_ganteng', '123456', 'email_coba@yahoo.co.id', '1', 'dokter'),
(84, 'PR0004', '2016-01-01', '08386434520', 'perawat ganteng banget', 'Jl. Ngerjopuro RT.01 RW.02', 'Slogohimo', 'Slogohimo', 'Wonogiri', 'Jawa Tengah', 'O', 30, '', '', 0, 'perawat_ganteng', '123456', 'mas_udi89@yahoo.co.id', '1', 'perawat'),
(86, '321456', '2017-06-19', '08386434520', 'Pasien Ganteng', 'Jl. Ngerjopuro RT.01 RW.02', 'Slogohimo', 'Slogohimo', 'Wonogiri', 'Jawa Tengah', 'A', 27, '', '', 0, 'pasien_ganteng', '123456', 'mas_udi89@yahoo.co.id', '1', 'pasien'),
(87, '7868', '2018-01-02', '2343234', 'pasien baru', 'uiedniu3', 'nfrufiurfb', 'lalala', 'nanana', 'bfygruyfb', 'B', 76, 'P', 'njrinf', 4, 'pasienxx', 'pasienxx', 'asdk', '1', 'pasien'),
(88, '0987654', '2018-01-04', '0974456', 'asdfghjk', 'erthgvcx', 'mnghf', 'oikjhg', 'eghnm', 'poijhgvc', 'AB', 56, 'L', 'rtgfg', 3, 'pasiennn', '1234', 'rtyjnbvc', '1', 'pasien');

-- --------------------------------------------------------

--
-- Table structure for table `m_metode_pembayaran`
--

CREATE TABLE `m_metode_pembayaran` (
  `pk` int(10) NOT NULL,
  `metode_bayar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_metode_pembayaran`
--

INSERT INTO `m_metode_pembayaran` (`pk`, `metode_bayar`) VALUES
(3, 'Asuransi'),
(4, 'BPJS');

-- --------------------------------------------------------

--
-- Table structure for table `m_pelayanan`
--

CREATE TABLE `m_pelayanan` (
  `pk` int(11) NOT NULL,
  `nama_pelayanan` varchar(100) DEFAULT NULL,
  `id_pelayanan` varchar(25) DEFAULT NULL,
  `deskripsi_pelayanan` varchar(200) DEFAULT NULL,
  `image_pelayanan_head` varchar(70) DEFAULT NULL,
  `image_pelayanan_foot` varchar(70) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `jenis_pelayanan_fk` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_pelayanan`
--

INSERT INTO `m_pelayanan` (`pk`, `nama_pelayanan`, `id_pelayanan`, `deskripsi_pelayanan`, `image_pelayanan_head`, `image_pelayanan_foot`, `image`, `jenis_pelayanan_fk`) VALUES
(26, 'Poliklinik Spesialis Urologi', 'S000007', '', NULL, NULL, '', 1),
(25, 'Poliklinik Spesialis Mata', 'S000006', '', NULL, NULL, '', 1),
(31, 'Poli spesialis Syaraf', 'SPSYRF', 'Pemeriksaan dokter spesialis syaraf', NULL, NULL, 'kerala-home-design-house-plans-indian-budget-models-small-in_house-plan-3d-model_home-decor_modern-h', 1),
(21, 'Poliklinik Spesialis Penyakit Dalam', 'S000002', '', NULL, NULL, '', 1),
(22, 'Poliklinik Spesialis Obstetri Ginekologi', 'S000003', '', NULL, NULL, '', 1),
(23, 'Poliklinik Spesialis Anak', 'S000004', '', NULL, NULL, '', 1),
(17, 'Radiologi', 'RD01', '', NULL, NULL, 'rs12.png', 2),
(15, 'Poli Umum', 'KL01', '', NULL, NULL, 'rs41.png', 2),
(14, 'Klinik Bedah', 'KL02', '', NULL, NULL, 'rs3.png', 1),
(24, 'Poliklinik Spesialis THT', 'S000005', '', NULL, NULL, '', 1),
(20, 'Klinik Obsgyn', 'KL03', '', NULL, NULL, 'rs42.png', 2),
(27, 'Poliklinik Spesialis Bedah Umum', 'S000008', '', NULL, NULL, '', 1),
(28, 'Poliklinik Spesialis Radiologi', 'S000009', '', NULL, NULL, '', 1),
(29, 'Poliklinik Spesialis Orthopedi', 'S000010', '', NULL, NULL, '', 1),
(30, 'Poliklinik Gigi dan Mulut', 'S000011', '', NULL, NULL, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_perawat_pelayanan`
--

CREATE TABLE `m_perawat_pelayanan` (
  `pk_perawat_pelayanan` int(11) NOT NULL,
  `perawat_fk` int(11) NOT NULL,
  `pelayanan_fk` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_perawat_pelayanan`
--

INSERT INTO `m_perawat_pelayanan` (`pk_perawat_pelayanan`, `perawat_fk`, `pelayanan_fk`) VALUES
(1, 6, 1),
(2, 6, 3),
(3, 12, 2),
(4, 12, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_gallery`
--
ALTER TABLE `m_gallery`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `m_jadwal_praktek`
--
ALTER TABLE `m_jadwal_praktek`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `m_jadwal_praktek_antrian`
--
ALTER TABLE `m_jadwal_praktek_antrian`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `m_jenis_pelayanan`
--
ALTER TABLE `m_jenis_pelayanan`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `m_kontak`
--
ALTER TABLE `m_kontak`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `m_metode_pembayaran`
--
ALTER TABLE `m_metode_pembayaran`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `m_pelayanan`
--
ALTER TABLE `m_pelayanan`
  ADD PRIMARY KEY (`pk`);

--
-- Indexes for table `m_perawat_pelayanan`
--
ALTER TABLE `m_perawat_pelayanan`
  ADD PRIMARY KEY (`pk_perawat_pelayanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_gallery`
--
ALTER TABLE `m_gallery`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `m_jadwal_praktek`
--
ALTER TABLE `m_jadwal_praktek`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `m_jadwal_praktek_antrian`
--
ALTER TABLE `m_jadwal_praktek_antrian`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `m_jenis_pelayanan`
--
ALTER TABLE `m_jenis_pelayanan`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_kontak`
--
ALTER TABLE `m_kontak`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `m_metode_pembayaran`
--
ALTER TABLE `m_metode_pembayaran`
  MODIFY `pk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_pelayanan`
--
ALTER TABLE `m_pelayanan`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `m_perawat_pelayanan`
--
ALTER TABLE `m_perawat_pelayanan`
  MODIFY `pk_perawat_pelayanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
