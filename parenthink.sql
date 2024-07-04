-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2024 at 10:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parenthink`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `baby_clothes`
-- (See below for the actual view)
--
CREATE TABLE `baby_clothes` (
`id_produk` int(11)
,`id_kategoriproduk` int(11)
,`nama_produk` varchar(50)
,`stok_produk` int(11)
,`harga` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `baby_milk`
-- (See below for the actual view)
--
CREATE TABLE `baby_milk` (
`id_produk` int(11)
,`id_kategoriproduk` int(11)
,`nama_produk` varchar(50)
,`stok_produk` int(11)
,`harga` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `baby_walk`
-- (See below for the actual view)
--
CREATE TABLE `baby_walk` (
`id_produk` int(11)
,`id_kategoriproduk` int(11)
,`nama_produk` varchar(50)
,`stok_produk` int(11)
,`harga` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `nama_event` varchar(50) NOT NULL,
  `event_date` date NOT NULL,
  `alamat_event` varchar(50) NOT NULL,
  `biaya_registrasi` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_event`, `nama_event`, `event_date`, `alamat_event`, `biaya_registrasi`) VALUES
(1, 'Lomba Foto Anak', '2024-06-24', 'Surabaya', 50000),
(2, 'Ayah Anak', '2024-07-05', 'Jakarta', 60000),
(3, 'Masak Sehat untuk anak', '2024-07-10', 'Jakarta', 80000),
(4, 'Pekan Keluarga', '2024-07-11', 'Bandung', 40000),
(5, 'Bazar Keperluan Anak', '2024-07-15', 'Surabaya', 0),
(6, 'Fashion Show Anak', '2024-06-26', 'Malang', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategoriproduk` int(11) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategoriproduk`, `nama_kategori`) VALUES
(1, 'Baby Milk'),
(2, 'Baby Clothes'),
(3, 'Stroller'),
(4, 'Baby Walk');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_order` int(11) NOT NULL,
  `bukti_pembayaran` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id_order`, `id_user`, `id_produk`, `jumlah_order`, `bukti_pembayaran`) VALUES
