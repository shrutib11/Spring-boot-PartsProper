<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			table, tr, td, th, thead, tbody {
				border: 1px solid black;
				padding: 10px;
				margin: 8px;
			}
			body{
			background-image: url(https://t3.ftcdn.net/jpg/05/77/91/88/240_F_577918823_Du0k5gFpLtUROvvJKRrZmK7hdnyhl6en.jpg);
     		height: 80vh;
      		opacity : 0.8
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
	          <a class="nav-link mx-2" href="/viewOrders">View Orders</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link mx-2" href="/logout">Logout</a>
	        </li>
	      </ul>
	      </div>
	    </div>
	  </div>
	</nav>
		<h1 class="heading my-2 py-2"><b><u>All Orders</u></b></h1><br>
		<table class="table table-secondary" style="margin:auto;width:90%">
			<thead class="table-dark">
				<tr>
					<th>Order Id</th>
					<th>Product Id</th>
					<th>Quantity</th>
					<th>Total Price</th>
					<th>Order Date</th>
					<th>Username</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${orders}" var="order">
					<tr>
						<td>${order.id}</td>
						<td>${order.prodID}</td>
						<td>${order.quantity}</td>
						<td>${order.price}</td>
						<td>${order.orderDate}</td>
						<td>${order.username}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>