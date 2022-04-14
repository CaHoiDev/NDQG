<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/stylesheet/detail.css">
    <title>Document</title>
</head>
<body>
   <div class="container">
        <div class="button-add">
            <button class="add-to-cart">Add to cart </button>
            <hr>
            <button class="heart">Release heart</button>
            <hr>
        </div>
        <hr>
        <div class="row">
            <?php 
            if(!isset($_SESSION['user']) && !isset($_SESSION['admin']))
            echo isset($_SESSION['error']) ? $_SESSION['error'] : '';
            ?>
            <form action="handle.php?action=comment&id=<?=$id ?>" method="post">
                <div class="comment">
                    <input type="text" name="name" id="name" value="name"placehoder="Please enter your name">
                    <hr>
                    <input type="text" name="comment" id="comment" value="comment"placehoder="Please enter your content">
                    <hr>
                    <input type="text" name="date" value="<?php $date = date('Y-m-d');
                    echo $date ?>" hidden>
                    <hr>
                    <button type="text" name="submit" id="submit" value="submit"></button>
                </div>
            </form>
        </div>
               
        <hr>
        <div class="show-comments">
            <input type="text" name="button" id="reply"placehoder="Please enter your content">
            <hr>
        </div>
        <hr>
        <div class="show-love">

        </div>

   </div>
   <script src="./assets/javascript/detail.js"></script>
</body>
</html>