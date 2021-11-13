<%@ page import="org.springframework.validation.BindingResult" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse  " id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto ">
                <li class="nav-item">
                    <a class="nav-link" href="/register">Sign Up </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logIn">Log in </a>
                </li>

            </ul>


        </div>

    </div>
</nav>

<!----navbar End-->


<!----Login Form Start-->

<div class="container bg-light shadow-lg p-5 mt-4 ">
    <div class="container">
        <h1 class="title text-center ">Log in </h1>
    </div>




    <div class="col-10 container">

        <%
            if(request.getAttribute("faildMsg") != null){
        %>
        <div class="container alert alert-danger " role="alert">
            Login Faild :( Try Again.
        </div>
        <% } %>



        <form action="login">
            <div class="mb-3 ">
                <label class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="userEmail" >
                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div>
            <div class="mb-3 ">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <input type="password" class="form-control " id="exampleInputPassword1" name="userPassword">
            </div>

            <button type="submit" class="btn btn-primary">Log in</button>
        </form>


    </div>




</div>



<!----Login Form End-->














<%--sign up section--%>

<%--<div>--%>
<%--    <h2>Create New Account</h2>--%>
<%--    <form action="signup">--%>
<%--        <lavel>Enter Email</lavel>--%>
<%--        <input type="email" placeholder="your email here" name="userEmail">--%>

<%--        <lavel>Enter Name</lavel>--%>
<%--        <input type="text" placeholder="Full Name" name="userName">--%>

<%--        <lavel>Enter Phone Number</lavel>--%>
<%--        <input type="text" placeholder="Phone Number" name="userPhone">--%>

<%--        <lavel>password</lavel>--%>
<%--        <input type="password" placeholder="Password" name="userPassword">--%>

<%--        <input type="submit">--%>
<%--    </form>--%>


<%--</div>--%>
<%--sign up section--%>



</body>
</html>
