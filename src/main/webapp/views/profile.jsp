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

<h2>User profile page </h2>



</body>
</html>
