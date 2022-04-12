<!doctype html>
<html lang="">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
   <link rel="stylesheet" href="../assets/stylesheet/app.css">
    <title>WEBSTORE</title>
</head>
<body>
<header>
<nav class="navbar">
            <ul class="nav-list">
                
                <li><a href="">HOME PAGE</a></li>
                <li><a href="./pages/order.php">ORDER STATUS</a>
                </li>
                <li><a href="./pages/order-history.php">ORDER HISTORY</a></li>
                <li><a href="./pages/abc.php">NL &#8214; EN</a></li>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn"> <i class="fa fa-search"></i></a>
                    <div class="dropdown-content">
                    <a href="#">
                    <form action="">
                        <input type="text" placeholder="Search.." name="search" class="search">
                        <button type="submit" class="search"><i class="fa fa-search"></i></button>
                    </form>
                    </a>
                    <a href="#">
                        <form action="" class="P-date">
                            <label for="bdaymonth">Select (month and year):</label>
                            <input type="month" id="bdaymonth" name="bdaymonth">
                            <div>
                            <select name="pets" id="P-money">
                                <option value="">--Money--</option>
                                <option value="dog">0 --> 500000</option>
                                <option value="cat">500000 --> 1000000</option>
                                <option value="hamster">1000000 --> 5000000</option>
                                <option value="parrot">5000000 --> 10000000</option>
                                <option value="spider">10000000 --> 20000000</option>
                                <option value="goldfish"> > 25000000</option>
                            </select>
                            </div>
                        <input type="submit" class="P-sm">
                     </form>
                    </a>                    
                </div>
            </li>
            <li><a href="./pages/abc.php"><i class="fa fa-shopping-cart" style="font-size:24px"></i></a></li>
            </ul>
                <hr>
            <div class="rightNav">
                <div class="logo">
                    <p id="text">I love you <br>MUSEUM</p>
                </div>
            </div>
        </nav>  
</header>
<hr>
<div class="container">
            <div class="show-product">

            </div>
    </div>
<footer></footer>
</body>
<script src="/assets/javascript/app.js"></script>
</html>
