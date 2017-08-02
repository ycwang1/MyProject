<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>life.jsp</title>
</head>
<body>
	<%!
		private int initVar = 0;
		private int serviceVar = 0;
		private int destroyVar = 0;
	%>
	<%!
		public void jspInit(){
			initVar++;
			System.out.println("jspInit(): JSP被初始化了"+initVar+"次");
		}
		public void jspDestory(){
			destroyVar++;
		    System.out.println("jspDestroy(): JSP被销毁了"+destroyVar+"次");

		}
	%>
	<%
		serviceVar++;
		System.out.println("_jspService(): JSP共响应了"+serviceVar+"次请求");
		
		String content1 = "初始化次数"+initVar;
		String content2="响应客户请求次数 : "+serviceVar;
		String content3="销毁次数 : "+destroyVar;
	%>
	<h1>jsp生命周期</h1>
	<h2><%=content1 %></h2>
		<h2><%=content2 %></h2>
	
		<h2><%=content3 %></h2>
	
</body>
</html>