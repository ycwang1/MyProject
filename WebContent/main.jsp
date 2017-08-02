<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>菜鸟教程</title>
</head>
<body>
<jsp:element name="xmlElement">
<jsp:attribute name="xmlElementAttr">
   属性值
</jsp:attribute>
<jsp:body>
   XML 元素的主体
</jsp:body>
</jsp:element>
<h2>include 动作实例</h2>
<jsp:include page="date.jsp" flush="true" />
<h2>javaBean 实例</h2>
<jsp:useBean id="test" class="com.run.test.PersonBean" />
<jsp:setProperty name="test" property="name" value="xiaoxinxin"/>
<p>输出信息</p>
<jsp:getProperty name="test" property="name"/>

 
</body>
</html>