<%-- 
    Document   : admLogin
    Created on : Jul 22, 2020, 11:29:46 AM
    Author     : Laksamana Zaidan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../layouts/head.jsp">
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
        
        <div class="col-lg-3 mx-auto" style="margin-top: 150px;"> 
            <h1 class="h3 mb-4 font-weight-normal pb-4" style="text-align: center">TCG Store Admin Login</h1>
            <form action="admin" method="POST">
                <div class="form-group">
                    <input type="" id="inputEmail" class="form-control" 
                           placeholder="Username" required autofocus name="username">
                    <input type="password" id="inputPassword" 
                           class="form-control" placeholder="Password" required name="password">
                </div>
                <div class="form-group p3-4">
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                </div>
                <hr>
                <p class="mt-5 mb-3 text-muted" style="text-align: center">Tradingcardgame.com © 2017-2018</p>
            </form>
        </div>
        
        
    </body>
</html>
