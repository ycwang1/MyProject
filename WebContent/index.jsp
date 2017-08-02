<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜鸟教程</title>
</head>
<body>

<%! int i= 3; %>
	<%
	out.println("your address id:"+request.getRemoteAddr());
	%>
	<p>今天的日期是<%=(new java.util.Date().toLocaleString()) %></p>
	<% if(i==3){
		out.println("今天是周三");
	} %>>

</body>
</html>