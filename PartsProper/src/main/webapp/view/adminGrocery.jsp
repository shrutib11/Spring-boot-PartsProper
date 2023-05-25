<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Parts Proper</title>
		<link rel = "icon" href = "https://img.freepik.com/free-icon/knot_318-827105.jpg?size=626&ext=jpg&ga=GA1.2.875555201.1663485851&semt=ais" type="image/x-icon">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
			integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
			crossorigin="anonymous">
			<style>
			body{
			background-image: url(https://t3.ftcdn.net/jpg/05/77/91/88/240_F_577918823_Du0k5gFpLtUROvvJKRrZmK7hdnyhl6en.jpg);
     		height: 80vh;
      		opacity : 0.8
      		}
      		hr{
      		background: #352f44;
      		height: 7px;
      		width: 1100px;
      		}
      		.navbar-light .navbar-nav .nav-link {
  				color: #000;
			}
			</style>
	</head>
	<body class="bg-info text-center">
		<nav class="navbar navbar-expand-md navbar-dark bg-dark">
	  <div class="container">
	    <a class="navbar-brand" href="#"
	      ><img
	        id="MDB-logo"
	        src="https://img.freepik.com/free-icon/knot_318-827105.jpg?size=626&ext=jpg&ga=GA1.2.875555201.1663485851&semt=ais"
	        draggable="false"
	        width = "40"
	        height="40"
	    /></a>
	    <button
	      class="navbar-toggler"
	      type="button"
	      data-mdb-toggle="collapse"
	      data-mdb-target="#navbarSupportedContent"
	      aria-controls="navbarSupportedContent"
	      aria-expanded="false"
	      aria-label="Toggle navigation"
	    >
	    </button>
	   <!-- <header class="d-flex flex-wrap justify-content-between py-2 mb-0">-->
	    <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2" id="navbarSupportedContent">
	    <a href="/" class="d-flex align-items mb-3 mb-md-0 me-md text-light text-decoration-none navbar-brand">
						Parts Proper
					</a>
		<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
	      <ul class="navbar-nav ml-auto">
	        <li class="nav-item">
	          <a class="nav-link mx-2" href="/adminHome">Home</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link mx-2" href="/logout">Logout</a>
	        </li>
	      </ul>
	      </div>
	    </div>
	  </div>
	</nav>
		<div>
		<c:if test="${username ne null}"><br>
				<a class="text-dark" href="addGroceries"><h5>Add Auto Part</h5></a>
				<a class="text-dark" href="viewInventory"><h5>Update Auto Part</h5></a>
		</c:if> <br>
		<h2><b><u>Auto Parts</u></b></h2>
			<table class="table table-secondary" style="width:70%;margin:auto;">
			<thead class = "table-dark"><tr>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Price</th>
				<th scope="col">Quantity</th>
				<th scope="col"></th>
			</tr></thead>
			<tbody>
			<c:forEach items="${groceries}" var="grocery">
				<tr>
					<form:form method="post" action="addToCart" modelAttribute="Cart">
						<td><form:input path="prodID" type="text" name="prodID" value="${grocery.id}" readonly="true" /></td>
						<td>${grocery.name}</td>
						<td>${grocery.sellPrice}</td>
						<td>${grocery.quantity}</td>
					</form:form>
				</tr>
			</c:forEach>
			</tbody>
			</table>
		</div>
		<br>
		<!--  	<table class="table table-secondary" style="width:50%;margin:auto;">
			<thead class="table-dark"><tr>
				<th scope="col">Cart item ID</th>
				<th scope="col">Product-ID</th>
				<th scope="col">Quantity</th>
				<th scope="col"></th>
			</tr></thead>
			<tbody>
			<c:forEach items="${cart}" var="item">
				<tr>
				<form:form method="post" action="removeFromCart" modelAttribute="Cart">
					<td><form:input path="id" type="text" name="id" value="${item[0]}" readonly="true" /></td>
					<td>${item[1]}</td>
					<td>${item[2]}</td>
					<td><input class="btn btn-dark text-light" type="submit" value="Remove from cart" /></td>
				</form:form>
				</tr>
			</c:forEach>
			</tbody>
		<div class="p-2">
			<form method="post" action="checkout">
				<input class="btn btn-dark text-light" type="submit" value="Place order">
			</form>
		</div>-->
		
	</body>
</html>