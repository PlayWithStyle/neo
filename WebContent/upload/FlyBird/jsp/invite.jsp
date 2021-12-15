<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>邀请管理</title>
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<script type="text/javascript">
function delinvite(id){
	 if(confirm("Are You Sure?")){ 
		document.getElementsByName("myform")[0].action = "user!inviteDeleteAction.action?inviteid="+id;
		document.getElementsByName("myform")[0].method = "post";
		document.getElementsByName("myform")[0].submit();
	 }else{
		return;
	} 
}
</script>
</head>
<body>
<form name="myform">
<div style="background-image: url(../style/33.jpg);width: 280px;height: 50px;">
<font face="华文行楷" size="+3" color="white">邀请信息管理界面</font>
</div>
<div class="container" >
	 <table class="table table-bordered table-striped">
		<tr>
			<td><font face="隶书">主键ID</font></td>
			<td><font face="隶书">被邀请人</font></td>
			<td><font face="隶书">邀请人</font></td>
			<td><font face="隶书">判断条件</font></td>
			<td><font face="隶书">操作</font></td>
		</tr>
		<c:forEach items="${invitelist}" var="u" varStatus="c">
			<tr>
				<td>${u.id}</td>
				<td>${u.invited}</td>
				<td>${u.inviting}</td>
				<td>${u.flag}</td>
				<td><a href="" onclick="delinvite(${u.id})"><font face="华文行楷" size="+1" color="red">删除</font></a></td>
 			</tr>
		</c:forEach>
	</table> 
</div>
</form>
</body>
</html>