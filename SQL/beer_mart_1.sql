-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2016 at 04:35 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beer_mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `IdInvoice` int(11) NOT NULL,
  `idPengguna` int(11) DEFAULT NULL,
  `TotalHarga` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Tipe` int(11) DEFAULT NULL,
  `IdPromo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`IdInvoice`, `idPengguna`, `TotalHarga`, `Tanggal`, `Tipe`, `IdPromo`) VALUES
(90316003, 1, 30000, '2016-09-03', 1, NULL),
(90316004, 1, 25000, '2016-09-03', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `IdMakanan` int(11) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`IdMakanan`, `Nama`, `harga`, `stock`) VALUES
(1, 'MakA', 15000, 100),
(2, 'MakB', 15000, 100),
(3, 'MakC', 20000, 100),
(4, 'MakD', 25000, 100),
(5, 'MakE', 30000, 100),
(6, 'MakF', 28000, 100),
(7, 'MakG', 22000, 100),
(8, 'MakH', 40000, 100),
(9, 'MakI', 55000, 100),
(10, 'MakJ', 60000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Tipe` int(11) NOT NULL,
  `Diskon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Tipe`, `Diskon`) VALUES
(1, 10),
(2, 15),
(3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `minuman`
--

CREATE TABLE `minuman` (
  `IdMinuman` int(11) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minuman`
--

INSERT INTO `minuman` (`IdMinuman`, `Nama`, `harga`, `stock`) VALUES
(1, 'minA', 40000, 100),
(2, 'minB', 50000, 100),
(3, 'minC', 100000, 100),
(4, 'minD', 150000, 100),
(5, 'minE', 200000, 100),
(6, 'minF', 250000, 100),
(7, 'minG', 500000, 100),
(8, 'minH', 300000, 100),
(9, 'minI', 1000000, 100),
(10, 'minJ', 1200000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `IdPengguna` int(11) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `jenis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`IdPengguna`, `pass`, `jenis`) VALUES
(1, 'cilukba', 1),
(2, 'cilukbe', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `IdPesanan` int(11) NOT NULL,
  `IdInvoice` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_makanan`
--

CREATE TABLE `pesanan_makanan` (
  `IdPesanan` int(11) DEFAULT NULL,
  `IdMakanan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_minuman`
--

CREATE TABLE `pesanan_minuman` (
  `IdPesanan` int(11) DEFAULT NULL,
  `IdMinuman` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `IdPromo` int(11) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `Diskon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`IdPromo`, `Nama`, `Diskon`) VALUES
(1, 'cilukba', 10),
(2, 'cilukba', 15),
(3, 'cilukba', 20);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `tipe` tinyint(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`tipe`, `username`, `hash`) VALUES
(0, 'admin', '$2y$10$Rg0kYSVD9sisQ17h8kbCTu1pexJOSJQZDGyF0/jX5UxFY9iAa00qm'),
(1, 'kasir', '$2y$10$6cOXSCxC/WBfEAAbKYfO0uQfTmBpQ1QegBeAw0iLWHqqlzAQkKiAG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`IdInvoice`),
  ADD KEY `idPengguna` (`idPengguna`),
  ADD KEY `Tipe` (`Tipe`),
  ADD KEY `IdPromo` (`IdPromo`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`IdMakanan`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Tipe`);

--
-- Indexes for table `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`IdMinuman`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`IdPengguna`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`IdPesanan`),
  ADD KEY `IdInvoice` (`IdInvoice`);

--
-- Indexes for table `pesanan_makanan`
--
ALTER TABLE `pesanan_makanan`
  ADD KEY `IdPesanan` (`IdPesanan`),
  ADD KEY `IdMakanan` (`IdMakanan`);

--
-- Indexes for table `pesanan_minuman`
--
ALTER TABLE `pesanan_minuman`
  ADD KEY `IdPesanan` (`IdPesanan`),
  ADD KEY `IdMinuman` (`IdMinuman`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`IdPromo`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`idPengguna`) REFERENCES `pengguna` (`IdPengguna`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`Tipe`) REFERENCES `member` (`Tipe`),
  ADD CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`IdPromo`) REFERENCES `promo` (`IdPromo`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`IdInvoice`) REFERENCES `invoice` (`IdInvoice`);

--
-- Constraints for table `pesanan_makanan`
--
ALTER TABLE `pesanan_makanan`
  ADD CONSTRAINT `pesanan_makanan_ibfk_1` FOREIGN KEY (`IdPesanan`) REFERENCES `pesanan` (`IdPesanan`),
  ADD CONSTRAINT `pesanan_makanan_ibfk_2` FOREIGN KEY (`IdMakanan`) REFERENCES `makanan` (`IdMakanan`);

--
-- Constraints for table `pesanan_minuman`
--
ALTER TABLE `pesanan_minuman`
  ADD CONSTRAINT `pesanan_minuman_ibfk_1` FOREIGN KEY (`IdPesanan`) REFERENCES `pesanan` (`IdPesanan`),
  ADD CONSTRAINT `pesanan_minuman_ibfk_2` FOREIGN KEY (`IdMinuman`) REFERENCES `minuman` (`IdMinuman`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
