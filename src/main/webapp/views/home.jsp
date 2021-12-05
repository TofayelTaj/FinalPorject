<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.Entitys.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <title>Home</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<h1>this is Dashboard page </h1>&ndash;%&gt;--%>
<%--&lt;%&ndash;<form action="logout">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="submit"  value="Log out">&ndash;%&gt;--%>
<%--&lt;%&ndash;</form>&ndash;%&gt;--%>
<%--&lt;%&ndash;<a href="/user/entry">Entry</a>&ndash;%&gt;--%>

<%--&lt;%&ndash;&lt;%&ndash;%>--%>

<%--&lt;%&ndash;    User user = (User) session.getAttribute("currentUser");&ndash;%&gt;--%>
<%--&lt;%&ndash;%>&ndash;%&gt;--%>

<%--&lt;%&ndash;<h1>Total sale : ${totalSale} </h1>&ndash;%&gt;--%>
<%--&lt;%&ndash;<br>&ndash;%&gt;--%>
<%--&lt;%&ndash;<h1>Total Unpaid Sale :  ${totalUnpaidSale} </h1>&ndash;%&gt;--%>
<%--&lt;%&ndash;<br>&ndash;%&gt;--%>
<%--&lt;%&ndash;<h1>Total Assets : ${totalAssets} </h1>&ndash;%&gt;--%>
<%--&lt;%&ndash;<br>&ndash;%&gt;--%>
<%--&lt;%&ndash;<h1>Total Witdraw :  ${totalWithdraw} </h1>&ndash;%&gt;--%>
<%--&lt;%&ndash;<a href="/user/profile">profile</a>&ndash;%&gt;--%>

<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>











<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>

<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>

<%--    <!----Bootstrap CDN-->--%>
<%--    <!-- CSS only -->--%>
<%--    <!-- CSS only -->--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">--%>
<%--    <!-- JavaScript Bundle with Popper -->--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js">--%>
<%--    </script>--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />--%>
<%--    <link rel="stylesheet" href="style.css">--%>
<%--    <title>Home</title>--%>
<%--</head>--%>

<%--<body>--%>


<%--<!---navbar Start--->--%>
<%--<nav class="navbar navbar-expand-lg navbar-light bg-warning ">--%>
<%--    <div class="container-fluid  ">--%>
<%--        <a class="navbar-brand " href="#">Buisiness Name</a>--%>
<%--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--            <span class="navbar-toggler-icon"></span>--%>
<%--        </button>--%>

<%--        <div class="collapse navbar-collapse  " id="navbarSupportedContent">--%>
<%--            <ul class="navbar-nav ml-auto ">--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link " href="profile.html">User Name </a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="login.html">Log out </a>--%>
<%--                </li>--%>

<%--            </ul>--%>


<%--        </div>--%>

<%--    </div>--%>
<%--</nav>--%>

<%--<!----navbar End-->--%>


<%--<!---Content-->--%>

<%--<div class=" row ">--%>

<%--    <!--side bar Start-->--%>
<%--    <div class="col-3 sidebar-css bg-warning">--%>

<%--        <ul class="list-group list-group-flush mt-3  ">--%>

<%--            <a href="/user/home" class="list-group-item m-1 "> Home </a>--%>
<%--            <a href="#" class="list-group-item m-1">Dashboard</a>--%>
<%--            <a href="/user/entry" class="list-group-item m-1">Accountant Input</a>--%>
<%--            <a href="#" class="list-group-item m-1">Setting's</a>--%>
<%--            <a href="/loguot" class="list-group-item m-1">Log Out</a>--%>
<%--            <form action="logout">--%>
<%--                <input class="btn" type="submit"  value="Log out">--%>
<%--            </form>--%>

<%--        </ul>--%>
<%--    </div>--%>

<%--    <!--side bar End-->--%>

<%--    <!---Content Start-->--%>

<%--    <div class="col-9 offset-4 mt-5">--%>

<%--        <div class="row ">--%>

<%--            <div class="col-4  ">--%>

<%--                <div class="card text-center bg-warning  " style="width: 18rem;">--%>
<%--                    <div class="card-body">--%>
<%--                        <h5 class="card-title">Total Assets</h5>--%>
<%--                        <h1>${totalAssets}</h1>--%>

<%--                    </div>--%>
<%--                </div>--%>


<%--            </div>--%>

