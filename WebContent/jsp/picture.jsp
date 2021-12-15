<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Picture</title>
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
function add(){
	 alert("完成添加");
	document.getElementsByName("myform")[0].action = "neosoft!pictureAction.action";
	document.getElementsByName("myform")[0].method = "post";
	document.getElementsByName("myform")[0].submit();
} 
</script>

</head>
<body>
<div>
	<form id="myform" name="myform" enctype="multipart/form-data" >
		<div style="width: 600px;height: 350px;border: solid;1px;margin-left:100px;background-image: url(../style/285.jpg);padding-top:20px;">
		<table>
			<tr>
				<td><font>选择照片</font></td>
				<td><input type="file" accept="image/jpeg,image/png" name="upload" id="path" value="haha.jpg" checked="checked"/></td>
			</tr>
			<tr>
				<td><font>活动内容</font></td>
				<td><input type="text" autocomplete="off" name="picture.name" id="name"/></td>
			</tr>
			
			<tr>
				<td><a href="#" onclick="add()">上传照片</a></td>
				<td></td>
			</tr>
		</table>
		</div>
	</form>
</div>
</body>
</html>