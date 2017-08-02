<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import = "java.io.*,java.util.*" %>
<%
	//获取sesson创建时间
	Date currentTime = new Date(session.getCreationTime());
	//获取上次访问时间
	Date lastAccessTime = new Date(session.getLastAccessedTime());
	String title = "再次访问百度";
	Integer visitCount = new Integer(0);
	String visitCountKey = new String("visitCount");
	String userIdKey = new String("userId");
	String userId = new String("ABCD");
	//检测网页是否由新的用户访问
	if(session.isNew()){
		title = "首次访问百度";
		session.setAttribute(userIdKey, userId);
		session.setAttribute(visitCountKey, visitCount);
	}else{
		visitCount = (Integer)session.getAttribute(visitCountKey);
		visitCount+=1;
		userId = (String)session.getAttribute(userIdKey);
		session.setAttribute(visitCountKey, visitCount);
	}
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Session 跟踪</title>
</head>
<body>
	<h1>Session 跟踪</h1>
	<table border = "1" align="center">
		<tr bgcolor="#949494">
			<th>session信息</th>
			<th>值</th>
		</tr>
		<tr>
			<td>id</td>
			<td><% out.print(session.getId()); %></td>
		</tr>
		<tr>
			<td>创建时间</td>
			<td><% out.print(currentTime); %></td>
		</tr>
		<tr>
			<td>最后访问时间</td>
			<td><% out.print(lastAccessTime); %></td>
		</tr>
		<tr>
			<td>用户id</td>
			<td><% out.print(userId); %></td>
		</tr>
			<tr>
			<td>访问次数</td>
			<td><% out.print(visitCount); %></td>
		</tr>
	</table>

</body>
</html>