(1, 4, 6, 5, '654783.jpg'),
(2, 2, 19, 1, '378282.jpg'),
(3, 8, 30, 1, '387589.jpg'),
(4, 6, 9, 3, '045874.jpg'),
(5, 5, 16, 10, '948589.jpg'),
(6, 1, 13, 4, '857894.jpg'),
(7, 7, 27, 1, '476489.jpg'),
(8, 3, 25, 1, '898545.jpg'),
(9, 1, 15, 10, '263683.jpg'),
(10, 6, 3, 4, '747498.jpg'),
(11, 2, 36, 1, '377453.jpg'),
(12, 5, 24, 1, '438947.jpg'),
(13, 2, 9, 2, '474389.jpg'),
(14, 8, 14, 3, '475749.jpg'),
(15, 7, 17, 6, '038397.jpg'),
(16, 2, 40, 1, '498303.jpg'),
(17, 4, 11, 10, '483802.jpg'),
(18, 8, 19, 1, '327490.jpg'),
(19, 1, 29, 1, '303368.jpg'),
(20, 3, 10, 4, '204304.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategoriproduk` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `stok_produk` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategoriproduk`, `nama_produk`, `stok_produk`, `harga`) VALUES
(1, 1, 'SGM Ananda 0-6 bulan', 50, 45000),
(2, 1, 'Bebelove 1 0-6 bulan', 50, 77000),
(3, 1, 'S-26 Promil Gold 1', 50, 176000),
(4, 1, 'Enfamil A+ Gentle Care', 50, 300000),
(5, 1, 'Nutribaby 1 Royal', 50, 126000),
(6, 1, 'NAN pHPro 1', 50, 210000),
(7, 1, 'Neocate LCP 0-12 bulan', 50, 418000),
(8, 1, 'BMT Platinum Moricare 1', 50, 172000),
(9, 1, 'Nutricia Infatrini', 50, 289000),
(10, 1, 'Lactogen 1 HappyNutri', 50, 50000),
(11, 2, 'Baby Jumpsuit', 50, 100000),
(12, 2, 'Dress bayi ala korea', 50, 120000),
(13, 2, 'jumper rajut', 50, 90000),
(14, 2, 'Bloomer set', 50, 80000),
(15, 2, 'Sleepsuit', 50, 50000),
(16, 2, 'Romper motif', 50, 60000),
(17, 2, 'Sweater bayi', 50, 100000),
(18, 3, 'V-Babycare', 50, 200000),
(19, 3, 'FLYBB Magic Stroller', 50, 300000),
(20, 3, 'Mmflight Stroller Baby', 50, 210000),
(21, 3, 'Wonfuss Babybliss', 50, 450000),
(22, 3, 'SIYA', 50, 290000),
(23, 3, 'Stroller EXOTIC', 50, 325000),
(24, 3, 'PLIKO Sprint', 50, 530000),
(25, 3, 'YAHAA', 50, 300000),
(26, 3, 'Space Baby', 50, 280000),
(27, 3, 'OCTOBRE', 50, 1100000),
(28, 3, 'ZOLLAS', 50, 775000),
(29, 3, 'Sugarbaby', 50, 1030000),
(30, 3, 'Joie Muze LX Baby Stroller', 50, 1365000),
(31, 4, 'AIKOKY', 50, 30000),
(32, 4, 'Mmflight Baby Walker', 50, 270000),
(33, 4, 'HIPPO LAND Baby Walking', 50, 40000),
(34, 4, 'Moby Baby Moon Walk', 50, 25500),
(35, 4, 'KIDS LAND', 50, 260000),
(36, 4, 'Bostonstore', 50, 120000),
(37, 4, 'BABYELLE', 50, 785000),
(38, 4, 'Brights Start Around We Go', 50, 1760000),
(39, 4, 'FLYBB', 50, 260000),
(40, 4, 'GLOBETROTTER', 50, 995000);

-- --------------------------------------------------------

--
-- Table structure for table `registrasi`
--

CREATE TABLE `registrasi` (
  `id_registrasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `bukti_pembayaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrasi`
--

INSERT INTO `registrasi` (`id_registrasi`, `id_user`, `id_event`, `bukti_pembayaran`) VALUES
(1, 1, 4, '387378.jpg'),
(2, 4, 5, '-'),
(3, 7, 2, '238647.jpg'),
(4, 5, 6, '276463.jpg'),
(5, 3, 1, '278495.jpg'),
(6, 6, 4, '286464.jpg'),
(7, 2, 3, '273463.jpg'),
(8, 8, 2, '273478.jpg'),
(9, 4, 1, '356367.jpg'),
(10, 2, 5, '-'),
(11, 6, 2, '273649.jpg'),
(12, 3, 6, '287637.jpg'),
(13, 1, 1, '287434.jpg'),
(14, 8, 6, '364378.jpg'),
(15, 7, 3, '376438.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id_shipment` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `shipment_date` date NOT NULL,
  `alamat_pengiriman` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id_shipment`, `id_order`, `shipment_date`, `alamat_pengiriman`, `status`) VALUES
(1, 1, '2024-06-08', 'Jl. Kenanga ', 'DELIVERED'),
(2, 2, '2024-06-19', 'Jl. Kamboja', 'ON PROCESS'),
(3, 3, '2024-06-17', 'Jl. Melati', 'ON PROCESS'),
(4, 4, '2024-06-12', 'Jl. Mawar', 'DELIVERED'),
(5, 5, '2024-06-29', 'Jl. Wysteria', 'ON PROCESS'),
(6, 6, '2024-07-01', 'Jl. Tulip', 'ON PROCESS'),
(7, 7, '2024-06-03', 'Jl. Anggrek', 'DELIVERED'),
(8, 8, '2024-07-07', 'Jl. Sedap Malam', 'ON PROCESS'),
(9, 9, '2024-07-03', 'Jl. Tulip', 'ON PROCESS'),
(10, 10, '2024-07-27', 'Jl. Mawar', 'ON PROCESS'),
(11, 11, '2024-06-24', 'Jl. Kamboja', 'ON PROCESS'),
(12, 12, '2024-06-15', 'Jl. Wysteria', 'DELIVERED'),
(13, 13, '2024-07-18', 'Jl. Kamboja', 'ON PROCESS'),
(14, 14, '2024-08-01', 'Jl. Melati', 'ON PROCESS'),
(15, 15, '2024-07-20', 'Jl. Anggrek', 'ON PROCESS'),
(16, 16, '2024-06-30', 'Jl. Kamboja', 'ON PROCESS'),
(17, 17, '2024-06-14', 'Jl. Kenanga', 'DELIVERED'),
(18, 18, '2024-07-21', 'Jl. Melati', 'ON PROCESS'),
(19, 19, '2024-08-12', 'Jl. Tulip', 'ON PROCESS'),
(20, 20, '2024-07-06', 'Jl. Sedap Malam', 'ON PROCESS');

-- --------------------------------------------------------

--
-- Stand-in structure for view `stroller`
-- (See below for the actual view)
--
CREATE TABLE `stroller` (
`id_produk` int(11)
,`id_kategoriproduk` int(11)
,`nama_produk` varchar(50)
,`stok_produk` int(11)
,`harga` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `password`) VALUES
(1, 'Hinata Hyuga', 'hina32', 'hyuga12@gmail.com', '126542'),
(2, 'Haruno Sakura', 'sakura24', 'haruno24@gmail.com', '345278'),
(3, 'Aira Yamamoto', 'aira31', 'yama78@gmail.com', '936754'),
(4, 'Kamado Nezuko', 'nezu31', 'kamnez8@gmail.com', '672084'),
(5, 'Kochou Shinobu', 'shinobu20', 'kochou26@gmail.com', '352004'),
(6, 'Itadori Yuji', 'yuji09', 'itayu53@gmail.com', '463632'),
(7, 'Gojo Satoru', 'gojo19', 'satogo45@gmail.com', '376549'),
(8, 'Ichinose Guren', 'ichiii9', 'gurenge23@gmail.com', '478864');

-- --------------------------------------------------------

--
-- Structure for view `baby_clothes`
--
DROP TABLE IF EXISTS `baby_clothes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `baby_clothes`  AS SELECT `produk`.`id_produk` AS `id_produk`, `produk`.`id_kategoriproduk` AS `id_kategoriproduk`, `produk`.`nama_produk` AS `nama_produk`, `produk`.`stok_produk` AS `stok_produk`, `produk`.`harga` AS `harga` FROM `produk` WHERE `produk`.`id_kategoriproduk` = 2 ;

-- --------------------------------------------------------

--
-- Structure for view `baby_milk`
--
DROP TABLE IF EXISTS `baby_milk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `baby_milk`  AS SELECT `produk`.`id_produk` AS `id_produk`, `produk`.`id_kategoriproduk` AS `id_kategoriproduk`, `produk`.`nama_produk` AS `nama_produk`, `produk`.`stok_produk` AS `stok_produk`, `produk`.`harga` AS `harga` FROM `produk` WHERE `produk`.`id_kategoriproduk` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `baby_walk`
--
DROP TABLE IF EXISTS `baby_walk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `baby_walk`  AS SELECT `produk`.`id_produk` AS `id_produk`, `produk`.`id_kategoriproduk` AS `id_kategoriproduk`, `produk`.`nama_produk` AS `nama_produk`, `produk`.`stok_produk` AS `stok_produk`, `produk`.`harga` AS `harga` FROM `produk` WHERE `produk`.`id_kategoriproduk` = 4 ;

-- --------------------------------------------------------

--
-- Structure for view `stroller`
--
DROP TABLE IF EXISTS `stroller`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stroller`  AS SELECT `produk`.`id_produk` AS `id_produk`, `produk`.`id_kategoriproduk` AS `id_kategoriproduk`, `produk`.`nama_produk` AS `nama_produk`, `produk`.`stok_produk` AS `stok_produk`, `produk`.`harga` AS `harga` FROM `produk` WHERE `produk`.`id_kategoriproduk` = 3 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategoriproduk`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `produk_fk` (`id_kategoriproduk`);

--
-- Indexes for table `registrasi`
--
ALTER TABLE `registrasi`
  ADD PRIMARY KEY (`id_registrasi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_event` (`id_event`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id_shipment`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `alamat_pengiriman` (`alamat_pengiriman`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_fk` FOREIGN KEY (`id_kategoriproduk`) REFERENCES `kategori` (`id_kategoriproduk`);

--
-- Constraints for table `registrasi`
--
ALTER TABLE `registrasi`
  ADD CONSTRAINT `registrasi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `registrasi_ibfk_2` FOREIGN KEY (`id_event`) REFERENCES `event` (`id_event`);

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order` (`id_order`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
