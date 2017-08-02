<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.io.*,java.util.*,javax.servlet.*,javax.servlet.http.*" %>
    <%
    	response.setContentType("text/html");
    	response.setHeader("Content-Language", "es");
        String title = "En Espa?ol";

    	//获取客户端本地化信息
    	Locale locale = request.getLocale();
    	String language =locale.getLanguage();
    	String country = locale.getCountry();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>jsp国际化</title>
</head>
<body>
	<center>
		<h1>En Espa?ol国际化</h1>
	</center>
	<p align='center'>
		<%
			out.print("language="+language+"<br/>");
			out.print("country="+country+"<br/>");
		%>
	</p>
</body>
</html>