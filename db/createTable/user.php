<?php
    require_once('../connect.php');
    $sql = "CREATE TABLE `User`(
       userId  int auto_increment PRIMARY KEY,
        userName text not null,
        userGender enum('male', 'female','other'),
        userPhone varchar(12),
        userEmail varchar(50)
        )";
    $sql = "INSERT INTO  `Address` (userId, city, district, ward, detail)
            VALUES ('1','Nguyen Van A','male','0395915608','anguyen@gmail.com'),
                    ('2','Nguyen Thi B','female','0395961408','bnguyen@gmail.com')";  

    if($conn -> query($sql)=== true){
        echo "Table create successfully";
    }else {
      echo "Error creating table: " . $conn->error;
    }
?>