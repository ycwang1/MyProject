<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<p>今天的日期是<%=(new java.util.Date()).toLocaleString()%></p>
<h2>使用get方法读取数据</h2>
<%--
// 解决中文乱码的问题
String name = new String((request.getParameter("name")).getBytes("ISO-8859-1"),"UTF-8");
--%>
	<ul>
		<li>
			<p>
				<b>站点名:</b>
				<%--=name --%>
			</p>
		</li>	
		<li>
			<p>
				<b>网址:</b>
				<%--=request.getParameter("url") --%>
			</p>
		</li>	
	</ul>
	<h1>从复选框中读取数据</h1>
	<ul>
		<li>
			<p>
				<b>
					Geogle是否选中
				</b>
				<%=request.getParameter("geogle") %>
			</p>
		</li>
		<li>
			<p>
				<b>
					tabao是否选中
				</b>
				<%=request.getParameter("taobao") %>
			</p>
		</li>
		<li>
			<p>
				<b>
					菜鸟教程是否选中
				</b>
				<%=request.getParameter("runoob") %>
			</p>
		</li>
	</ul>
	<table width="100%" border="1" align="center">
<tr bgcolor="#949494">
<th>参数名</th><th>参数值</th>
	<%
		Enumeration paramNames = request.getParameterNames();
		while(paramNames.hasMoreElements()){
			String paramName = (String)paramNames.nextElement();
			out.print("<tr><td>"+paramName +"</td>");
			String paramValue = request.getParameter(paramName);
			out.print("<td>"+paramValue+"</td></tr>");
		}
	%>
</table>
</body>
</html>