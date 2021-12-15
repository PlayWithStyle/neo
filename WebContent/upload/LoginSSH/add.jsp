<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加用户</title>
<script type="text/javascript">
function add(){
	document.getElementsByName("addform")[0].action = "user!addAction.action";
	document.getElementsByName("addform")[0].method = "post";
	document.getElementsByName("addform")[0].submit();
}
</script>
</head>
<body style="background-image: url(style/7.jpg);">
<form name="addform">
<div style="margin-left:150px; margin-top: 150px;">
	<table>
		<tr>
			<td>用户姓名</td>
			<td><input type="text" name="username"/></td>
		</tr>
		<tr>
			<td>用户密码</td>
			<td><input type="text" name="password"/></td>
		</tr>
		<tr>
			<td>用户性别</td>
			<td><input type="text" name="usersex"/></td>
		</tr>
		<tr>
			<td>用户学历</td>
			<td><input type="text" name="education"/></td>
		</tr>
		<tr>
			<td>家庭住址</td>
			<td><input type="text" name="address"/></td>
		</tr>
		<tr>
			<td>联系电话</td>
			<td><input type="text" name="number"/></td>
		</tr>
		<tr>
			<td>用户头像</td>
			<td><input type="text" name="picture"/></td>
		</tr>
	</table>
	<input type="button" value="确定添加" onclick="add()"/>
	</div>
</form>
</body>
</html>