<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我关注的</title>
</head>
<body>
已关注<br/>
<s:if test="#request.myfocus.size()>0">
	<c:forEach items="${myfocus}" var="focus" varStatus="c">
		<font face="华文行楷" size="+2" color="orange">${focus}</font><br/>
	</c:forEach>
</s:if>
<s:else>
	<font face="华文行楷" size="+2" color="orange">你还没有关注任何人</font>
</s:else>
</body>
</html>