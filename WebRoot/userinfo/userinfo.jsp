<%@ page language="java" import="java.util.*,java.net.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
java.sql.Connection sqlConn; 
java.sql.Statement sqlStmt; 
java.sql.ResultSet sqlRst; 

String DBUser="root"; 
String DBPassword="saber5459"; 
String DBServer="127.0.0.1"; 
String DBNAME="my_cb"; 
String Usertels="lgz1";

		request.setCharacterEncoding("utf-8");
			 String loginName = (String)session.getAttribute("loginName");
        if(loginName==null){
            //没有登录成功，跳转到登录页面
            response.sendRedirect(request.getContextPath()+"/login.html");
            return;
        }
		Class.forName("org.gjt.mm.mysql.Driver").newInstance(); 
		sqlConn=java.sql.DriverManager.getConnection 
		("jdbc:mysql://"+DBServer+":3306/"+DBNAME+"?useUnicode=true&characterEncoding=gb2312",DBUser,DBPassword); 
		sqlStmt=sqlConn.createStatement(java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_READ_ONLY); 
		sqlRst=sqlStmt.executeQuery("select * from persons where Usermonicker='"+loginName+"'"); 
%>

<!DOCTYPE html>
<html lang="zh-hans">
<head>
    <meta charset="utf-8">
    <title>用户信息</title>
    <meta name="description" content="智能轮椅-实时测量心率、脉搏、体温、位置，记录您身体的每时每刻，为您打造健康生活！">
    <meta name="Keywords" content="智能轮椅，测量心率，测量脉搏，测量体温，实时定位">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="../base.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="userinfo.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<!--èæ¯å¾ç-->
<img id="bg" class="bg" src="../images/index_bg_xl.jpg">
<!--å¯¼èªæ -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="../index/index.html">
            <img src="../images/logo.png">智能轮椅</a>
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
                        <a class="dropdown-item" href="../doctor/doctor.html">找医生聊聊&nbsp;</a>
                        <a class="dropdown-item active" href="../userinfo/userinfo.">用户信息</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="../userinfo/updatepw1.jsp">修改密码</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item text-danger" href="#">登出</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!--内容-->
<div class="container-fluid content">
    <div class="row justify-content-center">
        <div class="col-sm-10 col-md-8 col-lg-8 col-xl-6">
            <div class="card">
                <div class="card-header"><h5>用户信息</h5>
                    <a href="update1.jsp"><button type="button" class="btn btn-outline-primary btn-sm">修改</button></a></div>
                <div class="card-body">
                <% while(sqlRst.next()) {%> 
                    <div class="username">
                        <span class="title">用户名</span>
                        <span class="text"><%=sqlRst.getString("Usermonicker")%></span>
                    </div>
                    <hr>
                    <div class="username">
                        <span class="title">邮箱</span>
                        <span class="text"><%=sqlRst.getString("Useremail")%></span>
                    </div>
                    <hr>
                    <div class="username">
                        <span class="title">电话</span>
                        <span class="text"><%=sqlRst.getString("Usertel")%></span>
                    </div>
                    <hr>
                    <div class="username">
                        <span class="title">姓名</span>
                        <span class="text"><%=sqlRst.getString("Username")%></span>
                    </div>
                    <hr>
                    <div class="username">
                        <span class="title">性别</span>
                        <span class="text"><%=sqlRst.getString("Usergender")%></span>
                    </div>
                    <hr>
                    <div class="username">
                        <span class="title">年龄</span>
                        <span class="text"><%=sqlRst.getString("Userage")%></span>
                    </div>
                    <hr>
                    <div class="username">
                        <span class="title">血型</span>
                        <span class="text"><%=sqlRst.getString("Userbt")%></span>
                    </div>
                    <hr>
                    <div class="username">
                        <span class="title">民族</span>
                        <span class="text"><%=sqlRst.getString("Usernation")%></span>
                    </div>
                    <hr>
                    <div class="username">
                        <span class="title">家属联系方式</span>
                        <span class="text"><%=sqlRst.getString("Userft")%></span>
                    </div>
                    <hr>
                    <div class="username">
                        <span class="title">住址</span>
                        <span class="text"><%=sqlRst.getString("Useradress")%></span>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>
</div>
<!--é¡µè-->
<div class="footer">
    <span>邮箱：smart@wheelchair.com</span>
    <span>电话：400-000-0000</span>
    <p>版权所有 2018 智能测控与仪器创新团队</p>
</div>
</body>
</html>