<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,tourist.dbutill.*,java.util.*,tourist.bens.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delete</title>
</head>
<body>
	<%
		String strsql = "select * from login where usertype!='admin'";
		ResultSet rs = CrudOperation.getData(strsql);
/* 
		ArrayList<Account> list = CrudOperation.fetchData(strsql); */
	%>
<form action="/touristportal/DeleteUser" method="post">
	<table border="2">
		<tr>
			<th>select</th>
			<th>userid</th>
			<th>userpass</th>
			<th>role</th>
		</tr>



		<%
			while (rs.next()) {
				String userid = rs.getString("userid");
		%> 
		<tr>
			<th><input type="checkbox" name="chk" value="<%=userid%>"></th>
<th><%=rs.getString("userid")%></th>
<th><%=rs.getString("userpass")%></th>
<th><%=rs.getString("usertype")%></th>

</tr>

<%} %>
<tr><th colspan="4" align="center"><button type="submit">delete</button></th></tr>
</table>
</form>
</body>
</html>