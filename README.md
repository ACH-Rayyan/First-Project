# 🛒 Kasir Minimarket (Flutter POS)

Sebuah aplikasi Point of Sale (POS) atau kasir digital yang dirancang khusus untuk kebutuhan minimarket. Berbeda dengan aplikasi kasir restoran, proyek ini berfokus pada **kecepatan transaksi** menggunakan integrasi kamera sebagai pemindai (scanner) barcode.

---

## 🎯 Gambaran Akhir Aplikasi (Jadinya Nanti Seperti Apa?)
Saat aplikasi ini selesai dibuat, inilah yang akan terjadi di lapangan:
1. **Kasir** membuka aplikasi di HP/Tablet Android yang ditaruh di meja kasir.
2. Saat ada pelanggan membeli barang, kasir tidak perlu mengetik nama barang. Kasir cukup menempelkan bungkus barang (barcode) ke depan kamera HP/Tablet.
3. Aplikasi akan berbunyi "beep", dan barang tersebut (beserta harganya) otomatis muncul di layar kasir. Jika discan 3 kali, otomatis jumlahnya menjadi "3x".
4. Aplikasi otomatis menghitung total belanja.
5. Kasir menekan tombol "Bayar", memasukkan uang yang diterima, dan aplikasi akan menampilkan struk serta uang kembalian.
6. Stok barang di "gudang" (database) akan otomatis berkurang.

---

## 🛠️ Alat & Teknologi yang Digunakan (Pakai Apa Saja?)
Proyek ini dibangun menggunakan kombinasi teknologi modern:
* **Frontend (Tampilan Aplikasi):** [Flutter](https://flutter.dev/) & Bahasa pemrograman Dart.
* **Backend (Server & Database):** [Firebase Cloud Firestore](https://firebase.google.com/) (Database NoSQL yang cepat dan gratis untuk pemula).
* **Desain UI/UX:** [Figma](https://figma.com/) (Untuk merancang prototipe layar sebelum di-coding).
* **Manajemen Proyek & Kode:** [GitHub](https://github.com/) & GitHub Projects (Kanban Board).
* **Package Inti (Plugin):** `mobile_scanner` (Untuk menyulap kamera HP menjadi alat pembaca barcode).

---

## 👥 Pembagian Peran & Tugas Tim
Proyek ini dikerjakan oleh 4 orang dengan spesialisasi masing-masing:

* **[Nama Orang 1] - Frontend Developer (Fitur Core & Scanner)**
  * Fokus mengurus fitur hardware: Kamera dan pemindai barcode.
  * Menulis logika perhitungan kasir (tambah/kurang pesanan, total harga, kembalian).
* **[Nama Orang 2] - Frontend Developer (UI Layout & Tampilan)**
  * Fokus menerjemahkan desain Figma menjadi kode Flutter.
  * Mengatur tata letak tabel belanja, tombol-tombol, halaman login, dan animasi (jika ada).
* **[Nama Orang 3] - Backend & Database Administrator**
  * Merancang struktur penyimpanan data di Firebase.
  * Mengurus alur data masuk dan keluar (menyambungkan aplikasi Flutter ke Firebase).
* **[Nama Orang 4] - UI/UX Designer & Project Manager**
  * Membuat cetak biru tampilan (mockup/desain) di Figma.
  * Memantau papan tugas (GitHub Projects) dan memastikan semua anggota tim mengerjakan tugas sesuai jadwal.

---

## 🚧 Roadmap Proses Pembuatan (Gimana Proses Bikinnya?)
Tim akan bekerja dalam beberapa fase (Sprint) agar proyek terarah:

### Fase 1: Perencanaan & Pondasi (Saat Ini)
- [ ] Membuat sketsa kasar dan desain antarmuka (UI) di Figma.
- [ ] Menyiapkan repositori GitHub dan papan Kanban.
- [ ] Membuat proyek awal (`flutter create`) dan menyambungkannya ke GitHub.
- [ ] Setup proyek Firebase dan membuat database berisi data "dummy" (palsu) awal.

### Fase 2: Pembangunan UI & Riset Fitur
- [ ] Frontend membuat tampilan layar kasir menggunakan data palsu (statis) di dalam kode.
- [ ] Frontend melakukan eksperimen menyalakan kamera HP dengan package `mobile_scanner`.
- [ ] Backend menyiapkan jalur penghubung (API/SDK) agar Flutter bisa "mengobrol" dengan Firebase.

### Fase 3: Integrasi Data (Penggabungan)
- [ ] Menyambungkan hasil scan barcode dengan data di Firebase. (Jika barcode "123" discan, cari di database dan tampilkan "Indomie" di layar).
- [ ] Membuat fungsi hitung otomatis (Subtotal, Pajak, Total Akhir).
- [ ] Mengirim data transaksi yang sudah dibayar kembali ke Firebase untuk disimpan sebagai laporan.

### Fase 4: Finishing & Pengujian
- [ ] Mempercantik tampilan aplikasi.
- [ ] Tim melakukan *Testing*: Mencoba scan barang secara cepat bertubi-tubi untuk mengecek apakah aplikasi *crash* atau *lag*.
- [ ] Pembuatan APK akhir.

---

## 💻 Cara Menjalankan Proyek Ini (Bagi Developer)
Bagi anggota tim yang ingin menjalankan kode ini di laptop masing-masing, ikuti langkah berikut:

1. Buka Terminal/Command Prompt di laptop kamu.
2. Unduh (clone) kode dari GitHub dengan perintah:
   ```bash
   git clone [https://github.com/](https://github.com/)[username-github-kalian]/[nama-repo-kalian].git