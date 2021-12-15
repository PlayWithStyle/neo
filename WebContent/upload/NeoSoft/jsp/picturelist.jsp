<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">

<title>picture list</title>
</head>
<body>
<div style="margin-left:300px"><font size="+2" color="red">写真の管理</font></div>
<form id="newsform" name="newsform" method="post">

<div class="container" >
	 <table class="table table-bordered table-striped">
		<tr>
			<td><font>id</font></td>
			<td><font>path</font></td>
			<td><font>name</font></td>
			<td><font>delete</font></td>
		</tr>
		<c:forEach items="${querylist}" var="u" varStatus="c">
			<tr>
				<td>${u.id}</td>
				<td>${u.path}</td>
				<td>${u.name}</td>
			    <td>
				<a href="neosoft!deletePictureAction.action?id=${u.id}">削除</a>
				</td> 
 			</tr>
		</c:forEach>	
	</table> 
		<a href="picture.jsp">添加活动照片</a>	
</div>



	
		
	</form>

</body>
</html>