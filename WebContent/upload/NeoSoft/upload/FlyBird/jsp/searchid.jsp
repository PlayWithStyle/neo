<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>精确查询</title>
<script src="../js/jquery.min.js"></script>
<script src="../js/npm.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
</head>
<body>
<font face="华文行楷" size="+2" color="red">详细信息</font>
<table class="table table-bordered table-striped">
	<tr>
			<td><font face="隶书">用户账号</font></td>
			<td><font face="隶书">用户姓名</font></td>
			<td><font face="隶书">用户年龄</font></td>
			<td><font face="隶书">用户性别</font></td>
			<td><font face="隶书">用户身高</font></td>
			<td><font face="隶书">家庭住址</font></td>
			<td><font face="隶书">用户学历</font></td>
			<td><font face="隶书">用户月薪</font></td>
			<td><font face="隶书">特权状态</font></td>
			<td><font face="隶书">个性签名</font></td>
		</tr>
		<tr>
                <td>${user.userid}</td>
				<td>${user.username}</td>
				<td>${user.age}</td>
				<td>${user.sex}</td>
				<td>${user.tall}</td>
				<td>${user.address}</td>
				<td>${user.education}</td>
				<td>${user.money}</td>
				<td>${user.privilege}</td>
				<td>${user.nature}</td>
		</tr>
</table>
</body>
</html>