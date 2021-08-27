<%@ page import="com.example.demo.Entitys.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%=request.getSession().getAttribute("CurrentUser")%></title>
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

<%--...................Assets Input.............--%>
<form action="">
    <level>Enter Assets</level>
    <input type="number" name="assets" placeholder="Enter Assets">
    <input type="submit">
</form>

<%--...................Assets Input.............--%>
<form action="">
    <level>Enter Assets</level>
    <input type="number" name="assets" placeholder="Enter Assets">
    <input type="submit">
</form>


</body>
</html>
