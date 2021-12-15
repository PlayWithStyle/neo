<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ include file="text.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="style/login.css"/>
<title>登录界面</title>
<style type="text/css">
    .code
    {
            background:url(code_bg.jpg);
            font-family:Arial;
            font-style:italic;
             color:blue;
             font-size:30px;
             border:0;
             padding:2px 3px;
             letter-spacing:3px;
             font-weight:bolder;             
             float:left;            
             cursor:pointer;
             width:150px;
             height:60px;
             line-height:60px;
             text-align:center;
             vertical-align:middle;

    }
    a
    {
        text-decoration:none;
        font-size:12px;
        color:#288bc4;
        }
    a:hover
    {
       text-decoration:underline;
        }
    </style>
    <script language="javascript" type="text/javascript">

        var code;
        function createCode() { 
            code = "";
            var codeLength = 6; //验证码的长度
            var checkCode = document.getElementById("checkCode");
            var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
            'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
            for (var i = 0; i < codeLength; i++) 
            {
                var charNum = Math.floor(Math.random() * 52);
                code += codeChars[charNum];
            }
            if (checkCode) 
            {
                checkCode.className = "code";
                checkCode.innerHTML = code;
            }
        }
        function validateCode() 
        {
            var inputCode = document.getElementById("inputCode").value;
            if (inputCode.length <= 0) 
            {
                alert("请输入验证码！");
            }
            else if (inputCode.toUpperCase() != code.toUpperCase()) 
            {
                alert("验证码输入有误！");
                createCode();
            }
            else 
            {
                document.forms(0).action = "user!loginCheck.action";
                document.forms(0).submit();
            }        
        }    
     </script>
</head>
<!-- 页面加载时自动执行这个方法  onsubmit 事件会在表单中的确认按钮被点击时发生-->
<body onload="createCode()">
<a href="index.jsp">点击跳到那里</a>
<form onsubmit="validateCode()" action="user!loginCheck.action">
<div class="head">

<table border="1" style="border-collapse: collapse;">
<tr>
<td>
输入用户名：</td>
<td><input type="text" id="username" name="username"/>
</td>
</tr>
<tr>
<td>
输入用户密码：
</td>
<td> <input type="text" id="password" name="password"/>
</td>
</tr>
	<tr>
    <table border="0" cellspacing="5" cellpadding="5" >
        <tr>
            <td> <div class="code" id="checkCode" onclick="createCode()" ></div></td>
            <td><a  href="#" onclick="createCode()">看不清换一张</a></td>
        </tr>
        <tr>
            <td>验证码：</td><td><input  style="float:left;" type="text"   id="inputCode" /></td>
        </tr>
    </table>
    </tr>
<tr>
<td><input type="submit" value="提交" onclick="validateCode()"/></td>
<td><input type="reset" value="重置"/></td>
</tr>
</table>
</div>
</form>
</body>
</html>