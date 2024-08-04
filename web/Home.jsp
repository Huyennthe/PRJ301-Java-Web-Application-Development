<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page ="Menu.jsp"></jsp:include>
        <!--end of menu-->
        <div class="container">
            <div class="row">
                <div class="col">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="home">Home</a></li>
                            <li class="breadcrumb-item"><a href="home">Category</a></li>
                            <li class="breadcrumb-item active" aria-current="#">Sub-category</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
            <jsp:include page ="Left.jsp"></jsp:include>
                     

                <div class="col-sm-9">
                    <div id ="content" class="row">
                        <c:forEach items="${listP}" var="o">
                            <div class="product col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="${o.image}" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-danger btn-block">${o.price} $</p>
                                            </div>
                                            <div class="col">
                                                <a href="Cart.jsp" class="btn btn-success btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        
                    </div>
                    <button id="loadMoreButton" onclick ="loadMore()" class ="btn btn-primary">Load more</button>
                </div>

            </div>
        </div>

          <jsp:include page="Footer.jsp"></jsp:include> 
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
          <script>
              var currentLocation = window.location.pathname;
            if (currentLocation.includes("home")) {
        // Nếu là trang home.jsp, thì hiển thị nút "Load more"
             document.getElementById("loadMoreButton").style.display = "block";
        } else {
        // Nếu không phải trang home.jsp, thì ẩn nút "Load more"
        document.getElementById("loadMoreButton").style.display = "none";
        }
              function loadMore() {
                var amount = document.getElementsByClassName("product").length;
                  $.ajax({
               url: "/Project_banhang/load",
               type: "get",
               data: {
                exits: amount
               },
              success: function (data) {
              var row = document.getElementById("content");
              row.innerHTML += data;
            
              // Kiểm tra xem có sản phẩm nào mới được tải không
             if (data.trim().length === 0) {
                // Nếu không có sản phẩm mới, ẩn nút "Load more"
             var loadMoreButton = document.getElementById("loadMoreButton");
             loadMoreButton.style.display = "none";
            }
        },
        error: function (xhr) {
            // Xử lý lỗi nếu có
        }
    });
}

                        function searchByName(param) {
                            var txtSearch = param.value;
                            $.ajax({
                                 url: "/Project_banhang/searchAjax",
                                 type: "get",
                            data: {
                                txt: txtSearch
                            },
                            success: function (data) {
                                var row = document.getElementById("content");
                                row.innerHTML = data;
                                 },
                                 error: function (xhr) {
                                       // Xử lý lỗi nếu có
        }
    });
}
                        

              
           </script>
    </body>
</html>

