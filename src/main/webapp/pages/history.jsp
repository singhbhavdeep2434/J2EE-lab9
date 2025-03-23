<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Order History - Stock Trading System</title>
</head>
<body>
<h1>Order History</h1>
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
<a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>