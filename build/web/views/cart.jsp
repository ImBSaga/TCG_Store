<%-- 
    Document   : cart
    Created on : Jul 21, 2020, 8:44:33 PM
    Author     : Laksamana Zaidan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

                <div class="row" style="padding-top: 80px;">

                    <div class="col-lg-2">
                        <h1 class="my-4">Cart</h1>
                    </div>
                    <div class="col-lg-9 pt-5">
                        <table class="table table-secondary rounded-bottom">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col"></th>
                                    <th scope="col">Product</th>
                                    <th scope="col">Amount</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Total Price</th>
                                    <th scope="col">Status</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${data}" var="item">
                                <c:if test="${item.status == 'ordered'}">
                                <tr>
                                    <th scope="row"></th>
                                    <td><p>${item.product}</p></td>
                                    <td><p>${item.amount}</p></td>
                                    <td><p>Rp. ${item.price}</p></td>
                                    <td><p name="grand" class="totalprice">Rp. ${item.total_price}</p></td>
                                    <input type="hidden" name="lname" value="unordered">
                                    <td><p>${item.status}</p></td>
                                    <td><a class="btn btn-sm btn-danger text-white" 
                                           href="deleteCart?id=${item.id}" method="GET">Delete</a></td>
                                </tr>
                                </c:if>
                            </c:forEach>
                        </tbody>
                    </table>
                    <hr>
                    <p id="gtid" style="margin-left: 63%"></p>
                    <hr>
                    <form action="cart" method="POST" id="updateForm"></form>
                        <button form="updateForm" type="submit" class="btn btn-md btn-primary text-white" type="submit" data-toggle="collapse" href="#multiCollapseExample1" 
                                aria-expanded="false" aria-controls="multiCollapseExample1"style="margin-left: 89%">Purchase</button>
                    
                </div>

            </div>

        </div>
        <div style="padding-top: 200px">
            <jsp:include page="layouts/footer.jsp"></jsp:include>
            </div>
        <jsp:include page="layouts/scripts.jsp"></jsp:include>
        <script>
            var tempPrice = 0;
            var grandTotal = document.getElementById("gtid");
            var priceClass = document.getElementsByClassName("totalprice");
            for (var i = 0; i < priceClass.length; i++) {
                var price = priceClass[i].textContent.split(" ");

                tempPrice = tempPrice + parseInt(price[1]);
            }
            gtid.textContent = "Grand Total : Rp. " + tempPrice;
        </script>

    </body>
</html>
