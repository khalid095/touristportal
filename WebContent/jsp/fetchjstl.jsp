<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
     <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>fetchjstl</title>
</head>
<body>
<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/tourist" 
user="root" password="root" var="cn" scope="application"/>

<c:set var="strsql" value="select * from login"></c:set>
<s:query var="rs" sql="${strsql }" dataSource="${cn }"></s:query>
<table>
<tr><th>userid</th><th>userpass</th>

<c:forEach items="${rs.rows }" var="row">
<tr><th><c:out value="${row.userid }"></c:out></th>
<th><c:out value="${row.userpass }"></c:out></th></tr>
</c:forEach>
</table>
<%java.util.Date dt=new java.util.Date();
pageContext.setAttribute("d", dt);
%>
<f:formatDate value="${d }" type="date" dateStyle="medium"/>
<f:formatDate value="${d }" type="time" timeStyle="long"/>
<c:import url="https://www.gmail.com"></c:import>
</body>
</html>