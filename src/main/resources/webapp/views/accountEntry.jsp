<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <title>Entry</title>
    <link rel="shortcut icon" href="/logo.png">
</head>



<body style="color: tomato">

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
                <a style="color: tomato" class="navbar-brand text-uppercase text-xl-center " href="/user/entry">Acc. Entry</a>
                <a class="navbar-brand text-uppercase text-xl-center text-white" href="/user/profile">profile</a>
<%--                <a class="navbar-brand text-uppercase text-xl-center text-white" href="">About Us</a>--%>

            </ul>

            <form action="logout">
                <input class="btn btn-danger" type="submit" value="Log out">
            </form>
             </div>
        </div>
    </nav>
</div>




<!-- dashboard containt -->

<div class="container-fluid mt-5  ">



    <div class="row ">


        <!-- left section -->
        <div class="offset-md-1 col-md-4 bg-light  shadow-lg ml-5">
                <div>
                    <h1 style="color: tomato;" class="text-center ">Amounts Entry </h1>
                    <hr>
                </div>
            <div class="row ">


                <div class="  shadow-lg py-4 my-3">
                    <form action="/user/assets" , method="post">

                        <label class="form-label"> Assets </label>

                    <div class="row g-2">
                        <div class="col-auto ">
                            <input type="number" name="assets" class="form-control" placeholder="Assets">
                        </div>
                        <div class="col-auto">
                            <button type="submit" class="btn btn-primary mt-1 ">Submit</button>
                        </div>
                    </div>
                    </form>
                </div>

                <div class="shadow-lg py-4 my-3">
                    <form class="" action="/user/sale" , method="post">
                        <label class="form-label"> Sale </label>
                        <div class="row g-2">
                            <div class=" col-auto">
                                <input type="number" name="sale" class="form-control" placeholder="Sale">
                            </div>

                            <div class="col-auto">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>

                        </div>
                    </form>
                </div>



                <div class="  shadow-lg py-4 my-3">
                    <form action="/user/unpaidsale" , method="post">

                        <label class="form-label">  Unpaid Sale </label>

                <div class="row g-2">
                        <div class="col-auto">
                            <input type="number" name="unpaidSale" class="form-control" placeholder="Unpaid Sale">
                        </div>
                        <div class="col-auto">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                </div>

                    </form>
                </div>


                <div class="  shadow-lg py-4 my-3">
                    <form  action="/user/withdraw" , method="post">

                        <label class="form-label">  Withdraw </label>

                        <div class="row g-2">
                        <div class="col-auto">
                            <input type="number" name="withdraw" class="form-control" placeholder="Withdraw">
                        </div>
                        <div class="col-auto">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                        </div>
                    </form>
                </div>

                <div class=" shadow-lg py-4 my-3">
                    <form  action="/user/profit" , method="post">

                        <label class="form-label">  Profit </label>

                        <div class="row g-2">
                        <div class="col-auto">
                            <input type="number" name="profit" class="form-control"  placeholder="profit">
                        </div>
                        <div class="col-auto">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                        </div>
                    </form>
                </div>



            </div>


        </div>

        <!-- right section -->
        <div class=" offset-md-1 col-md-5   ">
            <div class="container bg-light shadow-lg p-5">

                <div class="text-center">
                    <h2 style="color: tomato;"> <i class="material-icons ">gavel</i> Rules For Entry</h2>
                </div>
                <hr>

                <div class="mt-5 p-4">

                    <ol>
                        <li style="font-size: 20px" class="p-4 ">When you get your unpaid sale money, then you should subtract that amount from unpaid option and must sum up in sale and profit option separately.</li>
                        <li style="font-size: 20px" class="p-4"> Your Withdraw limitations will be profit range</li>


                    </ol>

                </div>


            </div>


        </div>

    </div>


</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>


