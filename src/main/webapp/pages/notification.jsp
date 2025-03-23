<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Notifications - Stock Trading System</title>
</head>
<body>
<h1>Trade Notifications</h1>
<table border="1">
  <tr>
    <th>Notification ID</th>
    <th>Message</th>
    <th>Timestamp</th>
  </tr>
  <c:forEach var="notification" items="${notifications}">
    <tr>
      <td>${notification.notificationId}</td>
      <td>${notification.message}</td>
      <td>${notification.timestamp}</td>
    </tr>
  </c:forEach>
</table>
<br>
<a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>