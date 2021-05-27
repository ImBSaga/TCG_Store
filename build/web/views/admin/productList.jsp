<%-- 
    Document   : productList
    Created on : Jul 23, 2020, 2:40:48 PM
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
                        <h1 class="my-4">Product List</h1>
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                                <a class="nav-link" href="order">Order List</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="#">Product List</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-12 pt-3">
                        <table class="table table-secondary rounded-bottom">
                            <a class="btn btn-md btn-info text-white float-left my-2" href="create">Add Product +</a>
                            <thead class="thead-dark">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Category</th>
                                    <th>Stock</th>
                                    <th>Price</th>
                                    <th>Picture</th>
                                    <th>Detail</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${data}" var="item">
                                <tr>
                                    <th><p>${item.id}</p></th>
                            <td><p>${item.name}</p></td>
                            <td><p>${item.category}</p></td>
                            <td><p>${item.stock}</p></td>
                            <td><p>Rp. ${item.price}</p></td>
                            <td><img src="${item.pic}" style="width: 50%"></td>
                            <td><p>${item.detail}</p></td>
                            <td><a class="btn btn-sm btn-primary my-2" href="edit?id=${item.id}">Edit</a>
                                <a class="btn btn-sm btn-danger" href="deleteprd?id=${item.id}"
                                   method="GET" >Delete</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    
                </div>
            </div>
        </div>
        <div style="padding-top: 100px;">
            <jsp:include page="../layouts/footer.jsp"></jsp:include>
            </div>
        <jsp:include page="../layouts/scripts.jsp"></jsp:include>
    </body>
</html>
