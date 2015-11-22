<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	//在用户返回登录窗口时清除session
	session.setAttribute("admin", null);
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>管理员登入</title>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	
	<style type="text/css">
		body{
			background-image:url(images/login-bg.jpg);
			background-repeat:repeat-x;
			background-color:#E2E2E2;
			font-family: "宋体", Arial, Helvetica, sans-serif;
			color:#333333;
			font-size:12px; }
		#top{
			background:url(images/login-top.jpg);
			width:450px;
			height:54px;}
		#centre{
			width:450px;
			background-color:#F9F9F9;
			
			text-align:center;}
	</style>
	
	<script type="text/javascript">
		function login(){
			var formNode = document.getElementById("form1");
			var usernameNode = document.getElementById("username");
			var passwordNode = document.getElementById("password");
			var res = true;
			if(usernameNode.value==null || usernameNode.value==""){
				alert("用户名不能为空;");
				res = false;
			}
			if(usernameNode.value.length>10){
				alert("用户名长度最大为10;");
				res = false;
			}
			if(passwordNode.value.length>10){
				alert("密码长度最大为10;");
				res = false;
			}
			if(res){
				formNode.submit();	
			}

		}
	</script>
  </head>
  
  <body>
    <div style="margin:auto; margin-top:100px; width:450px; height:auto;">
    	<div id="top"></div>
        <div id="centre">
        	<form method="post" action="login" id="form1">
            	<table>
                	<tr height="20px;"></tr>
                	<tr>
                    	<td width="120px;">账号:</td>
                        <td width="230px;"><input id="username" type="text" name="username"/></td>
                    </tr>
                	<tr height="10px;"></tr>
                    <tr>
                    	<td>密码:</td>
                        <td><input type="password" id="password" name="password"/></td>
                    </tr>
                	<tr height="10px;"></tr>
                	<tr height="10px;"></tr>
                    <tr>
                    	<td colspan="3" width="450px;"><input type="button" value="Login in" onclick="login();"/></td>
                    </tr>
                    <tr height="30px;">
                    	<td colspan="3"><font style="color: red">${message }</font></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
  </body>
</html>
