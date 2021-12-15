<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户注册</title>
<script src="../js/jquery.min.js"></script>
<script src="../js/npm.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/register.js"></script>
<link rel="stylesheet" type="text/css" href="../css/success.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<script type="text/javascript">
 function ad(){
	document.getElementsByName("myform")[0].action = "user!addAction.action";
	document.getElementsByName("myform")[0].method = "post";
	document.getElementsByName("myform")[0].submit();
} 
</script>
</head>
<body>
<div style="background-image:url(../style/flower.jpg); background-size:100% 100%;width: 1366px;height: 630px;">
	<form id="myform" name="myform" enctype="multipart/form-data" >
		<div style="width: 300px;height: 350px;border: solid;1px;margin-left:800px;background-image: url(../style/285.jpg);padding-top:20px;">
		<table>
			<!-- <tr>
				<td>请输入用户id</td>
				<td><input type="text" name="userid" id="userid"/></td>
			</tr> -->
			<tr>
				<td><font face="隶书" size="+1" color="blue">输入姓名</font></td>
				<td><input type="text" autocomplete="off" name="user.username" id="username"/></td>
			</tr>
			<tr>
				<td><font face="隶书" size="+1" color="blue">输入密码</font></td>
				<td><input type="password" name="password" id="password"/></td>
			</tr>
			<tr>
				<td><font face="隶书" size="+1" color="blue">输入年龄</font></td>
				<td><input type="text" autocomplete="off" name="user.age" id="age"/></td>
			</tr>
			<tr>
				<td><font face="隶书" size="+1" color="blue">选择性别</font></td>
				<td>
				<input type="radio" name="user.sex" id="sex" value="男">男</input>
				<input type="radio" name="user.sex" id="sex" value="女">女</input>
				</td>
			</tr>
			<tr>
				<td><font face="隶书" size="+1" color="blue">输入身高</font></td>
				<td><input type="text" autocomplete="off" name="user.tall" id="tall"/></td>
			</tr> 
			<tr>
				<td><font face="隶书" size="+1" color="blue">输入住址</font></td>
				<td><input type="text" autocomplete="off" name="user.address" id="address"/></td>
			</tr>
			<tr>
				<td><font face="隶书" size="+1" color="blue">选择学历</font></td>
				<td>
					<select name="user.education" id="education">
						<option value="初中">初中</option>
						<option value="高中">高中</option>
						<option value="本科">本科</option>
						<option value="研究生">研究生</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><font face="隶书" size="+1" color="blue">输入月薪</font></td>
				<td><input type="text" autocomplete="off" name="user.money" id="money"/></td>
			</tr>
			<!-- 初始特权是非会员  -->
			<tr>
				
				<td><input type="hidden" value="非会员" name="user.privilege" id="privilege"/></td>
			</tr>
			<tr>
				<td><font face="隶书" size="+1" color="blue">选择头像</font></td>
				<td><input type="file" accept="image/jpeg,image/png" name="upload" id="photo" value="haha.jpg" checked="checked"/></td>
			</tr>
			<tr>
				<td><font face="隶书" size="+1" color="blue">个性标签</font></td>
				<td><input type="text" autocomplete="off" name="user.nature" id="nature"/></td>
			</tr>
			
			<tr>
				<!-- <td><a href="user!addAction.action">确定添加</a></td> -->
				<td><input type="button" value="立即注册" onclick="add()"/></td>
				<td><input type="reset" value="信息重置"/></td>
			</tr>
		</table>
		</div>
	</form>
</div>
</body>
</html>