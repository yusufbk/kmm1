-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29 Jan 2018 pada 03.05
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newskymedical`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gammu`
--

CREATE TABLE `gammu` (
  `Version` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gammu`
--

INSERT INTO `gammu` (`Version`) VALUES
(17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `inbox`
--

CREATE TABLE `inbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReceivingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text NOT NULL,
  `SenderNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `RecipientID` text NOT NULL,
  `Processed` enum('false','true') NOT NULL DEFAULT 'false',
  `Status` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `inbox`
--

INSERT INTO `inbox` (`UpdatedInDB`, `ReceivingDateTime`, `Text`, `SenderNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `RecipientID`, `Processed`, `Status`) VALUES
('2018-01-17 06:56:50', '2018-01-17 06:25:36', '', '085602007066', 'Default_No_Compression', '', '', -1, 'baru#Muhammad Hendra Nailul Haqq#24-11-1997#Jalan Pelita 3 Jenggot#RD01#3#17-01-2018', 1, '', 'true', -1),
('2018-01-17 06:56:50', '2018-01-17 06:31:38', '', '085602007066', 'Default_No_Compression', '', '', -1, 'BARU#Muhammad Hendra Nailul Haqq#24-11-1997#Jalan Pelita 3 Jenggot#RD01#3#17-01-2018', 2, '', 'true', -1),
('2018-01-17 06:58:14', '2018-01-17 06:58:13', '', '085602007064', 'Default_No_Compression', '', '', -1, 'baru#Muhammad Hendra#24-11-1997#Jalan Pelita 3 Jenggot#RD01#3#17-01-2018', 3, '', 'true', -1),
('2018-01-17 07:07:32', '2018-01-17 07:03:13', '', '', 'Default_No_Compression', '', '', -1, 'baru#Muhammad Hendra Nailul Haqq#L#24-11-1997#Jalan Pelita 3 Jenggot#Ibu#RD01#3#17-01-2018', 4, '', 'true', -1),
('2018-01-22 09:05:39', '2018-01-22 09:05:33', '', '085602007066', 'Default_No_Compression', '', '', -1, 'baru#Muhammad Hendra Nailul Haqq#L#24-11-1997#Jalan Pelita 3 Jenggot#L#Radiologi#BPJS#22-01-2018', 5, '', 'true', -1),
('2018-01-22 09:07:44', '2018-01-22 09:07:43', '', '085602007066', 'Default_No_Compression', '', '', -1, 'baru#PASIEN COBA 1#L#24-11-1997#Jalan Pelita 3 Jenggot#L#Radiologi#BPJS#22-01-2018', 6, '', 'true', -1),
('2018-01-23 02:20:29', '2018-01-23 02:20:28', '', '096785467687', 'Default_No_Compression', '', '', -1, 'hehe', 7, '', 'true', -1),
('2018-01-23 02:29:53', '2018-01-23 02:29:49', '', '085602007066', 'Default_No_Compression', '', '', -1, 'baru#PASIEN COBA 1#L#24-11-1997#Jalan Pelita 3 Jenggot#ibu pasien#Radiologi#BPJS#22-01-2018', 8, '', 'true', -1),
('2018-01-23 03:26:14', '2018-01-23 03:24:50', '', '088888888880', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 9#L#24-11-1997#Jalan Pelita 3 Jenggot#ibu pasien#Poliklinik Spesialis Obstetri Ginekologi#BPJS#23-01-2018', 9, '', 'true', -1),
('2018-01-23 03:27:54', '2018-01-23 03:27:50', '', '081081081081', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 10#L#24-11-1997#Jalan Pelita 3 Jenggot#ibu pasien#Poliklinik Spesialis Obstetri Ginekologi#BPJS#2018-01-23', 10, '', 'true', -1),
('2018-01-23 03:34:18', '2018-01-23 03:34:15', '', '081081081081', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 11#L#12-04-1992#Jalan Pisang#ibu pasien#Poliklinik Spesialis Obstetri Ginekologi#asuransi#23-01-2018', 11, '', 'true', -1),
('2018-01-23 06:37:46', '2018-01-23 06:37:43', '', '089876543210', 'Default_No_Compression', '', '', -1, 'info poli#2018-01-22', 12, '', 'true', -1),
('2018-01-23 06:41:56', '2018-01-23 06:41:54', '', '081234567890', 'Default_No_Compression', '', '', -1, 'info poli#22-01-2018', 13, '', 'true', -1),
('2018-01-23 06:47:18', '2018-01-23 06:47:17', '', '081234567890', 'Default_No_Compression', '', '', -1, 'info poli#22-01-2018', 14, '', 'true', -1),
('2018-01-23 06:57:19', '2018-01-23 06:57:18', '', '088888888880', 'Default_No_Compression', '', '', -1, 'info poli#22-01-2018', 15, '', 'true', -1),
('2018-01-23 07:14:30', '2018-01-23 07:12:56', '', '089876543210', 'Default_No_Compression', '', '', -1, 'info poli#22-01-2018', 16, '', 'true', -1),
('2018-01-23 08:14:29', '2018-01-23 08:14:16', '', '081234567890', 'Default_No_Compression', '', '', -1, 'info poli#22-01-2018', 17, '', 'true', -1),
('2018-01-23 08:49:53', '2018-01-23 08:49:38', '', '088888888880', 'Default_No_Compression', '', '', -1, 'info poli#22-01-2018', 18, '', 'true', -1),
('2018-01-23 08:52:31', '2018-01-23 08:52:22', '', '081234567890', 'Default_No_Compression', '', '', -1, 'info poli#22-01-2018', 19, '', 'true', -1),
('2018-01-24 01:20:06', '2018-01-24 01:16:45', '', '081081081081', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 20, '', 'true', -1),
('2018-01-24 01:26:44', '2018-01-24 01:26:42', '', '088888888880', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 21, '', 'true', -1),
('2018-01-24 01:35:05', '2018-01-24 01:35:02', '', '089876543210', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 22, '', 'true', -1),
('2018-01-24 01:44:47', '2018-01-24 01:44:39', '', '081234567890', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 23, '', 'true', -1),
('2018-01-24 01:46:09', '2018-01-24 01:46:05', '', '081081081081', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 24, '', 'true', -1),
('2018-01-24 01:47:43', '2018-01-24 01:47:39', '', '088888888880', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 25, '', 'true', -1),
('2018-01-24 01:51:09', '2018-01-24 01:51:07', '', '081234567890', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 26, '', 'true', -1),
('2018-01-24 01:54:39', '2018-01-24 01:54:37', '', '088888888880', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 27, '', 'true', -1),
('2018-01-24 01:56:08', '2018-01-24 01:56:03', '', '081234567890', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 28, '', 'true', -1),
('2018-01-24 02:07:36', '2018-01-24 02:07:34', '', '081234567890', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 29, '', 'true', -1),
('2018-01-24 02:15:34', '2018-01-24 02:15:32', '', '081081081081', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 30, '', 'true', -1),
('2018-01-24 02:16:49', '2018-01-24 02:16:46', '', '089876543210', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 31, '', 'true', -1),
('2018-01-24 02:33:37', '2018-01-24 02:33:30', '', '081234567890', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 32, '', 'true', -1),
('2018-01-24 02:43:33', '2018-01-24 02:43:30', '', '081081081081', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 33, '', 'true', -1),
('2018-01-24 03:23:23', '2018-01-24 03:23:16', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 12#L#12-04-1992#Jalan Pisang#ibu pasien 12#Radiologi#asuransi#24-01-2018', 34, '', 'true', -1),
('2018-01-24 22:37:00', '2018-01-24 22:36:40', '', '089876543210', 'Default_No_Compression', '', '', -1, 'info poli#27-01-2018', 35, '', 'true', -1),
('2018-01-25 03:07:16', '2018-01-25 03:07:10', '', '088888888880', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 13#L#12-04-1992#Jalan Pisang#ibu pasien 12#Poliklinik Spesialis Anak#asuransi#24-01-2018', 36, '', 'true', -1),
('2018-01-25 03:09:17', '2018-01-25 03:09:13', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 13#L#12-04-1992#Jalan Pisang#ibu pasien 12#Poliklinik Spesialis Anak#asuransi#25-01-2018', 37, '', 'true', -1),
('2018-01-25 03:14:57', '2018-01-25 03:14:53', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 14#L#12-04-1942#Jalan Pisang#ibu pasien 14#Poliklinik Spesialis Anak#asuransi#25-01-2018', 38, '', 'true', -1),
('2018-01-25 03:22:21', '2018-01-25 03:22:16', '', '081081081081', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 15#L#12-04-1961#Jalan Pisang#ibu pasien 15#coba ngawur#25-01-2018', 39, '', 'true', -1),
('2018-01-25 03:33:56', '2018-01-25 03:33:52', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 16#L#12-04-1961#Jalan Pisang#ibu pasien 16#coba ngawur#asuransi#25-01-2018', 40, '', 'true', -1),
('2018-01-25 03:48:23', '2018-01-25 03:48:20', '', '088888888880', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 17#p#12-04-1961#Jalan Pisang#ibu pasien 17#Klinik Obsgyn#asuransi#26-01-2018', 41, '', 'true', -1),
('2018-01-25 03:57:22', '2018-01-25 03:57:19', '', '081081081081', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 18#p#12-04-1961#Jalan Pisang#ibu pasien 17#Klinik Obsgyn#asuransi#26-01-2018', 42, '', 'true', -1),
('2018-01-25 06:14:07', '2018-01-25 06:13:21', '', '081081081081', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 19#p#12-04-1975#Jalan Jeruk#ibu pasien 19#Klinik Obsgyn#bpjs#26-01-2018', 43, '', 'true', -1),
('2018-01-25 06:23:46', '2018-01-25 06:23:41', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 20#p#12-04-1975#Jalan Jeruk#ibu pasien 20#Klinik Obsgyn#bpjs#26-01-2018', 44, '', 'true', -1),
('2018-01-25 06:33:23', '2018-01-25 06:33:21', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 21#p#12-04-1975#Jalan Jeruk#ibu pasien 20#Klinik Obsgyn#bpjs#26-01-2018', 45, '', 'true', -1),
('2018-01-25 06:44:12', '2018-01-25 06:44:09', '', '081081081081', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 22#p#12-04-1975#Jalan Jeruk#ibu pasien 22#Klinik Obsgyn#bpjs#26-01-2018', 46, '', 'true', -1),
('2018-01-25 06:50:09', '2018-01-25 06:50:06', '', '088888888880', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 23#p#12-04-1975#Jalan Jeruk#ibu pasien 23#Poliklinik Spesialis Urologi#bpjs#25-01-2018', 47, '', 'true', -1),
('2018-01-25 06:53:05', '2018-01-25 06:53:02', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 24#p#12-04-1975#Jalan Jeruk#ibu pasien 24#Poliklinik Spesialis Urologi#bpjs#25-01-2018', 48, '', 'true', -1),
('2018-01-25 07:04:56', '2018-01-25 07:04:51', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 25#p#12-04-1975#Jalan Jeruk#ibu pasien 25#Poliklinik Spesialis Urologi#bpjs#25-01-2018', 49, '', 'true', -1),
('2018-01-25 07:13:33', '2018-01-25 07:13:31', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 26#p#12-04-1979#Jalan Jeruk#ibu pasien 26#Poliklinik Spesialis Urologi#bpjs#25-01-2018', 50, '', 'true', -1),
('2018-01-25 07:33:26', '2018-01-25 07:33:23', '', '081234567890', 'Default_No_Compression', '', '', -1, 'lama#PA0006#pasien 12#Poliklinik Spesialis Anak#asuransi#2018-01-25', 51, '', 'true', -1),
('2018-01-25 07:41:13', '2018-01-25 07:35:45', '', '088888888880', 'Default_No_Compression', '', '', -1, 'lama#PA0006#pasien 12#Poliklinik Spesialis Anak#asuransi#2018-01-25', 52, '', 'true', -1),
('2018-01-25 07:51:12', '2018-01-25 07:51:10', '', '081081081081', 'Default_No_Compression', '', '', -1, 'lama#PA0006#pasien 12#Poliklinik Spesialis Anak#asuransi#2018-01-25', 53, '', 'true', -1),
('2018-01-25 07:55:30', '2018-01-25 07:55:26', '', '089876543210', 'Default_No_Compression', '', '', -1, 'lama#PA0006#pasien 12#Poliklinik Spesialis Anak#asuransi#2018-01-25', 54, '', 'true', -1),
('2018-01-25 08:02:55', '2018-01-25 08:02:53', '', '081234567890', 'Default_No_Compression', '', '', -1, 'lama#PA0006#pasien 12#Poliklinik Spesialis Anak#asuransi#2018-01-25', 55, '', 'true', -1),
('2018-01-25 08:05:07', '2018-01-25 08:05:04', '', '088888888880', 'Default_No_Compression', '', '', -1, 'lama#PA0006#pasien 12#Poliklinik Spesialis Anak#asuransi#2018-01-25', 56, '', 'true', -1),
('2018-01-25 08:09:07', '2018-01-25 08:09:04', '', '088888888880', 'Default_No_Compression', '', '', -1, 'lama#PA0007#pasien 13#Poliklinik Spesialis Anak#asuransi#2018-01-25', 57, '', 'true', -1),
('2018-01-25 08:42:18', '2018-01-25 08:42:08', '', '081081081081', 'Default_No_Compression', '', '', -1, 'lama#PA0007#pasien 13#Poliklinik Spesialis Anak#asuransi#2018-01-25', 58, '', 'true', -1),
('2018-01-25 08:43:36', '2018-01-25 08:43:33', '', '081081081081', 'Default_No_Compression', '', '', -1, 'lama#PA0007#pasien 13#Poliklinik Spesialis Anak#asuransi#2018-01-25', 59, '', 'true', -1),
('2018-01-25 09:18:27', '2018-01-25 09:18:21', '', '089876543210', 'Default_No_Compression', '', '', -1, 'lama#PA0008#pasien 14#Poliklinik Spesialis Urologi#bpjs#2018-01-25', 60, '', 'true', -1),
('2018-01-25 09:23:25', '2018-01-25 09:23:19', '', '081234567890', 'Default_No_Compression', '', '', -1, 'lama#PA0008#pasien 14#Poliklinik Spesialis Urologi#bpjs#2018-01-25', 61, '', 'true', -1),
('2018-01-25 09:31:47', '2018-01-25 09:30:39', '', '089876543210', 'Default_No_Compression', '', '', -1, 'lama#PA0005#pasien 11#Poliklinik Spesialis Urologi#bpjs#2018-01-25', 62, '', 'true', -1),
('2018-01-25 14:27:20', '2018-01-25 14:27:07', '', '081081081081', 'Default_No_Compression', '', '', -1, 'lama#PA0005#pasien 11#Poli Umum#bpjs#2018-01-25', 63, '', 'true', -1),
('2018-01-25 21:58:12', '2018-01-25 21:58:01', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 27#p#12-04-2010#Jalan Nangka#ibu pasien 27#Klinik Obsgyn#bpjs#26-01-2018', 64, '', 'true', -1),
('2018-01-25 22:03:14', '2018-01-25 22:03:10', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 28#p#12-04-2010#Jalan Nangka#ibu pasien 28#Klinik Obsgyn#bpjs#26-01-2018', 65, '', 'true', -1),
('2018-01-25 22:10:06', '2018-01-25 22:06:30', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 29#p#12-04-2010#Jalan Nangka#ibu pasien 29#Klinik Obsgyn#bpjs#26-01-2018', 66, '', 'true', -1),
('2018-01-25 22:10:07', '2018-01-25 22:07:22', '', '089876543210', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 30#p#12-04-2011#Jalan Nangka#ibu pasien 30#Klinik Obsgyn#bpjs#26-01-2018', 67, '', 'true', -1),
('2018-01-25 22:10:07', '2018-01-25 22:10:04', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 31#p#12-04-2011#Jalan Nangka#ibu pasien 31#Klinik Obsgyn#bpjs#26-01-2018', 68, '', 'true', -1),
('2018-01-25 22:16:55', '2018-01-25 22:16:53', '', '081081081081', 'Default_No_Compression', '', '', -1, 'lama#PA0001#yusuf#Klinik Obsgyn#bpjs#2018-01-26', 69, '', 'true', -1),
('2018-01-26 00:52:03', '2018-01-26 00:51:51', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 32#p#12-04-2011#Jalan Nangka#ibu pasien 32#Klinik Obsgyn#bpjs#26-01-2018', 70, '', 'true', -1),
('2018-01-26 01:10:36', '2018-01-26 01:10:24', '', '081081081081', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 33#p#12-04-2009#Jalan Nangka#ibu pasien 33#Klinik Obsgyn#bpjs#26-01-2018', 71, '', 'true', -1),
('2018-01-26 01:39:27', '2018-01-26 01:39:24', '', '089876543210', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 34#p#12-04-2009#Jalan Nangka#ibu pasien 34#Klinik Obsgyn#bpjs#26-01-2018', 72, '', 'true', -1),
('2018-01-26 01:45:52', '2018-01-26 01:45:49', '', '081081081081', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 35#p#12-04-2009#Jalan Nangka#ibu pasien 35#Klinik Obsgyn#asuransi#26-01-2018', 73, '', 'true', -1),
('2018-01-26 01:47:08', '2018-01-26 01:47:04', '', '088888888880', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 36#p#12-04-2009#Jalan Nangka#ibu pasien 36#Klinik Obsgyn#asuransi#26-01-2018', 74, '', 'true', -1),
('2018-01-26 01:49:51', '2018-01-26 01:49:48', '', '089876543210', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 37#p#12-01-2003#Jalan Nangka#ibu pasien 37#Poliklinik Spesialis Anak#asuransi#30-01-2018', 75, '', 'true', -1),
('2018-01-26 01:54:36', '2018-01-26 01:54:33', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 38#p#12-01-2003#Jalan Nangka#ibu pasien 38#Poliklinik Spesialis Anak#asuransi#30-01-2018', 76, '', 'true', -1),
('2018-01-26 01:56:53', '2018-01-26 01:56:41', '', '081081081081', 'Default_No_Compression', '', '', -1, 'lama#PA0004#pasien 10#Klinik Obsgyn#asuransi#2018-01-26', 77, '', 'true', -1),
('2018-01-26 02:24:21', '2018-01-26 02:24:18', '', '081234567890', 'Default_No_Compression', '', '', -1, 'lama#PA0005#pasien 11#Klinik Obsgyn#asuransi#2018-01-26', 78, '', 'true', -1),
('2018-01-26 02:26:46', '2018-01-26 02:26:43', '', '081234567890', 'Default_No_Compression', '', '', -1, 'lama#PA0001#yusuf#Poliklinik Spesialis Anak#asuransi#30-01-2018', 79, '', 'true', -1),
('2018-01-26 02:28:40', '2018-01-26 02:28:38', '', '081081081081', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 39#p#12-01-2003#Jalan Nangka#ibu pasien 39#Poli spesialis Syaraf#asuransi#31-01-2018', 80, '', 'true', -1),
('2018-01-26 02:29:42', '2018-01-26 02:29:39', '', '088888888880', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 40#p#12-01-2003#Jalan Nangka#ibu pasien 40#Poli spesialis Syaraf#asuransi#31-01-2018', 81, '', 'true', -1),
('2018-01-26 02:31:21', '2018-01-26 02:31:18', '', '081234567890', 'Default_No_Compression', '', '', -1, 'baru#PASIEN 41#p#12-01-2003#Jalan Nangka#ibu pasien 41#Klinik Obsgyn#asuransi#26-01-2018', 82, '', 'true', -1),
('2018-01-26 04:38:20', '2018-01-26 04:38:17', '', '081234567890', 'Default_No_Compression', '', '', -1, 'nyoba', 83, '', 'true', -1),
('2018-01-26 04:40:25', '2018-01-26 04:40:22', '', '081234567890', 'Default_No_Compression', '', '', -1, 'nyoba lagi', 84, '', 'true', -1),
('2018-01-26 04:44:02', '2018-01-26 04:44:00', '', '088888888880', 'Default_No_Compression', '', '', -1, 'nyoba 3x', 85, '', 'true', -1),
('2018-01-26 06:14:22', '2018-01-26 06:13:57', '', '081234567890', 'Default_No_Compression', '050003A70201', '', -1, 'hsdajsdkjsfjnajncnhfehkhfenhnvhghjfhjdhfjehcfjehcjgrgfchjrhgjrhcgjerhjgrehjghrjhcrhjgjrgwehgfhwgejcbwgwjcgjwegcjfgfcnjrgchrgncgrhehhefguwenftunncgccrfgrg', 86, '', 'true', -1),
('2018-01-26 06:14:22', '2018-01-26 06:14:16', '', '081234567890', 'Default_No_Compression', '050003A70202', '', -1, 'part 2 iki', 87, '', 'true', -1),
('2018-01-26 06:34:59', '2018-01-26 06:34:44', '', '081081081081', 'Default_No_Compression', '050003A70201', '', -1, 'hsdajsdkjsfjnajncnhfehkhfenhnvhghjfhjdhfjehcfjehcjgrgfchjrhgjrhcgjerhjgrehjghrjhcrhjgjrgwehgfhwgejcbwgwjcgjwegcjfgfcnjrgchrgncgrhehhefguwenftunncgccrfgrgjjjjjjj', 88, '', 'true', -1),
('2018-01-26 06:34:59', '2018-01-26 06:34:44', '', '081081081081', 'Default_No_Compression', '050003A70202', '', -1, 'versi 2 lho', 89, '', 'true', -1),
('2018-01-26 06:50:45', '2018-01-26 06:50:39', '', '081234567890', 'Default_No_Compression', '050003A70201', '', -1, 'hsdajsdkjsfjnajncnhfehkhfenhnvhghjfhjdhfjehcfjehcjgrgfchjrhgjrhcgjerhjgrehjghrjhcrhjgjrgwehgfhwgejcbwgwjcgjwegcjfgfcnjrgchrgncgrhehhefguwenftunncgccrfgrg', 90, '', 'true', -1),
('2018-01-26 06:50:45', '2018-01-26 06:50:39', '', '081234567890', 'Default_No_Compression', '050003A70202', '', -1, '2 bisa plis', 91, '', 'true', -1),
('2018-01-26 07:04:42', '2018-01-26 07:04:38', '', '081234567890', 'Default_No_Compression', '050003A70201', '', -1, 'baru#PASIEN 42 yusuf budi kurniawan#p#12-01-2003#Jalan Nangka jeruk pisang kelurahan duren kota naga indonesia#ibu pasien 42# Poliklinik Spesialis Anak#a', 92, '', 'true', -1),
('2018-01-26 07:04:42', '2018-01-26 07:04:38', '', '081234567890', 'Default_No_Compression', '050003A70202', '', -1, 'suransi#30-01-2018', 93, '', 'true', -1),
('2018-01-26 07:12:34', '2018-01-26 07:12:25', '', '081081081081', 'Default_No_Compression', '050003A70201', '', -1, 'jjshfjsdhjfjdsfjsdhjfjhdsfhjdsfhjdshjfhjsdfhhjdsfhjhdsfhjhsdjfsjdfhjsdfhjsdhjdfjdshfjsdhfjsdhfjsdhfjhsdjfhjsdfhjsdhjkkskskskskskskskksskskksskksskkswwwww', 94, '', 'true', -1),
('2018-01-26 07:12:34', '2018-01-26 07:12:25', '', '081081081081', 'Default_No_Compression', '050003A70202', '', -1, 'bagian loro', 95, '', 'true', -1),
('2018-01-26 07:16:29', '2018-01-26 07:15:57', '', '081234567890', 'Default_No_Compression', '050003A70201', '', -1, 'baru#PASIEN 43 yusuf budi kurniawan#p#12-01-2003#Jalan Nangka jeruk pisang kelurahan duren kota naga indonesia#ibu pasien 43#Poliklinik Spesialis Anak#as', 96, '', 'true', -1),
('2018-01-26 07:16:29', '2018-01-26 07:15:57', '', '081234567890', 'Default_No_Compression', '050003A70202', '', -1, 'uransi#30-01-2018', 97, '', 'true', -1);

--
-- Trigger `inbox`
--
DELIMITER $$
CREATE TRIGGER `inbox_timestamp` BEFORE INSERT ON `inbox` FOR EACH ROW BEGIN
    IF NEW.ReceivingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.ReceivingDateTime = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_gallery`
--

CREATE TABLE `m_gallery` (
  `pk` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_gallery`
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
-- Struktur dari tabel `m_jadwal_praktek`
--

CREATE TABLE `m_jadwal_praktek` (
  `pk` int(11) NOT NULL,
  `id_session_jadwal` varchar(30) DEFAULT NULL,
  `pembuat_fk` int(11) DEFAULT NULL,
  `tanggal_praktek` date DEFAULT NULL,
  `jam_praktek` time DEFAULT NULL,
  `dokter_fk` int(11) DEFAULT NULL,
  `informasi_tambahan` varchar(250) DEFAULT NULL,
  `total_pasien` int(11) DEFAULT '0',
  `batasan_pasien` int(11) DEFAULT '0',
  `status_terlaksana` varchar(20) DEFAULT NULL,
  `pelayanan_fk` int(11) DEFAULT NULL,
  `rentang_waktu` int(11) NOT NULL DEFAULT '0',
  `perawat_fk` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_jadwal_praktek`
--

INSERT INTO `m_jadwal_praktek` (`pk`, `id_session_jadwal`, `pembuat_fk`, `tanggal_praktek`, `jam_praktek`, `dokter_fk`, `informasi_tambahan`, `total_pasien`, `batasan_pasien`, `status_terlaksana`, `pelayanan_fk`, `rentang_waktu`, `perawat_fk`) VALUES
(19, '08062017-001', 1, '2017-06-15', '10:00:00', 36, '', 3, 10, 'Belum Terlaksana', 14, 0, NULL),
(20, '08062017-002', 1, '2017-06-09', '09:00:00', 46, '', 0, 0, 'Belum Terlaksana', 17, 0, 40),
(24, '13062017-005', 1, '2017-06-13', '16:00:00', 33, '', 0, 100, 'Sudah Terlaksana', 21, 0, 40),
(25, '15062017-004', 1, '2017-06-15', '11:00:00', 48, '', 0, 10, 'Belum Terlaksana', 15, 0, NULL),
(26, '15062017-005', 1, '0000-00-00', '00:00:16', 59, '', 1, 0, 'Belum Terlaksana', 23, 5, NULL),
(30, '13072017-008', 1, '2017-07-13', '02:00:00', 36, 'testing', 0, 0, 'Belum Terlaksana', 17, 0, NULL),
(28, '19062017-007', 1, '2017-09-16', '14:00:00', 83, 'kolom informasi tambahan pada menu tambah jadwal praktek', 100, 130, 'Sedang Terlaksana', 21, 5, 84),
(29, '10072017-008', 1, '2017-07-10', '09:15:00', 52, 'test jadwal praktek', 1, 5, 'Sudah Terlaksana', 21, 0, 40),
(31, '13072017-009', 1, '2017-07-13', '11:00:00', 48, 'Test Info', 0, 0, 'Belum Terlaksana', 15, 0, NULL),
(32, '14072017-010', 1, '2017-07-14', '10:00:00', 36, 'info', 0, 0, 'Belum Terlaksana', 14, 0, 40),
(33, '14072017-011', 1, '2017-07-14', '13:00:00', 46, 'jadwal', 0, 0, 'Belum Terlaksana', 17, 0, NULL),
(34, '23012018-001', 1, '2018-01-23', '10:00:00', 57, 'dfghj', 0, 2, 'Belum Terlaksana', 14, 5, NULL),
(37, '19012018-014', 1, '2018-01-31', '09:45:00', 56, '', 2, 12, 'Belum Terlaksana', 31, 2, NULL),
(36, '19012018-013', 1, '2018-01-20', '09:45:00', 61, '', 0, 10, 'Belum Terlaksana', 14, 4, NULL),
(38, '19012018-015', 1, '2018-01-22', '13:00:00', 33, '', 9, 10, 'Belum Terlaksana', 26, 3, NULL),
(39, '19012018-016', 1, '2018-01-22', '15:00:00', 81, '', 1, 19, 'Belum Terlaksana', 26, 5, NULL),
(41, '19012018-017', 1, '2018-01-26', '13:15:00', 59, '', 15, 90, 'Belum Terlaksana', 20, 1, NULL),
(42, '19012018-018', 1, '2018-01-19', '13:15:00', 57, '', NULL, 11, 'Belum Terlaksana', 28, 0, NULL),
(43, '19012018-019', 1, '2018-01-20', '13:15:00', 33, 'aa', NULL, 5, 'Belum Terlaksana', 26, 3, NULL),
(44, '19012018-020', 1, '2018-01-19', '13:30:00', 62, '', NULL, 9, 'Belum Terlaksana', 31, 2, NULL),
(45, '19012018-021', 1, '2018-01-19', '13:30:00', 54, '', 0, 6, 'Belum Terlaksana', 14, 1, NULL),
(46, '19012018-022', 1, '2018-01-30', '13:30:00', 48, '', 4, 4, 'Belum Terlaksana', 23, 2, NULL),
(47, '19012018-023', 1, '2018-01-30', '14:30:00', 52, '', 4, 5, 'Belum Terlaksana', 23, 2, NULL),
(48, '19012018-024', 1, '2017-12-31', '16:30:00', 48, '', 0, 2, 'Belum Terlaksana', 20, 1, NULL),
(49, '22012018-025', 1, '2018-01-22', '20:00:00', 58, '', 0, 5, 'Belum Terlaksana', 17, 2, NULL),
(50, '23012018-026', 1, '2018-01-23', '13:15:00', 61, '', NULL, 0, 'Belum Terlaksana', 22, 1, NULL),
(51, '24012018-027', 1, '2018-01-24', '18:15:00', 62, '', 2, 5, 'Belum Terlaksana', 17, 1, NULL),
(52, '24012018-028', 1, '2018-01-24', '10:30:00', 33, '', 0, 9, 'Belum Terlaksana', 26, 1, NULL),
(53, '25012018-029', 1, '2018-01-25', '18:00:00', 53, '', 8, 5, 'Belum Terlaksana', 23, 2, NULL),
(54, '25012018-030', 1, '2018-01-25', '17:45:00', 36, '', 6, 8, 'Belum Terlaksana', 26, 2, NULL),
(55, '25012018-031', 1, '2018-01-25', '23:15:00', 48, '', 1, 4, 'Belum Terlaksana', 15, 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_jadwal_praktek_antrian`
--

CREATE TABLE `m_jadwal_praktek_antrian` (
  `pk` int(11) NOT NULL,
  `jadwal_praktek_fk` int(11) DEFAULT NULL,
  `pasien_fk` int(11) DEFAULT NULL,
  `nomor_registrasi_pasien` varchar(30) DEFAULT NULL,
  `jadwal_kunjung` datetime DEFAULT NULL,
  `realisasi_kunjung` datetime DEFAULT NULL,
  `nomor_urut` int(11) NOT NULL,
  `status_antrian` varchar(30) DEFAULT NULL,
  `status_sms_terkirim` int(11) NOT NULL DEFAULT '0',
  `metode_pembayaran_fk` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_jadwal_praktek_antrian`
--

INSERT INTO `m_jadwal_praktek_antrian` (`pk`, `jadwal_praktek_fk`, `pasien_fk`, `nomor_registrasi_pasien`, `jadwal_kunjung`, `realisasi_kunjung`, `nomor_urut`, `status_antrian`, `status_sms_terkirim`, `metode_pembayaran_fk`) VALUES
(79, 20, 41, 'PA001', '2017-06-09 09:00:00', '2017-06-09 10:58:24', 0, 'Selesai', 0, 0),
(80, 20, 44, 'PA002', '2017-06-09 09:00:00', '2017-06-09 09:33:39', 0, 'Selesai', 0, 0),
(81, 19, 44, 'PA002', '2017-06-15 10:00:00', '2018-01-23 13:34:38', 0, 'Tindakan', 0, 0),
(82, 19, 41, 'PA001', '2017-06-15 10:00:00', '2018-01-23 13:34:35', 0, 'Selesai', 0, 0),
(83, 28, 86, '321456', '2017-09-16 14:05:00', '0000-00-00 00:00:00', 0, 'Selesai', 0, 0),
(84, 28, 49, 'PA003', '2017-09-16 14:10:00', '0000-00-00 00:00:00', 0, 'Selesai', 0, 0),
(85, 32, 44, 'PA002', '2017-07-14 10:00:00', '2018-01-12 10:59:24', 0, 'Tindakan', 0, 0),
(86, 30, 44, '57', '2018-01-10 09:00:00', '2018-01-12 13:39:56', 0, 'Selesai', 0, 0),
(87, 32, 86, 'P002', '2018-01-19 13:39:00', '0000-00-00 00:00:00', 0, 'Diantrikan', 0, 0),
(88, 19, 87, 'df', '2018-01-16 13:44:00', '2018-01-12 13:44:43', 0, 'Selesai', 0, 0),
(89, 39, 91, 'P002', '2018-01-22 13:14:00', NULL, 1, 'Diantrikan', 0, 3),
(90, 50, 92, 'PA0004', '2018-01-23 13:15:00', '0000-00-00 00:00:00', 1, 'Diantrikan', 0, 4),
(91, 50, 93, 'PA0005', '2018-01-23 13:15:00', '0000-00-00 00:00:00', 2, 'Diantrikan', 0, 3),
(104, 53, 101, 'PA0013', '2018-01-25 18:00:00', '0000-00-00 00:00:00', 5, 'Diantrikan', 0, 3),
(93, 51, 89, 'PA001', '2018-01-24 10:00:00', NULL, 2, 'Diantrikan', 0, 3),
(94, 53, 0, '', '2018-01-25 18:00:00', '0000-00-00 00:00:00', 1, 'Diantrikan', 0, 0),
(95, 0, 96, 'PA0008', '2018-01-25 18:00:00', '0000-00-00 00:00:00', 1, 'Diantrikan', 0, 0),
(96, 41, 97, 'PA0009', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 1, 'Diantrikan', 0, 3),
(97, 0, 98, 'PA0010', '2018-01-25 17:45:00', '0000-00-00 00:00:00', 1, 'Diantrikan', 0, 0),
(98, 54, 99, 'PA0011', '2018-01-25 17:45:00', '0000-00-00 00:00:00', 1, 'Diantrikan', 0, 4),
(99, 54, 100, 'PA0012', '2018-01-25 17:45:00', '0000-00-00 00:00:00', 2, 'Diantrikan', 0, 4),
(100, 54, 101, 'PA0013', '2018-01-25 17:45:00', '0000-00-00 00:00:00', 3, 'Diantrikan', 0, 4),
(101, 53, 101, 'PA0013', '2018-01-25 00:00:00', '0000-00-00 00:00:00', 2, 'Diantrikan', 0, 3),
(102, 53, 101, 'PA0013', '2018-01-25 18:00:00', '0000-00-00 00:00:00', 3, 'Diantrikan', 0, 3),
(103, 53, 101, 'PA0013', '2018-01-25 18:00:00', '0000-00-00 00:00:00', 4, 'Diantrikan', 0, 3),
(105, 53, 101, 'PA0013', '2018-01-25 18:00:00', '0000-00-00 00:00:00', 6, 'Diantrikan', 0, 3),
(106, 53, 0, '', '2018-01-25 18:00:00', '0000-00-00 00:00:00', 7, 'Diantrikan', 0, 3),
(107, 53, 95, 'PA0007', '2018-01-25 18:00:00', '0000-00-00 00:00:00', 8, 'Diantrikan', 0, 3),
(108, 54, 96, 'PA0008', '2018-01-25 17:45:00', '0000-00-00 00:00:00', 4, 'Diantrikan', 0, 4),
(109, 54, 96, 'PA0008', '2018-01-25 17:45:00', '0000-00-00 00:00:00', 5, 'Diantrikan', 0, 4),
(110, 54, 97, 'PA0009', '2018-01-25 17:45:00', '0000-00-00 00:00:00', 6, 'Diantrikan', 0, 4),
(111, 55, 93, 'PA0005', '2018-01-25 23:15:00', '0000-00-00 00:00:00', 1, 'Diantrikan', 0, 4),
(112, 41, 0, '', '2018-01-26 00:00:00', '0000-00-00 00:00:00', 2, 'Diantrikan', 0, 4),
(113, 41, 0, '', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 3, 'Diantrikan', 0, 4),
(114, 41, 0, '', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 4, 'Diantrikan', 0, 4),
(115, 41, 0, '', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 5, 'Diantrikan', 0, 4),
(116, 41, 0, '', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 6, 'Diantrikan', 0, 4),
(117, 41, 0, '', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 7, 'Diantrikan', 0, 4),
(118, 41, 0, '', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 8, 'Diantrikan', 0, 4),
(119, 41, 0, '', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 9, 'Diantrikan', 0, 4),
(120, 41, 0, '', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 10, 'Diantrikan', 0, 4),
(121, 41, 110, 'PA0022', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 11, 'Diantrikan', 0, 3),
(122, 41, 111, 'PA0023', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 12, 'Diantrikan', 0, 3),
(123, 46, 112, 'PA0024', '2018-01-30 00:00:00', '0000-00-00 00:00:00', 1, 'Diantrikan', 0, 3),
(124, 46, 113, 'PA0025', '2018-01-30 13:30:00', '0000-00-00 00:00:00', 2, 'Diantrikan', 0, 3),
(125, 41, 0, '', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 13, 'Diantrikan', 0, 3),
(126, 41, 93, 'PA0005', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 14, 'Diantrikan', 0, 3),
(127, 46, 89, 'PA0001', '2018-01-30 13:30:00', '0000-00-00 00:00:00', 3, 'Diantrikan', 0, 3),
(128, 37, 0, '', '2018-01-31 09:45:00', '0000-00-00 00:00:00', 1, 'Diantrikan', 0, 3),
(129, 37, 115, 'PA0027', '2018-01-31 09:45:00', '0000-00-00 00:00:00', 2, 'Diantrikan', 0, 3),
(130, 41, 116, 'PA0028', '2018-01-26 13:15:00', '0000-00-00 00:00:00', 15, 'Diantrikan', 0, 3),
(131, 46, 117, 'PA0029', '2018-01-30 13:30:00', '0000-00-00 00:00:00', 4, 'Diantrikan', 0, 3),
(132, 26, 101, '93', '2018-01-26 17:00:00', NULL, 1, 'Diantrikan', 0, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_jenis_pelayanan`
--

CREATE TABLE `m_jenis_pelayanan` (
  `pk` int(11) NOT NULL,
  `jenis_pelayanan` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_jenis_pelayanan`
--

INSERT INTO `m_jenis_pelayanan` (`pk`, `jenis_pelayanan`) VALUES
(1, 'Poli Spesialis'),
(2, 'Poli Umum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kontak`
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
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `approved` varchar(20) NOT NULL,
  `status_login` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_kontak`
--

INSERT INTO `m_kontak` (`pk`, `nomor_registrasi`, `tanggal_registrasi`, `nomor_telepon`, `nama`, `alamat`, `kecamatan`, `kelurahan`, `kota`, `provinsi`, `golongan_darah`, `usia`, `jenis_kelamin`, `nama_ibu_kandung`, `username`, `password`, `email`, `approved`, `status_login`) VALUES
(1, '1', '2017-05-08', '085727663805', 'Admin', 'Jl Slamet Riyadi 26 A', 'Laweyan', 'Sriwedari', 'Surakarta', 'Jawa Tengah', 'A', 27, '', '', 'admin', 'admin', 'admin@amal_sehat.co.id', '', 'admin'),
(33, 'D000001', '2017-06-07', '-', 'dr. Soeharto, Sp.PD', '-', '-', '-', 'SOLO', '-', '', 0, '', '', 'soeharto', '123456', '-', '', 'dokter'),
(34, 'N000001', '2017-06-07', '-', 'Andhi Irawan, AMK', '-', '-', '-', '-', '-', '', 0, '', '', 'andhi', '123456', '-', '', 'perawat'),
(36, 'DR001', '2015-07-06', '0272-112233', 'dr. Test, SpB', 'Solo', '-', '-', '-', 'Jawa Tengah', 'O', 29, '', '', 'test', 'test', 'testing@gmail.com', '1', 'dokter'),
(40, 'PR001', '2015-11-16', '-', 'Perawat coba', 'Solobaru', '-', '-', 'Sukoharjo', 'Jawa Tengah', 'A', 25, '', '', 'coba', 'coba', '-', '1', 'perawat'),
(45, '06062017003', '2017-06-08', '9789789', 'dfgdfhfgh', 'gfhfghfh', 'fghfh', 'fghfh', 'fghfgh', 'fghfgh', 'B', 56, '', '', 'dokter1', 'dokter1', 'adi.pamungkas89@gmail.com', '1', 'dokter'),
(46, 'DR002', '0000-00-00', '-', 'dr. Coba, Sp.Rad', 'Sukoharjo', '-', '-', 'Sukoharjo', 'Jawa Tengah', 'B', 32, '', '', 'test1', 'test1', '-', '1', 'dokter'),
(48, 'DR004', '0000-00-00', '-', 'dr. Umum', 'Wonogiri', '', '', 'Wonofiri', 'Jawa Tengah', 'A', 33, '', '', 'test3', 'test3', '-', '1', 'dokter'),
(89, 'PA0001', '2018-01-15', '07654543534', 'yusuf', 'sumber', 'sumber', 'sumber', 'solo', 'jawa tengah', 'AB', 35, 'L', 'ibu', 'yusuf', 'yusuf', 'yusuf@staff', '1', 'pasien'),
(52, 'D000002', '2017-06-10', '-', 'dr. Suharto, Sp.PD', '-', '-', '-', '-', '-', '', 0, '', '', 'suharto', '123456', '-', '1', 'dokter'),
(53, 'D000003', '2017-06-10', '-', 'dr. Bambang Eko Wiyono, M.Kes.,Sp.OG', '-', '-', '-', '-', '-', '', 0, '', '', 'BAMBANG', '123456', '-', '1', 'dokter'),
(54, 'D000004', '2017-06-10', '-', 'dr. Cakra Bumi Wisnubrata.,Sp.OG', '-', '-', '-', '-', '-', '', 0, '', '', 'CAKRA', '123456', '-', '1', 'dokter'),
(55, 'D000005', '2017-06-10', '-', 'dr. Heru Wibowo Putro, Sp.M', '-', '-', '-', '-', '-', '', 0, '', '', 'HERU', '123456', '-', '1', 'dokter'),
(56, 'D000006', '2017-06-10', '-', 'dr. Ahmad Salimi Jauhari, Sp.OT', '-', '-', '-', '-', '-', '', 0, '', '', 'SALIMI', '123456', '-', '1', 'dokter'),
(57, 'D000007', '2017-06-10', '-', 'dr. Utama, Sp.B', '-', '-', '-', '-', '-', '', 0, '', '', 'UTAMA', '123456', '-', '1', 'dokter'),
(58, 'D000008', '2017-06-10', '-', 'dr. Yosie Arif Sanjaya, Sp. An', '-', '-', '-', '-', '-', '', 0, '', '', 'YOSIE', '123456', '-', '1', 'dokter'),
(59, 'D000009', '2017-06-10', '-', 'dr. Khairunisa Wardani, M.Sc. Sp. A', '-', '-', '-', '-', '-', '', 0, '', '', 'NISA', '123456', '-', '1', 'dokter'),
(60, 'D000010', '0000-00-00', '-', 'dr. Zustain Noor Adhim, M.Kes.,Sp.A', '-', '-', '-', '-', '-', '', 0, '', '', 'ZUSTAIN', '123456', '-', '1', 'dokter'),
(61, 'D000011', '0000-00-00', '-', 'dr. Misna Hati, Sp. S', '-', '-', '--', '-', '-', '', 0, '', '', 'MISNA', '123456', '-', '1', 'dokter'),
(62, 'D000012', '0000-00-00', '-', 'dr. Sukardjo, Sp. THT', '-', '-', '-', '-', '--', '', 0, '', '', 'SUKARDJO', '123456', '-', '1', 'dokter'),
(63, 'D000013', '0000-00-00', '-', 'dr. Diah Hayustiningsih, Sp. THT-KL', '-', '-', '-', '-', '-', '', 0, '', '', 'DIAH', '123456', '-', '1', 'dokter'),
(64, 'D000014', '0000-00-00', '-', 'dr. Endrawati Tri Bowo, M.Sc. Sp. Rad', '-', '-', '-', '-', '-', '', 0, '', '', 'ENDRA', '123456', '-', '1', 'dokter'),
(65, 'D000015', '0000-00-00', '-', 'dr. Iim Mariani Ulfa, M.Sc, Sp.PK', '-', '--', '-', '-', '-', '', 0, '', '', 'MARIANI', '123456', '-', '1', 'dokter'),
(66, 'D000016', '0000-00-00', '-', 'dr. Rosyid Ridlo, MMR', '-', '-', '-', '-', '-', '', 0, '', '', 'ROSYID', '123456', '-', '1', 'dokter'),
(67, 'D000017', '0000-00-00', '-', 'dr. Iis Lisnawati', '-', '-', '-', '-', '-', '', 0, '', '', 'LISNAWATI', '123456', '-', '1', 'dokter'),
(68, 'D000018', '0000-00-00', '-', 'dr. Silvy Tri Ambarwati', '-', '-', '-', '-', '-', '', 0, '', '', 'SILVY', '123456', '-', '1', 'dokter'),
(69, 'D000019', '0000-00-00', '-', 'dr. Saryana', '-', '-', '-', '-', '-', '', 0, '', '', 'SARYANA', '123456', '-', '1', 'dokter'),
(70, 'D000020', '0000-00-00', '-', 'dr. Bagus Aris Madani', '-', '-', '-', '-', '-', '', 0, '', '', 'BAGUS', '123456', '-', '1', 'dokter'),
(71, 'D000021', '0000-00-00', '-', 'dr. Novi Imam Persada', '-', '-', '-', '-', '-', '', 0, '', '', 'IMAM', '123456', '-', '1', 'dokter'),
(72, 'D000022', '0000-00-00', '-', 'dr. Ismi Ratnasari', '-', '-', '-', '-', '-', '', 0, '', '', 'ISMI', '123456', '-', '1', 'dokter'),
(73, 'D000023', '0000-00-00', '-', 'dr. Mohamad Basroni', '-', '-', '-', '-', '-', '', 0, '', '', 'BASRONI', '123456', '-', '1', 'dokter'),
(74, 'D000024', '0000-00-00', '-', 'dr. Dian Kartika Sari', '-', '-', '-', '-', '-', '', 0, '', '', 'DIAN', '123456', '-', '1', 'dokter'),
(75, 'D000025', '0000-00-00', '-', 'dr. Amalia Primayanti', '-', '-', '-', '-', '-', '', 0, '', '', 'AMALIA', '123456', '-', '1', 'dokter'),
(76, 'D000026', '0000-00-00', '-', 'dr. Hafriliantika Ramadhani', '-', '-', '-', '-', '-', '', 0, '', '', 'HAFRILIANTIKA', '123456', '-', '1', 'dokter'),
(77, 'D000027', '0000-00-00', '-', 'dr. Asih Novea Krediastuti', '-', '-', '-', '-', '-', '', 0, '', '', 'NOVEA', '123456', '-', '1', 'dokter'),
(78, 'D000028', '0000-00-00', '-', 'dr. Wildan Syamsudin Fahmi', '-', '-', '-', '-', '-', '', 0, '', '', 'WILDAN', '123456', '-', '1', 'dokter'),
(79, 'D000029', '0000-00-00', '-', 'dr. Rizky Mukti Sejati', '-', '-', '-', '-', '-', '', 0, '', '', 'RIZKY', '123456', '-', '1', 'dokter'),
(80, 'D000030', '0000-00-00', '-', 'dr. Netta Titisari Januar', '-', '-', '-', '-', '-', '', 0, '', '', 'NETTA', '123456', '-', '1', 'dokter'),
(81, 'D000031', '0000-00-00', '-', 'drg. Muchammad Machi', '-', '-', '-', '-', '-', '', 0, '', '', 'MACHI', '123456', '-', '1', 'dokter'),
(82, 'D000032', '0000-00-00', '-', 'drg. Nur Eliyati Rahmah ', '-', '-', '-', '-', '-', '', 0, '', '', 'RAHMAH', '123456', '-', '1', 'dokter'),
(83, 'd000121', '2013-07-01', '08387654311', 'dr. Amal Sehat, Sp.Pd', 'ngerjopuro', 'slogohimo', 'slogohimo', 'wonogiri', 'jawa tengah', 'A', 40, '', '', 'dokter_ganteng', '123456', 'email_coba@yahoo.co.id', '1', 'dokter'),
(84, 'PR0004', '2016-01-01', '08386434520', 'perawat ganteng banget', 'Jl. Ngerjopuro RT.01 RW.02', 'Slogohimo', 'Slogohimo', 'Wonogiri', 'Jawa Tengah', 'O', 30, '', '', 'perawat_ganteng', '123456', 'mas_udi89@yahoo.co.id', '1', 'perawat'),
(91, 'PA0003', '0000-00-00', '', 'MUHAMMAD HENDRA NAILUL HAQQ', 'JALAN PELITA 3 JENGGOT', NULL, NULL, NULL, NULL, NULL, 20, 'L', 'IBU', '', '', NULL, '1', 'pasien'),
(92, 'PA0004', '2018-01-23', '081081081081', 'PASIEN 10', 'JALAN PELITA 3 JENGGOT', NULL, NULL, NULL, NULL, NULL, 20, 'L', 'IBU PASIEN', 'PA0004', 'PA0004', NULL, '1', 'pasien'),
(93, 'PA0005', '2018-01-23', '081081081081', 'PASIEN 11', 'JALAN PISANG', NULL, NULL, NULL, NULL, NULL, 25, 'L', 'IBU PASIEN', 'PA0005', 'PA0005', NULL, '1', 'pasien'),
(94, 'PA0006', '2018-01-24', '081234567890', 'PASIEN 12', 'JALAN PISANG', NULL, NULL, NULL, NULL, NULL, 25, 'L', 'IBU PASIEN 12', 'PA0006', 'PA0006', NULL, '1', 'pasien'),
(95, 'PA0007', '2018-01-25', '081234567890', 'PASIEN 13', 'JALAN PISANG', NULL, NULL, NULL, NULL, NULL, 25, 'L', 'IBU PASIEN 12', 'PA0007', 'PA0007', NULL, '1', 'pasien'),
(96, 'PA0008', '2018-01-25', '081234567890', 'PASIEN 14', 'JALAN PISANG', NULL, NULL, NULL, NULL, NULL, 75, 'L', 'IBU PASIEN 14', 'PA0008', 'PA0008', NULL, '1', 'pasien'),
(97, 'PA0009', '2018-01-25', '081081081081', 'PASIEN 18', 'JALAN PISANG', NULL, NULL, NULL, NULL, NULL, 56, 'P', 'IBU PASIEN 17', 'PA0009', 'PA0009', NULL, '1', 'pasien'),
(98, 'PA0010', '2018-01-25', '088888888880', 'PASIEN 23', 'JALAN JERUK', NULL, NULL, NULL, NULL, NULL, 42, 'P', 'IBU PASIEN 23', 'PA0010', 'PA0010', NULL, '1', 'pasien'),
(99, 'PA0011', '2018-01-25', '081234567890', 'PASIEN 24', 'JALAN JERUK', NULL, NULL, NULL, NULL, NULL, 42, 'P', 'IBU PASIEN 24', 'PA0011', 'PA0011', NULL, '1', 'pasien'),
(100, 'PA0012', '2018-01-25', '081234567890', 'PASIEN 25', 'JALAN JERUK', NULL, NULL, NULL, NULL, NULL, 42, 'P', 'IBU PASIEN 25', 'PA0012', 'PA0012', NULL, '1', 'pasien'),
(101, 'PA0013', '2018-01-25', '081234567890', 'PASIEN 26', 'JALAN JERUK', NULL, NULL, NULL, NULL, NULL, 38, 'P', 'IBU PASIEN 26', 'PA0013', 'PA0013', NULL, '1', 'pasien'),
(102, 'PA0014', '2018-01-25', '081234567890', 'PASIEN 27', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 7, 'P', 'IBU PASIEN 27', 'PA0014', 'PA0014', NULL, '1', 'pasien'),
(103, 'PA0015', '2018-01-25', '081234567890', 'PASIEN 28', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 7, 'P', 'IBU PASIEN 28', 'PA0015', 'PA0015', NULL, '1', 'pasien'),
(104, 'PA0016', '2018-01-25', '081234567890', 'PASIEN 29', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 7, 'P', 'IBU PASIEN 29', 'PA0016', 'PA0016', NULL, '1', 'pasien'),
(105, 'PA0017', '2018-01-25', '089876543210', 'PASIEN 30', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 6, 'P', 'IBU PASIEN 30', 'PA0017', 'PA0017', NULL, '1', 'pasien'),
(106, 'PA0018', '2018-01-25', '081234567890', 'PASIEN 31', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 6, 'P', 'IBU PASIEN 31', 'PA0018', 'PA0018', NULL, '1', 'pasien'),
(107, 'PA0019', '2018-01-26', '081234567890', 'PASIEN 32', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 6, 'P', 'IBU PASIEN 32', 'PA0019', 'PA0019', NULL, '1', 'pasien'),
(108, 'PA0020', '2018-01-26', '081081081081', 'PASIEN 33', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 8, 'P', 'IBU PASIEN 33', 'PA0020', 'PA0020', NULL, '1', 'pasien'),
(109, 'PA0021', '2018-01-26', '089876543210', 'PASIEN 34', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 8, 'P', 'IBU PASIEN 34', 'PA0021', 'PA0021', NULL, '1', 'pasien'),
(110, 'PA0022', '2018-01-26', '081081081081', 'PASIEN 35', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 8, 'P', 'IBU PASIEN 35', 'PA0022', 'PA0022', NULL, '1', 'pasien'),
(111, 'PA0023', '2018-01-26', '088888888880', 'PASIEN 36', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 8, 'P', 'IBU PASIEN 36', 'PA0023', 'PA0023', NULL, '1', 'pasien'),
(112, 'PA0024', '2018-01-26', '089876543210', 'PASIEN 37', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 15, 'P', 'IBU PASIEN 37', 'PA0024', 'PA0024', NULL, '1', 'pasien'),
(113, 'PA0025', '2018-01-26', '081234567890', 'PASIEN 38', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 15, 'P', 'IBU PASIEN 38', 'PA0025', 'PA0025', NULL, '1', 'pasien'),
(114, 'PA0026', '2018-01-26', '081081081081', 'PASIEN 39', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 15, 'P', 'IBU PASIEN 39', 'PA0026', 'PA0026', NULL, '1', 'pasien'),
(115, 'PA0027', '2018-01-26', '088888888880', 'PASIEN 40', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 15, 'P', 'IBU PASIEN 40', 'PA0027', 'PA0027', NULL, '1', 'pasien'),
(116, 'PA0028', '2018-01-26', '081234567890', 'PASIEN 41', 'JALAN NANGKA', NULL, NULL, NULL, NULL, NULL, 15, 'P', 'IBU PASIEN 41', 'PA0028', 'PA0028', NULL, '1', 'pasien'),
(117, 'PA0029', '2018-01-26', '081234567890', 'PASIEN 43 YUSUF BUDI KURNIAWAN', 'JALAN NANGKA JERUK PISANG KELURAHAN DUREN KOTA NAGA INDONESIA', NULL, NULL, NULL, NULL, NULL, 15, 'P', 'IBU PASIEN 43', 'PA0029', 'PA0029', NULL, '1', 'pasien'),
(118, 'PA0030', '0000-00-00', '081987123656', 'aa', '', '', '', '', '', 'O', 0, 'L', 'xx', 'pa0030', 'pa0030', 'a@a.a', '1', 'pasien');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_metode_pembayaran`
--

CREATE TABLE `m_metode_pembayaran` (
  `pk` int(10) NOT NULL,
  `metode_bayar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_metode_pembayaran`
--

INSERT INTO `m_metode_pembayaran` (`pk`, `metode_bayar`) VALUES
(3, 'Asuransi'),
(4, 'BPJS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_pelayanan`
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
-- Dumping data untuk tabel `m_pelayanan`
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
-- Struktur dari tabel `m_perawat_pelayanan`
--

CREATE TABLE `m_perawat_pelayanan` (
  `pk_perawat_pelayanan` int(11) NOT NULL,
  `perawat_fk` int(11) NOT NULL,
  `pelayanan_fk` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_perawat_pelayanan`
--

INSERT INTO `m_perawat_pelayanan` (`pk_perawat_pelayanan`, `perawat_fk`, `pelayanan_fk`) VALUES
(1, 6, 1),
(2, 6, 3),
(3, 12, 2),
(4, 12, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `outbox`
--

CREATE TABLE `outbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendBefore` time NOT NULL DEFAULT '23:59:59',
  `SendAfter` time NOT NULL DEFAULT '00:00:00',
  `Text` text,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `MultiPart` enum('false','true') DEFAULT 'false',
  `RelativeValidity` int(11) DEFAULT '-1',
  `SenderID` varchar(255) DEFAULT NULL,
  `SendingTimeOut` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryReport` enum('default','yes','no') DEFAULT 'default',
  `CreatorID` text NOT NULL,
  `Retries` int(3) DEFAULT '0',
  `Priority` int(11) DEFAULT '0',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error','Reserved') NOT NULL DEFAULT 'Reserved',
  `StatusCode` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `outbox`
--

INSERT INTO `outbox` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `SendBefore`, `SendAfter`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `Class`, `TextDecoded`, `ID`, `MultiPart`, `RelativeValidity`, `SenderID`, `SendingTimeOut`, `DeliveryReport`, `CreatorID`, `Retries`, `Priority`, `Status`, `StatusCode`) VALUES
('2018-01-17 06:56:50', '2018-01-17 06:56:50', '2018-01-17 06:56:50', '23:59:59', '00:00:00', NULL, '085602007066', 'Default_No_Compression', NULL, -1, 'Format penulisan salah', 1, 'false', -1, '', '2018-01-17 06:56:50', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-17 06:56:50', '2018-01-17 06:56:50', '2018-01-17 06:56:50', '23:59:59', '00:00:00', NULL, '085602007066', 'Default_No_Compression', NULL, -1, 'Format penulisan salah', 2, 'false', -1, '', '2018-01-17 06:56:50', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-17 06:58:14', '2018-01-17 06:58:14', '2018-01-17 06:58:14', '23:59:59', '00:00:00', NULL, '085602007064', 'Default_No_Compression', NULL, -1, 'Format penulisan salah', 3, 'false', -1, '', '2018-01-17 06:58:14', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-22 09:05:39', '2018-01-22 09:05:39', '2018-01-22 09:05:39', '23:59:59', '00:00:00', NULL, '085602007066', 'Default_No_Compression', NULL, -1, '', 4, 'false', -1, NULL, '2018-01-22 09:05:39', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-22 09:07:44', '2018-01-22 09:07:44', '2018-01-22 09:07:44', '23:59:59', '00:00:00', NULL, '085602007066', 'Default_No_Compression', NULL, -1, '', 5, 'false', -1, NULL, '2018-01-22 09:07:44', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 02:20:29', '2018-01-23 02:20:29', '2018-01-23 02:20:29', '23:59:59', '00:00:00', NULL, '096785467687', 'Default_No_Compression', NULL, -1, 'Tipe pesan tidak diketahui atau penulisan salah , pastikan format pesan benar (BARU/LAMA/INFO POLI)', 6, 'false', -1, NULL, '2018-01-23 02:20:29', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 02:29:53', '2018-01-23 02:29:53', '2018-01-23 02:29:53', '23:59:59', '00:00:00', NULL, '085602007066', 'Default_No_Compression', NULL, -1, '', 7, 'false', -1, NULL, '2018-01-23 02:29:53', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 03:11:24', '2018-01-23 03:11:24', '2018-01-23 03:11:24', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'MUHAMMAD HENDRA NAILUL HAQQ - PA0003 -  -  -  - USERNAME :  - PASSWORD :  - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI\r\n PASIEN KLINIK OBSGYN DI RUMAH SAKIT AM', 8, 'true', -1, NULL, '2018-01-23 03:11:24', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 03:11:51', '2018-01-23 03:11:51', '2018-01-23 03:11:51', '23:59:59', '00:00:00', NULL, '085725093955', 'Default_No_Compression', '050003A80201', -1, 'llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll\r\nlllllll', 9, 'true', -1, NULL, '2018-01-23 03:11:51', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 03:26:14', '2018-01-23 03:26:14', '2018-01-23 03:26:14', '23:59:59', '00:00:00', NULL, '088888888880', 'Default_No_Compression', NULL, -1, 'Maaf, jam praktek tidak pada 23-01-2018 tidak tersedia', 10, 'false', -1, NULL, '2018-01-23 03:26:14', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 03:27:54', '2018-01-23 03:27:54', '2018-01-23 03:27:54', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 10 - PA0004 - 2018-01-23 - 13:15:00 - dr. Misna Hati, Sp. S - USERNAME : PA0004 - PASSWORD : PA0004 - SELAMAT ANDA TELAH \r\n					TERDAFTAR SEBAGAI ', 11, 'true', -1, NULL, '2018-01-23 03:27:54', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 03:34:18', '2018-01-23 03:34:18', '2018-01-23 03:34:18', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 11 - PA0005 - 2018-01-23 - 13:15:00 - dr. Misna Hati, Sp. S - USERNAME : PA0005 - PASSWORD : PA0005 - SELAMAT ANDA TELAH \r\n					TERDAFTAR SEBAGAI ', 12, 'true', -1, NULL, '2018-01-23 03:34:18', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 04:28:02', '2018-01-23 04:28:02', '2018-01-23 04:28:02', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 11 - PA0005 -  -  -  - USERNAME : PA0005 - PASSWORD : PA0005 - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI\r\n PASIEN KLINIK OBSGYN DI RUMAH SAKIT AMAL SEH', 13, 'true', -1, NULL, '2018-01-23 04:28:02', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 06:37:46', '2018-01-23 06:37:46', '2018-01-23 06:37:46', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', NULL, -1, '20:00:00  2018-01-22  Radiologi  dr. Yosie Arif Sanjaya, Sp. An <br>', 14, 'false', -1, NULL, '2018-01-23 06:37:46', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 06:41:56', '2018-01-23 06:41:56', '2018-01-23 06:41:56', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, '20:00:00  2018-01-22  Radiologi  dr. Yosie Arif Sanjaya, Sp. An', 16, 'false', -1, NULL, '2018-01-23 06:41:56', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 06:47:18', '2018-01-23 06:47:18', '2018-01-23 06:47:18', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, '(20:00:00  2018-01-22  Radiologi  dr. Yosie Arif Sanjaya, Sp. An) ', 17, 'false', -1, NULL, '2018-01-23 06:47:18', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 06:57:19', '2018-01-23 06:57:19', '2018-01-23 06:57:19', '23:59:59', '00:00:00', NULL, '088888888880', 'Default_No_Compression', NULL, -1, ' (20:00:00  2018-01-22  Radiologi  dr. Yosie Arif Sanjaya, Sp. An) ', 18, 'false', -1, NULL, '2018-01-23 06:57:19', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 07:14:30', '2018-01-23 07:14:30', '2018-01-23 07:14:30', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', NULL, -1, ' (13:00:00  2018-01-22  Poliklinik Spesialis Urologi  dr. Soeharto, Sp.PD) ', 19, 'false', -1, NULL, '2018-01-23 07:14:30', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 08:14:29', '2018-01-23 08:14:29', '2018-01-23 08:14:29', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, 'Array', 20, 'false', -1, NULL, '2018-01-23 08:14:29', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 08:49:53', '2018-01-23 08:49:53', '2018-01-23 08:49:53', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, '13:00:00  -  2018-01-22  -  Poliklinik Spesialis Urologi  -  dr. Soeharto, Sp.PD <br> 15:00:00  -  2018-01-22  -  Poliklinik Spesialis Urologi  -  drg. M', 21, 'true', -1, NULL, '2018-01-23 08:49:53', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-23 08:52:31', '2018-01-23 08:52:31', '2018-01-23 08:52:31', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, '( 13:00:00  -  2018-01-22  -  Poliklinik Spesialis Urologi  -  dr. Soeharto, Sp.PD ) ( 15:00:00  -  2018-01-22  -  Poliklinik Spesialis Urologi  -  drg. ', 22, 'true', -1, NULL, '2018-01-23 08:52:31', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 01:26:44', '2018-01-24 01:26:44', '2018-01-24 01:26:44', '23:59:59', '00:00:00', NULL, '088888888880', 'Default_No_Compression', NULL, -1, '', 23, 'false', -1, NULL, '2018-01-24 01:26:44', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 01:35:05', '2018-01-24 01:35:05', '2018-01-24 01:35:05', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', NULL, -1, 'Jam praktek pada  belum tersedia, silahkan hubungi pihak rumah sakit', 24, 'false', -1, NULL, '2018-01-24 01:35:05', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 01:44:47', '2018-01-24 01:44:47', '2018-01-24 01:44:47', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, '', 25, 'false', -1, NULL, '2018-01-24 01:44:47', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 01:46:09', '2018-01-24 01:46:09', '2018-01-24 01:46:09', '23:59:59', '00:00:00', NULL, '081081081081', 'Default_No_Compression', NULL, -1, '', 26, 'false', -1, NULL, '2018-01-24 01:46:09', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 01:47:43', '2018-01-24 01:47:43', '2018-01-24 01:47:43', '23:59:59', '00:00:00', NULL, '088888888880', 'Default_No_Compression', NULL, -1, '', 27, 'false', -1, NULL, '2018-01-24 01:47:43', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 01:51:09', '2018-01-24 01:51:09', '2018-01-24 01:51:09', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, '', 28, 'false', -1, NULL, '2018-01-24 01:51:09', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 01:54:39', '2018-01-24 01:54:39', '2018-01-24 01:54:39', '23:59:59', '00:00:00', NULL, '088888888880', 'Default_No_Compression', NULL, -1, '', 29, 'false', -1, NULL, '2018-01-24 01:54:39', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 01:56:08', '2018-01-24 01:56:08', '2018-01-24 01:56:08', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, '', 30, 'false', -1, NULL, '2018-01-24 01:56:08', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 02:07:36', '2018-01-24 02:07:36', '2018-01-24 02:07:36', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, '', 31, 'false', -1, NULL, '2018-01-24 02:07:36', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 02:15:34', '2018-01-24 02:15:34', '2018-01-24 02:15:34', '23:59:59', '00:00:00', NULL, '081081081081', 'Default_No_Compression', NULL, -1, '', 32, 'false', -1, NULL, '2018-01-24 02:15:34', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 02:16:49', '2018-01-24 02:16:49', '2018-01-24 02:16:49', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', NULL, -1, 'aa', 33, 'false', -1, NULL, '2018-01-24 02:16:49', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 02:33:37', '2018-01-24 02:33:37', '2018-01-24 02:33:37', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, '', 34, 'false', -1, NULL, '2018-01-24 02:33:37', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 02:43:33', '2018-01-24 02:43:33', '2018-01-24 02:43:33', '23:59:59', '00:00:00', NULL, '081081081081', 'Default_No_Compression', NULL, -1, 'Jam praktek pada 2018-01-27 belum tersedia, silahkan hubungi pihak rumah sakit', 35, 'false', -1, NULL, '2018-01-24 02:43:33', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 03:23:23', '2018-01-24 03:23:23', '2018-01-24 03:23:23', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 12 - PA0006 - 2018-01-24 - 18:15:00 - dr. Sukardjo, Sp. THT - USERNAME : PA0006 - PASSWORD : PA0006 - SELAMAT ANDA TELAH \r\n					TERDAFTAR SEBAGAI ', 36, 'true', -1, NULL, '2018-01-24 03:23:23', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-24 22:37:00', '2018-01-24 22:37:00', '2018-01-24 22:37:00', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', NULL, -1, 'Jam praktek pada tanggal 2018-01-27 belum tersedia, silahkan hubungi pihak rumah sakit', 37, 'false', -1, NULL, '2018-01-24 22:37:00', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 03:07:16', '2018-01-25 03:07:16', '2018-01-25 03:07:16', '23:59:59', '00:00:00', NULL, '088888888880', 'Default_No_Compression', NULL, -1, 'Tanggal yang ada masukkan salah, pastikan format tanggal benar (hari-bulan-tahun) atau cek kembali tanggal anda', 38, 'false', -1, NULL, '2018-01-25 03:07:16', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 03:09:17', '2018-01-25 03:09:17', '2018-01-25 03:09:17', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, '', 39, 'false', -1, NULL, '2018-01-25 03:09:17', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 03:14:57', '2018-01-25 03:14:57', '2018-01-25 03:14:57', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 14 - PA0008 - 2018-01-25 - 18:00:00 - dr. Bambang Eko Wiyono, M.Kes.,Sp.OG - USERNAME : PA0008 - PASSWORD : PA0008 - SELAMAT ANDA TELAH \r\n					TER', 40, 'true', -1, NULL, '2018-01-25 03:14:57', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 03:22:21', '2018-01-25 03:22:21', '2018-01-25 03:22:21', '23:59:59', '00:00:00', NULL, '081081081081', 'Default_No_Compression', NULL, -1, 'Format penulisan pesan pasien baru anda salah atau kurang, cek kembali format pesan anda.', 41, 'false', -1, NULL, '2018-01-25 03:22:21', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 03:48:23', '2018-01-25 03:48:23', '2018-01-25 03:48:23', '23:59:59', '00:00:00', NULL, '088888888880', 'Default_No_Compression', NULL, -1, '', 42, 'false', -1, NULL, '2018-01-25 03:48:23', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 03:57:22', '2018-01-25 03:57:22', '2018-01-25 03:57:22', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 18 - PA0009 - 2018-01-26 - 13:15:00 - dr. Khairunisa Wardani, M.Sc. Sp. A - USERNAME : PA0009 - PASSWORD : PA0009 - SELAMAT ANDA TELAH \r\n					TERD', 43, 'true', -1, NULL, '2018-01-25 03:57:22', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 07:04:56', '2018-01-25 07:04:56', '2018-01-25 07:04:56', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 25 - PA0012 - 2018-01-25 - 17:45:00 - dr. Test, SpB - USERNAME : PA0012 - PASSWORD : PA0012 - SELAMAT ANDA TELAH \r\n					TERDAFTAR SEBAGAI PASIEN P', 44, 'true', -1, NULL, '2018-01-25 07:04:56', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 07:13:33', '2018-01-25 07:13:33', '2018-01-25 07:13:33', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 26 - PA0013 - 2018-01-25 - 17:45:00 -  No Urut : 3 - dr. Test, SpB - USERNAME : PA0013 - PASSWORD : PA0013 - SELAMAT ANDA TELAH \r\n					TERDAFTAR S', 45, 'true', -1, NULL, '2018-01-25 07:13:33', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 07:33:26', '2018-01-25 07:33:26', '2018-01-25 07:33:26', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, 'Nomor registrasi anda belum terdaftar, coba cek kembali nomor registrasi anda.', 46, 'false', -1, NULL, '2018-01-25 07:33:26', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 07:35:47', '2018-01-25 07:35:47', '2018-01-25 07:35:47', '23:59:59', '00:00:00', NULL, '081081081081', 'Default_No_Compression', NULL, -1, 'Nomor registrasi anda belum terdaftar, coba cek kembali nomor registrasi anda.', 47, 'false', -1, NULL, '2018-01-25 07:35:47', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 07:51:12', '2018-01-25 07:51:12', '2018-01-25 07:51:12', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, ' -  - 2018-01-25 - 18:00:00 - No Urut :  - dr. Bambang Eko Wiyono, M.Kes.,Sp.OG - USERNAME :  - PASSWORD :  - SELAMAT ANDA TELAH \r\n					TERDAFTAR SEBAGAI', 48, 'true', -1, NULL, '2018-01-25 07:51:12', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 07:55:30', '2018-01-25 07:55:30', '2018-01-25 07:55:30', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 12 - PA0006 - 2018-01-25 - 18:00:00 - No Urut : 1 - dr. Bambang Eko Wiyono, M.Kes.,Sp.OG - USERNAME : PA0006 - PASSWORD : PA0006 - SELAMAT ANDA TE', 49, 'true', -1, NULL, '2018-01-25 07:55:30', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 08:02:55', '2018-01-25 08:02:55', '2018-01-25 08:02:55', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 12 - PA0006 - 2018-01-25 - 18:00:00 - No Urut : 1 - dr. Bambang Eko Wiyono, M.Kes.,Sp.OG - USERNAME : PA0006 - PASSWORD : PA0006 - SELAMAT ANDA TE', 50, 'true', -1, NULL, '2018-01-25 08:02:55', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 08:05:07', '2018-01-25 08:05:07', '2018-01-25 08:05:07', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, ' -  - 2018-01-25 - 18:00:00 - No Urut :  - dr. Bambang Eko Wiyono, M.Kes.,Sp.OG - USERNAME :  - PASSWORD :  - SELAMAT ANDA TELAH \r\n					TERDAFTAR SEBAGAI', 51, 'true', -1, NULL, '2018-01-25 08:05:07', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 08:09:07', '2018-01-25 08:09:07', '2018-01-25 08:09:07', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, ' -  - 2018-01-25 - 18:00:00 - No Urut :  - dr. Bambang Eko Wiyono, M.Kes.,Sp.OG - USERNAME :  - PASSWORD :  - SELAMAT ANDA TELAH \r\n					TERDAFTAR SEBAGAI', 52, 'true', -1, NULL, '2018-01-25 08:09:07', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 08:42:18', '2018-01-25 08:42:18', '2018-01-25 08:42:18', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, ' -  - 2018-01-25 - 18:00:00 - No Urut :  - dr. Bambang Eko Wiyono, M.Kes.,Sp.OG - USERNAME :  - PASSWORD :  - SELAMAT ANDA TELAH \r\n					TERDAFTAR SEBAGAI', 53, 'true', -1, NULL, '2018-01-25 08:42:18', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 08:43:36', '2018-01-25 08:43:36', '2018-01-25 08:43:36', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 13 - PA0007 - 2018-01-25 - 18:00:00 - No Urut : 8 - dr. Bambang Eko Wiyono, M.Kes.,Sp.OG - USERNAME : PA0007 - PASSWORD : PA0007 - SELAMAT ANDA TE', 54, 'true', -1, NULL, '2018-01-25 08:43:36', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 09:18:27', '2018-01-25 09:18:27', '2018-01-25 09:18:27', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 14 - PA0008 - 2018-01-25 - 17:45:00 - No Urut : 4 - dr. Test, SpB - USERNAME : PA0008 - PASSWORD : PA0008 - SELAMAT ANDA TELAH \r\n					TERDAFTAR SE', 55, 'true', -1, NULL, '2018-01-25 09:18:27', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 09:23:25', '2018-01-25 09:23:25', '2018-01-25 09:23:25', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 14 - PA0008 - 2018-01-25 - 17:45:00 - No Urut :  - dr. Test, SpB - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN POLIKLINIK SPESIALIS UROLOGI \r\n				', 56, 'true', -1, NULL, '2018-01-25 09:23:25', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 09:30:42', '2018-01-25 09:30:42', '2018-01-25 09:30:42', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 18 - PA0009 - 2018-01-25 - 17:45:00 - No Urut :  - dr. Test, SpB - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN POLIKLINIK SPESIALIS UROLOGI \r\n				', 57, 'true', -1, NULL, '2018-01-25 09:30:42', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 14:27:20', '2018-01-25 14:27:20', '2018-01-25 14:27:20', '23:59:59', '00:00:00', NULL, '081081081081', 'Default_No_Compression', NULL, -1, 'PASIEN 11 - PA0005 - 2018-01-25 - 23:15:00 - No Urut : 1 - dr. Umum - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN POLI UMUM \r\n				DI RUMAH SAKIT AMAL SEHAT', 58, 'false', -1, NULL, '2018-01-25 14:27:20', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 21:58:12', '2018-01-25 21:58:12', '2018-01-25 21:58:12', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, ' -  - 2018-01-26 - 13:15:00 - No Urut :  - dr. Khairunisa Wardani, M.Sc. Sp. A - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN KLINIK OBSGYN \r\n				DI RUMAH', 59, 'true', -1, NULL, '2018-01-25 21:58:12', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 22:03:14', '2018-01-25 22:03:14', '2018-01-25 22:03:14', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, ' -  -  -  - No Urut :  -  - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN 19012018-017 \r\n				DI RUMAH SAKIT AMAL SEHAT', 60, 'false', -1, NULL, '2018-01-25 22:03:14', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 22:10:06', '2018-01-25 22:10:06', '2018-01-25 22:10:06', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, ' -  -  -  - No Urut :  -  - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN 19012018-017 \r\n				DI RUMAH SAKIT AMAL SEHAT', 61, 'false', -1, NULL, '2018-01-25 22:10:06', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 22:10:07', '2018-01-25 22:10:07', '2018-01-25 22:10:07', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', NULL, -1, ' -  -  -  - No Urut :  -  - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN 19012018-017 \r\n				DI RUMAH SAKIT AMAL SEHAT', 62, 'false', -1, NULL, '2018-01-25 22:10:07', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 22:10:07', '2018-01-25 22:10:07', '2018-01-25 22:10:07', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, ' -  -  -  - No Urut :  -  - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN 19012018-017 \r\n				DI RUMAH SAKIT AMAL SEHAT', 63, 'false', -1, NULL, '2018-01-25 22:10:07', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-25 22:16:55', '2018-01-25 22:16:55', '2018-01-25 22:16:55', '23:59:59', '00:00:00', NULL, '081081081081', 'Default_No_Compression', NULL, -1, ' -  -  -  - No Urut :  -  - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN 19012018-017 \r\n				DI RUMAH SAKIT AMAL SEHAT', 64, 'false', -1, NULL, '2018-01-25 22:16:55', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 00:52:03', '2018-01-26 00:52:03', '2018-01-26 00:52:03', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, ' -  - 2018-01-26 - 13:15:00 - No Urut :  - dr. Khairunisa Wardani, M.Sc. Sp. A - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN KLINIK OBSGYN \r\n				DI RUMAH', 65, 'true', -1, NULL, '2018-01-26 00:52:03', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 01:10:36', '2018-01-26 01:10:36', '2018-01-26 01:10:36', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, ' -  - 2018-01-26 - 13:15:00 - No Urut :  - dr. Khairunisa Wardani, M.Sc. Sp. A - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN KLINIK OBSGYN \r\n				DI RUMAH', 66, 'true', -1, NULL, '2018-01-26 01:10:36', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 01:39:27', '2018-01-26 01:39:27', '2018-01-26 01:39:27', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, ' -  - 2018-01-26 - 13:15:00 - No Urut :  - dr. Khairunisa Wardani, M.Sc. Sp. A - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN KLINIK OBSGYN \r\n				DI RUMAH', 67, 'true', -1, NULL, '2018-01-26 01:39:27', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 01:45:52', '2018-01-26 01:45:52', '2018-01-26 01:45:52', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, ' -  - 2018-01-26 - 13:15:00 - No Urut :  - dr. Khairunisa Wardani, M.Sc. Sp. A - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN KLINIK OBSGYN \r\n				DI RUMAH', 68, 'true', -1, NULL, '2018-01-26 01:45:52', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 01:47:08', '2018-01-26 01:47:08', '2018-01-26 01:47:08', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 36 - PA0023 - 2018-01-26 - 13:15:00 - No Urut : 12 - dr. Khairunisa Wardani, M.Sc. Sp. A - USERNAME : PA0023 - PASSWORD : PA0023 - SELAMAT ANDA TE', 69, 'true', -1, NULL, '2018-01-26 01:47:08', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 01:49:51', '2018-01-26 01:49:51', '2018-01-26 01:49:51', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 37 - PA0024 - 2018-01-30 - 13:30:00 - No Urut : 1 - dr. Umum - USERNAME : PA0024 - PASSWORD : PA0024 - SELAMAT ANDA TELAH \r\n					TERDAFTAR SEBAGAI', 70, 'true', -1, NULL, '2018-01-26 01:49:51', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 01:54:36', '2018-01-26 01:54:36', '2018-01-26 01:54:36', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 38 - PA0025 - 2018-01-30 - 13:30:00 - No Urut : 2 - dr. Umum - USERNAME : PA0025 - PASSWORD : PA0025 - SELAMAT ANDA TELAH \r\n					TERDAFTAR SEBAGAI', 71, 'true', -1, NULL, '2018-01-26 01:54:36', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 01:56:53', '2018-01-26 01:56:53', '2018-01-26 01:56:53', '23:59:59', '00:00:00', NULL, '089876543210', 'Default_No_Compression', '050003A70201', -1, ' -  - 2018-01-26 - 13:15:00 - No Urut :  - dr. Khairunisa Wardani, M.Sc. Sp. A - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN KLINIK OBSGYN \r\n				DI RUMAH', 72, 'true', -1, NULL, '2018-01-26 01:56:53', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 02:24:21', '2018-01-26 02:24:21', '2018-01-26 02:24:21', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 11 - PA0005 - 2018-01-26 - 13:15:00 - No Urut : 2 - dr. Khairunisa Wardani, M.Sc. Sp. A - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN KLINIK OBSGY', 73, 'true', -1, NULL, '2018-01-26 02:24:21', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 02:26:46', '2018-01-26 02:26:46', '2018-01-26 02:26:46', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', '050003A70201', -1, 'yusuf - PA0001 - 2018-01-30 - 13:30:00 - No Urut : 2 - dr. Umum - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN POLIKLINIK SPESIALIS ANAK \r\n				DI RUMAH SA', 74, 'true', -1, NULL, '2018-01-26 02:26:46', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 02:28:40', '2018-01-26 02:28:40', '2018-01-26 02:28:40', '23:59:59', '00:00:00', NULL, '081081081081', 'Default_No_Compression', '050003A70201', -1, ' -  - 2018-01-31 - 09:45:00 - No Urut :  - dr. Ahmad Salimi Jauhari, Sp.OT - SELAMAT ANDA TELAH TERDAFTAR SEBAGAI PASIEN POLI SPESIALIS SYARAF \r\n				DI R', 75, 'true', -1, NULL, '2018-01-26 02:28:40', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 02:29:42', '2018-01-26 02:29:42', '2018-01-26 02:29:42', '23:59:59', '00:00:00', NULL, '088888888880', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 40 - PA0027 - 2018-01-31 - 09:45:00 - No Urut : 2 - dr. Ahmad Salimi Jauhari, Sp.OT - USERNAME : PA0027 - PASSWORD : PA0027 - SELAMAT ANDA TELAH \r', 76, 'true', -1, NULL, '2018-01-26 02:29:42', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 02:31:21', '2018-01-26 02:31:21', '2018-01-26 02:31:21', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 41 - PA0028 - 2018-01-26 - 13:15:00 - No Urut : 15 - dr. Khairunisa Wardani, M.Sc. Sp. A - USERNAME : PA0028 - PASSWORD : PA0028 - SELAMAT ANDA TE', 77, 'true', -1, NULL, '2018-01-26 02:31:21', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 04:39:46', '2018-01-26 04:39:46', '2018-01-26 04:39:46', '23:59:59', '00:00:00', NULL, '', 'Default_No_Compression', NULL, -1, 'Tipe pesan tidak diketahui atau penulisan salah , pastikan format pesan benar (BARU/LAMA/INFO POLI)', 78, 'false', -1, NULL, '2018-01-26 04:39:46', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 04:39:58', '2018-01-26 04:39:58', '2018-01-26 04:39:58', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, 'Tipe pesan tidak diketahui atau penulisan salah , pastikan format pesan benar (BARU/LAMA/INFO POLI)', 79, 'false', -1, NULL, '2018-01-26 04:39:58', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 04:40:25', '2018-01-26 04:40:25', '2018-01-26 04:40:25', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, 'Tipe pesan tidak diketahui atau penulisan salah , pastikan format pesan benar (BARU/LAMA/INFO POLI)', 80, 'false', -1, NULL, '2018-01-26 04:40:25', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 04:40:25', '2018-01-26 04:40:25', '2018-01-26 04:40:25', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, 'Tipe pesan tidak diketahui atau penulisan salah , pastikan format pesan benar (BARU/LAMA/INFO POLI)', 81, 'false', -1, NULL, '2018-01-26 04:40:25', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 04:44:02', '2018-01-26 04:44:02', '2018-01-26 04:44:02', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, 'Tipe pesan tidak diketahui atau penulisan salah , pastikan format pesan benar (BARU/LAMA/INFO POLI)', 82, 'false', -1, NULL, '2018-01-26 04:44:02', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 04:44:02', '2018-01-26 04:44:02', '2018-01-26 04:44:02', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, 'Tipe pesan tidak diketahui atau penulisan salah , pastikan format pesan benar (BARU/LAMA/INFO POLI)', 83, 'false', -1, NULL, '2018-01-26 04:44:02', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 04:44:02', '2018-01-26 04:44:02', '2018-01-26 04:44:02', '23:59:59', '00:00:00', NULL, '088888888880', 'Default_No_Compression', NULL, -1, 'Tipe pesan tidak diketahui atau penulisan salah , pastikan format pesan benar (BARU/LAMA/INFO POLI)', 84, 'false', -1, NULL, '2018-01-26 04:44:02', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 06:14:22', '2018-01-26 06:14:22', '2018-01-26 06:14:22', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, 'Tipe pesan tidak diketahui atau penulisan salah , pastikan format pesan benar (BARU/LAMA/INFO POLI)', 85, 'false', -1, NULL, '2018-01-26 06:14:22', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 06:34:59', '2018-01-26 06:34:59', '2018-01-26 06:34:59', '23:59:59', '00:00:00', NULL, '081081081081', 'Default_No_Compression', NULL, -1, 'Tipe pesan tidak diketahui atau penulisan salah , pastikan format pesan benar (BARU/LAMA/INFO POLI)', 86, 'false', -1, NULL, '2018-01-26 06:34:59', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 06:50:45', '2018-01-26 06:50:45', '2018-01-26 06:50:45', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', NULL, -1, 'Tipe pesan tidak diketahui atau penulisan salah , pastikan format pesan benar (BARU/LAMA/INFO POLI)', 87, 'false', -1, NULL, '2018-01-26 06:50:45', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 07:12:34', '2018-01-26 07:12:34', '2018-01-26 07:12:34', '23:59:59', '00:00:00', NULL, '081081081081', 'Default_No_Compression', NULL, -1, 'Tipe pesan tidak diketahui atau penulisan salah , pastikan format pesan benar (BARU/LAMA/INFO POLI)', 88, 'false', -1, NULL, '2018-01-26 07:12:34', 'default', 'Gammu', 0, 0, 'Reserved', -1),
('2018-01-26 07:16:29', '2018-01-26 07:16:29', '2018-01-26 07:16:29', '23:59:59', '00:00:00', NULL, '081234567890', 'Default_No_Compression', '050003A70201', -1, 'PASIEN 43 YUSUF BUDI KURNIAWAN - PA0029 - 2018-01-30 - 13:30:00 - No Urut : 4 - dr. Umum - USERNAME : PA0029 - PASSWORD : PA0029 - SELAMAT ANDA\r\n				TELA', 89, 'true', -1, NULL, '2018-01-26 07:16:29', 'default', 'Gammu', 0, 0, 'Reserved', -1);

--
-- Trigger `outbox`
--
DELIMITER $$
CREATE TRIGGER `outbox_timestamp` BEFORE INSERT ON `outbox` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.SendingDateTime = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingTimeOut = '0000-00-00 00:00:00' THEN
        SET NEW.SendingTimeOut = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `outbox_multipart`
--

CREATE TABLE `outbox_multipart` (
  `Text` text,
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text,
  `ID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error','Reserved') NOT NULL DEFAULT 'Reserved',
  `StatusCode` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `outbox_multipart`
--

INSERT INTO `outbox_multipart` (`Text`, `Coding`, `UDH`, `Class`, `TextDecoded`, `ID`, `SequencePosition`, `Status`, `StatusCode`) VALUES
(NULL, 'Default_No_Compression', '050003A70202', -1, 'AL SEHAT', 8, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A80202', -1, 'lllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll', 9, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'PASIEN POLIKLINIK SPESIALIS OBSTETRI GINEKOLOGI DI RUMAH SAKIT AMAL SEHAT', 11, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'PASIEN POLIKLINIK SPESIALIS OBSTETRI GINEKOLOGI DI RUMAH SAKIT AMAL SEHAT', 12, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'AT', 13, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'uchammad Machi <br> 20:00:00  -  2018-01-22  -  Radiologi  -  dr. Yosie Arif Sanjaya, Sp. An <br>', 21, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'Muchammad Machi ) ( 20:00:00  -  2018-01-22  -  Radiologi  -  dr. Yosie Arif Sanjaya, Sp. An )', 22, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'PASIEN RADIOLOGI DI RUMAH SAKIT AMAL SEHAT', 36, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'DAFTAR SEBAGAI PASIEN POLIKLINIK SPESIALIS ANAK DI RUMAH SAKIT AMAL SEHAT', 40, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'AFTAR SEBAGAI PASIEN KLINIK OBSGYN DI RUMAH SAKIT AMAL SEHAT', 43, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'OLIKLINIK SPESIALIS UROLOGI DI RUMAH SAKIT AMAL SEHAT', 44, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'EBAGAI PASIEN POLIKLINIK SPESIALIS UROLOGI DI RUMAH SAKIT AMAL SEHAT', 45, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, ' PASIEN POLIKLINIK SPESIALIS ANAK DI RUMAH SAKIT AMAL SEHAT', 48, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'LAH \r\n					TERDAFTAR SEBAGAI PASIEN POLIKLINIK SPESIALIS ANAK DI RUMAH SAKIT AMAL SEHAT', 49, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'LAH \r\n					TERDAFTAR SEBAGAI PASIEN POLIKLINIK SPESIALIS ANAK DI RUMAH SAKIT AMAL SEHAT', 50, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, ' PASIEN POLIKLINIK SPESIALIS ANAK DI RUMAH SAKIT AMAL SEHAT', 51, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, ' PASIEN POLIKLINIK SPESIALIS ANAK DI RUMAH SAKIT AMAL SEHAT', 52, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, ' PASIEN POLIKLINIK SPESIALIS ANAK DI RUMAH SAKIT AMAL SEHAT', 53, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'LAH \r\n					TERDAFTAR SEBAGAI PASIEN POLIKLINIK SPESIALIS ANAK DI RUMAH SAKIT AMAL SEHAT', 54, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'BAGAI PASIEN POLIKLINIK SPESIALIS UROLOGI DI RUMAH SAKIT AMAL SEHAT', 55, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'DI RUMAH SAKIT AMAL SEHAT', 56, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'DI RUMAH SAKIT AMAL SEHAT', 57, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, ' SAKIT AMAL SEHAT', 59, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, ' SAKIT AMAL SEHAT', 65, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, ' SAKIT AMAL SEHAT', 66, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, ' SAKIT AMAL SEHAT', 67, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, ' SAKIT AMAL SEHAT', 68, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'LAH \r\n					TERDAFTAR SEBAGAI PASIEN KLINIK OBSGYN DI RUMAH SAKIT AMAL SEHAT', 69, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, ' PASIEN POLIKLINIK SPESIALIS ANAK DI RUMAH SAKIT AMAL SEHAT', 70, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, ' PASIEN POLIKLINIK SPESIALIS ANAK DI RUMAH SAKIT AMAL SEHAT', 71, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, ' SAKIT AMAL SEHAT', 72, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'N \r\n				DI RUMAH SAKIT AMAL SEHAT', 73, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'KIT AMAL SEHAT', 74, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'UMAH SAKIT AMAL SEHAT', 75, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, '\n					TERDAFTAR SEBAGAI PASIEN POLI SPESIALIS SYARAF DI RUMAH SAKIT AMAL SEHAT', 76, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'LAH \r\n					TERDAFTAR SEBAGAI PASIEN KLINIK OBSGYN DI RUMAH SAKIT AMAL SEHAT', 77, 2, 'Reserved', -1),
(NULL, 'Default_No_Compression', '050003A70202', -1, 'H TERDAFTAR SEBAGAI PASIEN POLIKLINIK SPESIALIS ANAK DI RUMAH SAKIT AMAL SEHAT', 89, 2, 'Reserved', -1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `phones`
--

CREATE TABLE `phones` (
  `ID` text NOT NULL,
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeOut` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Send` enum('yes','no') NOT NULL DEFAULT 'no',
  `Receive` enum('yes','no') NOT NULL DEFAULT 'no',
  `IMEI` varchar(35) NOT NULL,
  `IMSI` varchar(35) NOT NULL,
  `NetCode` varchar(10) DEFAULT 'ERROR',
  `NetName` varchar(35) DEFAULT 'ERROR',
  `Client` text NOT NULL,
  `Battery` int(11) NOT NULL DEFAULT '-1',
  `Signal` int(11) NOT NULL DEFAULT '-1',
  `Sent` int(11) NOT NULL DEFAULT '0',
  `Received` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Trigger `phones`
--
DELIMITER $$
CREATE TRIGGER `phones_timestamp` BEFORE INSERT ON `phones` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.TimeOut = '0000-00-00 00:00:00' THEN
        SET NEW.TimeOut = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sentitems`
--

CREATE TABLE `sentitems` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryDateTime` timestamp NULL DEFAULT NULL,
  `Text` text NOT NULL,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `SenderID` varchar(255) NOT NULL,
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error') NOT NULL DEFAULT 'SendingOK',
  `StatusError` int(11) NOT NULL DEFAULT '-1',
  `TPMR` int(11) NOT NULL DEFAULT '-1',
  `RelativeValidity` int(11) NOT NULL DEFAULT '-1',
  `CreatorID` text NOT NULL,
  `StatusCode` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Trigger `sentitems`
--
DELIMITER $$
CREATE TRIGGER `sentitems_timestamp` BEFORE INSERT ON `sentitems` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.SendingDateTime = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sms_inbox`
--

CREATE TABLE `sms_inbox` (
  `pk` int(20) NOT NULL,
  `waktu_terima` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no_hp` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `pesan` text CHARACTER SET utf8mb4 NOT NULL,
  `status_pesan` enum('false','true') CHARACTER SET utf8mb4 NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sms_inbox`
--

INSERT INTO `sms_inbox` (`pk`, `waktu_terima`, `no_hp`, `pesan`, `status_pesan`) VALUES
(1, '2018-01-26 04:38:20', '081234567890', 'nyoba', 'true'),
(2, '2018-01-26 04:40:25', '081234567890', 'nyoba lagi', 'true'),
(3, '2018-01-26 04:44:02', '088888888880', 'nyoba 3x', 'true'),
(4, '2018-01-26 06:14:22', '081234567890', 'part 2 iki', 'true'),
(5, '2018-01-26 06:34:59', '081081081081', 'versi 2 lho', 'true'),
(6, '2018-01-26 06:50:45', '081234567890', 'hsdajsdkjsfjnajncnhfehkhfenhnvhghjfhjdhfjehcfjehcjgrgfchjrhgjrhcgjerhjgrehjghrjhcrhjgjrgwehgfhwgejcbwgwjcgjwegcjfgfcnjrgchrgncgrhehhefguwenftunncgccrfgrg 2 bisa plis', 'true'),
(7, '2018-01-26 07:04:42', '081234567890', 'baru#PASIEN 42 yusuf budi kurniawan#p#12-01-2003#Jalan Nangka jeruk pisang kelurahan duren kota naga indonesia#ibu pasien 42# Poliklinik Spesialis Anak#asuransi#30-01-2018', 'true'),
(8, '2018-01-26 07:12:34', '081081081081', 'jjshfjsdhjfjdsfjsdhjfjhdsfhjdsfhjdshjfhjsdfhhjdsfhjhdsfhjhsdjfsjdfhjsdfhjsdhjdfjdshfjsdhfjsdhfjsdhfjhsdjfhjsdfhjsdhjkkskskskskskskskksskskksskksskkswwwwwbagian loro', 'true'),
(9, '2018-01-26 07:16:29', '081234567890', 'baru#PASIEN 43 yusuf budi kurniawan#p#12-01-2003#Jalan Nangka jeruk pisang kelurahan duren kota naga indonesia#ibu pasien 43#Poliklinik Spesialis Anak#asuransi#30-01-2018', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gammu`
--
ALTER TABLE `gammu`
  ADD PRIMARY KEY (`Version`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`ID`);

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
-- Indexes for table `outbox`
--
ALTER TABLE `outbox`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `outbox_date` (`SendingDateTime`,`SendingTimeOut`),
  ADD KEY `outbox_sender` (`SenderID`(250));

--
-- Indexes for table `outbox_multipart`
--
ALTER TABLE `outbox_multipart`
  ADD PRIMARY KEY (`ID`,`SequencePosition`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`IMEI`);

--
-- Indexes for table `sentitems`
--
ALTER TABLE `sentitems`
  ADD PRIMARY KEY (`ID`,`SequencePosition`),
  ADD KEY `sentitems_date` (`DeliveryDateTime`),
  ADD KEY `sentitems_tpmr` (`TPMR`),
  ADD KEY `sentitems_dest` (`DestinationNumber`),
  ADD KEY `sentitems_sender` (`SenderID`(250));

--
-- Indexes for table `sms_inbox`
--
ALTER TABLE `sms_inbox`
  ADD PRIMARY KEY (`pk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `m_gallery`
--
ALTER TABLE `m_gallery`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `m_jadwal_praktek`
--
ALTER TABLE `m_jadwal_praktek`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `m_jadwal_praktek_antrian`
--
ALTER TABLE `m_jadwal_praktek_antrian`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `m_jenis_pelayanan`
--
ALTER TABLE `m_jenis_pelayanan`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_kontak`
--
ALTER TABLE `m_kontak`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
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
--
-- AUTO_INCREMENT for table `outbox`
--
ALTER TABLE `outbox`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `sms_inbox`
--
ALTER TABLE `sms_inbox`
  MODIFY `pk` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
