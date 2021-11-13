<%@ page import="com.example.demo.Entitys.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h1>this is Dashboard page </h1>
<form action="logout">
    <input type="submit"  value="Log out">
</form>
<a href="/user/entry">Entry</a>

<h1>Total sale : 15215 </h1>
<br>
<h1>Total Unpaid Sale : 1250</h1>
<br>
<h1>Total Assets : 11511</h1>
<br>
<h1>Total Witdraw : 5000</h1>
<a href="/user/profile">profile</a>

</body>
</html>
