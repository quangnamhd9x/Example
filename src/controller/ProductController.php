<?php

namespace app\controller;

use app\model\Product;
use app\model\ProductManager;

class ProductController
{
    protected $productController;

    public function __construct()
    {
        $this->productController = new ProductManager();
    }

    public function displayAll()
    {
        $products = $this->productController->getAll();
        include_once "src/view/listProduct.php";
    }

    public function addProduct()
    {
        if ($_SERVER["REQUEST_METHOD"] == 'GET') {
            include_once 'src/view/addProduct.php';
        } else {
            $name = $_POST["name"];
            $type = $_POST["type"];
            $price = $_POST["price"];
            $count = $_POST["count"];
//            $date = $_POST["date"];
            $note = $_POST["note"];
            $product = new Product($name, $type, $price, $count, $note);
            $this->productController->addProduct($product);
            header("location:index.php");
        }
    }

    public function deleteProduct()
    {
        $id = $_REQUEST['id'];
        $this->productController->deleteProduct($id);
        header("location:index.php");
    }

    public function updateProduct()
    {
        if ($_SERVER["REQUEST_METHOD"] == 'GET') {
            $id = $_REQUEST["id"];
            $product = $this->productController->getProductById($id);
            include_once 'src/view/updateProduct.php';
        } else {
            $id = $_REQUEST['id'];
            $name = $_REQUEST['name'];
            $type = $_REQUEST['type'];
            $price = $_REQUEST['price'];
            $count = $_REQUEST['count'];
            $note = $_REQUEST['note'];
            $product = new Product($name, $type, $price, $count, $note);
            $product->setId($id);
            $this->productController->updateProduct($product);
            header('location:index.php');
        }
    }

    public function search()
    {
        if ($_SERVER['REQUEST_METHOD'] == "POST") {
            $search = "%" . $_REQUEST['search'] . "%";
            $input = $this->productController->search($search);
            include_once "src/view/showInfo.php";
        }
    }
}