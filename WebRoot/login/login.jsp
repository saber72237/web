<%@ page language="java" import="java.util.*,java.net.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-hans">
<head>
    <meta charset="UTF-8">
    <title>智能轮椅-测量心率，体温，脉搏，定位</title>
    <meta name="description" content="智能轮椅-实时测量心率、脉搏、体温、位置，记录您身体的每时每刻，为您打造健康生活！">
    <meta name="Keywords" content="智能轮椅，测量心率，测量脉搏，测量体温，实时定位">
    <!--禁止移动端缩放网页-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="../base.css">
    <link rel="stylesheet" href="login.css">
    <script src="login.js"></script>
</head>
<body>

<!--背景图片-->
<img id="bg" class="bg" src="../images/index_bg_xl.jpg">
<!--导航栏-->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="../index/index.html">
            <img src="../images/logo.png">智能轮椅
        </a>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#"><button class="btn btn-outline-success" type="button">登录</button></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../signup/signup.html"><button class="btn btn-outline-light" type="button">注册</button></a>
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
                            <a class="nav-link active" href="#">登录</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../signup/signup.html">注册</a>
                        </li>
                    </ul>
                </div>
                <div class="card-body">
                    <h5 class="card-title text-center">用户登录</h5>
                    <form name="loginform" method="post" action="/Chapter1/login.do">
                        <div class="form-row">
                            <div class="form-group col-md-10 offset-md-1">
                                <label for="exampleInputEmail1">用户名</label>
                                <input type="text" class="form-control" name="userName" aria-describedby="emailHelp" placeholder="请输入用户名" >
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10 offset-md-1">
                                <label for="exampleInputPassword1">密码</label>
                                <input type="password" class="form-control" name="userPassword" placeholder="请输入密码" >
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10 offset-md-1">
                                <p><a href="../signup/signup.html">没有账号？点我注册</a></p>
                                <button type="submit" class="btn btn-primary"><span>登&nbsp;&nbsp;录</span></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!--页脚-->
<div class="footer">
    <span>邮箱：smart@wheelchair.com</span>
    <span>电话：400-000-0000</span>
    <p>版权所有 2018 智能测控与仪器创新团队</p>
</div>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!--<script src="../jquery-3.3.1.min.js"></script>-->
<!--<script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>-->
</body>
</html>