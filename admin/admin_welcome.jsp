<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<style type="text/css">
		body{padding:0; margin:0; background:#FFF; font-family:"宋体"; font-size:14px; color:#333;}
		div,p{padding:0; margin:0; list-style:none; border:0;}
		a:link,a:visited{color:#333; text-decoration:none;}
		a:hover{text-decoration:underline;}
		.one{width:700px; height:72px; line-height:36px; padding:20px; font-weight:bold; font-size:20px; margin-left:355px;}
		.two{border:1px solid red; width:700px; height:100px; padding:10px 20px; margin-left:140px; line-height:26px;}
	</style>
  </head>
  
  <body>
  	<p class="one">
		Welcome our guest!<br />
		欢迎您!
	</p>
	<p class="two">
		&nbsp;&nbsp;这个网站的后台还有很多不完善的地方，请谨慎使用!<br/>
		&nbsp;&nbsp;请不要吐槽美工，由于老板要求太严，美工刚开始不干了，后来美工良心发现，感到自己太冲动了，所以又主动做了这个后台的UI，就是你现在看到的样子。<br/>
		&nbsp;&nbsp;(2015年2月21日)
	</p>
  </body>
</html>
