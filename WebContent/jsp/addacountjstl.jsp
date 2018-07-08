<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>addacjstl</title>
</head>
<body>
<c:catch var="exp">
<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/tourist" 
user="root" password="root" var="cn" scope="application"/>
<s:update dataSource="${cn }" var="rw">
insert into login(userid,userpass,usertype) values(?,?,?)
<s:param value="${param.txtuserid }"></s:param>
<s:param value="${param.txtuserpass }"></s:param>
<s:param value="${param.cmbusertype}"></s:param>
</s:update>
<c:if test="${rw>0 and exp==null }">
<c:out value="row inserted"></c:out>
</c:if>

</c:catch>
</body> 
</html>