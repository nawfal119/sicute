-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 08:17 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sicute`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuti_pegawai`
--

CREATE TABLE `cuti_pegawai` (
  `id_cupeg` int(25) NOT NULL,
  `id_pegawai` int(25) NOT NULL,
  `jenis_cuti` varchar(40) NOT NULL,
  `alasan_cuti` varchar(255) NOT NULL,
  `lama_cuti` varchar(40) NOT NULL,
  `ket_lama_cuti` varchar(40) NOT NULL,
  `tgl_mulai` varchar(20) NOT NULL,
  `tgl_selesai` varchar(20) NOT NULL,
  `kasubag_kasi` varchar(40) DEFAULT NULL,
  `kepala` varchar(40) DEFAULT NULL,
  `app_kasubag_kasi` int(25) NOT NULL,
  `app_kepala` int(25) NOT NULL,
  `status_cuti` varchar(40) NOT NULL,
  `ket_status_cuti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cuti_pegawai`
--

INSERT INTO `cuti_pegawai` (`id_cupeg`, `id_pegawai`, `jenis_cuti`, `alasan_cuti`, `lama_cuti`, `ket_lama_cuti`, `tgl_mulai`, `tgl_selesai`, `kasubag_kasi`, `kepala`, `app_kasubag_kasi`, `app_kepala`, `status_cuti`, `ket_status_cuti`) VALUES
(4, 6, 'Cuti Sakit', 'Demam', '1', 'Hari', '2021-09-27', '2021-09-28', '197401312007101001', '197202161998031004', 1, 0, 'Tidak Disetujui', 'ss'),
(10, 2, 'Cuti Tahunan', '23', '2', 'Hari', '2021-10-12', '2021-10-15', NULL, '197202161998031004', 1, 0, 'Perubahan', 'aaa'),
(11, 2, 'Cuti Tahunan', 'asas', '5', 'Hari', '2021-10-13', '2021-10-16', NULL, '197202161998031004', 1, 0, 'Ditangguhkan', 'asas'),
(12, 2, 'Cuti Besar', 'asa', 'asa', 'Hari', '2021-10-13', '2021-11-04', NULL, '197202161998031004', 1, 0, 'Tidak Disetujui', 'asas'),
(13, 2, 'Cuti Sakit', 'asfse', 'adad', 'Hari', '2021-10-27', '2021-10-22', NULL, '197202161998031004', 1, 0, 'Perubahan', ''),
(14, 2, 'Cuti Besar', 'awe', '3', 'Minggu', '2021-10-12', '2021-10-06', NULL, '197202161998031004', 1, 1, 'Disetujui', 'Pengajuan Cuti Diterima'),
(15, 6, 'Cuti Tahunan', '1', '1', 'Hari', '2021-10-14', '2021-10-20', '197401312007101001', NULL, 0, 0, 'Perubahan', 'sds'),
(16, 6, 'Cuti Sakit', '12', '4', 'Hari', '2021-10-28', '2021-10-30', '197401312007101001', NULL, 0, 0, 'Ditangguhkan', 'ses'),
(18, 6, 'Cuti Tahunan', '23', '2', 'Hari', '2021-10-06', '2021-10-19', '197401312007101001', '197202161998031004', 1, 1, 'Disetujui', 'Pengajuan Cuti Diterima'),
(19, 2, 'Cuti Besar', 'asas', '2', 'Hari', '2021-10-19', '2021-10-27', NULL, '197202161998031004', 1, 0, 'Diajukan', 'Menunggu Approval Kepala Kantor'),
(20, 6, 'Cuti Tahunan', 'asa', '2', 'Hari', '2021-10-12', '2021-10-12', '197401312007101001', '197202161998031004', 1, 0, 'Diajukan', 'Menunggu Approval Kepala Kantor'),
(21, 5, 'Cuti Karena Alasan Penting', 'asewew', '5', 'Hari', '2021-10-19', '2021-10-29', NULL, '197202161998031004', 1, 0, 'Diajukan', 'Menunggu Approval Kepala Kantor'),
(22, 7, 'Cuti Tahunan', 'Ingin melihat pacar', '3', 'Hari', '2021-10-06', '2021-10-11', '197505042005011011', NULL, 0, 0, 'Diajukan', 'Menunggu Approval Kasi Pendis');

-- --------------------------------------------------------

--
-- Table structure for table `cuti_pegawai2`
--

CREATE TABLE `cuti_pegawai2` (
  `id_cupeg` int(25) NOT NULL,
  `id_pegawai` int(25) NOT NULL,
  `jenis_cuti` varchar(40) NOT NULL,
  `alasan_cuti` varchar(255) NOT NULL,
  `lama_cuti` varchar(40) NOT NULL,
  `ket_lama_cuti` varchar(40) NOT NULL,
  `tgl_mulai` varchar(20) NOT NULL,
  `tgl_selesai` varchar(20) NOT NULL,
  `kasubag_kasi` varchar(40) DEFAULT NULL,
  `kepala` varchar(40) DEFAULT NULL,
  `app_kasubag_kasi` int(25) NOT NULL,
  `app_kepala` int(25) NOT NULL,
  `status_cuti` varchar(40) NOT NULL,
  `ket_status_cuti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cuti_pegawai2`
--

INSERT INTO `cuti_pegawai2` (`id_cupeg`, `id_pegawai`, `jenis_cuti`, `alasan_cuti`, `lama_cuti`, `ket_lama_cuti`, `tgl_mulai`, `tgl_selesai`, `kasubag_kasi`, `kepala`, `app_kasubag_kasi`, `app_kepala`, `status_cuti`, `ket_status_cuti`) VALUES
(4, 6, 'Cuti Sakit', 'Demam', '1', 'Hari', '2021-09-27', '2021-09-28', '197401312007101001', '197202161998031004', 1, 0, 'Tidak Disetujui', 'ss'),
(10, 2, 'Cuti Tahunan', '23', '2', 'Hari', '2021-10-12', '2021-10-15', NULL, '197202161998031004', 1, 0, 'Perubahan', 'aaa'),
(11, 2, 'Cuti Tahunan', 'asas', '5', 'Hari', '2021-10-13', '2021-10-16', NULL, '197202161998031004', 1, 0, 'Ditangguhkan', 'asas'),
(12, 2, 'Cuti Besar', 'asa', 'asa', 'Hari', '2021-10-13', '2021-11-04', NULL, '197202161998031004', 1, 0, 'Tidak Disetujui', 'asas'),
(13, 2, 'Cuti Sakit', 'asfse', 'adad', 'Hari', '2021-10-27', '2021-10-22', NULL, '197202161998031004', 1, 0, 'Perubahan', ''),
(14, 2, 'Cuti Besar', 'awe', '3', 'Minggu', '2021-10-12', '2021-10-06', NULL, '197202161998031004', 1, 1, 'Disetujui', 'Pengajuan Cuti Diterima'),
(15, 6, 'Cuti Tahunan', '1', '1', 'Hari', '2021-10-14', '2021-10-20', '197401312007101001', NULL, 0, 0, 'Perubahan', 'sds'),
(16, 6, 'Cuti Sakit', '12', '4', 'Hari', '2021-10-28', '2021-10-30', '197401312007101001', NULL, 0, 0, 'Ditangguhkan', 'ses'),
(18, 6, 'Cuti Tahunan', '23', '2', 'Hari', '2021-10-06', '2021-10-19', '197401312007101001', '197202161998031004', 1, 1, 'Disetujui', 'Pengajuan Cuti Diterima'),
(19, 2, 'Cuti Besar', 'asas', '2', 'Hari', '2021-10-19', '2021-10-27', NULL, '197202161998031004', 1, 0, 'Diajukan', 'Menunggu Approval Kepala Kantor'),
(20, 6, 'Cuti Tahunan', 'asa', '2', 'Hari', '2021-10-12', '2021-10-12', '197401312007101001', '197202161998031004', 1, 0, 'Diajukan', 'Menunggu Approval Kepala Kantor'),
(21, 5, 'Cuti Karena Alasan Penting', 'asewew', '5', 'Hari', '2021-10-19', '2021-10-29', NULL, '197202161998031004', 1, 0, 'Diajukan', 'Menunggu Approval Kepala Kantor'),
(22, 7, 'Cuti Tahunan', 'Ingin melihat pacar', '3', 'Hari', '2021-10-06', '2021-10-11', '197505042005011011', NULL, 0, 0, 'Diajukan', 'Menunggu Approval Kasi Pendis');

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `id_gol` int(25) NOT NULL,
  `nama_gol` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`id_gol`, `nama_gol`) VALUES
(1, 'IV/b'),
(2, 'IV/a'),
(3, 'III/d'),
(4, 'III/c'),
(5, 'III/b'),
(6, 'III/a'),
(7, 'II/a'),
(9, 'II/b');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jab` int(25) NOT NULL,
  `nama_jab` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jab`, `nama_jab`) VALUES
