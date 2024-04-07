-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 11:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assetpadimtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftaraset`
--

CREATE TABLE `tb_daftaraset` (
  `no_tbl` int(3) NOT NULL,
  `kd_aset` varchar(50) NOT NULL,
  `nama_aset` varchar(100) NOT NULL,
  `jml_asset` int(3) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_daftaraset`
--

INSERT INTO `tb_daftaraset` (`no_tbl`, `kd_aset`, `nama_aset`, `jml_asset`, `status`) VALUES
(1, 'E-01', 'Komputer', 6, 'Boleh'),
(2, 'E-02', 'Mesin Penghancur Kertas', 3, 'Tidak'),
(3, 'E-03', 'Monitor Presentasi', 4, 'Boleh'),
(4, 'E-04', 'Proyektor', 5, 'Boleh'),
(5, 'E-05', 'Printer', 1, 'Tidak'),
(6, 'E-06', 'Scanner', 1, 'Tidak'),
(7, 'E-07', 'Stopkontak', 3, 'Boleh'),
(8, 'E-08', 'Mesin fotokopi', 1, 'Tidak'),
(9, 'E-09', 'Speaker', 3, 'Tidak'),
(10, 'E-10', 'CPU', 6, 'Boleh'),
(11, 'E-11', 'Keyboard', 10, 'Boleh'),
(12, 'E-12', 'Mouse', 15, 'Boleh'),
(13, 'E-13', 'Telepon Kantor', 5, 'Boleh'),
(14, 'E-14', 'Mesin Pemotong Kertas', 2, 'Tidak'),
(15, 'E-15', 'Layar Monitor PC', 3, 'Boleh'),
(16, 'N-01', 'Kursi', 10, 'Boleh'),
(17, 'N-02', 'Meja', 12, 'Boleh'),
(18, 'N-03', 'Papan Tulis Putih', 7, 'Boleh'),
(19, 'N-04', 'Spidol', 20, 'Boleh'),
(20, 'N-05', 'Lemari', 3, 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftarkembali`
--

CREATE TABLE `tb_daftarkembali` (
  `id_formkembali` int(3) NOT NULL,
  `nama_pinjam` varchar(100) NOT NULL,
  `tgl_kembali` text NOT NULL,
  `hp` varchar(20) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `nm_assetkembali` varchar(100) NOT NULL,
  `jml_assetkembali` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_daftarkembali`
--

INSERT INTO `tb_daftarkembali` (`id_formkembali`, `nama_pinjam`, `tgl_kembali`, `hp`, `alamat`, `nm_assetkembali`, `jml_assetkembali`) VALUES
(1, 'Insyifah', '18-12-2023', '+6282130988817', 'Jl Tarumanegara', 'Komputer', 1),
(2, 'Insyirah', '18-12-2023', '+628213098000', 'Pemali', 'Komputer', 1),
(3, 'gita', '19-12-2023', '+6108575881280', 'kpjawa', 'Stopkontak', 3),
(4, 'gema', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(5, 'Mutyarsih', '19-12-2023', '+6282130988817', 'kp pasir', 'Stopkontak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftarpinjam`
--

CREATE TABLE `tb_daftarpinjam` (
  `id_formpinjam` int(5) NOT NULL,
  `nama_pinjam` varchar(100) NOT NULL,
  `tgl_pinjam` text NOT NULL,
  `hp` varchar(20) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `nm_assetpinjam` varchar(100) NOT NULL,
  `jml_assetpinjam` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_daftarpinjam`
--

INSERT INTO `tb_daftarpinjam` (`id_formpinjam`, `nama_pinjam`, `tgl_pinjam`, `hp`, `alamat`, `nm_assetpinjam`, `jml_assetpinjam`) VALUES
(1, 'gita', '20-12-2023', '+6108575881280', 'kpjawa', 'Stopkontak', 3),
(2, 'Muty', '19-12-2023', '+61085758812807', 'kp pasir', 'Komputer', 1),
(3, 'suci', '19-12-2023', '+610857588', 'pkp', 'Stopkontak', 1),
(4, 'suci', '19-12-2023', '+610857588', 'pkp', 'Stopkontak', 1),
(5, 'suci', '19-12-2023', '+610857588', 'pkp', 'Stopkontak', 1),
(6, 'suci', '19-12-2023', '+610857588', 'pkp', 'Stopkontak', 1),
(7, 'suci', '19-12-2023', '+610857588', 'pkp', 'Stopkontak', 1),
(8, 'khemal', '19-12-2023', '+61085758812807', 'sungli', 'Stopkontak', 1),
(9, 'khemal', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(10, 'dika', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(11, 'dika', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(12, 'dika', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(13, 'dika', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(14, 'igus', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(15, 'igus', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(16, 'igus', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(17, 'igus', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(18, 'igus', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(19, 'mut', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(20, 'mit', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(21, 'mal', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 2),
(22, 'mal', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 2),
(23, 'mal', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 2),
(24, 'suci', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 9),
(25, 'bila', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(26, 'syira', '19-12-2023', '+61085758812807', 'sungli', 'Stopkontak', 2),
(27, 'gema', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 1),
(28, 'hani', '19-12-2023', '+61085758812807', 'bangka', 'Stopkontak', 2),
(29, 'hani', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 3),
(30, 'hani', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 3),
(31, 'hani', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 3),
(32, 'hani', '19-12-2023', '+61085758812807', 'pkp', 'Stopkontak', 3),
(33, 'insyirah', '19-12-2023', '+6282130988817', 'pkp', 'Stopkontak', 1),
(34, 'insyirah', '19-12-2023', '+6282130988817', 'pkp', 'Stopkontak', 1),
(35, 'syira', '19-12-2023', '+6282130988817', 'pkp', 'Stopkontak', 2),
(36, 'insyirah', '19-12-2023', '+6282130', 'pkp', 'Stopkontak', 2),
(37, 'syifa', '23-12-2023', '10101010', 'pkp', 'Stopkontak', 1),
(38, 'syifa', '23-12-2023', '10101010', 'pkp', 'Stopkontak', 1),
(39, 'syifa', '19-12-2023', '1919', 'pkp', 'Stopkontak', 1),
(40, 'Syifa', '23-12-2023', '200', 'pkp', 'Stopkontak', 1),
(41, 'haniyah', '19-12-2023', '0821378010', 'Sungailiat', 'Stopkontak', 1),
(42, 'Mutyarsih', '19-12-2023', '082191', 'Jl. Kp pasir', 'Stopkontak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_laporan`
--

CREATE TABLE `tb_laporan` (
  `id_laporan` int(11) NOT NULL,
  `nama_pelapor` varchar(100) NOT NULL,
  `nm_assetlapor` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `tgl_laporan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_laporan`
--

INSERT INTO `tb_laporan` (`id_laporan`, `nama_pelapor`, `nm_assetlapor`, `deskripsi`, `tgl_laporan`) VALUES
(4, 'Insyirah', 'Komputer', 'Rusak', '18-12-2023'),
(5, 'Depinka', 'Monitor Presentasi', 'Patah baut', '18-12-2023'),
(6, 'Mutyarsih', 'Meja', 'Kayu patah', '19-12-2023'),
(7, 'Dep', 'Meja', 'Hilang', '20-12-2023'),
(8, 'Mutyarsih', 'Stopkontak', 'Kabel nya putus', '20-12-2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_daftaraset`
--
ALTER TABLE `tb_daftaraset`
  ADD PRIMARY KEY (`no_tbl`);

--
-- Indexes for table `tb_daftarkembali`
--
ALTER TABLE `tb_daftarkembali`
  ADD PRIMARY KEY (`id_formkembali`);

--
-- Indexes for table `tb_daftarpinjam`
--
ALTER TABLE `tb_daftarpinjam`
  ADD PRIMARY KEY (`id_formpinjam`);

--
-- Indexes for table `tb_laporan`
--
ALTER TABLE `tb_laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_daftaraset`
--
ALTER TABLE `tb_daftaraset`
  MODIFY `no_tbl` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_daftarkembali`
--
ALTER TABLE `tb_daftarkembali`
  MODIFY `id_formkembali` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_daftarpinjam`
--
ALTER TABLE `tb_daftarpinjam`
  MODIFY `id_formpinjam` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tb_laporan`
--
ALTER TABLE `tb_laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
