-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2023 pada 18.03
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelompok8`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pinjaman_ruang`
--

CREATE TABLE `detail_pinjaman_ruang` (
  `id_detail_pinjaman_ruang` int(11) NOT NULL,
  `id_pinjaman` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `id_ruang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_pinjaman_ruang`
--

INSERT INTO `detail_pinjaman_ruang` (`id_detail_pinjaman_ruang`, `id_pinjaman`, `id_petugas`, `id_ruang`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gedung`
--

CREATE TABLE `gedung` (
  `id_gedung` int(11) NOT NULL,
  `nama_gedung` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gedung`
--

INSERT INTO `gedung` (`id_gedung`, `nama_gedung`) VALUES
(1, 'Gedung A'),
(2, 'Gedung B'),
(3, 'Gedung C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `instansi`
--

CREATE TABLE `instansi` (
  `id_instansi` int(11) NOT NULL,
  `nama_instansi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `instansi`
--

INSERT INTO `instansi` (`id_instansi`, `nama_instansi`) VALUES
(1, 'Universitas A'),
(2, 'Universitas B'),
(3, 'Universitas C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kegiatan`
--

CREATE TABLE `jenis_kegiatan` (
  `id_jenis_kegiatan` int(11) NOT NULL,
  `nama_kegiatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_kegiatan`
--

INSERT INTO `jenis_kegiatan` (`id_jenis_kegiatan`, `nama_kegiatan`) VALUES
(1, 'Rapat'),
(2, 'Pembelajaran'),
(3, 'Pelatihan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjam`
--

CREATE TABLE `peminjam` (
  `id_peminjam` int(11) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_telp` varchar(45) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `surat_keterangan` varchar(50) DEFAULT NULL,
  `id_instansi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjam`
--

INSERT INTO `peminjam` (`id_peminjam`, `password`, `nama_lengkap`, `email`, `no_telp`, `alamat`, `surat_keterangan`, `id_instansi`) VALUES
(1, '123456', 'Rahmanta', 'rahmanta@gmail.com', '08123456789', 'Jl. Sudirman No. 123', ' dari Fakultas Teknik', 1),
(2, 'abcdef', 'Agus setiawan', 'setiawan@gmail.com', '08234567890', 'Jl. Merdeka No. 456', ' dari Fakultas Ekonomi', 2),
(3, 'qwerty', 'Mahdi aletea', 'mahdin@egmail.com', '08345678901', 'Jl. Asia Afrika No. 789', ' dari Fakultas Hukum', 1),
(4, 'zxcvb', 'Dimas firmansah', 'firmansya@gmail.com', '08456789012', 'Jl. Pemuda No. 1011', ' dari Fakultas Kedokteran', 3),
(5, 'poiuyt', 'Rian Fauza', 'rianfauzam@gmail.com', '08567890123', 'Jl. Veteran No. 1213', ' dari Fakultas Psikologi', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama_petugas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`) VALUES
(1, 'admin', 'admin123', 'Admin Universitas A'),
(2, 'staff', 'staff123', 'Staff Universitas A'),
(3, 'petugas', 'petugas123', 'Petugas Universitas B'),
(4, 'admin2', 'admin123', 'Admin Universitas C'),
(5, 'staff2', 'staff123', 'Staff Universitas C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjaman` int(11) NOT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `jam_awal` time DEFAULT NULL,
  `jam_akhir` time DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `berkas` varchar(50) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `alasan` text DEFAULT NULL,
  `id_peminjam` int(11) DEFAULT NULL,
  `id_jenis_kegiatan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pinjaman`
--

INSERT INTO `pinjaman` (`id_pinjaman`, `tgl_pinjam`, `jam_awal`, `jam_akhir`, `keterangan`, `berkas`, `status`, `alasan`, `id_peminjam`, `id_jenis_kegiatan`) VALUES
(1, '2023-06-22', '10:00:00', '12:00:00', 'Rapat Proker', 'proker.pdf', 'Baru', '', 1, 1),
(2, '2023-06-23', '14:00:00', '16:00:00', 'Kelas Tambahan', 'kelas.pdf', 'Baru', '', 2, 2),
(3, '2023-06-24', '09:00:00', '11:00:00', 'Pelatihan Karyawan', 'pelatihan.pdf', 'Baru', '', 3, 3),
(4, '2023-06-25', '15:00:00', '17:00:00', 'Diskusi Tim', 'diskusi.pdf', 'Baru', '', 4, 1),
(5, '2023-06-26', '13:00:00', '15:00:00', 'Ujian Akhir Semester', 'ujian.pdf', 'Baru', '', 5, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(45) DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL,
  `status_ruang` varchar(45) DEFAULT NULL,
  `id_gedung` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `nama_ruang`, `kapasitas`, `status_ruang`, `id_gedung`) VALUES
(1, 'Ruang A1', 50, 'Tersedia', 1),
(2, 'Ruang A2', 30, 'Tersedia', 1),
(3, 'Ruang B1', 40, 'Tersedia', 2),
(4, 'Ruang C1', 60, 'Tersedia', 3),
(5, 'Ruang C2', 20, 'Tersedia', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_pinjaman_ruang`
--
ALTER TABLE `detail_pinjaman_ruang`
  ADD PRIMARY KEY (`id_detail_pinjaman_ruang`),
  ADD KEY `id_pinjaman` (`id_pinjaman`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `id_ruang` (`id_ruang`);

--
-- Indeks untuk tabel `gedung`
--
ALTER TABLE `gedung`
  ADD PRIMARY KEY (`id_gedung`);

--
-- Indeks untuk tabel `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indeks untuk tabel `jenis_kegiatan`
--
ALTER TABLE `jenis_kegiatan`
  ADD PRIMARY KEY (`id_jenis_kegiatan`);

--
-- Indeks untuk tabel `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`id_peminjam`),
  ADD KEY `id_instansi` (`id_instansi`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjaman`),
  ADD KEY `id_peminjam` (`id_peminjam`),
  ADD KEY `id_jenis_kegiatan` (`id_jenis_kegiatan`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`),
  ADD KEY `id_gedung` (`id_gedung`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_pinjaman_ruang`
--
ALTER TABLE `detail_pinjaman_ruang`
  ADD CONSTRAINT `detail_pinjaman_ruang_ibfk_1` FOREIGN KEY (`id_pinjaman`) REFERENCES `pinjaman` (`id_pinjaman`),
  ADD CONSTRAINT `detail_pinjaman_ruang_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`),
  ADD CONSTRAINT `detail_pinjaman_ruang_ibfk_3` FOREIGN KEY (`id_ruang`) REFERENCES `ruang` (`id_ruang`);

--
-- Ketidakleluasaan untuk tabel `peminjam`
--
ALTER TABLE `peminjam`
  ADD CONSTRAINT `peminjam_ibfk_1` FOREIGN KEY (`id_instansi`) REFERENCES `instansi` (`id_instansi`);

--
-- Ketidakleluasaan untuk tabel `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD CONSTRAINT `pinjaman_ibfk_1` FOREIGN KEY (`id_peminjam`) REFERENCES `peminjam` (`id_peminjam`),
  ADD CONSTRAINT `pinjaman_ibfk_2` FOREIGN KEY (`id_jenis_kegiatan`) REFERENCES `jenis_kegiatan` (`id_jenis_kegiatan`);

--
-- Ketidakleluasaan untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD CONSTRAINT `ruang_ibfk_1` FOREIGN KEY (`id_gedung`) REFERENCES `gedung` (`id_gedung`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
