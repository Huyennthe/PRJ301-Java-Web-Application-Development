<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <style>
    
    .carousel-item {
        height: 40vh; /* Giảm kích thước carousel-item */
        background-size: cover;
        background-position: center;
    }
    .carousel-caption {
        bottom: 20%; /* Điều chỉnh vị trí của caption */
        color: #fff;
        text-shadow: 2px 2px 4px #000000;
    }
    .jumbotron-heading {
        font-size: 36px;
        font-weight: bold;
        color: #333;
    }
    .lead {
        font-size: 24px;
        color: #333;
    }
    .btn-success {
        background-color: #28a745;
        border-color: #28a745;
    }
    .btn-success:hover {
        background-color: #218838;
        border-color: #1e7e34;
    }
    .btn-number {
        background-color: #007bff;
        border-color: #007bff;
    }
    .btn-number:hover {
        background-color: #0056b3;
        border-color: #0056b3;
    }
    .carousel-inner img {
        object-fit: cover;
        height: 50vh; /* Giảm kích thước ảnh */
    }
    .jumbotron {
        padding: 2rem 1rem; /* Căn chỉnh padding của jumbotron */
    }
</style>

</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="home">MINA FASHION</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
                aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation ">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="account">Manager </a>
                    </li>
                </c:if>

                <c:if test="${sessionScope.acc.isSell == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="manager">Manager Product</a>
                    </li>
                </c:if>

                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="Profile.jsp">Hello ${sessionScope.acc.user}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                </c:if>

                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">Login</a>
                    </li>
                </c:if>
            </ul>

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input oniput="searchByName(this)" value="${txtS}" name="txt" type="text" class="form-control"
                           aria-label="Small" aria-describedby="inputGroup-sizing -sm" placeholder="Search...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
                <a class="btn btn-success btn-sm ml-3" href="show">
                    <i class="fa fa-shopping-cart"></i> Cart
                    <span class="badge badge-light">3</span>
                </a>
            </form>
        </div>
    </div>
</nav>

<section class="jumbotron text-center" style="position: relative;">
    <div class="container">
        <h1 class="jumbotron-heading">Welcome to Mina Fashion</h1>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://scontent.fhan14-5.fna.fbcdn.net/v/t39.30808-6/431691906_940012741051977_23013983948374993_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFMgKNKcBE8lmR9B9SUN1MSzYC0M48Qla_NgLQzjxCVrzybGzAszwan4RVk5oClHFORVlFR3TGcAlVHGCUBAwaN&_nc_ohc=Rj7Gmg6OLnwAX_6MdGY&_nc_ht=scontent.fhan14-5.fna&oh=00_AfBjNRF6EqLJoRYIuooQR_lNsvbZHOrqgNclYM7R_9gQOw&oe=65FDBA80"
                         class="d-block w-100" alt="First slide">
                    <div class="carousel-caption" style="margin-top: 50px;">
    <p class="lead text-white">New arrivals! Check out our latest collection</p>
               </div>
                </div>
                <div class="carousel-item">
                    <img src="https://scontent.fhan14-5.fna.fbcdn.net/v/t39.30808-6/433416741_946308327089085_7041941571334594227_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFdUSPDBrWycGlmmW8DCMozANfxuJV8hi8A1_G4lXyGLzuROSO7WJn9LjRIGbFOwT4151Br7Je9vjSoqaUfzLRi&_nc_ohc=Lc9k1fJ2hFIAX9Z9JnX&_nc_ht=scontent.fhan14-5.fna&oh=00_AfC6U_o9hqZLoJp1h0yiLZ8lhvLv-Yux_wEepTCAfjGr7A&oe=65FDEB88"
                         class="d-block w-100" alt="Second slide">
                    <div class="carousel-caption" style="margin-top: 50px;">
    <p class="lead text-white">Get ready for the upcoming season with our trendy styles</p>
</div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</section>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    $('.carousel').carousel({
        interval: 2000 // Time in milliseconds between slides
    });
</script>
</body>
</html>
