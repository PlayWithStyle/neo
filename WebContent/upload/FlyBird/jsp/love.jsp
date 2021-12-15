<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>调查结果</title>
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
</script>
</head>
<body style="background-image: url(../style/tiaojian.gif);background-size:100% 100%;height: 900px; ">
	<form name="myforms" id="myforms" action="" >
<div class="container" >
	<table class="table table-bordered table-striped">
		 <s:if test="#request.list.size()>0">
		 <font face="华文行楷" size="+2" red="yellow">符合您条件的用户如下</font>
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
		<%-- <c:forEach items="${list}" var="u" varStatus="c">
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
				<td>${u.photo}</td>
				<td>${u.nature}</td>
				<td>${u.other}</td>
 			</tr>
		</c:forEach> --%>
		<!-- 如果action中有list这个属性并且有get set方法那么可以不加# -->
	   
	    	<s:iterator value="#request.list" id="u">
　　　　		<tr>
				<td>${u.userid}</td>
				<td>${u.username}</td>
				<td>${u.age}</td>
				<td>${u.sex}</td>
				<td>${u.tall}</td>
				<td>${u.address}</td>
				<td>${u.education}</td>
				<td>${u.money}</td>
				<td>${u.privilege}</td>
				<td>${u.nature}</td>
 			</tr>
　　			</s:iterator>
	    </s:if>
	</table>
	<s:else> 
　 		　	<div align="center">
				<font face="隶书" size="35px">对不起，没有找到符合条件的查询！！！</font>
			</div>
	</s:else> 
	</div>
</form>

</body>
</html>