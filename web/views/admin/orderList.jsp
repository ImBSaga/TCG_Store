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
        <jsp:include page="../layouts/head.jsp">
            <jsp:param name="title" value="Hello World"/>
        </jsp:include>
    </head>
    <body>
        <jsp:include page="AdmNavbar.jsp"></jsp:include>

            <div class="container">

                <div class="row" style="padding-top: 80px;">

                    <div class="col-lg-3">
                        <h1 class="my-4">Order List</h1>
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">Order List</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="prdList">Product List</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-12 pt-3">
                    <h4 class="mt-1 ml-4" >Purchased Order List</h4>
                    <table class="table table-secondary rounded-bottom">
                        <thead class="thead-dark">
                            <tr>
                                <th></th>
                                <th>Name</th>
                                <th>Cust. ID</th>
                                <th>Order ID</th>
                                <th>Product</th>
                                <th>Amount</th>
                                <th>Total Price</th>
                                <th>Date</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${data}" var="item">
                                <c:if test="${item.status == 'purchased'}">
                                <tr>
                                    <th></th>
                                    <td><p>${item.name}</p></td>
                                    <td><p>${item.cust_id}</p></td>
                                    <td><p>${item.id}</p></td>
                                    <td><p>${item.product}</p></td>
                                    <td><p>${item.amount}</p></td>
                                    <td><p>Rp. ${item.total_price}</p></td>
                                    <td><p>${item.date}</p></td>
                                    <td></td>
                                </tr>
                                </c:if>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
                    <div class="col-lg-12 pt-3">
                        <h4 class="mt-3 ml-4">Ordered List</h4>
                        <table class="table table-secondary rounded-bottom">
                            <thead class="thead-dark">
                                <tr>
                                    <th></th>
                                    <th>Name</th>
                                    <th>Cust. ID</th>
                                    <th>Order ID</th>
                                    <th>Product</th>
                                    <th>Amount</th>
                                    <th>Total Price</th>
                                    <th>Date</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${data}" var="item">
                                <c:if test="${item.status == 'ordered'}">
                                <tr>
                                    <th></th>
                                    <td><p>${item.name}</p></td>
                                    <td><p>${item.cust_id}</p></td>
                                    <td><p>${item.id}</p></td>
                                    <td><p>${item.product}</p></td>
                                    <td><p>${item.amount}</p></td>
                                    <td><p>Rp. ${item.total_price}</p></td>
                                    <td><p>${item.date}</p></td>
                                    <td></td>
                                </tr>
                                </c:if>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
                

            </div>

        </div>
        <div style="padding-top: 180px">
            <jsp:include page="../layouts/footer.jsp"></jsp:include>
            </div>
        <jsp:include page="../layouts/scripts.jsp"></jsp:include>
    </body>
</html>
