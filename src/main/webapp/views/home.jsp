<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="<c:url value="/css/home.css"/>" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body class="bg-light">

    <nav class="navbar bg-danger">
        <a class="navbar-brand text-center text-light" href="${pageContext.request.contextPath}/">Shopping cart</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <form class="form-inline">
            <button class="btn  my-2 my-sm-2 bg-white text-dark border border-danger" style ="margin-right:10px" type="submit">
              <a class="text-dark" href="${pageContext.request.contextPath}/register">Sign Up
              </a>
            </button>
            <button class="btn btn-outline-success my-2 my-sm-0 bg-white text-dark border border-danger" type="submit">
              <a class="text-dark" href="${pageContext.request.contextPath}/login">Login
              </a>
            </button>
        </form>
    </nav>

    <nav class="navbar navbar-expand-lg navbar-light bg-danger" style="margin-top: 10px">
    <button class="navbar-toggler bg-white" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link text-light" href="#">About <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item active">
          <a class="nav-link text-light" href="${pageContext.request.contextPath}/listview">View Products</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Categories</a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Laptops</a>
            <a class="dropdown-item" href="#">Shoes</a>
            <a class="dropdown-item" href="#">Smart Phones</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Others</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Others</a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="${pageContext.request.contextPath}/productPage">Add Product</a>
            <a class="dropdown-item" href="${pageContext.request.contextPath}/addsupplierpage">Add Supplier</a>
          </div>
        </li>
      </ul>
      <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn my-2 my-sm-0 border border-dark bg-dark text-light" type="submit">Search</button>
      </form>
    </div>
  </nav>

                  <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-wrap="true" style="margin-top: 20px">
                    <ol class="carousel-indicators">
                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img class="d-block w-100 h-20" src="<c:url value="/images/maxresdefault-3.jpg"/>" alt="First slide">
                        <div class="carousel-caption text-center">
                          <p><a class="btn btn-sm btn-danger" href="#" role="button" style="margin-top: 10px">Buy Now</a></p>
                        </div>
                      </div>

                      <div class="carousel-item">
                        <img class="d-block w-100" src="<c:url value="/images/rsz_fa4596ad9a9d39901eeb455ed4f74e44.jpg"/>" alt="Second slide">
                        <div class="carousel-caption text-center">
                          <p><a class="btn btn-sm btn-danger" href="#" role="button" style="margin-top: 10px">Buy Now</a></p>
                        </div>
                      </div>

                      <div class="carousel-item">
                        <img class="d-block w-100" src="<c:url value="/images/rsz_oneplus-5t-banner.jpg"/>" alt="Third slide">
                        <div class="carousel-caption text-center">
                          <p><a class="btn btn-sm btn-danger" href="#" role="button" style="margin-top: 10px">Buy Now</a></p>
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
            

  <img class="img-fluid" src="<c:url value="/images/DOD_web.jpg"/>" style="margin-top: 20px;min-height: 60px">
    <div class="container " style="margin-top: 20px;max-width: 1450px;">
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 ">
          <div class="card"  style = "max-height: 100rem;margin-top: 10px">
              <img class="card-img-top" src="<c:url value="/images/microsoft-surface-laptop-prod-1200x630-c-ar1.91.jpg"/>" alt="Card image cap" style="margin-top: 5px">
              <div class="card-body text-center">
                <h5 class="card-title">Microsoft Surface</h5>
                <p class="card-caption">30% offer</p>
                <a href="#" class="btn btn-danger">View</a>
              </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" >
          <div class="card" style = "max-height: 100rem;margin-top: 10px" >
            <img class="card-img-top img-fluid" src="<c:url value="/images/dk-derby-kohinoor-mens-canvas-casual-shoes-blue-large_a09b412d1e31c193dd44a6eb3b3769f7.jpg"/>" alt="Card image cap">
            <div class="card-body text-center">
              <h5 class="card-title ">Nike Casual</h5>
              <p class="card-caption">50% offer</p>
              <a href="#" class="btn btn-danger">View</a>
            </div>    
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
          <div class="card" style = "max-height: 100rem;margin-top: 10px">
            <img class="card-img-top img-fluid" src="<c:url value="/images/iphone-xs-max-gold-select-2018.jpg"/>" alt="Card image cap" style="margin-top: 5px">
            <div class="card-body text-center">
              <h5 class="card-title">Iphone Xs</h5>
              <p class="card-caption">20% offer</p>
              <a href="#" class="btn btn-danger">View</a>
            </div>    
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
          <div class="card" style = "max-height: 100rem;margin-top: 10px">
            <img class="card-img-top img-fluid" src="<c:url value="/images/Lume_Cube_Inspire_Drone_Lighting_Kit_HERO_Shot_-86_1024x1024_0c25a4a7-a348-43be-aacb-77b5a1dba5a2_1024x.jpg"/>" alt="Card image cap">
            <div class="card-body text-center" style="margin-top: 5px">
              <h5 class="card-title">DJI Inspire</h5>
              <p class="card-caption">10% offer</p>
              <a href="#" class="btn btn-danger">View</a>
            </div>    
          </div>
        </div>
      </div>
      <hr class="featurette-divider bg-light">
    </div>

    <h1 class="text-dark" style="margin-top: 10px;margin-left: 20px">Products you might like</h1>
    <div class="container-fluid bg-white testimonial-group" style="margin-top: 20px;">
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-1">
          <div class="card border border-white" style="max-height: 100rem">
            <a href="${pageContext.request.contextPath}/login">
              <img class="img-fluid zoom " src="<c:url value="/images/microsoft-surface-laptop-prod-1200x630-c-ar1.91.jpg"/>" alt="Card image cap" style="margin-top:  15px;max-width: 100%;height: auto" >
            </a>
            <div class="card-body text-center" style="margin-top: 5px">
                    <h5 class="card-title">Microsoft Surface</h5>
                    <p class="card-caption">Rs.80,199</p>
                </div>
              </div>    
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-1">
          <div class="card border border-white" style="max-height: 100rem">
            <a href="${pageContext.request.contextPath}/login">
              <img class="img-fluid zoom " src="<c:url value="/images/dk-derby-kohinoor-mens-canvas-casual-shoes-blue-large_a09b412d1e31c193dd44a6eb3b3769f7.jpg"/>" alt="Card image cap" style="margin-top:  15px">
            </a>
            <div class="card-body text-center" style="margin-top: 5px">
              <h5 class="card-title">Nike Casual</h5>
              <p class="card-caption">Rs.5,299</p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-1">
          <div class="card border border-white" style="max-height: 100rem">
            <a href="${pageContext.request.contextPath}/login">
              <img class="img-fluid zoom " src="<c:url value="/images/iphone-xs-max-gold-select-2018.jpg"/>" alt="Card image cap" style="margin-top:  15px">
            </a>
            <div class="card-body text-center" style="margin-top: 5px">
              <h5 class="card-title">iphone Xs</h5>
              <p class="card-caption">Rs.88,245</p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-1">
          <div class="card border border-white" style="max-height: 100rem">
            <a href="${pageContext.request.contextPath}/login">
              <img class="img-fluid zoom " src="<c:url value="/images/Lume_Cube_Inspire_Drone_Lighting_Kit_HERO_Shot_-86_1024x1024_0c25a4a7-a348-43be-aacb-77b5a1dba5a2_1024x.jpg"/>" alt="Card image cap" style="margin-top:  15px">
            </a>
            <div class="card-body text-center" style="margin-top: 5px">
              <h5 class="card-title" >DJI Inspire </h5>
              <p class="card-caption">Rs.1,11,245</p>
            </div>
          </div>
        </div>
      </div>
    </div>
