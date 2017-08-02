<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import = "java.io.*,java.util.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>显示当前时间和日期</title>
</head>
<body>
<h1>显示当前日期和时间</h1>
	<%
		Date date = new Date();
		out.print("<h2 align = \"center\">"+date.toString()+"</h2>");
	%>
</body>
</html>