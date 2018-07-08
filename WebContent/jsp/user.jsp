<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*,tourist.dbutill.*,java.util.*,tourist.bens.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>user</title>
</head>
<body bgcolor="orange">
<div style="width: 100%;height:80px;background-color:lightblue">

<%
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
System.out.println(basePath);

HttpSession hs;
hs=request.getSession(false);
		String ui=(String)hs.getAttribute("userinfo");
		if(ui==null||hs.isNew())
		{
			response.sendRedirect("/touristportal/jsp/login.jsp");
		}
		else
		{ 
		String imgname="";
	String picsrc=null;
	
	String strsql="select picname from registration where userid=?";
	
	ResultSet rs=CrudOperation.getData(strsql,ui);
	if(rs.next())
	{
		imgname=rs.getString("picname");
		if(imgname==null)
		{
			picsrc="/touristportal/images/abc.jpg";
			
		}
		else{
			
			picsrc=basePath+ui+"/"+imgname;
	}	}%>
	
		<%@include file="/WEB-INF/logout.html" %>
		<h3 style="color: black">Hello<%=ui%></h3>
		
		
		<img src="<%=picsrc %>" style="width:50px;height: 50px" class="img-circle">
		
		<%} %>
</div>
<div style="width: 20%;height: 800px;background-color: blue;float: left">
<%@include file="/WEB-INF/menu.html" %>

</div>
<div style="width: 80%;height: 800px;background-color: green;float: left">


</div>
<div style="width: 100%;height: 120px;background-color: grey;float: left">


</div>
</body>
</html>