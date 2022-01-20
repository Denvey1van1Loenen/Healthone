<!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');
?>
<body>
<div class="container">
<?php
include_once ('defaults/header.php');
include_once ('defaults/menu.php');
include_once ('defaults/pictures.php');
?>
    <h2>hier kan u sportaparaten toevoegen</h2>
    <form method="post" action="">
        <label>naam</label>
        <input type="text" name="name"><br>

        <label>category_id</label>
        <input type="text" name="category"><br>

        <label>description</label>
        <input type="text" name="description"><br>

    </form>