<?php

namespace app\controllers;

use app\models\User;

class AuthController
{
    public function showLogin()
    {
        include '../app/views/auth/login.php';
    }

    public function login()
    {
        // Handle login logic here.
        $email = $_POST['email'];
        $password = $_POST['password'];

        $user = User::findByEmail($email);
        if ($user && password_verify($password, $user['password'])) {
            session_start();
            $_SESSION['user_id'] = $user['id'];
            header('Location: /dashboard');
            exit;
        }

        // Show an error message if authentication fails.
        echo "Invalid login credentials.";
    }

    public function logout()
    {
        session_start();
        session_destroy();
        header('Location: /login');
        exit;
    }
}
