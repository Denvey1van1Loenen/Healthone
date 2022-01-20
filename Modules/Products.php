<?php
// TODO Zorg dat de methodes goed ingevuld worden met de juiste queries.
function getProducts(int $categoryId)
{
    global $pdo;
    $sth = $pdo->prepare('SELECT * FROM product WHERE category_id=?');
    $sth->bindParam(1,$categoryId);
    $sth->execute();
    return $sth->fetchAll(PDO::FETCH_CLASS,'product');



}

function getProduct(int $productId)
{
    global $pdo;
    $sth = $pdo->prepare('SELECT * FROM product WHERE id=?');
    $sth->bindParam(1,$productId);
    $sth->execute();
    return $sth->fetchAll(PDO::FETCH_CLASS,'product')[0];
}

function getAllproducts (): array
{
    global $pdo;
    $sth = $pdo->prepare('SELECT * FROM product ORDER BY category_id');
    $sth->execute();
    return $sth->fetchAll(PDO::FETCH_CLASS,'product');
}

function deleteProduct(int $productId){
    global $pdo;
    $id = filter_var($_REQUEST['id'], FILTER_VALIDATE_INT);
    if ($id!=false){

        $sql = $pdo->prepare('DELETE FROM `product` WHERE `id` = :id');

        $stmnt = $sql;
        $stmnt->bindParam(':id',$productId);
        $stmnt->execute();
    }
}