<%--            <div class="col-4 ">--%>

<%--                <div class="card text-center bg-warning" style="width: 18rem;">--%>
<%--                    <div class="card-body">--%>
<%--                        <h5 class="card-title">Total Sale</h5>--%>
<%--                        <h1>${totalSale}</h1>--%>

<%--                    </div>--%>
<%--                </div>--%>


<%--            </div>--%>

<%--        </div>--%>


<%--        <div class="row  mt-5 ">--%>
<%--            <div class="col-4  ">--%>


<%--                <div class="card text-center bg-warning" style="width: 18rem;">--%>
<%--                    <div class="card-body">--%>
<%--                        <h5 class="card-title">Total Unpaid Sale</h5>--%>
<%--                        <h1>${totalUnpaidSale}</h1>--%>
<%--                    </div>--%>
<%--                </div>--%>


<%--            </div>--%>

<%--            <div class="col-4  ">--%>


<%--                <div class="card text-center bg-warning" style="width: 18rem;">--%>
<%--                    <div class="card-body">--%>
<%--                        <h5 class="card-title">Total Withdraw</h5>--%>
<%--                        <h1>${totalWithdraw}</h1>--%>

<%--                    </div>--%>
<%--                </div>--%>


<%--            </div>--%>


<%--        </div>--%>



<%--    </div>--%>



<%--    <!---Content End-->--%>

<%--</div>--%>

<%--<!---Content-->--%>
<%--<form action="/user/home">--%>
<%--    <input class="form-control" type="date" name="date">--%>
<%--    <input type="submit">--%>
<%--</form>--%>


<%--<br><br><br>--%>


<%--<%--%>

<%--List<SaleEntity> seList = (List<SaleEntity>) request.getAttribute("seList");--%>
<%--List<UnpaidSaleEntity> useList = (List<UnpaidSaleEntity>) request.getAttribute("useList");--%>
<%--List<AssetsEntity> aeList = (List<AssetsEntity>) request.getAttribute("aeList");--%>
<%--List<WithdrawEntity> weList = (List<WithdrawEntity>) request.getAttribute("weList");--%>

<%--%>--%>

<%--<div class="container">--%>
<%--    <div class="row">--%>


<%--        <table class="col-3">--%>
<%--            <tr>--%>
<%--                <th>sale</th>--%>
<%--            </tr>--%>
<%--            <%--%>
<%--                for(SaleEntity se : seList){--%>
<%--            %>--%>
<%--            <tr>--%>
<%--                <td> <%=se.getSale()%></td>--%>
<%--            </tr>--%>
<%--            <%}%>--%>
<%--        </table>--%>





<%--        <table class="col-3">--%>
<%--            <tr>--%>
<%--                <th>Unpaid Sale</th>--%>
<%--            </tr>--%>
<%--            <%--%>
<%--                for(UnpaidSaleEntity use : useList){--%>
<%--            %>--%>
<%--            <tr>--%>
<%--                <td> <%=use.getUnpaidSale()%></td>--%>
<%--            </tr>--%>
<%--            <%}%>--%>
<%--        </table>--%>




<%--        <table class="col-3">--%>
<%--            <tr>--%>
<%--                <th>Assets</th>--%>
<%--            </tr>--%>
<%--            <%--%>
<%--                for(AssetsEntity ae : aeList){--%>
<%--            %>--%>
<%--            <tr>--%>
<%--                <td> <%=ae.getAssets()%></td>--%>
<%--            </tr>--%>
<%--            <%}%>--%>
<%--        </table>--%>



<%--        <table class="col-3">--%>
<%--            <tr>--%>
<%--                <th>Withdraw</th>--%>
<%--            </tr>--%>
<%--            <%--%>
<%--                for(WithdrawEntity we : weList){--%>
<%--            %>--%>
<%--            <tr>--%>
<%--                <td> <%=we.getWithdraw()%></td>--%>
<%--            </tr>--%>
<%--            <%}%>--%>
<%--        </table>--%>




<%--    </div>--%>





<%--</div>--%>



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



    <title>Dashboard</title>
    <link rel="shortcut icon" href="logo.png">
</head>



<body style="color: tomato;">



