<?php
     require_once('../connect.php');
     $sql = "Create table Product(
        productId INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        productName text not null,
        isSelf boolean not null,
        productPrice decimal(10,2),
        productImage text not null,
        productDayPublication date not null
        )";
     if($conn -> query($sql)=== true){
         echo "Table create successfully";
     }else {
       echo "Error creating table: " . $conn->error;
     }

     $sql ="ALTER TABLE ProductLove CONSTRAINT fk_ProductLove FOREIGN KEY (productId)
     REFERENCES Product (productId)";


?>