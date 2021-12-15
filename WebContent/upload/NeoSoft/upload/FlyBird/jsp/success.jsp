<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录成功</title>
<script src="../js/jquery.min.js"></script>
<script src="../js/npm.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/success.js"></script>
<script type="text/javascript" src="../js/login.js"></script>
<link rel="stylesheet" type="text/css" href="../css/success.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<script type="text/javascript">
/* $(document).ready(function(){
     $("#myNav").affix({
        offset: { 
            top: 125 
      }
    });
});  */


function reset(){
	var path = "reset.jsp";
	//设置弹出窗口的大小
	var set_window="dialogwidth=600px;dialogheight=200px;scroll=yes;resizable=no;center=yes";
	//打开窗口
	window.showModalDialog(path,window,set_window);
}

function xiugai(){
	var path = "user!selectPersonAction.action";
	var set_window="dialogwidth=300px;dialogheight=450px;scroll=yes;resizable=no;center=yes";
	window.showModalDialog(path,window,set_window);
}

function jingque(userid){
	var path = "user!searchIdAction.action?userid="+userid;
	var set_window="dialogwidth=900px;dialogheight=150px;scroll=yes;resizable=no;center=yes";
	window.showModalDialog(path,window,set_window);
}

function readed(){
document.getElementById("hide").action = "user!readAction.action";
document.getElementById("hide").method = "post";
document.getElementById("hide").submit();
}
function love1() {
	alert("测试完成，点击查看结果！")
	document.getElementsByName("myform")[0].action = "user!searchAction.action";
	document.getElementsByName("myform")[0].method = "post";
	document.getElementsByName("myform")[0].submit();
}        
function privilege(){
	
	var word = document.getElementsByName("privilegeup")[0].value;
	if(word == ""){
		alert("请输入口令！！！");
		return;
	}else if(word == "好好学习"){
		alert("升级成功！！！");                                       
		document.getElementsByName("privilege1")[0].action = "user!privilegeAction.action";
		document.getElementsByName("privilege1")[0].method = "post";
		document.getElementsByName("privilege1")[0].submit();
	}else{
		alert("口令错误，升级失败！");
		return;
	}
}

