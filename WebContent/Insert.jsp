<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.io.*,java.util.*,javax.servlet.*,javax.servlet.http.*" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>jsp 插入数据库实例</title>
</head>
<body>
	<sql:setDataSource var ="test" driver ="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/test?useUnicode=true&characEncoding=utf-8"
		user="root" password="ROOT"
	/>
	<sql:update dataSource ="${test}" var="result">
	insert into websites(name,url,alexa,country) values('谷歌','www.geogle.com','54','CN');
	</sql:update>
	<sql:query dataSource="${test}" var ="result" >
	select * from websites;
	</sql:query>
	<table border="1" width="100%">
		<tr>
			<th>ID</th>
			<th>网址名称</th>
			<th>网站地址</th>
		</tr>
	<c:forEach var="row" items = "${result.rows}" >
		<tr>
			<td><c:out value="${row.id}"/></td>
			<td><c:out value="${row.name}"/></td>
			<td><c:out value="${row.url}"/></td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>