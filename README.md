# Kelompok8_Basis-Data
```
***Anggota Kelompok ***
1. Dimas Firmansyah (312210267)
2. Agus Setiawan (312210193)
3. Rian Fauza Dinata (312210083)
4. Mohamad Mahdi Alethea (312210195)
5. Rahmanta Novrizon (312210213)
```
**ERD**

<img width="402" alt="Screenshot 2023-06-23 081607" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115356128/a377dd2f-7bf6-42b3-99a1-b1b594797226">

**DDL** (Data Definition Language), digunakan untuk mendefinisikan struktur tabel data.
### Membuat Table detail_pinjaman_ruang
```
CREATE TABLE `detail_pinjaman_ruang` (
  `id_detail_pinjaman_ruang` int(11) NOT NULL,
  `id_pinjaman` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `id_ruang` int(11) DEFAULT NULL
);
```
### Membuat Table gedung
```
CREATE TABLE `gedung` (
  `id_gedung` int(11) NOT NULL,
  `nama_gedung` varchar(50) DEFAULT NULL
);
```
### Membuat Table instansi
```
CREATE TABLE `instansi` (
  `id_instansi` int(11) NOT NULL,
  `nama_instansi` varchar(100) DEFAULT NULL
);
```
### Membuat Table jenis kegiatan
```
CREATE TABLE `jenis_kegiatan` (
  `id_jenis_kegiatan` int(11) NOT NULL,
  `nama_kegiatan` varchar(100) DEFAULT NULL
);
```
### Membuat Table  peminjam
```
CREATE TABLE `peminjam` (
  `id_peminjam` int(11) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_telp` varchar(45) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `surat_keterangan` varchar(50) DEFAULT NULL,
  `id_instansi` int(11) DEFAULT NULL
);
```
### Membuat Table petugas
```
CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama_petugas` varchar(50) DEFAULT NULL
);
```
### Membuat Table pinjaman
```
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
);
```
### Membuat Table ruang
```
CREATE TABLE `ruang` (
  `id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(45) DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL,
  `status_ruang` varchar(45) DEFAULT NULL,
  `id_gedung` int(11) DEFAULT NULL
);
```

![Kelompok 8](https://github.com/DimasF3009/kelompok-8/assets/115356128/e5252efc-03fa-4000-96c7-061bd641e391)

# SQL CRUD 

### (C) CREATE (Membuat database, membuat tabel, dan membuat data)
### 1. Membuat database

`` CREATE DATABASE klompok8; ``
Lalu Gunakan Perintah:
`` USE klompok8 `` 
Untuk Menggunakan Databasenya Dan Membuat Table Seperti Gambar Dibawah Ini:

![WhatsApp Image 2023-06-21 at 20 57 31](https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/5d9d8eab-8150-4465-8723-cc48972a66d9)

### 2. Membuat Table pada database

**1. Table Jenis_kegiatan**

`` CREATE TABLE jenis_kegiatan (
id_jenis_kegiatan int(11),
nama_kegiatan varchar(100)); ``
  
<img width="405" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/57b10f22-ce4d-4cbb-baa4-43a4f1c7546e">

**2.  Table petugas**

`` CREATE TABLE petugas (
id_petugas int(11),
username varchar(100),
password varchar(100),
nama_petugas varchar(50)); ``
  
<img width="390" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/67e4e926-a018-4a67-9b06-d4377450bbbe">

**3. Table gedung**

`` CREATE TABLE gedung (
  id_gedung int(11),
  nama_gedung varchar(50)); ``
  
<img width="395" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/132c2f2b-6d97-4854-bc38-d71a7482aff7">

**4. Table instansi**

`` CREATE TABLE instansi (
  id_instansi int(11),
  nama_instansi varchar(100)); ``
  
<img width="368" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/e5fae749-d4d4-4234-9ac3-fca8fbc440aa">

**5. Table peminjam**

`` CREATE TABLE peminjam (
  id_peminjam int(11),
  password varchar(100),
  nama_lengkap varchar(100),
  email varchar(100),
  no_telp varchar(45),
  alamat varchar(50),
  surat_keterangan varchar(50),
  id_instansi int(11)); ``
  
<img width="414" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/1d50a368-f221-42b0-987f-ca6b3d3eaf18">

**6. Table pinjaman**

`` CREATE TABLE pinjaman (
  id_pinjaman int(11),
  tgl_pinjam date,
  jam_awal time,
  jam_akhir time,
  keterangan text,
  berkas varchar(50),
  status varchar(45),
  alasan text,
  id_peminjam int(11),
  id_jenis_kegiatan int(11)); ``
  
<img width="393" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/b8f8d7eb-a0fd-4dcb-b7ae-c987c88fc85e">

**7. Table detail_pinjaman_ruang**

`` CREATE TABLE detail_pinjaman_ruang (
  id_detail_pinjaman_ruang` int(11),
  id_pinjaman int(11),
  id_petugas int(11),
  id_ruang int(11)); ``
  
