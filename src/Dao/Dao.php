<?php

namespace Dao;

class Dao {
    private static $conn;

    public static function getConn() {
        if (self::$conn === null) {
            $host = '127.0.0.1'; // O 'localhost'
            $dbname = 'nombre_base_datos'; // Reemplaza con el nombre de tu base de datos
            $user = 'root'; // Reemplaza con el nombre de usuario correcto
            $password = ''; // Reemplaza con la contraseña del usuario, si hay

            try {
                self::$conn = new \PDO("mysql:host=$host;dbname=$dbname", $user, $password);
                self::$conn->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
            } catch (\PDOException $e) {
                echo 'Connection failed: ' . $e->getMessage();
            }
        }
        return self::$conn;
    }
}
