<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start(); // Memulai sesi
}
?>

<nav class="navbar navbar-expand-lg navbar-dark warna1">
  <div class="container d-flex justify-content-between">

    <!-- Logo -->
    <a href="index.php" class="navbar-brand">Parengan Store</a>

    <!-- Toggler -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <!-- Menu Navigasi -->
    <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
      <ul class="navbar-nav">
        <li class="nav-item me-4">
          <a class="nav-link" href="index.php">Home</a>
        </li>
        <li class="nav-item me-4">
          <a class="nav-link" href="produk.php">Produk</a>
        </li>
        <li class="nav-item me-4">
          <a class="nav-link" href="tentang-kami.php">Tentang Kami</a>
        </li>
      </ul>
    </div>

    <!-- Keranjang Belanja -->
    <div class="d-flex align-items-center navbar-dark">
      <ul class="navbar-nav">
          <li class="nav-item me-4">
            <a class="nav-link" href="keranjang.php">
                <i class="fas fa-shopping-cart"></i>
            </a>
        </li>
      </ul>
    </div>
  </div>
</nav>
