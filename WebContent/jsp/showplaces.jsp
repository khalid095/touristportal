<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="tourist.dbutill.CrudOperation"%>
<%@page import="java.sql.ResultSet"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>showplace</title>
<script src="/touristportal/bootfiles/jquery-3.1.1.min.js"></script>
</head>
<body>
<%
String city_id=request.getParameter("cid");
String sql="select * from place where cityid=?";
ResultSet rs=CrudOperation.getData(sql, city_id);
%>
<table>
<tr><th>placeName</th></tr>
<%
while(rs.next())
{%>
<tr><th><%=rs.getString("placename") %></th></tr>
<%} %>

</table>
</body>
</html>