function logout(){
	window.location.href = "../jsp/upgrade.jsp";
}
</script>
</head>
<body style=" background-image:url(../style/hana.jpg); background-size:100% 100%">
	<div class="head">    	
    		<div class="firsthead">
            <img src="../style/biyi.gif" width="200" height="150">
        	</div>
            
            <div class="news">
            <font face="华文琥珀" color="#FF00FF" size="+4" style="padding-left:10px;">比翼鸟红娘网帮你告别单身</font>
            </div>
        ${pageContext.request.contextPath}/upload/${sessionScope.photo}
        	<div class="headimg">
            	<div class="trueimg" style="background-image:url(${pageContext.request.contextPath}/upload/${sessionScope.photo});background-size:100% 100%;"></div>
        	</div>
            
            
        
        	<div class="personal">
            	
        	</div>
            
            <div class="long">
            		<form id="hide" action="">
                	<div class="fensi">               
                   		 <button onclick="readed()" id="hide" style="height:35px; width:80px; margin-left:120px;">
                         我知道了
                         </button>
                         
                         <div class="fansid">
                         <!-- 查看粉丝 -->
                         	 <c:forEach items="${listfocus}" var="focus">
                         	 	<table>
                         	 		<tr>
                         	 			<td>
        					 			${focus.interesting}关注了你
        					 			</td>
        					 		</tr>
        					 	</table>
       						 </c:forEach>
       						 <!-- 查看获赞 -->
       						 <c:forEach items="${listadmire}" var="admire">
       						 	<table>
        					 		<tr>
        					 			<td>${admire.admiring}用户给你点了一个赞</td>
        					 		</tr>
        					 	</table>
       						 </c:forEach>
       						 <!-- 收到邀请 -->
       						 <c:forEach items="${listinvite}" var="invite">
       						 	<table>
       						 		<tr>
       						 			<td>
        								 ${invite.inviting}用户邀请了你
        					 			</td>
        					 			<td>
        					 			<a href="user!agreeAction.action">接受</a>
        					 			<a href="user!refuseAction.action">拒绝</a>
        					 			</td>
        					 		</tr>
        					 	</table>
       						 </c:forEach>
       						 <!-- 查看邀请回复 -->
       						 	<table>
       						 	<s:if  test="#request.listanswer.get(0).flag == 1">
       						 	<s:iterator value="#request.listanswer" id="u">
       						 		<tr>
       						 			<td>
        								 ${u.invited}接受了你的邀请
        					 			</td>
        					 		</tr>
        					 	</s:iterator>
	    						</s:if>
        					 	</table>
        					 	<table>
        					 	<s:else> 
        					 	<s:iterator value="#request.listanswer" id="uu">
        					 		<tr>
        					 			<td>
											${uu.invited}拒绝了你的邀请
										</td>
									</tr>
								</s:iterator>
								</s:else>
								</table>
                         </div>  
                   	 </div>  
                   	  </form>   
                   	  <!-- 当前登录人  登录时间   修改个人信息--> 
                     	<div style="width:550px; height:35px; float:left; margin-left:550px;">
                        <!-- 登录人 -->
                        	<font style="text-align: center;vertical-align: middle;" size="+1" color="yellow"><div id="time" style="width: 250px;height: 35px;float: left;">
                        	</div></font>
                        	<!-- 登录时间 -->
                        	<div id="loginer" style="width: 190px;height: 35px;float: left;">
                        		<font>当前登录人</font>|| <font face="华文行楷" size="+2" color="blue">${name}</font>
                        	</div>
                        	<!-- 修改信息 -->
                        	<div id="xiugai" style="width: 110px;height: 35px;float: left;">
                        	<button style="height: 35px;" onclick="xiugai()">完善个人信息</button>
                        	<!-- <a href="user!selectPersonAction.action">完善个人信息</a> -->
                        	</div>
                        </div>
                              				
						<div class="chakan">             
                        <button onclick="reset()" style="height:35px; width:80px; float:left;">修改密码</button>
                        <button style="height:35px; width:80px; float:left;" onclick="logout()">安全退出</button>
                   		 <button id="show" style="height:35px; width:80px;">查看消息
                         </button>
                    	</div>
                
            </div>  
	</div>
    						
	<div class="middle">
	<div class="onebody">
    	<div class="one1">
        <span>浏览全部用户</span>
        </div>
        <div class="one2">
        <span>人气最高排名</span>
        </div>
         <div class="one3">
         <span>在线升级会员</span>
        </div>
         <div class="one4">
         <span>在线爱情测试</span>
        </div>
         <div class="one5">
         <span>在线爱情论坛</span>
        </div>
    </div>
    
    <div class="live div_display" style="background-image: url(../style/people.jpg);background-size:100% 100%;">
    	<div style="margin:130px 410px;">
    		<!-- <font size="+2" color="red"><a href="user!bestAction.action">人气用户</a></font><br/> -->
    		<c:forEach items="${bestlist}" var="u" varStatus="c">
    		<a href="" onclick="jingque(${u})"><font size="+3" color="yellow">${u}</font></a><br/>
    		</c:forEach>
    	</div>
    </div>
    
     <div class="live div_display" style="background-image:url(../style/paozi.jpg);background-size:100% 100%;">
		  <!--  Button trigger modal动态模态块 -->
		  <s:if  test="#session.privilege == '会员'">
		  <font face="华文琥珀" size="+3" color="green" style="padding:300px 150px;">土豪你已经是会员啦 </font>
		  <div style="background-image: url(../style/tuhao.gif);height: 230px; width:250px;margin:100px 130px;">
		  </div>
		  </s:if>
		  <s:else>
		  	<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
 			 会员升级入口》》
			</button>
		  </s:else>


    </div>
    
     <div class="live div_display" style=" background-image:url(../style/test.jpg); background-size:100% 100%;">
     	<div class="find">
        
        <font size="+2" face="Lucida Sans Unicode, Lucida Grande, sans-serif" style=" padding-left:18px; padding-top:6px;">
        	开启寻爱之旅</font>
        </div>
    </div>
    
    
     <div class="live div_display" style="background-image:url(../style/lian.jpg);background-size:100% 100%;">
     <a href="user!allComAction.action" style="text-decoration: none;">
     	<div style="background-image: url(../style/jiantou.gif);width: 140px;height: 71px;float: left;margin:300px 70px;">
     	</div>
     </a> 
     	<div class="move" style="height: 500px;width: 300px; margin-left: 450px;">
     		<div style="width: 300px;height: 390px;margin-top: 100px;">
      			<marquee direction="up"> 
      				<table>
      					<tr>
      						<td><font face="华文行楷" size="+2" color="orange">落红不是无情物</font></td>
      					</tr>
      					<tr>
      					    <td><font face="华文行楷" size="+2" color="orange">一枝红杏出墙来</font></td>
      					</tr>
      					<tr>
      					    <td><font face="华文行楷" size="+2" color="orange">同是天涯沦落人</font></td>
      					</tr>
      					<tr>
      					    <td><font face="华文行楷" size="+2" color="orange">一片冰心在玉壶</font></td>
      					</tr>
      				</table>
     			</marquee>
     	   </div> 
     	</div>
     </div>
    
    <a href="user!listAction.action">
    <div class="live div_display" style="background-image:url(../style/goto.jpg);background-size: 100% 100%; ">
     	<font style="margin:300px 300px;" size="+3" color="white" face="华文行楷">查看全部用户</font>
    </div>
    </a>
 
    
    <div class="twobody">
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
    <img src="../style/love1.jpg" width="800" height="500">
      <div class="carousel-caption">
      <font color="#FF0000">断桥是否下过雪</font>
      </div>
    </div>
    
    <div class="item" align="center">
   <img src="../style/love2.jpg" width="800" height="500">
      <div class="carousel-caption">
        <font color="#FF0000">我望着湖面</font>
      </div>
    </div>
    
    <div class="item" align="center">
    <img src="../style/love3.jpg" width="800" height="500">
      <div class="carousel-caption">
        <font color="#FF0000">水中寒月如雪</font>
      </div>
    </div>
    
    <div class="item" align="center">
    <img src="../style/love4.jpg" width="800" height="500">
      <div class="carousel-caption">
        <font color="#FF0000">指尖轻点融解</font>
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
    </div>
  								
    <!--以上是middle-->    
    
    
    <!-- Modal -->
