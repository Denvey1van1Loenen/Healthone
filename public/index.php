<?php
require '../Modules/Categories.php';
require '../Modules/Products.php';
require '../Modules/Database.php';
require '../Modules/Review.php';
require '../Modules/registreren.php';
require '../Modules/login.php';
require '../Modules/logout.php';

session_start();
$request = $_SERVER['REQUEST_URI'];
$params = explode("/", $request);
$title = "HealthOne";
$titleSuffix = "";
global $message;
switch ($params[1]) {
    case 'categories':
        $titleSuffix = ' | Categories';
        $categories = getCategories();
        include_once "../Templates/categories.php";
        break;

    case 'category':
        if (isset($_GET['id'])) {
            $categoryId = $_GET['id'];
            $products = getProducts($categoryId);
            $name = getCategoryName($categoryId);
            include_once "../Templates/products.php";
        }
        break;
    case 'product':
        if (isset($_GET['id'])) {
            $productId = $_GET['id'];
            $product = getProduct($productId);
            $titleSuffix = ' | ' . $product->name;
            $reviews = getReviews($productId);
            include_once "../Templates/product.php";
        }
        break;
    case 'contact':
        include_once "../Templates/contact.php";
        break;
    case 'register':
        $titleSuffix = '| Register';

        if (isset($_POST['register'])){

            $result= makeRegistration();
            switch ($result){
                case 'SUCCES':
                    $message="gebruiker aangemaakt";
                    //header("Location: /home");
                    include_once "../Templates/home.php";
                    break;
                case 'INCOMPLETE':
                    $message= "niet alle veldden correct ingevuld";
                    include_once "../Templates/registreren.php";
                    break;
                case 'EXIST':
                    $message ="Gebruiker bestaat al";
                    include_once "../Templates/registreren.php";
                    break;
            }
        }else{
            include_once "../Templates/registreren.php";
        }
        break;

    case 'review':
        if (isset($_GET['id'])) {
            $productId = $_GET['id'];
            $product = getProduct($productId);
            $reviews = getReviews($productId);
            if (isset($_POST['verzenden'])) {
                $name = $_POST['name'];
                $description = $_POST['description'];
                $stars = $_POST['stars'];
                saveReview($name, $description,$stars,$productId);
                include_once "../Templates/product.php";
            } else {
                include_once "../Templates/review.php";
            }
        } else {
            include_once "../Templates/home.php";
        }
        break;
    case 'login';
        $titleSuffix =' | login ';
        if(isset($_POST['login'])){
            $result = checkLogin();
            switch ($result){
                case 'ADMIN':
                    header ("location: /admin/home");
                    break;
                case 'MEMBER':
                    header ("location: /member/home");
                    break;
                case 'FAILURE':
                    $message = "Email of Password is niet correct ingevuld!";
                    include_once "../Templates/login.php";
                    break;
                case 'INCOMPLETE';
                $message = "Formulier is niet volledig ingevuld!";
                include_once "../Templates/login.php";
                break;

            }
        }
        else{
            include_once "../Templates/login.php";
        }
        break;
    case 'admin':
        include_once ('admin.php');
        break;
    case 'member':
        include_once ('member.php');
        break;

    default:
        $titleSuffix = ' | Home';
        include_once "../Templates/home.php";
        break;
}
function getTitle() {
    global $title, $titleSuffix;
    return $title . $titleSuffix;
}