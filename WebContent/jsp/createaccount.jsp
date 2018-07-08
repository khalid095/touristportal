<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>feedback</title>
<script src="/touristportal/js/validation.js"></script>
<script type="text/javascript">
function main()
{
	var b=true;
var userid=document.getElementById("txtuserid").value;
var userpass=document.getElementById("txtuserpass").value;
var position=document.getElementById("cmbposition").value;
//alert(userid);
 if(checkEmpty(useridid)==false)
	{
	//alert("userid needed");
	document.getElementById("msg").innerHTML=" require userid";
	b=false;
	
	}
 if(checkEmpty(userpass)==false)
	{
	//alert("userid needed");
	document.getElementById("msg1").innerHTML=" require pass";
	b=false;
	
	}
 if(checkCombo(position)==false)
	{
	//alert("userid needed");
	document.getElementById("msg2").innerHTML="select position";
	b=false;
	
	}
return b;

}




</script>
</head>
<body bgcolor="lightblue">
<div style="width: 400px;height: 320px;background-color: lightgreen;margin-left: 400px;margin-top:150px;float: left">
<h1 style="color: black;text-align:center">Create Account</h1>
<form method="post" action="/touristportal/CreateAccount" onsubmit="return main()">
<table style="width: 100%;height: 100%;border:5">

<tr><th>userid</th><th><input type="text" name="txtuserid" id="txtuserid"></th></tr>
<tr><th>userpass</th><th><input type="text" name="txtuserpass" id="txtuserpass"></th></tr>

<tr><th>usertype</th>
<th><select id="cmbusertype" name="cmbusertype">
<option>select post</option>
<option>manager</option>
<option>guide</option>
</select></th></tr>


<tr><th colspan=2 align="center"><button type="submit">submit</button></th></tr>

</table>
</form>
<h3 id="msg" style="color: red;text-align: center;"></h3>
<h3 id="msg1" style="color: red;text-align: center;"></h3>
<h3 id="msg2" style="color: red;text-align: center;"></h3>
</div> 
</body>
</html>