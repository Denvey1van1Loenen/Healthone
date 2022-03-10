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
    global $message;
    ?>
    <?php if (!empty($message)) : ?>
        <div class= "alert alert-danger "role="alert">
            <?=$message?>
        </div>
    <?php endif;?>
    <h4> sportcenter HealthOne</h4>
    <div class="container">

        <form class="row g-3" method="post">
            <div class="col-md-6">
                <label for="input-Email" class="form-label">Email</label>
                <input type="email" class="form-control"  name="email" id="input-Email">
            </div>
            <div class="col-md-6">
                <label for="input-Password" class="form-label">Password</label>
                <input type="password" class="form-control" name="password" id="input-Password">
            </div>
            <div class="col-md-6">
                <label for="naam" class="form-label">Voornaam</label>
                <input type="text" class="form-control" name="firstName" id="naam">
            </div>
            <div class="col-md-6">
                <label for="achternaam" class="form-label">Achternaam</label>
                <input type="text" class="form-control" name="lastName" id="achternaam">
            </div>

            <div class="col-12">
                <button type="submit" name="register" class="btn btn-primary">Sign in</button>
            </div>
        </form>

    </div>
    <hr>
    <?php
    include_once ('defaults/footer.php');
    ?>
</div>
</body>
</html>

