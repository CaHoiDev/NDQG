<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comfirm Infomation</title>
</head>
    <body>
        <article class="comfirm">

            <!-- Nhập thông tin người mua -->
            <div class="cusBilling">
                <div class="title">
                    <h4>Billing Info</h4>
                </div>
                <div class="info">
                    <label for="name">Full Name</label>
                    <input id="name" type="text" placeholder="Full Name">
                </div>
                <div class="info">
                    <label for="address">Billing Address</label>
                    <input id="address" type="text" placeholder="Billing Address">
                </div>
                <div class="info">
                    <label for="phone">Phone number</label>
                    <input id="phone" type="text" placeholder="+(84) ">
                </div>
            </div>
            <br>

            <!-- Chọn loại phương thức thanh toán -->
            <div class="paymentTypes">
                <label for="cars">Choose payment:</label>
                <select id="card-types">
                    <option value="afterArrival">Payment after arrival of goods</option>
                    <option value="card">Payment by card</option>
                </select>
            </div>

            <!-- Model thanh toán bằng card -->
            <div class="paymentCard">
                <div class="title">
                    <h4>Credit Card Info</h4>
                </div>
                <label for="type-cars">Choose card type:</label>
                <select id="card">
                    <option value="vcb">VCB</option>
                    <option value="others">Others</option>
                </select>
                <div class="field full">
                    <label for="name">Cardholder Name</label>
                    <input id="name" type="text" placeholder="Full Name">
                </div>
                <div class="field full">
                    <label for="address">Card Number</label>
                    <input id="address" type="text" placeholder="">
                </div>
            </div>
            <div class="backOrProceed">
                <div class="flex-end">
                    <button><a href="./purchase.php" target="_blank" rel="noopener noreferrer"> Back </a></button>
                    <button><a href="http://" target="_blank" rel="noopener noreferrer"></a> Proceed</button>
                </div>
            </div>
        </article>
    </body>
</html>