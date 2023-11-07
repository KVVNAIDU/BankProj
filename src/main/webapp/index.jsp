<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./components/index.css" />
<title>Insert title here</title>
</head>
<body>
	<div class="outline" >
	<div></div>
		<div class="form"  >
			<form action="CustLogin" class="form-items" method="post">
				<img alt="" src="https://image.shutterstock.com/image-photo/image-260nw-2328270345.jpg">
				<br/><label for="name">Name</label><br/>
				<input id="name" name="name" type="text" /><br/>
				<label for="pass">Password</label><br/>
				<input id="pass" name="pass" type="text" /><br/>
				<div class="buttons">
				<input type="submit" value="Login" />
				<a href="./changePin" >Forgot password</a><br/>
				</div>
			</form>

		</div>
		<div class="footer">
		<a href="./empLogin">Employee login</a>
		<a href="./register">Don't have account</a>
	</div>
	</div>
	
</body>
</html>