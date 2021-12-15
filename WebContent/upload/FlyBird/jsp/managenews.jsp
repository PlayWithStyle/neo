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
<script src="../js/npm.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<script type="text/javascript">
function manageDelete(userid){
	if(confirm("确定要删除吗？")){
		document.getElementsByName("myform")[0].action = "user!manageDeleteAction.action?userid="+userid;
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
	<table class="table table-bordered table-striped">
		<tr>
			<td><font size="+2" color="red" face="华文行楷">留言ID</font></td>
			<td><font size="+2" color="red" face="华文行楷">留言人</font></td>
			<td><font size="+2" color="red" face="华文行楷">留言内容</font></td>
			<td><font size="+2" color="red" face="华文行楷">操作</font></td>
		</tr>
	<c:forEach items="${comlist}" var="u" varStatus="c">
		<tr>
			<td><font size="+1" color="red">${u[0]}</font></td>
			<td><font size="+1" color="green">${u[1]}</font></td>
			<td><font size="+1" color="blue">${u[2]}</font></td>
			<td><a href="" onclick="manageDelete(${u[0]})">删除留言</a></td>
		</tr>
	</c:forEach>
	</table>										
						
</form>		
</body>
</html>