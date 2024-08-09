<?php

namespace Dao;

class ShippersDao extends \Dao\Table
{
    public static function getAllShippers()
    {
        $sql = "SELECT * FROM Shippers";
        return self::obtenerRegistros($sql, array());
    }

    public static function getShipper($shipperId)
    {
        $sql = "SELECT * FROM Shippers WHERE ShipperID = :shipperId";
        return self::obtenerRegistros($sql, array("shipperId" => $shipperId));
    }

    public static function createShipper($name, $contactName, $phone, $email)
    {
        $sql = "INSERT INTO Shippers (ShipperName, ContactName, Phone, Email) VALUES (:name, :contactName, :phone, :email)";
        self::ejecutarNonQuery($sql, array(
            "name" => $name,
            "contactName" => $contactName,
            "phone" => $phone,
            "email" => $email
        ));
    }

    public static function updateShipper($shipperId, $name, $contactName, $phone, $email)
    {
        $sql = "UPDATE Shippers SET ShipperName = :name, ContactName = :contactName, Phone = :phone, Email = :email WHERE ShipperID = :shipperId";
        self::ejecutarNonQuery($sql, array(
            "name" => $name,
            "contactName" => $contactName,
            "phone" => $phone,
            "email" => $email,
            "shipperId" => $shipperId
        ));
    }

    public static function deleteShipper($shipperId)
    {
        $sql = "DELETE FROM Shippers WHERE ShipperID = :shipperId";
        self::ejecutarNonQuery($sql, array("shipperId" => $shipperId));
    }
}
