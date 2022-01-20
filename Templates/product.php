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
    global $product, $name ,$reviews;
    ?>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item"><a href="/categories">Categories</a></li>
            <li class="breadcrumb-item"><a href="/categories/<?= $product->category_id ?>"> <?= $name ?></a></li>
            <li class="breadcrumb-item active" aria-current="page"><?=$product->name ?></li>
        </ol>
    </nav>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <img class="img-fluid center-block" width="200px" src='/img/<?= $product->picture ?>'/>
                <div class="card-body">
                    <h5 class="card-title"><?= $product->name ?></h5>
                    <p class="card-text"><?= $product->description ?></p>
                   <a href="/review/<?=$product->id?>" > <div class button info-btn> voeg review toe </div> </a>
                </div>
            </div>
        </div>
        <table>
            <?php foreach ($reviews as $review) : ?>
                <tr>
                    <td><?= $review->name ?> </td>
                    <td><?= $review->description ?></td>
                    <td><?= $review->stars ?></td>
                    <td><?= $review->date ?></td>
                </tr>
            <?php endforeach;?>
        </table>
</div>
    <?php
    include_once('defaults/footer.php');

    ?>
</div>

</body>
</html>
