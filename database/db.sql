-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2023 at 10:23 PM
-- Server version: 10.3.36-MariaDB-0+deb10u2
-- PHP Version: 7.3.31-1~deb10u2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id` int(11) NOT NULL,
  `kegiatan` varchar(700) NOT NULL,
  `dibuka` varchar(700) NOT NULL,
  `ditutup` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id`, `kegiatan`, `dibuka`, `ditutup`) VALUES
(2, 'Sosialisasi kegiatan PPDB ke SMP sederajat area SMK N 2 Pelaihari', '2 Juni 2023', '25 Juni 2023'),
(3, 'Pendaftaran peserta didik baru tahun pelajaran 2023/2024', '29 Juni 2023', '3 Juli 2023'),
(4, 'Seleksi pendaftar', '4 Juli 2023', '5 Juli 2023'),
(6, 'Pengumuman hasil seleksi PPDB', '6 Juli 2023', 'Selesai'),
(7, 'Pengenalan Lingkungan Sekolah', '15 Juli 2023', '18 Juli 2023');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id` int(11) NOT NULL,
  `namaJurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id`, `namaJurusan`) VALUES
(1, 'Teknik Informatika'),
(5, 'Teknik Bangunan'),
(6, 'Teknik otomotif'),
(7, 'Teknik Alat Berat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `xid` int(11) NOT NULL,
  `xemail` varchar(30) NOT NULL,
  `xpass` varchar(150) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`xid`, `xemail`, `xpass`, `nama`) VALUES
(1, 'admin@admin.com', '$2y$10$xzVfQr4PQ.n6lZbWruyBPe1Tc.C/eRaQEnlEExPL.OySFA1ZGRpSa', 'Alvian septyayuwandianto');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registrasi`
--

