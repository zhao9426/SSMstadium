<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>健身房</title>
</head>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body style="background:url(images/bj4.jpg);background-size:100%">
    <h2>健身房</h2>
 
    <table class="table">
        <tr>
            <th>健身房编号</th>
            <th>场地健身房名</th>
            <th>价格</th>
            <th>面积</th>
           
        </tr>
        <c:forEach items="${gymnasiums}" var="gymnasium">
            <tr>
                <td>${gymnasium.id}</td>
                <td>${gymnasium.name}</td>
                <td>${gymnasium.price}</td>
                <td>${gymnasium.area}</td>
            </tr>
        </c:forEach>
    </table>
      <marquee direction=left>
    <ul class="thumbnails">
  <li>
  <div class="pic"><a href="" target="_blank" title="A3-103健身房"><img style="width:200px; height:200px;" src="images/ca.jpg" /></a></div>
<div class="title"><a href="" target="_blank" title="A3-103健身房">A3-103健身房</a></div>
  </li>
  <li>
  <div class="pic"><a href="" target="_blank" title="A3-109健身房"><img  style="width:200px; height:200px;" src="images/cb.jpg" /></a></div>
	<div class="title"><a href="" target="_blank" title="A3-109健身房">A3-109健身房</a></div>
  </li>
  <li>
  	<div class="pic"><a href="" target="_blank" title="A7-205健身房"><img  style="width:200px; height:200px;" src="images/cc.jpg" /></a></div>
	<div class="title"><a href="" target="_blank" title="A7-205健身房">A7-205健身房</a></div>
  </li>
  <li>
  <div class="pic"><a href="" target="_blank" title="A10-109健身房"><img  style="width:200px; height:200px;" src="images/cd.jpg" /></a></div>
<div class="title"><a href="" target="_blank" title="A10-109健身房">A10-109健身房</a></div>
  </li>
  <li>
  <div class="pic"><a href="" target="_blank" title="A2-309健身房"><img  style="width:200px; height:200px;" src="images/ce.jpg" /></a></div>
	<div class="title"><a href="" target="_blank" title="A2-309健身房">A2-309健身房</a></div>
  </li>
</ul>
 </marquee>				
</body>
</html>