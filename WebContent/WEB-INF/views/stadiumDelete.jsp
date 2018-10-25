<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除场地信息</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/stadiumDelete.do">
	场地编号： ${stadium.id}<input type="hidden" name="id" value="${stadium.id}"><br>
	场地名：<input type="text" name="name" value="${stadium.name}"><br>
	面积：<input type="text" name="age"  value="${stadium.area}"><br>
	时间： <input type="text" name="time" value="${stadium.time}"><br>
        价格：<input type="text" name="price" value="${stadium.price}"><br>
	<input type="submit" value="提交">
	<input type="reset" value="重写">
	<c:if test="${not empty info}">
		${info}
	</c:if>
</form>
</body>
</html>