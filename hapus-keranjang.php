<?php
session_start();
if(!isset($_GET['id']) || empty($_GET['id'])){
    header("Location: keranjang.php");
    exit;
}

if (!isset($_SESSION['keranjang'])) {
    header("Location: keranjang.php");
    exit;
}

$id = $_GET['id'];
if(isset($_SESSION['keranjang'][$id])){
    unset($_SESSION['keranjang'][$id]);
}

header("Location: keranjang.php");
exit;
?>
