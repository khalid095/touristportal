<!DOCTYPE html>
<%@page import="tourist.dbutill.CrudOperation"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>viewdetail</title>
<script src="/touristportal/bootfiles/jquery-3.1.1.min.js"></script>
<script>
$(document).ready(function()
		{
	//alert("in fun")
	$("#userinfo").change(function(){
				var ui=this.value;
			//	alert(ci);
				$.get("/touristportal/ShowUserDetail",
				{
					uid:ui
				},
				function(data,status){
					alert(data)
					var arr=data.split(",")
					document.getElementById("txtemail").value=arr[0]
					document.getElementById("txtname").value=arr[1]
					document.getElementById("txtphoneno").value=arr[2]
				});
			});
		});





</script>
</head>
<body bgcolor="guaua">


<div style="width: 450px;height: 200px;background-color:white;margin-left: 460px">

<h1 style = "color:black;text-align: center">View City Places</h1>
  <form onsubmit="return main()">
 <table style="width: 100%;height: 100%">
        
       <tr>
				<th>user id</th>
				<th><select id="userinfo" name="userinfo">
				<option>select user</option>
				<%
				String strsql="select * from login where usertype!='admin'";
				ResultSet rs=CrudOperation.getData(strsql);
				while(rs.next())
				{
				%>
				<option value="<%=rs.getString("userid")%>"><%=rs.getString("userid") %></option><%} %>
				</select>

</table>
</form>
</div>
<div style="width: 450px;height: 400px;background-color: yellow;margin-left:460px;float: left" id="divalertmsg">
<table style="width: 100%;height: 100%">
<tr><th>email</th><th><input type="text" name="txtemail" id="txtemail"></th></tr>
<tr><th>name</th><th><input type="text" name="txtname" id="txtname"></th></tr>
<tr><th>phoneno</th><th><input type="text" name="txtphoneno" id="txtphoneno"></th></tr>

</table>
</div>
</body>
</html>