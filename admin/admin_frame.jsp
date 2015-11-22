<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>网站后台管理平台</title>
  </head>    
    <frameset rows="100,*" cols="*" border="1" framespacing="1">
  		<frame src="admin/admin_top.jsp" name="topFrame" scrolling="yes" noresize="noresize" id="topFrame"/>
  		<frameset cols="200,*">
    		<frame src="admin/admin_left.jsp" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame"/>
    		<frame src="admin/admin_welcome.jsp" name="mainFrame" id="mainFrame"/>
    	</frameset>
	</frameset>
</html>
