<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<script type="text/javascript">
function insert(){
	alert("insert success！！！"); 
	document.getElementsByName("newsform")[0].action = "neosoft!newsAction.action";
	document.getElementsByName("newsform")[0].method = "post";
	document.getElementsByName("newsform")[0].submit();
}

</script>
<title>manager page</title>
</head>
<body>
<form id="newsform" name="newsform" method="post">

<font size="+1" color="red">情報を発表する</font>
	<div style="margin-left:500px">
        <textarea  name="insert_text" id="insert_text" style="width:350px; height:200px;" 
        placeholder="内容を入力する"></textarea><br/>
        <input type="button" value="insert" onclick="insert()"/>
        <!-- <a href="#" onclick="insert()">insert</a> -->
        <input type="reset" value="reset"/>
    </div>
	
	</form>

</body>
</html>