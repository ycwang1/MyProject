<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import = "java.io.*,java.util.*,javax.servlet.http.*,javax.servlet.*" %>
    <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
    <%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>jsp连接数据库select 操作</title>
</head>
<body>
	<!--
	JDBC 驱动名及数据库 URL 
	数据库的用户名与密码，需要根据自己的设置
	useUnicode=true&characterEncoding=utf-8 防止中文乱码
	 -->
 	<sql:setDataSource var="snapshot" driver = "com.mysql.jdbc.Driver"
 		url="jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8"
 		user = "root" password="ROOT"/>
 	<sql:query dataSource="${snapshot}" var = "result">
 		select * from websites;
 	</sql:query>
 	<h1>jsp数据库实例</h1>
 	<table border = "1" width="100%">
 		<tr>
 			<th>ID</th>
 			<th>站点名</th>
 			<th>站点地址</th>
 		</tr>
 		<c:forEach var ="row" items="${result.rows}">
 			<tr>
 				<td><c:out value = "${row.id}"/></td>
 				<td><c:out value = "${row.name}"/></td>
 				<td><c:out value = "${row.url}"/></td>
 			</tr>
 		</c:forEach>
 	</table>
</body>
</html>