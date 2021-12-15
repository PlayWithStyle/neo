function ajaxlogin(){
	var flag = check();
	if(flag){
		$.ajax({
			type:'POST',
			url:'user!checkAction.action',
			dataType:'JSON',
			data:'adminer.id='+$("#adminerid").val()+"&adminer.password="+$("#adminerpass").val(),
			/*adminer.id = 20137261 & adminer.password = 20137261*/
			success:function(data){
				if(data.status == "error"){
					alert("用户名或密码错误");
				}else{
					alert("登陆成功！！！")
					window.location.href="../jsp/manage.jsp";
				}
			}
		});
	}
}

function check(){
	var userid = document.getElementsByName("adminer.id")[0].value;
	if(userid==""){
		alert("用户ID不能为空！！！");
		return false;
	}
	if(isNaN(userid)){
		alert("用户ID必须是数字！！！");
		return false;
	}
	var userpwd = document.getElementsByName("adminer.password")[0].value;
	if(userpwd==""){
		alert("用户密码不能为空！！！");
		return false;
	}
	return true;
}
