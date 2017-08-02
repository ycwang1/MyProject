<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c' %>
    <%@page import="java.util.logging.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Logger实例</title>
</head>
<body>
	<% Logger logger = Logger.getLogger(this.getClass().getName());
	%>
	<c:forEach var ='counter'  begin='1' end='10' step='1'> 
		<c:set var='mycount' value="${counter-5}"/>
		<c:out value="${mycount}"></c:out>
		<%String message = "counter="
			+pageContext.findAttribute("counter")
			+"mycount="
			+pageContext.findAttribute("mycount");
		logger.info(message);
				%>
	</c:forEach>
</body>
</html>