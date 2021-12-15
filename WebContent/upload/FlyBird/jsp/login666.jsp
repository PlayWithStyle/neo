<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>飞鸟官网</title>
<link rel="stylesheet" type="text/css" href="../css/login666.css">
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">

<script type="text/javascript" src="../js/login.js">
</script>
</head>
<body style="background-color:#CFF" onLoad="MM_preloadImages('../style/4.jpg','../style/3.jpg')">
	 <%-- <input type="hidden" id="errorLogin" value="${errorLogin}">  --%>
	<div class="top">
        <div class="up"> 
          <div class="english"><font face="华文隶书" color="#003399" size="+3">FlyBird</font></div>
            <div class="bird"><marquee scrollamount="15" > <img src="../style/bird2.gif" width="89" height="50">   <font face="华文行楷" size="+2" color="#CC0000">欢迎访问比翼鸟相亲网站，您的信赖是对我们最大的支持，ありがとうございます！</font><img src="../style/bird2.jpg" width="89" height="50">
            </div></marquee>
          </div> 
            <div class="word">
                <a href="#">积分商城</a><font>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;</font>
                <a href="#">会员中心</a><font>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;</font>
                <a href="#">在线客服</a><font>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;</font>
                <a href="#">帮助中心</a>
            </div>
        </div>	
    </div>
    

    <div class="copy">
    <nav class="navbar navbar-default">
  <div class="container-fluid" style="background-color:#FCC">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
       
       <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">网站介绍<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <div style="background-color:#0033CC; width:300px; height:200px" >
            </div>
          </ul>
        </li>
       
        <li><a href="#"　class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">关注我们</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">你若化成风</a></li>
            <li><a href="#">我幻化成雨</a></li>
            <li><a href="#">守护你身边</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">似水往昔浮流流年</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">乖乖我的小乖乖</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="请输入查询内容">
        </div>
        <button type="submit" class="btn btn-default">查找</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
      
       <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">这是一个很长的名字我要把这个长条全部沾满<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">111111</a></li>
            <li><a href="#">222222</a></li>
            <li><a href="#">333333</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">444444</a></li>
          </ul>
        </li>
       
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">111111</a></li>
            <li><a href="#">222222</a></li>
            <li><a href="#">333333</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">444444</a></li>
          </ul>
        </li>
        
        
        <li class="text">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">text <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">555555</a></li>
            <li><a href="#">666666</a></li>
            <li><a href="#">777777</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">888888</a></li>
          </ul>
        </li>
        
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>





<!--轮播图片-->
<div class="img">
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators 这是图片下面圆圈的个数 -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active" style="background-color:#C09"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1" style="background-color:#C09"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2" style="background-color:#C09"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3" style="background-color:#C09"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active" align="center">
    <img src="../style/5.jpg" width="1400" height="70">
      <div class="carousel-caption">
      <font color="#FF0000">断桥是否下过雪</font>
      </div>
    </div>
    
    <div class="item" align="center">
   <img src="../style/6.jpg" width="1000" height="70">
      <div class="carousel-caption">
        <font color="#FF0000">我望着湖面</font>
      </div>
    </div>
    
    <div class="item" align="center">
    <img src="../style/7.jpg" width="1000" height="70">
      <div class="carousel-caption">
        <font color="#FF0000">水中寒月如雪</font>
      </div>
    </div>
    
    <div class="item" align="center">
    <img src="../style/8.jpg" width="1000" height="70">
      <div class="carousel-caption">
        <font color="#FF0000">指尖轻点融解</font>
      </div>
    </div>
    
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">上一张</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">下一张</span>
  </a>
</div>
</div>
	
	<!--鼠标经过换图片的神奇功能
    <div>
    	<ul>
        	<li><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image6','','style/4.jpg',1)"><img src="style/bird.jpg" width="89" height="60" id="Image6"></a></li>
            <li><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image7','','style/3.jpg',1)"><img src="style/wechat.jpg" width="301" height="304" id="Image7"></a>
            </li>
        </ul>
    </div>-->
   
 <div id="middle">
        <div class="what">
        <h2>月下门童喟叹</h2>
当我年轻的时候，我梦想改变这个世界；当我成熟以后，我发现我不能够改变这个世界，我将目光缩短了些，决定只改变我的国家；当我进入暮年以后，我发现我不能够改变我们的国家，我的最后愿望仅仅是改变一下我的家庭，但是，这也不可能。当我现在躺在床上，行将就木时，我突然意识到：如果一开始我仅仅去改变我自己，然后，我可能改变我的家庭；在家人的帮助和鼓励下，我可能为国家做一些事情；然后，谁知道呢?我甚至可能改变这个世界。
        </div>
  

  
 <!-- Single button -->
 
	<div class="btn-group" style="background-color:#F00;   margin-left:40px; margin-top: 40px;">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style=" background-image:url(../style/22.jpg); width:150px;">
  <span> 普通用户登录入口</span>
  </button>
   <ul class="dropdown-menu">
    <div id="preuser" style="padding: 20px 20px 10px;">
        <marquee style="font-family: 华文隶书; color: red; font-size: 20px;">欢迎登录</marquee>
    	<form name="myforms1" id="myforms1"  action="user!checkAction.action" method="post">
		<div class="input-group">
			<span class="input-group-addon">@</span>
			<input type="text" class="form-control" name="userid" id="userid" placeholder="请输入飞鸟网账号">
		</div>
		<div class="input-group" style="margin-top: 10px;">
			<span class="input-group-addon">@</span>
			<input type="text" class="form-control" name="password" id="password" placeholder="请输入飞鸟网密码">
		</div>
		 </form>
		<button class="button" style="vertical-align:middle" id="ajax"><span>登录</span></button>
    </div>
  </ul>
  </div>

  <br/>
 <form name="myforms2" action="">
  <div class="btn-group" style="background-color:#F00; margin-top:6px; margin-left:40px;">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style=" background-image:url(../style/22.jpg); width:150px; ">
   <span>会员用户登入入口</span>
  </button>
   <ul class="dropdown-menu">
    <div id="preuser" style="padding: 20px 20px 10px;">
        <marquee style="font-family: 华文隶书; color: red; font-size: 20px;">尊敬的会员用户欢迎登录</marquee>
    	<form class="bs-example bs-example-form" role="form">
		<div class="input-group">
			<span class="input-group-addon">@</span>
			<input type="text" class="form-control" name="userid" placeholder="请输入飞鸟网账号">
		</div>
		<div class="input-group" style="margin-top: 10px;">
			<span class="input-group-addon">@</span>
			<input type="text" class="form-control" name="password" placeholder="请输入飞鸟网密码">
		</div>
		</form>
		<button class="button" style="vertical-align:middle" onclick="login2()"><span>登录</span></button>
		<!-- <input type="button" value="login" onclick="login2()"/> -->
    </div>
  </ul>
  </div>
