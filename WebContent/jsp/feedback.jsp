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
var emailid=document.getElementById("txtemailid").value;
var date=document.getElementById("txtdate").value;
var text=document.getElementById("txtext").value;
//alert(userid);
 if(checkEmpty(emailid)==false)
	{
	//alert("userid needed");
	document.getElementById("msg").innerHTML=" require email";
	b=false;
	
	}
 if(checkEmpty(text)==false)
	{
	//alert("userid needed");
	document.getElementById("msg1").innerHTML=" require text";
	b=false;
	
	}
 if(checkEmpty(date)==false)
	{
	//alert("userid needed");
	document.getElementById("msg2").innerHTML="require date";
	b=false;
	
	}
return b;

}




</script>
</head>
<body>
<div style="width: 400px;height: 320px;background-color: lightgreen;margin-left: 400px;margin-top:150px;float: left">
<h1 style="color: black;text-align:center;font-size: 30px">Feedback</h1>
<form method="post" action="/touristportal/Feedback" onsubmit="return main()">
<table style="width: 100%;height: 100%;border:5">

<tr><th>Email id*</th><th><input type="text" name="txtemailid" id="txtemailid"></th></tr>
<tr><th>Name</th><th><input type="text" name="txtname" id="txtname"></th></tr>
<tr><th>Text*</th><th><textarea  id="txtext" name="txtext" rows="3" cols="20"></textarea></th></tr>
<tr><th>Date*</th><th><input type="date" name="txtdate" id="txtdate">

<tr><th colspan=2 align="center"><button type="submit">submit</button></th></tr>

</table>
</form>
<h3 id="msg" style="color: red;text-align: center;"></h3>
<h3 id="msg1" style="color: red;text-align: center;"></h3>
<h3 id="msg2" style="color: red;text-align: center;"></h3>
</div> 
</body>
</html>