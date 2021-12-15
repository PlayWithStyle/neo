<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试</title>
<script src="../js/jquery.min.js"></script>
<script src="../js/npm.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css"
	href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<script type="text/javascript" language="java">

	   function love1() {
		/* var lovesex = document.getElementsByName("lovesex")[0].value;
		if(lovesex == null){
			alert("你还没有选择性别");
			return;
		} */
		document.getElementsByName("myform")[0].action = "user!searchAction.action";
		document.getElementsByName("myform")[0].method = "post";
		document.getElementsByName("myform")[0].submit();
	}
	
	function list() {
		document.getElementsByName("myform")[0].action = "user!listAction.action";
		document.getElementsByName("myform")[0].method = "post";
		document.getElementsByName("myform")[0].sumbit();
	}
</script>
</head>
<body>
	<form id="myform" name="myform" action="">
		  <div
			style="width: 700px; height: 900px; border: solid; 1 px; margin: 0 auto;">
			<div>
				<font>1、你的梦中情人是男人还是女人？</font><br /> 
				<input type="radio" name="lovesex" id="lovesex" value="男" />男 
				<input type="radio" name="lovesex" id="lovesex" value="女" checked="checked"/>女
			</div>
			
		 <div>
				<font>2、你期待的另一半年龄是多少？</font><br /> 
				<input type="radio" name="loveage" id="loveage" value="1"/>18-25
				<input type="radio" name="loveage" id="loveage" value="2"/>25-35 
				<input type="radio" name="loveage" id="loveage" value="3"/>35-50
				<input type="radio" name="loveage" id="loveage" value="4"/>50以上
				<input type="radio" name="loveage" id="loveage" value="5" checked="checked"/>无所谓
			</div> 
			
			<div>
				<font>3、你希望你的另一半身高是多少？</font><br /> 
				<input type="radio" name="lovetall" id="lovetall" value="1"/>150-160
				<input type="radio" name="lovetall" id="lovetall" value="2"/>160-170 
				<input type="radio" name="lovetall" id="lovetall" value="3"/>170-180
				<input type="radio" name="lovetall" id="lovetall" value="4"/>180以上
				<input type="radio" name="lovetall" id="lovetall" value="5" checked="checked"/>无所谓
			</div>
			<div>
				<font>4、你的梦中情人要有什么样的学历？</font><br /> 
				<input type="radio" name="loveedu" id="loveedu" value="初中"/>初中及以上
				 <input type="radio" name="loveedu" id="loveedu" value="高中"/>高中及以上
				 <input type="radio" name="loveedu" id="loveedu" value="本科"/>本科及以上
                 <input type="radio" name="loveedu" id="loveedu" value="研究生"/>研究生及以上
                 <input type="radio" name="loveedu" id="loveedu" value="无所谓" checked="checked"/>无所谓
			</div>
			<div>
				<font>5、你希望你的他/她月薪要有多少</font><br /> 
				<input type="radio" name="lovemoney" id="lovemoney" value="1"/>3000以上
				 <input type="radio" name="lovemoney" id="lovemoney" value="2"/>5000以上
				<input type="radio" name="lovemoney" id="lovemoney" value="3"/>8000以上
				<input type="radio" name="lovemoney" id="lovemoney" value="4"/>10000以上
				<input type="radio" name="lovemoney" id="lovemoney" value="5" checked="checked"/>无所谓
			</div>
			
			<!-- <input type="button" value="查看全部用户" onclick="list()"/> -->
			<a href="user!listAction.action">查看全部用户</a>
			<input type="button" value="提交问卷" onclick="love1()" />
			
		</div>   
		
	</form>

</body>
</html>