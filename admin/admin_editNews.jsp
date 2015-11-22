<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.giraffe.entity.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	Object obj = request.getAttribute("reNews");
	StringBuffer tips = new StringBuffer();
	if(obj instanceof NewsFormBean){
		NewsFormBean bean = (NewsFormBean)obj;
		tips = bean.getSb();
	}
	
	pageContext.setAttribute("tips", tips,PageContext.REQUEST_SCOPE);
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新闻编辑页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	
	<style type="text/css">
		body{padding:20px 150px;; margin:0; background:#FFF; font-family:"宋体"; font-size:14px; color:#333;}
		div,p,h2,ul,li{padding:0; margin:0; list-style:none; border:0;}
		a:link,a:visited{color:#333; text-decoration:none;}
		a:hover{text-decoration:underline;}
		
		td{ border-bottom: 1px solid black; border-right: 1px solid black;}
	</style>
	
	<script type="text/javascript">
		/*
		function replaceTextArea(){
			var content=document.getElementById("ncontent").value; 
			content=content.replace('\n','<br />'); 
			content=content.replace(' ','&nbsp;&nbsp;'); 
			document.getElementById("ncontent").value=content;
			return true;
		}
		*/
		function returnToNewsList(){
			var url = "admin/news?page=1&&action_flag=list";
			window.location.href=url;
		}
		function checkForm(){
			var title = document.getElementById("ntitle");
			var author = document.getElementById("nauthor");
			var date = document.getElementById("ndate");
			var content = document.getElementById("ncontent");
			
			var res = true;
			if(title.value==null || title.value==""){
				alert("标题不能为空");
				res = false;
			}
			if(title.value!="" && title.value.length>20){
				alert("标题必须小于20字符");
				res = false;
			}
			if(author.value==null || author.length>10){
				alert("作者必须小于10字符");
				res = false;
			}
			if(content.value==null || content.length>2000){
				alert("内容必须小于2000字");
				res = false;
			}
			
			if(res==true){
				return true;
			}else{
				return false;
			}
		}
	</script>
  </head>
  
  <body>
  <br/>
    <div class="top_div" id="tips">
    	提示信息:<font style="color: red;">请按照要求填写</font><br/>
    	<font style="color: red;">标题不能为空,且小于20字符;&nbsp;&nbsp;作者小于10字符；&nbsp;&nbsp;内容小于2000字</font><br/>
    	<font style="color: red;">日期按照"2015-02-21"格式填写</font><br/>
    	<font style="color: red">上传图片的大小不能超过2M</font>&nbsp;&nbsp;&nbsp;<font color="green">${tips }</font>
    </div>
    <form action="admin/editNews" method="post" enctype="multipart/form-data">
    	<table class="main_table" style="border:1px solid black; width: 90%">
    		<tr style="height: 30px;">
    			<td>标题:</td>
    			<td><input type="text" id="ntitle" name="ntitle" value="${reNews.ntitle }" style="width:300px;"/></td>
    		</tr>
    		<tr style="height: 30px;">
    			<td>作者:</td>
    			<td><input type="text" id="nauthor" name="nauthor" value="${reNews.nauthor }" style="width:300px;"/></td>
    		</tr>
    		<tr style="height: 30px;">
    			<td>日期:</td>
    			<td><input type="text" id="ndate" name="ndate" value="${reNews.ndate }" style="width:300px;"/></td>
    		</tr>
    		<tr style="height: 50px;">
    			<td colspan="3">
    				<input type="radio" name="choice" value="1" checked="checked">维持图片现状</input><br/>
    				<input type="radio" name="choice" value="2">不要图片了(删除此新闻的图片;前提是这个新闻有照片)</input><br/>
    				<input type="radio" name="choice" value="3">使用新图片</input><input type="file" name="picture" size="30"/>
    			</td>
    		</tr>
    		<tr style="height: 30px;">
    			<td>内容:</td>
    			<td><pre><textarea rows="20" cols="70" name="ncontent" id="ncontent">${reNews.ncontent }</textarea></pre></td>
    		</tr>
    		<tr style="height: 30px;">
    			<td><input type="submit" value="确认修改" onclick="return checkForm();"/></td>
    			<td><button type="button" onclick="javascript:returnToNewsList();">返回新闻列表</button></td>
    		</tr>
    	</table>
    	<!-- <input type="hidden" name="action_flag" value="edit" >	 -->
    	<input type="hidden" name="nid" value=${reNews.nid }>
 	
    </form>
  </body>
</html>
