<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href=".../assets/stylesheet/app.css">
    <title>product_detail</title>
</head>
<body>
   <div class="pro-detail">
        <div id="pro-detail_flex" >
            <div>
                <img id="img1" src= "https://bantranh.com/wp-content/uploads/2022/03/22A89207-E3AA-408B-8769-D37543D00F12-800x956.jpeg">
            </div>

            <div class="add_cart">
                <h3>Cẩm tú cầu</h3>
                <b>3.000.000 đ</b>
                <p>Chất liệu Acrylic</p>
                <p>Kích thước</p>
                
                <button type="submit" name="add_to_cart" id="submit" value="" style="width: 200px; background-color: red">Thêm vào giỏ hàng</button>
                <p>Mã:01</p>
                <p>Số lượt tim 122</p>
                <p><i class="fa-solid fa-heart">Tym</i></p>
                
            </div>
            <div id="payment_methods">
                <h3>Đặt hàng và thanh toán</h3>
                <div id="payment">
                    <p><img id="img2" src ="https://bantranh.com/wp-content/uploads/2021/06/dt1.png"></p>
                    <p>Đặt hàng trực tuyến trên website</p>
                </div>
                
                <div  id="payment">
                    <p><img  id="img2"  src ="https://bantranh.com/wp-content/uploads/2021/06/dt2.png"></p>
                    <p>Đặt hàng qua ĐT Zalo: 076349973</p>
                </div>
                
                <div  id="payment">
                    <p><img   id="img2" src ="https://bantranh.com/wp-content/uploads/2021/06/dt3.png"></p>
                    <p>Thanh toán tiền mặt trực<br> tiếp hoặc chuyển khoản</p>
                </div>

            </div>
        </div>
        <div id="describe">
            <h2>Đánh giá</h2>
            <div id="starReview">
                <h3>Đánh giá của bạn*</h3>
                <div id="stars">
                    <p><i class="fa-solid fa-star-sharp"></i>*</p>
                    <p><i class="fa-solid fa-star-sharp"></i>**</p>
                    <p>***</p>
                    <p>****</p>
                    <p>*****</p>
                </div>               

            </div>
            <div id="comment">
                <h3>Nhận xét của bạn*</h3>
                <textarea id="comment1" name ="comment" cols="50" rows="8" ></textarea>
                <div id="flexText">
                    <div>
                        <p>Tên*</p>
                        <input type="text" name="userName" id="userComment">
                    </div>
                    <div>
                        <p>Email*</p>
                        <input type="text" name="Email" id="emailComment">
                    </div>
                </div>
            </div>
            <br>
            <button type="submit" id="submit" style="width: 110px; background-color: red">Gửi đi</button>
        </div>
        

        <div class="show-comments">
        </div>


        <div class="show-love">
        </div>
    </div>

   <script src="./assets/javascript/product_detail.js"></script>
</body>

</html>