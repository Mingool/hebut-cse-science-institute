<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>addNews</title>
    
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
    <div class="top_div" id="tips">
    	提示信息:<font style="color: red;">请按照要求填写</font><br/>
    	<font style="color: red;">标题不能为空,且小于20字符;&nbsp;&nbsp;作者小于10字符；&nbsp;&nbsp;内容小于2000字</font><br/>
    	<font style="color: red;">日期按照"2015-02-21"格式填写</font><br/>
    	<font style="color: red">上传图片的大小不能超过2M</font>&nbsp;&nbsp;&nbsp;<font color="green">${reNews.sb }</font>
    </div>
    <form action="admin/addNews" method="post" enctype="multipart/form-data">
    	<table class="main_table" style="border:1px solid black; width: 90%">
    		<tr style="height: 30px;">
    			<td>标题:</td>
    			<td><input id="ntitle" type="text" name="ntitle" value="${reNews.ntitle }" style="width:300px;"/></td>
    		</tr>
    		<tr style="height: 30px;">
    			<td>作者:</td>
    			<td><input id="nauthor" type="text" name="nauthor" value="${reNews.nauthor }" style="width:300px;"/></td>
    		</tr>
    		<tr style="height: 30px;">
    			<td>日期:</td>
    			<td><input id="ndate" type="text" name="ndate" value="${reNews.ndate }" style="width:300px;"/></td>
    		</tr>
    		<tr style="height: 30px;">
    			<td rowspan="2"><input type="radio" name="choice" value="0" checked="checked">没有图片</input></td>
    			<td style="border-bottom: none;"><input type="radio" name="choice" value="1">有图片</input></td>
    		</tr>
    		<tr style="height: 30px;">
    			
    			<td><input type="file" name="picture" size="30"/></td>
    		</tr>
    		<tr>
    			<td>内容:</td>
    			<td><pre><textarea id="ncontent" rows="20" cols="70" name="ncontent" id="ncontent">${reNews.ncontent}</textarea></pre></td>
    		</tr>
    		<tr style="height: 30px;">
    			<td><input type="submit" value="提交" onclick="return checkForm();"/></td>
    			<td><input type="reset" value="重置"/></td>
    		</tr>
    	</table>  	
    </form>
    
  </body>
</html>
