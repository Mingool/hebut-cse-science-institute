<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>admin_top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	
	<style type="text/css">
		body{padding:0; margin:0; background:#E7ECF0; font-family:"宋体"; font-size:14px; color:#333;}
		div,p{padding:0; margin:0; list-style:none; border:0;}
		a:link,a:visited{color:#333; text-decoration:none;}
		a:hover{text-decoration:underline;}
		#top{width:980px; height:150px; margin:0 auto;}
		.exit{float:right; height:30px; line-height:30px;}
		.header{font-size:56px; text-align:center; height:100px;padding:20px 0 10px;;}
	</style>
	
  </head>
  
  <body>
  	<div id="top">
		<p class="exit"><a href="admin/logout" target="_top">退出登入</a></p>
	    <p class="header">网站后台管理</p>
	</div>
  </body>
</html>
