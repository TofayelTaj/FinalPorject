<%@ page import="org.springframework.validation.BindingResult" %>
<%@ page import="org.springframework.ui.Model" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">



    <title>Sign Up</title>
    <link rel="shortcut icon" href="logo.png">
</head>


<body>


<!-- navigation bar -->

<div class="row">

    <nav class="navbar navbar-expand-md  navbar-light bg-secondary">
        <div class="container-fluid">
            <img style="width: 70px;" class="navbar-brand" src="logo.png" alt="logo" href="/logIn">
            <a class="navbar-brand text-uppercase text-xl-center text-white" href="/logIn">Accountant</a>
             <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <a style="color: rgb(255, 255, 255);" class="btn nav-link  btn-primary  navbar-brand m-1" href="/register">Sign up</a>
                <a style="color: rgb(255, 255, 255);" class="btn nav-link btn-primary navbar-brand m-1" href="/logIn">Log In</a>

            </ul>


             </div>
        </div>
    </nav>


</div>


<!-- sign up form -->

<div class="container mt-5 pt-5">

    <div class="row">
        <div class="col-md-5 mb-5">

            <div class="container alert ${errorsMsg} " role="alert">
                ${errors}
            </div>


            <form action="signup" class="px-4 pb-4 mt-0" style="box-shadow: 6px 6px 10px 10px  rgb(219, 218, 218);">

                <h1 class="title text-uppercase text-center py-4 ">Sign Up </h1>

                <div class="mb-3 ">
                    <span class="material-icons">person</span>
                    <label  class="form-label">   Full Name</label>
                    <input type="text" class="form-control "  name="userName" required>
                </div>


                <div class="mb-3 ">
                    <span class="material-icons"> email</span>
                    <label  class="form-label">Email address</label>
                    <input type="email" class="form-control " name="userEmail" required>
                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                </div>



                <div class="mb-3 ">
                    <span class="material-icons">phone </span>
                    <label  class="form-label">  User Phone Numer</label>
                    <input type="number" class="form-control "  name="userPhone" required>
                </div>



                <div class="mb-3">
                    <span class="material-icons">lock </span>
                    <label  class="form-label">Password</label>
                    <input type="password" class="form-control" name="userPassword" required>
                </div>




                <button type="submit" class="btn btn-primary">Sign Up</button>
            </form>

        </div>


        <!-- carousel -->

        <div class="offset-md-1 col-md-6 mt-md-4 mt-lg-0">

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


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>

