<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp Page</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>

</head>
<body>
	<form:form action="registerUser" method="post" modelAttribute="login">
	<h1 class="text-center text-primary">SignUp Page</h1>
<%-- <form:errors path="user.*" /> --%>
	<div><font color="red"><c:out value="${message}"></c:out></font></div>
	<div class="container">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="userid">User ID</label>
					<input type="text" name="userId" class="form-control" id="userid" placeholder="Userid">
					<p class="text-danger"></p>
				</div>
				
				<div class="form-group col-md-6">
					<label for="pwd">Password</label> 
					<input type="password" name="password" class="form-control" id="pwd" placeholder="Password">
					<p class="text-danger"></p>
				</div>
			</div>
			
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="age">Age</label>
					<input type="number" value="18" name="age" class="form-control" id="age" placeholder="User Age">
					<p class="text-danger"></p>
				</div>
				
				<div class="form-group col-md-6">
					<label for="dob">Birthday</label> 
					<input type="text" name="dob" class="form-control" id="dob" placeholder="dd-MM-yyyy" >
					<p class="text-danger"></p>
				</div>
			</div>
			
			
			<%-- <div class="form-group">
				<label for="phone">Phone</label> 
				<input type="text" name="phone" class="form-control" id="phone" placeholder="Contact number">
					<p class="text-danger"><form:errors path="user.phone" /></p>
			</div>
			<div class="form-group">
				<label for="address">Address</label>
				<input type="text" name="address.area" class="form-control" id="address" placeholder="Apartment, studio, or floor">
					<p class="text-danger"><form:errors path="user.address.area" /></p>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="city">City</label> 
					<input type="text" name="address.city" class="form-control" id="city" placehoder="City">
					<p class="text-danger"><form:errors path="user.address.city" /></p>
				</div>
				<div class="form-group col-md-4">
					<label for="state">State</label> 
					<input type="text" name="address.state" class="form-control" id="state" placehoder="State">
<!-- 					<select id="state" name="address.state" class="form-control">
						<option selected>Choose...</option>
						<option>UP</option>
						<option>Delhi</option>
						<option>Maharastra</option>
					</select> -->
					<p class="text-danger"><form:errors path="user.address.state" /></p>
				</div>
				<div class="form-group col-md-2">
					<label for="zip">Zip</label> 
					<input type="text" name="address.zip" class="form-control" id="zip" placeholder="Zip code">
					<p class="text-danger"><form:errors path="user.address.zip" /></p>
				</div> 
			</div> --%>

			<button type="submit" class="btn btn-primary">Sign Up</button>
			<a href="/SpringAssignment/loadLoginPg">Login Now</a>
		</form:form>
	</div>
</body>
</html>