<hr class="featurette-divider bg-light" style="margin-top: 20px;max-width: 1410px">

<div class="container-fluid" style="margin-top: 10px">
  <div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
      <div class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carouse-item active">
            <img class="img-fluid zoom" src="<c:url value="/images/SurfaceHome_HL_Hero_Panel_1_V1_En_us.jpg"/>">
            <div class="carousel-caption text-left">
              <h3 class="text-light ">Microsoft Surface</h3>
                          <p><a class="btn btn-sm btn-danger" href="#" role="button" style="margin-top: 15px">Buy Now</a></p>
                        </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
      <div class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carouse-item active">
            <img class="img-fluid zoom" src="<c:url value="/images/category_banner_ipxs.jpg"/>">
            <div class="carousel-caption text-right">
                          <p><a class="btn btn-sm btn-danger" href="#" role="button">Buy Now</a></p>
                        </div>
          </div>
        </div>
      </div>
    </div>
    
  </div>
</div>

<hr class="featurette-divider bg-light" style="margin-top: 20px;max-width: 1410px">

<h1 class="text-dark" style="margin-top: 10px;margin-left: 20px">Most Viewed Products</h1>
    <div class="container-fluid bg-white testimonial-group" style="margin-top: 20px;">
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-1">
          <div class="card border border-white" style="max-height: 100rem">
            <a href="${pageContext.request.contextPath}/login">
              <img class="img-fluid zoom " src="<c:url value="/images/microsoft-surface-laptop-prod-1200x630-c-ar1.91.jpg"/>" alt="Card image cap" style="margin-top:  15px;max-width: 100%;height: auto" >
            </a>
            <div class="card-body text-center" style="margin-top: 5px">
                    <h5 class="card-title">Microsoft Surface</h5>
                    <p class="card-caption">Rs.80,199</p>
                </div>
              </div>    
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-1">
          <div class="card border border-white" style="max-height: 100rem">
            <a href="${pageContext.request.contextPath}/login">
              <img class="img-fluid zoom " src="<c:url value="/images/dk-derby-kohinoor-mens-canvas-casual-shoes-blue-large_a09b412d1e31c193dd44a6eb3b3769f7.jpg"/>" alt="Card image cap" style="margin-top:  15px">
            </a>
            <div class="card-body text-center" style="margin-top: 5px">
              <h5 class="card-title">Nike Casual</h5>
              <p class="card-caption">Rs.5,299</p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-1">
          <div class="card border border-white" style="max-height: 100rem">
            <a href="${pageContext.request.contextPath}/login">
              <img class="img-fluid zoom " src="<c:url value="/images/iphone-xs-max-gold-select-2018.jpg"/>" alt="Card image cap" style="margin-top:  15px">
            </a>
            <div class="card-body text-center" style="margin-top: 5px">
              <h5 class="card-title">iphone Xs</h5>
              <p class="card-caption">Rs.88,245</p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-1">
          <div class="card border border-white" style="max-height: 100rem">
            <a href="${pageContext.request.contextPath}/login">
              <img class="img-fluid zoom " src="<c:url value="/images/Lume_Cube_Inspire_Drone_Lighting_Kit_HERO_Shot_-86_1024x1024_0c25a4a7-a348-43be-aacb-77b5a1dba5a2_1024x.jpg"/>" alt="Card image cap" style="margin-top:  15px">
            </a>
            <div class="card-body text-center" style="margin-top: 5px">
              <h5 class="card-title" style="margin-top: 5px">DJI Inspire </h5>
              <p class="card-caption">Rs.1,11,245</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <hr class="featurette-divider bg-light" style="margin-top: 20px;max-width: 1410px">
    <footer class="container" style="min-width: 1400px;max-width: 1400px">
      <div class="row">
        <div class="col-lg-3 col-md-4 col-sm-6 " >
          <h3>About Us</h3>
          <p class="footer-text text-muted">
            Curabitur non nulla sit amet nislinit 
            tempus convallis quis ac lectus. 
            lac inia eget consectetur sed, 
            convallis at tellus. Nulla porttitor 
            accumsana tincidunt.
          </p>
        </div>
        <div class="col-lg-3 footer-grid-w3ls">
          <div class="footer-title">
            <h3>Get in touch</h3>
          </div>
          <div class="contact-info">
            <h5>Location :</h5>
            <p class="text-muted">0926k 4th block building, king Avenue, New York City.</p>
            <div class="phone">
              <h5>Contact :</h5>
              <p class="text-muted">Phone : +121 098 8907 9987</p>
              <p class="text-muted">Email :
                <a href="mailto:info@example.com">info@example.com</a>
              </p>
            </div>
          </div>
      </div>
        <div class="col-lg-3 col-md-4 col-sm-6">
          <h3>Quick Links</h3>
          <ul class="list-unstyled links">
            <li><a class="text-muted" href="#">Home</a></li>
                <li><a class="text-muted" href="#">Laptops</a></li>
                <li><a class="text-muted" href="#">Shoes</a></li>
                <li><a class="text-muted" href="#">Smart Phones</a></li>
                <li><a class="text-muted" href="#">All Products</a></li>
          </ul>
        </div>
        <div class="col-lg-3 footer-grid-w3ls">
          <h3>Quick Links</h3>
          <ul class="list-unstyled links">
            <li><a class="text-muted" href="#">Home</a></li>
                <li><a class="text-muted" href="#">Laptops</a></li>
                <li><a class="text-muted" href="#">Shoes</a></li>
                <li><a class="text-muted" href="#">Smart Phones</a></li>
                <li><a class="text-muted" href="#">All Products</a></li>
          </ul>
      </div>
      </div>
    </footer>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  </body>
</html>