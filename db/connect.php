<?php
$host = "localhost";
$user = "root";
$password = "";
$database = "";

   // Create connection
    $conn= mysqli_connect($host,$user,$password,$database);
    mysqli_set_charset($conn,'UTF8');

    // Check connection
    if(!$conn){
        die("Connection failed: ".mysqli_connect_error());
    }else echo "Connected successfully";
?>