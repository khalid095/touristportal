<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>viewmedicine</title>
<script src="/touristportal/js/validation.js"></script>
<script type="text/javascript">

function main()
{
	
     var b=true;
	 var medname= document.getElementById("txtmed").value;
	 var desease= document.getElementById("txtdesease").value;
	 
	// alert(userid);
	
	if(checkEmpty(medname)==false)
		{
		//alert("userid needed");
		document.getElementById("msg").innerHTML="required med name";
		b=false;
		
		}
	if(checkEmpty(desease)==false)
	{
	//alert("userpass needed");
	document.getElementById("msg1").innerHTML="required desease";
	b=false;
	
	}
return b;
}


</script>
</head>
<body bgcolor="lightgreen">
<div style="width: 40%;height: 400px;background-color:white;margin-left:400px;margin-top:120px;float:center">
<h1 style="color: black;text-align: center">Medicines</h1>
<form method="post" action="/touristportal/MedicineDetails" onsubmit="return main()">
<table style="width:100%;height:80%;border: solid">
<tr><th>med name</th><th><input type="text" id="txtmed" name="txtmed"></th></tr>
<tr><th>desease</th><th><input type="text" id="txtdesease" name="txtdesease"></th></tr>

<tr><th colspan="2"><button type="submit">veiw medicine</button></th></tr>



</table>
</form>
<h5 id="msg" style="color: black;text-align: center;"></h5>
<h5 id="msg1" style="color: black;text-align: center;"></h5>
</div>
</body>
</html>