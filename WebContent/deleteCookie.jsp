<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page import="java.net.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>cookie 删除实例</title>
</head>
<body>
	<%
		Cookie cookie = null;
		Cookie []cookies = null;
		cookies = request.getCookies();
		if(cookies !=null){
			for(int i=0;i<cookies.length;i++){
				cookie = cookies[i];
				if(cookie.getName().compareToIgnoreCase("name") ==0){
					cookie.setMaxAge(0);
					response.addCookie(cookie);
					out.print("删除cookie"+
					cookie.getName()+"<br>");
				}
				out.print("参数名："+cookie.getName());
				out.print("<br>");
				out.print("参数值："+URLEncoder.encode(cookie.getValue(), "utf-8")+"<br>");
				out.print("------------------------------------<br>");
			}
		}else{
			out.println("<h2>没有发现 Cookie</h2>");
		}
	
	%>
</body>
</html>