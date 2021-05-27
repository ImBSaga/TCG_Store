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

                        <h1 class="my-4">TCG Store</h1>
                        <div class="list-group pt-3">
                            <a class="list-group-item bg-dark text-white" href="index" style="text-decoration: none">Products</a>
                            <a href="boosterpack?category=Booster Pack" class="list-group-item">Booster Pack</a>
                            <a href="cardsleeve?category=Card Sleeves" class="list-group-item">Card Sleeves</a>
                            <a href="deckbox?category=Deck Box" class="list-group-item">Deck Box</a>
                        </div>

                    </div>
                    <!-- /.col-lg-3 -->

                    <div class="col-lg-9">

                        <div class="row">
                        <c:forEach items="${data}" var="item">

                            <c:if test="${item.category == 'Booster Pack'}">

                                <div class="col-lg-4 col-md-6 mb-4 pt-5">
                                    <div class="card h-100">
                                        <a href="#"><img class="card-img-top" src="${item.pic}" alt=""></a>
                                        <div class="card-body">
                                            <h4 class="card-title">
                                                <a href="prd?id=${item.id}">${item.name}</a>
                                            </h4>
                                            <h5>${item.price}</h5>
                                            <p class="card-text">${item.detail}</p>
                                        </div>
                                        <div class="card-footer">
                                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                        </div>
                                    </div>
                                </div>

                            </c:if>

                        </c:forEach>
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
