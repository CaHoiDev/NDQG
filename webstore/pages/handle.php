<?php
session_start();
include_once 'function.php';
$user = new Xuly();

$action = isset($_GET['action']) ? $_GET['action'] : '';

switch($action):
    case 'comment':
        if(isset($_POST[''])):
        //comment($content,$productId, $userId,$date)
        $content =$_POST['commnet'];
        $content =$_POST['id'];
        $content =$_POST['date'];
            
            if(isset($_SESSION['user']))
            {
                $user->comment($content, $productId, $_SESSION['user'], $date);
                header('location: detail.php?id'.$productId.'');
            }  
            else{
                $_SESSION['error'] = 'đăng nhập để bình luận';
                header('location: detail.php?id'.$productId.'');
            }      
        endif;
        break;
    

endswitch;
?>

