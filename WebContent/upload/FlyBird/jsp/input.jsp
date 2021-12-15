<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>比翼鸟官网</title>
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/input.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<script type="text/javascript" src="../js/login.js"></script>

</head>
<body onload="createCode()">
 <div class="top">
        <div class="up"> 
          <div class="english"><font face="华文隶书" color="#003399" size="+3">FlyBird</font></div>
            <div class="bird"><marquee scrollamount="15" > <img src="../style/bird2.gif" width="89" height="50">  <img src="../style/bird2.gif" width="89" height="50">  <font face="华文行楷" size="+2" color="#CC0000">欢迎访问比翼鸟相亲网站，您的信赖是对我们最大的支持，ありがとうございます！</font><img src="../style/bird2.jpg" width="89" height="50">
            </div></marquee>
          </div> 
            <div class="word">
                <a href="#">积分商城</a><font>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;</font>
                <a href="#">会员中心</a><font>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;</font>
                <a href="#">在线客服</a><font>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;</font>
                <a href="#">帮助中心</a>
            </div>
        </div>	
    </div>
    
        <div class="copy">
    <nav class="navbar navbar-default">
  <div class="container-fluid" >
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
       
       <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">网站介绍<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <div style="background-color:#0033CC; width:300px; height:200px" >
            </div>
          </ul>
        </li>
       
        <li><a href="#"　class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">关注我们</a></li>
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="请输入查询内容">
        </div>
        <button type="submit" class="btn btn-default">查找</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        
        <li class="text">
          <a href="">普通用户登录入口<span></span></a>
        </li>
        
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
		
</div>


		<div class="logindiv" style="height:508px; width:1360px; background-color:#6CC"> 
        	<div class="image">
            </div>
                   	
             <div id="login">
           		<form name="myforms1" id="myforms1" onsubmit="validateCode()">
		        	<div class="input-group">
			        <span class="input-group-addon">>></span>
			        <input type="text" style="height:40px; width:250px; background-image:url(../style/star.jpg);border-radius:10px; " autocomplete="off" name="userid" id="userid" placeholder="请输入比翼鸟账号">
		            </div>
		             <div class="input-group" style="margin-top: 10px;">
			         <span class="input-group-addon">>></span>
			         <input type="password" style="height:40px; width:250px; background-image:url(../style/star.jpg);border-radius:10px;" autocomplete="off" name="password" id="password" placeholder="请输入比翼鸟密码">
		             </div>
		        </form>
		        
		        <table border="0" cellspacing="5" cellpadding="5" >
        <tr>
            <td> <div class="code" id="checkCode" onclick="createCode()"></div></td>
            <td>.<br/>.<br/><a href="" onclick="createCode()"><font color="red">看不清换一张</font></a></td>
        </tr>
        <tr>
            <td>.....请输入验证码：</td>
            <td><input  style="float:left; background-color: yellow;width: 160px; height: 40px;" type="text" id="inputCode"/></td>
        </tr>
    </table>
    		.<br/>.<br/>
                     <button class="button" style=" background-image:url(../style/qq.jpg); width:100px; height:40px" id="ajax" onclick="ajaxlogin()">登录</button>
		             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
                     <input type="reset" style=" background-image:url(../style/qq.jpg); width:100px; height:40px" value="重置"/>      
           </div>                    
       </div>
       <div>
       </div>
</body>
</html>