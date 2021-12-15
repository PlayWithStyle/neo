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
function deluser(id){
	 if(confirm("你确定要删除该用户吗？")){ 
		document.getElementsByName("myforms")[0].action = "neosoft!deleteAction.action?id="+id;
		document.getElementsByName("myforms")[0].method = "post";
		document.getElementsByName("myforms")[0].submit();
	 } 
}
</script>
</head>
<body>
<div style="margin-left:300px"><font size="+2" color="red">最新情報の管理</font></div>
<form name="myforms" id="myforms" action="" >
<div class="container" >
	 <table class="table table-bordered table-striped">
		<tr>
			<td><font face="隶书">id</font></td>
			<td><font face="隶书">insert_time</font></td>
			<td><font face="隶书">insert_text</font></td>
			<td><font face="隶书">操作</font></td>
		</tr>
		<c:forEach items="${alllist}" var="u" varStatus="c">
			<tr>
				<td>${u.id}</td>
				<td>${u.insert_time}</td>
				<td>${u.insert_text}</td>
			    <td>
				<a href="neosoft!selectAction.action?id=${u.id}">更新</a> 
				<a href="neosoft!deleteAction.action?id=${u.id}">削除</a>
				</td> 
 			</tr>
		</c:forEach>	
	</table> 
	
	<div class="pageno" style="height:30px;width:400px;margin-left:800px">
			<a href="neosoft!showNewsAction1.action?pageNo=1">首页</a>
			<a href="neosoft!showNewsAction1.action?pageNo=${page.prePageNo}">上一页</a>
			<h>第${page.pageNo}页/共${page.pageCount}页</h>
			<a href="neosoft!showNewsAction1.action?pageNo=${page.nextPageNo}">下一页</a>
			<a href="neosoft!showNewsAction1.action?pageNo=${page.pageCount}">尾页</a>
	</div>
	
	<a href="manager.jsp">添加新信息</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="neosoft!queryPictureAction.action">管理活动照片</a>
			
</div>
</form>

</body>
</html>