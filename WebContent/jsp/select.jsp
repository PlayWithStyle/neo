<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>编辑页面</title>
<script type="text/javascript">
function reget(){
	document.getElementsByName("myform")[0].action = "neosoft!regetAction.action";
	document.getElementsByName("myform")[0].methed = "post";
	document.getElementsByName("myform")[0].submit();
}
</script>
</head>
<body>
	<form name="myform"  method="post">  
		<table>
			<tr>
				<td>id</td>
				<td><input type="text" readonly="readonly" value="${news.id}" name="news.id"/></td>
			</tr>
			<tr>
				<td>insert_time</td>
				<td><input type="text" value="${news.insert_time}" name="news.insert_time"></td>
			</tr>
			<tr>
				<td>insert_text</td>
				<td><input type="text" value="${news.insert_text}" name="news.insert_text"/></td>
			</tr>
			
			<tr>
				<td><input type="button" value="确定编辑" onclick="reget()"/></td>
				<!-- <td><a href="user!regetAction.action">确定编辑</a></td> -->
				<!--<td><a href="user!listAdminAction.action">取消编辑</a></td>-->
			</tr>
		</table>
	</form>

</body>
</html>