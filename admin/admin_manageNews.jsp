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
    
    <title>新闻管理页面</title>
    
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
		function assureDeleteNews(){
			//确定是否删除新闻
			if(window.confirm('确定删除该新闻吗?')){
				return true;
			}else{
				return false;	
			}
		}
	</script>
  </head>
  
  <body>
    <p>新闻列表:</p>
    <table id="bottom_table" style="border:1px solid black; width:100%">
    	<tr>
    		<td>id</td>
    		<td>标题</td>
    		<td>作者</td>
    		<td>日期</td>
    		<td colspan="2">功能</td>
    	</tr>
    	<c:forEach items="${page.list}" var="news">
			<tr>
				<td>${news.nid }</td>
				<td>${news.ntitle }</td>
				<td>${news.nauthor }</td>
				<td>${news.ndate }</td>
				<td><a href="admin/news?nid=${news.nid }&&action_flag=show"><font color="red">修改</font></a></td>
				<td><a href="admin/deleteNews?nid=${news.nid }" onclick="return assureDeleteNews();"><font color="red">删除</font></a></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6" style="text-align: center;">
				当前第${page.currentPage }页/共${page.totalPage }页 &nbsp;&nbsp;&nbsp;
				<a href="admin/news?action_flag=list&&page=${page.currentPage-1 }">上一页</a>&nbsp;<a href="admin/news?action_flag=list&&page=${page.currentPage+1 }">下一页</a>
			</td>
		</tr>
    </table>
  </body>
</html>
