-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2023 at 04:46 AM
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
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `Kode_Barang` varchar(10) NOT NULL,
  `Nama_Barang` text NOT NULL,
  `Stok` int(11) NOT NULL,
  `Satuan` text NOT NULL,
  `Harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`Kode_Barang`, `Nama_Barang`, `Stok`, `Satuan`, `Harga`) VALUES
('B001', 'Buku Sidu', 50, 'Pack', 24000),
('B002', 'Pulpen Pilot ', 45, 'Buah', 2000),
('B012', 'Tango Cheese', 50, 'Kaleng', 48000),
('B020', 'Nissin Wafers', 12, 'Kaleng', 45000),
('CA001', 'Paseo', 11, 'Buah', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang`
--

CREATE TABLE `detail_barang` (
  `Kode_Detail` varchar(10) NOT NULL,
  `Kode_Barang` varchar(10) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Discount` int(11) NOT NULL,
  `Subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `detail_barang`
--

INSERT INTO `detail_barang` (`Kode_Detail`, `Kode_Barang`, `Harga`, `Jumlah`, `Discount`, `Subtotal`) VALUES
('DTRX004', 'B012', 48000, 2, 2500, 93500),
('DTRX007', 'B012', 48000, 2, 0, 96000),
('DTRX008', 'CA001', 20000, 1, 0, 20000),
('DTRX008', 'B020', 45000, 2, 0, 90000),
('DTRX009', 'CA001', 20000, 1, 0, 20000),
('DTRX009', 'B020', 45000, 1, 0, 45000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Kode_Transaksi` varchar(10) NOT NULL,
  `Kode_Detail` varchar(10) NOT NULL,
  `Tanggal` date NOT NULL,
  `Jam` time NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`Kode_Transaksi`, `Kode_Detail`, `Tanggal`, `Jam`, `Total`) VALUES
('', 'D', '2023-07-13', '23:11:43', 272000),
('TRX001', 'DTRX001', '2023-07-14', '03:49:45', 190000),
('TRX002', 'DTRX002', '2018-07-13', '09:33:19', 39000),
('TRX003', 'DTRX003', '2018-07-16', '09:20:30', 23500),
('TRX004', 'DTRX004', '2018-07-13', '09:21:37', 119500),
('TRX005', 'DTRX005', '2018-07-16', '09:22:09', 52000),
('TRX006', 'DTRX006', '2018-07-16', '09:22:32', 4000),
('TRX007', 'DTRX007', '2018-07-16', '09:22:56', 96000),
('TRX008', 'DTRX008', '2023-07-14', '04:16:24', 110000),
('TRX009', 'DTRX009', '2023-07-14', '04:16:53', 65000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Kode_Barang`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Kode_Transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
