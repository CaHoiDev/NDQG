<?php
    require_once('../connect.php');
$sql = "Insert into reply(replyId, commentId, userId,replyContent,timeReply )
values(1,1,1,'Cảm ơn quý khách'),
(2,2,2,'Cảm ơn quý khách  nha');";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
?>