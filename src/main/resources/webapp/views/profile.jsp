<%@ page import="com.example.demo.Entitys.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">



    <title>Profile</title>
    <link rel="shortcut icon" href="/logo.png">
</head>



<body>


<%
    User user = (User) session.getAttribute("currentUser");
%>


<!-- navigation bar -->

<div class="row">


    <nav class="navbar navbar-expand-md  navbar-light bg-secondary">
        <div class="container-fluid">

            <img style="width: 70px;" class="navbar-brand" src="logo.png" alt="logo">

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">



                <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                    <li>
                        <form action="/user/home">
                            <input hidden class="form-control" type="date" name="date">
                            <input hidden class="form-control" type="month" name="month">
                            <button href="/user/home" class="navbar-brand text-uppercase btn text-white " type="submit"> Dashboard </button>
                        </form>
                    </li>
                    <a  class="navbar-brand text-uppercase text-xl-center text-white " href="/user/entry">Acc. Entry</a>
                    <a style="color: tomato" class="navbar-brand text-uppercase text-xl-center " href="/user/profile">profile</a>
<%--                    <a class="navbar-brand text-uppercase text-xl-center text-white" href="">About Us</a>--%>

                </ul>

                <form action="logout">
                    <input class="btn btn-danger" type="submit" value="Log out">
                </form>
            </div>
        </div>
    </nav>
</div>



<!-- dashboard containt -->

<div class="container mt-5  ">


    <div class="card p-3 py-4">
        <div class="text-center"> <img src="logo.png" width="200" > </div>

        <div class="text-center mt-2">
            <h1 class="text-uppercase">Profile</h1>
        </div>
        <div class="  mt-3 bg-light shadow-lg ">

            <div class="shadow-lg p-3 my-3 mx-4 ">
                <form class="mx-3" action="">
                    <label class="form-label">User Name : </label>
                    <input class="form-control" type="text" value=" <%=user.getUserName()%>" readonly>
                </form>
            </div>

            <div class="shadow-lg p-3 my-3 mx-4 ">
                <form class="mx-3" action="">
                    <label class="form-label">User ID: </label>
                    <input class="form-control" type="text" value=" <%=user.getUserId()%>" readonly>
                </form>
            </div>


            <div class="shadow-lg p-3 my-3 mx-4 ">
                <form class="mx-3" action="">
                    <label class="form-label">User Email : </label>
                    <input class="form-control" type="text" value=" <%=user.getUserEmail()%>" readonly>
                </form>
            </div>


            <div class="shadow-lg p-3 my-3 mx-4 ">
                <form class="mx-3" action="">
                    <label class="form-label">User Phone : </label>
                    <input class="form-control" type="text" value=" <%=user.getUserPhone()%>" readonly>
                </form>
            </div>


        </div>
    </div>

</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>
