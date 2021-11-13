<%@ page import="org.springframework.validation.BindingResult" %>
<%@ page import="org.springframework.ui.Model" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>




<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!----Bootstrap CDN-->
<!-- CSS only -->
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js">
</script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
      integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
      crossorigin="anonymous" />
<link rel="stylesheet" href="style.css">
<title>Document</title>
</head>

<body>


<!---navbar Start--->
<nav class="navbar navbar-expand-lg navbar-light bg-warning ">
    <div class="container-fluid  ">
        <a class="navbar-brand " href="#">Buisiness Account Manager</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse container " id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto ">
                <li class="nav-item">
                    <a class="nav-link " href="/register">Sign Up </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logIn">Log in </a>
                </li>

            </ul>


        </div>

    </div>
</nav>

<!----navbar End-->






<!----Sign up Form Start-->

<div class="container bg-light shadow-lg p-5 mt-4 ">
    <div class="container">
    <h1 class="title text-center  ">Crate New Account </h1>
<%--    <div class="container alert alert-danger " role="alert">--%>
<%--        Login Faild--%>
<%--    </div>--%>
</div>


  <%
        if(request.getAttribute("regSuccess") != null){
  %>
    <script> window.alert(<%=request.getAttribute("regSuccess")%>) </script>
    <%}%>




    <form action="signup">
        <div class="mb-3 ">
            <label class="form-label">Full Name </label>
            <input type="text" class="form-control" placeholder="Enter Your Full Name" name="userName">
        </div>

        <div class="mb-3 ">
            <label class="form-label">Email </label>
            <input type="email" class="form-control" placeholder="Enter Your Email" name="userEmail">
        </div>

        <div class="mb-3 ">
            <label class="form-label">Phone </label>
            <input type="phone" class="form-control" placeholder="Enter Your Phone Number" name="userPhone">
        </div>

        <div class="mb-3 ">
            <label class="form-label">Password </label>
            <input type="password" class="form-control" placeholder="Enter Your Password" name="userPassword">
        </div>



        <button type="submit" class="btn btn-primary">Sign Up</button>
    </form>



</div>

<!----sign Up Form End-->


</body>
</html>