<img width="424" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/eda1979f-6405-4b88-a212-62f04dec193d">

**8. Table ruang**

`` CREATE TABLE ruang (
  id_ruang int(11),
  nama_ruang varchar(45),
  kapasitas int(11),
  status_ruang varchar(45),
  id_gedung int(11)); ``
  
<img width="395" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/2a0af80f-fba2-46c4-a32b-310c1b5063f5">

### 3. Memasukan data pada tabel

**1. Tabel Instansi**

<img width="443" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/bf241035-4693-463e-8ea7-7f3d09d17697">ㅤㅤ ㅤㅤㅤ

**2. Tabel Gedung**

<img width="415" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/b2fd96e2-7b8b-4b19-b191-745532402fc2">ㅤ ㅤㅤㅤ

**3. Tabel Ruang**

<img width="588" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/d31727ee-0680-451c-abf8-df331e434bdf">ㅤ ㅤ ㅤㅤ ㅤㅤㅤ

**Menambahkan constraint dari tabel ruang (id_gedung) referensi tabel gedung (id_gedung)**

<img width="546" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/7f9c17fd-c8ff-48f8-a784-075e0a0e4838">

**4. Tabel Petugas**

<img width="538" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/2622d0b3-d233-4a7f-a950-89bdb9ae9e6c">ㅤ ㅤㅤ ㅤㅤㅤ


**5. Tabel Jenis_Kegiatan**

<img width="500" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/7a3bcc95-7012-4aee-b7d7-301253406d4b">ㅤ ㅤㅤ

**6. Tabel Peminjam**

<img width="784" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/552a8440-1e3e-443f-b500-206f2169bffd">ㅤㅤㅤ

**Menambahkan constraint dari tabel peminjam (id_instansi) referensi tabel instansi (id_instansi)**

<img width="591" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/1d94fc4f-bfc2-4921-8f3c-36c169502e1d">

**7. Tabel pinjaman**

**Menambahkan constraint dari tabel pinjaman** 
```
ALTER TABLE pinjaman ADD FOREIGN KEY (id_peminjam) referensi tabel peminjam (id_peminjam )
ADD FOREIGN KEY (id_jenis_kegiatan) referensi tabel id_jenis_kegiatan (id_jenis_kegiatan)
```
<img width="647" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/4df4b091-9b4e-40ca-a6b4-61f61be708e1">

**8. Tabel Detail_pinjaman_ruang**

<img width="685" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/105b1a37-686b-4a8b-93f9-06f07d50a0db">ㅤㅤㅤ

**Menambahkan constraint dari tabel detail_pinjaman_ruang**
```
ALTER TABLE detail_pinjaman_ruangan ADD FOREIGN KEY (id_pinjaman) REFERENCES tabel pinjaman (id_pinjaman),
ADD FOREIGN KEY (id_petugas) REFERENCES tabel petugas (id_petugas),
ADD FOREIGN KEY (id_ruang) REFERENCES tabel ruang (id_ruang)
```

<img width="655" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/68b619fc-b366-40b0-9f56-d4925f5aef37">


<img width="908" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/a3089ae1-5eef-4ca5-9025-13c3c8079f01">ㅤㅤㅤ


### (R) READ (Membaca, melihat atau Menampilkan data dari database)

**1. Tabel Instansi**

```
SELECT * FROM instansi
```

<img width="270" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/036b4027-8489-437b-96c6-6a44f2523008">

**2. Tabel Gedung**

```
SELECT * FROM gedung;
```

<img width="248" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/941bc394-3086-4003-9a4e-bb47df42b109">

**3. Tabel Ruang**

```
SELECT * FROM ruang;
```

<img width="394" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/5757849e-055f-4481-bf93-3b8a9ac0ac55">

**4. Tabel Petugas**

```
SELECT * FROM petugas
```

<img width="372" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/32b6cdb3-9d28-4f0d-9619-d8c57a576fdd">

