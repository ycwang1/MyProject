<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import = "java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>网站点击量实例</title>
</head>
<body>
	<%
		response.setIntHeader("Refresh", 5);

		Integer hitCount = (Integer)application.getAttribute("hitCounter");
		if(hitCount==null||hitCount==0){
			out.print("欢迎首次登录本网站");
			hitCount=1;
		}else{
			out.print("欢迎再次登录本网站");
			hitCount+=1;
		}
		application.setAttribute("hitCounter", hitCount);
	%>
	<h2>页面访问量<%=hitCount %></h2>
</body>
</html>