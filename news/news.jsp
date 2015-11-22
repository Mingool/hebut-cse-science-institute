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
    
    <title>新闻中心</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	
	<link rel="stylesheet" type="text/css" href="commons/commons.css">
	<link href="css/news/news.css" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript" src="javascript/scroll.js"></script>
	
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
		  	<div class="content" style="height:675px;">
		  		<h3><a href="#">新闻中心</a><span>您现在所在的位置：<a href="index.jsp">首页</a> > <a href="news?page=1">新闻中心</a></span></h3>
	      		<span><img src="images/line-5.jpg" width="708" height="1" /></span>
				<c:forEach items="${page.list}" var="news">
					<dl>
		        		<dt><a href="shownews?id=${news.nid }">${news.ntitle }</a></dt>
		            	<dd>${news.ndate }</dd>
		        	</dl>
				</c:forEach>
	            <div class="page">[${page.currentPage }/${page.totalPage }]页 本页[14]条 [ <a href="news?page=1">首页</a>  ] [ <a href="news?page=${page.currentPage-1 }">上一页</a>  ] [ <a href="news?page=${page.currentPage+1 }">下一页</a> ] [ <a href="news?page=${page.totalPage }">末页</a>  ] </div>
	        
	        
	        
	        
	         
	        </div>
		<span><img src="images/line-7.jpg" width="710" height="10" /></span> 
	    </div>
		<!-- InstanceEndEditable -->
	    </div>
	<jsp:include page="/commons/bottom.jsp"></jsp:include>
  </body>
</html>
