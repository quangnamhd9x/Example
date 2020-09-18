<?php
require __DIR__ . "/vendor/autoload.php";
$productController = new \app\controller\ProductController();
$page = isset($_REQUEST["page"]) ? $_REQUEST["page"] : NULL;

switch ($page) {
    case "display":
        $productController->displayAll();
        break;
    case "add":
        $productController->addProduct();
        break;
    case "delete":
        $productController->deleteProduct();
        break;
    case "update":
        $productController->updateProduct();
        break;
    case "showInfo":
        $productController->search();
        break;
    default:
        $productController->displayAll();
}
