<!doctype html>
<html lang="">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/assets/stylesheet/app.css">
    <title>Document</title>
</head>
<body>

<form action="">
    <label for="bdaymonth">Select (month and year):</label>
    <input type="month" id="bdaymonth" name="bdaymonth">
    <div>
        <input type="range" id="money" name="money" min="500000" max="200000000">
        <label for="volume">Money</label>
    </div>
    <input type="submit">
</form>
<table>
    <tr>
        <th>Stt</th>
        <th>Name</th>
        <th>Image</th>
        <th>Price</th>
        <th>OderDay</th>
        <th>Status</th>
    </tr>
    <tr>
        <td>1</td>
        <td>Hoa</td>
        <td><img src="data:image/jpeg;base64,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" alt=""></td>
        <td>10000</td>
        <td>19/03/2022</td>
        <td>
            <select>
            <option>To package</option>
            <option>In transit</option>
            <option>Delivery</option>
            </select>
        </td>
    </tr>
</table>
<button type="button">Go Back </button>

</body>
<script src="/assets/javascript/app.js"></script>
</html>
