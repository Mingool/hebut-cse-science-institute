<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>留言查看页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		body{padding:20px 150px;; margin:0; background:#FFF; font-family:"宋体"; font-size:14px; color:#333;}
		div,p,h2,ul,li{padding:0; margin:0; list-style:none; border:0;}
		a:link,a:visited{color:#333; text-decoration:none;}
		a:hover{text-decoration:underline;}
		
		td{ border-bottom: 1px solid black; border-right: 1px solid black;}
	</style>
	
	<script type="text/javascript">
		function turnToMessageList(){
			var url="admin/usermessage?action_flag=list&page=1";
			window.location.href=url;
		}
	</script>
  </head>
  
  <body>
    <p>留言查看:</p>
    <table style="border:1px solid black; width:80%">
    	<tr style="height: 30px;">
    		<td>ID</td>
    		<td style="width: 200px">${mess.mid }</td>
    		<td>姓名</td>
    		<td>${mess.mname }</td>
    	</tr>
    	<tr style="height: 30px;">
    		<td>Tele</td>
    		<td>${mess.mtele }</td>
    		<td>QQ/Email</td>
    		<td>${mess.mqq }</td>
    	</tr>
    	<tr style="height: 30px;">
    		<td>类别</td>
    		<td>${mess.mtype }</td>
    		<td>日期</td>
    		<td>${mess.mdate }</td>
    	</tr>
    	<tr style="height: 30px;">
    		<td style="height:220px">内容</td>
    		<td colspan="3"><textarea rows="15" cols="90">${mess.mcontent }</textarea></td>
    	</tr>
	    <tr style="height: 30px;">
	    	<td colspan="7" style="text-align: center;">
	    		<button type="button" onclick="javascript:turnToMessageList();">返回留言列表</button>
	    	</td>
	    </tr>
    </table>
  </body>
</html>
