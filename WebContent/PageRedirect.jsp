<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import = "java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>jsp重定向</title>
</head>
<body>
<%
	String site =new String("http://www.baidu.com");
	String site1 = "message.jsp";
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site);
%>
</body>
</html>