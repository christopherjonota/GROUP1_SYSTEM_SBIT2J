<?php
require_once '../routes/web.php';

// Check if the user is logged in. If not, redirect to login.
session_start();

//$route = $_GET['route'] ?? '';
//$route = '/login';


if (!isset($_SESSION['user_id'])) {
    header('Location: /?route=login');
    exit;
}
    
?>