<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>编辑页面</title>
<script type="text/javascript">
function reget(){
	document.getElementsByName("myform")[0].action = "user!regetAction.action";
	document.getElementsByName("myform")[0].methed = "post";
	document.getElementsByName("myform")[0].submit();
}
</script>
</head>
<body>
	<form name="myform"  method="post">  
		<table>
			<tr>
				<td>比翼鸟账号</td>
				<td><input type="text" value="${user.userid}" name="user.userid"/></td>
			</tr>
			<tr>
				<td>用户姓名</td>
				<td><input type="text" value="${user.username}" name="user.username"></td>
			</tr>
			<tr>
				<td>用户密码</td>
				<td><input type="text" value="${user.password}" name="user.password"/></td>
			</tr>
			<tr>
				<td>用户年龄</td>
				<td><input type="text" value="${user.age}" name="user.age"/></td>
			</tr>
			<tr>
				<td>用户性别</td>
				<td><input type="text" value="${user.sex}" name="user.sex"/></td>
			</tr>
			<tr>
				<td>用户身高</td>
				<td><input type="text" value="${user.tall}" name="user.tall"/></td>
			</tr>
			<tr>
				<td>用户住址</td>
				<td><input type="text" value="${user.address}" name="user.address"/></td>
			</tr>
			<tr>
				<td>用户学历</td>
				<td><input type="text" value="${user.education}" name="user.education"/></td>
			</tr>
			<tr>
				<td>用户月薪</td>
				<td><input type="text" value="${user.money}" name="user.money"/></td>
			</tr>
			<tr>
				<td>用户特权</td>
				<td><input type="text" value="${user.privilege}" name="user.privilege"/></td>
			</tr>
			<tr>
				<td>用户头像</td>
				<td><input type="text" value="${user.photo}" name="user.photo"/></td>
			</tr>
			<tr>
				<td>用户xx</td>
				<td><input type="text" value="${user.nature}" name="user.nature"/></td>
			</tr>
			<tr>
				<td>备注</td>
				<td><input type="text" value="${user.other}" name="user.other"/></td>
			</tr>
			<tr>
				<td><input type="button" value="确定编辑" onclick="reget()"/></td>
				<!-- <td><a href="user!regetAction.action">确定编辑</a></td> -->
				<td><a href="user!listAdminAction.action">取消编辑</a></td>
			</tr>
		</table>
	</form>

</body>
</html>