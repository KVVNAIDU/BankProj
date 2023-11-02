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
	<div class="form">
		<div >
			<form action="/CustLogin" class="form-items">
				<img alt="" src="https://image.shutterstock.com/image-photo/image-260nw-2328270345.jpg">
				<br/><label for="name">Name</label><br/>
				<input name="name" type="text" /><br/>
				<label for="pass">Password</label><br/>
				<input name="pass" type="text" /><br/>
				<div class="buttons">
				<input type="submit" value="Login" />
				<a href="./changePin" >Forgot password</a><br/>
				</div>
			</form>
		</div>
	</div>
	<div class="footer">
		<a href="./empLogin">Employee login</a>
		<a href="./register">Don't have account</a>
	</div>
</body>
</html>