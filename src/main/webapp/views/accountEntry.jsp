<%@ page import="com.example.demo.Entitys.User" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%=request.getSession().getAttribute("currentUser")%></title>
</head>
<body>
<h1>this is Profile page </h1>
<form action="logout">
    <input type="submit">
</form>

<h2>this is account entry page  </h2>

<br>
<h3>Enter your all account information :)</h3>

<%--...................Assets Input.............--%>
<form action="">
    <level>Enter Assets</level>
    <input type="number" name="assets" placeholder="Enter Assets">
    <input type="submit">
</form>

<%--...................Sale Input.............--%>
<form action="/user/sale", method="post">
    <level>Enter Sale</level>
    <input type="number" name="sale" placeholder="Enter Sale">
    <input type="submit">
</form>

<%--...................Unpaid Sale Input.............--%>
<form action="">
    <level>Enter Unpaid Sale</level>
    <input type="number" name="unpaidSale" placeholder="Enter Unpaid Sale">
    <input type="submit">
</form>

<%--...................withdraw  Input.............--%>
<form action="">
    <level>Enter Withdraw</level>
    <input type="number" name="withdraw" placeholder="Enter Withdraw">
    <input type="submit">
</form>

</body>
</html>
