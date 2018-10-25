<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>运动场地预约系统</title>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>运动场地预约系统</title>
</head>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body style="background:url(images/bj.jpg);background-size:100%">
<div class="navbar navbar-fixed-top" >
 	<div class="media">
  <a class="pull-left" href="#">
    <img class="media-object" width=100px; height="100px" alt=""
					src="images/logo.jpg" />
  </a>
  <div class="media-body">
    <h1 class="media-heading" style="font-size:50px;color:blue;">大连东软信息学院运动场地预约系统</h1>
  </div>
</div> 
</div>
	<div class="navbar navbar-fixed-top" >
            <div class="navbar-inner" style="background-color:skyblue;">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i></a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav nav-icons">
                            <li class="active"><a href="#">首页<i class="menu-icon icon-dashboard"></i></a></li>
                            <li><a href="#">场馆<i class="icon-eye-open"></i></a></li>
                            <li><a href="#">场馆预约<i class="icon-bar-chart"></i></a></li>
                        </ul>
                        <form class="navbar-search pull-left input-append" action="#">
                        <input type="text" class="span3">
                        <button class="btn" type="button">
                            <i class="icon-search"></i>
                        </button>
                        </form>
                        <ul class="nav pull-right">
                            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">场馆分类
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li> <a href="${pageContext.request.contextPath}/FootballHall.do">足球馆</a></li>
                                    <li><a href="${pageContext.request.contextPath}/BasketballHall.do">篮球馆</a></li>
                                    <li class="divider">游泳馆</li>
                                    <li class="nav-header"><a href="${pageContext.request.contextPath}/BadmintonCourt.do">羽毛球馆</a></li>
                                    <li><a href="${pageContext.request.contextPath}/Gymnasium.do">健身房</a></li>
                                </ul>
                            </li>
                            <li><a href="#">支持 </a></li>
                            <li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="images/user.png" class="nav-avatar" />
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">个人信息</a></li>
                                    <li><a href="#">设置</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">注销</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
	<div class="container-fluid">
  <div class="row-fluid">
    <div class="span2">
    <ul class="nav nav-list" style="margin-top:150px;">
  <li class="active"><a href="#"><i class="icon-home icon-white"></i>我的主页</a></li>
  <li> <a href="${pageContext.request.contextPath}/stadiumList.do">场地列表</a></li>
  <li><a href="#"><i class="icon-pencil"></i> 健身房课程安排</a></li>
  <li><a href="#"><i class="i"></i>武术表演</a></li>
