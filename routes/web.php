<?php
//require_once '../app/controllers/AuthController.php';

//use app\controllers\AuthController;
///use App\Controllers\DashboardController;

//$authController = new AuthController();
$route = $_GET['route'] ?? '';


if ($route === '/login') {
    include '../app/views/auth/login.php';
}
