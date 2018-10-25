<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>篮球馆</title>
</head>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body style="background:url(images/bj2.jpg);background-size:100%">
    <h2>篮球馆</h2>
 
    <table class="table">
        <tr>
            <th>篮球馆编号</th>
            <th>场地篮球馆名</th>
            <th>价格</th>
            <th>面积</th>
           
        </tr>
        <c:forEach items="${basketballs}" var="basketball">
            <tr>
                <td>${basketball.id}</td>
                <td>${basketball.name}</td>
                <td>${basketball.price}</td>
                <td>${basketball.area}</td>
            </tr>
        </c:forEach>
    </table>
      <marquee direction=left>
    <ul class="thumbnails">
  <li>
  <div class="pic"><a href="" target="_blank" title="A1篮球场"><img style="width:200px; height:200px;" src="images/da.jpg" /></a></div>
<div class="title"><a href="" target="_blank" title="A1篮球场">A1篮球场</a></div>
  </li>
  <li>
  <div class="pic"><a href="" target="_blank" title="A3篮球场"><img  style="width:200px; height:200px;" src="images/db.jpg" /></a></div>
	<div class="title"><a href="" target="_blank" title="A3篮球场">A3篮球场</a></div>
  </li>
  <li>
  	<div class="pic"><a href="" target="_blank" title="A11篮球场"><img  style="width:200px; height:200px;" src="images/dc.jpg" /></a></div>
	<div class="title"><a href="" target="_blank" title="A11篮球场">A11篮球场</a></div>
  </li>
  <li>
  <div class="pic"><a href="" target="_blank" title="A9篮球场"><img  style="width:200px; height:200px;" src="images/de.jpg" /></a></div>
<div class="title"><a href="" target="_blank" title="A9篮球场">A9篮球场</a></div>
  </li>
  <li>
  <div class="pic"><a href="" target="_blank" title="A6篮球场"><img  style="width:200px; height:200px;" src="images/df.jpg" /></a></div>
	<div class="title"><a href="" target="_blank" title="A6篮球场">A6篮球场</a></div>
  </li>
</ul>
 </marquee>				
</body>
</html>