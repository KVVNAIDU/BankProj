<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style type="text/css">
.operations{
	    display: grid;
    margin: 39px;
    grid-template-columns: repeat(2,260px);
    background-color: wheat;
    grid-gap: 21px;
	
	
}
.operations button{
	color:black;
	background : lightblue;
	 
}
.operations button:hover{
    background: lch(58 122.21 311.37);
    scale: 1.1;

}

</style>
</head>
<body>
	<jsp:include page="HeadSection.jsp"></jsp:include>
	<div>Welcome to the bubble bank</div>
	<h4>hell </h4>
	<div class="operations">
	
	<button>Change Pin</button>
	<button>Withdraw</button>
	<button>profile</button>
	<button>Deposit</button>
	<button>Home</button>
	<button>Transfer</button>
	
	</div>
</body>
</html>