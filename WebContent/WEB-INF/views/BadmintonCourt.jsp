<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>羽毛球馆</title>
</head>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body  style="background:url(images/bj1.jpg);background-size:100%">
    <h2>羽毛球馆</h2>
 
    <table class="table">
        <tr>
            <th>羽毛球馆编号</th>
            <th>场地羽毛球球馆名</th>
            <th>价格</th>
            <th>面积</th>
           
        </tr>
        <c:forEach items="${badmintons}" var="badminton">
            <tr>
                <td>${badminton.id}</td>
                <td>${badminton.name}</td>
                <td>${badminton.price}</td>
                <td>${badminton.area}</td>
            </tr>
        </c:forEach>
    </table>
    <div>
     <marquee direction=left>
    <ul class="thumbnails">
  <li>
  <div class="pic"><a href="" target="_blank" title="A2-101羽毛球馆"><img style="width:200px; height:200px;" src="images/ba.jpg" /></a></div>
<div class="title"><a href="" target="_blank" title="A2-101羽毛球馆">A2-101羽毛球馆</a></div>
  </li>
  <li>
  <div class="pic"><a href="" target="_blank" title="A2-102羽毛球馆"><img  style="width:200px; height:200px;" src="images/bb.jpg" /></a></div>
	<div class="title"><a href="" target="_blank" title="A2-102羽毛球馆">A2-102羽毛球馆</a></div>
  </li>
  <li>
  	<div class="pic"><a href="" target="_blank" title="A2-103羽毛球馆"><img  style="width:200px; height:200px;" src="images/bc.jpg" /></a></div>
	<div class="title"><a href="" target="_blank" title="A2-103羽毛球馆">A2-103羽毛球馆</a></div>
  </li>
  <li>
  <div class="pic"><a href="" target="_blank" title="A2-104羽毛球馆"><img  style="width:200px; height:200px;" src="images/bd.jpg" /></a></div>
<div class="title"><a href="" target="_blank" title="A2-104羽毛球馆">A2-104羽毛球馆</a></div>
  </li>
  <li>
  <div class="pic"><a href="" target="_blank" title="A2-107羽毛球馆"><img  style="width:200px; height:200px;" src="images/be.jpg" /></a></div>
	<div class="title"><a href="" target="_blank" title="A2-107羽毛球馆">A2-107羽毛球馆</a></div>
  </li>
</ul>
 </marquee>								
										
									
									
										
									
							
    </div>
</body>
</html>