<!--巨幕拉下来之后页面的变化-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
  <div class="modal-dialog" role="document" >
    <div class="modal-content" style=" background-color:#3CF">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">在线升级会员</h4>
      </div>
      <div class="modal-body">
      	<div>
      	<form name="privilege1">
      	请输入执行口令<br/>
      	<input type="text" id="upprivilege" name="privilegeup"/>
      	</form>
      	<a href="" onclick="privilege()">在线升级</a>
      	</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">保存修改</button>
      </div>
    </div>
  </div>
</div>
    
    <!--爱情测试试卷-->
    <div class="textpaper">
    	<form id="myform" name="myform" action="">
        	<div class="leftpage">
            <div class="english"><font face="华文仿宋" size="3px" color="#00FFFF">ある人を好きになってしまい、寝ても覚めてもその人が頭から離れす、他のことが手につかなくなり、身悶えしたくなるような心の状態。</font></div>
			<div class="question1">
				<font face="华文琥珀" size="+1" color="#666633";>1、你的梦中情人是男人还是女人？</font><br /> 
				<input type="radio" name="lovesex" id="lovesex" value="男" /><font face="华文琥珀" size="+1" color="#00FF33";>男</font> 
				<input type="radio" name="lovesex" id="lovesex" value="女" checked="checked"/><font face="华文琥珀" size="+1" color="#CCCC00";>女
			</div>
			
		    <div class="question2">
				<font face="华文琥珀" size="+1" color="#FFFF66";>2、你期待的另一半年龄是多少？</font><br /> 
				<input type="radio" name="loveage" id="loveage" value="1"/><font face="华文琥珀" size="+1" color="#FF00CC";>18-25
				<input type="radio" name="loveage" id="loveage" value="2"/><font face="华文琥珀" size="+1" color="#666633";>25-35 <br/>
				<input type="radio" name="loveage" id="loveage" value="3"/><font face="华文琥珀" size="+1" color="#99CC00";>35-50
				<input type="radio" name="loveage" id="loveage" value="4"/><font face="华文琥珀" size="+1" color="#66FFCC";>50以上
				<input type="radio" name="loveage" id="loveage" value="5" checked="checked"/><font face="华文琥珀" size="+1" color="#666633";>无所谓
			</div> 
			
			<div class="question3">
				<font face="华文琥珀" size="+1" color="#3333FF";>3、你希望你的另一半身高是多少？</font><br /> 
				<input type="radio" name="lovetall" id="lovetall" value="1"/><font face="华文琥珀" size="+1" color="#66FF00";>150-160
				<input type="radio" name="lovetall" id="lovetall" value="2"/><font face="华文琥珀" size="+1" color="#FFFF66";>160-170 <br/>
				<input type="radio" name="lovetall" id="lovetall" value="3"/><font face="华文琥珀" size="+1" color="#66FFCC";>170-180
				<input type="radio" name="lovetall" id="lovetall" value="4"/><font face="华文琥珀" size="+1" color="#6666CC";>180以上
				<input type="radio" name="lovetall" id="lovetall" value="5" checked="checked"/><font face="华文琥珀" size="+1" color="#FFFFFF";>无所谓
			</div>
            </div>
            
            <div class="rightpage">
			<div class="question4">
				<font face="华文琥珀" size="+1" color="#CC0033";>4、你的梦中情人要有什么样的学历？</font><br /> 
				<input type="radio" name="loveedu" id="loveedu" value="初中"/><font face="华文琥珀" size="+1" color="#66FFCC";>初中及以上
				 <input type="radio" name="loveedu" id="loveedu" value="高中"/><font face="华文琥珀" size="+1" color="#9999CC";>高中及以上<br/>
				 <input type="radio" name="loveedu" id="loveedu" value="本科"/><font face="华文琥珀" size="+1" color="#990099";>本科及以上
                 <input type="radio" name="loveedu" id="loveedu" value="研究生"/><font face="华文琥珀" size="+1" color="#9966FF";>研究生及以上
                 <input type="radio" name="loveedu" id="loveedu" value="无所谓" checked="checked"/><font face="华文琥珀" size="+1" color="#6600CC";>无所谓</font>
			</div>
            
			<div class="question5">
				<font face="华文琥珀" size="+1" color="#FF00FF";>5、你希望你的他/她月薪要有多少</font><br /> 
				<input type="radio" name="lovemoney" id="lovemoney" value="1"/><font face="华文琥珀" size="+1" color="#FFFF00";>3000以上
				 <input type="radio" name="lovemoney" id="lovemoney" value="2"/><font face="华文琥珀" size="+1" color="#CCFF00";>5000以上<br/>
				<input type="radio" name="lovemoney" id="lovemoney" value="3"/><font face="华文琥珀" size="+1" color="#CCFFCC";>8000以上
				<input type="radio" name="lovemoney" id="lovemoney" value="4"/><font face="华文琥珀" size="+1" color="#990033";>10000以上
				<input type="radio" name="lovemoney" id="lovemoney" value="5" checked="checked"/><font face="华文琥珀" size="+1" color="#0033FF";>无所谓
			</div>
			
			<!-- <input type="button" value="查看全部用户" onclick="list()"/> -->
			<!--<a href="user!listAction.action">查看全部用户</a> -->
            	<div class="upkey">
				<input type="button" value="完成测试 》" onclick="love1()" />
                <!-- <input type="button" value="取消测试   x" onClick="cancle()"/> -->
                <span id="giveup" style="width: 30px;height: 20px;border:2px solid red;cursor:pointer;">取消  x</span>
                </div>
            
			</div>
	</form>
    	<div class="bigbird">
        </div>
        
    	<div class="jess">
        <!--掉裤子的动画-->
        </div>
    </div>
    
    <script type="text/javascript">  
	 $(".find").click(function(){
			$(".textpaper").show();
			$(".jess").show();
			$(".bigbird").show();
		});
	 $("#giveup").click(function(){
		 $(".textpaper").hide();
		 $(".jess").hide();
		 $(".bigbird").hide();
	 });
	//页面加载时显示登录时间
	 document.getElementById("time").innerHTML=new Date().toLocaleString();
    </script>
    </body>
</html>