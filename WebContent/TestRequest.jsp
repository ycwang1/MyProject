<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>jsp隐式对象实例</title>
</head>
<body>
<h2>>http 头部请求实例</h2>
	<table width="100%" border="1" algen = "center"> 
		<tr bgcolor="#949494">
			<th>HeaderName</th>
			<th>HearderValues</th>
		</tr>
		<%
			Enumeration  headerNames = request.getHeaderNames();
			while(headerNames.hasMoreElements()){
				String paramName = (String)headerNames.nextElement();
				out.print("<tr><td>"+paramName+"</td>\n");
				String paramValue = request.getHeader(paramName);
			    out.println("<td> " + paramValue + "</td></tr>\n");
			}
		%>	
	</table>
</body>
</html>