**5. Tabel Jenis_Kegiatan**

```
SELECT * FROM jenis_kegiatan;
```

<img width="295" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/4174792f-33c4-453f-9053-0c7e0ddfb682">

**6. Tabel Peminjam**

```
SELECT * FROM peminjam;
```

<img width="845" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/232ae839-e88e-41e3-93d3-20e001e059d8">

**7. Tabel pinjaman**

```
SELECT * FROM pinjaman;
```

<img width="797" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/476020fa-f3a5-47ef-9bc5-3ca30a3dd0c4">

**8. Tabel Detail_pinjaman_ruang**

```
SELECT * FROM Detail_pinjaman_ruang;
```

<img width="392" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/1ecec78a-e29e-4b73-93e2-ec342cf895bc">

### (U) UPDATE (Mengubah data yang sudah ada)

**Mengubah data pada tabel**

![WhatsApp Image 2023-06-25 at 20 54 19](https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/5bcb561d-c1db-4b9b-ac65-6baeadef3844)


### (D) DELETE (Menghapus data/kolom pada database)

### 1. Menghapus kolom pada tabel

<img width="640" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/1602c758-5910-48b4-bffd-c789f4e1def7">

### 2. Sebelum menghapus tabel hapus constraint terlebih dahulu

![WhatsApp Image 2023-06-28 at 14 12 48](https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/0b1b03bd-ab3f-4607-bf23-e5ad42dcb559)

### 3. Menghapus tabel 

![WhatsApp Image 2023-06-28 at 14 13 22](https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/175de1a4-ac5a-4c31-b491-537d6bf9b758)

## • SQL JOIN 

### 1. JOIN antara tabel peminjam dan instansi:

```
SELECT peminjam.*, instansi.nama_instansi 
FROM peminjam 
JOIN instansi ON peminjam.id_instansi = instansi.id_instansi;
```

<img width="847" alt="image" src="https://github.com/DimasF3009/kelompok-8/assets/115542822/e14f4588-3dbc-490f-aa34-61c9631b0d9b">


### 2.JOIN antara tabel pinjaman, peminjam, dan jenis_kegiatan, detail_pinjaman_ruang :

```
SELECT pinjaman.tgl_pinjam, pinjaman.jam_awal, pinjaman.jam_akhir, peminjam.nama_lengkap, pinjaman.status, jenis_kegiatan.nama_kegiatan, pinjaman.keterangan, detail_pinjaman_ruang.id_pinjaman
FROM pinjaman 
JOIN peminjam  ON pinjaman.id_peminjam = peminjam.id_peminjam 
JOIN jenis_kegiatan ON pinjaman.id_jenis_kegiatan = jenis_kegiatan.id_jenis_kegiatan
JOIN detail_pinjaman_ruang ON pinjaman.id_pinjaman = detail_pinjaman_ruang.id_pinjaman;
```

<img width="876" alt="image" src="https://github.com/DimasF3009/kelompok-8/assets/115542822/deda8934-d59b-4c12-a352-047e435a4215">


### 3. JOIN antara tabel detail_pinjaman_ruang, pinjaman, petugas, dan ruang:

```
SELECT detail_pinjaman_ruang.*, pinjaman.id_pinjaman, petugas.nama_petugas, ruang.nama_ruang 
FROM detail_pinjaman_ruang 
INNER JOIN pinjaman ON detail_pinjaman_ruang.id_pinjaman = pinjaman.id_pinjaman 
INNER JOIN petugas ON detail_pinjaman_ruang.id_petugas = petugas.id_petugas 
INNER JOIN ruang ON detail_pinjaman_ruang.id_ruang = ruang.id_ruang;
```

<img width="522" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/2a7c9048-149e-4188-8d4f-2ec60f72315b">

### 4. JOIN antara tabel ruang, gedung dan detail_pinjaman_ruang :

```
SELECT ruang.id_ruang, ruang.nama_ruang, detail_pinjaman_ruang.id_ruang, gedung.nama_gedung 
FROM ruang 
JOIN gedung ON ruang.id_gedung = gedung.id_gedung
JOIN detail_pinjaman_ruang ON ruang.id_ruang = detail_pinjaman_ruang.id_ruang;
```

<img width="630" alt="image" src="https://github.com/DimasF3009/kelompok-8/assets/115542822/3f9ca16d-b002-4376-8e32-fd541f8d7d42">

