<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>admin_left</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<style type="text/css">
		body{padding:0; margin:0; background:#E7ECF0; font-family:"宋体"; font-size:14px; color:#333;}
		div,p,h2,ul,li{padding:0; margin:0; list-style:none; border:0;}
		a:link,a:visited{color:#333; text-decoration:none;}
		a:hover{text-decoration:underline;}
		h2{width:160px; height:36px; line-height:36px; padding:20px; background:url(images/admin/line2.jpg) no-repeat left bottom;}
		li{width:200px; height:36px; line-height:36px; background:url(images/admin/line1.jpg) repeat-x left bottom; padding:0 40px;}
	</style>
  </head>
  
  <body>
  	<h2>请选择功能</h2>
	<ul>
		<li><a href="admin/admin_addNews.jsp" target="mainFrame">新增新闻</a></li>
	    <li><a href="admin/news?page=1&&action_flag=list" target="mainFrame">管理新闻</a></li>
	    <li><a href="admin/usermessage?action_flag=list&page=1" target="mainFrame">查看留言</a></li>
	    <li><a href="javascript:void(0)" target="mainFrame">统计</a></li>
	</ul>
  </body>
</html>
