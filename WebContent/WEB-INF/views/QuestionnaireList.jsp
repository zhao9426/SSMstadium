<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>问卷</title>
</head>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>
    <h2>问卷列表</h2>
 
    <table class="table">
        <tr>
            <th>问卷编号</th>
            <th>请输入你的姓名：</th>
            <th>1.请问你对系统的服务满意吗:</th>
            <th>2. 请问你对运动场地的设施管理满意吗：</th>
            <th> 3. 请问你觉得场地的收费怎么样：</th>
            <th>  4. 请问你有什么样的建议欢迎提出：</th>
        </tr>
       <c:forEach items="${questionnaires}" var="questionnaire">
            <tr>
                <td>${questionnaire.qid}</td>
                <td>${questionnaire.user}</td>
                <td>${questionnaire.serviceAttitude}</td>
                <td>${questionnaire.facilityManagement}</td>
                <td>${questionnaire.priceSuggestion}</td>
                <td>${questionnaire.suggestion}</td>
            </tr>
        </c:forEach>
    </table>
    <a href="${pageContext.request.contextPath}/QuestionnaireAdd1.do">添加问卷调查</a>
</body>
</html>