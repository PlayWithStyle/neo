<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>比翼鸟官网</title>

<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/news.css">
<script type="text/javascript" src="../js/news.js"></script>
<%
    session.invalidate();
    response.sendRedirect("../jsp/login.jsp");
%>
</head>
<body>
</body>
</html>