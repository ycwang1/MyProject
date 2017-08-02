<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  	<%@page import="java.io.*,java.util.*,javax.servlet.http.*,javax.servlet.*" %>
  	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
  	<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix ="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>jsp删除记录操作</title>
</head>
<body>
	<!-- 连接数据库，根据个人情况配置 -->
	<sql:setDataSource var="test" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/test?useUnicode=true&characEncoding=utf-8"
		user="root" password="ROOT"
	/>
	<!-- 删除数据操作 -->
	<sql:update dataSource="${test}" var="count">
		DELETE FROM WEBSITES WHERE ID=?;
	<sql:param value="${5}"/>
	</sql:update>
	<sql:query dataSource="${test}" var="result">
		select * from websites;
	</sql:query>
	<h1>JSP 数据库实例 - 菜鸟教程</h1>
	
	<table border="1" width="100%">
		<tr>
			<th>ID</th>
			<th>网站名称</th>
			<th>网址</th>
		</tr>
	<c:forEach var="row" items = "${result.rows}" >
			<tr>
				<td><c:out value="${row.id}"></c:out></td>
				<td><c:out value="${row.name}"></c:out></td>
				<td><c:out value="${row.url}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>