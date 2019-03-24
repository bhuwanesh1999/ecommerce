<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  </head>
  <body class = " bg-light" >
    <nav class="navbar bg-danger">
      <a class="navbar-brand text-center text-light" href="${pageContext.request.contextPath}/">Shopping cart</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <form class="form-inline">
        <button class="btn  my-2 my-sm-2 bg-white text-dark border border-danger" style ="margin-right:10px" type="submit">
          <a class="text-dark" href="/Users/naveenkumarnr/Documents/WebPage Design/register.html">Sign Up
          </a>
        </button>
        <button class="btn btn-outline-success my-2 my-sm-0 bg-white text-dark border border-danger" type="submit">
          <a class="text-dark" href="/Users/naveenkumarnr/Documents/WebPage Design/login.html">Login
          </a>
        </button>
      </form>
    </nav>

    <form class="form-signin" action="${pageContext.request.contextPath}/success"  enctype="multipart/form-data" method="post">
      <div class = "container text-center">
        <div class = "row">
          <div class = "col-lg-3 col-md-1 col-sm-12 col-xs-12"></div>
            <div class = "col-lg-6 col-md-10 col-sm-12 col-xs-12">
              <br>
              <div class = "jumbotron bg-white border border-danger">
                <h1 class="text center col-lg-12 text-dark">Add Product</h1>
                <br>
                  <div class = "form-group">
                      <label for="enterproductname" class="sr-only">Product Name</label>
                      <input type="text" id=enterusername" class = "form-control border border-danger" placeholder="Product Name" name="pName">
                  </div>
                  <br>
                  <div class = "form-group">
                      <label for="enterproductcost" class="sr-only">Product Cost</label>
                      <input type="text" id=enterproductcost" class = "form-control border border-danger " placeholder="Product Cost" name="pCost">
                  </div>
                  <br>
                  <div class = "form-group">
                      <label for="entersupplierid" class="sr-only">Supplier ID</label>
                      <input type="text" id=entersupplierid" class = "form-control border border-danger " placeholder="Supplier ID" name="sId">
                  </div>
                  <br>
                  <div class = "form-group">
                      <label for="quantity" class="sr-only">Quantity</label>
                      <input type="number" id=quantity" class = "form-control border border-danger " placeholder="Quantity" name="pQuantity">
                  </div>
                  <br>
                  <div class = "form-group">
                      <label for="uploadfile" class="sr-only">Upload File</label>
                      <input type="file" id=uploadfile" class = "form-control border border-white" placeholder="Choose File" name="fileUpload">
                  </div>
                  <div class = "form-group">
                      <button class="btn btn-dark btn-lg btn-block border border-danger bg-danger text-white" type="submit" value="Login">Add</button>
                  </div>
              </div>
            </div>
        </div>
      </div>
    </form>
    <hr class="featurette-divider bg-light" style="margin-top: 20px;max-width: 1410px">

    <footer class="container" style="min-width: 1400px;">
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