<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.io.*,java.util.*,java.text.SimpleDateFormat"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>时间日期比较实例</title>
</head>
<body>
	<h1>显示当前日期时间</h1>
	<%
		Date date = new Date();
		SimpleDateFormat sdf = new  SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		out.print("<h2>现在时间"+sdf.format(date)+"</h2>");
	%>
</body>
</html>