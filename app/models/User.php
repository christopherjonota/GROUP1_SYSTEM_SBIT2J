<?php

namespace App\Models;

use PDO;

class User
{
    public static function findByEmail($email)
    {
        // Use PDO to fetch the user by email from the database.
        $db = include '../config/database.php';
        $stmt = $db->prepare("SELECT * FROM users WHERE email = :email");
        $stmt->execute(['email' => $email]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
