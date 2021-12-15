<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.Entitys.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <title>Dashboard</title>
    <link rel="shortcut icon" href="/logo.png">
</head>



<body style="color: tomato;">

<%
    List<SaleEntity> seList = (List<SaleEntity>) request.getAttribute("seList");
    List<UnpaidSaleEntity> useList = (List<UnpaidSaleEntity>) request.getAttribute("useList");
    List<AssetsEntity> aeList = (List<AssetsEntity>) request.getAttribute("aeList");
    List<WithdrawEntity> weList = (List<WithdrawEntity>) request.getAttribute("weList");
    List<ProfitEntity> peList = (List<ProfitEntity>) request.getAttribute("peList");


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
                            <button style="color: tomato"  href="/user/home" class="navbar-brand text-uppercase btn  " type="submit"> Dashboard </button>
                        </form>
                    </li>
                    <a class="navbar-brand text-uppercase  text-white" href="/user/entry">Acc. Entry</a>
                    <a class="navbar-brand text-uppercase  text-white" href="/user/profile">profile</a>
                    <a class="navbar-brand text-uppercase  text-white" href="#">About Us</a>
                </ul>
                <div>
                    <form action="logout">
                        <input class="btn btn-danger" type="submit"  value="Log out">
                    </form>
                </div>
            </div>

        </div>
    </nav>
</div>




<!-- dashboard containt -->

<div class="container-fluid mt-5  ">



    <div class="row ">


        <!-- left section -->
        <div class="col-md-4 col-sm-12 bg-light p-5 shadow-lg ml-5">
            <div>
                <h1 class="text-center ">Total Ammount</h1>
                <hr>
            </div>
            <div class="row ">
                <form >

                    <div class="form-group shadow-lg p-3 mt-2 ">
                        <h4 class="text-uppercase" >Assets </h4>
                        <input class="form-control" type="text" disabled  value="${totalAssets}">
                    </div>

                    <div class="form-group shadow-lg p-3 mt-2 ">
                        <h4 class="text-uppercase" >Paid Sale</h4>
                        <input class="form-control" type="text" disabled  value="${totalSale}">
                    </div>

                    <div class="form-group shadow-lg p-3 mt-2 ">
                        <h4 class="text-uppercase" >Profit</h4>
                        <input class="form-control" type="text" disabled  value="${totalProfit}">
                    </div>

                    <div class="form-group shadow-lg p-3 mt-2 ">
                        <h4 class="text-uppercase" >Unpaid Sale</h4>
                        <input class="form-control" type="text" disabled  value="${totalUnpaidSale}">
                    </div>
                    <div class="form-group shadow-lg p-3 mt-2 ">
                        <h4 class="text-uppercase" >withdraw</h4>
                        <input class="form-control" type="text" disabled  value="${totalWithdraw}">
                    </div>
                </form>
            </div>

        </div>

        <!-- right section -->
        <div class="col-md-8 mt-sm-12 mt-md-0 bg-light">

            <div class="mt-sm-4 mt-md-4 mt-lg-0 text-center">
                <form action="/user/home">
                    <label for="inputDate" class="form-label">Filter By Date  </label>
                    <input id="inputDate" type="date" name="date">
                    <input type="submit">
                </form>
                <hr>
            </div>

            <div class="container row mt-5">


                <div class="text-center mb-4">
                     <h1>Total</h1>

                    <table class=" table table-bordered table-striped mt-4">
                        <tr>
                            <th>Assets</th>
                            <th>Paid Sale </th>
                            <th>Unpaid Sale</th>
                            <th>Profit</th>
                            <th>Withdraw</th>
                        </tr>
                        <tr>
                            <td> ${todayAssets}</td>
                            <td> ${todaySale}</td>
                            <td> ${todayUnpaidSale}</td>
                            <td> ${todayProfit}</td>
                            <td> ${todayWithdraw}</td>
                        </tr>
                    </table>
                </div>


                <div class="row col-12 text-center mb-4">
                    <h1>Details</h1>
                </div>


                <div class="col-lg-2">


                    <table class="table table-bordered table-striped mt-4">
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


                <div class="col-lg-2">

                    <table class="table table-bordered table-striped mt-4">
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


                <div class="col-lg-2">

                    <table class="table table-bordered table-striped mt-4">
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


                <div class="col-lg-2">

                    <table class="table table-bordered table-striped mt-4">
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


                <div class="col-lg-2">

                    <table class="table table-bordered table-striped mt-4">
                        <tr>
                            <th>Profit</th>
                        </tr>
                        <%
                            for(ProfitEntity we : peList){
                        %>
                        <tr>
                            <td> <%=we.getProfit()%></td>
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