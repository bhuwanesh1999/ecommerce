<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="/css/home.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
  <script src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
  <script src="//https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
  <script type="text/javascript">
  $(document).ready(function() {
	  $.ajax({
		  url: '${pageContext.request.contextPath}/products',
		  method: 'get',
		  dataType: 'json',
		  success: function (data) {
			  $('#myTable').dataTable({
				  data: data,
				  columns: [
					  { 'data': 'pId' },
					  { 'data': 'pName'},
					  { 'data': 'pCost'},
					  { 'data': 'Imgdata',    
		                    render: function (data) {
		                        return '<img src="data:image/jpeg;base64,'+ data + '" width="150px" height="150px">';
		                    }
		                },
				  ]
			  });
		  }
		  
	  });
	  
  });
  
  </script>
<title>Insert title here</title>
</head>
<body>
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
<table id="myTable" class="table table-striped table-bordered">
<thead>
<tr>
	<th>Product Id</th>	
	<th>Product Name</th>
	<th>Product Cost</th>
	<th>Image</th>
	
</tr>
</thead>
</table>
</body>
</html>