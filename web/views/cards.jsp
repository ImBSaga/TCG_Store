<%-- 
    Document   : cards
    Created on : Jul 19, 2020, 8:07:55 PM
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
        <jsp:include page="layouts/navbar.jsp"></jsp:include>
            <div class="container">

                <div class="row" style="padding-top: 55px;">

                    <div class="col-lg-3">

                        <h1 class="my-4">Card<br>Accessories</h1>
                        <div class="dropdown mt-5">
                            <button class="btn btn-lg btn-secondary dropdown-toggle dropdown-toggle-split bg-white text-dark" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Products
                            </button>
                            <div class="dropdown-menu ml-5" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">Cards</a>
                                <a class="dropdown-item" href="#">Card Accessories</a>
                                <a class="dropdown-item" href="#">Toys</a>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-9">
                        <div class="row my-5">

                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card h-100">
                                    <a href="#"><img class="card-img-top" src="https://sc01.alicdn.com/kf/HTB1YagxKeuSBuNjy1Xcq6AYjFXao.jpg" alt=""></a>
                                    <div class="card-body">
                                        <h4 class="card-title">
                                            <a href="./prd">Item One</a>
                                        </h4>
                                        <h5>$24.99</h5>
                                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card h-100">
                                    <a href="#"><img class="card-img-top" src="https://6d4be195623157e28848-7697ece4918e0a73861de0eb37d08968.ssl.cf1.rackcdn.com/207203_1_200w.jpg" alt=""></a>
                                    <div class="card-body">
                                        <h4 class="card-title">
                                            <a href="#">Item Two</a>
                                        </h4>
                                        <h5>$24.99</h5>
                                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card h-100">
                                    <a href="#"><img class="card-img-top" src="https://6d4be195623157e28848-7697ece4918e0a73861de0eb37d08968.ssl.cf1.rackcdn.com/150971_200w.jpg" alt=""></a>
                                    <div class="card-body">
                                        <h4 class="card-title">
                                            <a href="#">Item Three</a>
                                        </h4>
                                        <h5>$24.99</h5>
                                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>

            </div>
            <div>
            <jsp:include page="layouts/footer.jsp"></jsp:include>
            </div>
        <jsp:include page="layouts/scripts.jsp"></jsp:include>
    </body>
</html>
