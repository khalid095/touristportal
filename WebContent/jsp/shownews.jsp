<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*,tourist.dbutill.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>shownews</title>
</head>
<body bgcolor="cyan">
<div style="margin-left:500px;float: left">

<% int newsid=Integer.parseInt(request.getParameter("id")); 
String strsql="select content from news where newsid=?";
ResultSet rs=CrudOperation.getData(strsql,newsid);
if(rs.next())
{%>
<%=rs.getString("content") %>
<%} %>

</div>
</body>
</html>