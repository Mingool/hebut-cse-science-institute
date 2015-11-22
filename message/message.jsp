<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>留言板页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="javascript/scroll.js"></script>
	
	<link href="css/userMessage/contact.css" rel="stylesheet" type="text/css" />
	<link href="commons/commons.css" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript">
		function changeFormat(){
			var content = document.getElementById("check_content").value;
			content=content.replace('\n','<br/>'); 
			content=content.replace(' ','&nbsp;');
			document.getElementById("check_content").value=content;
		}
	
		function checkForm(){
			var name = document.getElementById("check_name");
			var tele = document.getElementById("check_tele");
			var qq = document.getElementById("check_qq");
			var content = document.getElementById("check_content");
			
			var res = true;
			if(name==null || name.value==""){
				alert("姓名不能为空;");
				res = false;
			}
			if(name.value.length>10){
				alert("姓名长度必须小于10");
				res = false;
			}
			if(tele.value.length>15){
				alert("电话长度必须小于15;");
				res = false;
			}
			if(qq.value.length>20){
				alert("Email/QQ长度必须小于20");
				res = false;
			}
			if(content.value.length>200){
				alert("对不起，回复内容已超200字;");
				res = false;
			}
			if(res==true){
				//changeFormat();
				var form = document.getElementById("message_form");
				form.submit();
			}
		}
	</script>
  </head>
  
  <body>
	<jsp:include page="/commons/top.jsp"></jsp:include>
	<div id="box">
	  <div class="left">
	        <div class="link">
	            <h2><img src="images/news-title-link.jpg" width="190" height="40" alt="友情链接" /></h2>
	            <span><img src="images/line2.jpg" width="258" height="1" /></span>
	            <ul>
	                <li><a href="http://shop111300626.taobao.com/shop/view_shop.htm?spm=a1z0e.1.10010.4.zzYTG9" target="_blank">科协淘宝店铺</a><img src="images/hot.gif" width="25" height="9" /></li>
	                <li><a href="http://jwc.hebut.edu.cn/" target="_blank">河北工业大学教务处</a></li>
	                <li><a href="http://www.hebut.edu.cn/" target="_blank">河北工业大学官方网站</a></li>
	                <li><a href="http://www.hebut.edu.cn/sslvpn/index.htm" target="_blank">河北工业大学VPN入口</a></li>
	                <li><a href="http://cse.hebut.edu.cn/" target="_blank">控制科学与工程学院</a></li>
	                <li><a href="http://www.scse.hebut.edu.cn/" target="_blank">计算机科学与软件学院</a></li>
	            </ul>	
	        </div>
	        <div class="contact">
	            <h2>
	            <img src="images/news-title-contact.jpg" width="190" height="40" alt="联系我们" />
	            </h2>
	            <span><img src="images/line2.jpg" width="258" height="1" /></span>
	          	<p>
	              地  址：天津市北辰区西平道5340号<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;河北工业大学东院<br />   
	                邮  编：300401<br />  
	            热线电话：022-60202765<br />                                
	            微信公众号：hebut-kongzhikexie<br />  
	            新浪微博：河北工业大学控制科协
	            </p>
	        </div>
	    </div>
		<!-- InstanceBeginEditable name="EditRegion3" -->
			<div class="right"> 
	        <span><img src="images/line-6.jpg" width="710" height="10" /></span>
		  	<div class="content">
		  	<h3>留言板<span>您现在所在的位置：<a href="index.jsp">首页</a> > 留言板</span></h3>
	      	<span><img src="images/line-5.jpg" width="708" height="1" /></span> 
	        	<form method="post" action="message" id="message_form">
	            	<table>
	                	<tr height="20px;"></tr>
	                	<tr>
	                    	<td width="20px;"></td>
	                    	<td width="150px;">姓名 :</td>
	                        <td width="230px;"><input id="check_name" type="text" name="name"/></td>
	                    </tr>
	                	<tr height="10px;"></tr>
	                    <tr>
	                    	<td width="20px;"></td>
	                    	<td>联系电话 :</td>
	                        <td><input id="check_tele" type="text" name="tele"/></td>
	                    </tr>
	                    <tr height="10px;"></tr>
	                    <tr>
	                    	<td width="20px;"></td>
	                    	<td>类别 :</td>
	                        <td><label for="person">个人</label><input type="radio" name="category" value="1" id="person" checked="checked">
	                <label for="company">企业</label><input type="radio" name="category" value="2" id="company"></td>
	                    </tr>
	                    <tr height="10px;"></tr>
	                    <tr>
	                    	<td width="20px;"></td>
	                    	<td width="150px;">Email/QQ  :</td>
	                        <td width="230px;"><input id="check_qq" type="text" name="qq"/></td>
	                    </tr>
	                	<tr height="10px;"></tr>
	                    <tr>
	                    	<td width="20px;"></td>
	                    	<td width="150px;">留言 :</td>
	                        <td width="230px;"><pre><textarea id="check_content" name="contact" cols="40" rows="10">请留言：</textarea></pre></td>
	                    </tr>
	                	<tr height="10px;"></tr>
	                	<tr height="10px;"></tr>
	                    <tr>
	                    	<td width="20px;"></td>
	                    	<td width="150px;"><input type="button" value="提交" onclick="checkForm();"/></td>
	                        <td width="230px;"><input type="reset" value="重置"/></td>
	                    </tr>
	                </table>
	            </form>
	        </div>
		  	<span><img src="images/line-7.jpg" width="710" height="10" /></span> 
	        </div>
		<!-- InstanceEndEditable -->
	    </div>
	<jsp:include page="/commons/bottom.jsp"></jsp:include>
  </body>
</html>
