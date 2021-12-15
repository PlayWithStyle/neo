<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>text</title>
<style>
.divlong{
margin-left:50px;
width:100px;
height:100px;
background-color:blue;
/* transition:width 2s; */
/* -moz-transition:width 2s;  */
/* 这是控制来回缩放的速度 */
-webkit-transition:width 1s; 
 /* -o-transition:width 2s; */
 float: left;
}


.divlong2{
margin-left:50px;
width:100px;
height:100px;
background-color:red;
/* transition:width 2s; */
/* -moz-transition:width 2s;  */
/* 这是控制来回缩放的速度 */
-webkit-transition:width 1s; 
 /* -o-transition:width 2s; */
 float: left;
 margin-left: 0px;
}


.divlong3{
margin-left:50px;
width:100px;
height:100px;
background-color:blue;
/* transition:width 2s; */
/* -moz-transition:width 2s;  */
/* 这是控制来回缩放的速度 */
-webkit-transition:width 1s; 
 /* -o-transition:width 2s; */
 float: left;
  margin-left: 0px;
}

.divlong4{
margin-left:50px;
width:100px;
height:100px;
background-color:yellow;
/* transition:width 2s; */
/* -moz-transition:width 2s;  */
/* 这是控制来回缩放的速度 */
-webkit-transition:width 1s; 
 /* -o-transition:width 2s; */
 float: left;
  margin-left: 0px;
}


.divlong5{
margin-left:50px;
width:100px;
height:100px;
background-color:black;
/* transition:width 2s; */
/* -moz-transition:width 2s;  */
/* 这是控制来回缩放的速度 */
-webkit-transition:width 1s; 
 /* -o-transition:width 2s; */
 float: left;
  margin-left: 0px;
}






 div:hover{
width:300px;
} 
/* 这是能够将图片旋转的样式 */
 .div1
{
margin-left:300px;
width:100px;
height:100px;
background:yellow;
transition:width 2s, height 2s;
-moz-transition:width 2s, height 2s, -moz-transform 2s; /* Firefox 4 */
-webkit-transition:width 2s, height 2s, -webkit-transform 2s; /* Safari and Chrome */
-o-transition:width 2s, height 2s, -o-transform 2s; /* Opera */
margin-left: 300px;
}

 .div1:hover
{
width:200px;
height:200px;
transform:rotate(180deg);
-moz-transform:rotate(180deg); /* Firefox 4 */
-webkit-transform:rotate(180deg); /* Safari and Chrome */
-o-transform:rotate(180deg); /* Opera */

}


/* 图片经过换代码 */
.image a{
 background: url(style/2.jpg) no-repeat top left;
    border: none;
    width: 300px;
    height: 200px;
    display: block;
 float:left;
 margin: 15px 3px;
}
.image a:hover{
 background: url(style/4.jpg) no-repeat bottom left;
 border: none;
 width: 300px;
 height: 200px;
 display: block;
 float:left;
 margin: 15px 3px;
}
</style>
</head>
<body>

<div class="divlong"></div>
<div class="divlong2"></div>
<div class="divlong3"></div>
<div class="divlong4"></div>
<div class="divlong5"></div>
<div style="background-color: orange; width: 600px; margin-left: 600px;">dfds</div>





<div class="div1">aa</div>

<!-- 鼠标经过换图片代码 -->
<div class = image><a href="#"></a></div>



  




</body>
</html>