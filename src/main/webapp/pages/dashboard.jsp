<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Dashboard - Stock Trading System</title>
</head>
<body>
<h1>Welcome, ${sessionScope.username}!</h1>
<h2>Real-Time Stock Prices</h2>
<table border="1">
  <tr>
    <th>Stock Symbol</th>
    <th>Price</th>
  </tr>
  <c:forEach var="stock" items="${stockPrices}">
    <tr>
      <td>${stock.symbol}</td>
      <td>${stock.price}</td>
    </tr>
  </c:forEach>
</table>

<h2>Your Watchlist</h2>
<table border="1">
  <tr>
    <th>Stock Symbol</th>
    <th>Price</th>
  </tr>
  <c:forEach var="watchlistItem" items="${watchlist}">
    <tr>
      <td>${watchlistItem.symbol}</td>
      <td>${watchlistItem.price}</td>
    </tr>
  </c:forEach>
</table>

<h2>Order History</h2>
<table border="1">
  <tr>
    <th>Order ID</th>
    <th>Stock Symbol</th>
    <th>Quantity</th>
    <th>Action</th>
    <th>Status</th>
  </tr>
  <c:forEach var="order" items="${orderHistory}">
    <tr>
      <td>${order.orderId}</td>
      <td>${order.stockSymbol}</td>
      <td>${order.quantity}</td>
      <td>${order.action}</td>
      <td>${order.status}</td>
    </tr>
  </c:forEach>
</table>

<br>
<a href="trade.jsp">Place a New Order</a>
<br>
<a href="logout">Logout</a>
</body>
</html>