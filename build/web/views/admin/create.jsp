<%-- 
    Document   : create
    Created on : Jul 23, 2020, 4:09:14 PM
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
        <jsp:include page="AdmNavbar.jsp"></jsp:include>

            <div class="container">

                <div class="row" style="padding-top: 80px;">

                    <div class="col-lg-4">
                        <h1 class="my-4">Create Product</h1>
                    </div>
                    <div class="col-lg-5" style="padding-top: 100px; margin-left: -40px">
                        <form action="create" method="POST">
                        <div class="form-group">
                            <label>Name</label>
                            <input class="form-control" type="text"
                                   name="name"/>
                        </div>
                        <div class="form-group">
                            <label>Category</label>
                            <select class="form-control" type="text"
                                    name="category">
                                <option value="Booster Pack">Booster Pack</option>
                                <option value="Card Sleeve">Card Sleeve</option>
                                <option value="Deck Box">Deck Box</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Stock</label>
                            <input class="form-control" type="number" min="0"
                                   name="stock" /> 
                        </div>
                        <div class="form-group">
                            <label>Price</label>
                            <input class="form-control" type="text"
                                   name="price" />
                        </div>
                        <div class="form-group">
                            <label>Image</label>
                            <input class="form-control" type="text"
                                   name="pic" />
                        </div>
                        <div class="form-group">
                            <label>Detail</label>
                            <input class="form-control" type="text"
                                   name="detail" />
                        </div>
                        <div class="form-group py-3 float-right">
                            <button class="btn btn-md btn-success">Submit</button>
                        </div>
                    </form>
                    </div>
                </div>
            </div>

            <div style="padding-top: 100px;">
            <jsp:include page="../layouts/footer.jsp"></jsp:include>
            </div>
        <jsp:include page="../layouts/scripts.jsp"></jsp:include>
    </body>
</html>
