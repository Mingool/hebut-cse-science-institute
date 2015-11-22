<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><!-- InstanceBegin template="/Templates/Template-about.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
	<base href="<%=basePath%>">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!-- InstanceBeginEditable name="doctitle" -->
	<title>成就展示</title>
	<!-- InstanceEndEditable -->
	<link href="css/about/about.css" rel="stylesheet" type="text/css" />
	<link href="commons/commons.css" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript" src="javascript/scroll.js"></script>
	
	<!-- InstanceBeginEditable name="head" -->
	<!-- InstanceEndEditable -->
</head>
<body>
	<jsp:include page="/commons/top.jsp"></jsp:include>
	<div id="box">
	  <div class="left">
	  		<div class="select">
	        	<h2><img src="images/about-title-select.jpg" width="190" height="40" alt="栏目分类" /></h2>
	            <span><img src="images/line2.jpg" width="258" height="1" /></span>
	            <ul>
	            	<li><a href="about/about.jsp">社团介绍</a></li>
	                <li><a href="about/achievelist.jsp">成就展示</a></li>
	            </ul>	
	    </div>
	        <div class="link">
	            <h2><img src="images/about-title-link.jpg" width="190" height="40" alt="友情链接" /></h2>
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
	            <img src="images/about-title-contact.jpg" width="190" height="40" alt="联系我们" />
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
		  			<h3><a href="javascript:void(0)">成就展示</a><span>您现在所在的位置：<a href="index.jsp">首页</a> > <a href="about/about.jsp">关于科协</a> > <a href="javascript:void(0)">成就展示</a></span></h3>
	      			<span><img src="images/line-5.jpg" width="708" height="1" /></span>
	                <ul>
	                	<li>
	        				<a href="javascript:void(0)"><p class="picture"><img src="images/product/team.jpg" width="110" height="110" /></p>
	        				</a>
	       	 			  	<a href="javascript:void(0)"><p class="title">小品团队</p></a>
	        			</li>
	                    <li>
	        				<a href="javascript:void(0)"><p class="picture"><img src="images/product/01.jpg" width="110" height="110" /></p>
	        				</a>
	           	 			<a href="javascript:void(0)"><p class="title">乐管家</p></a>
	        			</li>
	                    <li>
	        				<a href="javascript:void(0)"><p class="picture"><img src="images/product/02.jpg" width="110" height="110" /></p>
	        				</a>
	           	 			<a href="javascript:void(0)"><p class="title">水立方</p></a>
	        			</li>
	                    <li>
	        				<a href="javascript:void(0)"><p class="picture"><img src="images/product/03.jpg" width="110" height="110" /></p>
	        				</a>
	           	 			<a href="javascript:void(0)"><p class="title">万能遥控器</p></a>
	        			</li>
	                    <li>
	        				<a href="javascript:void(0)"><p class="picture"><img src="images/product/04.jpg" width="110" height="110" /></p>
	        				</a>
	           	 			<a href="javascript:void(0)"><p class="title">防丢宝</p></a>
	        			</li>
	                    <li>
	        				<a href="javascript:void(0)"><p class="picture"><img src="images/product/05.jpg" width="110" height="110" /></p>
	        				</a>
	           	 			<a href="javascript:void(0)"><p class="title">平安扶</p></a>
	        			</li>
	                    <li>
	        				<a href="javascript:void(0)"><p class="picture"><img src="images/product/06.jpg" width="110" height="110" /></p>
	        				</a>
	           	 			<a href="javascript:void(0)"><p class="title">智能药箱</p></a>
	        			</li>
	                    <li>
	        				<a href="javascript:void(0)"><p class="picture"><img src="images/product/07.jpg" width="110" height="110" /></p>
	        				</a>
	           	 			<a href="javascript:void(0)"><p class="title">时光宝镜</p></a>
	        			</li>
                	</ul> 
	       		</div>
		  		<span><img src="images/line-7.jpg" width="710" height="10" /></span> 
	        </div>
		<!-- InstanceEndEditable -->
	    </div>
	<jsp:include page="/commons/bottom.jsp"></jsp:include>

</body>
<!-- InstanceEnd --></html>
