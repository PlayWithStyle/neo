<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>比翼鸟官网</title>
<link rel="stylesheet" type="text/css" href="../css/login.css">
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
<body>
<div id="div1"><img src="../style/marray1.jpg" /></div>
   <div class="top">
        <div class="up"> 
          <div class="english"><font face="华文隶书" color="#003399" size="+3">FlyBird</font></div>
            <div class="bird"><marquee scrollamount="15" > <img src="../style/bird2.gif" width="89" height="50">  <img src="../style/bird2.gif" width="89" height="50">  <font face="华文行楷" size="+2" color="#CC0000">欢迎访问比翼鸟相亲网站，您的信赖是对我们最大的支持，ありがとうございます！</font><img src="../style/bird2.jpg" width="89" height="50">
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
  <div class="container-fluid" >
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
       
       <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">网站介绍<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <div style="width:300px; height:250px;">
            <img src="../style/ceo.png"/>
            <font face="华文行楷" size="+1" color="red">公司现任CEO秦福刚先生。出生于山东省东营市广饶县花官镇上的一个小村落。
            从小立志多读书多挣钱，毕业于青岛农业大学。是一个不可多得的人才。</font>
            </div>
          </ul>
        </li>
       
        <li>
        <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">关注我们</a>
        </li>
        <li class="dropdown">
 		
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
          <a href="input.jsp">普通用户登录<span></span></a>
          
        </li>
       
        <li class="dropdown">
          <a href="reinput.jsp">会员用户登录<span></span></a>
        </li>
        
        
        <li class="text">
          <a href="adminer.jsp">管理员登录<span></span></a>
        </li>
        
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
	<a href="register.jsp">
    <div class="zhuce" id="zhuce">
    <div style=" width:135px; height:140px;">
    </div>
    </div>
	</a>

<div class="tree">
<font face="Comic Sans MS, cursive" size="15px" color="#FF33FF">在天愿作比翼鸟<br/> 在地愿为连理枝</font><br/>
<font face="隶书" size="4px" color="#FF0033">三千万剩男剩女的选择你值得拥有,开启你的寻爱之旅，告别单身生活</font>
</div>
<!--假装植入广告的div-->
	<div class="advert" id="advert">	
    	<span id="close" onclick="close()">X</span>
    </div>
    
    <div class="advert1" id="advert1">
    <font style=" font-family:hakuyoxingshu7000; font-size:40px; font-weight:bold; color:#F00;">
    是<br/>劫除<br/>是了<br/>缘你<br/>随万<br/>我敌<br/>心不<br/>..侵
    </font>
    </div>

<script type="text/javascript">
$(".advert #close").click(function(){
	 $(this).parents(".advert").hide();
	 $(".advert1").hide();
})
</script>
</body>
</html>