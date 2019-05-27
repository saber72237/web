<%@ page language="java" contentType="text/html;charset=utf-8" %>
<!Doctype html>
<html>
<head>
    <title>智能轮椅|用户信息</title>
    <meta name="description" content="智能轮椅-实时测量心率、脉搏、体温、位置，记录您身体的每时每刻，为您打造健康生活！">
    <meta name="Keywords" content="智能轮椅，测量心率，测量脉搏，测量体温，实时定位">
    <!--禁止移动端缩放网页-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="../base.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="userinfo.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<link type="text/css" rel="stylesheet" href="css.css">
	<script>
			function jump(){
			 window.location.href="http://localhost:8080/Chapter1/userinfo/userinfo.jsp";
			}
	</script>
	<script>
function validate() {
    var pwd1 = document.getElementById("userPassword2").value;
    var pwd2 = document.getElementById("userPassword3").value;
 
    if(pwd1 == pwd2)
     {
        document.getElementById("tishi").innerHTML="<font color='green'>密码相同</font>";
        document.getElementById("button").disabled = false;
     }
	else {
        document.getElementById("tishi").innerHTML="<font color='red'>密码不同</font>";
        document.getElementById("button").disabled = true;
     }
}
</script>
</head>

<body>
<% 
  	    response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
			 String loginName = (String)session.getAttribute("loginName");
%>
<!--导航-->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="index/index.html">
            <img src="../images/logo.png">智能轮椅
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="/Chapter1/login.do">心率</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">血氧</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">体温</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/Chapter1/map.do">位置</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        username
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="doctor.html">找医生聊聊&nbsp;</a>
                        <a class="dropdown-item" href="../userinfo/userinfo.jsp">用户信息</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item active" href="../userinfo/updatepw1.jsp">修改密码</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item text-danger" href="#">登出</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!--内容-->
<div class="container content">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header">
                    <ul class="nav nav-tabs card-header-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">修改密码</a>
                        </li>
                    </ul>
                </div>
                <div class="card-body">
                    <form name="loginform" method="post" action="/Chapter1/updatepw.do">
                        <div class="form-row">
                            <div class="form-group col-md-10 offset-md-1">
                                <label for="exampleInputEmail1">用户名</label>
                                <span class="text"><input name="userMonicker" class="form-control" type="hidden" value="<%=loginName%>"><%=loginName%></span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10 offset-md-1">
                                <label for="exampleInputPassword1">原始密码</label>
                                <input type="password" class="form-control" name="userPassword1" placeholder="请输入密码" >
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10 offset-md-1">
                                <label for="exampleInputPassword1">新密码</label>
                                <input type="password" class="form-control" name="userPassword2" id="userPassword2" placeholder="请输入密码" >
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10 offset-md-1">
                                <label for="exampleInputPassword1">确认密码</label>
                                <input type="password" class="form-control" name="userPassword3" id="userPassword3" placeholder="请输入密码"  onkeyup="validate()"><span id="tishi"></span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10 offset-md-1">
                                <p><a href="../signup/signup.html">没有账号？点我注册</a></p>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                    <button type="button" class="btn btn-outline-danger" onclick=javascript:jump()>&nbsp;返&nbsp;回&nbsp;</button>
                    <button type="submit" class="btn btn-outline-success">&nbsp;提&nbsp;交&nbsp;</button>
                </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!--底部-->
<footer>
<div class="footer">
    <span>邮箱：smart@wheelchair.com</span>
    <span>电话：400-000-0000</span>
    <p>版权所有 2018 智能测控与仪器创新团队</p>
</div>
</footer>
</body>
</html>
