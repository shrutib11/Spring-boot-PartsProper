<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
      		.navbar-light .navbar-nav .nav-link {
  				color: #000;
			}
			</style>
	</head>
	<body class="bg-info text-center">
	<!-- navbar -->
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
	          <a class="nav-link mx-2" href="/">Home</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link mx-2" href="/login">Login</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link mx-2" href="/logout">Register</a>
	        </li>
	      </ul>
	      </div>
	    </div>
	  </div>
	</nav>
	<!-- navbar close -->
		<section class="vh-100">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-10">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                <form:form method="post" action="/saveUser" modelAttribute="User" class="mx-1 mx-md-4">

                  <div class="d-flex flex-row align-items-center mb-4">
                    <div class="form-outline flex-fill mb-0">
                      
                      <form:input type="text" id="form3Example1c" class="form-control" path="username" name="username" placeholder="Username"/>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <div class="form-outline flex-fill mb-0">
                      <form:input type="email" id="form3Example3c" class="form-control" path="email" name="email" placeholder="Email"/>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <div class="form-outline flex-fill mb-0">
                      <form:input type="password" id="form3Example4c" class="form-control" path="password" name="password" placeholder="Password" />
                    </div>
                  </div>
                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                    <form:input type="submit" class="btn btn-secondary btn-lg" value = "Signup" path=""/>
                  </div>

                </form:form>

              </div>
             <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://img.freepik.com/free-vector/placeholder-concept-illustration_114360-4727.jpg?size=626&ext=jpg&ga=GA1.2.875555201.1663485851&semt=sph"
                  class="img-fluid" alt="Sample image">
  
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
		<!-- <div class="p-5 m-4 border border-dark">
			<h1 class="heading">Registration Form</h1>
			<form:form method="post" action="/saveUser" modelAttribute="User">
				<div class="p-3">
					Username :
					<form:input path="username" type="text" name="username" placeholder="Username" />
				</div>
				</br>
				<div class="p-3">
					Email :
					<form:input path="email" type="email" name="email" placeholder="Email" />
				</div>
				</br>
				<div class="p-3">
					Password :
					<form:password path="password" name="password" placeholder="Password" />
				</div>
				</br>
				<input class="btn btn-dark text-light" type="submit" value="Submit">
			</form:form>
		</div> -->
	</body>
</html>
 