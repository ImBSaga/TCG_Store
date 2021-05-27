<%-- 
    Document   : purchase
    Created on : Jul 25, 2020, 4:12:49 PM
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

        <!-- Navigation -->
        <jsp:include page="layouts/navbar.jsp"></jsp:include>
            <!-- Page Content -->
            <div class="container">

                <div class="row" style="padding-top: 8%;">

                    <div class="col">
                        <h1>Shipment Info</h1>
                        <div class="col-lg-10 py-5 mx-auto">
                            <div class="card card-body my-3 bg-warning mx-auto" style="text-align: center">
                                Thank you for shopping at CGStore.com!!! <br> Your order will be delivered to : 
                                <a href="#"><% out.print(session.getAttribute("address"));%></a>  We will contact you soon through email for further 
                            delivery information. Happy Playing!!!                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="padding-top: 12%">
            <jsp:include page="layouts/footer.jsp"></jsp:include>
            </div>
        <jsp:include page="layouts/scripts.jsp"></jsp:include>
    </body>
</html>
