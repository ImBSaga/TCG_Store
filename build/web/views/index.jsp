<%-- 
    Document   : index
    Created on : Jul 16, 2020, 8:58:07 PM
    Author     : Laksamana Zaidan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <jsp:include page="layouts/head.jsp">
            <jsp:param name="title" value="Hello World"/>
        </jsp:include>
    </head>

    <body>

        <!-- Navigation -->
        <jsp:include page="layouts/navbar.jsp"></jsp:include>
            <!-- Page Content -->
            <div class="container">

                <div class="row" style="padding-top: 55px;">

                    <div class="col-lg-3">

                        <h1 class="py-4">TCG Store</h1>
                        <div class="list-group pt-3">
                            <a class="list-group-item bg-dark text-white" href="index" style="text-decoration: none">Products</a>
                            <a href="boosterpack?category=Booster Pack" class="list-group-item">Booster Pack</a>
                            <a href="cardsleeve?category=Card Sleeves" class="list-group-item">Card Sleeves</a>
                            <a href="deckbox?category=Deck Box" class="list-group-item">Deck Box</a>
                        </div>

                        <!--</div>-->
                    </div>

                    <!-- /.col-lg-3 -->

                    <div class="col-lg-9">

                        <div id="carouselExampleIndicators" class="carousel slide my-4 py-3" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <img class="d-block img-fluid mx-auto" src="https://images-na.ssl-images-amazon.com/images/I/814-zJRtFXL._AC_SL1500_.jpg" style="width: 60%" alt="First slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block img-fluid mx-auto" src="https://i0.wp.com/ae01.alicdn.com/kf/HTB10X4xd2NNTKJjSspcq6z4KVXaJ/Desktop-Game-font-b-Deck-b-font-font-b-Box-b-font-Cards-Storage-font-b.jpg" style="width: 38.56%" alt="Second slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block img-fluid mx-auto" src="https://i.ytimg.com/vi/d8eJ6_JiYhs/maxresdefault.jpg" style="width: 68.5%" alt="Third slide">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>

                        <div class="row">

                        <c:forEach items="${data}" var="item">

                            <div class="col-lg-3 mb-4">
                                <div class="card h-100">
                                    <a href="prd?id=${item.id}"><img class="card-img-top" src="${item.pic}" alt="products"></a>
                                    <div class="card-body">
                                        <h4 class="card-title">
                                            <a href="./prd?id=${item.id}">${item.name}</a>
                                        </h4>
                                            <h6 class="align-bottom">Rp. ${item.price}</h6>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                    </div>
                                </div>
                            </div>

                        </c:forEach>

                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.col-lg-9 -->

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <div>
    <jsp:include page="layouts/footer.jsp"></jsp:include>
    </div>
    <jsp:include page="layouts/scripts.jsp"></jsp:include>

</body>

</html>
