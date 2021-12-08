<?php
global $params;

if(!isAdmin()){
    logout();
    header("location:/home");
}else{

    switch($params[2]){

        case'home':
            include_once "../Templates/admin/home.php";
            break;

        case 'products':
            break;

        case 'addProduct':
            break;
        case 'deleteProduct':
            break;
        default:
        break;
    }
}