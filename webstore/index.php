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

<div class="container">

        <nav class="navbar background">
            <ul class="nav-list">
                <div class="logo">
                    <img src="https://mythuat24h.com/wp-content/uploads/2019/03/thiet-ke-logo-quan-1.jpg">
                </div>
                <li><a href="">HOME PAGE</a></li>
                <li><a href="">ORDER STATUS</a>
                </li>
                <li><a href="">ORDER HISTORY</a></li>
                <li><a href=""><i class="fa fa-shopping-cart" style="font-size:48px;color:rgb(239, 247, 246)"></i></a></li>
            </ul>
                <hr>
            <div class="rightNav">
                <input type="text" name="search" id="search">
                <a class="search-button" type="submit" href="">
                    <i class="fa fa-search"></i>
                </a>
            </div>
        </nav>
        <hr>
        <form action="" class="P-p">
                <label for="bdaymonth">Select (month and year):</label>
                <input type="month" id="bdaymonth" name="bdaymonth">
                <div>
                <select name="pets" id="pet-select">
                    <option value="">--Money--</option>
                    <option value="dog">0 --> 500000</option>
                    <option value="cat">500000 --> 1000000</option>
                    <option value="hamster">1000000 --> 5000000</option>
                    <option value="parrot">5000000 --> 10000000</option>
                    <option value="spider">10000000 --> 20000000</option>
                    <option value="goldfish">> 25000000</option>
                </select>
                </div>
                <input type="submit" class="P-sm">
            </form>
    </div>

</body>
<script src="/assets/javascript/app.js"></script>
</html>
