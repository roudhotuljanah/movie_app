# 🎬 Asian Movie Catalog

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
![Platform](https://img.shields.io/badge/Platform-Android-brightgreen?style=for-the-badge)
![UTS](https://img.shields.io/badge/Project-UTS%20Mobile%20Programming-orange?style=for-the-badge)

Aplikasi mobile **Asian Movie Catalog** dikembangkan untuk memenuhi Tugas Tengah Semester (UTS) mata kuliah **Mobile Programming** (Semester Ganjil 2026/2027). Aplikasi ini menyajikan katalog film dan drama populer dari tiga negara Asia: **Korea**, **Thailand**, dan **China** secara cepat, aman, dan responsif.

---

## 📌 Deskripsi Aplikasi & Tujuan

**Asian Movie Catalog** mempermudah pecinta sinematografi Asia dalam menjelajahi informasi film dan drama favorit mereka. Pengguna dapat memfilter konten berdasarkan negara asal, melihat film populer maupun rilis terbaru, serta membaca informasi lengkap seperti **skor rating**, **jumlah episode**, **sinopsis interaktif**, dan **jajaran pemain utama**.

Aplikasi ini dibangun menggunakan framework **Flutter** dengan menerapkan prinsip desain antarmuka (*UI/UX*) modern, navigasi *null-safe*, dan pengelolaan data lokal yang efisien.

---

## 🎨 Tema & Desain Visual

Aplikasi ini memakai skema warna yang konsisten:

* 🔷 **Navy Blue (`#1B263B`)**: warna utama pada AppBar, header beranda, dan teks penting.
* 📙 **Gold (`#F4A261`)**: warna aksen untuk tombol, ikon kategori, bintang rating, dan border chip pemain.
* 📜 **Cream (`#FDF6E2`)**: warna latar halaman yang nyaman di mata.

---

## 📱 Halaman dan Fitur Utama

| No | Halaman | File Sumber | Deskripsi & Fungsi Utama |
|:---:|---|---|---|
| **1** | **Beranda (Home)** | `lib/view/home.dart` | • Header sapaan dan kolom pencarian.<br>• Tombol Kategori Negara (Korea, Thailand, China).<br>• **Film Populer** dalam bentuk *scroll horizontal*.<br>• **Film Terbaru** dalam bentuk *scroll vertikal*. |
| **2** | **Daftar Kategori** | `lib/view/category.dart` | • Menampilkan film yang difilter sesuai negara pilihan.<br>• Ringkasan judul, genre, tahun rilis, dan jumlah episode.<br>• Navigasi langsung ke halaman Detail. |
| **3** | **Detail Film** | `lib/view/detail.dart` | • Banner poster berukuran besar.<br>• Informasi judul, rating, genre, tahun, dan jumlah episode.<br>• Fitur **ReadMore** pada sinopsis.<br>• Chip daftar pemain utama. |

---

## 🗺️ Arsitektur & Navigasi

Navigasi dikelola di `lib/main.dart` menggunakan **`onGenerateRoute`** agar pengiriman data (*argument passing*) aman dari *null pointer exception*:

* **`/`** : rute utama menuju `Home()`.
* **`/category`** : menerima parameter `categoryName` bertipe `String`.
* **`/detail`** : menerima parameter `movieId` bertipe `int`.

### Struktur Folder

```
lib/
├── main.dart
├── model/
│   └── movie.dart
└── view/
    ├── home.dart
    ├── category.dart
    └── detail.dart
```

---

## 🍿 Data Katalog Film (15 Data)

Aplikasi memakai 15 data lokal pada `lib/model/movie.dart`:

| No | Judul Film / Drama | Negara | Jumlah Episode | Rating | Genre |
|:---:|---|:---:|:---:|:---:|---|
| 1 | Crash Landing on You | Korea | 16 Episode | ⭐ 8.7 | Romance, Drama |
| 2 | Vincenzo | Korea | 20 Episode | ⭐ 8.4 | Crime, Comedy |
| 3 | Goblin (The Lonely God) | Korea | 16 Episode | ⭐ 8.6 | Fantasy, Romance |
| 4 | All of Us Are Dead | Korea | 12 Episode | ⭐ 7.5 | Action, Horror |
| 5 | Business Proposal | Korea | 12 Episode | ⭐ 8.1 | Comedy, Romance |
| 6 | Bad Genius | Thailand | 1 Film / 12 Episode Series | ⭐ 7.6 | Thriller, Drama |
| 7 | Girl From Nowhere | Thailand | 16 Episode - 2 Season | ⭐ 7.7 | Mystery, Thriller |
| 8 | Friend Zone | Thailand | 1 Film | ⭐ 7.2 | Romance, Comedy |
| 9 | Pee Mak | Thailand | 1 Film | ⭐ 7.2 | Horror, Comedy |
| 10 | Hunger | Thailand | 1 Film | ⭐ 6.7 | Drama, Thriller |
| 11 | Hidden Love | China | 25 Episode | ⭐ 8.6 | Romance, Youth |
| 12 | The Untamed | China | 50 Episode | ⭐ 8.9 | Action, Fantasy |
| 13 | Lighter and Princess | China | 36 Episode | ⭐ 8.3 | Romance, Drama |
| 14 | Falling Into Your Smile | China | 31 Episode | ⭐ 8.4 | Comedy, E-Sports |
| 15 | Love Between Fairy and Devil | China | 36 Episode | ⭐ 8.7 | Fantasy, Romance |

---

## 🛠️ Pustaka & Dependensi

* **`flutter/material.dart`**: komponen antarmuka Material Design.
* **`readmore: 2.2.0`**: fitur sinopsis yang dapat diperluas (`Selengkapnya` / `Sembunyikan`) pada halaman detail.

---

## 👤 Pembuat

* **Nama**: [Roudhotul Janah]
* **NIM**: [240605110212]
* **Kelas**: [Mobile Programming Praktikum J]