<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="images/login.js"></script>
<link href="css/login2.css" rel="stylesheet" type="text/css" />
<title>运动场地预约系统</title>
</head>
<h1 style="font-size:80px;color:orange;">运动场地预约系统</h1>

<div class="login" style="margin-top:50px; margin-right:100px;">
    
    <div class="header" style="background-color:orange;">
        <div class="switch" id="switch"><a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">登录</a>
			<a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">注册</a><div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div>
        </div>
    </div>    
  
    
    <div class="web_qr_login" id="web_qr_login" style="display: block; height: 235px;background-color:powderblue;">    

        <!--登录-->
            <div class="web_login" id="web_login">
               
               
               <div class="login-box">
    
            
			<div class="login_form">
				<form action="${pageContext.request.contextPath}/login.do" name="loginform" accept-charset="utf-8" id="login_form" class="loginForm" method="post"><input type="hidden" name="did" value="0"/>
            		
            		<li><input type="text" name="username" value="" placeholder="请输入用户名/邮箱" /></li>
                    <li><input type="text" name="password" value="" placeholder="请输入密码" /></li>
                    <p><label>请选择登录身份：</label>
				<select name="identity">
					<option value="teacher">用户</option>
					<option value="admin">管理员</option>
				</select>
			</p>
			<p><input type="checkbox" name="isUseCookie" checked="checked" />记住密码</p>
            		<button>登录</button>
            		
            		
              </form>
           </div>
           
            	</div>
               
            </div>
            <!--登录end-->
</div>

  <!--注册-->
    <div class="qlogin" id="qlogin" style="display: none; background-color:powderblue;">
   
    <div class="web_login">
    <form name="form2" id="regUser" charset=utf-8  action="${pageContext.request.contextPath}/reg.do" method="post">
	    
	 				 <ul>
                         <li><input type="text" name="username" value="" placeholder="请输入名字" /></li>
                         <li><input type="text" name="userpass" value="" placeholder="请输入密码" /></li>
                         <li><input type="text" name="userage" value="" placeholder="请输入年龄"/></li>
                         <li><input type="text" name="usersex" value="" placeholder="请输入性别"/></li>
                         <li><input type="text" name="useremail" value="" placeholder="请输入邮箱"/></li>
                     </ul>
                      <p><label>请选择注册身份：</label>
				<select name="identity">
					<option value="teacher">用户</option>
					<option value="admin">管理员</option>
				</select>
			</p>
                    <button>注册</button>
	  
	    
	</form>
           
    
    </div>
   
    
    </div>
    <!--注册end-->
</div>
<div class="jianyi" style="float:right; margin-right:200px;" >运动场地预约管理系统</div>
</body>
</html>