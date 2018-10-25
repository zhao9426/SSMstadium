<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>问卷调查</title>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <title>问卷调查</title>
</head>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>
<form  class="form-horizontal" method="post" action="${pageContext.request.contextPath}/QuestionnaireAdd.do">
	问卷编号<input type="text" name="qid"><br>
	请输入你的姓名：<br>
	<input type="text" name="user"><br>
	1.请问你对系统的服务满意吗:<br>
	  <input type="text" name="ServiceAttitude"><br>
       2. 请问你对运动场地的设施管理满意吗：<br>
        <input type="text" name="FacilityManagement"><br>
       3. 请问你觉得场地的收费怎么样：<br>
         <input type="text" name="PriceSuggestion"><br>
        
       4. 请问你有什么样的建议欢迎提出：<br>
         <input type="text" name="suggestion"><br>
        
	     <input type="submit" value="提交">
	     <input type="reset" value="重写">
	<c:if test="${not empty info}">
		${info}
	</c:if>
</form>
	<a href="${pageContext.request.contextPath}/QuestionnaireList.do">问卷调查</a>
</body>
</html>