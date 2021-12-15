<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更改个人信息</title>
<script type="text/javascript">
function reget(){
	alert("更改信息成功！！！");
	document.getElementsByName("myform")[0].action = "user!getPersonAction.action";
	document.getElementsByName("myform")[0].methed = "post";
	document.getElementsByName("myform")[0].submit();
}

function checkSex(){
	var value = document.getElementById("sex").value;
	if(value=="男"){
		document.getElementById("boy").checked=true;
	}else if(value=="女"){
		document.getElementById("girl").checked=true;
	}

}
</script>
</head>
<body style="background-image: url(../style/love5.jpg)" onload="checkSex()">
		<form name="myform"  method="post">  
		<table>
			<tr>
				<td>用户姓名</td>
				<td><input type="text" value="${user.username}" name="user.username"></td>
			</tr>
			<tr>
				<td>用户年龄</td>
				<td><input type="text" value="${user.age}" name="user.age"/></td>
			</tr>
			<tr>
				<td>用户性别</td>
				<td><input type="text"  readonly="readonly" value="${user.sex}" name="user.sex"/>
				<!-- <input type="radio" id="boy" value="boy">男</input> -->
			    <!-- <input type="radio" id="girl" value="girl">女</input> -->
				</td>
				<%-- <td><input type="hidden" value="${user.sex}" id="sex"/></td> --%>
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
				<td></td>
				<td><input type="hidden" value="${user.privilege}" name="user.privilege"/></td>
			</tr>
			<tr>
				<td>用户头像</td>
				<td><input type="text" value="${user.photo}" name="user.photo"/></td>
			</tr>
			<tr>
				<td>个性签名</td>
				<td><input type="text" value="${user.nature}" name="user.nature"/></td>
			</tr>
			<tr>
				<td><input type="button" value="确定编辑" onclick="reget()"/></td>
			</tr>
		</table>
	</form>
	
</body>
</html>