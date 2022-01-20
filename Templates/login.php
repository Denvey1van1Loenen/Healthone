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
            <?php if (!empty($message)) : ?>
                <div class= "alert alert-danger "role="alert">
                    <?=$message?>
                </div>
            <?php endif;?>
            <h4> sportcenter HealthOne</h4>
            <div class="container">

    <form method="POST">
        <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input type="text" class="form-control" name="email" id="email">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">password</label>
            <input type="password" class="form-control" name="password" id="password">
        </div>

        <button type="submit" name="login" class="btn btn-primary">Submit</button>
    </form>

</div>
            <hr>
            <?php
            include_once ('defaults/footer.php');
            ?>
        </div>
    </body>
</html>
