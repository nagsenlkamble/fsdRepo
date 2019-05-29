<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Spring Assignment</title>
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
<style>
.error {
	color: red;
}
</style>

</head>

<body>



	<form:form action="login" method="post" modelAttribute="login">
		<div class="login">
			<table border="0" align="center">
				<tr>
					<td colspan="3" align="center"><h1 class="text-center text-primary">Login Page</h1></td>
				</tr>
				<tr>
					<td colspan="3"><font color="red"><c:out value="${message}"></c:out></font></td>
				</tr>
				<tr>
					<td colspan="2"><form:errors path="userId" cssClass="error" /></td>
				</tr>
				<tr>
					<td><label for="userid">User ID:</label> </td>
					<td colspan="2">					
						<div class="form-group col-md-12">
							<input type="text" name="userId" class="form-control" id="userid" placeholder="User Id">
							<p class="text-danger"></p>
						</div>
						<%-- <form:input path="userId" /> --%>
					</td>
				</tr>
				<tr>
					<td><form:errors path="password" cssClass="error" /></td>
				</tr>

				<tr>
					<td><label for="pwd">Password:</label></td>
					<td colspan="2">
						<div class="form-group col-md-12">
							<input type="password" name="password" class="form-control" id="pwd" placeholder="Password">
							<p class="text-danger"></p>
						</div>
						
					<%-- <form:password path="password" /> --%>
					</td>
				</tr>
				<tr>
					<td><label for="username">User Name:</label></td>
					<td colspan="2"> 
						<div class="form-group col-md-12">
							<input type="text" name="userName" class="form-control" id="username" placeholder="User Name">
							<p class="text-danger"></p>
						</div>
					<%-- <form:input path="userName" /> --%>
					</td>
				</tr>
				<tr>
					<td><label for="emailid">Email Id:</label></td>
					<td colspan="2">
						<div class="form-group col-md-12">
							<input type="text" name="emailId" class="form-control" id="emailid" placeholder="Email ID">
							<p class="text-danger"></p>
						</div>
						<%-- <form:input path="userEmail" /> --%>
					</td>
				</tr>
				<tr>
					<td><label for="captchaLbl">Captcha Image</label></td>
					<td align="center">
						<div>
							<img id="captcha_id" name="imgCaptcha" src="captcha.jpg">
						</div>
					</td>
					<td align="left"><a href="javascript:;"
						title="change captcha text"
						onclick="document.getElementById('captcha_id').src = 'captcha.jpg?' + Math.random();  return false">
							<img src="images/refresh.png" />
					</a></td>
				</tr>
				<tr>
					<td colspan="2"><form:errors path="captcha" cssClass="error" /></td>
				</tr>

				<tr>
					<td><label>Enter above Image text</label></td>
					<td colspan="2">
						<div class="form-group col-md-12">
							<input type="text" name="captcha" class="form-control" id="captcha">
							<p class="text-danger"></p>
						</div>
					<%-- <form:input path="captcha" /> --%>
					</td>
				</tr>

				<tr>
					<td colspan="3" align="center">
						<button type="submit" class="btn btn-primary">Login</button>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<a href="/SpringAssignment/signup">Don't have login credentials? Register Now</a>
					</td>
				</tr>	
			</table>
		</div>

	</form:form>


</body>
</html>