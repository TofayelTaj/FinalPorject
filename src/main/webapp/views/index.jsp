<%@ page import="org.springframework.validation.BindingResult" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>

<%--    <!----Bootstrap CDN-->--%>
<%--    <!-- CSS only -->--%>
<%--    <!-- CSS only -->--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"--%>
<%--          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">--%>
<%--    <!-- JavaScript Bundle with Popper -->--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js">--%>
<%--    </script>--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"--%>
<%--          integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="--%>
<%--          crossorigin="anonymous" />--%>
<%--    <link rel="stylesheet" href="style.css">--%>
<%--    <title>Document</title>--%>
<%--</head>--%>

<%--<body>--%>


<%--<!---navbar Start--->--%>
<%--<nav class="navbar navbar-expand-lg navbar-light bg-warning ">--%>
<%--    <div class="container-fluid  ">--%>
<%--        <a class="navbar-brand " href="#">Buisiness Account Manager</a>--%>
<%--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"--%>
<%--                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--            <span class="navbar-toggler-icon"></span>--%>
<%--        </button>--%>

<%--        <div class="collapse navbar-collapse  " id="navbarSupportedContent">--%>
<%--            <ul class="navbar-nav ml-auto ">--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="/register">Sign Up </a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="/logIn">Log in </a>--%>
<%--                </li>--%>

<%--            </ul>--%>


<%--        </div>--%>

<%--    </div>--%>
<%--</nav>--%>

<%--<!----navbar End-->--%>


<%--<!----Login Form Start-->--%>

<%--<div class="container bg-light shadow-lg p-5 mt-4 ">--%>
<%--    <div class="container">--%>
<%--        <h1 class="title text-center ">Log in </h1>--%>
<%--    </div>--%>




<%--    <div class="col-10 container">--%>

<%--        <%--%>
<%--            if(request.getAttribute("faildMsg") != null){--%>
<%--        %>--%>
<%--        <div class="container alert alert-danger " role="alert">--%>
<%--            Login Faild :( Try Again.--%>
<%--        </div>--%>
<%--        <% } %>--%>



<%--        <form action="login">--%>
<%--            <div class="mb-3 ">--%>
<%--                <label class="form-label">Email address</label>--%>
<%--                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="userEmail" >--%>
<%--                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>--%>
<%--            </div>--%>
<%--            <div class="mb-3 ">--%>
<%--                <label for="exampleInputPassword1" class="form-label">Password</label>--%>
<%--                <input type="password" class="form-control " id="exampleInputPassword1" name="userPassword">--%>
<%--            </div>--%>

<%--            <button type="submit" class="btn btn-primary">Log in</button>--%>
<%--        </form>--%>


<%--    </div>--%>




<%--</div>--%>



<%--<!----Login Form End-->--%>




<%--&lt;%&ndash;sign up section&ndash;%&gt;--%>

<%--&lt;%&ndash;<div>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <h2>Create New Account</h2>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <form action="signup">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <lavel>Enter Email</lavel>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <input type="email" placeholder="your email here" name="userEmail">&ndash;%&gt;--%>

<%--&lt;%&ndash;        <lavel>Enter Name</lavel>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <input type="text" placeholder="Full Name" name="userName">&ndash;%&gt;--%>

<%--&lt;%&ndash;        <lavel>Enter Phone Number</lavel>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <input type="text" placeholder="Phone Number" name="userPhone">&ndash;%&gt;--%>

<%--&lt;%&ndash;        <lavel>password</lavel>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <input type="password" placeholder="Password" name="userPassword">&ndash;%&gt;--%>

<%--&lt;%&ndash;        <input type="submit">&ndash;%&gt;--%>
<%--&lt;%&ndash;    </form>&ndash;%&gt;--%>


<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;sign up section&ndash;%&gt;--%>



<%--</body>--%>
<%--</html>--%>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <title> Log in</title>
    <link rel="shortcut icon" href="logo.png">
</head>

<body>




<!-- navigation bar -->

<div class="row">


    <nav class="navbar navbar-expand-md  navbar-light bg-secondary">
        <div class="container-fluid">
            <img style="width: 70px;" class="navbar-brand" src="logo.png" alt="logo">
            <a class="navbar-brand text-uppercase text-xl-center text-white" href="/logIn">Accountant</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
           <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                    <a style="color: white;" class="btn nav-link btn-primary navbar-brand m-1" href="/register">Sign up</a>
                    <a style="color: white;" class="btn nav-link  btn-primary navbar-brand m-1" href="/logIn">Log In</a>
                </ul>
            </div>
        </div>
    </nav>


</div>





<!-- log in form -->

<div class="container mt-5 pt-5">

    <div class="row">
        <div class=" col-md-5  ">


            <%
                if(request.getAttribute("faildMsg") != null){
            %>
            <div class="container alert alert-danger " role="alert">
                Login Faild :( Try Again.
            </div>
            <% } %>

            <form action="login" class="p-4" style="box-shadow: 6px 6px 10px 10px  rgb(219, 218, 218);">

                <h1 class="title text-center py-4 ">Login </h1>

                <div class="mb-3 ">
                    <span class="material-icons"> email</span>
                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                    <input type="email" class="form-control " id="exampleInputEmail1" name="userEmail">
                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                </div>
                <div class="mb-3">
                    <span class="material-icons">lock </span>
                    <label  class="form-label">Password</label>
                    <input type="password" class="form-control" name="userPassword">
                </div>

                <button type="submit" class="btn btn-primary">Log in</button>
            </form>

        </div>


        <!-- carousel -->

        <div class="offset-md-1 col-md-6  mt-sm-4 mt-lg-0    ">

            <div id="carouselExampleSlidesOnly" class="carousel slide " data-bs-ride="carousel" style="box-shadow: 6px 6px 10px 10px  rgb(219, 218, 218);">
                <div class="carousel-inner ">
                    <div class="carousel-item active">
                        <img src="img 2.jpg" class="d-block w-100 h-100" alt="Image 1">
                    </div>
                    <div class="carousel-item">
                        <img src="img 3.jpg" class="d-block w-100 h-100" alt="image 2">
                    </div>
                    <div class="carousel-item">
                        <img src="img 4.jpg" class="d-block w-100 h-100" alt="image 3">
                    </div>
                </div>
            </div>

        </div>


    </div>


</div>

<!-- Footer -->








<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>