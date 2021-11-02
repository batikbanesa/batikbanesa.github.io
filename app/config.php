<?php
$server = "localhost";
$username = "root";
$password = "tmDevFlats0987^(";
$database = "banesa";

$conn = mysqli_connect($server, $username, $password, $database) or die("Gagal");
$db1 = new mysqli($server, $username, $password, $database);
