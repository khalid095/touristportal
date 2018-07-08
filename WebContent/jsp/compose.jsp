<%@page import="tourist.dbutill.CrudOperation"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,tourist.dbutill.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>compose</title>
</head>
<body bgcolor="red">
<div style="width: 100%;height:80px;background-color:yellow">

<% HttpSession hs;
hs=request.getSession(false);
		String ui=(String)hs.getAttribute("userinfo");
		if(ui==null||hs.isNew())
		{
			response.sendRedirect("/touristportal/jsp/login.jsp");
		}
		else
		{ %>
		<h3 style="color: red">hello<%=ui%></h3>
		<%} %>
		<%@include file="/WEB-INF/logout.html" %>
</div>
<div style="width: 20%;height: 800px;background-color: blue;float: left">
<%@include file="/WEB-INF/menu.html" %>

</div>
<div style="width: 80%;height: 800px;background-color: green;float: left">

<%
String strsql="select * from registration where userid=?";
ResultSet rs=CrudOperation.getData(strsql,ui);
if(rs.next())
{%>
<form method="post" action="/touristportal/Compose">
<table>
<tr><th>Receiverid</th><th><input type="text" name="txtrecid" value="<%=rs.getString("receiverid") %>"></th></tr>
<tr><th>Subject</th><th><textarea type="text" name="txtsub" value="<%=rs.getString("subject") %>"></textarea></th></tr>
<tr><th>Message</th><th><textarea type="text" name="txtmassage" value="<%=rs.getString("massage") %>"></textarea></th></tr>
 <tr><th><button type="submit">submit</button></th></tr>
</table>
<%} %>

</div>
<div style="width: 100%;height: 120px;background-color: white;float: left">


</div>
</body>
</html>