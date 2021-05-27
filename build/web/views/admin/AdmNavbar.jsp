<%-- 
    Document   : navbar
    Created on : Jul 16, 2020, 9:59:25 PM
    Author     : Laksamana Zaidan
--%>

<nav class="navbar navbar-expand-lg navbar-dark bg-success fixed-top py-2">
    <div class="container">
        <a class="navbar-brand" href="#">TradingCardGame Store</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="dropdown" style="margin-right: -70px">
            <a class="btn dropdown-toggle text-white" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown">
                <% out.print(session.getAttribute("name"));%> &nbsp; <img src="https://image.flaticon.com/icons/svg/126/126486.svg" alt="" class="rounded-circle bg-light" style="width: 12%"> &nbsp;
            </a>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <a class="dropdown-item" href="logout">Logout</a>
            </div>
        </div>
    </div>
</div>
</nav>