</ul>
                        <div class="sidebar" style="margin-top:100px;">
                            
                            <!--/.widget-nav-->
                            <ul class="widget widget-menu unstyled">
                                <li><a class="collapsed" data-toggle="collapse" href="#togglePages"><i class="menu-icon icon-cog">
                                </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
                                </i>个人中心</a>
                                    <ul id="togglePages" class="collapse unstyled">
                                        <li><a href="###"><i class="icon-inbox"></i>1</a></li>
                                        <li><a href="###"><i class="icon-inbox"></i>2</a></li>
                                        <li><a href="###"><i class="icon-inbox"></i>3 </a></li>
                                    </ul>
                                </li>                
                            </ul>
                        <!--/.sidebar-->
                    </div>
    </div>
    <div class="span10">
     <div class="row-fluid">
          <div class="span6">
          <div class="thumbnail today-style" style="height:25px; background-color:powderblue;">
          <h3 style="color: black;">场地情况</h3>
          </div>
          <div style="width:560px;height:400px; overflow:scroll; border:1px solid;">
			 <table class="table">
				<thead>
					<tr>
						<th>
							编号
						</th>
						<th>
							场地
						</th>
						<th>
							开放时间
						</th>
						<th>
							详情
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							1
						</td>
						<td>
							乒乓球场
						</td>
						<td>
							10：30-11：00
						</td>
						<td>
							9余8<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="success">
						<td>
							2
						</td>
						<td>
							篮球场
						</td>
						<td>
							11：00-11：30
						</td>
						<td>
							9余3<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="error">
						<td>
							3
						</td>
						<td>
							羽毛球场
						</td>
						<td>
							12：00-13：00
						</td>
						<td>
							9余9<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="warning">
						<td>
							4
						</td>
						<td>
							足球场
						</td>
						<td>
							13：00-13：30
						</td>
						<td>
							9余8<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="info">
						<td>
							5
						</td>
						<td>
							排球场
						</td>
						<td>
							13：00-13：30
						</td>
						<td>
							9余3<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="info">
						<td>
							6
						</td>
						<td>
							武术场
						</td>
						<td>
							13：00-13：30
						</td>
						<td>
							9余5<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="info">
						<td>
							6
						</td>
						<td>
							太极场
						</td>
						<td>
							13：00-14：30
						</td>
						<td>
							9余6<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="info">
						<td>
							6
						</td>
						<td>
							太极场
						</td>
						<td>
							13：00-14：30
						</td>
						<td>
							9余6<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="info">
						<td>
							6
						</td>
						<td>
							太极场
						</td>
						<td>
							13：00-14：30
						</td>
						<td>
							9余6<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="info">
						<td>
							6
						</td>
						<td>
							太极场
						</td>
						<td>
							13：00-14：30
						</td>
						<td>
							9余6<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="info">
						<td>
							6
						</td>
						<td>
							太极场
						</td>
						<td>
							13：00-14：30
						</td>
						<td>
							9余6<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="info">
						<td>
							6
						</td>
						<td>
							太极场
						</td>
						<td>
							13：00-14：30
						</td>
						<td>
							9余6<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="info">
						<td>
							6
						</td>
						<td>
							太极场
						</td>
						<td>
							13：00-14：30
						</td>
						<td>
							9余6<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="info">
						<td>
							6
						</td>
						<td>
							太极场
						</td>
						<td>
							13：00-14：30
						</td>
						<td>
							9余6<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
					<tr class="info">
						<td>
							6
						</td>
						<td>
							太极场
						</td>
						<td>
							13：00-14：30
						</td>
						<td>
							9余6<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr><tr class="info">
						<td>
							6
						</td>
						<td>
							太极场
						</td>
						<td>
							13：00-14：30
						</td>
						<td>
							9余6<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr><tr class="info">
						<td>
							6
						</td>
						<td>
							太极场
						</td>
						<td>
							13：00-14：30
						</td>
						<td>
							9余6<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr><tr class="info">
						<td>
							6
						</td>
						<td>
							太极场
						</td>
						<td>
							13：00-14：30
						</td>
						<td>
							9余6<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr><tr class="info">
						<td>
							6
						</td>
						<td>
							太极场
						</td>
						<td>
							13：00-14：30
						</td>
						<td>
							9余6<a href="${pageContext.request.contextPath}/stadiumList.do">查看</a>
						</td>
					</tr>
				</tbody>
			</table>
			</div>
          </div>
          <div class="span6">
          <div class="thumbnail today-style" style="height:25px; background-color:powderblue;">
         <h3 style="color: black;">健身房通知</h3></div>
         <ul>
			<li>
				          		<a href="/front/frontAction.do?ms=gotoThird&xxid=8697545&flag=flag" title="大连东软信息学院体育部培训中心2017年秋季培训班招生简章" target="_blank">
				          			<b>[A1体育馆]</b>大连东软信息学院体育部培训中心2017年秋季培训班招生简章
				          			  
				          		</a>
				          		<span class="time" style="float:right">2017-09-25</span>
				       		</li>        
				        
				          	<li>
				          		<a href="/front/frontAction.do?ms=gotoThird&xxid=7801468&flag=flag" title="大连东软信息学院体育部培训中心2017年春季培训班招生简章" target="_blank">
				          			<b>[A1体育馆]</b>大连东软信息学院体育部培训中心2017年春季培训班招生简章
				          			  
				          		</a>
				          		<span class="time" style="float:right">2017-02-15</span>
				       		</li>        
				        
				          	<li>
				          		<a href="/front/frontAction.do?ms=gotoThird&xxid=7662972&flag=flag" title="2016年寒假集训班招生简章" target="_blank">
				          			<b>[A1体育馆]</b>2016年寒假集训班招生简章
				          			  
				          		</a>
				          		<span class="time" style="float:right">2016-12-20</span>
				       		</li>        
				        
				          	<li>
				          		<a href="/front/frontAction.do?ms=gotoThird&xxid=7595654&flag=flag" title="2016秋季培训班招生简章" target="_blank">
				          			<b>[A1体育馆]</b>2016秋季培训班招生简章
				          			  
				          		</a>
				          		<span class="time" style="float:right">2016-11-14</span>
				       		</li>        
				        
				          	<li>
				          		<a href="/front/frontAction.do?ms=gotoThird&xxid=6998945&flag=flag" title="2015年寒假集训班开课通知" target="_blank">
				          			<b>[A1体育馆]</b>2015年寒假集训班开课通知
				          			  
				          		</a>
				          		<span class="time" style="float:right">2015-12-25</span>
				       		</li>        
				        
				          	<li>
				          		<a href="/front/frontAction.do?ms=gotoThird&xxid=6845256&flag=flag" title="2015年秋季少儿民族舞招生简章" target="_blank">
				          			<b>[A1体育馆]</b>2015年秋季少儿民族舞招生简章
				          			  
				          		</a>
				          		<span class="time" style="float:right">2015-08-20</span>
				       		</li>        
				        
				          	<li>
				          		<a href="/front/frontAction.do?ms=gotoThird&xxid=6845255&flag=flag" title="2015年秋季网球培训班招生简章" target="_blank">
				          			<b>[A1体育馆]</b>2015年秋季网球培训班招生简章
				          			  
				          		</a>
				          		<span class="time" style="float:right">2015-08-20</span>
				       		</li>        
				        
			        </ul>
        </div>
        </div>	
        <div class="row-fluid">
         <div class="span12">
        <div class="row-fluid">
          <div class="span6">
          <div class="thumbnail today-style" style="height:25px; background-color:powderblue;">
          <h3 style="color: black;">问卷调查</h3>
          </div>
          <br>
          <h1 style="font-size:15px; margin-top:50px;">
           <a href="${pageContext.request.contextPath}/QuestionnaireList.do">运动场地预约系统问卷调查</a>
           </h1>
          </div>
          <div class="span6">
          
          <div class="thumbnail today-style" style="height:25px; background-color:powderblue;">
          <h3 style="color: black;">营业时间</h3>
          </div>
          <table  class="table table-bordered">
      <tr>
            <th>序号</th>
            <th>时段</th>
            <th>场地名</th>
            <th>时间</th>
            <th>备注</th>
        </tr>
        <tbody>
					<tr>
						<td>
						1
						</td>
						<td>
						上午
						</td>
						<td>
						足球场
						</td>
						<td>
						08：-09:00
						</td>
						<td>
						
						</td>
						</tr>
						<tr>
						<td>
						2
						</td>
						<td>
						上午
						</td>
						<td>
						篮球场
						</td>
						<td>
						9:20-10:30
						</td>
						<td>
						1
						</td>
						</tr>
						<tr>
						<td>
						3
						</td>
						<td>
						中午
						</td>
						<td>
						羽毛球场
						</td>
						<td>
						11:50-13:30
						</td>
						<td>
						1
						</td>
						</tr>
						<tr>
						<td>
						4
						</td>
						<td>
						下午
						</td>
						<td>
						游泳馆
						</td>
						<td>
						13:50-14:50
						</td>
						<td>
						1
						</td>
						</tr>
						<tr>
						<td>
						5
						</td>
						<td>
						下午
						</td>
						<td>
						太极场
						</td>
						<td>
						15:00-16:00
						</td>
						<td>
						1
						</td>
						</tr>
						<tr>
						<td>
						4
						</td>
						<td>
						下午
						</td>
						<td>
						游泳馆
						</td>
						<td>
						13:50-14:50
						</td>
						<td>
						1
						</td>
						</tr>
						<tr>
						<td>
						6
						</td>
						<td>
						晚上
						</td>
						<td>
						健身房
						</td>
						<td>
						16:00-18:00
						</td>
						<td>
						1
						</td>
						</tr>
						</tbody>
          </table>
          </div>
          </div>
          </div>
            <div>
    <marquee direction=left>
    <ul class="thumbnails">
  <li>
  <div class="pic"><a href="" target="_blank" title="姜来老师上课"><img style="width:200px; height:200px;" src="images/12.jpg" /></a></div>
