<?php

namespace Controllers;

use Dao\ShippersDao; 

class ShipperController extends PublicController implements IController
{
    public function run(): void
    {
        $action = $_GET['action'] ?? 'list';

        switch ($action) {
            case 'create':
                $this->create();
                break;
            case 'update':
                $this->update();
                break;
            case 'delete':
                $this->delete();
                break;
            default:
                $this->list();
                break;
        }
    }

    private function list(): void
    {
        $shippers = ShippersDao::getAllShippers(); 
        $this->render('shipper_list.view.tpl', array('shippers' => $shippers));
    }

    private function create(): void
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            ShippersDao::createShipper($_POST['name'], $_POST['contactName'], $_POST['phone'], $_POST['email']); // Usa el nombre de la clase correcto
            header('Location: index.php?page=ShipperController&action=list');
            exit;
        }

        $this->render('shipper_create.view.tpl');
    }

    private function update(): void
    {
        $shipperId = $_GET['id'] ?? null;
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && $shipperId) {
            ShippersDao::updateShipper($shipperId, $_POST['name'], $_POST['contactName'], $_POST['phone'], $_POST['email']); 
            header('Location: index.php?page=ShipperController&action=list');
            exit;
        }

        $shipper = ShippersDao::getShipper($shipperId); 
        $this->render('shipper_update.view.tpl', array('shipper' => $shipper));
    }

    private function delete(): void
    {
        $shipperId = $_GET['id'] ?? null;
        if ($shipperId) {
            ShippersDao::deleteShipper($shipperId); 
            header('Location: index.php?page=ShipperController&action=list');
            exit;
        }
    }
}
