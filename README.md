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

![Kelompok 8](https://github.com/DimasF3009/kelompok-8/assets/115356128/e5252efc-03fa-4000-96c7-061bd641e391)

• SQL CRUD 

### (C) CREATE (Membuat database, membuat tabel, dan membuat data)
### 1. Membuat database

![WhatsApp Image 2023-06-21 at 20 57 31](https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/5d9d8eab-8150-4465-8723-cc48972a66d9)

### 2. Membuat Table pada database

**1. Table Jenis_kegiatan**

<img width="405" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/57b10f22-ce4d-4cbb-baa4-43a4f1c7546e">

**2.  Table petugas**

<img width="390" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/67e4e926-a018-4a67-9b06-d4377450bbbe">

**3. Table gedung**

<img width="395" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/132c2f2b-6d97-4854-bc38-d71a7482aff7">

**4. Table instansi**

<img width="368" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/e5fae749-d4d4-4234-9ac3-fca8fbc440aa">

**5. Table peminjam**

<img width="414" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/1d50a368-f221-42b0-987f-ca6b3d3eaf18">

**6. Table pinjaman**

<img width="393" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/b8f8d7eb-a0fd-4dcb-b7ae-c987c88fc85e">

**7. Table detail_pinjaman_ruang**

<img width="424" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/eda1979f-6405-4b88-a212-62f04dec193d">

**8. Table ruang**

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
A.Menambahkan constraint dari tabel pinjaman ADD FOREIGN KEY (id_peminjam) referensi tabel peminjam (id_peminjam )

B.ADD FOREIGN KEY (id_jenis_kegiatan) referensi tabel id_jenis_kegiatan (id_jenis_kegiatan)

<img width="647" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/4df4b091-9b4e-40ca-a6b4-61f61be708e1">

**8. Tabel Detail_pinjaman_ruang**

<img width="685" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/105b1a37-686b-4a8b-93f9-06f07d50a0db">ㅤㅤㅤ

A.Menambahkan constraint dari tabel detail_pinjaman_ruang ADD FOREIGN KEY (id_pinjaman) REFERENCES tabel pinjaman (id_pinjaman),

B.ADD FOREIGN KEY (id_petugas) REFERENCES tabel petugas (id_petugas),

C.ADD FOREIGN KEY (id_ruang) REFERENCES tabel ruang (id_ruang)


<img width="655" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/68b619fc-b366-40b0-9f56-d4925f5aef37">


<img width="908" alt="image" src="https://github.com/DimasF3009/Kelompok8_Basis-Data/assets/115542822/a3089ae1-5eef-4ca5-9025-13c3c8079f01">ㅤㅤㅤ