<%
    List<SaleEntity> seList = (List<SaleEntity>) request.getAttribute("seList");
    List<UnpaidSaleEntity> useList = (List<UnpaidSaleEntity>) request.getAttribute("useList");
    List<AssetsEntity> aeList = (List<AssetsEntity>) request.getAttribute("aeList");
    List<WithdrawEntity> weList = (List<WithdrawEntity>) request.getAttribute("weList");


%>





<!-- navigation bar -->

<div class="row">


    <nav class="navbar navbar-expand-md  navbar-light bg-secondary">
        <div class="container-fluid">

            <img style="width: 70px;" class="navbar-brand" src="logo.png" alt="logo">
            <!-- <a class="navbar-brand text-uppercase text-xl-center text-white" href="#">Accountant</a> -->


            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li>


                <form action="/user/home">
                    <input hidden class="form-control" type="date" name="date">
                    <button href="/user/home" class="navbar-brand text-uppercase btn text-white " type="submit"> Dashboard </button>
                </form>
                </li>
<%--                <a class=" navbar-brand text-uppercase text-xl-center active text-white " href="#">Dashboard</a>--%>
                <a class="navbar-brand text-uppercase  text-white" href="/user/entry">Acc. Entry</a>
                <a class="navbar-brand text-uppercase  text-white" href="/user/profile">profile</a>
                <a class="navbar-brand text-uppercase  text-white" href="#">About Us</a>
            </ul>

            <form action="logout">
                <input class="btn btn-danger" type="submit"  value="Log out">
            </form>

            <!-- </div> -->
        </div>
    </nav>
</div>




<!-- dashboard containt -->

<div class="container-fluid mt-5  ">



    <div class="row ">


        <!-- left section -->
        <div class="col-4 bg-light p-5 shadow-lg ml-5">
            <div>
                <h1 class="text-center ">Total Ammount</h1>
                <hr>
            </div>

            <!-- first row -->
            <div class="row ">

                <div class="text-center col-5 shadow-lg pt-3">
                    <h1>${totalAssets}</h1>
                    <h4 class="text-muted">Assets</h4>
                </div>

                <div class="text-center offset-2 col-5 shadow-lg pt-3">
                    <h1>${totalSale}</h1>
                    <h4 class="text-muted">Sale</h4>
                </div>
            </div>
            <!-- second rwo -->

            <div class="row mt-5 pt-5">

                <div class="text-center col-5 shadow-lg pt-3">
                    <h1>${totalUnpaidSale}</h1>
                    <h4 class="text-muted">Unpaid Sale</h4>
                </div>

                <div class="text-center offset-2 col-5 shadow-lg pt-3">
                    <h1>${totalWithdraw}</h1>
                    <h4 class="text-muted">Withdraw</h4>
                </div>
            </div>



        </div>

        <!-- right section -->
        <div class="col-8 bg-light">

            <div class="text-center">
                <form action="/user/home">
                    <label for="inputDate" class="form-label">Filter By Date  </label>
                    <input id="inputDate" type="date" name="date">
                    <input type="submit">
                </form>

            </div>



            <div class="container row mt-5">

                <div class="col-3">
                    <table class="table table-bordered table-striped">
                        <tr>
                            <th>sale</th>
                        </tr>
                        <%
                            for(SaleEntity se : seList){
                        %>
                        <tr>
                            <td> <%=se.getSale()%></td>
                        </tr>
                        <%}%>
                    </table>
                </div>


                <div class="col-3">
                    <table class="table table-bordered table-striped">
                        <tr>
                            <th>Unpaid Sale</th>
                        </tr>
                        <%
                            for(UnpaidSaleEntity use : useList){
                        %>
                        <tr>
                            <td> <%=use.getUnpaidSale()%></td>
                        </tr>
                        <%}%>
                    </table>
                </div>


                <div class="col-3">
                    <table class="table table-bordered table-striped">
                        <tr>
                            <th>Assets</th>
                        </tr>
                        <%
                            for(AssetsEntity ae : aeList){
                        %>
                        <tr>
                            <td> <%=ae.getAssets()%></td>
                        </tr>
                        <%}%>
                    </table>
                </div>


                <div class="col-3">
                    <table class="table table-bordered table-striped">
                        <tr>
                            <th>Withdraw</th>
                        </tr>
                        <%
                            for(WithdrawEntity we : weList){
                        %>
                        <tr>
                            <td> <%=we.getWithdraw()%></td>
                        </tr>
                        <%}%>
                    </table>
                </div>


            </div>

        </div>

    </div>


</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>