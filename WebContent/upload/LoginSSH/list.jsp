<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>显示用户</title>
<link rel="stylesheet" type=text/css href="style/login.css">
<script src="js/jquery.min.js"></script>
<script src="js/npm.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

</head>
<body>
<form name="myforms" id="myforms" action="" >
	<div align="center">
		请输入用户姓名进行查询>> <input type="text" id="searchname" name="searchname"/>
		<input type="button" value="点击查询" onclick="s()"/>
		<input type="button" value="添加用户" onclick="add()"/>
	</div>
<div class="container" >
	<table class="table table-bordered table-striped">
		<tr>
			
			<td><font face="隶书">用户ID</font></td>
			<td><font face="隶书">用户姓名</font></td>
			<td><font face="隶书">用户密码</font></td>
			<td><font face="隶书">用户性别</font></td>
			<td><font face="隶书">用户学历</font></td>
			<td><font face="隶书">家庭住址</font></td>
			<td><font face="隶书">联系电话</font></td>
			<td><font face="隶书">删除用户</font></td>
			<td><font face="隶书">编辑用户</font></td>
		</tr>
		<c:forEach items="${lists}" var="u" varStatus="c">
			<tr>
				<td>${u.userid}</td>
				<td>${u.username}</td>
				<td>${u.password}</td>
				<td>${u.gender}</td>
				<td>${u.education}</td>
				<td>${u.address}</td>
				<td>${u.mobile}</td>
				<td><input type="button" value="删除" onclick="deluser(${u.userid})"></td>
				<%-- <td><a href="user!deleteAction.action?id=${u.userid}">删除</a></td> --%>
				<%-- <td><a  href="user!findByIdAction.action?id=${u.userid}">编辑</a></td> --%>
				<td><input type="button" value="编辑" onclick="edit(${u.userid})"></td>
 			</tr>
		</c:forEach>
	</table>
			<div align="right">
			<a href="user!showAction.action?pageNo=1">首页</a>
			<a href="user!showAction.action?pageNo=${page.prePageNo}">上一页</a>
			<h>第${page.pageNo}页/共${page.pageCount}页</h>
			<a href="user!showAction.action?pageNo=${page.nextPageNo}">下一页</a>
			<a href="user!showAction.action?pageNo=${page.pageCount}">尾页</a>
			</div>
	</div>
	
	<div id="sky" style="background-image: url(style/8.jpg);">
		<div class="divone"></div>
		<div class="divthree"><font face="华文隶书"  size="5px" color="red">请输入执行口令</font></div>
		<div class="divtwo"><font face="华文隶书" size="3px" color="black">password</font>
		                    <input type="text"   AUTOCOMPLETE="off"  name="deleteword" id="deleteword"/></div>
		<div class="divfour"><input type="button" id="delete_btn" data-opid="0" value="验证口令"  onclick="delpass(this)"/></div>
		<span id="colose"  style="position:absolute;top:0px;right:5px;display:block;width:20px;height:20px;border-radius:50%;color:#fff;background:red;text-align:center;line-height:20px;cursor:pointer">X</span>
	</div>
	
	<div class="sky2" style="background-image: url(style/jindu.gif)">
	
	</div>
</form>
<script type="text/javascript">
	function add(){
		var path = "add.jsp";
		//设置弹出窗口的大小
		var set_window="dialogwidth=600px;dialoghegith=500px;scroll=yes;resizable=no;center=yes";
		//打开窗口
		window.showModalDialog(path,window,set_window);
	}
 	/* var searchname = document.getElementById("searchname").value;
	function searchname(){
		alert(12122);
		document.getElementsByName("myforms")[0].action = "user!searchAction.action?username="+searchname;
		document.getElementsByName("myforms")[0].method="post";
		document.getElementsByName("myforms")[0].submit();
	}  */
 //var _delete_id = 0;
 function edit(id){
	document.getElementsByName("myforms")[0].action = "user!findByIdAction.action?id="+id;
	document.getElementsByName("myforms")[0].method="post";
	document.getElementsByName("myforms")[0].submit();
} 
 function deluser(id){
	 //_delete_id=id;
	 //document.getElementById("sky").style.visibility = "visible";
	 $("#sky").show();
	 $("#delete_btn").data("opid",id);
	/* document.getElementsByName("myforms")[0].action = "user!deleteAction.action?id="+id;
	document.getElementsByName("myforms")[0].method="post";
	document.getElementsByName("myforms")[0].submit(); */
 }
 function delpass(obj){
	 var opid = $(obj).data("opid")
	 var delword =$("#deleteword").val();
	 if(delword=="好好学习"  && opid != "0"){
		$("#myforms").attr("action","user!deleteAction.action?id="+opid);
		$("#myforms").attr("method","post");
		$("#myforms").submit();
		 alert("命令执行成功");
	 }else{
		 alert("口令错误！非法操作！");
	 }
	
 }
 $("#sky #colose").click(function(){
	 $(this).parents("#sky").hide();
 })
</script>
 <script>
 	
	function s(){
		var searchname = document.getElementById("searchname").value;
		//alert(searchname);
		document.getElementsByName("myforms")[0].action = "user!searchAction.action?username="+searchname;
		document.getElementsByName("myforms")[0].method="post";
		document.getElementsByName("myforms")[0].submit();
	} 
</script>
</body>
</html>