</form>
   <br/>
<form name="myforms3" action="">
  <div class="btn-group" style="background-color:#F00; margin-top:6px;float:left; margin-left:40px;">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style=" background-image:url(../style/22.jpg); width:150px">
   <span>超级会员登入入口</span> 
  </button>
   <ul class="dropdown-menu">
   <div id="preuser" style="padding: 20px 20px 10px;">
        <marquee style="font-family: 华文隶书; color: red; font-size: 20px;">主人你好</marquee>
    	<form class="bs-example bs-example-form" role="form">
		<div class="input-group">
			<span class="input-group-addon">@</span>
			<input type="text" class="form-control" placeholder="请输入飞鸟网账号">
		</div>
		<div class="input-group" style="margin-top: 10px;">
			<span class="input-group-addon">@</span>
			<input type="text" class="form-control" placeholder="请输入飞鸟网密码">
		</div>
		</form>
		<button class="button" style="vertical-align:middle"><span>登录</span></button>
    </div>
  </ul>
  </div>
</form>
   <br/>
<form name="myforms4" action="">
  <div class="btn-group" style="background-color:#F00; margin-top:25px;float:left; margin-left:40px;">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style=" background-image:url(../style/22.jpg); width:150px">
   <span>没有账号点我注册</span> 
  </button>
   <ul class="dropdown-menu">
    <li><a href="register.jsp">点我注册</a></li>
    <li><a href="#">第二个</a></li>
    <li><a href="#">第三个</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="#">第四个</a></li>
  </ul>
  </div>
</form>
</div>  
              

       

<!-- Button trigger modal动态模态块 -->
<!--<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Launch demo modal
</button>-->

<!-- Modal -->
<!--巨幕拉下来之后页面的变化-->
<!--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
  <div class="modal-dialog" role="document" >
    <div class="modal-content" style=" background-color:#3CF">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">巨幕主题</h4>
      </div>
      <div class="modal-body">
        红雨漂泊泛起了回忆怎么潜，你眉目如当年流水我心间。
        落花雨你飘落的美丽
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary">保存修改</button>
      </div>
    </div>
  </div>
</div>-->

<!--假装植入广告的div-->
	<div class="advert" id="advert">	
    	<span id="close" onclick="close()">X</span>
    </div>
    
    <div class="advert1" id="advert1">
    <font style=" font-family:hakuyoxingshu7000; font-size:40px; font-weight:bold; color:#F00;">
    是<br/>劫除<br/>是了<br/>缘你<br/>随万<br/>我敌<br/>心不<br/>..侵
    </font>
    </div>


<!--过渡效果的照片-->
	<div class="photo">
    	<a href="#"><div class="img1"></div></a>
        <a href="#"><div class="img2"></div></a>
        <a href="#"><div class="img3"></div></a>
        <a href="#"><div class="img4"></div></a>
        <a href="#"><div class="img5"></div></a>
        <a href="#"><div class="img6"></div></a>
        <a href="#"><div class="img7"></div></a>
        <a href="#"><div class="foot"></div></a>
    </div>

    <hr style="border: solid 2px #666666; margin-top:50px;"/>
<div id="picture">
    <div id="ending">
    	<div class="back1">
        <ul>
        <li style="padding-top:20px; font-family:隶书;">你好，世界</li>
        <li></li>
        <li>csdhvcgf</li>
        <li>csdthdfgv</li>
        </ul>
        </div>
    	<div class="back2">
        </div>
    	<div class="back3">
        </div>
    </div>
    
    
    <div id="lastone"><font>国家认证@1994-2017飞鸟信息网（东营）技术有限责任公司，俺は新世界の神だ！All Rights Reserved.鲁ICP证2013qfg7261。鲁公网安备18306391498号***##</font></div>
    <div id="lasttwo"></div>
    <div id="notsee"></div>
</div>





<script type="text/javascript">
$(".advert #close").click(function(){
	 $(this).parents(".advert").hide();
	 $(".advert1").hide();
})
</script>



</body>
<!-- <script type="text/javascript">
var errorLogin=document.getElementById("errorLogin").value;
if(errorLogin!=null&&errorLogin!=""){
	if(errorLogin=="error"){
		alert("用户名或者密码错误 ");
	}
		
}
  



</script> -->
</html>