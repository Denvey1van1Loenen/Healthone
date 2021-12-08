<?php
require '../Modules/Categories.php';
require '../Modules/Products.php';
//require '../Modules/review.php';
require '../Modules/login.php';
//require '../Modules/logout.php';
require '../Modules/Database.php';
//require '../Modules/common.php';

session_start();
var_dump($_SESSION);

$request = $_SERVER['REQUEST_URI'];
$params = explode("/", $request);
$title = "HealthOne";
$titleSuffix = "";

switch ($params[1]) {
    case 'categories':
        $titleSuffix = ' | Categories';
        $categories = getCategories();
        include_once ("../Templates/categories.php");
        break;

    case 'category':
        $titleSuffix = ' |Category';
        if (isset($_GET['id'])){
            $categoyId = $_GET['id'];
            $products = getProducts($categoyId);
            $name = getCategoryName($categoyId);
            include_once ("../Templates/products.php");
        }
        break;

    case 'product':
        if (isset($_GET['id'])){
            $productId = $_GET['id'];
            $product = getProduct($productId);
            $name = getCategoryName($product->category_id);
            $titleSuffix = ' | ' . $product->name;
            //$reviews = getRiviews($productId);
            include_once ("../Templates/product.php");
        }else{
            $titleSuffix = ' | Home';
            include_once ("../Templates/home.php");
        }
        break;
    case 'review':
        $id=$_GET['id'];
        $product=getProduct($id);
        include_once ("../Templates/review.php");
        break;
    case 'contact':
        include_once ("../Templates/contact.php");
        break;
case 'login':

    $titleSuffix = '|Login';
    if(isset($_POST['login'])){
        $result = checkLogin();

        switch($result){
            case 'ADMIN':
                header("Location: /admin/home");
            break;
            case'MEMBER':
                break;
            case 'FAILURE':
                $messae = "Email of password niet correct ingevuld";
                include_once ("../Templates/admin/home.php");
                break;
                case 'INCOMPLETE':
                    $messae = "Formulier niet volledig ingevuld";
                include_once ("../Templates/login.php");
                break;
        }
    }
    else{
        include_once ("../Templates/login.php");
    }
    break;
    case 'admin':
        include_once('admin.php');
        break;
    default:
        $titleSuffix = ' | Home';
        include_once "../Templates/home.php";
}


function getTitle() {
    global $title, $titleSuffix;
    return $title . $titleSuffix;
}