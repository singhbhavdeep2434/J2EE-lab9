<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Trade - Stock Trading System</title>
</head>
<body>
<h1>Place a Trade Order</h1>
<form action="placeOrder" method="post">
    <label for="stockSymbol">Stock Symbol:</label>
    <input type="text" id="stockSymbol" name="stockSymbol" required><br><br>

    <label for="quantity">Quantity:</label>
    <input type="number" id="quantity" name="quantity" required><br><br>

    <label for="action">Action:</label>
    <select id="action" name="action" required>
        <option value="BUY">Buy</option>
        <option value="SELL">Sell</option>
    </select><br><br>

    <input type="submit" value="Place Order">
</form>
<br>
<a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>