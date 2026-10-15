# SIPUD - Parengan Store

Website e-commerce sederhana untuk menampilkan dan menjual produk unggulan Desa Parengan, seperti kain tenun, makanan, dan kerajinan.

Project ini dibuat menggunakan PHP native, MySQL/MariaDB, Bootstrap, dan Font Awesome.

## Fitur

- Menampilkan produk dan kategori
- Pencarian produk
- Detail produk
- Keranjang belanja
- Proses pembayaran sederhana
- Halaman admin untuk mengelola kategori dan produk
- Laporan transaksi

## Teknologi

- PHP 8+
- MySQL atau MariaDB
- Bootstrap 5.2.3
- Font Awesome 6.5.2

## Menjalankan Project

### 1. Persiapan database

Pastikan MySQL atau MariaDB sedang berjalan, kemudian buat database dengan nama:

```text
db_sipud
```

Import file database berikut melalui phpMyAdmin atau MySQL client:

```text
database/db_sipud.sql
```

Konfigurasi database berada di file `koneksi.php`:

```php
$servername = "localhost";
$username = "root";
$password = "";
$database = "db_sipud";
```

Sesuaikan konfigurasi tersebut jika pengaturan MySQL di komputer berbeda.

### 2. Menjalankan dengan PHP built-in server

Dari folder utama project, jalankan:

```bash
php -S localhost:8000
```

Kemudian buka:

```text
http://localhost:8000
```

Halaman admin tersedia di:

```text
http://localhost:8000/adminpanel/login.php
```

### 3. Menjalankan dengan XAMPP

Alternatifnya, letakkan folder project di:

```text
C:\xampp\htdocs\fp-sipud-coba2
```

Nyalakan MySQL dari XAMPP Control Panel. Apache tidak wajib dinyalakan jika project dijalankan menggunakan PHP built-in server.

Jika menggunakan Apache XAMPP, buka:

```text
http://localhost/fp-sipud-coba2
```

## Struktur Folder

```text
.
├── adminpanel/    # Halaman dan fitur admin
├── database/      # File SQL database
├── bootstrap/     # Bootstrap
├── css/           # File CSS
├── fontawesome/   # Font Awesome
├── image/         # Gambar produk dan banner
├── js/            # File JavaScript
├── koneksi.php    # Konfigurasi koneksi database
└── index.php      # Halaman utama
```

## Catatan

Project ini masih dalam tahap pengembangan. Beberapa fitur dan tampilan mungkin masih perlu disempurnakan, terutama validasi input, keamanan autentikasi, dan integrasi pembayaran.

## Lisensi

Project ini dibuat untuk keperluan pembelajaran dan tugas.
