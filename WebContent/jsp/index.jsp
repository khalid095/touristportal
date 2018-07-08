<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*,tourist.dbutill.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>home</title>
<script > 
var arr=new Array(2);
arr[0]="/touristportal/images/gyy.jpg";
arr[1]="/touristportal/images/wer.jpg";
var idx=0;
function changeImage()
{
document.getElementById("img1").src=arr[idx];


idx++;
if(idx>1)
	{
	idx=0;
	}
setTimeout("changeImage()",2000);
}
</script>
<head>                                                                                          
<body onload="changeImage()">                                                
<div style="width: 100%;height: 60px;background-color: lime;float:left">

<div style="width:100px;background-color: red;margin-right: 20px;float:left">
<a href="/touristportal/html/services.html">services</a>
</div>
<div style="width:100px;background-color: red;margin-right: 20px;float:left">
<a href="/touristportal/html/aboutus.html">aboutus</a>
</div>

<div style="width:100px;background-color: red;margin-right: 20px;float:left">
<a href="/touristportal/html/registration.html">registration</a>
</div>

<div style="width:100px;background-color: red;margin-right: 20px;float:left">
<a href="/touristportal/jsp/feedback.jsp">feedback</a>
</div>

</div>

<div style="width: 40%;height: 700px;background-color: white;float:left">

<div style="width:100%;height:350px;background-color:blue;float:left">
<img  src="/touristportal/images/pic2.jpg" style="width:100%;height:100%">
</div>

<div style="width:100%;height:350px;background-color:green;float:left">
<ul style="list-style-type:none">

<% String strsql="select newsid,subject from news order by date desc";
ResultSet rs=CrudOperation.getData(strsql);
while(rs.next()){
	int nid=rs.getInt("newsid");
	%>
	<li><a href="/touristportal/jsp/shownews.jsp?id=<%=nid%>"style="text-decoration:none"><%=rs.getString("subject")%></a></li>
<%} %>
</ul>

</div>
</div>

<div style="width: 60%;height: 700px;background-color: orange;float:left">
<div style="width: 100%;height: 350px;background-color: white;float:left">
<img  src="/touristportal/images/hjh.jpg" style="width:70%;height:100%" id="img1">
</div>
</div>

<div style="width: 100%;height: 45px;background-image:url('/touristportal/images/pic2.jpg');float:left">
    Created By Khalid Masood

</div>
</body>
</html>