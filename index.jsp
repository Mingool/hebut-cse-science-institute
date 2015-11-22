<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.giraffe.service.NewsServices,com.giraffe.entity.Page,com.giraffe.entity.News" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	NewsServices services = new NewsServices();
	Page pag = services.getPageByIndex(1, 6);
	List<News> list = pag.getList();
	
	News ne = list.get(0);
	
	String title = ne.getNtitle();
	if(title.length()>12){
		title = title.substring(0, 12);
		title+="..";
	}
	pageContext.setAttribute("first_title",title,PageContext.PAGE_SCOPE);
	
	int id = ne.getNid();
	pageContext.setAttribute("first_id", id,PageContext.PAGE_SCOPE);
	
	String content = ne.getNcontent();
	if(content.length()>48){
		content = content.substring(0, 48);
	}
	pageContext.setAttribute("first_content", content,PageContext.PAGE_SCOPE);
	
	list.remove(0);
	pageContext.setAttribute("list", list,pageContext.PAGE_SCOPE);

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>控制学院科技协会网</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<link rel="stylesheet" type="text/css" href="commons/commons.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	
	<script type="text/javascript" src="javascript/lanrenzhijia.js"></script>
	
	<link rel="stylesheet" type="text/css" href="css/lanrenzhijie.css">
  </head>
  
  <body>
 	<jsp:include page="/commons/top.jsp"></jsp:include>
	<div id="contentTop">
		<div class="news">
	    	<h2>
	        	<a href="news?page=1"><img src="images/index-title-news.jpg" width="145" height="40" alt="新闻" /></a>
	            <a class="More" href="news?page=1">更多</a>
	        </h2>
	        <span><img src="images/line2.jpg" width="258" height="1" /></span>
	        <a href="javascript:void(0)"><p class="image"><img src="images/index_show.jpg"></img></p></a>
	        <h3>${first_title }</h3>
	        <p class="newsContent">${first_content }<a href="shownews?id=${first_id }">【详细报道】</a></p>     
			<c:forEach items="${list }" var="news">
				<ul>
	        		<a href="shownews?id=${news.nid }"><li>${news.ntitle }</li></a>
	       		</ul>
			</c:forEach>
	    </div>
	    <div class="presentation">
	    	<h2>
	        	<a href="about/about.jsp"><img src="images/index-title-presentation.jpg" width="190" height="40" alt="社团介绍" /></a>
	            <a class="More" href="about/about.jsp">更多</a>     
	        </h2>
	        <span><img src="images/line3.jpg" width="708" height="1" /></span>
	        <dl>
	        	<dt><img src="images/school.jpg" width="110" height="110" /></dt>
	            <dd>大学生科技创新协会隶属于河北工业大学，控制科学与工程学院，是一个以“学习、创新、实践”为主的创新性学生社团。社团创建初期，就本着“求实”的精神，开展了一系列的竞赛项目，取得了显著的成绩。2014年，社团被评为中国大学生“小平科技创新团队”之一，在北京人民大会党接受颁奖...<a href="about/about.jsp">【详细信息】</a></dd>
	        </dl> 
	    </div>
	    <div class="picture" style="text-align:center;font:12px/20px Arial;">
			<div id="box_lanrenzhijia" style="text-align:center;">
			    <div class="list">
			        <ul>
			            <li><img src="images/01.jpg" width="710" height="260" /></li>
			            <li><img src="images/02.jpg" width="710" height="260" /></li>
			            <li><img src="images/03.jpg" width="710" height="260" /></li>
			            <li><img src="images/04.jpg" width="710" height="260" /></li>
			            <li><img src="images/05.jpg" width="710" height="260" /></li>
			        </ul>
			    </div>
			</div>
	    </div>   
	</div>
	<div class="achievement">
	    <h2>
	        <a href="about/achievelist.jsp"><img src="images/index-title-achievement.jpg" width="190" height="40" alt="成就展示" /></a>
	        <a class="More" href="about/achievelist.jsp">更多</a>
	    </h2>
	    <span><img src="images/line4.jpg" width="978" height="1" /></span>
	    <ul>
	    	<li>
	        	<a href="about/achievelist.jsp"><p class="picture"><img src="images/product/team.jpg" width="110" height="110" /></p>
	        	</a>
	          <a href="about/achievelist.jsp"><p>小品团队</p></a>
	        </li>
	        <li>
	        	<a href="about/achievelist.jsp"><p class="picture"><img src="images/product/01.jpg" width="110" height="110" /></p>
	        	</a>
	            <a href="about/achievelist.jsp"><p>乐管家</p></a>
	        </li>
	        <li>
	        	<a href="about/achievelist.jsp"><p class="picture"><img src="images/product/02.jpg" width="110" height="110" /></p>
	        	</a>
	            <a href="about/achievelist.jsp"><p>水立方</p></a>
	        </li>
	        <li>
	        	<a href="about/achievelist.jsp"><p class="picture"><img src="images/product/03.jpg" width="110" height="110" /></p>
	        	</a>
	            <a href="about/achievelist.jsp"><p>万能遥控器</p></a>
	        </li>
	        <li>
	        	<a href="about/achievelist.jsp"><p class="picture"><img src="images/product/04.jpg" width="110" height="110" /></p>
	        	</a>
	            <a href="about/achievelist.jsp"><p>防丢宝</p></a>
	        </li>  
    	</ul>
	</div>
	<div id="contentBottom">
		<div class="contact">
	    	<h2>
	        	<img src="images/index-title-contact.jpg" width="190" height="40" alt="联系我们" />
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
	    <div class="link">
	    	<h2>
	        	<img src="images/index-title-link.jpg" width="190" height="40" alt="友情链接" /> 
	        </h2>
	        <span><img src="images/line2.jpg" width="708" height="1" /></span>
	        <ul>
	        	<li><a href="http://shop111300626.taobao.com/shop/view_shop.htm?spm=a1z0e.1.10010.4.zzYTG9" target="_blank">科协淘宝店铺</a><span><img src="images/hot.gif" width="25" height="9" /></span></li>
	            <li><a href="http://www.hebut.edu.cn/" target="_blank">河北工业大学官方网站</a></li>
	            <li><a href="http://cse.hebut.edu.cn/" target="_blank">河北工业大学控制科学与工程学院</a></li>
	            <li><a href="http://www.scse.hebut.edu.cn/" target="_blank">河北工业大学计算机科学与软件学院</a></li>
	            <li><a href="http://www.hebut.edu.cn/sslvpn/index.htm" target="_blank">河北工业大学VPN入口</a></li>
	            <li><a href="http://jwc.hebut.edu.cn/" target="_blank">河北工业大学教务处</a></li>
	            <li><a href="http://sports.hebut.edu.cn/" target="_blank">河北工业大学体育部</a></li>
	            <li><a href="http://jyxy.hebut.edu.cn/" target="_blank">河北工业大学建筑艺术学院</a></li>
	        </ul>	
	    </div>
	</div>
	
	<jsp:include page="/commons/bottom.jsp"></jsp:include>

  </body>
</html>
