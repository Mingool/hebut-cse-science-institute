<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Error Page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	
	
	<style type="text/css">
		body{padding:0; margin:0; font-family:"宋体"; font-size:12px; color:#000; background:url(../images/body-bg.jpg) no-repeat center top;}
		div,a,img,h2,{padding:0; margin:0; border:0; list-style:none;}
		#box{width:980px; height:600px; margin:0 auto;}
		.picture{width:503px; height:600px; float:left;}
		.content{width:400px; height:600px; float:right;}
		.content h2{font-size:20px; margin:200px 20px 100px 120px;}
		.content form{margin:0 175px;}
		input{width:110px; height:35px; font-size:14px;}
		#footer{width:100%; height:80px; background:#7D7D7D; margin-top:10px;}
		#footer .footer{width:980px; height:60px; margin:0 auto; text-align:center; line-height:30px; padding-top:5px;}
	</style>
	
	<script type="text/javascript">
		function turnToIndex(){
			window.location.href="index.jsp";
		}
	</script>
  </head>
  
  <body>
  <div id="box">
	<div class="picture"><img src="images/error.jpg" width="503" height="600" /></div>
    <div class="content">
    	<h2>${message }</h2>
        <input name="return" type="button" value="返回主页" onclick="turnToIndex();"/>      
    </div>
</div>
<jsp:include page="/commons/bottom.jsp"></jsp:include>
  </body>
</html>
