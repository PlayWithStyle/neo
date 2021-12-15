<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>留言管理</title>
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/news.css">
<script type="text/javascript" src="../js/news.js"></script>
<script type="text/javascript">
function sendcom(){
	alert("发布成功！！！"); 
	document.getElementsByName("otherform")[0].action = "user!commentAction.action";
	document.getElementsByName("otherform")[0].method = "post";
	document.getElementsByName("otherform")[0].submit();
}
</script>
</head>
<body>
<div class="head">    
    </div>
    <div class="neck">
    	<div id="one"><font color="#FF00FF" size="+3">发布留言</font></div>
        <div id="two"><font color="#FF00FF" size="+3">留言墙</font></div>
        <div id="three"><font color="#FF00FF" size="+3">我的留言</font></div>
        
        <div id="reone"><font color="#FF00FF" size="+3">发布留言</font></div>
        <div id="retwo"><font color="#FF00FF" size="+3">留言墙</font></div>
        <div id="rethree"><font color="#FF00FF" size="+3">我的留言</font></div>
    </div>
    
    <div class="middle1">
    	<img style="margin-top:200px;" src="../style/earth.gif"></img>
    	<div class="mycom">
        	<form name="otherform">
        <textarea  name="other" id="other" style="width:350px; height:200px;" placeholder="请输入留言内容。。。"></textarea>
        	</form>
        <a href="" onclick="sendcom()"><font size="+2" face="华文行楷" style="text-decoration: none;">Message Book</font></a>
        </div>
    </div>
    <div class="middle2">
    	<div class="comlist">
            <s:if  test="#session.comlist[2] != '' ">
			<c:forEach items="${comlist}" var="u" varStatus="c">
					<font size="+2" color="red">@</font>
					<font size="+1" color="green">${u[1]}</font>
					发布留言
					<font size="+1" color="blue">${u[2]}</font>
			</c:forEach>
			</s:if>	
        </div>
        
    </div>
    <div class="middle3">
    	<div style="background-image: url(../style/wall.jpg);width: 400px;height: 400px;margin: 200px 500px;padding:100px 100px;">
       		<font size="+2" color="black">我发布的留言</font><br/>
       		<font size="+2" color="green">√</font>
       		<font face="华文隶书" size="+2" color="red">${other}</font><br/>	
       	</div>
    </div>
</body>
</html>