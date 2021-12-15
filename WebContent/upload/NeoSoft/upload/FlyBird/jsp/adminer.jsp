<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>后台登录</title>
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<script type="text/javascript" src="../js/adminer.js"></script>
</head>
<body style="background-image:url(../style/8.gif);">
	<div style="margin-top:200px;margin-left:460px;">
		<form name="myforms1" id="myforms1">
		        	<div class="input-group">
			        <span class="input-group-addon">>></span>
			        <input type="text" style="height:40px; width:250px;" autocomplete="off" name="adminer.id" id="adminerid" placeholder="请输入比翼鸟账号">
		            </div>
		             <div class="input-group" style="margin-top: 10px;">
			         <span class="input-group-addon">>></span>
			         <input type="password" style="height:40px; width:250px;" autocomplete="off" name="adminer.password" id="adminerpass" placeholder="请输入比翼鸟密码">
		             </div>
		 </form>
		  <input type="button" value="登录" style=" background-image:url(../style/qq.jpg); width:100px; height:40px; margin-top:50px;margin-left:30px;" id="ajax" onclick="ajaxlogin()"/>
<!-- 		  <button class="button" style=" background-image:url(../style/qq.jpg); width:100px; height:40px; margin-top:50px;margin-left:30px;" id="ajax" onclick="ajaxlogin()">登录</button>
 -->		   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
          <input type="reset" style=" background-image:url(../style/qq.jpg); width:100px; height:40px" value="重置"/>
	</div>

</body>
</html>