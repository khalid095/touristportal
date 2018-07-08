<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>logincheck</title>
</head>
<body>
<c:set var="ui" value="${param.txtuserid}"></c:set>
<c:set var="upass" value="${param.txtuserpass}"></c:set>
<%-- <c:out value="${ui}"></c:out>
<c:out value="${upass}"></c:out> --%>
<%-- <c:out value="${ui}"> --%>
<c:if test="${ui=='khalid' and upass=='lucknoww' }">
<c:redirect url="/html/services.html"></c:redirect>


</c:if>

</body>
</html>