<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>编辑信息</title>
<script type="text/javascript">
function checkSex(){
	var value = document.getElementById("sex").value;
	if(value=="男"){
		document.getElementById("boy").checked=true;
	}else if(value=="女"){
		document.getElementById("girl").checked=true;
	}

}
</script>

<style>
.run{
width:50px;
height:50px;
background:red;
position:relative;
animation:myfirst 10s linear 1s infinite alternate;
/* Firefox: */
-moz-animation:myfirst 5s linear 2s infinite alternate;
/* Safari and Chrome: */
-webkit-animation:myfirst 5s linear 2s infinite alternate;
/* Opera: */
-o-animation:myfirst 5s linear 2s infinite alternate;
}

@keyframes myfirst
{
0%   {background:red; left:0px; top:0px;}
25%  {background:yellow; left:100%; top:0px;}
50%  {background:blue; left:100%; top:100%;}
75%  {background:green; left:0px; top:100%;}
100% {background:red; left:0px; top:0px;}
}

@-moz-keyframes myfirst /* Firefox */
{
0%   {background:red; left:0px; top:0px;}
25%  {background:yellow; left:100%; top:0px;}
50%  {background:blue; left:100%; top:100%;}
75%  {background:green; left:0px; top:100%;}
100% {background:red; left:0px; top:0px;}
}

@-webkit-keyframes myfirst /* Safari and Chrome */
{
0%   {background:red; left:0px; top:0px;}
25%  {background:yellow; left:100%; top:0px;}
50%  {background:blue; left:100%; top:100%;}
75%  {background:green; left:0px; top:100%;}
100% {background:red; left:0px; top:0px;}
}

@-o-keyframes myfirst /* Opera */
{
0%   {background:red; left:0px; top:0px;}
25%  {background:yellow; left:100%; top:0px;}
50%  {background:blue; left:100%; top:100%;}
75%  {background:green; left:0px; top:100%;}
100% {background:red; left:0px; top:0px;}
}
</style>

</head>
<body onload="checkSex()">
					<div class="run"><img src="style/car.jpg"></div>
<form action="">
<div align="center" style="margin-top: 300px;">
	<table>
		<tr>
			<td><font face="隶书">用户ID</font></td>
			<td><input type="text" value="${u.userid}" readonly="readonly"/></td>
			<td><font color="red" size="1">*此位置不可更改 不信你试试</font></td>
		</tr>
		<tr>
			<td><font face="隶书">用户姓名</font></td>
			<td><input type="text" value="${u.username}"/></td>
		</tr>
		<tr>
			<td><font face="隶书">用户密码</font></td>
			<td><input type="text" value="${u.password}"/></td>
		</tr>
		<tr>
			<td><font face="隶书">用户性别</font></td>
			<td>
			<input type="radio" id="boy" value="boy">男</input>
			<input type="radio" id="girl" value="girl">女</input>
			</td>
			<td><input type="hidden" value="${u.gender}" id="sex"/></td> 
		</tr>
		<tr>
			<td><font face="隶书">用户学历</font></td>
			<td><input type="text" value="${u.education}"/></td>
		</tr>
		<tr>
			<td><font face="隶书">家庭住址</font></td>
			<td><input type="text" value="${u.address}"/></td>
	    </tr>
	    <tr>
			<td><font face="隶书">联系电话</font></td>
			<td><input type="text" value="${u.mobile}"/></td>
		</tr>
		<tr>
		<td><input type="submit" value="确定修改"></td>
		<td><input type="reset" value="取消修改"></td>
		</tr>
	</table>
</div>
</form>
</body>
</html>