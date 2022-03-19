<!doctype html>
<html lang="">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/assets/stylesheet/app.css">
    <title>purchase</title>
</head>
<body>  
<table>
  <thead>
    <tr>
      <th><input type="checkbox" id="data1" name="data1" value="">Sản phẩm</th>
      <th>Hình ảnh</th>
      <th>Tên sản phẩm</th>
      <th>Đơn giá</th>
      <th>Số lượng</th>
      <th>Số tiền</th>
      <th>Thao tác</th>
    </tr>
  </thead>     
  <tbody>
    <tr>
      <th><input type="checkbox" id="data2" name="data2" value="Tên shop"></th>
      <th><img src="./assets/images/Iphone11.jpg" alt="Ảnh Iphone" ></th>
      <th>Iphone</th>
      <th>
      <input type="text" name="quanlity">  
      </th>
      <th><input class="minus is-form" type="button" value="-">
        <input aria-label="quantity" class="input-qty" max="Số tối đa" min="Số tối thiểu" name="" type="number" value="">
        <input class="plus is-form" type="button" value="+"></th>
      <th><p class="price">$19.99</p></th>
      <th><input type="button" value="Delete" id="clear"> </th>
    </tr>
  </tbody>
  
</table>
<div>
    <p><button>go back</button></p>
    <p><button>buy now</button></p>
  </div>
</body>
</html>
