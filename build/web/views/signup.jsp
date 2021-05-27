<%-- 
    Document   : signup
    Created on : Jul 21, 2020, 12:45:27 PM
    Author     : Laksamana Zaidan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="layouts/head.jsp">
            <jsp:param name="title" value="Hello World"/>
        </jsp:include>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-success fixed-top py-2">
            <div class="container">
                <a class="navbar-brand" href="./">TradingCardGame Store</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </nav>
        <div class="col-lg-3 mx-auto" style="margin-top: 100px;"> 
            <form class="form-signin" action="signup" method="POST">
                <h1 class="h3 mb-3 font-weight-normal py-3 my-4" style="text-align: center">Sign Up to TCG Store</h1>
                <label for="inputName" class="sr-only">Name</label>
                <input type="Name" id="inputName" class="form-control" placeholder="Name" name="name" required autofocus>
                <br>
                <label for="inputEmail" class="sr-only">Email address</label>
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="username" required="" autofocus="">
                <br>
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required="">
                <br>
                <label for="inputAddress" class="sr-only">Address</label>
                <textarea type="address" id="inputName" class="form-control" placeholder="Address" name="address" required autofocus></textarea>
                <hr>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
                <p class="mt-5 mb-3 text-muted" style="text-align: center">Tradingcardgame.com © 2017-2018</p>
            </form>
        </div>
    </body>
</html>
