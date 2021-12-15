<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理界面</title>
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/manage.css">
<script type="text/javascript">

</script>
</head>
<body>
<form target="_self">
<div class="head">
	<font color="#CC6633" face="Lucida Console, Monaco, monospace" size="+4">比翼鸟后台管理界面</font>
</div>

<div class="left">
	<div style="width: 200px;height: 150px; border-bottom:2px solid green;">
	<div style="width: 100px;height: 100px;background-image: url(../style/kulou.jpg);background-size:100% 100%;border-radius:90px;float:left;"></div>
	<div style="padding-top:90px;"><font size="5px" color="red">${name}</font></div>
	.  .   .    .    .   .管理员正在登录
	</div>
	<ul>
    	<li><a href="screct.jsp" target="myframe">修改密码</a></li>
        <li><a href="user!listAdminAction.action" target="myframe">用户管理</a></li>
        <li><a href="user!manageFocusAction.action" target="myframe">关注管理</a></li>
        <li><a href="user!manageAdmireAction.action" target="myframe">点赞管理</a></li>
        <li><a href="user!manageInviteAction.action" target="myframe">邀请管理</a></li>
        <li><a href="user!manageComAction.action" target="myframe">留言管理</a></li>
        <li><a href="login.jsp" target="">退出登录</a></li>
    </ul>
</div>

<div class="middle">
</div>

<div class="right">
	<iframe name="myframe" height="495" width="1150px" scrolling="auto">  
    </iframe>  
</div>

</form>
</body>
</html>