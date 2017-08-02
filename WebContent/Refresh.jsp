<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>自动刷新实例</title>
</head>
<body>
<%
	//设置每5秒刷新一次
	response.setIntHeader("Refresh", 5);
	// 获取当前时间
	Calendar date = new GregorianCalendar();
	String am_pm;
	int hour = date.get(Calendar.HOUR);
	int minute = date.get(Calendar.MINUTE);
	int second = date.get(Calendar.SECOND);
	if(date.get(Calendar.AM_PM)==0){
		am_pm = "am";
	}else{
		am_pm = "pm";
	}
	   String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
	   out.println("当前时间为: " + CT + "\n");
	%>
</body>
</html>