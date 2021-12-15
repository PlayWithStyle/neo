<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎登录</title>
<link rel="stylesheet" type="text/css" href="../css/success.css">
<script src="../js/jquery.min.js"></script>
<script src="../js/npm.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<script type="text/javascript">
$(document).ready(function(){
    $("#myNav").affix({
        offset: { 
            top: 125 
      }
    });
});


function reset(){
	var path = "reset.jsp";
	//设置弹出窗口的大小
	var set_window="dialogwidth=600px;dialoghegith=200px;scroll=yes;resizable=no;center=yes";
	//打开窗口
	window.showModalDialog(path,window,set_window);
}
</script>
</head>
<body data-spy="scroll" data-target="#myScrollspy" "> 
<div class="head">
<div class="massage">
<div id="date">登录时间-</div><div id="time">hello</div>
<img src="${pageContext.request.contextPath}/upload/${photo}"></img>当前登录 <font face="隶书" size="5px" color="red">  ${name}  </font>
<!-- <input type="button" value="修改密码" onclick="reset()"/> -->
<a href="#" onclick="reset()">修改密码</a>
<a href="login.jsp">退出登录</a>
		
	</div>
</div>
        <div style="width: 300px;height: 100px;background-color: yellow;margin-left: 1000px;z-index: 1px;">
                   我的粉丝              ---           新增粉丝        ---          获赞  <br/>            
        <c:forEach items="${listfocus}" var="focus">
        	${focus.id}|${focus.interesting}
        </c:forEach>
        <p style=" padding-left: 230px;padding-top: 45px;"><a href="user!readAction.action">我知道了</a></p>
   		</div>
<div class="container">
    <div class="row">
        <div class="col-xs-3" id="myScrollspy">
            <ul class="nav nav-tabs nav-stacked" id="myNav">
                <li class="active"><a href="#section-1">第一部分</a></li>
                <li ><a href="#section-2">第二部分</a></li>
                <li><a href="#section-3">第三部分</a></li>
                <li><a href="#section-4">第四部分</a></li>
                <li><a href="#section-5">第五部分</a></li>
                <li><a href="test.jsp">算一下你的命中情人</a></li>
            </ul>
        </div>
        
        <div class="col-xs-9">
            <h2 id="section-1">
            	<div id="part1">
            	</div>
			</h2>
            <hr>
            <h2 id="section-2">
            	<div id="part2">
            	</div>
            </h2>
            <hr>
            <h2 id="section-3">
            	<div id="part3">
            	</div>
            </h2>
            <hr>
            <h2 id="section-4">
            	<div id="part4">
            	</div>
            </h2>
            <hr>
            <h2 id="section-5">
            	<div id="part5">
            	</div>
            </h2>
        </div>
    </div>
</div>




<script type="text/javascript">
//页面加载时显示登录时间
document.getElementById("time").innerHTML=new Date().toLocaleString();

</script>

</body>
</html>