<div class="title"><a href="" target="_blank" title="姜来老师上课">姜来老师上课</a></div>
  </li>
  <li>
  <div class="pic"><a href="" target="_blank" title="张志新老师上课"><img  style="width:200px; height:200px;" src="images/13.jpg" /></a></div>
	<div class="title"><a href="" target="_blank" title="张志新老师上课">张志新老师上课</a></div>
  </li>
  <li>
  	<div class="pic"><a href="" target="_blank" title="马新东老师上课"><img  style="width:200px; height:200px;" src="images/14.jpg" /></a></div>
	<div class="title"><a href="" target="_blank" title="马新东老师上课">马新东老师上课</a></div>
  </li>
  <li>
  <div class="pic"><a href="" target="_blank" title="于芬老师上课"><img  style="width:200px; height:200px;" src="images/15.jpg" /></a></div>
<div class="title"><a href="" target="_blank" title="于芬老师上课">于芬老师上课</a></div>
  </li>
  <li>
  <div class="pic"><a href="" target="_blank" title="于芬老师上课"><img  style="width:200px; height:200px;" src="images/16.jpg" /></a></div>
	<div class="title"><a href="" target="_blank" title="于芬老师上课">于芬老师上课</a></div>
  </li>
</ul>
 </marquee>					
										
									
									
										
									
							
    </div>
          </div>
        
        
        
     </div>
     
     
     </div>
        <!--/.wrapper-->
        <div class="footer">
           <br>
	<div>

		<ul class="breadcrumb text-center" style="text-align:center;">
			<li style="color: blank;"><a href="#">系统主页</a></li>
			<li style="color: blank;"><a href="#">会员中心</a></li>
			<li style="color: blank;"><a href="#">关注我们</a></li>
			<li style="color: blank;"><a href="#">线下场地</a></li>
			<li style="color: blank;"><a href="#">场地信息</a></li>
			<li style="color: blank;"><a href="#">联系我们</a></li>
			<li style="color: blank;"><a href="#">网站合作</a></li>
			<li style="color: blank;"><a href="#">法律声明及隐私权政策</a></li>
			<li style="color: blank;"><a href="#">知识产权</a></li>
			<li style="color: blank;"><a href="#">廉政举报</a></li>
			<div style="color: gray;">场地预约经营许可证：辽B2-20110446&nbsp;&nbsp;&nbsp;&nbsp;网络文化经营许可证：辽网文[2017]0295-065号&nbsp;&nbsp;&nbsp;&nbsp;1218举报</div>
			<div class="text-primary">&copy;&nbsp;neusoft.SE 2017</div>
			<div>互联网计算机信息服务资质证书编号：辽-（经营性）-2017-0005</div>
			大连东软信息学院技术部版权所有

		</ul>



		<!-- container end-->
	</div>
        </div>
        <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
        <script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
        <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="scripts/common.js" type="text/javascript"></script>
      
</body>
</html>