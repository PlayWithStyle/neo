function ajaxlogin(){
	alert("came in");
	var flag = check();
	if(flag){
		alert("进入flag");
		$.ajax({
			type:'POST',
			url:'neosoft!checkAction.action',
			dataType:'JSON',
			data:'user.username='+$("#username").val()+"&user.password="+$("#password").val(),
			success:function(data){
				if(data.status == "error"){
					alert("用户名或密码错误");
				}else{
					alert("进入ajax的查询方法");
					document.getElementsByName("login")[0].action = "neosoft!showNewsAction1.action";
					document.getElementsByName("login")[0].method = "post";
					document.getElementsByName("login")[0].submit();
				}
			}
		});
	}
}

//不用密码登录
function noajax(){
	var name = document.getElementsByName("user.username")[0].value;
	var word = document.getElementsByName("user.password")[0].value;
	if(name == "admin" && word == "admin"){
		alert("pass success！！！");
		window.location.href = "neosoft!showNewsAction1.action";
	}else{
		alert("用户名或密码错误");
		return;
	}
	
}
//登录失败跳转页面
function logincheck(){
	var flag = check();
	if(flag){
		document.getElementsByName("login")[0].action = "neosoft!checkAction.action";
		document.getElementsByName("login")[0].method = "post";
		document.getElementsByName("login")[0].submit();
	}
}

function check(){
	var username = document.getElementsByName("user.username")[0].value;
	if(username==""){
		alert("用户密码不能为空！！！");
		return false;
	}
	
	
	var userpwd = document.getElementsByName("user.password")[0].value;
	if(userpwd==""){
		alert("用户密码不能为空！！！");
		return false;
	}
	return true;
}