CREATE TABLE `tbl_registrasi` (
  `id` int(11) NOT NULL,
  `nomor_daftar` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` varchar(2) NOT NULL,
  `bln_lahir` varchar(2) NOT NULL,
  `thn_lahir` varchar(4) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `no_akta` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `kewarganegaraan` varchar(3) NOT NULL,
  `wna` varchar(50) NOT NULL,
  `inklusi` varchar(20) NOT NULL,
  `alamat_jalan` text NOT NULL,
  `rt` varchar(3) NOT NULL,
  `rw` varchar(3) NOT NULL,
  `dusun` varchar(30) NOT NULL,
  `desa` varchar(20) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `kode_pos` varchar(5) NOT NULL,
  `transportasi` varchar(50) NOT NULL,
  `no_kks` varchar(7) NOT NULL,
  `anak_ke` varchar(2) NOT NULL,
  `terima_kps` varchar(10) NOT NULL,
  `no_kps` varchar(20) NOT NULL,
  `usul_pip` varchar(10) NOT NULL,
  `penerima_kip` varchar(10) NOT NULL,
  `nomor_kip` varchar(10) NOT NULL,
  `nama_kip` varchar(50) NOT NULL,
  `terima_fisik_kip` varchar(10) NOT NULL,
  `alasan_layak_pip` varchar(50) NOT NULL,
  `nama_ayah_kandung` varchar(50) NOT NULL,
  `nik_ayah` varchar(20) NOT NULL,
  `tahun_lahir_ayah` varchar(4) NOT NULL,
  `pendidikan_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `penghasilan_ayah` varchar(50) NOT NULL,
  `kebutuhan_khusus_ayah` varchar(50) NOT NULL,
  `nama_ibu_kandung` varchar(50) NOT NULL,
  `nik_ibu` varchar(20) NOT NULL,
  `tahun_lahir_ibu` varchar(4) NOT NULL,
  `pendidikan_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(50) NOT NULL,
  `penghasilan_ibu` varchar(50) NOT NULL,
  `kebutuhan_khusus_ibu` varchar(50) NOT NULL,
  `nama_wali` varchar(50) NOT NULL,
  `nik_wali` varchar(20) NOT NULL,
  `tahun_lahir_wali` varchar(4) NOT NULL,
  `pendidikan_wali` varchar(50) NOT NULL,
  `pekerjaan_wali` varchar(50) NOT NULL,
  `penghasilan_wali` varchar(50) NOT NULL,
  `nomor_tlp` varchar(20) NOT NULL,
  `nomor_hp` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `ekskul` varchar(225) NOT NULL,
  `tinggi_badan` varchar(3) NOT NULL,
  `berat_badan` varchar(3) NOT NULL,
  `jenis_jarak` varchar(20) NOT NULL,
  `jarak` varchar(3) NOT NULL,
  `waktu_jam` varchar(2) NOT NULL,
  `waktu_menit` varchar(2) NOT NULL,
  `jumlah_saudara` varchar(3) NOT NULL,
  `sekolah_asal` varchar(50) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `asli` varchar(5) NOT NULL,
  `login` enum('0','1') NOT NULL,
  `tahun_lulus` varchar(4) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `bukti_kk` varchar(100) NOT NULL,
  `bukti_raport` varchar(100) NOT NULL,
  `bukti_prestasi` varchar(100) NOT NULL,
  `bin1` varchar(3) NOT NULL,
  `bin2` varchar(3) NOT NULL,
  `bin3` varchar(3) NOT NULL,
  `bin4` varchar(3) NOT NULL,
  `bin5` varchar(3) NOT NULL,
  `big1` varchar(3) NOT NULL,
  `big2` varchar(3) NOT NULL,
  `big3` varchar(3) NOT NULL,
  `big4` varchar(3) NOT NULL,
  `big5` varchar(3) NOT NULL,
  `mtk1` varchar(3) NOT NULL,
  `mtk2` varchar(3) NOT NULL,
  `mtk3` varchar(3) NOT NULL,
  `mtk4` varchar(3) NOT NULL,
  `mtk5` varchar(3) NOT NULL,
  `ipa1` varchar(3) NOT NULL,
  `ipa2` varchar(3) NOT NULL,
  `ipa3` varchar(3) NOT NULL,
  `ipa4` varchar(3) NOT NULL,
  `ipa5` varchar(3) NOT NULL,
  `rata1` varchar(5) NOT NULL,
  `rata2` varchar(5) NOT NULL,
  `rata3` varchar(5) NOT NULL,
  `rata4` varchar(5) NOT NULL,
  `rata5` varchar(5) NOT NULL,
  `sum` varchar(10) NOT NULL,
  `tingkat_prestasi` varchar(20) NOT NULL,
  `juara_prestasi` varchar(20) NOT NULL,
  `bidang_prestasi` varchar(30) NOT NULL,
  `nama_prestasi` text NOT NULL,
  `jurusan1` varchar(50) NOT NULL,
  `jurusan2` varchar(50) NOT NULL,
  `benar` varchar(10) NOT NULL,
  `jur` varchar(50) NOT NULL,
  `seleksi` varchar(1) NOT NULL,
  `valid` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sekolah`
--

CREATE TABLE `tbl_sekolah` (
  `id` int(11) NOT NULL,
  `nama_sekolah` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `email_sekolah` varchar(200) NOT NULL,
  `kirim_mail` varchar(50) NOT NULL,
  `pass_mail` varchar(100) NOT NULL,
  `smtp_host` varchar(50) NOT NULL,
  `smtp_port` varchar(10) NOT NULL,
  `tlp_sekolah` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `bt` varchar(1) NOT NULL,
  `panduan` varchar(100) NOT NULL,
  `prefix` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sekolah`
--

INSERT INTO `tbl_sekolah` (`id`, `nama_sekolah`, `alamat`, `kota`, `provinsi`, `email_sekolah`, `kirim_mail`, `pass_mail`, `smtp_host`, `smtp_port`, `tlp_sekolah`, `logo`, `bt`, `panduan`, `prefix`) VALUES
(1, 'SMK Negeri 2 Pelaihari', 'Jl. Husni Thamrin Kecamatan Pelaihari ', 'Pelaihari', 'Kalimantan Selatan', 'smkn_2_pelaihari@yahoo.com ', '', '', 'smtp.gmail.com', '465', '082153240501', 'e25908f2b95f2dda352953225e131880.png', '3', 'c489d4a74c169e7cf63f99bb5ca8e188.pdf', 'PPDB');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slide`
--

CREATE TABLE `tbl_slide` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slide`
--

INSERT INTO `tbl_slide` (`id`, `judul`, `text`, `gambar`) VALUES
(1, 'PENERIMAAN PESERTA DIDIK BARU', 'Selamat datang di web resmi penerimaan peserta didik baru SMK Negeri 2 Pelaihari tahun pelajaran 2023/2024. Silahkan klik tombol DAFTAR di bawah ini untuk melakukan pendaftaran.', '9b065ac518f2cc755ed13d8f76924248.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`xid`);

--
-- Indexes for table `tbl_registrasi`
--
ALTER TABLE `tbl_registrasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sekolah`
--
ALTER TABLE `tbl_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slide`
--
ALTER TABLE `tbl_slide`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `xid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_registrasi`
--
ALTER TABLE `tbl_registrasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sekolah`
--
ALTER TABLE `tbl_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slide`
--
ALTER TABLE `tbl_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