(1, 'KEPALA KANTOR'),
(2, 'KASUBBAG TU'),
(3, 'KASI BIMAS'),
(4, 'KASI PENDIS'),
(5, 'KASI PHU'),
(6, 'ANALIS KEPEGAWAIAN'),
(7, 'ANALIS KELEMBAGAAN PEMBINAAN PENDIDIKAN'),
(8, 'PENYUSUN BAHAN PENDAFTARAN ATAU PEMBATALAN HAJI'),
(9, 'PENYUSUN BAHAN PEMBINAAN SDM KEPENGHULUAN');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(25) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `id_jab` int(25) NOT NULL,
  `id_gol` int(25) NOT NULL,
  `unit_kerja` varchar(200) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `sisa_cuti` int(40) DEFAULT NULL,
  `atasan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `nip`, `id_jab`, `id_gol`, `unit_kerja`, `foto`, `sisa_cuti`, `atasan`) VALUES
(1, 'H. HARDIMAN, S.Ag.,M.M.', '197202161998031004', 1, 1, 'Kantor Kementerian Agama Kota Sungai Penuh', '', 12, 'KEPALA KANWIL'),
(2, 'MUHARUM S.Ag', '197401312007101001', 2, 3, 'Kantor Kementerian Agama Kota Sungai Penuh', '', 12, 'KEPALA KANTOR'),
(3, 'HENDRIZAL, S.Ag', '197403081998031003', 3, 2, 'Kantor Kementerian Agama Kota Sungai Penuh', '', 12, 'KEPALA KANTOR'),
(4, 'PADRI, S.Pd, MA', '197505042005011011', 4, 3, 'Kantor Kementerian Agama Kota Sungai Penuh', '', 12, 'KEPALA KANTOR'),
(5, 'H. ZAINUDDIN, S.PdI', '196801141989031004', 5, 2, 'Kantor Kementerian Agama Kota Sungai Penuh', '', 12, 'KEPALA KANTOR'),
(6, 'OVENI WEDIAN ROSI, SE, MM', '197805252005012005', 6, 3, 'Kantor Kementerian Agama Kota Sungai Penuh', '', 12, 'KEPALA SUB BAGIAN TATA USAHA'),
(7, 'FERRI YUMAIZAR, S.Pd., MM', '198305212001121005', 7, 3, 'Kantor Kementerian Agama Kota Sungai Penuh', '', 12, 'KEPALA SEKSI PENDIS'),
(8, 'EVA KARTINI S.Pd.I', '197804212001122001', 8, 4, 'Kantor Kementerian Agama Kota Sungai Penuh', '', 12, 'KEPALA SEKSI PHU'),
(18, 'wewewew', '2323', 3, 4, 'Kantor Kementessdrian Agama Kota Sungai Penuh', NULL, 12, 'KEPALA SEKSI BIMAS'),
(19, 'asda', '23232', 3, 4, 'Kantor Kementessdrian Agama Kota Sungai Penuh', NULL, 12232, 'KEPALA SEKSI BIMAS');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nip`, `password`, `role`) VALUES
(1, '197202161998031004', 'user', 'User'),
(2, '197401312007101001', 'user', 'User'),
(3, '197403081998031003', 'user', 'User'),
(4, '197505042005011011', 'user', 'User'),
(5, '196801141989031004', 'user', 'User'),
(6, '197805252005012005', 'admin', 'Admin'),
(7, '198305212001121005', 'user', 'User'),
(8, '197804212001122001', 'user', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuti_pegawai`
--
ALTER TABLE `cuti_pegawai`
  ADD PRIMARY KEY (`id_cupeg`),
  ADD KEY `cupeg_fk1` (`id_pegawai`);

--
-- Indexes for table `cuti_pegawai2`
--
ALTER TABLE `cuti_pegawai2`
  ADD PRIMARY KEY (`id_cupeg`),
  ADD KEY `cupeg_fk1` (`id_pegawai`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`id_gol`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jab`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `nip` (`nip`),
  ADD KEY `id_jab` (`id_jab`),
  ADD KEY `id_gol` (`id_gol`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `nip` (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cuti_pegawai`
--
ALTER TABLE `cuti_pegawai`
  MODIFY `id_cupeg` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cuti_pegawai2`
--
ALTER TABLE `cuti_pegawai2`
  MODIFY `id_cupeg` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `golongan`
--
ALTER TABLE `golongan`
  MODIFY `id_gol` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jab` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cuti_pegawai`
--
ALTER TABLE `cuti_pegawai`
  ADD CONSTRAINT `cupeg_fk1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_fk1` FOREIGN KEY (`id_gol`) REFERENCES `golongan` (`id_gol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_fk2` FOREIGN KEY (`id_jab`) REFERENCES `jabatan` (`id_jab`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
