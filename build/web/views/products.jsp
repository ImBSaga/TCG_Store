<%-- 
    Document   : item1
    Created on : Jul 19, 2020, 8:54:08 AM
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
        <!-- Navigation -->
        <jsp:include page="layouts/navbar.jsp"></jsp:include>
            <div class="container">

                <div class="row" style="padding-top: 55px;">

                    <div class="col-lg-3">

                        <h1 class="my-4">TCG Store</h1>
                        <div class="list-group">
                            <li class="list-group-item bg-dark text-white">Products</li>
                            <a href="boosterpack?category=Booster Pack" class="list-group-item">Booster Pack</a>
                            <a href="cardsleeve?category=Card Sleeves" class="list-group-item">Card Sleeves</a>
                            <a href="deckbox?category=Deck Box" class="list-group-item">Deck Box</a>
                        </div>

                    </div>

                    <form action="prd" method="POST">
                        <div class="col mb-4 py-5 mt-5 ">
                            <div class="card h-100">
                                <a href=""><img class="card-img-top" src="${product.pic}" alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="products.jsp">${product.name}</a>
                                </h4>
                                <h5>Rp. ${product.price}</h5>
                                <p>Stock : ${product.stock}</p>
                                <p class="card-text">${product.detail}</p>
                                <div class="qty mt-5">
                                    <input type="number" class="count" name="amount" required>
                                    <input type="hidden" value="${product.name}" name="Product">
                                    <input type="hidden" value="${product.price}" name="price">
                                </div>
                                <button type="submit" class="d-flex justify-content-center btn btn-md btn-primary 
                                        text-white mt-5 ml-auto" style="margin-right: auto;">Add to Cart</button>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div>
            <jsp:include page="layouts/footer.jsp"></jsp:include>
            </div>
        <jsp:include page="layouts/scripts.jsp"></jsp:include>
    </body>
</html>
