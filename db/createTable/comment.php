<?php
    require_once('../connect.php');
    $sql = "create table comment(
        commentId int AUTO_INCREMENT,
        productId int not null,
        CONSTRAINT fk_product
        FOREIGN KEY (productId )
        REFERENCES product (productId),
        userId int not null,
        commentContent text  not null,
        timeCmt datetime default now()
        )";
    if($conn -> query($sql)=== true){
        echo "Table create successfully";
    }else {
      echo "Error creating table: " . $conn->error;
    }
?>