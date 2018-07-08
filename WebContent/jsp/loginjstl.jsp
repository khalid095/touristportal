<%@page import="java.util.ResourceBundle"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<script src="/touristportal/js/validation.js"></script>

</head>
<body onload="changeColor(this.value)">

	
	
	
	<div
		style="width: 500px; height: 300px; background-color: lightgrey; text-align: center; float: left; margin-left: 400px; margin-top: 200px">
		<h1 id="fmt" style="color: black">Login Form</h1>
		<form method="post" action="/touristportal/jsp/logincheck.jsp"
			onsubmit="return main()">
			<table style="width: 100%; height: 100%;">



				<tr>
					<th>User id:</th>
					<th><input type="text" name="txtuserid" id="txtuserid"
						placeholder="enter user id"></th>
				</tr>

				<tr>
					<th>Userpass:</th>
					<th><input type="password" name="txtuserpass" id="txtuserpass"
						placeholder="enter userpass"></th>
				</tr>

				<tr>
					<th colspan=2 align="center"><button type="submit">submit</button></th>
				</tr>


			</table>
		</form>

	</div>
</body>
</html>