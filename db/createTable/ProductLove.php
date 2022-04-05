<?php 
    require_once('../connect.php');
    $sql ="create table ProductLove( 
        productId varchar(5),
        userId varchar(10)
        )";

    if($conn -> query($sql)=== true){
         echo "Table create successfully";
     }else {
       echo "Error creating table: " . $conn->error;
     }
     $sql="ALTER TABLE ProductLove CONSTRAINT fk_ProductLove FOREIGN KEY (userId)
     REFERENCES User (userId)";
     
        
?>
