<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" type="text/css" href="../css/login.css">
<script src="../js/login.js"></script>
<title>login</title>
<style type="text/css">
 body,td,th {
	font-family: "Lucida Sans Unicode", "Trebuchet MS", Arial, Helvetica;
}
 </style>
</head>
<body style="background-color:#eeeeee;">
<form id="login" name="login">
    <h1>会員センター</h1>
    <fieldset id="inputs">
        <input type="text" id="username" name="user.username" placeholder="Username" autofocus="" required=""/>   
        <input type="password" id="password" name="user.password" placeholder="Password" />
    </fieldset>
    <fieldset id="actions">
    <input type="button" id="ajax" value="登録"  onclick="logincheck()"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <a href="index.jsp">株式会社ネオソフト</a>
    </fieldset>
</form>
 
</body>
</html>