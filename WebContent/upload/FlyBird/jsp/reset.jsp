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
	alert("修改成功，下次登录生效！");
	document.getElementsByName("changeforms")[0].action = "user!passwordAction.action";
	document.getElementsByName("changeforms")[0].Method = "post";
	document.getElementsByName("changeforms")[0].submit();
	}else{
		alert("两次输入密码不一致，请重新输入");
	}
		
}
function closew(){
	this.window.opener = null;
	window.opener("","_self");
	window.close();
}
</script>
</head>
<body>
<div >
<form name="changeforms" action="">
	<div align="center" style="background-image: url(../style/goto1.gif);background-size:100% 100%;height: 200px;padding-top: 50px; ">
	<table>
		<tr>
			<td><font color="white" size="+1" face="华文行楷">请输入新密码</font></td>
			<td><input type="text" name="newpass" id="newpass" autocomplete = "off"></td>
		</tr>
		<tr>
			<td><font color="white" size="+1" face="华文行楷">请重复新密码</font></td>
			<td><input type="text" name="twopass" id="twopass" autocomplete = "off"></td>
		</tr>
		<tr>
			<td><input type="button" value="确定修改" onclick="change()"/></td>
			<td><input type="reset" value="取消修改" onclick="close()"/></td>
		</tr>
		<!-- <a href="" onclick="closew()">关闭页面</a> -->
	</table>
	</div>
</form>
</div>
</body>
</html>