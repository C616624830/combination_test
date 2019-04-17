<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CSS/signUpstyle.css" />
<meta charset="ISO-8859-1">
<title>Sign Up</title>
</head>
<body style="margin: 0 !important; padding: 0 !important; height: 100%;">
<section class="container">
	<!-- <div class="LoginHead">Login Page</div> -->
	
	<form method="post" action="registration.jsp">
			<p class="Welcome">Sign Up</p>
		<div class="login">
			<p>User Name</p>
			<input type="text" name="login_name" placeholder="Enter Username">
			<p>Email</p>
			<input type="text" name="email" placeholder="Enter Email">
			<p>Password</p>
			<input type="password" name="password" placeholder="Enter Password">
			<p><input type="submit" value="Sign Up"></p>
			<p class="signUp">Already registered? <a href="login.jsp">Log-in</a></p>
		</div>
	</form>
</section>
</html>