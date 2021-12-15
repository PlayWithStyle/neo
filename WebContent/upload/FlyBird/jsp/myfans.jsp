<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我的信息</title>
</head>
<body>
我的粉丝<br/>
<s:if test="#request.myfans.size()>0">
	<c:forEach items="${myfans}" var="fans" varStatus="c">
<%-- ${myfans.interesting} 将每个对象放到request中，取出报错for input string interesting --%>
		<font face="华文行楷" size="+2" color="orange">${fans}</font><br/>
	</c:forEach>
</s:if>
<s:else>
<font face="华文行楷" size="+2" color="orange">还没有任何人关注你</font>
</s:else>
</body>
</html>