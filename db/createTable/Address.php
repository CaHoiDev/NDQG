<?php
    require_once('../connect.php');
    $sql = "CREATE TABLE `Address`(
        userId int unique,
        city varchar(20) not null,
        district varchar(20) not null,
        ward varchar(20) not null,
        detail varchar(50)git 
        )";

    $sql="ALTER TABLE `Address`
            ADD CONSTRAINT fk_Address_userId
            FOREIGN KEY (userId)
            REFERENCES `User` (userId)";

    $sql = "INSERT INTO  `Address` (userId, city, district, ward, detail)
        VALUES ('1','Da Nang','Son Tra','Phuoc My','abc'),
               ('2','Da Nang','Son Tra','An Hai Dong','abc')";  
               

    if($conn -> query($sql)=== true){
        echo "Table create successfully";
    }else {
      echo "Error creating table: " . $conn->error;
    }
?>