<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,tourist.dbutill.*,java.util.*,tourist.bens.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>senditem</title>
</head>
<body>
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
<div style="width: 80%;height: 800px;background-color: orange;float: left">
<%
		String strsql = "select * from inbox where senderid=?";
		ResultSet rs = CrudOperation.getData(strsql);
	%>
	<form method="post" action="#">
<table border="solid">
<tr><th>select</th>
    <th>receiverid</th>
    <th>subject</th>
    <th>date</th></tr>
		<tr>
			


    <tr><th colspan="4" align="center"><button type="submit" name="btninbox" value="senditem">delete</button></th></tr>
     </table>
    </form>
</div>
<div style="width: 100%;height: 120px;background-color: black;float: left">

<h1 style="color: white">created by khalid</h1>
</div>
</body>
</html>