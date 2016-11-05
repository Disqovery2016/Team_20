<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>
<link rel="stylesheet" href="form-basic.css">
<style type="text/css">
.testbox {
  	padding: 20px;
  	margin: 20px auto;
  	width: 343px; 
  	height: 300px;  
  	border-radius: 8px/7px; 
  	background-color: #ebebeb; 
  	box-shadow: 1px 2px 5px;}
  	
html{
	background: url(img/header-bg.jpg) no-repeat center;
	background-size: cover;
    background-color: #f3f3f3;
}
</style>
</head>
<body>
<br />
<br />	
	<form class="form-basic">
	<div class="form-title-row">
		<%=request.getAttribute("message")%>
	</div>
	<br />
<br />	<br />
<br />	
	<div class="form-title-row">
		<a href="index.html"><input type="button" value="Home" /></a>
	</div>
	</form>
	</div>
</body>
<br />
<br />	<br />
<br />	<br />
<br />	<br />
<br />	<br />
<br />	
</html>