<?php
       require_once('../connect.php'); 
       $sql = "Insert into Product (productId ,productName, isSelf ,productPrice,
       productImage, productDayPublication )
       values(‘SP01’,'Tranh 1','ban','2000000', 'anh.jpg' ,'2022/03/22'),
       (‘SP02’,'Tranh 2','ban','800000','anh2.jpg','2022/03/28'),
       (‘SP03’,'Tranh 3','khong ban','1800000','anh3.jpg','2022/04/23')";
  
       if ($conn->query($sql) === TRUE) {
          echo "New record created successfully";
        } else {
          echo "Error: " . $sql . "<br>" . $conn->error;
        }
        
        $conn->close();

?>