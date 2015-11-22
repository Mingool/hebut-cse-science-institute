<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>留言管理页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		body{padding:20px 150px;; margin:0; background:#FFF; font-family:"宋体"; font-size:14px; color:#333;}
		div,p,h2,ul,li{padding:0; margin:0; list-style:none; border:0;}
		a:link,a:visited{color:#333; text-decoration:none;}
		a:hover{text-decoration:underline;}
		
		td{ border-bottom: 1px solid black; border-right: 1px solid black;}
	</style>
	
	<script type="text/javascript">
		function assureDelete(){
			if(window.confirm("确定要删除该条留言?")){
				return true;
			}else{
				return false;
			}
		}
	</script>
  </head>
  
  <body>
    <p>留言列表</p>
    <table style="border:1px solid black; width:80%">
    	<tr>
    		<td width="60px">id</td>
    		<td width="220px">姓名</td>
    		<td>日期</td>
    		<td colspan="2">功能</td>
    	</tr>
    	<c:forEach items="${page.list }" var="message">
    		<tr>
	    		<td>${message.mid }</td>
	    		<td>${message.mname }</td>
	    		<td>${message.mdate }</td>
	    		<td><a href="admin/usermessage?action_flag=showMessage&id=${message.mid }" ><font color="red">查看</font></a></td>
	    		<td><a href="admin/usermessage?action_flag=delete&id=${message.mid }" onclick="return assureDelete();"><font color="red">删除</font></a></td>
	    	</tr>
    	</c:forEach>
    	<tr>
    		<td colspan="4" style="text-align: center;">
    			<a href="admin/usermessage?action_flag=list&page=1">首页</a>
    			<a href="admin/usermessage?action_flag=list&page=${page.currentPage-1 }">上一页</a>
    			<a href="admin/usermessage?action_flag=list&page=${page.currentPage+1 }">下一页</a>
    			<a href="admin/usermessage?action_flag=list&page=${page.totalPage }">尾页</a>
    			一共${page.totalPage }页
    		</td>
    	</tr>
    </table>
  </body>
</html>
