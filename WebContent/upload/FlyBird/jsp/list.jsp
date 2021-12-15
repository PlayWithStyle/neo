<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>信息显示</title>
<script src="../js/jquery.min.js"></script>
<script src="../js/npm.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/list.css">
<script type="text/javascript" src="../js/lis.js"></script>
<script type="text/javascript">
function inviter(id){
	alert("邀请信息已发出");
	document.getElementsByName("myforms")[0].action = "user!inviteAction.action?userid="+id;
	document.getElementsByName("myforms")[0].method = "post";
	document.getElementsByName("myforms")[0].submit();
}
function admirer(id){
	alert("点赞+1");
	document.getElementsByName("myforms")[0].action = "user!admireAction.action?userid="+id;
	document.getElementsByName("myforms")[0].method = "post";
	document.getElementsByName("myforms")[0].submit();
}

function myfans(){
	var path = "user!myFansAction.action";
	//设置弹出窗口的大小
	var set_window="dialogwidth=200px;dialogheight=400px;scroll=yes;resizable=no;center=yes";
	//打开窗口
	window.showModalDialog(path,window,set_window);
}

function myfocus(){
	var path = "user!myFocusAction.action";
	//设置弹出窗口的大小
	var set_window="dialogwidth=200px;dialogheight=400px;scroll=yes;resizable=no;center=yes";
	//打开窗口
	window.showModalDialog(path,window,set_window);
}
</script>
</head>
<body style="background-image:url(../style/star.jpg); background-size:100%;">
	
	<div class="head">
    	<div class="logo">
        <font face="华文隶书" size="+3" color="#FF3366"><b>Inseparable King Birds</b></font>
        </div>
        <font size="+1" style="padding-left:800px;padding-top:75px; float:left; color:#F0F">实名婚恋网开拓者&nbsp;&nbsp;||&nbsp;&nbsp;每天上千人牵手成功</font>
    </div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<div style="margin-left:600px;">
	<a href="" onclick="myfocus()">我关注的</a>&nbsp;&nbsp;||&nbsp;&nbsp;<a href="" onclick="myfans()">我的粉丝</a>
	</div>
	<form name="myforms" id="myforms" action="" >
<div class="middle1" >
	
	
	<c:forEach items="${list}" var="u" varStatus="c">
	
		<div class="img1">
				<font size="+2" color="red">个人信息栏</font><br/>
				<%-- <div style="width:100px; height:100px;background-image:url(${pageContext.request.contextPath}/upload/${sessionScope.photo});margin-left:20px;">
       			</div> --%>
				<font face="华文行楷" size="+1" color="blue">${u.userid}</font><br/>
				<font face="华文行楷" size="+1" color="blue">${u.username}</font><br/> 
				<font face="华文行楷" size="+1" color="blue">${u.age}</font><br/>
				<font face="华文行楷" size="+1" color="blue">${u.sex}</font><br/>
				<font face="华文行楷" size="+1" color="blue">${u.tall}</font><br/>
				<font face="华文行楷" size="+1" color="blue">${u.address}</font><br/>
				<font face="华文行楷" size="+1" color="blue">${u.education}</font><br/>
				<font face="华文行楷" size="+1" color="blue">${u.money}</font><br/>
				<font face="华文行楷" size="+1" color="blue">${u.privilege}</font><br/>
				<font face="华文行楷" size="+1" color="blue">${u.photo}</font><br/>
				<font face="华文行楷" size="+1" color="blue">${u.nature}</font><br/>
		<%-- <c:forEach items="${which}" var="which" varStatus="c"> --%>		 		
			<c:choose>
			
				<c:when test="${which[0] == u.userid}">										
				<a href="user!closeAction.action?userid=${u.userid}">取消关注</a>
				</c:when>
				<c:when test="${which[1] == u.userid }">
				<a href="user!closeAction.action?userid=${u.userid}">取消关注</a>
				</c:when>
				<c:when test="${which[2] == u.userid }">
				<a href="user!closeAction.action?userid=${u.userid}">取消关注</a>
				</c:when>
				<c:when test="${which[3] == u.userid }">
				<a href="user!closeAction.action?userid=${u.userid}">取消关注</a>
				</c:when>
				<c:when test="${which[4] == u.userid }">
				<a href="user!closeAction.action?userid=${u.userid}">取消关注</a>
				</c:when>	 			
				<c:otherwise>
				<a href="user!focusAction.action?userid=${u.userid}"><font face="华文琥珀" size="+1" color="red">关注</font></a>
				</c:otherwise>
				
			</c:choose>
		<%-- </c:forEach> --%>
				<%-- <a href="user!admireAction.action?userid=${u.userid}">点赞</a> --%>
				<a href="" onclick="admirer(${u.userid})"><font face="华文琥珀" size="+1" color="red">点赞</font></a>
				<s:if  test="#session.privilege == '会员'"> 
				<%-- <a href="user!inviteAction.action?userid=${u.userid}">邀请</a> --%>
				<a href="" onclick="inviter(${u.userid})"><font face="华文琥珀" size="+1" color="red">邀请</font></a>
				</s:if> 
				<s:else></s:else>
				<%--${u.userid}当前登录人 ${sessionScope.userid}<br/> 
				<a href="user!selectAction.action?userid=${u.userid}">编辑</a> <br/>
				<a href="user!deleteAction.action?userid=${u.userid}">删除</a>
				<input type="button" value="delete" onclick="deluser(${u.userid})"/> --%>
		</div>
	
	</c:forEach>
		   <div class="foot"></div>
	</div>
	
		    <div class="pageno">
			<a href="user!listAction.action?pageNo=1">首页</a>
			<a href="user!listAction.action?pageNo=${page.prePageNo}">上一页</a>
			<h>第${page.pageNo}页/共${page.pageCount}页</h>
			<a href="user!listAction.action?pageNo=${page.nextPageNo}">下一页</a>
			<a href="user!listAction.action?pageNo=${page.pageCount}">尾页</a>
			</div>
</form>

</body>
</html>