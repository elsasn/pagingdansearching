-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2019 at 08:22 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas1`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(10) NOT NULL,
  `nama` varchar(11) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `no_telp` varchar(11) NOT NULL,
  `alamat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jenis_kelamin`, `no_telp`, `alamat`) VALUES
(31731101, 'Jeje', 'L', '021987555', 'Yogyakarta'),
(31731102, 'Eva', 'P', '08563738493', 'Cilacap'),
(31731103, 'Ayunda', 'P', '0897364859', 'Purwokerto'),
(31731104, 'Dika', 'L', '081234987', 'Jepara'),
(31731105, 'Wahyu', 'L', '08543249223', 'Mosari'),
(31731106, 'Oman', 'L', '08512245934', 'Brebes'),
(31731107, 'Rohman', 'L', '08563489248', 'Brebes'),
(31731108, 'Rohmah', 'P', '0856783947', 'Brebes'),
(31731109, 'Zulfia', 'P', '082343558', 'Jepara'),
(317311010, 'Day', 'P', '08534982653', 'Pangandaran'),
(317311011, 'Ica', 'P', '08238573445', 'Grobogan'),
(317311012, 'Alisia', 'P', '0828347824', 'Jakarta'),
(317311013, 'Dimas', 'L', '08275385928', 'Jakarta'),
(317311014, 'Caca', 'P', '0853283876', 'Semarang'),
(317311015, 'Avelia', 'P', '08582346238', 'Jepara'),
(317311016, 'Ibad', 'L', '08946713654', 'Jepara'),
(317311017, 'Aufa', 'P', '08973462387', 'Yogyakarta'),
(317311018, 'Kia', 'P', '08248364834', 'Yogyakarta'),
(317311019, 'Rosyada', 'P', '0894786257', 'Cilacap'),
(317311020, 'Prastowo', 'P', '08937645257', 'Cilacap');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `nim` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317311021;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
