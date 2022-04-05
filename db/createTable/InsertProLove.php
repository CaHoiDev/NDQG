<?php 
    require_once('../connect.php');
    $sql="Insert Into ProductLove( ‘productId’, ‘userId’)
    VALUES
    (‘SP01’, ‘US01’),
    (‘SP02’, ‘US02’),
    (‘SP03’, ‘US03’)
    )";
    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
      } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
      }
      
      $conn->close();

?>
