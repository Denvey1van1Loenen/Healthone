<?php

function makeRegistration():string
{
    global $pdo;
    $email=filter_input(INPUT_POST,'email',FILTER_VALIDATE_EMAIL);
    $password=filter_input(INPUT_POST,'password');
    $firstName=filter_input(INPUT_POST,'firstName');
    $lastName=filter_input(INPUT_POST,'lastName');
    if ($email!==false && !empty($password) && !empty($firstName) && !empty($lastName)) {
        $sth = $pdo->prepare('INSERT INTO user (email,password,first_name,last_name,role)VALUES (?,?,?,?,"member")') ;
        $sth->bindParam(1,$email);
        $sth->bindParam(2,$password);
        $sth->bindParam(3,$firstName);
        $sth->bindParam(4,$lastName);
        $sth->execute();
        return "SUCCES";
    }
    return "INCOMPLETE";
}

function changeProfile():bool
{
    global $pdo;

    $email=$_SESSION['user']->email;
    $firstName=filter_input(INPUT_POST,"firstName",FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $lastName=filter_input(INPUT_POST,"lastName",FILTER_SANITIZE_FULL_SPECIAL_CHARS);

    if (!empty($firstName) && !empty($lastName)){

        $sth = $pdo->prepare('UPDATE `user` SET `first_name`=:f, `last_name`=:l where `email`=:e');


        $sth->bindValue(":f",$firstName);
        $sth->bindValue(":l",$lastName);
        $sth->bindValue(":e",$email);
        $sth->execute();

        $_SESSION['user']->first_name=$firstName;
        $_SESSION['user']->last_name=$lastName;
        return true;
    }else{
        return false;
    }
}