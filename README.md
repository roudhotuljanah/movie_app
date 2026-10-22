# 🎬 Asian Movie Catalog

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-brightgreen?style=for-the-badge)
![UTS](https://img.shields.io/badge/Project-UTS%20Mobile%20Programming-orange?style=for-the-badge)

Aplikasi mobile **Asian Movie Catalog** dikembangkan untuk memenuhi Tugas Tengah Semester (UTS) mata kuliah **Mobile Programming** (Semester Ganjil 2025/2026). Aplikasi ini menyajikan katalog film dan drama populer dari tiga negara Asia: **Korea**, **Thailand**, dan **China** secara cepat, aman, dan responsif.

---

## 📌 Deskripsi Aplikasi & Tujuan

**Asian Movie Catalog** mempermudah pecinta sinematografi Asia dalam menjelajahi informasi film dan drama favorit mereka. Pengguna dapat memfilter konten berdasarkan negara asal, melihat tren film populer maupun rilis terbaru, serta membaca informasi mendalam seperti **skor rating**, **jumlah episode resmi**, **sinopsis interaktif**, dan **jajaran pemain utama**.

Aplikasi ini dibangun menggunakan framework **Flutter** dengan menerapkan prinsip-prinsip desain antarmuka antarmuka (*UI/UX*) modern, navigasi *null-safe*, serta struktur manajemen data lokal yang efisien.

---

## 🎨 Tema & Desain Visual

Aplikasi ini mengusung skema warna khusus yang konsisten dan elegan:
* 🔷 **Navy Blue (`#1B263B`)**: Digunakan sebagai warna utama pada AppBar, Header Beranda, dan penekanan elemen teks penting.
* 📙 **Gold / Yellow Accent (`#F4A261`)**: Digunakan sebagai warna aksen untuk tombol interaktif, bintang rating, dan badge episode.
* 📜 **Cream Background (`#FDF6E2`)**: Memberikan kontras lembut yang nyaman di mata penggunanya.

---

## 📱 Halaman dan Fitur Utama

| No | Halaman | File Sumber | Deskripsi & Fungsi Utama |
|:---:|---|---|---|
| **1** | **Beranda (Home)** | `lib/view/home.dart` | • Header sapaan dan pencarian interaktif.<br>• Tombol navigasi cepat Kategori Negara (Korea, Thailand, China).<br>• Daftar **Film Populer** dalam bentuk *scroll horizontal*.<br>• Daftar **Film Terbaru** dalam bentuk *scroll vertikal*. |
| **2** | **Daftar Kategori** | `lib/view/category.dart` | • Menampilkan seluruh film terfilter sesuai negara yang dipilih pengguna.<br>• Informasi ringkasan meliputi judul, genre, tahun rilis, dan jumlah episode.<br>• Navigasi langsung menuju halaman Detail. |
| **3** | **Detail Film** | `lib/view/detail.dart` | • Tampilan *Banner Poster* beresolusi tinggi.<br>• Informasi mendalam: Judul, Rating, Genre, Tahun, dan **Jumlah Episode** yang akurat.<br>• Feature **ReadMore** pada sinopsis.<br>• Chip daftar pemain (*Cast*) utama. |

---

## 🗺️ Arsitektur & Navigasi

Sistem navigasi dikelola secara terpusat pada file `lib/main.dart` menggunakan metode **`onGenerateRoute`** untuk memastikan transfer data (*argument passing*) aman dari *null pointer exception*:

* **`/`** : Rute utama mengarah ke `Home()`.
* **`/category`** : Menerima parameter `categoryName` berjenis `String`.
* **`/detail`** : Menerima parameter `movieId` berjenis `int`.

---

## 🍿 Data Katalog Film (15 Data Terkurasi)

Aplikasi mengelola 15 data lokal berstruktur pada `lib/model/movie.dart` secara akurat:

| No | Judul Film / Drama | Negara | Jumlah Episode | Rating | Genre |
|:---:|---|:---:|:---:|:---:|---|
| 1 | Crash Landing on You | Korea | 16 Episode | ⭐ 8.7 | Romance, Drama |
| 2 | Vincenzo | Korea | 20 Episode | ⭐ 8.4 | Crime, Comedy |
| 3 | Goblin (The Lonely God) | Korea | 16 Episode | ⭐ 8.6 | Fantasy, Romance |
| 4 | All of Us Are Dead | Korea | 12 Episode | ⭐ 7.5 | Action, Horror |
| 5 | Business Proposal | Korea | 12 Episode | ⭐ 8.1 | Comedy, Romance |
| 6 | Bad Genius | Thailand | 1 Film / 12 Ep | ⭐ 7.6 | Thriller, Drama |
| 7 | Girl From Nowhere | Thailand | 16 Episode | ⭐ 7.7 | Mystery, Thriller |
| 8 | Friend Zone | Thailand | 1 Film | ⭐ 7.2 | Romance, Comedy |
| 9 | Pee Mak | Thailand | 1 Film | ⭐ 7.2 | Horror, Comedy |
| 10 | Hunger | Thailand | 1 Film | ⭐ 6.7 | Drama, Thriller |
| 11 | Hidden Love | China | 25 Episode | ⭐ 8.6 | Romance, Youth |
| 12 | The Untamed | China | 50 Episode | ⭐ 8.9 | Action, Fantasy |
| 13 | Lighter and Princess | China | 36 Episode | ⭐ 8.3 | Romance, Drama |
| 14 | Falling Into Your Smile | China | 31 Episode | ⭐ 8.4 | Comedy, E-Sports |
| 15 | Love Between Fairy and Devil | China | 36 Episode | ⭐ 8.7 | Fantasy, Romance |

---

## 🛠️ Pustaka & Dependensi Tambahan

* **`flutter/material.dart`**: Komponen utama antarmuka Material Design.
* **`readmore: ^2.2.0`**: Digunakan di halaman detail untuk fitur penyuntingan sinopsis panjang secara dinamis (`Selengkapnya` / `Sembunyikan`).

---

## ⚙️ Cara Menjalankan Proyek (*Getting Started*)

### Prasyarat
* Flutter SDK (Versi 3.x atau terbaru)
* VS Code / Android Studio
* Perangkat Fisik Android / Emulator

### Langkah Instalasi
1. **Clone Repositori Ini**:
   ```bash
   git clone [https://github.com/roudhotuljanah/movie_app.git](https://github.com/roudhotuljanah/movie_app.git)
   cd movie_app