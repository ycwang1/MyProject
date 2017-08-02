<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>jsp bean对象实例</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
	<p>日期位：<%=date %>></p>
	<jsp:useBean id="student" class = "com.run.test.Students">
		<jsp:setProperty name = 'student' property='firstName' value='王'/>
		<jsp:setProperty name = 'student' property='lastName' value='强'/>
		<jsp:setProperty name = 'student' property='age' value='14'/>
	</jsp:useBean>
	<p>学生的姓为:
		<jsp:getProperty name="student" property="firstName"/>
	</p>
	<p>学生的名字为:
		<jsp:getProperty name="student" property="lastName"/>
	</p>
	<p>学生的年龄为:
		<jsp:getProperty name="student" property="age"/>
	</p>
</body>
</html>