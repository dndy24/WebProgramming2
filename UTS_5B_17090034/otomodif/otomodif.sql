-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 05:05 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otomodif`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(10) NOT NULL,
  `id_kat` int(10) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `spesifikasi` text NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` tinyint(1) NOT NULL,
  `status` enum('Ready','Tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `id_kat`, `nama_barang`, `spesifikasi`, `gambar`, `harga`, `stok`, `status`) VALUES
(1, 3, 'Stang Fatbar Merk Wildwood', '<p>Merk : Wildwood</p><p>&nbsp;</p><p>Warna :</p><ul><li>Gold</li><li>Hitam</li><li>Silver</li></ul><p>&nbsp;</p><p>Note : Ini hanya stang saja belum termasuk raiser stang ( dudukan stang ).</p><p>Terima kasih</p>', 'fatbar.jpg', 150000, 100, 'Ready'),
(2, 2, 'Upside Down KLX 150 ', '<p><strong>hock Depan Upside Down</strong> pemasangan pnp ke klx 150 (motor lain menyesuaikan).</p><p>Ready :</p><ul><li>Hitam</li><li>Gold</li><li>Silver</li></ul><p>&nbsp;</p><p>Ukuran</p><ul><li>Panjang 95cm</li><li>Lebar 33cm</li></ul><p>&nbsp;</p>', 'usd.jpg', 1250000, 50, 'Ready'),
(3, 4, 'Lampu LED RTD 6 Sisi M02E ', '<p><strong>Led 6 sisi RTD White</strong></p><p><strong>Power 35 watt</strong></p><p><strong>Voltage 9-18 AC/DC</strong></p><p><strong>CCT6500 K</strong></p><p><strong>Low Beam 1750 Lumen</strong></p><p><strong>High Beam 3500 Lumen</strong></p><p><strong>Socket H6 dan H4</strong></p><p>&nbsp;</p><p><strong>Led 6 Sisi RTD IceBlue</strong></p><p><strong>CCT 16.000K</strong></p><p><strong>Power 35watt</strong></p><p><strong>Voltage 9-18 AC/DC</strong></p><p><strong>LowBeam 1750 Lumen</strong></p><p><strong>High Beam 3500 Lumen</strong></p><p><strong>Socket H6 dan H4</strong></p><p>&nbsp;</p><p>&nbsp;</p><p>Dilengkapi Dengan Kipas Pendingin Agar Lampu Tidak Overheat.</p><p>&nbsp;</p><p>Universal untuk Semua motor bebek Dan Matic</p><p>Vxion Byson Mega Pro Cb150R</p><p>&nbsp;</p><p>Tuliskan keterangan Warna Pada saat Order</p><p>Tidak ada keterangan warna akan dikirimkan secara random atau warna yang</p><p>tersedia saat itu.</p><p>Tersedia Ice Blue dan White</p><p>&nbsp;</p><p>Dijamin Barang RTD asli ! RTD Original !</p><p>Dus Hijau Hologram!</p>', 'rtd.jpg', 210000, 50, 'Ready'),
(4, 1, 'Kaliper Brembo 2 Piston', '<p>Tersedia warna GOLD</p><p>Cocok untuk semua motor, untuk dudukan tinggal menyesuakian saja.</p><p>Terima kasih</p>', 'kaliper.jpeg', 250000, 100, 'Ready'),
(5, 5, 'Spion Carbon CBR 250 RR', '<p>Spion Carbon CBR 250 RR type 1005 Nemo</p><p>1 set</p>', 'spion.jpeg', 190000, 25, 'Ready'),
(6, 3, 'Set New Stang CB 150R', '<p>Barang yang didapat:<br />-1pc Stang stir new cb150R (53100-K15-920ZA)<br />-2pc jalu stir (53105-KRC-900)<br />-1pc Raiser/tutup stang atas (53130-K15-920ZA)</p><p>Semua barang ori/asli Honda Genuine Part</p>', 'stangset.webp', 120000, 6, 'Ready');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id_pesanan` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `quantity` tinyint(2) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id_pesanan`, `id_barang`, `quantity`, `harga`) VALUES
(2, 6, 1, 2900000),
(2, 5, 1, 12700000),
(3, 1, 1, 7800000),
(5, 5, 2, 190000),
(5, 2, 3, 1250000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kat` int(10) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `status` enum('Publish','Unpublish') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kat`, `kategori`, `status`) VALUES
(1, 'Kaliper', 'Publish'),
(2, 'Shockbreaker', 'Publish'),
(3, 'Stang', 'Publish'),
(4, 'Lampu', 'Publish'),
(5, 'Spion', 'Publish');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `id_konf` int(10) NOT NULL,
  `id_pesanan` int(10) NOT NULL,
  `no_rek` varchar(20) NOT NULL,
  `nama_akun` varchar(150) NOT NULL,
  `tanggal_transfer` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi_pembayaran`
--

INSERT INTO `konfirmasi_pembayaran` (`id_konf`, `id_pesanan`, `no_rek`, `nama_akun`, `tanggal_transfer`) VALUES
(1, 2, '0008888', 'Jeong', '2016-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(10) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `tarif` int(10) NOT NULL,
  `status` enum('Aktif','Tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `kota`, `tarif`, `status`) VALUES
(1, 'Jakarta', 15000, 'Aktif'),
(2, 'Bandung', 8000, 'Aktif'),
(3, 'Surabaya', 11000, 'Aktif'),
(4, 'Semarang', 6000, 'Aktif'),
(5, 'Malang', 13000, 'Aktif'),
(6, 'Purwokerto', 6000, 'Aktif'),
(7, 'Cilacap', 7000, 'Aktif'),
(8, 'Purbalingga', 6500, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(10) NOT NULL,
  `id_kota` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `nama_penerima` varchar(150) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `tanggal_pemesanan` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_kota`, `id_user`, `nama_penerima`, `nomor_telepon`, `alamat`, `tanggal_pemesanan`, `status`) VALUES
(2, 2, 2, 'Jeong', '00000', 'Jl. XXXXX', '2016-10-08 06:11:24', 1),
(3, 3, 6, 'Lee', '0000', 'Jl. aaaa', '2016-10-08 10:48:45', 2),
(4, 1, 6, 'Lee', '0000', 'Jl. AAA', '2016-10-08 12:01:55', 2),
(5, 1, 7, 'member', '046898478', 'JAKARTA', '2019-11-07 06:03:27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(160) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `password` varchar(300) NOT NULL,
  `status` enum('Aktif','Tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `level`, `nama`, `email`, `alamat`, `notelp`, `password`, `status`) VALUES
(2, 'SuperAdmin', 'Admin Utama', 'admin@otomodif.com', 'Tegal', '085798000773', '1b3231655cebb7a1f783eddf27d254ca', 'Aktif'),
(6, 'Customer', 'Customer', 'cust@otomodif.com', 'Tegal', '082240527774', '5f4dcc3b5aa765d61d8327deb882cf99', 'Aktif'),
(7, 'Customer', 'member', 'member@gmail.com', 'tegal', '08374873845', 'aa08769cdcb26674c6706093503ff0a3', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_kat` (`id_kat`);

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD KEY `id_pesanan` (`id_pesanan`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indexes for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`id_konf`),
  ADD KEY `id_pesanan` (`id_pesanan`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_kota` (`id_kota`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `id_konf` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_kat`) REFERENCES `kategori` (`id_kat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `pesanan_detail_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_detail_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
