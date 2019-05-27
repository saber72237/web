<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
		request.getSession().removeAttribute("loginName");//清空session信息
		request.getSession().invalidate();//清除 session 中的所有信息
		//退出登录的时候清空cookie信息,cookie需要通过HttpServletRequest，HttpServletResponse获取
		Cookie[] cookie=request.getCookies();
		for(Cookie c:cookie){
			if("autoLogin".equals(c.getName())){
				c.setMaxAge(0);
				response.addCookie(c);
			}
		}
		
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
	<link rel="stylesheet" type="text/css" href="styles.css">
	<meta http-equiv='refresh' content='5;URL=http://localhost:8080/Chapter1/login/login.jsp'>
  </head>
  <body>
  	5s后返回登录界面
  </body>
</html>
