<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import ="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>HTTP响应头程序示例</title>
</head>
<body>
<h2>自动刷新实例</h2>
<%
	response.setIntHeader("Refresh", 5);
	Calendar calendar = new GregorianCalendar();
	String am_pm;
	int hour =calendar.get(Calendar.HOUR);
    int minute = calendar.get(Calendar.MINUTE);
    int second = calendar.get(Calendar.SECOND);
    if(calendar.get(Calendar.AM_PM)==0){
    	am_pm = "AM";
    }else{
    	am_pm = "PM";
    }
    String ct = hour+":"+minute+":"+second+" "+am_pm;
    out.print("现在时间是："+ct);
%>
<form action="date.jsp" method="post">
站点名: <input type="text" name="name">
<br />
网址: <input type="text" name="url" />
<input type="submit" value="提交" />
</form>
</body>
</html>