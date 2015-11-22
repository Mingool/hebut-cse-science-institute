<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div id="nav">
		<ul>
			<a class="navAdmin" href="login.jsp" target="_blank"><li></li></a>
			<a class="navAbout" href="about/about.jsp"><li></li></a>
			<a class="navContact" href="message/message.jsp"><li></li></a>
			<a class="navNews" href="news?page=1"><li></li></a>
			<a class="navIndex" href="index.jsp"><li></li></a>
	    </ul>
	</div>
<div id="headerBg"><img src="images/header-bg.jpg" width="980" height="411" /></div>
