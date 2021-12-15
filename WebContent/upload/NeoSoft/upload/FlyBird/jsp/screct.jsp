<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改密码</title>
<script type="text/javascript">
function change(){
	var newpass = document.getElementById("newpass").value;
	var twopass = document.getElementById("twopass").value;
	if(newpass == twopass){
		alert("修改密码成功，下次登录生效");
	document.getElementsByName("changeforms")[0].action = "user!passwordAdminAction.action";
	document.getElementsByName("changeforms")[0].Method = "post";
	document.getElementsByName("changeforms")[0].submit();
	}else{
		alert("两次输入密码不一致，请重新输入");
	}
		
}
function close(){
	
}
</script>
</head>
<body>
<form name="changeforms" action="">
	<div align="center">
	<table>
		<tr>
			<td>请输入新密码</td>
			<td><input type="text" name="newpass" id="newpass"></td>
		</tr>
		<tr>
			<td>请重复新密码</td>
			<td><input type="text" name="twopass" id="twopass"></td>
		</tr>
		<tr>
			<td><input type="button" value="确定修改" onclick="change()"/></td>
			<td><input type="reset" value="取消修改" onclick="close()"/></td>
		</tr>
	</table>
	</div>
</form>
</body>
</html>