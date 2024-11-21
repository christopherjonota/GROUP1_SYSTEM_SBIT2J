<?php
$server = "localhost";
$user = "root";
$pass = "";
$database = "campus_event_management";

$conn = mysqli_connect($server,$user,$pass,$database);

if (!$conn) {
    echo "Connection Failed: " . mysqli_connect_error();
    exit;
}

