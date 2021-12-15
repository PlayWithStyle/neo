<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户管理</title>
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
function deluser(userid){
	 if(confirm("你确定要删除该用户吗？")){ 
		document.getElementsByName("myforms")[0].action = "user!deleteAdminAction.action?userid="+userid;
		document.getElementsByName("myforms")[0].method = "post";
		document.getElementsByName("myforms")[0].submit();
	 } 
}
</script>
</head>
<body>
<form name="myforms" id="myforms" action="" >
<div class="container" >
	 <table class="table table-bordered table-striped">
		<tr>
			<td><font face="隶书">账号</font></td>
			<td><font face="隶书">姓名</font></td>
			<td><font face="隶书">密码</font></td>
			<td><font face="隶书">年龄</font></td>
			<td><font face="隶书">性别</font></td>
			<td><font face="隶书">身高</font></td>
			<td><font face="隶书">住址</font></td>
			<td><font face="隶书">学历</font></td>
			<td><font face="隶书">月薪</font></td>
			<td><font face="隶书">特权</font></td>
			<td><font face="隶书">个性签名</font></td>
			<td><font face="隶书">对象操作</font></td>
		</tr>
		<c:forEach items="${list}" var="u" varStatus="c">
			<tr>
				<td>${u.userid}</td>
				<td>${u.username}</td>
				<td>${u.password}</td>
				<td>${u.age}</td>
				<td>${u.sex}</td>
				<td>${u.tall}</td>
				<td>${u.address}</td>
				<td>${u.education}</td>
				<td>${u.money}</td>
				<td>${u.privilege}</td>
				<td>${u.nature}</td>
				<td>
				<a href="user!selectAdminAction.action?userid=${u.userid}">编辑</a> 
				<%-- <a href="user!deleteAdminAction.action?userid=${u.userid}">删除</a> --%>
				<a href="" onclick="deluser(${u.userid})">删除</a>
				</td>
 			</tr>
		</c:forEach>
	</table> 
	
			<div align="right">
			<a href="user!listAdminAction.action?pageNo=1">首页</a>
			<a href="user!listAdminAction.action?pageNo=${page.prePageNo}">上一页</a>
			<h>第${page.pageNo}页/共${page.pageCount}页</h>
			<a href="user!listAdminAction.action?pageNo=${page.nextPageNo}">下一页</a>
			<a href="user!listAdminAction.action?pageNo=${page.pageCount}">尾页</a>
			</div> 
</div>
</form>
</body>
</html>