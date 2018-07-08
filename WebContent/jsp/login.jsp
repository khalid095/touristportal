<%@page import="java.util.ResourceBundle"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<script src="/touristportal/js/validation.js"></script>
<script>
	function main() {
		var userid = document.getElementById("txtuserid").value;
		var userpass = document.getElementById("txtuserpass").value;
		//var userpass=document.getElementByLen("txtuserpass").value;
		var b = true;
		//alert(userid);
		if (checkEmpty(userid) == false) {
			//alert("userid needed");
			document.getElementById("msg").innerHTML = "required userid ";
			b = false;

		}

		if (checkEmpty(userpass) == false) {
			// alert("userpass needed");
			document.getElementById("msg1").innerHTML = "required userpass";
			b = false;

		}

		if (checkLen(userpass) == false) {
			//alert("password must be 8 charecter");
			document.getElementById("msg2").innerHTML = "password must be 8 charectar";
			b = false;
		}

		return b;
	}
	var arr = new Array(2);
	arr[0] = "lightyellow";
	arr[1] = "red";
	var idx = 0;
	function changeColor() {
		document.getElementById("fmt").style.color = arr[idx];

		idx++;
		if (idx > 1) {
			idx = 0;
		}
		setTimeout("changeColor()", 1000);
	}
</script>
</head>
<body onload="changeColor(this.value)">
<%
ResourceBundle rb=ResourceBundle.getBundle("tourist.dbinfo.details");
String msg=rb.getString("app.tagline");

%>
<h1 style="color: red;text-align: center"><%=msg %></h1>
	<%
		String info = (String) request.getAttribute("info");
	%>
	<form action=""></form>
	<div
		style="width: 500px; height: 300px; background-color: lightgrey; text-align: center; float: left; margin-left: 400px; margin-top: 200px">
		<h1 id="fmt" style="color: black">Login Form</h1>
		<form method="post" action="/touristportal/Login"
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
		<h5 id="msg" style="color: red; text-align: center;"></h5>
		<h5 id="msg1" style="color: red; text-align: center;"></h5>
		<h5 id="msg2" style="color: red; text-align: center;"></h5>
	</div>
</body>
</html>