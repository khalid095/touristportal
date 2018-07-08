<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,tourist.dbutill.*,java.util.*,tourist.bens.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>veiwaccount</title>
</head>
<body>
<%
String strsql="select * from login where usertype!='admin'";

ArrayList<Account>list=CrudOperation.fetchData(strsql);

%>

<table border="2">
<tr><th>userid</th><th>userpass</th><th>role</th></tr>



<%
for(int i=0;i<list.size();i++)
{
	Account ac=list.get(i);
	%>
<tr><th><%=ac.getUserid() %></th><th><%=ac.getUserpass() %>
<th><%=ac.getUsertype() %>
</tr>

<%} %>
</table>
</body>
</html>