<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>场地列表</title>
</head>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>
    <h2>场地列表</h2>
 
    <table class="table">
        <tr>
            <th>场地编号</th>
            <th>场地名</th>
            <th>价格</th>
            <th>时间</th>
            <th>面积</th>
             <th>场地图片</th>
            <th>修改</th>
        </tr>
        <c:forEach items="${stadiums}" var="stadium">
            <tr>
                <td>${stadium.id}</td>
                <td>${stadium.name}</td>
                <td>${stadium.price}</td>
                <td>${stadium.time}</td>
                <td>${stadium.area}</td>
                 <td>
                 <img src="${pageContext.request.contextPath}/photo/${stadium.id}.${stadium.photoPath}" alt="图片">
                 </td>
                <td><a href="${pageContext.request.contextPath}/stadiumUpdateView.do?id=${stadium.id}">修改</a>
                <a href="${pageContext.request.contextPath}/stadiumDelete.do?id=${stadium.id}">删除</a></td>
            </tr>
        </c:forEach>
    </table>
    <a href="${pageContext.request.contextPath}/stadiumAddView.do">添加场地</a>
</body>
</html>