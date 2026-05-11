<!DOCTYPE html>
<html>
<head>
    <title>Coupon Validation System</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">

    <h1>Coupon Validation System</h1>

    <form action="validate" method="post">

        <input type="number"
               name="price"
               placeholder="Enter Product Price"
               required>

        <input type="text"
               name="code"
               placeholder="Enter Coupon Code"
               required>

        <button type="submit">Apply Coupon</button>

    </form>

</div>

</body>
</html>