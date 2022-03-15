<%-- 
    Document   : cart
    Created on : Mar 14, 2022, 5:45:54 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Shop</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/templatemo.css">
        <link rel="stylesheet" href="css/custom.css">

        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link rel="stylesheet" href="css/fontawesome.min.css">
        <style>
            .bloc_left_price {
                color: #c01508;
                text-align: center;
                font-weight: bold;
                font-size: 150%;
            }
            .category_block li:hover {
                background-color: #007bff;
            }
            .category_block li:hover a {
                color: #ffffff;
            }
            .category_block li a {
                color: #343a40;
            }
            .add_to_cart_block .price {
                color: #c01508;
                text-align: center;
                font-weight: bold;
                font-size: 200%;
                margin-bottom: 0;
            }
            .add_to_cart_block .price_discounted {
                color: #343a40;
                text-align: center;
                text-decoration: line-through;
                font-size: 140%;
            }
            .product_rassurance {
                padding: 10px;
                margin-top: 15px;
                background: #ffffff;
                border: 1px solid #6c757d;
                color: #6c757d;
            }
            .product_rassurance .list-inline {
                margin-bottom: 0;
                text-transform: uppercase;
                text-align: center;
            }
            .product_rassurance .list-inline li:hover {
                color: #343a40;
            }
            .reviews_product .fa-star {
                color: gold;
            }
            .pagination {
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <!-- Start Top Nav -->
        <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
            <div class="container text-light">
                <div class="w-100 d-flex justify-content-between">
                    <div>
                        <i class="fa fa-envelope mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">info@ex.com</a>
                        <i class="fa fa-phone mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                    </div>
                    <div>
                        <a class="text-light" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                        <a class="text-light" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                        <a class="text-light" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                        <a class="text-light" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Close Top Nav -->


        <!-- Header -->
        <nav class="navbar navbar-expand-lg navbar-light shadow">
            <div class="container d-flex justify-content-between align-items-center">

                <a class="navbar-brand text-success logo h1 align-self-center" href="home">
                    Candy
                </a>

                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                    <div class="flex-fill">
                        <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="home">Home</a>
                            </li>
                            <c:if test="${sessionScope.acc.isSell == 1}">        
                                <li class="nav-item">
                                    <a class="nav-link" href="manager">Manager Products</a>
                                </li>                           
                            </c:if>
                            <c:if test="${sessionScope.acc != null}">        
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Hello <u>${sessionScope.acc.user}</u></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="logout">Logout</a>
                                </li>
                            </c:if>
                        </ul>
                    </div>
                    <div class="navbar align-self-center d-flex">
                        <form action="search" method="post" class="form-inline my-2 my-lg-0">
                            <div class="input-group input-group-sm">
                                <input value="${txtS}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-secondary btn-number">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>                           
                        </form>
                        <c:if test="${sessionScope.acc.isAdmin == 1}">       
                            <a class="nav-icon position-relative text-decoration-none" href="cart.jsp">
                                <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                                <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                            </a>
                        </c:if> 
                        <a class="nav-icon position-relative text-decoration-none" href="login.jsp">
                            <i class="fa fa-fw fa-user text-dark mr-3"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                        </a>
                    </div>
                </div>

            </div>
        </nav>
        <!-- Close Header -->
        
        <!-- Modal -->
        <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="w-100 pt-1 mb-5 text-right">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="" method="get" class="modal-content modal-body border-0 p-0">
                    <div class="input-group mb-2">
                        <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                        <button type="submit" class="input-group-text bg-success text-light">
                            <i class="fa fa-fw fa-search text-white"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
        
        <div class="container mb-4">
            <div class="row">
                <div class="col-12">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col"> </th>
                                    <th scope="col">Product</th>
                                    <th scope="col">Available</th>
                                    <th scope="col" class="text-center">Quantity</th>
                                    <th scope="col" class="text-right">Price</th>
                                    <th> </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><img src="https://dummyimage.com/50x50/55595c/fff" /> </td>
                                    <td>Product Name Dada</td>
                                    <td>In stock</td>
                                    <td><input class="form-control" type="text" value="1" /></td>
                                    <td class="text-right">124,90 €</td>
                                    <td class="text-right"><button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </td>
                                </tr>
                                <tr>
                                    <td><img src="https://dummyimage.com/50x50/55595c/fff" /> </td>
                                    <td>Product Name Toto</td>
                                    <td>In stock</td>
                                    <td><input class="form-control" type="text" value="1" /></td>
                                    <td class="text-right">33,90 €</td>
                                    <td class="text-right"><button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </td>
                                </tr>
                                <tr>
                                    <td><img src="https://dummyimage.com/50x50/55595c/fff" /> </td>
                                    <td>Product Name Titi</td>
                                    <td>In stock</td>
                                    <td><input class="form-control" type="text" value="1" /></td>
                                    <td class="text-right">70,00 €</td>
                                    <td class="text-right"><button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>Sub-Total</td>
                                    <td class="text-right">255,90 €</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>Shipping</td>
                                    <td class="text-right">6,90 €</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><strong>Total</strong></td>
                                    <td class="text-right"><strong>346,90 €</strong></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col mb-2">
                    <div class="row">
                        <div class="col-sm-12  col-md-6">
                            <button class="btn btn-block btn-light"><a class="nav-link" href="home">Continue Shopping</a></button>
                        </div>
                        <div class="col-sm-12 col-md-6 text-right">
                            <button class="btn btn-lg btn-block btn-success text-uppercase">Checkout</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
