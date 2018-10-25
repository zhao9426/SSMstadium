<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加场地</title>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <title>添加场地</title>
</head>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>
<form  class="form-horizontal" method="post" action="${pageContext.request.contextPath}/stadiumAdd.do"  enctype="multipart/form-data" >
	场地号：<input type="text" name="id"><br>
	场地名：<input type="text" name="name"><br>
	面积：  <input type="text" name="area"><br>
	时间： <input type="text" name="time"><br>
        价格：<input type="text" name="price"><br>
        选择照片：<input type="file" name="photo" id="photo"/><br>
	     <input type="submit" value="提交">
	     <input type="reset" value="重写">
	<c:if test="${not empty info}">
		${info}
	</c:if>
</form>
	<a href="${pageContext.request.contextPath}/stadiumList.do">场地列表</a>
</body>
</html>