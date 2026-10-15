<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "db_sipud";

    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $database) or die ("Connection failed: " . mysqli_connect_error());
    
    // Check connection
    if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
    }
    ?>