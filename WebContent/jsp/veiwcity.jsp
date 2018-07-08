<!DOCTYPE html>
<%@page import="tourist.dbutill.CrudOperation"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>viewcity</title>
<script src="/touristportal/bootfiles/jquery-3.1.1.min.js"></script>
<script>
$(document).ready(function()
		{
	//alert("in fun")
	$("#cityinfo").change(
			function(){
				var ci=this.value;
			//	alert(ci);
				$.get("/touristportal/jsp/showplaces.jsp",
				{
					cid:ci
				},
				function(data,status){
					$("#divalertmsg").html(data);
					$("#divalertmsg").show();
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
				<th>City</th>
				<th><select id="cityinfo" name="cityinfo">
				<option>select city</option>
				<%
				String strsql="select * from city";
				ResultSet rs=CrudOperation.getData(strsql);
				while(rs.next())
				{
				%>
				<option value="<%=rs.getString("cityid")%>"><%=rs.getString("cityname") %></option><%} %>
				</select>

</table>
</form>
</div>
<div style="width: 450px;height: 400px;background-color: yellow;margin-left:460px;display:none;float: left" id="divalertmsg"></div>
</body>
</html>