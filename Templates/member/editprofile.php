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
                <input type="email" class="form-control" name="email" id="inputEmail" readonly="readonly" value="<?php if(isset($_SESSION['user']->email)){echo $_SESSION['user']->email;}else{echo "";} ?>">
            </div>
            <div class="col-md-6">
            </div>
            <div class="col-md-6">
                <label for="inputFirstName" class="form-label">Voornaam</label>
                <input type="text" name="firstName" class="form-control" id="inputFirstName" value="<?php if(isset($_SESSION['user']->first_name)){echo $_SESSION['user']->first_name;}else{echo "";} ?>"
            </div>
            <div class="col-md-6">
                <label for="inputLastName" class="form-label">Achternaam</label>
                <input type="text"  name="lastName" class="form-control" id="inputLastName" value=" <?=$_SESSION['user']->last_name?>" name="lastName" id="achternaam">
            </div>

            <div class="col-12">
                <button type="submit" name="profile" class="btn btn-primary">Aanpassen profiel</button>
            </div>

        <hr>
        <?php
        include_once ('defaults/footer.php');
        ?>
    </div>
</body>
</html>