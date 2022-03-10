

<!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');
?>

<body>

<div class="container">
    <?php
    include_once('defaults/header.php');
    include_once('defaults/menu.php');
    include_once('defaults/pictures.php');
    ?>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/home">sportcenter</a></li>
            <li class="breadcrumb-item"><a href="/categories">Categories</a></li>
        </ol>
    </nav>

</div>
<div class="container">
<div class="row">
    <div class="col-md-12">
        <div class="card-body text-center">
            <?php echo $product->name;?>
            <h5 id="Product-card-text" class="card-title"><?= $product->name ?></h5>
            <img class="img-fluid center-block" width="300px" src='/img/<?= $product->picture ?>'/>
            <div class="card-body">
                <h5 id="Product-card-text" class="card-text"><?= $product->description ?></h5>

                    <div class="row gy-3">
                        <form method="post">
                            <div class="mb-3">
                                <label for="naam" class="col-form-label">
                                    Naam:
                                </label>
                                <input type="text" name="name" class="form-control" id="naam">
                            </div>
                            <div class="mb-3">
                                <label for="bericht" class="col-form-label">
                                    review:
                                </label>
                                <input type="text" name="description" class="form-control" id="review">
                            </div>
                            <div class="mb-3">
                                <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Waardering:</label>
                                <select name="stars">
                                <option value="1"> 1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                </select>
                            </div>

                            <div class="modal-footer">
                                <button type="submit" name="verzenden" class="btn btn-secondary">Save Change</button>
                            </div>
                        </form>
                    </div>
    <hr>
    <?php
    include_once('defaults/footer.php');

    ?>

</body>
</html>
</html>